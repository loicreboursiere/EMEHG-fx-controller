EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1300 1050 2250 150 
U 5C18C164
F0 "Colonne0_PanneauEncoderRotatif" 50
F1 "Colonne0_PanneauEncoderRotatif.sch" 50
$EndSheet
$Sheet
S 1300 1450 2250 150 
U 5C18C1F1
F0 "Colonne1_PanneauEncoderRotatif" 50
F1 "Colonne1_PanneauEncoderRotatif.sch" 50
$EndSheet
$Sheet
S 1300 1850 2250 150 
U 5C18C26A
F0 "Colonne2_PanneauEncoderRotatif" 50
F1 "Colonne2_PanneauEncoderRotatif.sch" 50
$EndSheet
$Sheet
S 1300 2250 2250 150 
U 5C18F627
F0 "Colonne3_PanneauEncoderRotatif" 50
F1 "Colonne3_PanneauEncoderRotatif.sch" 50
$EndSheet
$Sheet
S 1300 2650 2250 150 
U 5C1B58A2
F0 "Colonne4_PanneauEncoderRotatif" 50
F1 "Colonne4_PanneauEncoderRotatif.sch" 50
$EndSheet
$Sheet
S 1300 3050 2250 150 
U 5C1B9DA2
F0 "Colonne5_PanneauEncoderRotatif" 50
F1 "Colonne5_PanneauEncoderRotatif.sch" 50
$EndSheet
$Sheet
S 1300 3400 2250 150 
U 5C1BBED5
F0 "Colonne6_PanneauEncoderRotatif" 50
F1 "Colonne6_PanneauEncoderRotatif.sch" 50
$EndSheet
Text GLabel 7750 1700 0    50   Input ~ 0
GND
Text GLabel 9750 4000 2    50   Input ~ 0
3V3
Text GLabel 7750 1800 0    50   Input ~ 0
Select_A
Text GLabel 7750 1900 0    50   Input ~ 0
Select_B
Text GLabel 7750 2000 0    50   Input ~ 0
Select_C
Text GLabel 7750 2100 0    50   Input ~ 0
Enable_Column0
Text GLabel 7750 2200 0    50   Input ~ 0
Enable_Column1
Text GLabel 7750 2300 0    50   Input ~ 0
Enable_Column2
Text GLabel 7750 2400 0    50   Input ~ 0
Enable_Column3
Text GLabel 7750 2500 0    50   Input ~ 0
Enable_Column4
Text GLabel 7750 2600 0    50   Input ~ 0
Enable_Column5
Text GLabel 7750 2700 0    50   Input ~ 0
Enable_Column6
Text GLabel 4650 5750 2    50   Input ~ 0
UI_CH_A
Text GLabel 3850 5350 0    50   Input ~ 0
UI_BP
Text GLabel 4650 5350 2    50   Input ~ 0
UI_CH_B
Text GLabel 9750 4200 2    50   Input ~ 0
UI_BP_F
Text GLabel 9750 4300 2    50   Input ~ 0
UI_CH_B_F
Text GLabel 7750 4300 0    50   Input ~ 0
UI_CH_A_F
Text GLabel 1950 5450 2    50   Input ~ 0
SDA
Text GLabel 1950 5350 2    50   Input ~ 0
SCL
Text GLabel 1950 4750 2    50   Input ~ 0
GND
Text GLabel 9750 3800 2    50   Input ~ 0
+5V
Text GLabel 1950 5150 2    50   Input ~ 0
LCD_RST
Text GLabel 7750 4100 0    50   Input ~ 0
SDA
Text GLabel 7750 4200 0    50   Input ~ 0
SCL
Text GLabel 7750 4000 0    50   Input ~ 0
LCD_RST
Text GLabel 3850 5750 0    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:CP-Device C?
U 1 1 5C45D64A
P 6150 1200
AR Path="/5C18C164/5C45D64A" Ref="C?"  Part="1" 
AR Path="/5C45D64A" Ref="CM1"  Part="1" 
F 0 "CM1" V 6405 1200 50  0000 C CNN
F 1 "10uF" V 6314 1200 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 6188 1050 50  0001 C CNN
F 3 "~" H 6150 1200 50  0001 C CNN
	1    6150 1200
	0    -1   -1   0   
