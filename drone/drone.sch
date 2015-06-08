EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:drone-cache
EELAYER 24 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Lawn Mower Drone Control System"
Date "03 Jun 2015"
Rev ""
Comp "Henry J Schmale"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CRYSTAL X1
U 1 1 556BC952
P 1575 1875
F 0 "X1" H 1575 2025 60  0000 C CNN
F 1 "12MHz" H 1575 1725 60  0000 C CNN
F 2 "" H 1575 1875 60  0000 C CNN
F 3 "" H 1575 1875 60  0000 C CNN
	1    1575 1875
	0    -1   -1   0   
$EndComp
$Comp
L AT89S4051-P IC1
U 1 1 556CD57A
P 3125 2175
F 0 "IC1" H 2175 3175 40  0000 C CNN
F 1 "AT89S4051-P" H 3875 1275 40  0000 C CNN
F 2 "DIP20" H 3125 2175 30  0000 C CIN
F 3 "" H 3125 2175 60  0000 C CNN
	1    3125 2175
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 556CE658
P 1125 1575
F 0 "C1" H 1125 1675 40  0000 L CNN
F 1 "5pF" H 1131 1490 40  0000 L CNN
F 2 "" H 1163 1425 30  0000 C CNN
F 3 "" H 1125 1575 60  0000 C CNN
	1    1125 1575
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 556CE66C
P 1125 2175
F 0 "C2" H 1125 2275 40  0000 L CNN
F 1 "5pF" H 1131 2090 40  0000 L CNN
F 2 "" H 1163 2025 30  0000 C CNN
F 3 "" H 1125 2175 60  0000 C CNN
	1    1125 2175
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 556CE6AB
P 3125 3200
F 0 "#PWR01" H 3125 3200 30  0001 C CNN
F 1 "GND" H 3125 3130 30  0001 C CNN
F 2 "" H 3125 3200 60  0000 C CNN
F 3 "" H 3125 3200 60  0000 C CNN
	1    3125 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 556CE7FF
P 925 2325
F 0 "#PWR02" H 925 2325 30  0001 C CNN
F 1 "GND" H 925 2255 30  0001 C CNN
F 2 "" H 925 2325 60  0000 C CNN
F 3 "" H 925 2325 60  0000 C CNN
	1    925  2325
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW1
U 1 1 556CEA9C
P 1875 1150
F 0 "SW1" H 2025 1260 30  0000 C CNN
F 1 "Reset" H 1875 1071 30  0000 C CNN
F 2 "" H 1875 1150 60  0000 C CNN
F 3 "" H 1875 1150 60  0000 C CNN
	1    1875 1150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 556CEAC9
P 1775 1000
F 0 "#PWR03" H 1775 1090 20  0001 C CNN
F 1 "+5V" H 1775 1090 30  0000 C CNN
F 2 "" H 1775 1000 60  0000 C CNN
F 3 "" H 1775 1000 60  0000 C CNN
	1    1775 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 1575 1975 1575
Wire Wire Line
	1975 1575 1975 1675
Wire Wire Line
	1325 2175 1975 2175
Wire Wire Line
	1975 2175 1975 1975
Connection ~ 1575 1575
Connection ~ 1575 2175
Wire Wire Line
	3125 3200 3125 3175
Wire Wire Line
	925  1575 925  2325
Connection ~ 925  2175
Wire Wire Line
	1975 1375 1975 1250
Wire Wire Line
	1775 1050 1775 1000
Text GLabel 8700 1400 0    60   Input ~ 0
Int0
$Comp
L SW_PUSH SW3
U 1 1 556E0334
P 9225 1600
F 0 "SW3" H 9375 1710 50  0000 C CNN
F 1 "BackTrig" H 9225 1520 50  0000 C CNN
F 2 "" H 9225 1600 60  0000 C CNN
F 3 "" H 9225 1600 60  0000 C CNN
	1    9225 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8825 1275 8825 1600
Wire Wire Line
	8825 1400 8700 1400
Connection ~ 8825 1400
$Comp
L +5V #PWR04
U 1 1 556E058A
P 9550 1075
F 0 "#PWR04" H 9550 1165 20  0001 C CNN
F 1 "+5V" H 9550 1165 30  0000 C CNN
F 2 "" H 9550 1075 60  0000 C CNN
F 3 "" H 9550 1075 60  0000 C CNN
	1    9550 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1600 9525 1600
