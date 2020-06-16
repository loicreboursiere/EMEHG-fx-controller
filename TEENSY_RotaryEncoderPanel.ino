
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_NeoPixel.h>

const int neopixel_NUM = 2;
const int neopixel_PIN = 10;
byte drawingMemory[neopixel_NUM*3];         //  3 bytes per LED
DMAMEM byte displayMemory[neopixel_NUM*12]; // 12 bytes per LED

//WS2812Serial leds(numled, displayMemory, drawingMemory, pin, WS2812_GRB);
Adafruit_NeoPixel leds(neopixel_NUM, neopixel_PIN, NEO_GRB + NEO_KHZ800);
#define RED    0x160000
#define GREEN  0x001600
#define BLUE   0x000016
#define YELLOW 0x101400
#define PINK   0x120009
#define ORANGE 0x100400
#define WHITE  0x101010
#define OFF    0x000000



int Enc_A = A0;
int Enc_B = A1;
int Button = A2;
int MainEnc_A = A6;
int MainEnc_B = A7;
int MainButton = A8;
const int enablePins[] = { 3, 4, 5, 6, 7, 8, 9 };
const int muxAddressPins[] = { 0, 1, 2 };

unsigned char AddressMux_Enc[4] =   {0, 1, 2, 3};   // cd4051 channel A input number
//unsigned char AddressMux_Enc_A[4] =   {0, 1, 2, 3};   // cd4051 channel A input number
//unsigned char AddressMux_Enc_B[4] =   {0, 1, 2, 3};   // cd4051 channel B input number
//unsigned char AddressMux_Button[4] =  {0, 1, 2, 3};   // cd4051 Button input number

#define NbrMuxAddressPins 3
#define NbrEncPerColumn 4
#define NbrColumns 7
boolean Read_Enc_A[NbrColumns][NbrEncPerColumn];
boolean Read_Enc_B[NbrColumns][NbrEncPerColumn];
boolean Read_Button[NbrColumns][NbrEncPerColumn];
boolean LastRead_Enc_A[NbrColumns][NbrEncPerColumn];
boolean LastRead_Enc_B[NbrColumns][NbrEncPerColumn];
boolean LastRead_Button[NbrColumns][NbrEncPerColumn];

boolean State_MainEnc_A;
boolean State_MainEnc_B;
boolean State_MainButton;
boolean LastState_MainEnc_A;
boolean LastState_MainEnc_B;
boolean LastState_MainButton;

unsigned char State_Encoder[NbrColumns][NbrEncPerColumn];
unsigned char State_MainEncoder;
#define None 0x00
#define Left 0x01
#define Right 0x02
#define ValidDirection 0x04
#define ClearDirection 0xF0
#define ButtonPressed 0x10
#define ButtonReleased 0x20
#define ValidButton 0x80
#define ClearButton 0x0F


unsigned char Counter_Encoder[NbrColumns][NbrEncPerColumn];
unsigned char StateMachine_Button[NbrColumns][NbrEncPerColumn];
unsigned char Next_StateMachine_Button[NbrColumns][NbrEncPerColumn];

unsigned char Counter_MainEncoder;
unsigned char StateMachine_MainButton;
unsigned char Next_StateMachine_MainButton;

unsigned char Column = 0;
unsigned char Line = 0;

byte LedVal = 0;

int Period_mS = 1;
unsigned long Current_Time_mS = 0;
unsigned long Display_mS = 0;
unsigned long LED_Time_mS = 0;

char SerialBuffer[50];

int led = 13;


// old release "https://www.arduinolibraries.info/libraries/adafruit-ssd1306"
// "http://downloads.arduino.cc/libraries/github.com/adafruit/Adafruit_SSD1306-1.1.2.zip"
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#define OLED_RESET 17
Adafruit_SSD1306 display(OLED_RESET);



