EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_02x10_Odd_Even J5
U 1 1 5E8F7CEA
P 9800 4850
F 0 "J5" H 9850 5467 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 9850 5376 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Horizontal" H 9800 4850 50  0001 C CNN
F 3 "~" H 9800 4850 50  0001 C CNN
	1    9800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5400 10100 5350
Connection ~ 10100 4550
Wire Wire Line
	10100 4550 10100 4450
Connection ~ 10100 4650
Wire Wire Line
	10100 4650 10100 4550
Connection ~ 10100 4750
Wire Wire Line
	10100 4750 10100 4650
Connection ~ 10100 4850
Wire Wire Line
	10100 4850 10100 4750
Connection ~ 10100 4950
Wire Wire Line
	10100 4950 10100 4850
Connection ~ 10100 5050
Wire Wire Line
	10100 5050 10100 4950
Connection ~ 10100 5150
Wire Wire Line
	10100 5150 10100 5050
Connection ~ 10100 5250
Wire Wire Line
	10100 5250 10100 5150
Connection ~ 10100 5350
Wire Wire Line
	10100 5350 10100 5250
$Comp
L power:GND #PWR057
U 1 1 5E8F8C2B
P 10100 5400
F 0 "#PWR057" H 10100 5150 50  0001 C CNN
F 1 "GND" H 10105 5227 50  0000 C CNN
F 2 "" H 10100 5400 50  0001 C CNN
F 3 "" H 10100 5400 50  0001 C CNN
	1    10100 5400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR056
U 1 1 5E8F9AF7
P 9600 4550
F 0 "#PWR056" H 9600 4400 50  0001 C CNN
F 1 "VCC" V 9618 4677 50  0000 L CNN
F 2 "" H 9600 4550 50  0001 C CNN
F 3 "" H 9600 4550 50  0001 C CNN
	1    9600 4550
	0    -1   -1   0   
$EndComp
$Comp
L Interface_UART:ST485EBDR U5
U 1 1 5E8FA4E6
P 8650 5250
F 0 "U5" H 8650 5831 50  0000 C CNN
F 1 "ST485EBDR" H 8650 5740 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8650 4350 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/st485eb.pdf" H 8650 5300 50  0001 C CNN
	1    8650 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5E8FB1A9
P 8650 5750
F 0 "#PWR053" H 8650 5500 50  0001 C CNN
F 1 "GND" H 8655 5577 50  0000 C CNN
F 2 "" H 8650 5750 50  0001 C CNN
F 3 "" H 8650 5750 50  0001 C CNN
	1    8650 5750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR052
U 1 1 5E8FCC2B
P 8650 4850
F 0 "#PWR052" H 8650 4700 50  0001 C CNN
F 1 "VCC" H 8667 5023 50  0000 C CNN
F 2 "" H 8650 4850 50  0001 C CNN
F 3 "" H 8650 4850 50  0001 C CNN
	1    8650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5350 9250 5350
Wire Wire Line
	9250 5350 9250 5150
Wire Wire Line
	9250 5150 9050 5150
Wire Wire Line
	9600 5250 9300 5250
Wire Wire Line
	9300 5250 9300 5450
Wire Wire Line
	9300 5450 9050 5450
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U4
U 1 1 5E8FDE12
P 7100 4550
F 0 "U4" H 7100 2961 50  0000 C CNN
F 1 "ATmega328P-AU" H 7100 2870 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7100 4550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5E8FF425
P 8400 4050
F 0 "Y1" H 8400 4318 50  0000 C CNN
F 1 "16MHz" H 8400 4227 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 8400 4050 50  0001 C CNN
F 3 "~" H 8400 4050 50  0001 C CNN
	1    8400 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5E900501
P 8100 4200
F 0 "C18" H 8215 4246 50  0000 L CNN
F 1 "27p" H 8215 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8138 4050 50  0001 C CNN
F 3 "~" H 8100 4200 50  0001 C CNN
	1    8100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5E900EE7