Wire Wire Line
	8925 1275 8825 1275
$Comp
L SW_PUSH SW2
U 1 1 556E06D3
P 9225 1275
F 0 "SW2" H 9375 1385 50  0000 C CNN
F 1 "FwdTrig" H 9225 1195 50  0000 C CNN
F 2 "" H 9225 1275 60  0000 C CNN
F 3 "" H 9225 1275 60  0000 C CNN
	1    9225 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1075 9550 1600
Wire Wire Line
	9550 1275 9525 1275
Connection ~ 9550 1275
Wire Wire Line
	8825 1600 8925 1600
$Comp
L +5V #PWR05
U 1 1 556E0901
P 3125 1025
F 0 "#PWR05" H 3125 1115 20  0001 C CNN
F 1 "+5V" H 3125 1115 30  0000 C CNN
F 2 "" H 3125 1025 60  0000 C CNN
F 3 "" H 3125 1025 60  0000 C CNN
	1    3125 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 1075 3125 1025
Text Notes 1850 1000 0    60   ~ 0
Reset Button
$Comp
L CONN_3X2 P2
U 1 1 556E17F1
P 5475 2025
F 0 "P2" H 5475 2275 50  0000 C CNN
F 1 "ISP" V 5475 2075 40  0000 C CNN
F 2 "" H 5475 2025 60  0000 C CNN
F 3 "" H 5475 2025 60  0000 C CNN
	1    5475 2025
	1    0    0    -1  
$EndComp
Text GLabel 1875 1375 0    60   Input ~ 0
Reset
Wire Wire Line
	1875 1375 1975 1375
$Comp
L GND #PWR06
U 1 1 556E1AEE
P 5875 2150
F 0 "#PWR06" H 5875 2150 30  0001 C CNN
F 1 "GND" H 5875 2080 30  0001 C CNN
F 2 "" H 5875 2150 60  0000 C CNN
F 3 "" H 5875 2150 60  0000 C CNN
	1    5875 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 2150 5875 2075
$Comp
L +5V #PWR07
U 1 1 556E1B3C
P 5875 1825
F 0 "#PWR07" H 5875 1915 20  0001 C CNN
F 1 "+5V" H 5875 1915 30  0000 C CNN
F 2 "" H 5875 1825 60  0000 C CNN
F 3 "" H 5875 1825 60  0000 C CNN
	1    5875 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 1875 5875 1825
Wire Wire Line
	4275 1975 4950 1975
Wire Wire Line
	4950 1975 4950 1875
Wire Wire Line
	4950 1875 5075 1875
Wire Wire Line
	4275 2075 5000 2075
Wire Wire Line
	5000 2075 5000 1975
Wire Wire Line
	5000 1975 5075 1975
Text GLabel 5075 2150 3    60   Input ~ 0
Reset
Wire Wire Line
	5075 2075 5075 2150
Wire Wire Line
	4275 1875 4900 1875
Wire Wire Line
	4900 1875 4900 1700
Wire Wire Line
	4900 1700 5950 1700
Wire Wire Line
	5950 1700 5950 1975
Wire Wire Line
	5950 1975 5875 1975
Text Notes 5700 1675 2    60   ~ 0
Programming\nInterface
Text Notes 9575 1800 2    60   ~ 0
Bumper Switches
$Comp
L CONN_2 P3
U 1 1 556F2AE8
P 7550 1250
F 0 "P3" V 7500 1250 40  0000 C CNN
F 1 "Blade1" V 7600 1250 40  0000 C CNN
F 2 "" H 7550 1250 60  0000 C CNN
F 3 "" H 7550 1250 60  0000 C CNN
	1    7550 1250
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 556F2AFC
P 7550 1725
F 0 "P4" V 7500 1725 40  0000 C CNN
F 1 "Blade2" V 7600 1725 40  0000 C CNN
F 2 "" H 7550 1725 60  0000 C CNN
F 3 "" H 7550 1725 60  0000 C CNN
	1    7550 1725
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 556F2B21
P 7050 1900
F 0 "#PWR08" H 7050 1900 30  0001 C CNN
F 1 "GND" H 7050 1830 30  0001 C CNN
F 2 "" H 7050 1900 60  0000 C CNN
F 3 "" H 7050 1900 60  0000 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1350 7050 1350
Wire Wire Line
	7050 1350 7050 1900
Wire Wire Line
	7200 1825 7050 1825