$EndComp
Text GLabel 6300 1200 2    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:C-Device C?
U 1 1 5C45D652
P 6150 1650
AR Path="/5C18C164/5C45D652" Ref="C?"  Part="1" 
AR Path="/5C45D652" Ref="CM2"  Part="1" 
F 0 "CM2" V 5898 1650 50  0000 C CNN
F 1 "100nF" V 5989 1650 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 6188 1500 50  0001 C CNN
F 3 "~" H 6150 1650 50  0001 C CNN
	1    6150 1650
	0    1    1    0   
$EndComp
Text GLabel 6300 1650 2    50   Input ~ 0
GND
Text GLabel 6000 1200 0    50   Input ~ 0
3V3
Text GLabel 6000 1650 0    50   Input ~ 0
3V3
$Comp
L PanneauEncoderRotatif-rescue:C-Device C?
U 1 1 5C45D65C
P 6150 2100
AR Path="/5C18C164/5C45D65C" Ref="C?"  Part="1" 
AR Path="/5C45D65C" Ref="CM3"  Part="1" 
F 0 "CM3" V 5898 2100 50  0000 C CNN
F 1 "10nF" V 5989 2100 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 6188 1950 50  0001 C CNN
F 3 "~" H 6150 2100 50  0001 C CNN
	1    6150 2100
	0    1    1    0   
$EndComp
Text GLabel 6300 2100 2    50   Input ~ 0
GND
Text GLabel 6000 2100 0    50   Input ~ 0
3V3
$Comp
L PanneauEncoderRotatif-rescue:CP-Device C?
U 1 1 5C498892
P 1000 4600
AR Path="/5C18C164/5C498892" Ref="C?"  Part="1" 
AR Path="/5C498892" Ref="CM4"  Part="1" 
F 0 "CM4" V 1255 4600 50  0000 C CNN
F 1 "10uF" V 1164 4600 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 1038 4450 50  0001 C CNN
F 3 "~" H 1000 4600 50  0001 C CNN
	1    1000 4600
	0    -1   -1   0   
$EndComp
Text GLabel 1150 4600 2    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:C-Device C?
U 1 1 5C49889A
P 1000 5050
AR Path="/5C18C164/5C49889A" Ref="C?"  Part="1" 
AR Path="/5C49889A" Ref="CM5"  Part="1" 
F 0 "CM5" V 748 5050 50  0000 C CNN
F 1 "100nF" V 839 5050 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 1038 4900 50  0001 C CNN
F 3 "~" H 1000 5050 50  0001 C CNN
	1    1000 5050
	0    1    1    0   
$EndComp
Text GLabel 1150 5050 2    50   Input ~ 0
GND
Text GLabel 850  4600 0    50   Input ~ 0
+5V
Text GLabel 850  5050 0    50   Input ~ 0
+5V
Text GLabel 1150 5500 2    50   Input ~ 0
GND
Text GLabel 850  5500 0    50   Input ~ 0
+5V
$Comp
L Connector_Generic:Conn_01x08 OLED1
U 1 1 5C50225E
P 1750 5150
F 0 "OLED1" H 1670 4525 50  0000 C CNN
F 1 "Conn_01x08" H 1670 4616 50  0000 C CNN
F 2 "Display:Adafruit_SSD1306" H 1750 5150 50  0001 C CNN
F 3 "~" H 1750 5150 50  0001 C CNN
	1    1750 5150
	-1   0    0    1   
$EndComp
$Comp
L PanneauEncoderRotatif-rescue:ENCODER-SWITCH-SparkFun-Switches SW?
U 1 1 5C502C3D
P 4250 5550
AR Path="/5C18C164/5C502C3D" Ref="SW?"  Part="1" 
AR Path="/5C502C3D" Ref="SW_MAIN1"  Part="1" 
F 0 "SW_MAIN1" H 4250 6110 45  0000 C CNN
F 1 "ENCODER-SWITCH" H 4250 6026 45  0000 C CNN
F 2 "SparkFun_Switches:ROTARY_ENC_PLAIN" H 4250 5950 20  0001 C CNN
F 3 "" H 4250 5550 50  0001 C CNN
F 4 "COM-09117" H 4250 5931 60  0000 C CNN "Field4"
	1    4250 5550
	1    0    0    -1  
