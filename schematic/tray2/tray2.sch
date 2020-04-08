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
L MCU_Microchip_ATmega:ATmega328-AU U4
U 1 1 5DF10A12
P 7150 4500
F 0 "U4" H 7150 2911 50  0000 C CNN
F 1 "ATmega328-AU" H 7150 2820 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7150 4500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7150 4500 50  0001 C CNN
	1    7150 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5DF114D3
P 10400 3850
F 0 "J2" H 10450 4467 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 10450 4376 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Horizontal" H 10400 3850 50  0001 C CNN
F 3 "~" H 10400 3850 50  0001 C CNN
	1    10400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DF152C9
P 7150 6000
F 0 "#PWR04" H 7150 5750 50  0001 C CNN
F 1 "GND" H 7155 5827 50  0000 C CNN
F 2 "" H 7150 6000 50  0001 C CNN
F 3 "" H 7150 6000 50  0001 C CNN
	1    7150 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DF162B2
P 10700 4350
F 0 "#PWR09" H 10700 4100 50  0001 C CNN
F 1 "GND" H 10705 4177 50  0000 C CNN
F 2 "" H 10700 4350 50  0001 C CNN
F 3 "" H 10700 4350 50  0001 C CNN
	1    10700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 3450 10700 3550
Connection ~ 10700 4350
Connection ~ 10700 3550
Wire Wire Line
	10700 3550 10700 3650
Connection ~ 10700 3650
Wire Wire Line
	10700 3650 10700 3750
Connection ~ 10700 3750
Wire Wire Line
	10700 3750 10700 3850
Connection ~ 10700 3850
Wire Wire Line
	10700 3850 10700 3950
Connection ~ 10700 3950
Wire Wire Line
	10700 3950 10700 4050
Connection ~ 10700 4050
Wire Wire Line
	10700 4050 10700 4150
Connection ~ 10700 4150
Wire Wire Line
	10700 4150 10700 4250
Connection ~ 10700 4250
Wire Wire Line
	10700 4250 10700 4350
$Comp
L power:VCC #PWR08
U 1 1 5DF16BEC
P 10200 3550
F 0 "#PWR08" H 10200 3400 50  0001 C CNN
F 1 "VCC" V 10218 3677 50  0000 L CNN
F 2 "" H 10200 3550 50  0001 C CNN
F 3 "" H 10200 3550 50  0001 C CNN
	1    10200 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5DF177CA
P 7150 3000
F 0 "#PWR03" H 7150 2850 50  0001 C CNN
F 1 "VCC" H 7167 3173 50  0000 C CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5DF18A94
P 7250 3000
F 0 "#PWR05" H 7250 2850 50  0001 C CNN
F 1 "VCC" H 7267 3173 50  0000 C CNN
F 2 "" H 7250 3000 50  0001 C CNN
F 3 "" H 7250 3000 50  0001 C CNN
	1    7250 3000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4040 U3
U 1 1 5DF1F1F2
P 7150 1500
F 0 "U3" H 7150 2481 50  0000 C CNN
F 1 "4040" H 7150 2390 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7150 1500 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4020bms-24bms-40bms.pdf" H 7150 1500 50  0001 C CNN
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DF23334
P 7150 2400
F 0 "#PWR02" H 7150 2150 50  0001 C CNN
F 1 "GND" H 7155 2227 50  0000 C CNN
F 2 "" H 7150 2400 50  0001 C CNN
F 3 "" H 7150 2400 50  0001 C CNN
	1    7150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5DF23A32
P 10400 1700
F 0 "#PWR011" H 10400 1450 50  0001 C CNN
F 1 "GND" H 10405 1527 50  0000 C CNN
F 2 "" H 10400 1700 50  0001 C CNN
F 3 "" H 10400 1700 50  0001 C CNN
	1    10400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5DF24177
P 10400 900
F 0 "#PWR010" H 10400 750 50  0001 C CNN
F 1 "VCC" H 10417 1073 50  0000 C CNN
F 2 "" H 10400 900 50  0001 C CNN
F 3 "" H 10400 900 50  0001 C CNN
	1    10400 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5DF24964
P 7150 700
F 0 "#PWR01" H 7150 550 50  0001 C CNN
F 1 "VCC" H 7167 873 50  0000 C CNN
F 2 "" H 7150 700 50  0001 C CNN
F 3 "" H 7150 700 50  0001 C CNN
	1    7150 700 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5DF4EF66
P 7900 6300
F 0 "#PWR06" H 7900 6150 50  0001 C CNN
F 1 "VCC" V 7918 6427 50  0000 L CNN
F 2 "" H 7900 6300 50  0001 C CNN
F 3 "" H 7900 6300 50  0001 C CNN
	1    7900 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DF4F781
P 8800 6300
F 0 "#PWR07" H 8800 6050 50  0001 C CNN
F 1 "GND" V 8805 6172 50  0000 R CNN
F 2 "" H 8800 6300 50  0001 C CNN
F 3 "" H 8800 6300 50  0001 C CNN
	1    8800 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 3800 7750 3800
Wire Wire Line
	8200 3700 7750 3700
Wire Wire Line
	7750 3900 10050 3900
Wire Wire Line
	7750 5400 7950 5400