P 8600 4200
F 0 "C20" H 8715 4246 50  0000 L CNN
F 1 "27p" H 8715 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8638 4050 50  0001 C CNN
F 3 "~" H 8600 4200 50  0001 C CNN
	1    8600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5E90119F
P 8600 4350
F 0 "#PWR051" H 8600 4100 50  0001 C CNN
F 1 "GND" H 8605 4177 50  0000 C CNN
F 2 "" H 8600 4350 50  0001 C CNN
F 3 "" H 8600 4350 50  0001 C CNN
	1    8600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5E90178B
P 8100 4350
F 0 "#PWR048" H 8100 4100 50  0001 C CNN
F 1 "GND" H 8105 4177 50  0000 C CNN
F 2 "" H 8100 4350 50  0001 C CNN
F 3 "" H 8100 4350 50  0001 C CNN
	1    8100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4050 8550 4050
Wire Wire Line
	8600 4050 8600 3950
Wire Wire Line
	8600 3950 7700 3950
Connection ~ 8600 4050
Wire Wire Line
	8250 5150 8250 5050
Wire Wire Line
	8250 5050 7700 5050
Wire Wire Line
	8250 5450 8150 5450
Wire Wire Line
	8150 5450 8150 5150
Wire Wire Line
	8150 5150 7700 5150
Wire Wire Line
	8250 5350 8250 5250
Wire Wire Line
	8250 5250 7700 5250
Connection ~ 8250 5250
$Comp
L power:GND #PWR043
U 1 1 5E904F45
P 7100 6050
F 0 "#PWR043" H 7100 5800 50  0001 C CNN
F 1 "GND" H 7105 5877 50  0000 C CNN
F 2 "" H 7100 6050 50  0001 C CNN
F 3 "" H 7100 6050 50  0001 C CNN
	1    7100 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-10 J4
U 1 1 5E905944
P 9200 3800
F 0 "J4" H 8870 3896 50  0000 R CNN
F 1 "AVR-ISP-10" H 8870 3805 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" V 8950 3850 50  0001 C CNN
F 3 " ~" H 7925 3250 50  0001 C CNN
	1    9200 3800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR055
U 1 1 5E9098B2
P 9300 4200
F 0 "#PWR055" H 9300 3950 50  0001 C CNN
F 1 "GND" H 9305 4027 50  0000 C CNN
F 2 "" H 9300 4200 50  0001 C CNN
F 3 "" H 9300 4200 50  0001 C CNN
	1    9300 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR054
U 1 1 5E909DF2
P 9300 3300
F 0 "#PWR054" H 9300 3150 50  0001 C CNN
F 1 "VCC" H 9317 3473 50  0000 C CNN
F 2 "" H 9300 3300 50  0001 C CNN
F 3 "" H 9300 3300 50  0001 C CNN
	1    9300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3900 8800 4600
Wire Wire Line
	8800 4600 8300 4600
Wire Wire Line
	8300 4600 8300 4850
Wire Wire Line
	8300 4850 7700 4850
Wire Wire Line
	8800 3800 8050 3800
Wire Wire Line
	8050 3800 8050 3850
Wire Wire Line
	8050 3850 7700 3850
Wire Wire Line
	8800 3700 8050 3700
Wire Wire Line
	8050 3700 8050 3650
Wire Wire Line
	8050 3650 7700 3650
Wire Wire Line
	7700 3750 8650 3750
Wire Wire Line
	8650 3750 8650 3600
Wire Wire Line
	8650 3600 8800 3600
$Comp
L power:VCC #PWR042
U 1 1 5E90EDCA
P 7100 3050
F 0 "#PWR042" H 7100 2900 50  0001 C CNN
F 1 "VCC" H 7117 3223 50  0000 C CNN
F 2 "" H 7100 3050 50  0001 C CNN
F 3 "" H 7100 3050 50  0001 C CNN
	1    7100 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR044
U 1 1 5E90F793
P 7200 2750
F 0 "#PWR044" H 7200 2600 50  0001 C CNN
F 1 "VCC" H 7217 2923 50  0000 C CNN
F 2 "" H 7200 2750 50  0001 C CNN
F 3 "" H 7200 2750 50  0001 C CNN
	1    7200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5E90FD03