$EndComp
Text GLabel 4650 5550 2    50   Input ~ 0
GND
Text GLabel 1950 4850 2    50   Input ~ 0
+5V
$Comp
L Device:R_US R2
U 1 1 5C52CB8F
P 6150 3800
F 0 "R2" H 6218 3846 50  0000 L CNN
F 1 "10K" H 6218 3755 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6190 3790 50  0001 C CNN
F 3 "~" H 6150 3800 50  0001 C CNN
	1    6150 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5C52D98A
P 6150 4100
F 0 "R3" H 6218 4146 50  0000 L CNN
F 1 "10K" H 6218 4055 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6190 4090 50  0001 C CNN
F 3 "~" H 6150 4100 50  0001 C CNN
	1    6150 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5C52D9A6
P 6150 3500
F 0 "R1" H 6218 3546 50  0000 L CNN
F 1 "10K" H 6218 3455 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6190 3490 50  0001 C CNN
F 3 "~" H 6150 3500 50  0001 C CNN
	1    6150 3500
	0    -1   -1   0   
$EndComp
Text GLabel 5900 3500 0    50   Input ~ 0
3V3
$Comp
L Device:R_US R5
U 1 1 5C52E955
P 4300 6250
F 0 "R5" H 4368 6296 50  0000 L CNN
F 1 "10K" H 4368 6205 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4340 6240 50  0001 C CNN
F 3 "~" H 4300 6250 50  0001 C CNN
	1    4300 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5C52E95C
P 4600 6250
F 0 "R4" H 4668 6296 50  0000 L CNN
F 1 "10K" H 4668 6205 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4640 6240 50  0001 C CNN
F 3 "~" H 4600 6250 50  0001 C CNN
	1    4600 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5C52E963
P 4000 6250
F 0 "R6" H 4068 6296 50  0000 L CNN
F 1 "10K" H 4068 6205 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4040 6240 50  0001 C CNN
F 3 "~" H 4000 6250 50  0001 C CNN
	1    4000 6250
	1    0    0    -1  
$EndComp
Text GLabel 4300 7100 3    50   Input ~ 0
UI_CH_A
Text GLabel 4600 7100 3    50   Input ~ 0
UI_CH_B
Text GLabel 4000 7100 3    50   Input ~ 0
UI_BP
Text GLabel 3800 6000 0    50   Input ~ 0
3V3
Wire Wire Line
	3800 6000 4000 6000
Wire Wire Line
	4000 6000 4000 6100
Wire Wire Line
	4300 6100 4300 6000
Wire Wire Line
	4300 6000 4000 6000
Connection ~ 4000 6000
Wire Wire Line
	4600 6100 4600 6000
Wire Wire Line
	4600 6000 4300 6000
Connection ~ 4300 6000
Wire Wire Line
	7750 3800 7050 3800
Wire Wire Line
	5900 3500 5950 3500
Wire Wire Line
	6000 3800 5950 3800
Wire Wire Line
	5950 3800 5950 3500
Connection ~ 5950 3500
Wire Wire Line
	5950 3500 6000 3500
Wire Wire Line
	6000 4100 5950 4100
Wire Wire Line
	5950 4100 5950 3800
Connection ~ 5950 3800
Wire Wire Line
	6300 3500 6350 3500
Wire Wire Line
	6300 3800 6450 3800
$Comp
L PanneauEncoderRotatif-rescue:C-Device C?
U 1 1 5C532272
P 1000 5500
AR Path="/5C18C164/5C532272" Ref="C?"  Part="1" 
AR Path="/5C532272" Ref="CM6"  Part="1" 
F 0 "CM6" V 748 5500 50  0000 C CNN
F 1 "10nF" V 839 5500 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 1038 5350 50  0001 C CNN
F 3 "~" H 1000 5500 50  0001 C CNN
	1    1000 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 4900 7050 3800
Connection ~ 7050 3800
Wire Wire Line
	7100 4100 7100 3900
Wire Wire Line
	7100 3900 7750 3900
Wire Wire Line
	7000 3500 7000 3700