$Comp
L power:GND #PWR0101
U 1 1 5DF7F9A0
P 9700 1800
F 0 "#PWR0101" H 9700 1550 50  0001 C CNN
F 1 "GND" H 9705 1627 50  0000 C CNN
F 2 "" H 9700 1800 50  0001 C CNN
F 3 "" H 9700 1800 50  0001 C CNN
	1    9700 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5DF801A7
P 9700 800
F 0 "#PWR0102" H 9700 650 50  0001 C CNN
F 1 "VCC" H 9717 973 50  0000 C CNN
F 2 "" H 9700 800 50  0001 C CNN
F 3 "" H 9700 800 50  0001 C CNN
	1    9700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1700 7650 1700
Wire Wire Line
	7100 1000 6650 1000
Wire Wire Line
	6250 1000 6250 2700
Wire Wire Line
	7950 1700 7950 5400
Connection ~ 6650 1000
Wire Wire Line
	6650 1000 6250 1000
$Comp
L BF998:BF998 Q1
U 1 1 5DFC2C91
P 1700 1650
F 0 "Q1" H 1904 1696 50  0000 L CNN
F 1 "BF998" H 1904 1605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2450 1550 50  0001 C CNN
F 3 "" H 2450 1550 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5DFC5873
P 850 1650
F 0 "J3" H 778 1888 50  0000 C CNN
F 1 "Conn_Coaxial" H 778 1797 50  0000 C CNN
F 2 "Connector_Coaxial:BNC_Amphenol_B6252HB-NPP3G-50_Horizontal" H 850 1650 50  0001 C CNN
F 3 " ~" H 850 1650 50  0001 C CNN
	1    850  1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5E0423E7
P 1800 900
F 0 "L1" H 1757 854 50  0000 R CNN
F 1 "2u2" H 1757 945 50  0000 R CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 1800 900 50  0001 C CNN
F 3 "~" H 1800 900 50  0001 C CNN
	1    1800 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:L L2
U 1 1 5E043516
P 1800 2500
F 0 "L2" H 1852 2546 50  0000 L CNN
F 1 "2u2" H 1852 2455 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 1800 2500 50  0001 C CNN
F 3 "~" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E044333
P 1800 2200
F 0 "R2" H 1870 2246 50  0000 L CNN
F 1 "220" H 1870 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 2200 50  0001 C CNN
F 3 "~" H 1800 2200 50  0001 C CNN
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E044E5E
P 2100 1250
F 0 "C1" H 2215 1296 50  0000 L CNN
F 1 "100n" H 2215 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2138 1100 50  0001 C CNN
F 3 "~" H 2100 1250 50  0001 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 5E046276
P 1800 750
F 0 "#PWR015" H 1800 600 50  0001 C CNN
F 1 "VCC" H 1817 923 50  0000 C CNN
F 2 "" H 1800 750 50  0001 C CNN
F 3 "" H 1800 750 50  0001 C CNN
	1    1800 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E047086
P 1800 2650
F 0 "#PWR016" H 1800 2400 50  0001 C CNN
F 1 "GND" H 1805 2477 50  0000 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1950 1800 1950
Wire Wire Line
	1800 1950 1800 1850
Wire Wire Line
	1800 2050 1800 1950
Connection ~ 1800 1950
$Comp
L power:GND #PWR017
U 1 1 5E063243
P 2100 1400
F 0 "#PWR017" H 2100 1150 50  0001 C CNN
F 1 "GND" H 2105 1227 50  0000 C CNN
F 2 "" H 2100 1400 50  0001 C CNN
F 3 "" H 2100 1400 50  0001 C CNN
	1    2100 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E0650F2
P 1200 1650
F 0 "R1" V 993 1650 50  0000 C CNN
F 1 "470" V 1084 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1130 1650 50  0001 C CNN
F 3 "~" H 1200 1650 50  0001 C CNN
	1    1200 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E065B6D
P 850 1850
F 0 "#PWR014" H 850 1600 50  0001 C CNN
F 1 "GND" H 855 1677 50  0000 C CNN
F 2 "" H 850 1850 50  0001 C CNN
F 3 "" H 850 1850 50  0001 C CNN
	1    850  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1650 1500 1650
Wire Wire Line
	1500 1650 1500 1550
Wire Wire Line
	1500 1750 1500 1650
Connection ~ 1500 1650
Wire Wire Line
	1800 1450 1800 1100
Wire Wire Line
	2100 1100 1800 1100
Connection ~ 1800 1100
Wire Wire Line
	1800 1100 1800 1050
Wire Wire Line
	9250 4450 9250 4550
Wire Wire Line
	9250 4650 8950 4650
Wire Wire Line
	8900 4350 8900 5000
Wire Wire Line
	9250 4350 8900 4350
Connection ~ 9250 4550
$Comp
L Interface_UART:ST485EBDR U5
U 1 1 5DF54E5F
P 9650 4450
F 0 "U5" H 9650 5031 50  0000 C CNN
F 1 "ST485EBDR" H 9650 4940 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9650 3550 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/st485eb.pdf" H 9650 4500 50  0001 C CNN
	1    9650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4800 7750 4800
Wire Wire Line
	8500 5800 8500 4800
Wire Wire Line
	10200 4350 10050 4350
Wire Wire Line
	10050 4650 10150 4650
