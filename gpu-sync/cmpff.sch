EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L 74xx:74LS688 U?
U 1 1 5CC72C3E
P 6050 2650
AR Path="/5CC72C3E" Ref="U?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C3E" Ref="U7"  Part="1" 
AR Path="/5CC85C26/5CC72C3E" Ref="U9"  Part="1" 
AR Path="/5CC9C16E/5CC72C3E" Ref="U11"  Part="1" 
AR Path="/5CCB1612/5CC72C3E" Ref="U13"  Part="1" 
F 0 "U11" H 6200 1750 50  0000 L CNN
F 1 "74HC688" V 6050 2750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6050 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 6050 2650 50  0001 C CNN
	1    6050 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS688 U?
U 1 1 5CC72C44
P 6050 5500
AR Path="/5CC72C44" Ref="U?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C44" Ref="U8"  Part="1" 
AR Path="/5CC85C26/5CC72C44" Ref="U10"  Part="1" 
AR Path="/5CC9C16E/5CC72C44" Ref="U12"  Part="1" 
AR Path="/5CCB1612/5CC72C44" Ref="U14"  Part="1" 
F 0 "U12" H 6200 4600 50  0000 L CNN
F 1 "74HC688" V 6050 5600 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6050 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 6050 5500 50  0001 C CNN
	1    6050 5500
	1    0    0    -1  
$EndComp
$Comp
L Graphics-rescue:74LS109-74xx U?
U 1 1 5CC72C4A
P 7050 2650
AR Path="/5CC72C4A" Ref="U?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C4A" Ref="U16"  Part="1" 
AR Path="/5CC85C26/5CC72C4A" Ref="U16"  Part="2" 
AR Path="/5CC9C16E/5CC72C4A" Ref="U17"  Part="1" 
AR Path="/5CCB1612/5CC72C4A" Ref="U17"  Part="2" 
F 0 "U17" H 6900 2350 50  0000 R CNN
F 1 "74HC109" V 7150 2400 50  0000 R CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7050 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS109" H 7050 2650 50  0001 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 4 1 5CC72C50
P 6650 2150
AR Path="/5CC72C50" Ref="U?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C50" Ref="U15"  Part="2" 
AR Path="/5CC85C26/5CC72C50" Ref="U15"  Part="3" 
AR Path="/5CC9C16E/5CC72C50" Ref="U15"  Part="4" 
AR Path="/5CCB1612/5CC72C50" Ref="U15"  Part="5" 
F 0 "U15" V 6450 2300 50  0000 C CNN
F 1 "74HC04" V 6750 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6650 2150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 6650 2150 50  0001 C CNN
	4    6650 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4600 6650 4600
Wire Wire Line
	6650 2750 6750 2750
Wire Wire Line
	6750 2550 6650 2550
Wire Wire Line
	6650 1750 6550 1750
$Comp
L power:GND #PWR?
U 1 1 5CC72C5A
P 6050 3850
AR Path="/5CC72C5A" Ref="#PWR?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C5A" Ref="#PWR0113"  Part="1" 
AR Path="/5CC85C26/5CC72C5A" Ref="#PWR0117"  Part="1" 
AR Path="/5CC9C16E/5CC72C5A" Ref="#PWR0130"  Part="1" 
AR Path="/5CCB1612/5CC72C5A" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0130" H 6050 3600 50  0001 C CNN
F 1 "GND" H 6055 3677 50  0000 C CNN
F 2 "" H 6050 3850 50  0001 C CNN
F 3 "" H 6050 3850 50  0001 C CNN
	1    6050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC72C60
