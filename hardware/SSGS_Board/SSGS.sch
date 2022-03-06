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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:HX711
LIBS:AMS1117-3V3
LIBS:MMBT4403_
LIBS:SGBS-cache
EELAYER 25 0
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
L HX711 IC?
U 1 1 59D2BC6A
P 2850 6200
F 0 "IC?" H 3400 6350 50  0000 C CNN
F 1 "HX711" H 3400 5350 50  0000 C CNN
F 2 "SOIC127P600X160-16N" H 3400 5250 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf" H 3400 5150 50  0001 C CNN
F 4 "24-Bit Analog-to-Digital Converter (ADC) for Weigh Scales" H 3400 5050 50  0001 C CNN "Description"
F 5 "RS" H 3400 4950 50  0001 C CNN "Supplier_Name"
F 6 "" H 3400 4850 50  0001 C CNN "RS Part Number"
F 7 "DFRobot" H 3400 4750 50  0001 C CNN "Manufacturer_Name"
F 8 "HX711" H 3400 4650 50  0001 C CNN "Manufacturer_Part_Number"
F 9 "" H 3400 4550 50  0001 C CNN "Allied_Number"
F 10 "" H 3400 4450 50  0001 C CNN "Other Part Number"
F 11 "1.6" H 3800 4350 50  0001 C CNN "Height"
	1    2850 6200
	1    0    0    -1  
$EndComp
$Comp
L AMS1117-3V3 U?
U 1 1 59D2BCFF
P 1600 1400
F 0 "U?" H 1700 1150 50  0000 C CNN
F 1 "AMS1117-3V3" H 1600 1650 50  0000 C CNN
F 2 "" H 1600 1400 50  0000 C CNN
F 3 "" H 1700 1150 50  0000 C CNN
F 4 "LM1117 800-mA Low-Dropout Linear Regulator" H 2000 1450 61  0001 C CNN "DESC"
F 5 "Texas Instruments" H 1800 1250 61  0001 C CNN "MFG_NAME"
F 6 "LM1117" H 1900 1350 61  0001 C CNN "MPN"
	1    1600 1400
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR?
U 1 1 59D2BF7A
P 1100 1250
F 0 "#PWR?" H 1100 1100 50  0001 C CNN
F 1 "+5VD" H 1100 1390 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59D2C163
P 1600 1900
F 0 "#PWR?" H 1600 1650 50  0001 C CNN
F 1 "GND" H 1600 1750 50  0000 C CNN
F 2 "" H 1600 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59D2C38E
P 8200 4650
F 0 "#PWR?" H 8200 4400 50  0001 C CNN
F 1 "GND" H 8200 4500 50  0000 C CNN
F 2 "" H 8200 4650 50  0001 C CNN
F 3 "" H 8200 4650 50  0001 C CNN
	1    8200 4650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59D2C576
P 2300 7100
F 0 "C?" H 2325 7200 50  0000 L CNN
F 1 "0.1uF" H 2325 7000 50  0000 L CNN
F 2 "" H 2338 6950 50  0001 C CNN
F 3 "" H 2300 7100 50  0001 C CNN
	1    2300 7100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59D2C5C7
P 2300 6700
F 0 "C?" V 2350 6800 50  0000 L CNN
F 1 "0.1uF" V 2350 6450 50  0000 L CNN
F 2 "" H 2338 6550 50  0001 C CNN
F 3 "" H 2300 6700 50  0001 C CNN
	1    2300 6700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 59D2CD58
P 2000 6500
F 0 "R?" V 1900 6500 50  0000 C CNN
F 1 "8.2K" V 2000 6500 50  0000 C CNN
F 2 "" V 1930 6500 50  0001 C CNN
F 3 "" H 2000 6500 50  0001 C CNN
	1    2000 6500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59D2CDC5
P 2350 6400
F 0 "R?" V 2430 6400 50  0000 C CNN
F 1 "20K" V 2350 6400 50  0000 C CNN
F 2 "" V 2280 6400 50  0001 C CNN
F 3 "" H 2350 6400 50  0001 C CNN
	1    2350 6400
	0    -1   -1   0   
$EndComp
Text Label 1050 6900 0    60   ~ 0
A-
Text Label 1050 7100 0    60   ~ 0
A+
$Comp
L MMBT4403* Q?
U 1 1 59D40C06
P 2650 5900
F 0 "Q?" H 2249 6201 50  0000 L BNN
F 1 "MMBT4403*" H 2249 6100 50  0000 L BNN
F 2 "SOT23-BEC" H 2650 5900 50  0001 L BNN
F 3 "SOT-23-3 Fairchild Semiconductor" H 2650 5900 50  0001 L BNN
F 4 "Fairchild Semiconductor" H 2650 5900 50  0001 L BNN "MF"
F 5 "MMBT4403" H 2650 5900 50  0001 L BNN "MP"
F 6 "0.05 USD" H 2650 5900 50  0001 L BNN "Price"
F 7 "This device is designed for use as a general purpose amplifier and switch requiring collector currents to 500 mA." H 2650 5900 50  0001 L BNN "Description"
F 8 "Good" H 2650 5900 50  0001 L BNN "Availability"
	1    2650 5900
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR?
U 1 1 59D40FFB
P 2850 5650
F 0 "#PWR?" H 2850 5500 50  0001 C CNN
F 1 "+5VA" H 2850 5790 50  0000 C CNN
F 2 "" H 2850 5650 50  0001 C CNN
F 3 "" H 2850 5650 50  0001 C CNN
	1    2850 5650
	1    0    0    -1  