Wire Wire Line
	10150 4650 10150 4250
Wire Wire Line
	10150 4250 10200 4250
Wire Wire Line
	7750 5000 8900 5000
$Comp
L Diode:LL4148 D1
U 1 1 5E0F9248
P 1700 3900
F 0 "D1" V 1654 3979 50  0000 L CNN
F 1 "LL4148" V 1745 3979 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 1700 3725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 1700 3900 50  0001 C CNN
	1    1700 3900
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5E0FA505
P 900 3750
F 0 "J4" H 828 3988 50  0000 C CNN
F 1 "Conn_Coaxial" H 828 3897 50  0000 C CNN
F 2 "Connector_Coaxial:BNC_Amphenol_B6252HB-NPP3G-50_Horizontal" H 900 3750 50  0001 C CNN
F 3 " ~" H 900 3750 50  0001 C CNN
	1    900  3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5E0FB9B8
P 900 3950
F 0 "#PWR018" H 900 3700 50  0001 C CNN
F 1 "GND" H 905 3777 50  0000 C CNN
F 2 "" H 900 3950 50  0001 C CNN
F 3 "" H 900 3950 50  0001 C CNN
	1    900  3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E0FFD3D
P 1700 4050
F 0 "#PWR019" H 1700 3800 50  0001 C CNN
F 1 "GND" H 1705 3877 50  0000 C CNN
F 2 "" H 1700 4050 50  0001 C CNN
F 3 "" H 1700 4050 50  0001 C CNN
	1    1700 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E1006C0
P 1250 3750
F 0 "C2" V 998 3750 50  0000 C CNN
F 1 "100n" V 1089 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1288 3600 50  0001 C CNN
F 3 "~" H 1250 3750 50  0001 C CNN
	1    1250 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E1014D7
P 1550 3750
F 0 "R3" V 1343 3750 50  0000 C CNN
F 1 "33" V 1434 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1480 3750 50  0001 C CNN
F 3 "~" H 1550 3750 50  0001 C CNN
	1    1550 3750
	0    1    1    0   
$EndComp
$Comp
L BF998:BFP196 Q2
U 1 1 5E11A09F
P 1900 3750
F 0 "Q2" H 2138 3746 50  0000 L CNN
F 1 "BFP196" H 2138 3655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2100 3675 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N3055-D.PDF" H 1900 3750 50  0001 L CNN
	1    1900 3750
	1    0    0    -1  
$EndComp
Connection ~ 1700 3750
$Comp
L power:GND #PWR021
U 1 1 5E11B21F
P 2050 4050
F 0 "#PWR021" H 2050 3800 50  0001 C CNN
F 1 "GND" H 2055 3877 50  0000 C CNN
F 2 "" H 2050 4050 50  0001 C CNN
F 3 "" H 2050 4050 50  0001 C CNN
	1    2050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4050 2000 4050
Wire Wire Line
	2000 4050 2000 3950
Connection ~ 2050 4050
$Comp
L Device:R R4
U 1 1 5E11FA4A
P 1700 3600
F 0 "R4" H 1770 3646 50  0000 L CNN
F 1 "4k7" H 1770 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1630 3600 50  0001 C CNN
F 3 "~" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E1203F4
P 2000 3400
F 0 "R5" H 2070 3446 50  0000 L CNN
F 1 "82" H 2070 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 3400 50  0001 C CNN
F 3 "~" H 2000 3400 50  0001 C CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847 Q3
U 1 1 5E130F79
P 3250 3650
F 0 "Q3" H 3441 3696 50  0000 L CNN
F 1 "BC847" H 3441 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3450 3575 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 3250 3650 50  0001 L CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54C D2
U 1 1 5E132A77
P 3050 3350
F 0 "D2" V 3096 3438 50  0000 L CNN
F 1 "BAT54C" V 3005 3438 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3125 3475 50  0001 L CNN
F 3 "http://www.diodes.com/_files/datasheets/ds11005.pdf" H 2970 3350 50  0001 C CNN
	1    3050 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5E13D663
P 2450 3650
F 0 "C4" V 2198 3650 50  0000 C CNN
F 1 "100n" V 2289 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 3500 50  0001 C CNN
F 3 "~" H 2450 3650 50  0001 C CNN
	1    2450 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3650 2900 3650
Connection ~ 3050 3650
Wire Wire Line
	2300 3650 2300 3550
Wire Wire Line
	2300 3550 2000 3550
Connection ~ 2000 3550
$Comp
L Device:L L4
U 1 1 5E143785
P 2000 3100
F 0 "L4" H 2052 3146 50  0000 L CNN
F 1 "100n" H 2052 3055 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 2000 3100 50  0001 C CNN
F 3 "~" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:L L3
U 1 1 5E1446B7
P 2000 2800
F 0 "L3" H 2052 2846 50  0000 L CNN
F 1 "2u2" H 2052 2755 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 2000 2800 50  0001 C CNN
F 3 "~" H 2000 2800 50  0001 C CNN
	1    2000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E147F44
P 2350 3150
F 0 "C3" H 2465 3196 50  0000 L CNN
F 1 "100n" H 2465 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2388 3000 50  0001 C CNN
F 3 "~" H 2350 3150 50  0001 C CNN
	1    2350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3000 2350 2950
Wire Wire Line
	2350 2950 2000 2950