P 6050 6700
AR Path="/5CC72C60" Ref="#PWR?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C60" Ref="#PWR0114"  Part="1" 
AR Path="/5CC85C26/5CC72C60" Ref="#PWR0118"  Part="1" 
AR Path="/5CC9C16E/5CC72C60" Ref="#PWR0131"  Part="1" 
AR Path="/5CCB1612/5CC72C60" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0131" H 6050 6450 50  0001 C CNN
F 1 "GND" H 6055 6527 50  0000 C CNN
F 2 "" H 6050 6700 50  0001 C CNN
F 3 "" H 6050 6700 50  0001 C CNN
	1    6050 6700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CC72C66
P 6050 4300
AR Path="/5CC72C66" Ref="#PWR?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C66" Ref="#PWR0115"  Part="1" 
AR Path="/5CC85C26/5CC72C66" Ref="#PWR0119"  Part="1" 
AR Path="/5CC9C16E/5CC72C66" Ref="#PWR0132"  Part="1" 
AR Path="/5CCB1612/5CC72C66" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0132" H 6050 4150 50  0001 C CNN
F 1 "VCC" H 6067 4473 50  0000 C CNN
F 2 "" H 6050 4300 50  0001 C CNN
F 3 "" H 6050 4300 50  0001 C CNN
	1    6050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CC72C6C
P 6050 1450
AR Path="/5CC72C6C" Ref="#PWR?"  Part="1" 
AR Path="/5CC6FF8F/5CC72C6C" Ref="#PWR0116"  Part="1" 
AR Path="/5CC85C26/5CC72C6C" Ref="#PWR0120"  Part="1" 
AR Path="/5CC9C16E/5CC72C6C" Ref="#PWR0133"  Part="1" 
AR Path="/5CCB1612/5CC72C6C" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0133" H 6050 1300 50  0001 C CNN
F 1 "VCC" H 6067 1623 50  0000 C CNN
F 2 "" H 6050 1450 50  0001 C CNN
F 3 "" H 6050 1450 50  0001 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1750 6650 1850
Wire Wire Line
	6650 2450 6650 2550
Wire Wire Line
	6650 2750 6650 4600
Wire Wire Line
	5550 4600 5450 4600
Wire Wire Line
	5450 4600 5450 1750
Wire Wire Line
	5450 1750 5550 1750
Wire Wire Line
	5550 1850 5350 1850
Wire Wire Line
	5350 1850 5350 4700
Wire Wire Line
	5350 4700 5550 4700
Wire Wire Line
	5550 4800 5250 4800
Wire Wire Line
	5250 4800 5250 1950
Wire Wire Line
	5250 1950 5550 1950
Wire Wire Line
	5550 2050 5150 2050
Wire Wire Line
	5150 2050 5150 4900
Wire Wire Line
	5150 4900 5550 4900
Wire Wire Line
	5050 5000 5050 2150
Wire Wire Line
	5050 2150 5550 2150
Wire Wire Line
	5050 5000 5550 5000
Wire Wire Line
	5550 5100 4950 5100
Wire Wire Line
	4950 5100 4950 2250
Wire Wire Line
	4950 2250 5550 2250
Wire Wire Line
	5550 2350 4850 2350
Wire Wire Line
	4850 2350 4850 5200
Wire Wire Line
	4850 5200 5550 5200
Wire Wire Line
	5550 5300 4750 5300
Wire Wire Line
	4750 5300 4750 2450
Wire Wire Line
	4750 2450 5550 2450
Wire Wire Line
	4750 2450 4650 2450
Connection ~ 4750 2450
Wire Wire Line
	4650 2350 4850 2350
Connection ~ 4850 2350
Wire Wire Line
	4650 2250 4950 2250
Connection ~ 4950 2250
Wire Wire Line
	5050 2150 4650 2150
Connection ~ 5050 2150
Wire Wire Line
	4650 2050 5150 2050
Connection ~ 5150 2050
Wire Wire Line
	4650 1950 5250 1950
Connection ~ 5250 1950
Wire Wire Line
	4650 1850 5350 1850
Connection ~ 5350 1850
Wire Wire Line
	5450 1750 4650 1750