$Comp
L PanneauEncoderRotatif-rescue:Teensy3.2-teensy U100
U 1 1 5C3C8A54
P 8750 3000
F 0 "U100" H 8750 4693 60  0000 C CNN
F 1 "Teensy3.2" H 8750 4587 60  0000 C CNN
F 2 "teensy:Teensy30_31_32_LC" H 8750 4481 60  0000 C CNN
F 3 "" H 8750 2200 60  0000 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3700 7000 3700
Connection ~ 7000 3700
Wire Wire Line
	7000 3700 7000 4500
Text GLabel 6350 3200 1    50   Input ~ 0
CH_A
Text GLabel 6450 3200 1    50   Input ~ 0
CH_B
Text GLabel 6550 3200 1    50   Input ~ 0
BP
Wire Wire Line
	6350 3200 6350 3500
Connection ~ 6350 3500
Wire Wire Line
	6300 4100 6550 4100
Wire Wire Line
	6450 3200 6450 3800
Connection ~ 6450 3800
Wire Wire Line
	6550 3200 6550 4100
Connection ~ 6550 4100
Text GLabel 7200 4500 2    50   Input ~ 0
CH_A_F
Text GLabel 7200 4900 2    50   Input ~ 0
CH_B_F
Text GLabel 7200 5300 2    50   Input ~ 0
BP_F
Wire Wire Line
	7200 4500 7000 4500
Wire Wire Line
	7200 4900 7050 4900
Wire Wire Line
	7200 5300 7100 5300
Wire Wire Line
	7100 4100 7100 5300
Connection ~ 7100 4100
$Comp
L Device:R_US R11
U 1 1 5C53E827
P 5000 6750
F 0 "R11" H 5068 6796 50  0000 L CNN
F 1 "10K" H 5068 6705 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5040 6740 50  0001 C CNN
F 3 "~" H 5000 6750 50  0001 C CNN
	1    5000 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5C53E82E
P 5000 6450
F 0 "R10" H 5068 6496 50  0000 L CNN
F 1 "10K" H 5068 6405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5040 6440 50  0001 C CNN
F 3 "~" H 5000 6450 50  0001 C CNN
	1    5000 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5C53E835
P 5000 7050
F 0 "R12" H 5068 7096 50  0000 L CNN
F 1 "10K" H 5068 7005 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5040 7040 50  0001 C CNN
F 3 "~" H 5000 7050 50  0001 C CNN
	1    5000 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 6400 4600 6450
Wire Wire Line
	4850 6450 4600 6450
Connection ~ 4600 6450
Wire Wire Line
	4850 6750 4300 6750
Wire Wire Line
	4300 6750 4300 6400
Connection ~ 4300 6750
Wire Wire Line
	4300 6750 4300 7100
Wire Wire Line
	4600 6450 4600 7100
Wire Wire Line
	4850 7050 4000 7050
Wire Wire Line
	4000 7050 4000 7100
Wire Wire Line
	4000 6400 4000 7050
Connection ~ 4000 7050
$Comp
L PanneauEncoderRotatif-rescue:C-Device CM?
U 1 1 5C5484F3
P 5250 7300
AR Path="/5C18C164/5C5484F3" Ref="CM?"  Part="1" 
AR Path="/5C5484F3" Ref="CM10"  Part="1" 
F 0 "CM10" V 4998 7300 50  0000 C CNN
F 1 "10nF" V 5089 7300 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5288 7150 50  0001 C CNN
F 3 "~" H 5250 7300 50  0001 C CNN
	1    5250 7300
	1    0    0    -1  
$EndComp
$Comp
L PanneauEncoderRotatif-rescue:C-Device CM?
U 1 1 5C5484FA
P 6150 7300
AR Path="/5C18C164/5C5484FA" Ref="CM?"  Part="1" 
AR Path="/5C5484FA" Ref="CM12"  Part="1" 
F 0 "CM12" V 5898 7300 50  0000 C CNN
F 1 "10nF" V 5989 7300 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6188 7150 50  0001 C CNN
F 3 "~" H 6150 7300 50  0001 C CNN
	1    6150 7300
	1    0    0    -1  