Connection ~ 2000 2950
$Comp
L power:GND #PWR022
U 1 1 5E15CB8A
P 2350 3300
F 0 "#PWR022" H 2350 3050 50  0001 C CNN
F 1 "GND" H 2355 3127 50  0000 C CNN
F 2 "" H 2350 3300 50  0001 C CNN
F 3 "" H 2350 3300 50  0001 C CNN
	1    2350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5E15D80B
P 2000 2650
F 0 "#PWR020" H 2000 2500 50  0001 C CNN
F 1 "VCC" H 2017 2823 50  0000 C CNN
F 2 "" H 2000 2650 50  0001 C CNN
F 3 "" H 2000 2650 50  0001 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E15E030
P 2750 3650
F 0 "R7" V 2543 3650 50  0000 C CNN
F 1 "68" V 2634 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2680 3650 50  0001 C CNN
F 3 "~" H 2750 3650 50  0001 C CNN
	1    2750 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E15EDF7
P 2750 3350
F 0 "R6" V 2543 3350 50  0000 C CNN
F 1 "2k2" V 2634 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2680 3350 50  0001 C CNN
F 3 "~" H 2750 3350 50  0001 C CNN
	1    2750 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3650 2600 3350
Connection ~ 2600 3650
Wire Wire Line
	2900 3350 3250 3350
Wire Wire Line
	3250 3350 3350 3350
Wire Wire Line
	3350 3350 3350 3450
Connection ~ 3250 3350
$Comp
L Device:R R8
U 1 1 5E17D014
P 3250 3200
F 0 "R8" H 3320 3246 50  0000 L CNN
F 1 "330" H 3320 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 3200 50  0001 C CNN
F 3 "~" H 3250 3200 50  0001 C CNN
	1    3250 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5E17E3F8
P 3250 3050
F 0 "#PWR023" H 3250 2900 50  0001 C CNN
F 1 "VCC" H 3267 3223 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5E17F117
P 3350 3850
F 0 "#PWR024" H 3350 3600 50  0001 C CNN
F 1 "GND" H 3355 3677 50  0000 C CNN
F 2 "" H 3350 3850 50  0001 C CNN
F 3 "" H 3350 3850 50  0001 C CNN
	1    3350 3850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847 Q4
U 1 1 5E191631
P 4700 5400
F 0 "Q4" H 4891 5446 50  0000 L CNN
F 1 "BC847" H 4891 5355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 5325 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4700 5400 50  0001 L CNN
	1    4700 5400
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54C D3
U 1 1 5E191637
P 4500 5100
F 0 "D3" V 4546 5188 50  0000 L CNN
F 1 "BAT54C" V 4455 5188 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4575 5225 50  0001 L CNN
F 3 "http://www.diodes.com/_files/datasheets/ds11005.pdf" H 4420 5100 50  0001 C CNN
	1    4500 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5E19163D
P 3900 5400
F 0 "C5" V 3648 5400 50  0000 C CNN
F 1 "100n" V 3739 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 5250 50  0001 C CNN
F 3 "~" H 3900 5400 50  0001 C CNN
	1    3900 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 5400 4350 5400
Connection ~ 4500 5400
$Comp
L Device:R R10
U 1 1 5E191645
P 4200 5400
F 0 "R10" V 3993 5400 50  0000 C CNN
F 1 "68" V 4084 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 5400 50  0001 C CNN
F 3 "~" H 4200 5400 50  0001 C CNN
	1    4200 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E19164B
P 4200 5100
F 0 "R9" V 3993 5100 50  0000 C CNN
F 1 "2k2" V 4084 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 5100 50  0001 C CNN
F 3 "~" H 4200 5100 50  0001 C CNN
	1    4200 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 5400 4050 5100
Connection ~ 4050 5400
Wire Wire Line
	4350 5100 4700 5100
Wire Wire Line
	4700 5100 4800 5100
Wire Wire Line
	4800 5100 4800 5200
Connection ~ 4700 5100
$Comp
L Device:R R11
U 1 1 5E191657
P 4700 4950
F 0 "R11" H 4770 4996 50  0000 L CNN
F 1 "330" H 4770 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4630 4950 50  0001 C CNN
F 3 "~" H 4700 4950 50  0001 C CNN
	1    4700 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5E19165D
P 4700 4800
F 0 "#PWR025" H 4700 4650 50  0001 C CNN
F 1 "VCC" H 4717 4973 50  0000 C CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "" H 4700 4800 50  0001 C CNN
	1    4700 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5E191663
P 4800 5600
F 0 "#PWR026" H 4800 5350 50  0001 C CNN
F 1 "GND" H 4805 5427 50  0000 C CNN
F 2 "" H 4800 5600 50  0001 C CNN
F 3 "" H 4800 5600 50  0001 C CNN
	1    4800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5200 4800 5200
Connection ~ 4800 5200
Wire Wire Line
	5250 5200 5250 4600
Wire Wire Line
	5250 4600 3700 4600
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5E1F08E4
P 1000 5400
F 0 "J5" H 928 5638 50  0000 C CNN
F 1 "Conn_Coaxial" H 928 5547 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 1000 5400 50  0001 C CNN
F 3 " ~" H 1000 5400 50  0001 C CNN
	1    1000 5400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E1FD120