$EndComp
Text Label 5100 6700 2    60   ~ 0
AMP_SCK
Text Label 5100 6600 2    60   ~ 0
AMP_DAT
$Comp
L GND #PWR?
U 1 1 59D41A8F
P 4050 6400
F 0 "#PWR?" H 4050 6150 50  0001 C CNN
F 1 "GND" H 4050 6250 50  0000 C CNN
F 2 "" H 4050 6400 50  0001 C CNN
F 3 "" H 4050 6400 50  0001 C CNN
	1    4050 6400
	1    0    0    -1  
$EndComp
NoConn ~ 3950 6500
$Comp
L +5VD #PWR?
U 1 1 59D41C19
P 4000 5700
F 0 "#PWR?" H 4000 5550 50  0001 C CNN
F 1 "+5VD" H 4000 5840 50  0000 C CNN
F 2 "" H 4000 5700 50  0001 C CNN
F 3 "" H 4000 5700 50  0001 C CNN
	1    4000 5700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59D41C84
P 4150 6050
F 0 "R?" V 4230 6050 50  0000 C CNN
F 1 "10K" V 4150 6050 50  0000 C CNN
F 2 "" V 4080 6050 50  0001 C CNN
F 3 "" H 4150 6050 50  0001 C CNN
	1    4150 6050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59D41E52
P 4350 6250
F 0 "R?" V 4430 6250 50  0000 C CNN
F 1 "0" V 4350 6250 50  0000 C CNN
F 2 "" V 4280 6250 50  0001 C CNN
F 3 "" H 4350 6250 50  0001 C CNN
	1    4350 6250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59D41FAF
P 4350 6400
F 0 "R?" V 4430 6400 50  0000 C CNN
F 1 "0" V 4350 6400 50  0000 C CNN
F 2 "" V 4280 6400 50  0001 C CNN
F 3 "" H 4350 6400 50  0001 C CNN
	1    4350 6400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59D420CE
P 4600 6400
F 0 "#PWR?" H 4600 6150 50  0001 C CNN
F 1 "GND" H 4600 6250 50  0000 C CNN
F 2 "" H 4600 6400 50  0001 C CNN
F 3 "" H 4600 6400 50  0001 C CNN
	1    4600 6400
	1    0    0    -1  
$EndComp
Text Label 5100 6250 2    60   ~ 0
AMP_RATE
$Comp
L R R?
U 1 1 59D423C0
P 1650 6900
F 0 "R?" V 1550 6900 50  0000 C CNN
F 1 "100" V 1650 6900 50  0000 C CNN
F 2 "" V 1580 6900 50  0001 C CNN
F 3 "" H 1650 6900 50  0001 C CNN
	1    1650 6900
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59D4242F
P 1650 7100
F 0 "R?" V 1550 7100 50  0000 C CNN
F 1 "100" V 1650 7100 50  0000 C CNN
F 2 "" V 1580 7100 50  0001 C CNN
F 3 "" H 1650 7100 50  0001 C CNN
	1    1650 7100
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59D429D2
P 1350 6700
F 0 "#PWR?" H 1350 6450 50  0001 C CNN
F 1 "GNDA" H 1350 6550 50  0000 C CNN
F 2 "" H 1350 6700 50  0001 C CNN
F 3 "" H 1350 6700 50  0001 C CNN
	1    1350 6700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59D42CD9
P 4200 7050
F 0 "C?" H 4225 7150 50  0000 L CNN
F 1 "0.1uF" H 4225 6950 50  0000 L CNN
F 2 "" H 4238 6900 50  0001 C CNN
F 3 "" H 4200 7050 50  0001 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59D42D4B
P 4600 6900
F 0 "R?" V 4500 6900 50  0000 C CNN
F 1 "100" V 4600 6900 50  0000 C CNN
F 2 "" V 4530 6900 50  0001 C CNN
F 3 "" H 4600 6900 50  0001 C CNN
	1    4600 6900
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59D42ED1
P 4600 7200
F 0 "R?" V 4500 7200 50  0000 C CNN
F 1 "100" V 4600 7200 50  0000 C CNN
F 2 "" V 4530 7200 50  0001 C CNN
F 3 "" H 4600 7200 50  0001 C CNN
	1    4600 7200
	0    1    1    0   
