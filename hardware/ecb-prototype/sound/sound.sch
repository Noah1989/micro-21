EESchema Schematic File Version 4
LIBS:sound-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L z80ctc:Z84C3010 U?
U 1 1 5E458A3D
P 5700 3950
F 0 "U?" H 5400 4850 50  0000 C CNN
F 1 "Z84C3010" H 5950 3250 50  0000 C CNN
F 2 "" H 5700 3950 50  0001 C CNN
F 3 "" H 5700 3950 50  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E458B1D
P 5700 4700
F 0 "#PWR?" H 5700 4450 50  0001 C CNN
F 1 "GND" H 5705 4527 50  0000 C CNN
F 2 "" H 5700 4700 50  0001 C CNN
F 3 "" H 5700 4700 50  0001 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E458B86
P 5700 2600
F 0 "#PWR?" H 5700 2450 50  0001 C CNN
F 1 "VCC" H 5717 2773 50  0000 C CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E458BCE
P 5850 2800
F 0 "C?" V 5621 2800 50  0000 C CNN
F 1 "100nF" V 5712 2800 50  0000 C CNN
F 2 "" H 5850 2800 50  0001 C CNN
F 3 "~" H 5850 2800 50  0001 C CNN
	1    5850 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E458C68
P 6000 2850
F 0 "#PWR?" H 6000 2600 50  0001 C CNN
F 1 "GND" H 6005 2677 50  0000 C CNN
F 2 "" H 6000 2850 50  0001 C CNN
F 3 "" H 6000 2850 50  0001 C CNN
	1    6000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2600 5700 2800
Wire Wire Line
	5700 2800 5750 2800
Connection ~ 5700 2800
Wire Wire Line
	5700 2800 5700 3000
Wire Wire Line
	5950 2800 6000 2800
Wire Wire Line
	6000 2800 6000 2850
$Sheet
S 6750 3100 750  250 
U 5E49C66D
F0 "Channel" 50
F1 "channel.sch" 50
$EndSheet
$EndSCHEMATC
