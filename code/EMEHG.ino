  #include <Arduino.h>
#include "RotaryEncoder.h"

#define PULLUP true
#define NB_CARDS 7 // 6 for hexaphonic + 1 for global
#define NB_MUX_INPUT 8 // 4 for CD4052, 8 for CD4051

//const int enablePins[] = {13, 12, 11, 10}; // Mux enable pin for each card, has to match NB_CARDS
const int enablePins[] = { 52 };
const int muxAddressPins[] = { 22, 23, 24 }; // S0, S1, (S2); 2 for CD4052, 3 for CD4051
const unsigned int addressMask[] = {1, 2, 4};
const int muxReadPins[] = { 32 , 33, 34 }; // pins to read, output of Mux(es), a, b, button (optional)
int rotariesValue [ NB_MUX_INPUT ];

unsigned int nbAddressPins = 0;
unsigned int nbReadPins = 0;

RotaryEncoder encoders[ NB_CARDS ][ NB_MUX_INPUT ];
int encoderValues[ NB_CARDS ][ NB_MUX_INPUT ];
int encoderSteps[ NB_CARDS ][ NB_MUX_INPUT ];
int pushValues[ NB_CARDS ][ NB_MUX_INPUT ];

void setup() {
    Serial.begin( 57600 );
  
    // set enable pins as output, default is HIGH
    for( int enablePin : enablePins ) {
        pinMode( enablePin, OUTPUT );
        digitalWrite( enablePin, HIGH );
    }
    // set address pins as output, default is LOW
    for( int addrPin : muxAddressPins ){
        pinMode( addrPin, OUTPUT );
        digitalWrite( addrPin, LOW );
        nbAddressPins++;
    }

    // set read pins as input with internal pullup
    for( int pin : muxReadPins ){
        if( PULLUP )
            pinMode( pin, INPUT_PULLUP );
        else 
            pinMode( pin, INPUT ); // put 10k resitor to GND (pulldown)
        nbReadPins++;
    }

    // setup all encoders from array with pullup state
    // first index -> card id
    // second index -> mux address
    for( unsigned int i = 0; i < NB_CARDS; i++ ) {
        for( unsigned int j = 0; j < NB_MUX_INPUT; j++ ) {
            encoders[ i ][ j ].setup( PULLUP );
            encoderValues[ i ][ j ] = 0;
            encoderStep[ i ][ j ] = 1;
            pushValues[ i ][ j ] = 0;
        }
    }
}

void loop() {

    for( unsigned int cardId = 0; cardId < NB_CARDS; cardId++ )
    {
        int returnedCode = 0;
        // enable the card/column
        digitalWrite( enablePins[ cardId ], LOW );
        delayMicroseconds( 2 );
        // for each input on the mux
        for( unsigned int muxAddress = 0; muxAddress < NB_MUX_INPUT; muxAddress++ ) {
            // set the input address on 2 or 3 bits
            for( unsigned int j = 0; j < nbAddressPins; j++ ){
                unsigned int state = muxAddress & addressMask[ j ];
                digitalWrite( muxAddressPins[ j ], state );
            }
            
            // read the values and store them
            bool readValues[ nbReadPins ];
            for( unsigned int j = 0; j < nbReadPins; j++ ){
                readValues[ j ] = digitalRead( muxReadPins[ j ] );
                
            }
            
            if( nbReadPins == 2 )
                returnedCode = encoders[ cardId ][ muxAddress ].update( readValues[ 0 ], readValues[ 1 ] );
            else if( nbReadPins == 3 )
                returnedCode = encoders[ cardId ][ muxAddress ].update( readValues[ 0 ], readValues[ 1 ], readValues[ 2 ] );
            if ( returnedCode ) {
              Serial.print( cardId );
              Serial.print( "," );
              Serial.print( muxAddress );
              Serial.print( "," );
              Serial.print( returnedCode );
              Serial.println( "," );
            }
            // do something with the returned code
            switch ( returnedCode ) {
                case 1: // clockwise
                    encoderValues[ cardId ][ muxAddress ] += encoderSteps[ cardId ][ muxAddress ];
                    sendEncoder( encoderValues([ cardId ][ muxAddress ]), cardId, muxAddress );
                    break;
                case 2: // anticlockwise
                    encoderValues[ cardId ][ muxAddress ] -= encoderSteps[ cardId ][ muxAddress ];
                    sendEncoder( encoderValues([ cardId ][ muxAddress ]), cardId, muxAddress );
                    break;
                case 4: // push button released
                    break;
                case 5: //clockwise + pushbutton
                    break;
                case 6: // anticlockwise + pushbutton
                    break;
                default:
                    break;
            }
            delayMicroseconds( 2 );
        }
        // disable the card
        digitalWrite( enablePins[ cardId ], HIGH );
        delayMicroseconds( 2 );
    }
}

void printRotaryValue ( int rotaryIdx ) {
  Serial.print( "Rotary Nb " );
  Serial.print( rotaryIdx );
  Serial.println( rotariesValue[ rotaryIdx ] );

}

void sendEncoder( int value, int x, int y ) {
  Serial.print( "encoder" );
  Serial.write( 32 ); 
  Serial.print( x );
  Serial.write( 32 ); 
  Serial.write( y ); 
  Serial.write( 32 ); 
  Serial.print( value );
  Serial.write( 32 );  
  Serial.println();
}
/*
void sendPush( int i ) {
  Serial.print( "btn" );
  Serial.write(32); 
  Serial.print( startPinBtn + i );
  Serial.write(32); 
  Serial.print( btn[ i ][ 1 ] );
  Serial.write(32);  
  Serial.println();
}
*/
