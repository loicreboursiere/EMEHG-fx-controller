EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PanneauEncoderRotatif-rescue:ENCODER-SWITCH-SparkFun-Switches SW31
U 1 1 5C407ABD
P 1450 1900
F 0 "SW31" H 1450 2460 45  0000 C CNN
F 1 "ENCODER-SWITCH" H 1450 2376 45  0000 C CNN
F 2 "SparkFun_Switches:ROTARY_ENC_PLAIN" H 1450 2300 20  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
F 4 "COM-09117" H 1450 2281 60  0000 C CNN "Field4"
	1    1450 1900
	1    0    0    -1  
$EndComp
$Comp
L PanneauEncoderRotatif-rescue:ENCODER-SWITCH-SparkFun-Switches SW32
U 1 1 5C407AAA
P 1450 2850
F 0 "SW32" H 1450 3410 45  0000 C CNN
F 1 "ENCODER-SWITCH" H 1450 3326 45  0000 C CNN
F 2 "SparkFun_Switches:ROTARY_ENC_PLAIN" H 1450 3250 20  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
F 4 "COM-09117" H 1450 3231 60  0000 C CNN "Field4"
	1    1450 2850
	1    0    0    -1  
$EndComp
Text GLabel 1850 2100 2    50   Input ~ 0
SW31_CH_A
Text GLabel 1850 3050 2    50   Input ~ 0
SW32_CH_A
Text GLabel 1050 1700 0    50   Input ~ 0
SW31_BP
Text GLabel 1850 2650 2    50   Input ~ 0
SW32_CH_B
Text GLabel 1850 2850 2    50   Input ~ 0
GND
Text GLabel 1850 1900 2    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:4051-4xxx U32
U 1 1 5C407AC0
P 6100 2300
F 0 "U32" H 6641 2346 50  0000 C CNN
F 1 "4051" H 6641 2255 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 6100 2300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
$Comp
L PanneauEncoderRotatif-rescue:CP-Device C31
U 1 1 5C407AC2
P 1450 1100
F 0 "C31" V 1705 1100 50  0000 C CNN
F 1 "10uF" V 1614 1100 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 1488 950 50  0001 C CNN
F 3 "~" H 1450 1100 50  0001 C CNN
	1    1450 1100
	0    -1   -1   0   
$EndComp
Text GLabel 1600 1100 2    50   Input ~ 0
GND
Wire Wire Line
	6100 3200 6100 3250
Wire Wire Line
	6100 3250 6200 3250
Wire Wire Line
	6200 3250 6200 3200
Wire Wire Line
	6200 3250 6300 3250
Connection ~ 6200 3250
Text GLabel 6300 3250 2    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:C-Device C32
U 1 1 5C407AC9
P 3450 1150
F 0 "C32" V 3198 1150 50  0000 C CNN
F 1 "100nF" V 3289 1150 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 3488 1000 50  0001 C CNN
F 3 "~" H 3450 1150 50  0001 C CNN
	1    3450 1150
	0    1    1    0   
$EndComp
Text GLabel 3600 1150 2    50   Input ~ 0
GND
Text GLabel 1300 1100 0    50   Input ~ 0
3V3
Text GLabel 3300 1150 0    50   Input ~ 0
3V3
Text GLabel 6000 1400 0    50   Input ~ 0
3V3
$Comp
L PanneauEncoderRotatif-rescue:ENCODER-SWITCH-SparkFun-Switches SW33
U 1 1 5C407ACC
P 1450 3800
F 0 "SW33" H 1450 4360 45  0000 C CNN
F 1 "ENCODER-SWITCH" H 1450 4276 45  0000 C CNN
F 2 "SparkFun_Switches:ROTARY_ENC_PLAIN" H 1450 4200 20  0001 C CNN
F 3 "" H 1450 3800 50  0001 C CNN
F 4 "COM-09117" H 1450 4181 60  0000 C CNN "Field4"
	1    1450 3800
	1    0    0    -1  