Connection ~ 7050 1825
Wire Wire Line
	7125 1075 7125 1625
Wire Wire Line
	7125 1150 7200 1150
Wire Wire Line
	7125 1625 7200 1625
Connection ~ 7125 1150
Text Notes 7125 1975 0    60   ~ 0
Blade Motors
$Comp
L BATTERY BT1
U 1 1 556F306E
P 8400 2600
F 0 "BT1" H 8400 2800 50  0000 C CNN
F 1 "12V" H 8400 2410 50  0000 C CNN
F 2 "" H 8400 2600 60  0000 C CNN
F 3 "" H 8400 2600 60  0000 C CNN
	1    8400 2600
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR09
U 1 1 556F3087
P 8575 2250
F 0 "#PWR09" H 8575 2200 20  0001 C CNN
F 1 "+12V" H 8575 2350 30  0000 C CNN
F 2 "" H 8575 2250 60  0000 C CNN
F 3 "" H 8575 2250 60  0000 C CNN
	1    8575 2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 556F309B
P 9625 2300
F 0 "#PWR010" H 9625 2390 20  0001 C CNN
F 1 "+5V" H 9625 2390 30  0000 C CNN
F 2 "" H 9625 2300 60  0000 C CNN
F 3 "" H 9625 2300 60  0000 C CNN
	1    9625 2300
	1    0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 556F311C
P 9125 2350
F 0 "U1" H 9275 2154 60  0000 C CNN
F 1 "7805" H 9125 2550 60  0000 C CNN
F 2 "" H 9125 2350 60  0000 C CNN
F 3 "" H 9125 2350 60  0000 C CNN
	1    9125 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9525 2300 9625 2300
Wire Wire Line
	9125 2600 9125 2950
NoConn ~ 2925 50  
Text GLabel 1700 4750 0    60   Input ~ 0
LMotor1
Text GLabel 2000 5850 0    60   Input ~ 0
LMotor2
Text GLabel 6675 6025 0    60   Input ~ 0
RMotor2
Text GLabel 6375 4925 0    60   Input ~ 0
RMotor1
Text GLabel 4350 2775 2    60   Input ~ 0
LMotor1
Text GLabel 4350 2875 2    60   Input ~ 0
LMotor2
Text GLabel 4350 1575 2    60   Input ~ 0
RMotor1
Text GLabel 4350 1675 2    60   Input ~ 0
RMotor2
Text GLabel 4350 2475 2    60   Input ~ 0
Int0
Wire Wire Line
	4275 2475 4350 2475
Wire Wire Line
	4275 2775 4350 2775
Wire Wire Line
	4275 2875 4350 2875
NoConn ~ 4275 2275
Wire Wire Line
	4275 1575 4350 1575
Wire Wire Line
	4275 1675 4350 1675
NoConn ~ 4275 2375
NoConn ~ 4275 2675
Text GLabel 4350 1775 2    60   Input ~ 0
BladeCon
Wire Wire Line
	4275 1775 4350 1775
$Comp
L +12V #PWR011
U 1 1 556F6D84
P 7125 625
F 0 "#PWR011" H 7125 575 20  0001 C CNN
F 1 "+12V" H 7125 725 30  0000 C CNN
F 2 "" H 7125 625 60  0000 C CNN
F 3 "" H 7125 625 60  0000 C CNN
	1    7125 625 
	1    0    0    -1  
$EndComp
$Comp
L NPN Q5
U 1 1 556F6D98
P 7025 875
F 0 "Q5" H 7025 725 50  0000 R CNN
F 1 "NPN" H 7025 1025 50  0000 R CNN
F 2 "" H 7025 875 60  0000 C CNN
F 3 "" H 7025 875 60  0000 C CNN
	1    7025 875 
	1    0    0    -1  
$EndComp
Text GLabel 6250 875  0    60   Input ~ 0
BladeCon
Wire Wire Line
	6775 875  6825 875 
$Comp
L R R5
U 1 1 556F6198
P 6525 875
F 0 "R5" V 6605 875 40  0000 C CNN
F 1 "3K3" V 6532 876 40  0000 C CNN
F 2 "" V 6455 875 30  0000 C CNN
F 3 "" H 6525 875 30  0000 C CNN
	1    6525 875 
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 875  6275 875 
$Comp
L NPN Q1
U 1 1 55707746
P 2900 4800
F 0 "Q1" H 2900 4650 50  0000 R CNN
F 1 "NPN" H 2900 4950 50  0000 R CNN
F 2 "" H 2900 4800 60  0000 C CNN
F 3 "" H 2900 4800 60  0000 C CNN
	1    2900 4800
	1    0    0    -1  