P 7200 2900
F 0 "L1" H 7252 2946 50  0000 L CNN
F 1 "2u2" H 7252 2855 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7200 2900 50  0001 C CNN
F 3 "~" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR045
U 1 1 5E915688
P 7200 3050
F 0 "#PWR045" H 7200 2900 50  0001 C CNN
F 1 "VAA" V 7217 3178 50  0000 L CNN
F 2 "" H 7200 3050 50  0001 C CNN
F 3 "" H 7200 3050 50  0001 C CNN
	1    7200 3050
	0    1    1    0   
$EndComp
Connection ~ 7200 3050
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 5E917716
P 5800 3350
F 0 "U3" H 5800 3592 50  0000 C CNN
F 1 "AMS1117-3.3" H 5800 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5800 3550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5900 3100 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5E9180A6
P 5800 3650
F 0 "#PWR040" H 5800 3400 50  0001 C CNN
F 1 "GND" H 5805 3477 50  0000 C CNN
F 2 "" H 5800 3650 50  0001 C CNN
F 3 "" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR039
U 1 1 5E91843F
P 5500 3350
F 0 "#PWR039" H 5500 3200 50  0001 C CNN
F 1 "VCC" H 5517 3523 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3350 6250 3350
$Comp
L Device:C C16
U 1 1 5E91962D
P 6250 3500
F 0 "C16" H 6365 3546 50  0000 L CNN
F 1 "100nF" H 6365 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 3350 50  0001 C CNN
F 3 "~" H 6250 3500 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
Connection ~ 6250 3350
Wire Wire Line
	6250 3350 6100 3350
$Comp
L power:GND #PWR041
U 1 1 5E919FA0
P 6250 3650
F 0 "#PWR041" H 6250 3400 50  0001 C CNN
F 1 "GND" H 6255 3477 50  0000 C CNN
F 2 "" H 6250 3650 50  0001 C CNN
F 3 "" H 6250 3650 50  0001 C CNN
	1    6250 3650
	1    0    0    -1  
$EndComp
$Comp
L AD8318:AD8313 U1
U 1 1 5E91C827
P 2500 5400
F 0 "U1" H 3194 5371 50  0000 L CNN
F 1 "AD8318" H 3194 5280 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.5x2.5mm" H 2600 5200 50  0001 C CNN
F 3 "" H 2500 5400 50  0001 C CNN
	1    2500 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5E91E03B
P 7700 2700
F 0 "C17" H 7815 2746 50  0000 L CNN
F 1 "100nF" H 7815 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7738 2550 50  0001 C CNN
F 3 "~" H 7700 2700 50  0001 C CNN
	1    7700 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5E91FAFE
P 8150 2700
F 0 "C19" H 8265 2746 50  0000 L CNN
F 1 "100nF" H 8265 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8188 2550 50  0001 C CNN
F 3 "~" H 8150 2700 50  0001 C CNN
	1    8150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5E9208B0
P 7700 2850
F 0 "#PWR047" H 7700 2600 50  0001 C CNN
F 1 "GND" H 7705 2677 50  0000 C CNN
F 2 "" H 7700 2850 50  0001 C CNN
F 3 "" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5E920FBE
P 8150 2850
F 0 "#PWR050" H 8150 2600 50  0001 C CNN
F 1 "GND" H 8155 2677 50  0000 C CNN
F 2 "" H 8150 2850 50  0001 C CNN
F 3 "" H 8150 2850 50  0001 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR046
U 1 1 5E9215CF
P 7700 2550
F 0 "#PWR046" H 7700 2400 50  0001 C CNN
F 1 "VCC" H 7717 2723 50  0000 C CNN
F 2 "" H 7700 2550 50  0001 C CNN
F 3 "" H 7700 2550 50  0001 C CNN
	1    7700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR049
U 1 1 5E921CB8
P 8150 2550
F 0 "#PWR049" H 8150 2400 50  0001 C CNN
F 1 "VAA" H 8167 2723 50  0000 C CNN
F 2 "" H 8150 2550 50  0001 C CNN
F 3 "" H 8150 2550 50  0001 C CNN
	1    8150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E925756