P 1000 5600
F 0 "#PWR027" H 1000 5350 50  0001 C CNN
F 1 "GND" H 1005 5427 50  0000 C CNN
F 2 "" H 1000 5600 50  0001 C CNN
F 3 "" H 1000 5600 50  0001 C CNN
	1    1000 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E20733B
P 1350 5400
F 0 "C6" V 1098 5400 50  0000 C CNN
F 1 "470p" V 1189 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1388 5250 50  0001 C CNN
F 3 "~" H 1350 5400 50  0001 C CNN
	1    1350 5400
	0    1    1    0   
$EndComp
$Comp
L BF998:ERA-3 U8
U 1 1 5E2081F6
P 1800 5400
F 0 "U8" H 1812 5767 50  0000 C CNN
F 1 "ERA-3" H 1812 5676 50  0000 C CNN
F 2 "tray2:WW107" H 1750 4750 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/BGA2874.pdf" H 1800 5400 50  0001 C CNN
	1    1800 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5E208F87
P 1700 5700
F 0 "#PWR028" H 1700 5450 50  0001 C CNN
F 1 "GND" H 1705 5527 50  0000 C CNN
F 2 "" H 1700 5700 50  0001 C CNN
F 3 "" H 1700 5700 50  0001 C CNN
	1    1700 5700
	1    0    0    -1  
$EndComp
$Comp
L BF998:MC12032 U9
U 1 1 5E21101C
P 3450 6050
F 0 "U9" H 3794 6621 50  0000 L CNN
F 1 "MC12032" H 3794 6530 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3450 6050 50  0001 C CNN
F 3 "" H 3450 6050 50  0001 C CNN
	1    3450 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5E212DA5
P 3500 5850
F 0 "#PWR037" H 3500 5600 50  0001 C CNN
F 1 "GND" H 3505 5677 50  0000 C CNN
F 2 "" H 3500 5850 50  0001 C CNN
F 3 "" H 3500 5850 50  0001 C CNN
	1    3500 5850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR036
U 1 1 5E21387A
P 3450 5200
F 0 "#PWR036" H 3450 5050 50  0001 C CNN
F 1 "VCC" H 3467 5373 50  0000 C CNN
F 2 "" H 3450 5200 50  0001 C CNN
F 3 "" H 3450 5200 50  0001 C CNN
	1    3450 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR034
U 1 1 5E214394
P 3200 5600
F 0 "#PWR034" H 3200 5450 50  0001 C CNN
F 1 "VCC" V 3218 5727 50  0000 L CNN
F 2 "" H 3200 5600 50  0001 C CNN
F 3 "" H 3200 5600 50  0001 C CNN
	1    3200 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR035
U 1 1 5E215055
P 3200 5700
F 0 "#PWR035" H 3200 5550 50  0001 C CNN
F 1 "VCC" V 3218 5827 50  0000 L CNN
F 2 "" H 3200 5700 50  0001 C CNN
F 3 "" H 3200 5700 50  0001 C CNN
	1    3200 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 5E222FBE
P 3050 5400
F 0 "C10" V 2798 5400 50  0000 C CNN
F 1 "1n" V 2889 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3088 5250 50  0001 C CNN
F 3 "~" H 3050 5400 50  0001 C CNN
	1    3050 5400
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5E224205
P 2700 5650
F 0 "C9" H 2815 5696 50  0000 L CNN
F 1 "1n" H 2815 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 5500 50  0001 C CNN
F 3 "~" H 2700 5650 50  0001 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5E225D12
P 2700 5800
F 0 "#PWR032" H 2700 5550 50  0001 C CNN
F 1 "GND" H 2705 5627 50  0000 C CNN
F 2 "" H 2700 5800 50  0001 C CNN
F 3 "" H 2700 5800 50  0001 C CNN
	1    2700 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5500 2700 5500
$Comp
L Device:R R14
U 1 1 5E2294BD
P 2750 5400
F 0 "R14" V 2543 5400 50  0000 C CNN
F 1 "39" V 2634 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2680 5400 50  0001 C CNN
F 3 "~" H 2750 5400 50  0001 C CNN
	1    2750 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5E22A117
P 2900 5250
F 0 "R15" H 2970 5296 50  0000 L CNN
F 1 "150" H 2970 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 5250 50  0001 C CNN
F 3 "~" H 2900 5250 50  0001 C CNN
	1    2900 5250
	1    0    0    -1  
$EndComp
Connection ~ 2900 5400
$Comp
L Device:R R13
U 1 1 5E22B0BA
P 2600 5250
F 0 "R13" H 2670 5296 50  0000 L CNN
F 1 "150" H 2670 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 5250 50  0001 C CNN
F 3 "~" H 2600 5250 50  0001 C CNN
	1    2600 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E22BC87
P 2250 5400
F 0 "C8" V 1998 5400 50  0000 C CNN
F 1 "470p" V 2089 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 5250 50  0001 C CNN
F 3 "~" H 2250 5400 50  0001 C CNN
	1    2250 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 5400 2400 5400
Connection ~ 2600 5400
$Comp
L power:GND #PWR033
U 1 1 5E2319DD
P 2900 5100
F 0 "#PWR033" H 2900 4850 50  0001 C CNN
F 1 "GND" H 2905 4927 50  0000 C CNN
F 2 "" H 2900 5100 50  0001 C CNN
F 3 "" H 2900 5100 50  0001 C CNN
	1    2900 5100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5E2322BC