$EndComp
Text Label 5100 6900 2    60   ~ 0
B+
Text Label 5100 7100 2    60   ~ 0
B-
$Comp
L R R?
U 1 1 59D5643E
P 3550 1300
F 0 "R?" V 3630 1300 50  0000 C CNN
F 1 "10K" V 3550 1300 50  0000 C CNN
F 2 "" V 3480 1300 50  0001 C CNN
F 3 "" H 3550 1300 50  0001 C CNN
	1    3550 1300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59D56B5C
P 3550 1700
F 0 "C?" H 3575 1800 50  0000 L CNN
F 1 "0.1uF" H 3575 1600 50  0000 L CNN
F 2 "" H 3588 1550 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59D57373
P 3550 1950
F 0 "#PWR?" H 3550 1700 50  0001 C CNN
F 1 "GND" H 3550 1800 50  0000 C CNN
F 2 "" H 3550 1950 50  0001 C CNN
F 3 "" H 3550 1950 50  0001 C CNN
	1    3550 1950
	1    0    0    -1  
$EndComp
$Comp
L STM32F103C8Tx U?
U 1 1 59D58D71
P 8200 2700
F 0 "U?" H 6100 4450 50  0000 L BNN
F 1 "STM32F103C8Tx" H 10500 4325 50  0000 R BNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 10500 4275 50  0001 R TNN
F 3 "" H 8900 2700 50  0001 C CNN
	1    8200 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR?
U 1 1 59DA749D
P 8400 700
F 0 "#PWR?" H 8400 550 50  0001 C CNN
F 1 "+3.3VA" H 8400 840 50  0000 C CNN
F 2 "" H 8400 700 50  0001 C CNN
F 3 "" H 8400 700 50  0001 C CNN
	1    8400 700 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59DA7698
P 8100 700
F 0 "#PWR?" H 8100 550 50  0001 C CNN
F 1 "+3.3V" H 8100 840 50  0000 C CNN
F 2 "" H 8100 700 50  0001 C CNN
F 3 "" H 8100 700 50  0001 C CNN
	1    8100 700 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59DA7B75
P 2400 1400
F 0 "#PWR?" H 2400 1250 50  0001 C CNN
F 1 "+3.3V" H 2400 1540 50  0000 C CNN
F 2 "" H 2400 1400 50  0001 C CNN
F 3 "" H 2400 1400 50  0001 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59DA7CCD
P 3550 1050
F 0 "#PWR?" H 3550 900 50  0001 C CNN
F 1 "+3.3V" H 3550 1190 50  0000 C CNN
F 2 "" H 3550 1050 50  0001 C CNN
F 3 "" H 3550 1050 50  0001 C CNN
	1    3550 1050
	1    0    0    -1  
$EndComp
Text Notes 3100 850  0    60   ~ 0
Reset\nShort these two pads to\nreset the board.
$Comp
L GND #PWR?
U 1 1 59DA866B
P 8400 4650
F 0 "#PWR?" H 8400 4400 50  0001 C CNN
F 1 "GND" H 8400 4500 50  0000 C CNN
F 2 "" H 8400 4650 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4650
	1    0    0    -1  
$EndComp
Text Label 4000 1500 2    60   ~ 0
NRST
$Comp
L R R?
U 1 1 59DA9389
P 5750 2150
F 0 "R?" V 5650 2150 50  0000 C CNN
F 1 "10K" V 5750 2150 50  0000 C CNN
F 2 "" V 5680 2150 50  0001 C CNN
F 3 "" H 5750 2150 50  0001 C CNN
	1    5750 2150
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 59DA93EA
P 5350 2150
F 0 "D?" H 5250 2050 50  0000 C CNN
F 1 "LED" H 5400 2050 50  0000 C CNN
F 2 "" H 5350 2150 50  0001 C CNN
F 3 "" H 5350 2150 50  0001 C CNN
	1    5350 2150
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59DA9457
P 5050 2150
F 0 "#PWR?" H 5050 2000 50  0001 C CNN
F 1 "+3.3V" H 5050 2290 50  0000 C CNN
F 2 "" H 5050 2150 50  0001 C CNN
F 3 "" H 5050 2150 50  0001 C CNN
	1    5050 2150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J?
U 1 1 59DA9A62
P 1000 2900
F 0 "J?" H 1000 3100 50  0000 C CNN
F 1 "Conn_01x04" H 850 2600 50  0001 C CNN
F 2 "" H 1000 2900 50  0001 C CNN
F 3 "" H 1000 2900 50  0001 C CNN
	1    1000 2900
	-1   0    0    1   
$EndComp
Text Notes 950  2600 0    60   ~ 0
JTAG
Text Label 5550 1300 0    60   ~ 0
NRST
$Comp
L SW_SPST SW?
U 1 1 5A0CAEDF
P 5450 1500
F 0 "SW?" H 5450 1625 50  0000 C CNN
F 1 "SW_SPST" H 5700 1600 50  0001 C CNN
F 2 "" H 5450 1500 50  0001 C CNN
F 3 "" H 5450 1500 50  0001 C CNN
	1    5450 1500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A0CAF4A