$EndComp
$Comp
L NPN Q3
U 1 1 5570775A
P 4050 4800
F 0 "Q3" H 4050 4650 50  0000 R CNN
F 1 "NPN" H 4050 4950 50  0000 R CNN
F 2 "" H 4050 4800 60  0000 C CNN
F 3 "" H 4050 4800 60  0000 C CNN
	1    4050 4800
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 55707846
P 3475 4875
F 0 "P1" V 3425 4875 40  0000 C CNN
F 1 "LeftM" V 3525 4875 40  0000 C CNN
F 2 "" H 3475 4875 60  0000 C CNN
F 3 "" H 3475 4875 60  0000 C CNN
	1    3475 4875
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q2
U 1 1 5570785A
P 2900 5500
F 0 "Q2" H 2900 5350 50  0000 R CNN
F 1 "NPN" H 2900 5650 50  0000 R CNN
F 2 "" H 2900 5500 60  0000 C CNN
F 3 "" H 2900 5500 60  0000 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L NPN Q4
U 1 1 5570786E
P 4050 5500
F 0 "Q4" H 4050 5350 50  0000 R CNN
F 1 "NPN" H 4050 5650 50  0000 R CNN
F 2 "" H 4050 5500 60  0000 C CNN
F 3 "" H 4050 5500 60  0000 C CNN
	1    4050 5500
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 55707882
P 2400 4800
F 0 "R1" V 2480 4800 40  0000 C CNN
F 1 "1K" V 2407 4801 40  0000 C CNN
F 2 "" V 2330 4800 30  0000 C CNN
F 3 "" H 2400 4800 30  0000 C CNN
	1    2400 4800
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 55707896
P 2400 5500
F 0 "R2" V 2480 5500 40  0000 C CNN
F 1 "1K" V 2407 5501 40  0000 C CNN
F 2 "" V 2330 5500 30  0000 C CNN
F 3 "" H 2400 5500 30  0000 C CNN
	1    2400 5500
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 557078AA
P 4550 5500
F 0 "R4" V 4630 5500 40  0000 C CNN
F 1 "1K" V 4557 5501 40  0000 C CNN
F 2 "" V 4480 5500 30  0000 C CNN
F 3 "" H 4550 5500 30  0000 C CNN
	1    4550 5500
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 557078C8
P 4550 4800
F 0 "R3" V 4630 4800 40  0000 C CNN
F 1 "1K" V 4557 4801 40  0000 C CNN
F 2 "" V 4480 4800 30  0000 C CNN
F 3 "" H 4550 4800 30  0000 C CNN
	1    4550 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5500 2700 5500
Wire Wire Line
	4250 5500 4300 5500
Wire Wire Line
	4250 4800 4300 4800
Wire Wire Line
	2150 4400 2150 4800
Wire Wire Line
	2150 4400 5075 4400
Wire Wire Line
	5075 4400 5075 5500
Wire Wire Line
	5075 5500 4800 5500
Wire Wire Line
	4800 4800 4975 4800
Wire Wire Line
	4975 4800 4975 5850
Wire Wire Line
	4975 5850 2000 5850
Wire Wire Line
	2150 5850 2150 5500
Wire Wire Line
	1700 4750 2150 4750
Connection ~ 2150 4750
Connection ~ 2150 5850
Wire Wire Line
	3000 5000 3000 5300
Wire Wire Line
	3950 5000 3950 5300
Wire Wire Line
	3000 5700 3950 5700
Wire Wire Line
	3000 4600 3950 4600
Wire Wire Line
	3000 5225 3375 5225
Connection ~ 3000 5225
Wire Wire Line
	3575 5225 3950 5225
Connection ~ 3950 5225
Wire Wire Line
	2650 4800 2700 4800
Wire Wire Line
	7125 675  7125 625 
$Comp
L NPN Q6
U 1 1 5570904C
P 7575 4975
F 0 "Q6" H 7575 4825 50  0000 R CNN
F 1 "NPN" H 7575 5125 50  0000 R CNN
F 2 "" H 7575 4975 60  0000 C CNN
F 3 "" H 7575 4975 60  0000 C CNN
	1    7575 4975
	1    0    0    -1  