void setup()
{
  pinMode(led, OUTPUT);
  pinMode( Enc_A, INPUT );
  pinMode( Enc_B, INPUT );
  pinMode( Button, INPUT );
  pinMode( MainEnc_A, INPUT );
  pinMode( MainEnc_B, INPUT );
  pinMode( MainButton, INPUT );


  leds.begin();
  leds.clear();
  //leds.setPixelColor(0, RED);
  //leds.setPixelColor(1, BLUE);
  leds.show();



  // set enable pins as output, default is HIGH
  for (Column=0; Column<NbrColumns; Column++)
  {
    pinMode( enablePins[Column], OUTPUT );
    digitalWrite( enablePins[Column], HIGH );
  }

  // set address pins as output, default is LOW
  for( int i=0; i<NbrMuxAddressPins; i++ )
  {
    pinMode( muxAddressPins[i], OUTPUT );
    digitalWrite( muxAddressPins[i], LOW );
  }


  Serial.begin( 115200 );
  delay(1000);


  // Initial State of Rotary encoders
  for (Column=0; Column<NbrColumns; Column++)
  {
    for (Line=0; Line<NbrEncPerColumn; Line++) State_Encoder[Column][Line] = None;
  }


  for (Column=0; Column<NbrColumns; Column++)
  {
    digitalWrite( enablePins[Column], LOW );
    for (Line=0; Line<NbrEncPerColumn; Line++)
    {
      // Echantillonnage des encodeurs rotatifs et boutons-poussoirs
      SetMuxAddressPins( AddressMux_Enc[Line] );
      LastRead_Enc_A[Column][Line] = digitalRead(Enc_A);
      LastRead_Enc_B[Column][Line] = digitalRead(Enc_B);
      LastRead_Button[Column][Line] = digitalRead(Button);

      //Initialisation StateMachine_Button[Column][Line] and Counter_Encoder[Column][Line]
      StateMachine_Button[Column][Line] = 0;
      Next_StateMachine_Button[Column][Line] = 0;
      Counter_Encoder[Column][Line] = 0;
    }
    digitalWrite( enablePins[Column], HIGH );
  }

  //Initialisation StateMachine_Button[Column][Line] and Counter_Encoder[Column][Line]
  StateMachine_Button[Column][Line] = 0;
  Next_StateMachine_Button[Column][Line] = 0;
  Counter_Encoder[Column][Line] = 0;


  // Echantillonnage Encodeur rotatif et bouton-poussoir principal
  LastState_MainEnc_A = digitalRead(MainEnc_A);
  LastState_MainEnc_B = digitalRead(MainEnc_B);
  LastState_MainButton = digitalRead(MainButton);

  //Initialisation StateMachine_MainButton and Counter_MainEncoder
  StateMachine_MainButton = 0;
  Next_StateMachine_MainButton = 0;
  Counter_MainEncoder = 0;


  // Initialisation de l'afficheur
  display.begin(SSD1306_SWITCHCAPVCC, 0x3D);  // initialize with the I2C addr 0x3D (for the 128x64)
  display.display();
  delay(1000);
  // display.clearDisplay();
  // display.setTextSize(1);
  // display.setTextColor(WHITE);
  // display.setCursor(0,0);
  // display.print("C:L:Action");
  // display.setCursor(0,10);
  // display.print("-:-:----");
  // display.display();


  sprintf(SerialBuffer, "\n\rSystem Ready\n\r");
  Serial.write(SerialBuffer);
  Serial.flush();

  Current_Time_mS = millis();
  LED_Time_mS = millis();
  Display_mS = millis();
}