P 5050 1500
F 0 "#PWR?" H 5050 1350 50  0001 C CNN
F 1 "+3.3V" H 5050 1640 50  0000 C CNN
F 2 "" H 5050 1500 50  0001 C CNN
F 3 "" H 5050 1500 50  0001 C CNN
	1    5050 1500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A0CAF97
P 5400 1650
F 0 "R?" V 5480 1650 50  0000 C CNN
F 1 "10K" V 5400 1650 50  0000 C CNN
F 2 "" V 5330 1650 50  0001 C CNN
F 3 "" H 5400 1650 50  0001 C CNN
	1    5400 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0CB276
P 5050 1650
F 0 "#PWR?" H 5050 1400 50  0001 C CNN
F 1 "GND" H 5050 1500 50  0000 C CNN
F 2 "" H 5050 1650 50  0001 C CNN
F 3 "" H 5050 1650 50  0001 C CNN
	1    5050 1650
	1    0    0    -1  
$EndComp
Text Label 5550 1900 0    60   ~ 0
OSCIN
Text Label 5550 2000 0    60   ~ 0
OSCOUT
Text Notes 4200 1600 0    60   ~ 0
To program the\nFlash set BOOT0\nswitch high.
Text Notes 4200 2150 0    60   ~ 0
Built-in led on\nPC13 active high.
$Comp
L +3.3V #PWR?
U 1 1 5A0CC2E2
P 1450 2700
F 0 "#PWR?" H 1450 2550 50  0001 C CNN
F 1 "+3.3V" H 1450 2840 50  0000 C CNN
F 2 "" H 1450 2700 50  0001 C CNN
F 3 "" H 1450 2700 50  0001 C CNN
	1    1450 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0CC332
P 1450 3000
F 0 "#PWR?" H 1450 2750 50  0001 C CNN
F 1 "GND" H 1450 2850 50  0000 C CNN
F 2 "" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3000 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
Text Label 1900 2800 2    60   ~ 0
SWDIO
Text Label 1900 2900 2    60   ~ 0
SWDCLK
$Comp
L GND #PWR?
U 1 1 5A0CD234
P 5050 2800
F 0 "#PWR?" H 5050 2550 50  0001 C CNN
F 1 "GND" H 5050 2650 50  0000 C CNN
F 2 "" H 5050 2800 50  0001 C CNN
F 3 "" H 5050 2800 50  0001 C CNN
	1    5050 2800
	1    0    0    -1  
$EndComp
Text Label 11050 3300 2    60   ~ 0
SWDIO
Text Label 11050 3400 2    60   ~ 0
SWDCLK
$Comp
L USB_OTG J?
U 1 1 5A0CE770
P 1150 4050
F 0 "J?" H 950 4400 50  0000 L CNN
F 1 "USB_OTG" H 950 4400 50  0001 L CNN
F 2 "" H 1300 4000 50  0001 C CNN
F 3 "" H 1300 4000 50  0001 C CNN
	1    1150 4050
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR?
U 1 1 5A0CE7E3
P 1600 3850
F 0 "#PWR?" H 1600 3700 50  0001 C CNN
F 1 "+5VD" H 1600 3990 50  0000 C CNN
F 2 "" H 1600 3850 50  0001 C CNN
F 3 "" H 1600 3850 50  0001 C CNN
	1    1600 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0CE96E
P 1600 4450
F 0 "#PWR?" H 1600 4200 50  0001 C CNN
F 1 "GND" H 1600 4300 50  0000 C CNN
F 2 "" H 1600 4450 50  0001 C CNN
F 3 "" H 1600 4450 50  0001 C CNN
	1    1600 4450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A0CF8C5
P 1700 4050
F 0 "R?" V 1600 4050 50  0000 C CNN
F 1 "20" V 1700 4050 50  0000 C CNN
F 2 "" V 1630 4050 50  0001 C CNN
F 3 "" H 1700 4050 50  0001 C CNN
	1    1700 4050
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A0CF9B1
P 1700 4150
F 0 "R?" V 1780 4150 50  0000 C CNN
F 1 "20" V 1700 4150 50  0000 C CNN
F 2 "" V 1630 4150 50  0001 C CNN
F 3 "" H 1700 4150 50  0001 C CNN
	1    1700 4150
	0    1    1    0   