$EndComp
$Comp
L NPN Q8
U 1 1 55709052
P 8725 4975
F 0 "Q8" H 8725 4825 50  0000 R CNN
F 1 "NPN" H 8725 5125 50  0000 R CNN
F 2 "" H 8725 4975 60  0000 C CNN
F 3 "" H 8725 4975 60  0000 C CNN
	1    8725 4975
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P5
U 1 1 55709058
P 8150 5050
F 0 "P5" V 8100 5050 40  0000 C CNN
F 1 "RightM" V 8200 5050 40  0000 C CNN
F 2 "" H 8150 5050 60  0000 C CNN
F 3 "" H 8150 5050 60  0000 C CNN
	1    8150 5050
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q7
U 1 1 5570905E
P 7575 5675
F 0 "Q7" H 7575 5525 50  0000 R CNN
F 1 "NPN" H 7575 5825 50  0000 R CNN
F 2 "" H 7575 5675 60  0000 C CNN
F 3 "" H 7575 5675 60  0000 C CNN
	1    7575 5675
	1    0    0    -1  
$EndComp
$Comp
L NPN Q9
U 1 1 55709064
P 8725 5675
F 0 "Q9" H 8725 5525 50  0000 R CNN
F 1 "NPN" H 8725 5825 50  0000 R CNN
F 2 "" H 8725 5675 60  0000 C CNN
F 3 "" H 8725 5675 60  0000 C CNN
	1    8725 5675
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5570906A
P 7075 4975
F 0 "R6" V 7155 4975 40  0000 C CNN
F 1 "1K" V 7082 4976 40  0000 C CNN
F 2 "" V 7005 4975 30  0000 C CNN
F 3 "" H 7075 4975 30  0000 C CNN
	1    7075 4975
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 55709070
P 7075 5675
F 0 "R7" V 7155 5675 40  0000 C CNN
F 1 "1K" V 7082 5676 40  0000 C CNN
F 2 "" V 7005 5675 30  0000 C CNN
F 3 "" H 7075 5675 30  0000 C CNN
	1    7075 5675
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 55709076
P 9225 5675
F 0 "R9" V 9305 5675 40  0000 C CNN
F 1 "1K" V 9232 5676 40  0000 C CNN
F 2 "" V 9155 5675 30  0000 C CNN
F 3 "" H 9225 5675 30  0000 C CNN
	1    9225 5675
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5570907C
P 9225 4975
F 0 "R8" V 9305 4975 40  0000 C CNN
F 1 "1K" V 9232 4976 40  0000 C CNN
F 2 "" V 9155 4975 30  0000 C CNN
F 3 "" H 9225 4975 30  0000 C CNN
	1    9225 4975
	0    1    1    0   
$EndComp
Wire Wire Line
	7325 5675 7375 5675
Wire Wire Line
	8925 5675 8975 5675
Wire Wire Line
	8925 4975 8975 4975
Wire Wire Line
	6825 4575 6825 4975
Wire Wire Line
	6825 4575 9750 4575
Wire Wire Line
	9750 4575 9750 5675
Wire Wire Line
	9750 5675 9475 5675
Wire Wire Line
	9475 4975 9650 4975
Wire Wire Line
	9650 4975 9650 6025
Wire Wire Line
	9650 6025 6675 6025
Wire Wire Line
	6825 6025 6825 5675
Wire Wire Line
	6375 4925 6825 4925
Connection ~ 6825 4925
Connection ~ 6825 6025
Wire Wire Line
	7675 5175 7675 5475
Wire Wire Line
	8625 5175 8625 5475
Wire Wire Line
	7675 5875 8625 5875
Wire Wire Line
	7675 5400 8050 5400
Connection ~ 7675 5400
Wire Wire Line
	8250 5400 8625 5400
Connection ~ 8625 5400
Wire Wire Line
	7325 4975 7375 4975
$Comp
L +12V #PWR012
U 1 1 55708FC2
P 3475 4325
F 0 "#PWR012" H 3475 4275 20  0001 C CNN
F 1 "+12V" H 3475 4425 30  0000 C CNN
F 2 "" H 3475 4325 60  0000 C CNN
F 3 "" H 3475 4325 60  0000 C CNN
	1    3475 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 4325 3475 4600