$EndComp
Text GLabel 1850 4000 2    50   Input ~ 0
SW33_CH_A
Text GLabel 1850 3600 2    50   Input ~ 0
SW33_CH_B
Text GLabel 1850 3800 2    50   Input ~ 0
GND
$Comp
L PanneauEncoderRotatif-rescue:ENCODER-SWITCH-SparkFun-Switches SW34
U 1 1 5C18E7D3
P 1450 4750
F 0 "SW34" H 1450 5310 45  0000 C CNN
F 1 "ENCODER-SWITCH" H 1450 5226 45  0000 C CNN
F 2 "SparkFun_Switches:ROTARY_ENC_PLAIN" H 1450 5150 20  0001 C CNN
F 3 "" H 1450 4750 50  0001 C CNN
F 4 "COM-09117" H 1450 5131 60  0000 C CNN "Field4"
	1    1450 4750
	1    0    0    -1  
$EndComp
Text GLabel 1850 4950 2    50   Input ~ 0
SW34_CH_A
Text GLabel 1850 4550 2    50   Input ~ 0
SW34_CH_B
Text GLabel 1850 4750 2    50   Input ~ 0
GND
Text GLabel 5600 2700 0    50   Input ~ 0
Select_A
Text GLabel 5600 2800 0    50   Input ~ 0
Select_B
Text GLabel 5600 2900 0    50   Input ~ 0
Select_C
Text GLabel 5600 2600 0    50   Input ~ 0
Enable_Column3
$Comp
L PanneauEncoderRotatif-rescue:C-Device C33
U 1 1 5C407AAE
P 4300 1150
F 0 "C33" V 4048 1150 50  0000 C CNN
F 1 "10nF" V 4139 1150 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 4338 1000 50  0001 C CNN
F 3 "~" H 4300 1150 50  0001 C CNN
	1    4300 1150
	0    1    1    0   
$EndComp
Text GLabel 4450 1150 2    50   Input ~ 0
GND
Text GLabel 4150 1150 0    50   Input ~ 0
3V3
Text GLabel 6600 1700 2    50   Input ~ 0
CH_B
$Comp
L PanneauEncoderRotatif-rescue:4051-4xxx U31
U 1 1 5C407AB3
P 3900 2300
F 0 "U31" H 4441 2346 50  0000 C CNN
F 1 "4051" H 4441 2255 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 3900 2300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3200 3900 3250
Wire Wire Line
	3900 3250 4000 3250
Wire Wire Line
	4000 3250 4000 3200
Wire Wire Line
	4000 3250 4100 3250
Connection ~ 4000 3250
Text GLabel 4100 3250 2    50   Input ~ 0
GND
Text GLabel 3800 1400 0    50   Input ~ 0
3V3
Text GLabel 3400 1700 0    50   Input ~ 0
SW31_CH_A
Text GLabel 3400 1800 0    50   Input ~ 0
SW32_CH_A
Text GLabel 3400 1900 0    50   Input ~ 0
SW33_CH_A
Text GLabel 3400 2000 0    50   Input ~ 0
SW34_CH_A
Text GLabel 3400 2700 0    50   Input ~ 0
Select_A
Text GLabel 3400 2800 0    50   Input ~ 0
Select_B
Text GLabel 3400 2900 0    50   Input ~ 0
Select_C
Text GLabel 3400 2600 0    50   Input ~ 0
Enable_Column3
Text GLabel 4400 1700 2    50   Input ~ 0
CH_A
Wire Wire Line
	8250 3200 8250 3250
Wire Wire Line
	8250 3250 8350 3250
Wire Wire Line
	8350 3250 8350 3200
Wire Wire Line
	8350 3250 8450 3250