$EndComp
Text Label 11150 3200 2    60   ~ 0
USB_DP
Text Label 11150 3100 2    60   ~ 0
USB_DM
Text Label 2550 4150 2    60   ~ 0
USB_DM
Text Label 2550 4050 2    60   ~ 0
USB_DP
$Comp
L R R?
U 1 1 5A0D4E2B
P 1950 3850
F 0 "R?" V 2030 3850 50  0000 C CNN
F 1 "1.8K" V 1950 3850 50  0000 C CNN
F 2 "" V 1880 3850 50  0001 C CNN
F 3 "" H 1950 3850 50  0001 C CNN
	1    1950 3850
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A0D5C87
P 3450 2900
F 0 "C?" H 3475 3000 50  0000 L CNN
F 1 "20pF" H 3475 2800 50  0000 L CNN
F 2 "" H 3488 2750 50  0001 C CNN
F 3 "" H 3450 2900 50  0001 C CNN
	1    3450 2900
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5A0D5D96
P 3450 3400
F 0 "C?" H 3475 3500 50  0000 L CNN
F 1 "20pF" H 3475 3300 50  0000 L CNN
F 2 "" H 3488 3250 50  0001 C CNN
F 3 "" H 3450 3400 50  0001 C CNN
	1    3450 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0D61E7
P 3100 3200
F 0 "#PWR?" H 3100 2950 50  0001 C CNN
F 1 "GND" H 3100 3050 50  0000 C CNN
F 2 "" H 3100 3200 50  0001 C CNN
F 3 "" H 3100 3200 50  0001 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y?
U 1 1 5A0D63B2
P 3800 3150
F 0 "Y?" H 3800 3300 50  0000 C CNN
F 1 "8M" H 3800 3000 50  0000 C CNN
F 2 "" H 3800 3150 50  0001 C CNN
F 3 "" H 3800 3150 50  0001 C CNN
	1    3800 3150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A0D64A2
P 4100 3150
F 0 "R?" V 4180 3150 50  0000 C CNN
F 1 "1M" V 4100 3150 50  0000 C CNN
F 2 "" V 4030 3150 50  0001 C CNN
F 3 "" H 4100 3150 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
Text Label 4550 2900 2    60   ~ 0
OSCIN
Text Label 4550 3400 2    60   ~ 0
OSCOUT
$Comp
L C C?
U 1 1 5A0D758A
P 3450 3950
F 0 "C?" H 3475 4050 50  0000 L CNN
F 1 "100pF" H 3475 3850 50  0000 L CNN
F 2 "" H 3488 3800 50  0001 C CNN
F 3 "" H 3450 3950 50  0001 C CNN
	1    3450 3950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5A0D7591
P 3450 4450
F 0 "C?" H 3475 4550 50  0000 L CNN
F 1 "100pF" H 3475 4350 50  0000 L CNN
F 2 "" H 3488 4300 50  0001 C CNN
F 3 "" H 3450 4450 50  0001 C CNN
	1    3450 4450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0D759C
P 3100 4250
F 0 "#PWR?" H 3100 4000 50  0001 C CNN
F 1 "GND" H 3100 4100 50  0000 C CNN
F 2 "" H 3100 4250 50  0001 C CNN
F 3 "" H 3100 4250 50  0001 C CNN
	1    3100 4250
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y?
U 1 1 5A0D75A5
P 3800 4200
F 0 "Y?" H 3800 4350 50  0000 C CNN
F 1 "32.768K" H 3800 4050 50  0000 C CNN
F 2 "" H 3800 4200 50  0001 C CNN
F 3 "" H 3800 4200 50  0001 C CNN
	1    3800 4200
	0    1    1    0   
$EndComp
Text Label 4550 4450 2    60   ~ 0
RCC_OSC32_IN
Text Label 4550 3950 2    60   ~ 0
RCC_OSC32_OUT
Text Label 5200 2400 0    60   ~ 0
RCC_OSC32_OUT
Text Label 5200 2300 0    60   ~ 0
RCC_OSC32_IN
Text Notes 2950 2600 0    60   ~ 0
Clocking
Text Notes 3100 2800 0    60   ~ 0
Main
Text Notes 3100 3850 0    60   ~ 0
Low-Power
Text Notes 950  3650 0    60   ~ 0
USB
Text Notes 1050 1000 0    60   ~ 0
Power
Text Notes 1050 5350 0    60   ~ 0
Strain Gauge\nPG INA
$Comp
L C C?
U 1 1 5A0DF636
P 1150 1650
F 0 "C?" H 1175 1750 50  0000 L CNN
F 1 "1uF" H 1175 1550 50  0000 L CNN
F 2 "" H 1188 1500 50  0001 C CNN
F 3 "" H 1150 1650 50  0001 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E02D1
P 2050 1600
F 0 "C?" H 2075 1700 50  0000 L CNN
F 1 "1uF" H 2075 1500 50  0000 L CNN
F 2 "" H 2088 1450 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E0373
P 2250 1600
F 0 "C?" H 2275 1700 50  0000 L CNN
F 1 "100nF" H 2275 1500 50  0000 L CNN
F 2 "" H 2288 1450 50  0001 C CNN
F 3 "" H 2250 1600 50  0001 C CNN
	1    2250 1600
	1    0    0    -1  
