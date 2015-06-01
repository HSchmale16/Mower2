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
EELAYER 24 0
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
L AT89S4051-P IC?
U 1 1 556BB736
P 3725 3800
F 0 "IC?" H 2775 4800 40  0000 C CNN
F 1 "AT89S4051-P" H 4475 2900 40  0000 C CNN
F 2 "DIP20" H 3725 3800 30  0000 C CIN
F 3 "" H 3725 3800 60  0000 C CNN
	1    3725 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 556BB808
P 3725 2650
F 0 "#PWR?" H 3725 2740 20  0001 C CNN
F 1 "+5V" H 3725 2740 30  0000 C CNN
F 2 "" H 3725 2650 60  0000 C CNN
F 3 "" H 3725 2650 60  0000 C CNN
	1    3725 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 2700 3725 2650
$Comp
L GND #PWR?
U 1 1 556BB82E
P 3725 4850
F 0 "#PWR?" H 3725 4850 30  0001 C CNN
F 1 "GND" H 3725 4780 30  0001 C CNN
F 2 "" H 3725 4850 60  0000 C CNN
F 3 "" H 3725 4850 60  0000 C CNN
	1    3725 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 4850 3725 4800
$EndSCHEMATC