P 2600 5100
F 0 "#PWR031" H 2600 4850 50  0001 C CNN
F 1 "GND" H 2605 4927 50  0000 C CNN
F 2 "" H 2600 5100 50  0001 C CNN
F 3 "" H 2600 5100 50  0001 C CNN
	1    2600 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:L L6
U 1 1 5E232C52
P 2100 5250
F 0 "L6" H 2152 5296 50  0000 L CNN
F 1 "2u2" H 2152 5205 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 2100 5250 50  0001 C CNN
F 3 "~" H 2100 5250 50  0001 C CNN
	1    2100 5250
	1    0    0    -1  
$EndComp
Connection ~ 2100 5400
$Comp
L Device:R R12
U 1 1 5E2369B0
P 2100 4950
F 0 "R12" H 2170 4996 50  0000 L CNN
F 1 "39" H 2170 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 4950 50  0001 C CNN
F 3 "~" H 2100 4950 50  0001 C CNN
	1    2100 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E2371FF
P 1950 4800
F 0 "C7" V 1698 4800 50  0000 C CNN
F 1 "100n" V 1789 4800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 4650 50  0001 C CNN
F 3 "~" H 1950 4800 50  0001 C CNN
	1    1950 4800
	0    1    1    0   
$EndComp
$Comp
L Device:L L5
U 1 1 5E237A4A
P 2100 4650
F 0 "L5" H 2152 4696 50  0000 L CNN
F 1 "2u2" H 2152 4605 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 2100 4650 50  0001 C CNN
F 3 "~" H 2100 4650 50  0001 C CNN
	1    2100 4650
	1    0    0    -1  
$EndComp
Connection ~ 2100 4800
$Comp
L power:GND #PWR029
U 1 1 5E23844D
P 1800 4800
F 0 "#PWR029" H 1800 4550 50  0001 C CNN
F 1 "GND" H 1805 4627 50  0000 C CNN
F 2 "" H 1800 4800 50  0001 C CNN
F 3 "" H 1800 4800 50  0001 C CNN
	1    1800 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR030
U 1 1 5E238CB8
P 2100 4500
F 0 "#PWR030" H 2100 4350 50  0001 C CNN
F 1 "VCC" H 2117 4673 50  0000 C CNN
F 2 "" H 2100 4500 50  0001 C CNN
F 3 "" H 2100 4500 50  0001 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3550 1850 3550
Wire Wire Line
	1850 3550 1850 3450
Wire Wire Line
	1850 3450 1700 3450
$Comp
L power:VCC #PWR0103
U 1 1 5E270F80
P 5950 3500
F 0 "#PWR0103" H 5950 3350 50  0001 C CNN
F 1 "VCC" H 5968 3673 50  0000 C CNN
F 2 "" H 5950 3500 50  0001 C CNN
F 3 "" H 5950 3500 50  0001 C CNN
	1    5950 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E27447B
P 6650 1300
F 0 "#PWR0104" H 6650 1050 50  0001 C CNN
F 1 "GND" H 6655 1127 50  0000 C CNN
F 2 "" H 6650 1300 50  0001 C CNN
F 3 "" H 6650 1300 50  0001 C CNN
	1    6650 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5E27F67D
P 10800 2450
F 0 "C16" H 10915 2496 50  0000 L CNN
F 1 "10u" H 10915 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10838 2300 50  0001 C CNN
F 3 "~" H 10800 2450 50  0001 C CNN
	1    10800 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5E281790
P 10800 2600
F 0 "#PWR049" H 10800 2350 50  0001 C CNN
F 1 "GND" H 10805 2427 50  0000 C CNN
F 2 "" H 10800 2600 50  0001 C CNN
F 3 "" H 10800 2600 50  0001 C CNN
	1    10800 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR048
U 1 1 5E2823D3
P 10800 2300
F 0 "#PWR048" H 10800 2150 50  0001 C CNN
F 1 "VCC" H 10817 2473 50  0000 C CNN
F 2 "" H 10800 2300 50  0001 C CNN
F 3 "" H 10800 2300 50  0001 C CNN
	1    10800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5E29A565
P 9750 2450
F 0 "C13" H 9865 2496 50  0000 L CNN
F 1 "100n" H 9865 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9788 2300 50  0001 C CNN
F 3 "~" H 9750 2450 50  0001 C CNN
	1    9750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5E29A56B
P 9750 2600
F 0 "#PWR043" H 9750 2350 50  0001 C CNN
F 1 "GND" H 9755 2427 50  0000 C CNN
F 2 "" H 9750 2600 50  0001 C CNN
F 3 "" H 9750 2600 50  0001 C CNN
	1    9750 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR042
U 1 1 5E29A571
P 9750 2300
F 0 "#PWR042" H 9750 2150 50  0001 C CNN
F 1 "VCC" H 9767 2473 50  0000 C CNN
F 2 "" H 9750 2300 50  0001 C CNN
F 3 "" H 9750 2300 50  0001 C CNN
	1    9750 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5E29D89C