$EndComp
Text Notes 7100 5350 0    60   ~ 0
Power Supply\nFiltering
$Comp
L +5VD #PWR?
U 1 1 5A0E1780
P 7400 5650
F 0 "#PWR?" H 7400 5500 50  0001 C CNN
F 1 "+5VD" H 7400 5790 50  0000 C CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "" H 7400 5650 50  0001 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A0E1DEB
P 9600 5650
F 0 "#PWR?" H 9600 5500 50  0001 C CNN
F 1 "+3.3V" H 9600 5790 50  0000 C CNN
F 2 "" H 9600 5650 50  0001 C CNN
F 3 "" H 9600 5650 50  0001 C CNN
	1    9600 5650
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR?
U 1 1 5A0E275B
P 10700 5650
F 0 "#PWR?" H 10700 5500 50  0001 C CNN
F 1 "+3.3VA" H 10700 5790 50  0000 C CNN
F 2 "" H 10700 5650 50  0001 C CNN
F 3 "" H 10700 5650 50  0001 C CNN
	1    10700 5650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E3A4D
P 8000 5950
F 0 "C?" H 8025 6050 50  0000 L CNN
F 1 "4.7uF" H 8025 5850 50  0000 L CNN
F 2 "" H 8038 5800 50  0001 C CNN
F 3 "" H 8000 5950 50  0001 C CNN
	1    8000 5950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E3DA7
P 8300 5950
F 0 "C?" H 8325 6050 50  0000 L CNN
F 1 "1uF" H 8325 5850 50  0000 L CNN
F 2 "" H 8338 5800 50  0001 C CNN
F 3 "" H 8300 5950 50  0001 C CNN
	1    8300 5950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E3ED4
P 10200 5950
F 0 "C?" H 10225 6050 50  0000 L CNN
F 1 "4.7uF" H 10225 5850 50  0000 L CNN
F 2 "" H 10238 5800 50  0001 C CNN
F 3 "" H 10200 5950 50  0001 C CNN
	1    10200 5950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E404C
P 10500 5950
F 0 "C?" H 10525 6050 50  0000 L CNN
F 1 "1uF" H 10525 5850 50  0000 L CNN
F 2 "" H 10538 5800 50  0001 C CNN
F 3 "" H 10500 5950 50  0001 C CNN
	1    10500 5950
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR?
U 1 1 5A0E40DF
P 8500 5650
F 0 "#PWR?" H 8500 5500 50  0001 C CNN
F 1 "+5VA" H 8500 5790 50  0000 C CNN
F 2 "" H 8500 5650 50  0001 C CNN
F 3 "" H 8500 5650 50  0001 C CNN
	1    8500 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0E457A
P 7950 6200
F 0 "#PWR?" H 7950 5950 50  0001 C CNN
F 1 "GND" H 7950 6050 50  0000 C CNN
F 2 "" H 7950 6200 50  0001 C CNN
F 3 "" H 7950 6200 50  0001 C CNN
	1    7950 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0E4600
P 10150 6200
F 0 "#PWR?" H 10150 5950 50  0001 C CNN
F 1 "GND" H 10150 6050 50  0000 C CNN
F 2 "" H 10150 6200 50  0001 C CNN
F 3 "" H 10150 6200 50  0001 C CNN
	1    10150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1300 2000 1300
Wire Wire Line
	2000 1300 2000 1400
Wire Wire Line
	1900 1400 2400 1400
Wire Wire Line
	1100 1250 1100 1400
Wire Wire Line
	1100 1400 1300 1400
Connection ~ 2000 1400
Wire Wire Line
	1600 1700 1600 1900
Wire Wire Line
	8100 700  8100 900 
Wire Wire Line
	8100 800  8300 800 
Wire Wire Line
	8200 800  8200 900 
Connection ~ 8100 800 
Wire Wire Line
	8300 800  8300 900 
Connection ~ 8200 800 
Wire Wire Line
	8100 4500 8100 4600
Wire Wire Line
	8100 4600 8300 4600
Wire Wire Line
	8200 4500 8200 4650
Connection ~ 8200 4600
Wire Wire Line
	8300 4600 8300 4500
Wire Wire Line
	2450 6700 2850 6700
Wire Wire Line
	2300 6900 2300 6950
Wire Wire Line
	2300 7250 2300 7200
Wire Wire Line
	2100 7250 2550 7250
Wire Wire Line
	2550 7250 2550 6900
Wire Wire Line
	2550 6900 2850 6900
Wire Wire Line
	1800 6900 2450 6900
Connection ~ 2300 6900
Wire Wire Line
	2100 7250 2100 7100
Wire Wire Line
	2100 7100 1800 7100
Connection ~ 2300 7250
Wire Wire Line
	2850 6600 2100 6600
Wire Wire Line
	2100 6600 2100 6700
Wire Wire Line
	1350 6700 2150 6700
Connection ~ 2100 6700
Wire Wire Line
	2850 6800 2450 6800
Wire Wire Line
	2450 6800 2450 6900
Wire Wire Line
	2150 6500 2850 6500
Wire Wire Line
	2200 6400 2200 6400