Connection ~ 3475 4600
$Comp
L GND #PWR013
U 1 1 55709044
P 3475 5750
F 0 "#PWR013" H 3475 5750 30  0001 C CNN
F 1 "GND" H 3475 5680 30  0001 C CNN
F 2 "" H 3475 5750 60  0000 C CNN
F 3 "" H 3475 5750 60  0000 C CNN
	1    3475 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 5750 3475 5700
Connection ~ 3475 5700
$Comp
L +12V #PWR014
U 1 1 557090C8
P 8150 4500
F 0 "#PWR014" H 8150 4450 20  0001 C CNN
F 1 "+12V" H 8150 4600 30  0000 C CNN
F 2 "" H 8150 4500 60  0000 C CNN
F 3 "" H 8150 4500 60  0000 C CNN
	1    8150 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 557090DC
P 8150 5975
F 0 "#PWR015" H 8150 5975 30  0001 C CNN
F 1 "GND" H 8150 5905 30  0001 C CNN
F 2 "" H 8150 5975 60  0000 C CNN
F 3 "" H 8150 5975 60  0000 C CNN
	1    8150 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5975 8150 5875
Connection ~ 8150 5875
Wire Wire Line
	7675 4775 8625 4775
Connection ~ 8150 4775
Wire Wire Line
	8150 4500 8150 4775
$Comp
L PWR_FLAG #FLG016
U 1 1 5570B235
P 8400 2275
F 0 "#FLG016" H 8400 2370 30  0001 C CNN
F 1 "PWR_FLAG" H 8400 2455 30  0000 C CNN
F 2 "" H 8400 2275 60  0000 C CNN
F 3 "" H 8400 2275 60  0000 C CNN
	1    8400 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2300 8400 2275
Wire Wire Line
	8575 2250 8575 2300
Wire Wire Line
	8575 2300 8725 2300
$Comp
L GND #PWR017
U 1 1 5570B423
P 9125 2950
F 0 "#PWR017" H 9125 2950 30  0001 C CNN
F 1 "GND" H 9125 2880 30  0001 C CNN
F 2 "" H 9125 2950 60  0000 C CNN
F 3 "" H 9125 2950 60  0000 C CNN
	1    9125 2950
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 5570B4AC
P 8200 4675
F 0 "#FLG018" H 8200 4770 30  0001 C CNN
F 1 "PWR_FLAG" H 8200 4855 30  0000 C CNN
F 2 "" H 8200 4675 60  0000 C CNN
F 3 "" H 8200 4675 60  0000 C CNN
	1    8200 4675
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4675 8150 4675
Connection ~ 8150 4675
Wire Wire Line
	8400 2900 9125 2900
Connection ~ 9125 2900
$Comp
L UsonicFinder U2
U 1 1 5574E94F
P 7225 3600
F 0 "U2" H 7075 3850 60  0000 C CNN
F 1 "UsonicFinder" H 7250 3950 60  0000 C CNN
F 2 "" H 7225 3600 60  0000 C CNN
F 3 "" H 7225 3600 60  0000 C CNN
	1    7225 3600
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR019
U 1 1 5574E963
P 6875 3400
F 0 "#PWR019" H 6875 3490 20  0001 C CNN
F 1 "+5V" H 6875 3490 30  0000 C CNN
F 2 "" H 6875 3400 60  0000 C CNN
F 3 "" H 6875 3400 60  0000 C CNN
	1    6875 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 3400 6875 3450
Wire Wire Line
	6875 3450 6925 3450
$Comp
L GND #PWR020
U 1 1 5574EA64
P 6875 3800
F 0 "#PWR020" H 6875 3800 30  0001 C CNN
F 1 "GND" H 6875 3730 30  0001 C CNN
F 2 "" H 6875 3800 60  0000 C CNN
F 3 "" H 6875 3800 60  0000 C CNN
	1    6875 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 3800 6875 3750
Wire Wire Line
	6875 3750 6925 3750
Text GLabel 4375 1375 2    60   Input ~ 0
Trig
Wire Wire Line
	4275 1375 4375 1375
Text GLabel 4350 2575 2    60   Input ~ 0
Echo
Text GLabel 6825 3550 0    60   Input ~ 0
Trig
Text GLabel 6825 3650 0    60   Input ~ 0
Echo
Wire Wire Line
	6825 3650 6925 3650
Wire Wire Line
	6925 3550 6825 3550
Wire Wire Line
	4350 2575 4275 2575
NoConn ~ 4275 1475
$EndSCHEMATC