Connection ~ 5450 1750
Text HLabel 4650 1750 0    50   Input ~ 0
P0
Text HLabel 4650 1850 0    50   Input ~ 0
P1
Text HLabel 4650 1950 0    50   Input ~ 0
P2
Text HLabel 4650 2050 0    50   Input ~ 0
P3
Text HLabel 4650 2150 0    50   Input ~ 0
P4
Text HLabel 4650 2250 0    50   Input ~ 0
P5
Text HLabel 4650 2350 0    50   Input ~ 0
P6
Text HLabel 4650 2450 0    50   Input ~ 0
P7
Wire Wire Line
	7350 2550 7450 2550
Wire Wire Line
	7350 2750 7450 2750
Text HLabel 7450 2550 2    50   Output ~ 0
Q
Text HLabel 7450 2750 2    50   Output ~ 0
~Q
Wire Wire Line
	5550 3550 4650 3550
Wire Wire Line
	5550 6400 4650 6400
Wire Wire Line
	4650 6400 4650 3550
Wire Wire Line
	4650 3550 4550 3550
Connection ~ 4650 3550
Text HLabel 4550 3550 0    50   Input ~ 0
~EN
Text HLabel 6650 2650 0    50   Input ~ 0
CP
Wire Wire Line
	6650 2650 6750 2650
$Comp
L 74xx:74LS573 U21
U 1 1 5CE3CB3C
P 3650 3150
AR Path="/5CC6FF8F/5CE3CB3C" Ref="U21"  Part="1" 
AR Path="/5CC85C26/5CE3CB3C" Ref="U23"  Part="1" 
AR Path="/5CC9C16E/5CE3CB3C" Ref="U25"  Part="1" 
AR Path="/5CCB1612/5CE3CB3C" Ref="U27"  Part="1" 
F 0 "U25" H 3650 3450 50  0000 C CNN
F 1 "74AC573" H 3650 2850 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3650 3150 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 3650 3150 50  0001 C CNN
	1    3650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2650 5550 2650
Wire Wire Line
	5550 2750 4150 2750
Wire Wire Line
	4150 2850 5550 2850
Wire Wire Line
	5550 2950 4150 2950
Wire Wire Line
	4150 3050 5550 3050
Wire Wire Line
	5550 3150 4150 3150
Wire Wire Line
	4150 3250 5550 3250
Wire Wire Line
	5550 3350 4150 3350
$Comp
L 74xx:74LS573 U22
U 1 1 5CE46B72
P 3650 6000
AR Path="/5CC6FF8F/5CE46B72" Ref="U22"  Part="1" 
AR Path="/5CC85C26/5CE46B72" Ref="U24"  Part="1" 
AR Path="/5CC9C16E/5CE46B72" Ref="U26"  Part="1" 
AR Path="/5CCB1612/5CE46B72" Ref="U28"  Part="1" 
F 0 "U26" H 3650 6300 50  0000 C CNN
F 1 "74AC573" H 3650 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3650 6000 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 3650 6000 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5500 5550 5500
Wire Wire Line
	5550 5600 4150 5600
Wire Wire Line
	4150 5700 5550 5700
Wire Wire Line
	5550 5800 4150 5800
Wire Wire Line
	4150 5900 5550 5900
Wire Wire Line
	5550 6000 4150 6000
Wire Wire Line
	4150 6100 5550 6100
Wire Wire Line
	5550 6200 4150 6200
$Comp
L power:VCC #PWR0146
U 1 1 5CE58AD7
P 7050 2250
AR Path="/5CC6FF8F/5CE58AD7" Ref="#PWR0146"  Part="1" 
AR Path="/5CC85C26/5CE58AD7" Ref="#PWR0147"  Part="1" 
AR Path="/5CC9C16E/5CE58AD7" Ref="#PWR0148"  Part="1" 
AR Path="/5CCB1612/5CE58AD7" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0148" H 7050 2100 50  0001 C CNN
F 1 "VCC" H 7067 2423 50  0000 C CNN
F 2 "" H 7050 2250 50  0001 C CNN
F 3 "" H 7050 2250 50  0001 C CNN
	1    7050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2250 7050 2350