Wire Wire Line
	2200 6400 2200 6500
Connection ~ 2200 6500
Wire Wire Line
	1850 6500 1800 6500
Wire Wire Line
	1800 6500 1800 6700
Connection ~ 1800 6700
Wire Wire Line
	2500 6400 2850 6400
Wire Wire Line
	2550 5900 2550 6300
Wire Wire Line
	2550 6300 2850 6300
Wire Wire Line
	2750 6100 2750 6400
Wire Wire Line
	2750 5700 2850 5700
Wire Wire Line
	2850 5650 2850 6200
Connection ~ 2750 6400
Connection ~ 2850 5700
Wire Wire Line
	3950 6600 5100 6600
Wire Wire Line
	3950 6700 5100 6700
Wire Wire Line
	4050 6400 3950 6400
Wire Wire Line
	4000 5700 4000 6200
Wire Wire Line
	4000 6200 3950 6200
Wire Wire Line
	4150 5900 4150 5850
Wire Wire Line
	4150 5850 4000 5850
Connection ~ 4000 5850
Wire Wire Line
	4050 6250 4200 6250
Wire Wire Line
	4150 6200 4150 6400
Connection ~ 4150 6250
Wire Wire Line
	4150 6400 4200 6400
Wire Wire Line
	4500 6400 4600 6400
Wire Wire Line
	4050 6250 4050 6300
Wire Wire Line
	4050 6300 3950 6300
Wire Wire Line
	4500 6250 5100 6250
Wire Wire Line
	1500 7100 1050 7100
Wire Wire Line
	1500 6900 1050 6900
Wire Wire Line
	3950 6800 4150 6800
Wire Wire Line
	4150 6800 4150 6900
Wire Wire Line
	4150 6900 4450 6900
Connection ~ 4200 6900
Wire Wire Line
	4050 7200 4450 7200
Wire Wire Line
	4750 6900 5100 6900
Wire Wire Line
	4750 7200 4800 7200
Wire Wire Line
	4800 7200 4800 7100
Wire Wire Line
	4800 7100 5100 7100
Wire Wire Line
	3550 1450 3550 1550
Wire Wire Line
	3550 1950 3550 1850
Wire Wire Line
	3550 1050 3550 1150
Wire Wire Line
	3950 6900 4050 6900
Wire Wire Line
	4050 6900 4050 7200
Connection ~ 4200 7200
Wire Wire Line
	8400 700  8400 900 
Wire Wire Line
	8400 4650 8400 4500
Wire Wire Line
	3200 1500 4000 1500
Connection ~ 3550 1500
Wire Wire Line
	6000 1300 5550 1300
Wire Wire Line
	5050 2150 5200 2150
Wire Wire Line
	5500 2150 5600 2150
Wire Wire Line
	3550 1850 3200 1850
Wire Wire Line
	5050 1500 5250 1500
Wire Wire Line
	5650 1500 6000 1500
Wire Wire Line
	5550 1650 5800 1650
Wire Wire Line
	5800 1650 5800 1500
Connection ~ 5800 1500
Wire Wire Line
	5050 1650 5250 1650
Wire Wire Line
	6000 1900 5550 1900
Wire Wire Line
	6000 2000 5550 2000
Wire Wire Line
	1200 2700 1450 2700
Wire Wire Line
	1200 3000 1450 3000
Wire Wire Line
	1200 2800 1900 2800
Wire Wire Line
	1200 2900 1900 2900
Wire Wire Line
	5050 2800 6000 2800
Wire Wire Line
	10650 3300 11050 3300
Wire Wire Line
	10650 3400 11050 3400
Wire Wire Line
	1150 4450 1600 4450
Wire Wire Line
	1450 4250 1600 4250
Wire Wire Line
	1600 4250 1600 4450
Wire Wire Line
	1450 3850 1800 3850
Wire Wire Line
	1450 4050 1550 4050
Wire Wire Line
	1550 4150 1450 4150
Wire Wire Line
	10650 3200 11150 3200
Wire Wire Line
	10650 3100 11150 3100
Wire Wire Line
	1850 4050 2550 4050
Wire Wire Line
	1850 4150 2550 4150
Connection ~ 1600 3850
Wire Wire Line
	2100 3850 2100 4050
Connection ~ 2100 4050
Wire Wire Line
	3300 2900 3250 2900
Wire Wire Line
	3250 2900 3250 3400
Wire Wire Line
	3250 3400 3300 3400
Wire Wire Line
	3100 3200 3100 3150
Wire Wire Line
	3100 3150 3250 3150
Connection ~ 3250 3150
Wire Wire Line
	3600 2900 4550 2900
Wire Wire Line
	3800 3000 3800 2900
Connection ~ 3800 2900
Wire Wire Line
	4100 3000 4100 2900
Connection ~ 4100 2900
Wire Wire Line
	3600 3400 4550 3400
Wire Wire Line
	4100 3300 4100 3400