P 2950 4700
F 0 "C7" H 3065 4746 50  0000 L CNN
F 1 "100nF" H 3065 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 4550 50  0001 C CNN
F 3 "~" H 2950 4700 50  0001 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5E92575C
P 2950 4850
F 0 "#PWR024" H 2950 4600 50  0001 C CNN
F 1 "GND" H 2955 4677 50  0000 C CNN
F 2 "" H 2950 4850 50  0001 C CNN
F 3 "" H 2950 4850 50  0001 C CNN
	1    2950 4850
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR023
U 1 1 5E925762
P 2950 4550
F 0 "#PWR023" H 2950 4400 50  0001 C CNN
F 1 "VAA" H 2967 4723 50  0000 C CNN
F 2 "" H 2950 4550 50  0001 C CNN
F 3 "" H 2950 4550 50  0001 C CNN
	1    2950 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E9278CB
P 3350 4700
F 0 "C10" H 3465 4746 50  0000 L CNN
F 1 "100pF" H 3465 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3388 4550 50  0001 C CNN
F 3 "~" H 3350 4700 50  0001 C CNN
	1    3350 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5E9278D1
P 3350 4850
F 0 "#PWR031" H 3350 4600 50  0001 C CNN
F 1 "GND" H 3355 4677 50  0000 C CNN
F 2 "" H 3350 4850 50  0001 C CNN
F 3 "" H 3350 4850 50  0001 C CNN
	1    3350 4850
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR030
U 1 1 5E9278D7
P 3350 4550
F 0 "#PWR030" H 3350 4400 50  0001 C CNN
F 1 "VAA" H 3367 4723 50  0000 C CNN
F 2 "" H 3350 4550 50  0001 C CNN
F 3 "" H 3350 4550 50  0001 C CNN
	1    3350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E930B59
P 3050 6250
F 0 "C8" H 3165 6296 50  0000 L CNN
F 1 "100nF" H 3165 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3088 6100 50  0001 C CNN
F 3 "~" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5E930B5F
P 3050 6400
F 0 "#PWR026" H 3050 6150 50  0001 C CNN
F 1 "GND" H 3055 6227 50  0000 C CNN
F 2 "" H 3050 6400 50  0001 C CNN
F 3 "" H 3050 6400 50  0001 C CNN
	1    3050 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR025
U 1 1 5E930B65
P 3050 6100
F 0 "#PWR025" H 3050 5950 50  0001 C CNN
F 1 "VAA" H 3067 6273 50  0000 C CNN
F 2 "" H 3050 6100 50  0001 C CNN
F 3 "" H 3050 6100 50  0001 C CNN
	1    3050 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E930B6B
P 3450 6250
F 0 "C11" H 3565 6296 50  0000 L CNN
F 1 "100pF" H 3565 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3488 6100 50  0001 C CNN
F 3 "~" H 3450 6250 50  0001 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5E930B71
P 3450 6400
F 0 "#PWR033" H 3450 6150 50  0001 C CNN
F 1 "GND" H 3455 6227 50  0000 C CNN
F 2 "" H 3450 6400 50  0001 C CNN
F 3 "" H 3450 6400 50  0001 C CNN
	1    3450 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR032
U 1 1 5E930B77
P 3450 6100
F 0 "#PWR032" H 3450 5950 50  0001 C CNN
F 1 "VAA" H 3467 6273 50  0000 C CNN
F 2 "" H 3450 6100 50  0001 C CNN
F 3 "" H 3450 6100 50  0001 C CNN
	1    3450 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E931A79
P 2300 5950
F 0 "#PWR013" H 2300 5700 50  0001 C CNN
F 1 "GND" H 2305 5777 50  0000 C CNN
F 2 "" H 2300 5950 50  0001 C CNN
F 3 "" H 2300 5950 50  0001 C CNN
	1    2300 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E932154