P 9450 2450
F 0 "C12" H 9565 2496 50  0000 L CNN
F 1 "100n" H 9565 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9488 2300 50  0001 C CNN
F 3 "~" H 9450 2450 50  0001 C CNN
	1    9450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5E29D8A2
P 9450 2600
F 0 "#PWR041" H 9450 2350 50  0001 C CNN
F 1 "GND" H 9455 2427 50  0000 C CNN
F 2 "" H 9450 2600 50  0001 C CNN
F 3 "" H 9450 2600 50  0001 C CNN
	1    9450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR040
U 1 1 5E29D8A8
P 9450 2300
F 0 "#PWR040" H 9450 2150 50  0001 C CNN
F 1 "VCC" H 9467 2473 50  0000 C CNN
F 2 "" H 9450 2300 50  0001 C CNN
F 3 "" H 9450 2300 50  0001 C CNN
	1    9450 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E2A121A
P 9150 2450
F 0 "C11" H 9265 2496 50  0000 L CNN
F 1 "100n" H 9265 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9188 2300 50  0001 C CNN
F 3 "~" H 9150 2450 50  0001 C CNN
	1    9150 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5E2A1220
P 9150 2600
F 0 "#PWR039" H 9150 2350 50  0001 C CNN
F 1 "GND" H 9155 2427 50  0000 C CNN
F 2 "" H 9150 2600 50  0001 C CNN
F 3 "" H 9150 2600 50  0001 C CNN
	1    9150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR038
U 1 1 5E2A1226
P 9150 2300
F 0 "#PWR038" H 9150 2150 50  0001 C CNN
F 1 "VCC" H 9167 2473 50  0000 C CNN
F 2 "" H 9150 2300 50  0001 C CNN
F 3 "" H 9150 2300 50  0001 C CNN
	1    9150 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS253 U1
U 1 1 5E3B0E2C
P 4700 3250
F 0 "U1" H 4700 4431 50  0000 C CNN
F 1 "74AC253" H 4700 4340 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4700 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS253" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS112 U2
U 1 1 5E3B2258
P 5950 3200
F 0 "U2" H 5950 3681 50  0000 C CNN
F 1 "74ACT112" H 5950 3590 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5950 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS112" H 5950 3200 50  0001 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS112 U2
U 3 1 5E3B3F21
P 10400 1300
F 0 "U2" H 10630 1346 50  0000 L CNN
F 1 "74ACT112" H 10630 1255 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10400 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS112" H 10400 1300 50  0001 C CNN
	3    10400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3200 5200 3200
Wire Wire Line
	5200 3200 5200 2550
$Comp
L 74xx:74AHC04 U6
U 1 1 5E3CC396
P 2450 1950
F 0 "U6" H 2450 2267 50  0000 C CNN
F 1 "74AC04" H 2450 2176 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2450 1950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT04.pdf" H 2450 1950 50  0001 C CNN
	1    2450 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74AHC04 U6
U 2 1 5E3CEEA9
P 2750 1650
F 0 "U6" V 2796 1470 50  0000 R CNN
F 1 "74AC04" V 2705 1470 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2750 1650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT04.pdf" H 2750 1650 50  0001 C CNN
	2    2750 1650
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74AHC04 U6
U 7 1 5E3D0ABF
P 9700 1300
F 0 "U6" H 9930 1346 50  0000 L CNN
F 1 "74AC04" H 9930 1255 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9700 1300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT04.pdf" H 9700 1300 50  0001 C CNN
	7    9700 1300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74AHC04 U6
U 3 1 5E3D9938
P 3050 1950
F 0 "U6" H 3050 2267 50  0000 C CNN
F 1 "74AC04" H 3050 2176 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3050 1950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT04.pdf" H 3050 1950 50  0001 C CNN
	3    3050 1950
	1    0    0    -1  
$EndComp
Connection ~ 2750 1950
$Comp
L Device:R R16
U 1 1 5E3E1855
P 2600 1350
F 0 "R16" V 2393 1350 50  0000 C CNN
F 1 "2k2" V 2484 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 1350 50  0001 C CNN
F 3 "~" H 2600 1350 50  0001 C CNN
	1    2600 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1350 2450 1650
Wire Wire Line
	2450 1650 2150 1650
Wire Wire Line
	2150 1650 2150 1950
Connection ~ 2150 1950
Wire Wire Line
	3700 2550 4200 2550
Wire Wire Line
	3700 2550 3700 4600
Wire Wire Line
	4200 2650 3350 2650
Wire Wire Line
	3350 2650 3350 3350
Connection ~ 3350 3350
Wire Wire Line
	3350 1950 3850 1950
Wire Wire Line
	3850 1950 3850 2750
Wire Wire Line
	3850 2750 4200 2750
$Comp
L power:GND #PWR0105
U 1 1 5E442758
P 4700 4350
F 0 "#PWR0105" H 4700 4100 50  0001 C CNN
F 1 "GND" H 4705 4177 50  0000 C CNN
F 2 "" H 4700 4350 50  0001 C CNN
F 3 "" H 4700 4350 50  0001 C CNN
	1    4700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5E443531
P 4700 2250
F 0 "#PWR0106" H 4700 2100 50  0001 C CNN
F 1 "VCC" H 4717 2423 50  0000 C CNN
F 2 "" H 4700 2250 50  0001 C CNN
F 3 "" H 4700 2250 50  0001 C CNN
	1    4700 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5E44BCD1