$EndComp
$Comp
L PanneauEncoderRotatif-rescue:C-Device CM?
U 1 1 5C548501
P 5700 7300
AR Path="/5C18C164/5C548501" Ref="CM?"  Part="1" 
AR Path="/5C548501" Ref="CM11"  Part="1" 
F 0 "CM11" V 5448 7300 50  0000 C CNN
F 1 "10nF" V 5539 7300 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5738 7150 50  0001 C CNN
F 3 "~" H 5700 7300 50  0001 C CNN
	1    5700 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7450 5250 7550
Wire Wire Line
	5250 7550 5700 7550
Wire Wire Line
	5700 7550 5700 7450
Wire Wire Line
	6150 7450 6150 7550
Wire Wire Line
	6150 7550 5700 7550
Connection ~ 5700 7550
Text GLabel 5100 7550 0    50   Input ~ 0
GND
Wire Wire Line
	5250 7550 5100 7550
Connection ~ 5250 7550
Text GLabel 6300 7050 2    50   Input ~ 0
UI_BP_F
Text GLabel 6300 6450 2    50   Input ~ 0
UI_CH_B_F
Text GLabel 6300 6750 2    50   Input ~ 0
UI_CH_A_F
Wire Wire Line
	5150 7050 6150 7050
Wire Wire Line
	5150 6750 5700 6750
Wire Wire Line
	6300 6450 5250 6450
Wire Wire Line
	5700 7150 5700 6750
Connection ~ 5700 6750
Wire Wire Line
	5700 6750 6300 6750
Wire Wire Line
	5250 7150 5250 6450
Connection ~ 5250 6450
Wire Wire Line
	5250 6450 5150 6450
Wire Wire Line
	6150 7050 6150 7150
Wire Wire Line
	6300 7050 6150 7050
Connection ~ 6150 7050
$Comp
L Connector_Generic:Conn_01x05 TEENSY_I2C_1
U 1 1 5C6EDDD3
P 3000 4950
F 0 "TEENSY_I2C_1" H 3080 4992 50  0000 L CNN
F 1 "Conn_01x05" H 3080 4901 50  0000 L CNN
F 2 "MolexConnector:Molex_KK-254_1x05_P2.54mm_Horizontal" H 3000 4950 50  0001 C CNN
F 3 "~" H 3000 4950 50  0001 C CNN
	1    3000 4950
	1    0    0    -1  
$EndComp
Text GLabel 2800 4750 0    50   Input ~ 0
GND
Text GLabel 2800 4850 0    50   Input ~ 0
+5V
Text GLabel 2800 4950 0    50   Input ~ 0
3V3
Text GLabel 2800 5050 0    50   Input ~ 0
SCL
Text GLabel 2800 5150 0    50   Input ~ 0
SDA
$Comp
L LED:WS2812B D1
U 1 1 5C826160
P 9350 5750
F 0 "D1" H 9691 5796 50  0000 L CNN
F 1 "WS2812B" H 9691 5705 50  0000 L CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 9400 5450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9450 5375 50  0001 L TNN
	1    9350 5750
	1    0    0    -1  
$EndComp
Text GLabel 9350 5450 1    50   Input ~ 0
+5V
Text GLabel 9350 6050 3    50   Input ~ 0
GND
Text GLabel 8600 5400 0    50   Input ~ 0
NEOPIXEL_IN_5V
Text GLabel 7750 2800 0    50   Input ~ 0
OLED_IN_3V3
$Comp
L LED:WS2812B D2
U 1 1 5C83FC5B
P 10400 5750
F 0 "D2" H 10741 5796 50  0000 L CNN
F 1 "WS2812B" H 10741 5705 50  0000 L CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 10450 5450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 10500 5375 50  0001 L TNN
	1    10400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5750 9650 5750
Text GLabel 10400 5450 1    50   Input ~ 0
+5V
Text GLabel 10400 6050 3    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:C-Device C?
U 1 1 5C82A631
P 8350 5000
AR Path="/5C18C164/5C82A631" Ref="C?"  Part="1" 
AR Path="/5C82A631" Ref="C8"  Part="1" 
F 0 "C8" V 8098 5000 50  0000 C CNN
F 1 "100nF" V 8189 5000 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 8388 4850 50  0001 C CNN
F 3 "~" H 8350 5000 50  0001 C CNN
	1    8350 5000
	0    1    1    0   