P 2450 5950
F 0 "#PWR015" H 2450 5700 50  0001 C CNN
F 1 "GND" H 2455 5777 50  0000 C CNN
F 2 "" H 2450 5950 50  0001 C CNN
F 3 "" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E93246F
P 2300 5000
F 0 "#PWR012" H 2300 4750 50  0001 C CNN
F 1 "GND" H 2305 4827 50  0000 C CNN
F 2 "" H 2300 5000 50  0001 C CNN
F 3 "" H 2300 5000 50  0001 C CNN
	1    2300 5000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E93694A
P 2450 5000
F 0 "#PWR014" H 2450 4750 50  0001 C CNN
F 1 "GND" H 2455 4827 50  0000 C CNN
F 2 "" H 2450 5000 50  0001 C CNN
F 3 "" H 2450 5000 50  0001 C CNN
	1    2450 5000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E936E28
P 2600 4500
F 0 "#PWR016" H 2600 4250 50  0001 C CNN
F 1 "GND" H 2605 4327 50  0000 C CNN
F 2 "" H 2600 4500 50  0001 C CNN
F 3 "" H 2600 4500 50  0001 C CNN
	1    2600 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E93740D
P 1900 5750
F 0 "#PWR011" H 1900 5500 50  0001 C CNN
F 1 "GND" V 1905 5622 50  0000 R CNN
F 2 "" H 1900 5750 50  0001 C CNN
F 3 "" H 1900 5750 50  0001 C CNN
	1    1900 5750
	0    1    1    0   
$EndComp
$Comp
L power:VAA #PWR010
U 1 1 5E93947C
P 1900 5650
F 0 "#PWR010" H 1900 5500 50  0001 C CNN
F 1 "VAA" V 1918 5777 50  0000 L CNN
F 2 "" H 1900 5650 50  0001 C CNN
F 3 "" H 1900 5650 50  0001 C CNN
	1    1900 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:VAA #PWR020
U 1 1 5E93B008
P 2750 5000
F 0 "#PWR020" H 2750 4850 50  0001 C CNN
F 1 "VAA" H 2767 5173 50  0000 C CNN
F 2 "" H 2750 5000 50  0001 C CNN
F 3 "" H 2750 5000 50  0001 C CNN
	1    2750 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5E93B9AA
P 3150 5200
F 0 "#PWR029" H 3150 4950 50  0001 C CNN
F 1 "GND" V 3155 5072 50  0000 R CNN
F 2 "" H 3150 5200 50  0001 C CNN
F 3 "" H 3150 5200 50  0001 C CNN
	1    3150 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5E93C29B
P 3700 5650
F 0 "#PWR036" H 3700 5400 50  0001 C CNN
F 1 "GND" H 3705 5477 50  0000 C CNN
F 2 "" H 3700 5650 50  0001 C CNN
F 3 "" H 3700 5650 50  0001 C CNN
	1    3700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR021
U 1 1 5E93CB49
P 2750 5950
F 0 "#PWR021" H 2750 5800 50  0001 C CNN
F 1 "VAA" H 2768 6123 50  0000 C CNN
F 2 "" H 2750 5950 50  0001 C CNN
F 3 "" H 2750 5950 50  0001 C CNN
	1    2750 5950
	-1   0    0    1   
$EndComp
$Comp
L power:VAA #PWR017
U 1 1 5E93D1F7
P 2600 5950
F 0 "#PWR017" H 2600 5800 50  0001 C CNN
F 1 "VAA" H 2618 6123 50  0000 C CNN
F 2 "" H 2600 5950 50  0001 C CNN
F 3 "" H 2600 5950 50  0001 C CNN
	1    2600 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5E93DA98
P 2600 4650
F 0 "R4" H 2670 4696 50  0000 L CNN
F 1 "500" H 2670 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 4650 50  0001 C CNN
F 3 "~" H 2600 4650 50  0001 C CNN
	1    2600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5000 2600 4800
$Comp
L Device:C C13
U 1 1 5E944E0F
P 3550 5650
F 0 "C13" V 3298 5650 50  0000 C CNN
F 1 "DNP" V 3389 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 5500 50  0001 C CNN
F 3 "~" H 3550 5650 50  0001 C CNN
	1    3550 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 5650 3400 5650