Text GLabel 7000 3100 0    50   Input ~ 0
~RESET
Wire Wire Line
	7050 2950 7050 3100
Wire Wire Line
	7050 3100 7000 3100
Text GLabel 3150 2650 0    50   Input ~ 0
D0
Text GLabel 3150 2750 0    50   Input ~ 0
D1
Text GLabel 3150 2850 0    50   Input ~ 0
D2
Text GLabel 3150 2950 0    50   Input ~ 0
D3
Text GLabel 3150 3050 0    50   Input ~ 0
D4
Text GLabel 3150 3150 0    50   Input ~ 0
D5
Text GLabel 3150 3250 0    50   Input ~ 0
D6
Text GLabel 3150 3350 0    50   Input ~ 0
D7
Text GLabel 3150 5500 0    50   Input ~ 0
D0
Text GLabel 3150 5600 0    50   Input ~ 0
D1
Text GLabel 3150 5700 0    50   Input ~ 0
D2
Text GLabel 3150 5800 0    50   Input ~ 0
D3
Text GLabel 3150 5900 0    50   Input ~ 0
D4
Text GLabel 3150 6000 0    50   Input ~ 0
D5
Text GLabel 3150 6100 0    50   Input ~ 0
D6
Text GLabel 3150 6200 0    50   Input ~ 0
D7
$Comp
L power:GND #PWR0155
U 1 1 5D30F4A4
P 3100 3700
AR Path="/5CC6FF8F/5D30F4A4" Ref="#PWR0155"  Part="1" 
AR Path="/5CC9C16E/5D30F4A4" Ref="#PWR0157"  Part="1" 
AR Path="/5CCB1612/5D30F4A4" Ref="#PWR0159"  Part="1" 
AR Path="/5CC85C26/5D30F4A4" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0157" H 3100 3450 50  0001 C CNN
F 1 "GND" H 3105 3527 50  0000 C CNN
F 2 "" H 3100 3700 50  0001 C CNN
F 3 "" H 3100 3700 50  0001 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3700 3100 3650
Wire Wire Line
	3100 3650 3150 3650
$Comp
L power:GND #PWR0156
U 1 1 5D313614
P 3100 6550
AR Path="/5CC6FF8F/5D313614" Ref="#PWR0156"  Part="1" 
AR Path="/5CC9C16E/5D313614" Ref="#PWR0158"  Part="1" 
AR Path="/5CCB1612/5D313614" Ref="#PWR0160"  Part="1" 
AR Path="/5CC85C26/5D313614" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0158" H 3100 6300 50  0001 C CNN
F 1 "GND" H 3105 6377 50  0000 C CNN
F 2 "" H 3100 6550 50  0001 C CNN
F 3 "" H 3100 6550 50  0001 C CNN
	1    3100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6550 3100 6500
Wire Wire Line
	3100 6500 3150 6500
$Comp
L 74xx:74HC00 U?
U 1 1 5D446A15
P 2750 3550
AR Path="/5D446A15" Ref="U?"  Part="1" 
AR Path="/5CC9C16E/5D446A15" Ref="U33"  Part="1" 
AR Path="/5CCB1612/5D446A15" Ref="U33"  Part="3" 
AR Path="/5CC6FF8F/5D446A15" Ref="U32"  Part="1" 
AR Path="/5CC85C26/5D446A15" Ref="U32"  Part="3" 
F 0 "U33" H 2600 3750 50  0000 L CNN
F 1 "74HC00" H 2550 3300 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2750 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 2750 3550 50  0001 C CNN
	1    2750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3550 3150 3550