void loop() {
  if (millis() > (LED_Time_mS+500))
  {
    LED_Time_mS = millis();
    LedVal = (LedVal^1);
    digitalWrite(led, LedVal);
  }


  if( millis() > (Current_Time_mS + Period_mS) )
  {
    Current_Time_mS = millis();

    // Echantillonnage des encodeurs rotatifs et boutons-poussoirs toutes les 1mS.
    for (Column=0; Column<NbrColumns; Column++)
    {
      digitalWrite( enablePins[Column], LOW );
      for (Line=0; Line<NbrEncPerColumn; Line++)
      {
        SetMuxAddressPins( AddressMux_Enc[Line] );
        Read_Enc_A[Column][Line] = digitalRead(Enc_A);
        Read_Enc_B[Column][Line] = digitalRead(Enc_B);
        Read_Button[Column][Line] = digitalRead(Button);
      }
      digitalWrite( enablePins[Column], HIGH );
    }


    for (Column=0; Column<NbrColumns; Column++)
    {
      for (Line=0; Line<NbrEncPerColumn; Line++)
      {
        // Sens de rotation de l'encodeur
        if ( (LastRead_Enc_A[Column][Line]==false) && (Read_Enc_A[Column][Line]==true) && (LastRead_Enc_B[Column][Line]==false) && (Read_Enc_B[Column][Line]==false) )
        {
          State_Encoder[Column][Line] &= ClearDirection;
          State_Encoder[Column][Line] |= Right;
          State_Encoder[Column][Line] |= ValidDirection;
        }
        else if ( (LastRead_Enc_B[Column][Line]==false) && (Read_Enc_B[Column][Line]==true) && (LastRead_Enc_A[Column][Line]==false) && (Read_Enc_A[Column][Line]==false) )
        {
          State_Encoder[Column][Line] &= ClearDirection;
          State_Encoder[Column][Line] |= Left;
          State_Encoder[Column][Line] |= ValidDirection;
        }


        // Test des boutons-poussoirs des encodeurs
        switch (StateMachine_Button[Column][Line])
        {
          case 0: if ( LastRead_Button[Column][Line] && !Read_Button[Column][Line] ) Next_StateMachine_Button[Column][Line] = 1;
                  else Next_StateMachine_Button[Column][Line] = 0;
                  break;
          case 1: Next_StateMachine_Button[Column][Line] = 2;
                  break;
          case 2: if ( LastRead_Button[Column][Line] && Read_Button[Column][Line] ) Next_StateMachine_Button[Column][Line] = 3;
                  else Next_StateMachine_Button[Column][Line] = 2;
                  break;
          case 3: Next_StateMachine_Button[Column][Line] = 0;
                  break;
          default: break;
        }
        if (Next_StateMachine_Button[Column][Line] == 1)
        {
          State_Encoder[Column][Line] &= ClearButton;
          State_Encoder[Column][Line] |= ButtonPressed;
          State_Encoder[Column][Line] |= ValidButton;
        }
        else if (Next_StateMachine_Button[Column][Line] == 3)
        {
          State_Encoder[Column][Line] &= ClearButton;
          State_Encoder[Column][Line] |= ButtonReleased;
          State_Encoder[Column][Line] |= ValidButton;
        }
        //Transfert état futur "Next_StateMachine_Button" dans état présent "StateMachine_Button"
        StateMachine_Button[Column][Line] = Next_StateMachine_Button[Column][Line];

        // Mémorisations états logiques Enc_A[Column][Line], Enc_B[Column][Line], Button[Column][Line]
        LastRead_Enc_A[Column][Line] = Read_Enc_A[Column][Line];
        LastRead_Enc_B[Column][Line] = Read_Enc_B[Column][Line];
        LastRead_Button[Column][Line] = Read_Button[Column][Line];
      }
    }

    // Encodeur Rotatif PRINCIPAL
    // Echantillonnage Encodeur rotatif et bouton-poussoir principal toutes les 1mS.
    State_MainEnc_A = digitalRead(MainEnc_A);
    State_MainEnc_B = digitalRead(MainEnc_B);
    State_MainButton = digitalRead(MainButton);

    // Sens de rotation de l'encodeur principal
    if ( (LastState_MainEnc_A==false) && (State_MainEnc_A==true) && (LastState_MainEnc_B==false) && (State_MainEnc_B==false) )
    {
      State_MainEncoder &= ClearDirection;
      State_MainEncoder |= Right;
      State_MainEncoder |= ValidDirection;
    }
    else if ( (LastState_MainEnc_B==false) && (State_MainEnc_B==true) && (LastState_MainEnc_A==false) && (State_MainEnc_A==false) )
    {
      State_MainEncoder &= ClearDirection;
      State_MainEncoder |= Left;
      State_MainEncoder |= ValidDirection;
    }

    // Test du bouton-poussoir de l'encodeur principal
    switch (StateMachine_MainButton)
    {
      case 0: if ( LastState_MainButton && !State_MainButton ) Next_StateMachine_MainButton = 1;
              else Next_StateMachine_MainButton = 0;
              break;
      case 1: Next_StateMachine_MainButton = 2;
              break;
      case 2: if ( LastState_MainButton && State_MainButton ) Next_StateMachine_MainButton = 3;
              else Next_StateMachine_MainButton = 2;
              break;
      case 3: Next_StateMachine_MainButton = 0;
              break;
      default: break;
    }
    if (Next_StateMachine_MainButton == 1)
    {
      State_MainEncoder &= ClearButton;
      State_MainEncoder |= ButtonPressed;
      State_MainEncoder |= ValidButton;
    }
    else if (Next_StateMachine_MainButton == 3)
    {
      State_MainEncoder &= ClearButton;
      State_MainEncoder |= ButtonReleased;
      State_MainEncoder |= ValidButton;
    }
    //Transfert état futur "Next_StateMachine_MainButton" dans état présent "StateMachine_MainButton"
    StateMachine_MainButton = Next_StateMachine_MainButton;

    // Mémorisations états logiques MainEnc_A, MainEnc_B, MainButton
    LastState_MainEnc_A = State_MainEnc_A;
    LastState_MainEnc_B = State_MainEnc_B;
    LastState_MainButton = State_MainButton;
  }



  // display.clearDisplay();
  // display.setTextSize(1);
  // display.setTextColor(WHITE);
  // display.setCursor(0,0);
  // display.print("C:L:Action");
  // display.setCursor(0,10);
  // display.print("-:-:----");
  // display.display();


  for (Column=0; Column<NbrColumns; Column++)
  {
    for (Line=0; Line<NbrEncPerColumn; Line++)
    {
      // Encoder
      if ((State_Encoder[Column][Line] & ValidDirection) == ValidDirection)
      {
        if ((State_Encoder[Column][Line] & Left) == Left)
        {
          State_Encoder[Column][Line] &= ~ValidDirection;
          sprintf(SerialBuffer, "\n\rE[%d:%d:G]", Column, Line);
          Serial.write(SerialBuffer);
        }
        else if ((State_Encoder[Column][Line] & Right) == Right)
        {
          State_Encoder[Column][Line] &= ~ValidDirection;
          sprintf(SerialBuffer, "\n\rE[%d:%d:D]", Column, Line);
          Serial.write(SerialBuffer);
        }
      }
      // Button
      if ((State_Encoder[Column][Line] & ValidButton) == ValidButton)
      {
        if ((State_Encoder[Column][Line] & ButtonPressed) == ButtonPressed)
        {
          State_Encoder[Column][Line] &= ~ValidButton;
          sprintf(SerialBuffer, "\n\rE[%d:%d:P]", Column, Line);
          Serial.write(SerialBuffer);
        }
        else if ((State_Encoder[Column][Line] & ButtonReleased) == ButtonReleased)
        {
          State_Encoder[Column][Line] &= ~ValidButton;
          sprintf(SerialBuffer, "\n\rE[%d:%d:R]", Column, Line);
          Serial.write(SerialBuffer);
        }
      }
    }
  }


  // MainEncoder
  if ((State_MainEncoder & ValidDirection) == ValidDirection)
  {
    if ((State_MainEncoder & Left) == Left)
    {
      State_MainEncoder &= ~ValidDirection;
      sprintf(SerialBuffer, "\n\rE[M:-:G]");
      Serial.write(SerialBuffer);
    }
    else if ((State_MainEncoder & Right) == Right)
    {
      State_MainEncoder &= ~ValidDirection;
      sprintf(SerialBuffer, "\n\rE[M:-:D]");
      Serial.write(SerialBuffer);
    }
  }

  // MainButton
  if ((State_MainEncoder & ValidButton) == ValidButton)
  {
    if ((State_MainEncoder & ButtonPressed) == ButtonPressed)
    {
      State_MainEncoder &= ~ValidButton;
      sprintf(SerialBuffer, "\n\rE[M:-:P]");
      Serial.write(SerialBuffer);
    }
    else if ((State_MainEncoder & ButtonReleased) == ButtonReleased)
    {
      State_MainEncoder &= ~ValidButton;
      sprintf(SerialBuffer, "\n\rE[M:-:R]");
      Serial.write(SerialBuffer);
    }
  }
}