Wire Wire Line
	3150 5500 3150 5350
Wire Wire Line
	3300 5350 3150 5350
Connection ~ 3150 5350
Text GLabel 3300 5350 2    50   Input ~ 0
ADOUT
Text GLabel 7700 4550 2    50   Input ~ 0
ADOUT
Connection ~ 8100 4050
Wire Wire Line
	7700 4050 8100 4050
Wire Wire Line
	8100 4050 8250 4050
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5E978661
P 950 5350
F 0 "J3" H 878 5588 50  0000 C CNN
F 1 "Conn_Coaxial" H 878 5497 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 950 5350 50  0001 C CNN
F 3 " ~" H 950 5350 50  0001 C CNN
	1    950  5350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E9794CF
P 1250 5500
F 0 "R3" H 1180 5454 50  0000 R CNN
F 1 "52.3" H 1180 5545 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1180 5500 50  0001 C CNN
F 3 "~" H 1250 5500 50  0001 C CNN
	1    1250 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5E97A044
P 1600 5350
F 0 "C6" V 1348 5350 50  0000 C CNN
F 1 "1n" V 1439 5350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1638 5200 50  0001 C CNN
F 3 "~" H 1600 5350 50  0001 C CNN
	1    1600 5350
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5E97AA13
P 1550 5650
F 0 "C5" H 1665 5696 50  0000 L CNN
F 1 "1n" H 1665 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1588 5500 50  0001 C CNN
F 3 "~" H 1550 5650 50  0001 C CNN
	1    1550 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E97BE1C
P 1550 5800
F 0 "#PWR09" H 1550 5550 50  0001 C CNN
F 1 "GND" H 1555 5627 50  0000 C CNN
F 2 "" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	1    1550 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E97C62A
P 1250 5650
F 0 "#PWR06" H 1250 5400 50  0001 C CNN
F 1 "GND" H 1255 5477 50  0000 C CNN
F 2 "" H 1250 5650 50  0001 C CNN
F 3 "" H 1250 5650 50  0001 C CNN
	1    1250 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E97CBAD
P 950 5550
F 0 "#PWR03" H 950 5300 50  0001 C CNN
F 1 "GND" H 955 5377 50  0000 C CNN
F 2 "" H 950 5550 50  0001 C CNN
F 3 "" H 950 5550 50  0001 C CNN
	1    950  5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5500 1550 5500
Wire Wire Line
	1900 5350 1750 5350
Wire Wire Line
	1450 5350 1250 5350
Wire Wire Line
	1250 5350 1150 5350
Connection ~ 1250 5350
$Comp
L dk_RF-Detectors:AD8302ARUZ U2
U 1 1 5E986007
P 2750 2400
F 0 "U2" H 2750 3103 60  0000 C CNN
F 1 "AD8302ARUZ" H 2750 2997 60  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 2950 2600 60  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8302.pdf" H 2950 2700 60  0001 L CNN
F 4 "AD8302ARUZ-ND" H 2950 2800 60  0001 L CNN "Digi-Key_PN"
F 5 "AD8302ARUZ" H 2950 2900 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 2950 3000 60  0001 L CNN "Category"
F 7 "RF Detectors" H 2950 3100 60  0001 L CNN "Family"
F 8 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8302.pdf" H 2950 3200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/analog-devices-inc/AD8302ARUZ/AD8302ARUZ-ND/671074" H 2950 3300 60  0001 L CNN "DK_Detail_Page"
F 10 "IC RF DETECT 2.7GHZ 14TSSOP" H 2950 3400 60  0001 L CNN "Description"
F 11 "Analog Devices Inc." H 2950 3500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2950 3600 60  0001 L CNN "Status"
	1    2750 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5E9897DF
P 2850 2900
F 0 "#PWR022" H 2850 2650 50  0001 C CNN
F 1 "GND" H 2855 2727 50  0000 C CNN
F 2 "" H 2850 2900 50  0001 C CNN
F 3 "" H 2850 2900 50  0001 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E989C59
P 2750 2900
F 0 "#PWR019" H 2750 2650 50  0001 C CNN
F 1 "GND" H 2755 2727 50  0000 C CNN
F 2 "" H 2750 2900 50  0001 C CNN
F 3 "" H 2750 2900 50  0001 C CNN
	1    2750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR018