$EndComp
Text GLabel 8500 5000 2    50   Input ~ 0
GND
Text GLabel 8200 5000 0    50   Input ~ 0
+5V
$Comp
L PanneauEncoderRotatif-rescue:C-Device C?
U 1 1 5C82BC3D
P 9400 5000
AR Path="/5C18C164/5C82BC3D" Ref="C?"  Part="1" 
AR Path="/5C82BC3D" Ref="C9"  Part="1" 
F 0 "C9" V 9148 5000 50  0000 C CNN
F 1 "100nF" V 9239 5000 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 9438 4850 50  0001 C CNN
F 3 "~" H 9400 5000 50  0001 C CNN
	1    9400 5000
	0    1    1    0   
$EndComp
Text GLabel 9550 5000 2    50   Input ~ 0
GND
Text GLabel 9250 5000 0    50   Input ~ 0
+5V
$Comp
L 74xGxx:74LVC1G125 U4
U 1 1 5C863ECC
P 7850 5750
F 0 "U4" H 7825 5576 50  0000 C CNN
F 1 "74LVC1G125" H 7825 5485 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 7850 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 7850 5750 50  0001 C CNN
	1    7850 5750
	1    0    0    -1  
$EndComp
Text GLabel 7850 5550 1    50   Input ~ 0
GND
Text GLabel 7550 5750 0    50   Input ~ 0
NEOPIXEL_IN_3V3
$Comp
L Device:CP C10
U 1 1 5C87BB10
P 10400 5000
F 0 "C10" V 10655 5000 50  0000 C CNN
F 1 "100u" V 10564 5000 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 10438 4850 50  0001 C CNN
F 3 "~" H 10400 5000 50  0001 C CNN
	1    10400 5000
	0    -1   -1   0   
$EndComp
Text GLabel 10550 5000 2    50   Input ~ 0
GND
Text GLabel 10250 5000 0    50   Input ~ 0
+5V
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5C86913B
P 8800 5750
F 0 "JP1" V 8846 5818 50  0000 L CNN
F 1 "SolderJumper" V 8755 5818 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 8800 5750 50  0001 C CNN
F 3 "~" H 8800 5750 50  0001 C CNN
	1    8800 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 5750 9000 5750
Wire Wire Line
	8800 5500 8800 5550
Wire Wire Line
	8100 5500 8100 5750
Wire Wire Line
	8600 5400 8700 5400
Wire Wire Line
	8700 5400 8700 5500
Text GLabel 8600 6200 0    50   Input ~ 0
NEOPIXEL_IN_3V3
Wire Wire Line
	8600 6200 8800 6200
Wire Wire Line
	8800 6200 8800 5950
Text GLabel 8900 6350 0    50   Input ~ 0
NEOPIXEL_IN
Wire Wire Line
	9000 5750 9000 6350
Wire Wire Line
	9000 6350 8900 6350
Connection ~ 9000 5750
Wire Wire Line
	9000 5750 8950 5750
Connection ~ 8700 5500
Wire Wire Line
	8700 5500 8800 5500
Wire Wire Line
	8100 5500 8700 5500
$Comp
L Device:R_US R13
U 1 1 5C8F7C38
P 4600 3800
F 0 "R13" H 4668 3846 50  0000 L CNN
F 1 "390" H 4668 3755 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4640 3790 50  0001 C CNN
F 3 "~" H 4600 3800 50  0001 C CNN
	1    4600 3800
	0    -1   -1   0   
$EndComp
Text GLabel 7750 3600 0    50   Input ~ 0
TEENSY_LED
Text GLabel 4450 3800 0    50   Input ~ 0
TEENSY_LED
$Comp
L Device:LED LED1
U 1 1 5C8FCF0B
P 4900 3800
F 0 "LED1" H 4892 3545 50  0000 C CNN
F 1 "LED" H 4892 3636 50  0000 C CNN
F 2 "" H 4900 3800 50  0001 C CNN
F 3 "~" H 4900 3800 50  0001 C CNN
	1    4900 3800
	-1   0    0    1   
$EndComp
Text GLabel 5150 3800 2    50   Input ~ 0
GND
Wire Wire Line
	5150 3800 5050 3800
Wire Wire Line
	6350 3500 7000 3500
Wire Wire Line
	6450 3800 7050 3800
Wire Wire Line
	6550 4100 7100 4100
$EndSCHEMATC