Connection ~ 8350 3250
Text GLabel 8450 3250 2    50   Input ~ 0
GND
Text GLabel 8150 1400 0    50   Input ~ 0
3V3
Text GLabel 7750 1700 0    50   Input ~ 0
SW31_BP
Text GLabel 7750 1800 0    50   Input ~ 0
SW32_BP
Text GLabel 7750 1900 0    50   Input ~ 0
SW33_BP
Text GLabel 7750 2000 0    50   Input ~ 0
SW34_BP
Text GLabel 7750 2700 0    50   Input ~ 0
Select_A
Text GLabel 7750 2800 0    50   Input ~ 0
Select_B
Text GLabel 7750 2900 0    50   Input ~ 0
Select_C
Text GLabel 7750 2600 0    50   Input ~ 0
Enable_Column3
Text GLabel 8750 1700 2    50   Input ~ 0
BP
Text GLabel 1850 1700 2    50   Input ~ 0
SW31_CH_B
Text GLabel 1050 2100 0    50   Input ~ 0
GND
Text GLabel 1050 2650 0    50   Input ~ 0
SW32_BP
Text GLabel 1050 3050 0    50   Input ~ 0
GND
Text GLabel 1050 3600 0    50   Input ~ 0
SW33_BP
Text GLabel 1050 4000 0    50   Input ~ 0
GND
Text GLabel 1050 4550 0    50   Input ~ 0
SW34_BP
Text GLabel 1050 4950 0    50   Input ~ 0
GND
Wire Wire Line
	3800 1400 3900 1400
Wire Wire Line
	6000 1400 6100 1400
$Comp
L PanneauEncoderRotatif-rescue:4051-4xxx U33
U 1 1 5C407AD2
P 8250 2300
F 0 "U33" H 8791 2346 50  0000 C CNN
F 1 "4051" H 8791 2255 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 8250 2300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 8250 2300 50  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1400 8250 1400
$Comp
L PanneauEncoderRotatif-rescue:C-Device C34
U 1 1 5C407AD6
P 5650 1150
F 0 "C34" V 5398 1150 50  0000 C CNN
F 1 "100nF" V 5489 1150 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 5688 1000 50  0001 C CNN
F 3 "~" H 5650 1150 50  0001 C CNN
	1    5650 1150
	0    1    1    0   
$EndComp
Text GLabel 5800 1150 2    50   Input ~ 0
GND
Text GLabel 5500 1150 0    50   Input ~ 0
3V3
$Comp
L PanneauEncoderRotatif-rescue:C-Device C35
U 1 1 5C407ADA
P 6500 1150
F 0 "C35" V 6248 1150 50  0000 C CNN
F 1 "10nF" V 6339 1150 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 6538 1000 50  0001 C CNN
F 3 "~" H 6500 1150 50  0001 C CNN
	1    6500 1150
	0    1    1    0   
$EndComp
Text GLabel 6650 1150 2    50   Input ~ 0
GND
Text GLabel 6350 1150 0    50   Input ~ 0
3V3
$Comp
L PanneauEncoderRotatif-rescue:C-Device C36
U 1 1 5C139A22
P 7900 1150
F 0 "C36" V 7648 1150 50  0000 C CNN
F 1 "100nF" V 7739 1150 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 7938 1000 50  0001 C CNN
F 3 "~" H 7900 1150 50  0001 C CNN
	1    7900 1150
	0    1    1    0   
$EndComp
Text GLabel 8050 1150 2    50   Input ~ 0
GND
Text GLabel 7750 1150 0    50   Input ~ 0
3V3
$Comp
L PanneauEncoderRotatif-rescue:C-Device C37
U 1 1 5C407AE1
P 8750 1150
F 0 "C37" V 8498 1150 50  0000 C CNN
F 1 "10nF" V 8589 1150 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 8788 1000 50  0001 C CNN
F 3 "~" H 8750 1150 50  0001 C CNN
	1    8750 1150
	0    1    1    0   
$EndComp
Text GLabel 8900 1150 2    50   Input ~ 0
GND
Text GLabel 8600 1150 0    50   Input ~ 0
3V3
Text GLabel 5600 1700 0    50   Input ~ 0
SW31_CH_B
Text GLabel 5600 1800 0    50   Input ~ 0
SW32_CH_B
Text GLabel 5600 1900 0    50   Input ~ 0
SW33_CH_B
Text GLabel 5600 2000 0    50   Input ~ 0
SW34_CH_B
$EndSCHEMATC