U 1 1 5E98A0E7
P 2750 1900
F 0 "#PWR018" H 2750 1750 50  0001 C CNN
F 1 "VAA" H 2767 2073 50  0000 C CNN
F 2 "" H 2750 1900 50  0001 C CNN
F 3 "" H 2750 1900 50  0001 C CNN
	1    2750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5E993EBD
P 3150 1550
F 0 "C9" H 3265 1596 50  0000 L CNN
F 1 "100nF" H 3265 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3188 1400 50  0001 C CNN
F 3 "~" H 3150 1550 50  0001 C CNN
	1    3150 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5E993EC3
P 3150 1700
F 0 "#PWR028" H 3150 1450 50  0001 C CNN
F 1 "GND" H 3155 1527 50  0000 C CNN
F 2 "" H 3150 1700 50  0001 C CNN
F 3 "" H 3150 1700 50  0001 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR027
U 1 1 5E993EC9
P 3150 1400
F 0 "#PWR027" H 3150 1250 50  0001 C CNN
F 1 "VAA" H 3167 1573 50  0000 C CNN
F 2 "" H 3150 1400 50  0001 C CNN
F 3 "" H 3150 1400 50  0001 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5E993ECF
P 3550 1550
F 0 "C12" H 3665 1596 50  0000 L CNN
F 1 "100pF" H 3665 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 1400 50  0001 C CNN
F 3 "~" H 3550 1550 50  0001 C CNN
	1    3550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5E993ED5
P 3550 1700
F 0 "#PWR035" H 3550 1450 50  0001 C CNN
F 1 "GND" H 3555 1527 50  0000 C CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR034
U 1 1 5E993EDB
P 3550 1400
F 0 "#PWR034" H 3550 1250 50  0001 C CNN
F 1 "VAA" H 3567 1573 50  0000 C CNN
F 2 "" H 3550 1400 50  0001 C CNN
F 3 "" H 3550 1400 50  0001 C CNN
	1    3550 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5E9950EC
P 3600 2100
F 0 "C14" V 3348 2100 50  0000 C CNN
F 1 "DNP" V 3439 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 1950 50  0001 C CNN
F 3 "~" H 3600 2100 50  0001 C CNN
	1    3600 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5E99601A
P 3600 2700
F 0 "C15" V 3348 2700 50  0000 C CNN
F 1 "DNP" V 3439 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 2550 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5E99671C
P 3750 2700
F 0 "#PWR038" H 3750 2450 50  0001 C CNN
F 1 "GND" H 3755 2527 50  0000 C CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5E996E78
P 3750 2100
F 0 "#PWR037" H 3750 1850 50  0001 C CNN
F 1 "GND" H 3755 1927 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2700 3250 2700
Wire Wire Line
	3450 2100 3250 2100
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5E9B03F1
P 850 1650
F 0 "J1" H 778 1888 50  0000 C CNN
F 1 "Conn_Coaxial" H 778 1797 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 850 1650 50  0001 C CNN
F 3 " ~" H 850 1650 50  0001 C CNN
	1    850  1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E9B03F7
P 1150 1800
F 0 "R1" H 1080 1754 50  0000 R CNN
F 1 "52.3" H 1080 1845 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1080 1800 50  0001 C CNN
F 3 "~" H 1150 1800 50  0001 C CNN
	1    1150 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5E9B03FD
P 1500 1650
F 0 "C3" V 1248 1650 50  0000 C CNN
F 1 "1n" V 1339 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1538 1500 50  0001 C CNN
F 3 "~" H 1500 1650 50  0001 C CNN
	1    1500 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E9B0403
P 1450 1950
F 0 "C1" H 1565 1996 50  0000 L CNN
F 1 "1n" H 1565 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1488 1800 50  0001 C CNN
F 3 "~" H 1450 1950 50  0001 C CNN
	1    1450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E9B0409