Connection ~ 4100 3400
Wire Wire Line
	3800 3300 3800 3400
Connection ~ 3800 3400
Wire Wire Line
	3300 3950 3250 3950
Wire Wire Line
	3250 3950 3250 4450
Wire Wire Line
	3250 4450 3300 4450
Wire Wire Line
	3100 4250 3100 4200
Wire Wire Line
	3100 4200 3250 4200
Connection ~ 3250 4200
Wire Wire Line
	3600 3950 4550 3950
Wire Wire Line
	3800 4050 3800 3950
Connection ~ 3800 3950
Wire Wire Line
	3600 4450 4550 4450
Wire Wire Line
	3800 4350 3800 4450
Connection ~ 3800 4450
Wire Wire Line
	6000 2300 5200 2300
Wire Wire Line
	6000 2400 5200 2400
Wire Wire Line
	5900 2150 5950 2150
Wire Wire Line
	5950 2150 5950 2200
Wire Wire Line
	5950 2200 6000 2200
Wire Notes Line
	2800 4950 2800 500 
Wire Notes Line
	500  4950 11200 4950
Wire Notes Line
	500  2300 4750 2300
Wire Notes Line
	4750 2300 4750 4950
Wire Wire Line
	1150 1500 1150 1400
Connection ~ 1150 1400
Wire Wire Line
	1150 1850 2250 1850
Connection ~ 1600 1850
Wire Wire Line
	1150 1850 1150 1800
Wire Wire Line
	2050 1850 2050 1750
Wire Wire Line
	2250 1850 2250 1750
Connection ~ 2050 1850
Wire Wire Line
	2250 1450 2250 1400
Connection ~ 2250 1400
Wire Wire Line
	2050 1450 2050 1400
Connection ~ 2050 1400
Wire Notes Line
	6950 4950 6950 6450
Wire Wire Line
	8000 5800 8000 5750
Wire Wire Line
	7800 5750 8500 5750
Wire Wire Line
	8300 5750 8300 5800
Wire Wire Line
	8500 5750 8500 5650
Connection ~ 8300 5750
Wire Wire Line
	10200 5800 10200 5750
Wire Wire Line
	10000 5750 10700 5750
Wire Wire Line
	10500 5750 10500 5800
Wire Wire Line
	10700 5750 10700 5650
Connection ~ 10500 5750
Wire Wire Line
	7950 6200 7950 6150
Wire Wire Line
	7500 6150 8300 6150
Wire Wire Line
	8300 6150 8300 6100
Wire Wire Line
	8000 6100 8000 6150
Connection ~ 8000 6150
Wire Wire Line
	10200 6100 10200 6150
Wire Wire Line
	9700 6150 10500 6150
Wire Wire Line
	10150 6150 10150 6200
Wire Wire Line
	10500 6150 10500 6100
Connection ~ 10200 6150
$Comp
L Ferrite_Bead_Small L?
U 1 1 5A0E6102
P 7700 5750
F 0 "L?" H 7775 5800 50  0000 L CNN
F 1 "Ferrite_Bead_Small" H 7775 5700 50  0001 L CNN
F 2 "" V 7630 5750 50  0001 C CNN
F 3 "" H 7700 5750 50  0001 C CNN
	1    7700 5750
	0    1    1    0   
$EndComp
$Comp
L Ferrite_Bead_Small L?
U 1 1 5A0E61BB
P 9900 5750
F 0 "L?" H 9975 5800 50  0000 L CNN
F 1 "Ferrite_Bead_Small" H 9975 5700 50  0001 L CNN
F 2 "" V 9830 5750 50  0001 C CNN
F 3 "" H 9900 5750 50  0001 C CNN
	1    9900 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 5650 7400 5750
Wire Wire Line
	7400 5750 7600 5750
Connection ~ 8000 5750
Wire Wire Line
	9600 5650 9600 5750
Wire Wire Line
	9600 5750 9800 5750
Connection ~ 10200 5750
$Comp
L C C?
U 1 1 5A0E6947
P 7500 5950
F 0 "C?" H 7525 6050 50  0000 L CNN
F 1 "4.7uF" H 7525 5850 50  0000 L CNN
F 2 "" H 7538 5800 50  0001 C CNN
F 3 "" H 7500 5950 50  0001 C CNN
	1    7500 5950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0E69EB
P 9700 5950
F 0 "C?" H 9725 6050 50  0000 L CNN
F 1 "4.7uF" H 9725 5850 50  0000 L CNN
F 2 "" H 9738 5800 50  0001 C CNN
F 3 "" H 9700 5950 50  0001 C CNN
	1    9700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5800 7500 5750
Connection ~ 7500 5750
Wire Wire Line
	7500 6100 7500 6150
Connection ~ 7950 6150
Wire Wire Line
	9700 5800 9700 5750
Connection ~ 9700 5750
Wire Wire Line
	9700 6100 9700 6150
Connection ~ 10150 6150
$EndSCHEMATC