Text GLabel 2350 3650 0    50   Input ~ 0
~RESET
Wire Wire Line
	2350 3650 2450 3650
$Comp
L 74xx:74HC00 U?
U 2 1 5D44D4F0
P 2750 6400
AR Path="/5D44D4F0" Ref="U?"  Part="1" 
AR Path="/5CC9C16E/5D44D4F0" Ref="U33"  Part="2" 
AR Path="/5CCB1612/5D44D4F0" Ref="U33"  Part="4" 
AR Path="/5CC6FF8F/5D44D4F0" Ref="U32"  Part="2" 
AR Path="/5CC85C26/5D44D4F0" Ref="U32"  Part="4" 
F 0 "U33" H 2600 6600 50  0000 L CNN
F 1 "74HC00" H 2550 6150 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2750 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 2750 6400 50  0001 C CNN
	2    2750 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6400 3150 6400
Text GLabel 2350 6500 0    50   Input ~ 0
~RESET
Wire Wire Line
	2350 6500 2450 6500
Text HLabel 2450 3450 0    50   Input ~ 0
~CSA
Text HLabel 2450 6300 0    50   Input ~ 0
~CSB
$Comp
L power:VCC #PWR0176
U 1 1 5EC996EF
P 3650 5200
AR Path="/5CC6FF8F/5EC996EF" Ref="#PWR0176"  Part="1" 
AR Path="/5CC9C16E/5EC996EF" Ref="#PWR0178"  Part="1" 
AR Path="/5CCB1612/5EC996EF" Ref="#PWR0180"  Part="1" 
AR Path="/5CC85C26/5EC996EF" Ref="#PWR0182"  Part="1" 
F 0 "#PWR0178" H 3650 5050 50  0001 C CNN
F 1 "VCC" H 3667 5373 50  0000 C CNN
F 2 "" H 3650 5200 50  0001 C CNN
F 3 "" H 3650 5200 50  0001 C CNN
	1    3650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 5EC99768
P 3650 6800
AR Path="/5CC6FF8F/5EC99768" Ref="#PWR0177"  Part="1" 
AR Path="/5CC9C16E/5EC99768" Ref="#PWR0179"  Part="1" 
AR Path="/5CCB1612/5EC99768" Ref="#PWR0181"  Part="1" 
AR Path="/5CC85C26/5EC99768" Ref="#PWR0183"  Part="1" 
F 0 "#PWR0179" H 3650 6550 50  0001 C CNN
F 1 "GND" H 3655 6627 50  0000 C CNN
F 2 "" H 3650 6800 50  0001 C CNN
F 3 "" H 3650 6800 50  0001 C CNN
	1    3650 6800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0184
U 1 1 5EC99821
P 3650 2350
AR Path="/5CC6FF8F/5EC99821" Ref="#PWR0184"  Part="1" 
AR Path="/5CC9C16E/5EC99821" Ref="#PWR0186"  Part="1" 
AR Path="/5CCB1612/5EC99821" Ref="#PWR0188"  Part="1" 
AR Path="/5CC85C26/5EC99821" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0186" H 3650 2200 50  0001 C CNN
F 1 "VCC" H 3667 2523 50  0000 C CNN
F 2 "" H 3650 2350 50  0001 C CNN
F 3 "" H 3650 2350 50  0001 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 5EC99885
P 3650 3950
AR Path="/5CC6FF8F/5EC99885" Ref="#PWR0185"  Part="1" 
AR Path="/5CC9C16E/5EC99885" Ref="#PWR0187"  Part="1" 
AR Path="/5CCB1612/5EC99885" Ref="#PWR0189"  Part="1" 
AR Path="/5CC85C26/5EC99885" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0187" H 3650 3700 50  0001 C CNN
F 1 "GND" H 3655 3777 50  0000 C CNN
F 2 "" H 3650 3950 50  0001 C CNN
F 3 "" H 3650 3950 50  0001 C CNN
	1    3650 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