P 5950 2900
F 0 "#PWR0107" H 5950 2750 50  0001 C CNN
F 1 "VCC" H 5967 3073 50  0000 C CNN
F 2 "" H 5950 2900 50  0001 C CNN
F 3 "" H 5950 2900 50  0001 C CNN
	1    5950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5100 8950 5100
Wire Wire Line
	8950 4650 8950 5100
Wire Wire Line
	8750 4550 8750 4700
Wire Wire Line
	8750 4700 7750 4700
Wire Wire Line
	8750 4550 9250 4550
Wire Wire Line
	6250 2700 8050 2700
Wire Wire Line
	8050 2700 8050 5300
Wire Wire Line
	8050 5300 7750 5300
Connection ~ 6250 2700
Wire Wire Line
	6250 2700 6250 3100
Wire Wire Line
	7750 5200 7900 5200
Wire Wire Line
	7900 5200 7900 1000
Wire Wire Line
	7900 1000 7650 1000
Wire Wire Line
	7650 1100 7850 1100
Wire Wire Line
	7850 1100 7850 5500
Wire Wire Line
	7850 5500 7750 5500
Wire Wire Line
	7650 1200 8000 1200
Wire Wire Line
	8000 1200 8000 5600
Wire Wire Line
	8000 5600 7750 5600
Wire Wire Line
	7650 1300 7800 1300
Wire Wire Line
	7800 5700 7750 5700
Wire Wire Line
	7650 1600 8100 1600
Wire Wire Line
	8100 1600 8100 3300
Wire Wire Line
	8100 3300 7750 3300
Wire Wire Line
	7650 1400 8150 1400
Wire Wire Line
	7650 1500 8200 1500
Wire Wire Line
	4200 4050 4200 4450
Wire Wire Line
	4200 4450 6550 4450
Wire Wire Line
	6550 4450 6550 6150
Wire Wire Line
	4200 3950 4150 3950
Wire Wire Line
	4150 3950 4150 4500
Wire Wire Line
	4150 4500 6500 4500
Wire Wire Line
	6500 4500 6500 6200
Wire Wire Line
	6500 6200 7900 6200
$Comp
L Connector:AVR-ISP-10 J1
U 1 1 5DF4DD4E
P 8400 6200
F 0 "J1" V 8025 6250 50  0000 C CNN
F 1 "AVR-ISP-10" V 7934 6250 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" V 8150 6250 50  0001 C CNN
F 3 " ~" H 7125 5650 50  0001 C CNN
	1    8400 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 6200 7900 5750
Wire Wire Line
	6550 6150 7850 6150
Wire Wire Line
	7850 6150 7850 5700
Wire Wire Line
	8300 3600 8300 5800
Wire Wire Line
	8400 3800 8400 5700
Wire Wire Line
	8200 3700 8200 5750
Wire Wire Line
	7900 5750 8200 5750
Connection ~ 8200 5750
Wire Wire Line
	8200 5750 8200 5800
Wire Wire Line
	7850 5700 8400 5700
Connection ~ 8400 5700
Wire Wire Line
	8400 5700 8400 5800
Wire Wire Line
	7800 1300 7800 5700
Wire Wire Line
	8150 3500 7750 3500
Wire Wire Line
	8150 1400 8150 3500
$Comp
L Device:R R17
U 1 1 5E52B8F7
P 8200 3000
F 0 "R17" H 8270 3046 50  0000 L CNN
F 1 "1k" H 8270 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8130 3000 50  0001 C CNN
F 3 "~" H 8200 3000 50  0001 C CNN
	1    8200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2850 8200 1500
Wire Wire Line
	7750 3600 8200 3600
Wire Wire Line
	8200 3150 8200 3600
Connection ~ 8200 3600
Wire Wire Line
	8200 3600 8300 3600
Wire Wire Line
	7750 3400 8450 3400
Wire Wire Line
	8450 3400 8450 2600
Wire Wire Line
	8450 2600 5600 2600
Wire Wire Line
	5600 2600 5600 3100
Wire Wire Line
	5600 3300 5650 3300
Wire Wire Line
	5650 3100 5600 3100
Connection ~ 5600 3100
Wire Wire Line
	5600 3100 5600 3300
$Comp
L power:GND #PWR0108
U 1 1 5E5773BC
P 9650 4950
F 0 "#PWR0108" H 9650 4700 50  0001 C CNN
F 1 "GND" H 9655 4777 50  0000 C CNN
F 2 "" H 9650 4950 50  0001 C CNN
F 3 "" H 9650 4950 50  0001 C CNN
	1    9650 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 5E5785C9
P 9650 4050
F 0 "#PWR0109" H 9650 3900 50  0001 C CNN
F 1 "VCC" H 9667 4223 50  0000 C CNN
F 2 "" H 9650 4050 50  0001 C CNN
F 3 "" H 9650 4050 50  0001 C CNN
	1    9650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4150 10050 4150
Wire Wire Line
	10050 4150 10050 3900
$Comp
L power:GND #PWR?
U 1 1 5E8E86F2
P 4200 3050
F 0 "#PWR?" H 4200 2800 50  0001 C CNN
F 1 "GND" H 4205 2877 50  0000 C CNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