P 1450 2100
F 0 "#PWR07" H 1450 1850 50  0001 C CNN
F 1 "GND" H 1455 1927 50  0000 C CNN
F 2 "" H 1450 2100 50  0001 C CNN
F 3 "" H 1450 2100 50  0001 C CNN
	1    1450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E9B040F
P 1150 1950
F 0 "#PWR04" H 1150 1700 50  0001 C CNN
F 1 "GND" H 1155 1777 50  0000 C CNN
F 2 "" H 1150 1950 50  0001 C CNN
F 3 "" H 1150 1950 50  0001 C CNN
	1    1150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E9B0415
P 850 1850
F 0 "#PWR01" H 850 1600 50  0001 C CNN
F 1 "GND" H 855 1677 50  0000 C CNN
F 2 "" H 850 1850 50  0001 C CNN
F 3 "" H 850 1850 50  0001 C CNN
	1    850  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1800 1450 1800
Wire Wire Line
	1350 1650 1150 1650
Wire Wire Line
	1150 1650 1050 1650
Connection ~ 1150 1650
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5E9B2A1A
P 850 2550
F 0 "J2" H 778 2788 50  0000 C CNN
F 1 "Conn_Coaxial" H 778 2697 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 850 2550 50  0001 C CNN
F 3 " ~" H 850 2550 50  0001 C CNN
	1    850  2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E9B2A20
P 1150 2700
F 0 "R2" H 1080 2654 50  0000 R CNN
F 1 "52.3" H 1080 2745 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1080 2700 50  0001 C CNN
F 3 "~" H 1150 2700 50  0001 C CNN
	1    1150 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5E9B2A26
P 1500 2550
F 0 "C4" V 1248 2550 50  0000 C CNN
F 1 "1n" V 1339 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1538 2400 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
	1    1500 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E9B2A2C
P 1450 2850
F 0 "C2" H 1565 2896 50  0000 L CNN
F 1 "1n" H 1565 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1488 2700 50  0001 C CNN
F 3 "~" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E9B2A32
P 1450 3000
F 0 "#PWR08" H 1450 2750 50  0001 C CNN
F 1 "GND" H 1455 2827 50  0000 C CNN
F 2 "" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3000 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E9B2A38
P 1150 2850
F 0 "#PWR05" H 1150 2600 50  0001 C CNN
F 1 "GND" H 1155 2677 50  0000 C CNN
F 2 "" H 1150 2850 50  0001 C CNN
F 3 "" H 1150 2850 50  0001 C CNN
	1    1150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E9B2A3E
P 850 2750
F 0 "#PWR02" H 850 2500 50  0001 C CNN
F 1 "GND" H 855 2577 50  0000 C CNN
F 2 "" H 850 2750 50  0001 C CNN
F 3 "" H 850 2750 50  0001 C CNN
	1    850  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2550 1150 2550
Wire Wire Line
	1150 2550 1050 2550
Connection ~ 1150 2550
Wire Wire Line
	2250 2400 2250 2700
Wire Wire Line
	1450 2700 2250 2700
Wire Wire Line
	2250 2300 2150 2300
Wire Wire Line
	2150 2300 2150 2550
Wire Wire Line
	1650 2550 2150 2550
Wire Wire Line
	2250 2200 1800 2200
Wire Wire Line
	1800 2200 1800 1800
Wire Wire Line
	1900 1650 1900 2100
Wire Wire Line
	1900 2100 2250 2100
Wire Wire Line
	1650 1650 1900 1650
Wire Wire Line
	3250 2300 3250 2200
Wire Wire Line
	3250 2600 3250 2500
Text GLabel 3300 2300 2    50   Input ~ 0
VMAG
Wire Wire Line
	3300 2300 3250 2300
Connection ~ 3250 2300
Text GLabel 3300 2500 2    50   Input ~ 0
VPHS
Wire Wire Line
	3300 2500 3250 2500
Connection ~ 3250 2500
Text GLabel 7700 4350 2    50   Input ~ 0
VMAG
Text GLabel 7700 4450 2    50   Input ~ 0
VPHS
$EndSCHEMATC