void SetMuxAddressPins( unsigned char AddressValue )
{
  switch (AddressValue)
  {
    case 0: digitalWrite( muxAddressPins[0], LOW );
            digitalWrite( muxAddressPins[1], LOW );
            digitalWrite( muxAddressPins[2], LOW );
            break;
    case 1: digitalWrite( muxAddressPins[0], HIGH );
            digitalWrite( muxAddressPins[1], LOW );
            digitalWrite( muxAddressPins[2], LOW );
            break;
    case 2: digitalWrite( muxAddressPins[0], LOW );
            digitalWrite( muxAddressPins[1], HIGH );
            digitalWrite( muxAddressPins[2], LOW );
            break;
    case 3: digitalWrite( muxAddressPins[0], HIGH );
            digitalWrite( muxAddressPins[1], HIGH );
            digitalWrite( muxAddressPins[2], LOW );
            break;
    case 4: digitalWrite( muxAddressPins[0], LOW );
            digitalWrite( muxAddressPins[1], LOW );
            digitalWrite( muxAddressPins[2], HIGH );
            break;
    case 5: digitalWrite( muxAddressPins[0], HIGH );
            digitalWrite( muxAddressPins[1], LOW );
            digitalWrite( muxAddressPins[2], HIGH );
            break;
    case 6: digitalWrite( muxAddressPins[0], LOW );
            digitalWrite( muxAddressPins[1], HIGH );
            digitalWrite( muxAddressPins[2], HIGH );
            break;
    case 7: digitalWrite( muxAddressPins[0], HIGH );
            digitalWrite( muxAddressPins[1], HIGH );
            digitalWrite( muxAddressPins[2], HIGH );
            break;
    default: break;
  }
  delayMicroseconds(10);
}



//void testdrawchar(void)
//{
//  display.setTextSize(1);
//  display.setTextColor(WHITE);
//  display.setCursor(0,0);
//
//  for (uint8_t i=0; i < 168; i++)
//  {
//    if (i == '\n') continue;
//    display.write(i);
//    if ((i > 0) && (i % 21 == 0))
//      display.println();
//  }
//  display.display();
//  delay(1);
//}
