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
L local_symbols:SC16IS752IPW_SPI U1
U 1 1 5E1EA07F
P 6050 3050
F 0 "U1" H 6075 3965 50  0000 C CNN
F 1 "SC16IS752IPW" H 6075 3874 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 6050 2150 50  0001 C CNN
F 3 "https://au.mouser.com/datasheet/2/302/SC16IS752_SC16IS762-1127856.pdf" H 5850 3250 50  0001 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:PCA82C250 U3
U 1 1 5E1EEB2A
P 5050 3100
F 0 "U3" H 5800 2033 50  0000 C CNN
F 1 "PCA82C250" H 5800 2124 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5800 2550 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA82C251.pdf" H 5800 2550 50  0001 C CNN
	1    5050 3100
	-1   0    0    1   
$EndComp
$Comp
L local_symbols:Conn_02x06_SAAB_SID_HPD J1
U 1 1 5E210180
P 1700 2600
F 0 "J1" H 1700 3065 50  0000 C CNN
F 1 "ICM_CONN" H 1700 2974 50  0000 C CNN
F 2 "sid-board:SAAB_SID_CONNECTOR_HEADER" H 1450 2600 50  0001 C CNN
F 3 "~" H 1450 2600 50  0001 C CNN
	1    1700 2600
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:Conn_02x06_SAAB_SID_HPD J2
U 1 1 5E211BEE
P 1700 3600
F 0 "J2" H 1700 4065 50  0000 C CNN
F 1 "SID_CONN" H 1700 3974 50  0000 C CNN
F 2 "sid-board:SAAB_SID_CONNECTOR_HEADER" H 1450 3600 50  0001 C CNN
F 3 "~" H 1450 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Text GLabel 1250 2800 0    50   Input ~ 0
VIN
Text GLabel 1250 2500 0    50   Input ~ 0
GND
Text GLabel 1700 5250 0    50   Input ~ 0
GND
Text GLabel 1400 4950 0    50   Input ~ 0
VIN
Text GLabel 3400 4950 2    50   Input ~ 0
VDD_5V
Text GLabel 1250 3500 0    50   Input ~ 0
GND
Text GLabel 1250 3800 0    50   Input ~ 0
VIN
Wire Wire Line
	1250 2900 1000 2900
Wire Wire Line
	1000 2900 1000 3900
Wire Wire Line
	1000 3900 1250 3900
Wire Wire Line
	1250 3600 950  3600
Wire Wire Line
	950  3600 950  2600
Wire Wire Line
	950  2600 1250 2600
$Comp
L local_symbols:PCA82C250 U4
U 1 1 5E1F1E39
P 5050 4100
F 0 "U4" H 5800 3033 50  0000 C CNN
F 1 "PCA82C250" H 5800 3124 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5800 3550 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA82C251.pdf" H 5800 3550 50  0001 C CNN
	1    5050 4100
	-1   0    0    1   
$EndComp
Text GLabel 3900 2300 0    50   Input ~ 0
GND
Text GLabel 3900 3300 0    50   Input ~ 0
GND
Text GLabel 4700 3500 2    50   Input ~ 0
GND
Text GLabel 4700 2500 2    50   Input ~ 0
GND
Text GLabel 4700 3900 2    50   Input ~ 0
VDD_5V
Text GLabel 4700 2900 2    50   Input ~ 0
VDD_5V
$Comp
L Device:C_Small C1
U 1 1 5E2BAD29
P 3300 5250
F 0 "C1" V 3071 5250 50  0000 C CNN
F 1 "100nF" V 3162 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 5250 50  0001 C CNN
F 3 "~" H 3300 5250 50  0001 C CNN
	1    3300 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 3300 3900 3300
Wire Wire Line
	5450 3100 5500 3100
Wire Wire Line
	5450 3200 5450 3700
Wire Wire Line
	6300 3200 6300 3000
Wire Wire Line
	6300 3000 6650 3000
Wire Wire Line
	5450 3200 5500 3200
Connection ~ 5500 3200
Wire Wire Line
	5500 3200 6300 3200
Text GLabel 4250 4700 3    50   Input ~ 0
VDD_5V
Text GLabel 4350 4700 3    50   Input ~ 0
GND
Text GLabel 4850 4700 3    50   Input ~ 0
GND
Text GLabel 4750 4700 3    50   Input ~ 0
VDD_3.3V
Text GLabel 5450 3200 0    50   Input ~ 0
GND
Text GLabel 5450 3100 0    50   Input ~ 0
VDD_3.3V
Wire Wire Line
	5500 3600 5400 3600
Wire Wire Line
	5400 3600 5400 3950
Wire Wire Line
	5400 3950 5650 3950
Wire Wire Line
	5650 3950 5650 4200
Wire Wire Line
	5500 3500 5350 3500
Wire Wire Line
	5350 3500 5350 4000
Wire Wire Line
	5350 4000 5550 4000
Wire Wire Line
	5550 4000 5550 4200
Wire Wire Line
	5500 3400 5300 3400
Wire Wire Line
	5300 3400 5300 4050
Wire Wire Line
	5300 4050 5450 4050
Wire Wire Line
	5450 4050 5450 4200
Wire Wire Line
	5500 3300 5250 3300
Wire Wire Line
	5250 3300 5250 4100
Wire Wire Line
	5250 4100 5350 4100
Wire Wire Line
	5350 4100 5350 4200
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5E308950
P 5450 4400
F 0 "J5" V 5604 4112 50  0000 R CNN
F 1 "SPI" V 5513 4112 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5450 4400 50  0001 C CNN
F 3 "~" H 5450 4400 50  0001 C CNN
	1    5450 4400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E30F0FD
P 4350 4500
F 0 "J3" V 4412 4544 50  0000 L CNN
F 1 "5V OUT" V 4503 4544 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4350 4500 50  0001 C CNN
F 3 "~" H 4350 4500 50  0001 C CNN
	1    4350 4500
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E310D87
P 4850 4500
F 0 "J4" V 4912 4544 50  0000 L CNN
F 1 "3.3V OUT" V 5003 4544 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4850 4500 50  0001 C CNN
F 3 "~" H 4850 4500 50  0001 C CNN
	1    4850 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 2800 6100 2800
Wire Wire Line
	6100 2800 6100 2850
Wire Wire Line
	6650 2900 6200 2900
$Comp
L Device:R_Small R1
U 1 1 5E32A99C
P 6650 3800
F 0 "R1" H 6709 3846 50  0000 L CNN
F 1 "1K" H 6709 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6650 3800 50  0001 C CNN
F 3 "~" H 6650 3800 50  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
Text GLabel 6650 3900 2    50   Input ~ 0
VDD_3.3V
Wire Wire Line
	4700 2700 4700 2600
Wire Wire Line
	4700 2600 5500 2600
Wire Wire Line
	4700 2350 5400 2350
Wire Wire Line
	5400 2350 5400 2700
Wire Wire Line
	5400 2700 5500 2700
Wire Wire Line
	6200 2900 6200 2950
Wire Wire Line
	5450 3700 5500 3700
Wire Wire Line
	4700 3700 5050 3700
Wire Wire Line
	5050 3700 5050 2950
Wire Wire Line
	5050 2950 6200 2950
Wire Wire Line
	4700 3300 5000 3300
Wire Wire Line
	5000 2850 6100 2850
Wire Wire Line
	5000 2850 5000 3300
Wire Wire Line
	3950 2300 3900 2300
Wire Wire Line
	4700 2300 4700 2350
Text GLabel 3100 5250 0    50   Input ~ 0
GND
Text GLabel 2000 4950 2    50   Input ~ 0
VDD_3.3V
Text Notes 1450 4450 0    50   ~ 0
TOTAL ESTIMATED MAX. CURRENT = 230mA\n3.3V U1 SUPPLY = 20mA peak (2x rated max)\n5V U3/U2 SUPPLY = 210mA peak (1.5x rated max)
$Comp
L Regulator_Linear:MCP1703A-3302_SOT223 U2
U 1 1 5E2845BD
P 1700 4950
F 0 "U2" H 1700 5192 50  0000 C CNN
F 1 "MCP1703A-3302_SOT223" H 1700 5101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1700 5150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 1700 4900 50  0001 C CNN
	1    1700 4950
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U5
U 1 1 5E285FEA
P 3100 4950
F 0 "U5" H 3100 5192 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 3100 5101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3100 5150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 3100 4900 50  0001 C CNN
	1    3100 4950
	1    0    0    -1  
$EndComp
Text GLabel 2800 4950 0    50   Input ~ 0
VIN
Text Notes 1400 4650 0    50   ~ 10
3.3V SUPPLY LDO
Text Notes 2800 4650 0    50   ~ 10
5V SUPPLY LDO
$Comp
L Device:Crystal Y1
U 1 1 5E2B8361
P 7400 3000
F 0 "Y1" H 7400 3268 50  0000 C CNN
F 1 "14.7456MHz" H 7400 3177 50  0000 C CNN
F 2 "sid-board:Euroquarts 14.7456MHz Crystal ±30ppm SMD 2-Pin 12.4 x 4.5 x 4.2mm" H 7400 3000 50  0001 C CNN
F 3 "~" H 7400 3000 50  0001 C CNN
	1    7400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E2B87B7
P 7400 3350
F 0 "R2" V 7204 3350 50  0000 C CNN
F 1 "1M" V 7295 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E2B9259
P 7250 3600
F 0 "C2" H 7342 3646 50  0000 L CNN
F 1 "18pF" H 7342 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7250 3600 50  0001 C CNN
F 3 "~" H 7250 3600 50  0001 C CNN
	1    7250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E2BA581
P 7550 3600
F 0 "C3" H 7642 3646 50  0000 L CNN
F 1 "18pF" H 7642 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7550 3600 50  0001 C CNN
F 3 "~" H 7550 3600 50  0001 C CNN
	1    7550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3000 7250 3350
Wire Wire Line
	7250 3350 7300 3350
Wire Wire Line
	7250 3350 7250 3500
Connection ~ 7250 3350
Wire Wire Line
	7550 3000 7550 3350
Wire Wire Line
	7550 3350 7500 3350
Wire Wire Line
	7250 3700 7550 3700
Wire Wire Line
	7550 3350 7550 3500
Connection ~ 7550 3350
Text GLabel 7400 3700 3    50   Input ~ 0
GND
Text GLabel 7550 3000 2    50   Input ~ 10
XTAL1
Text GLabel 7250 3000 0    50   Input ~ 10
XTAL2
Text GLabel 5500 2900 0    50   Input ~ 10
XTAL1
Text GLabel 5500 3000 0    50   Input ~ 10
XTAL2
$Comp
L Device:C_Small C4
U 1 1 5E29894F
P 1900 5250
F 0 "C4" V 1671 5250 50  0000 C CNN
F 1 "100nF" V 1762 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 5250 50  0001 C CNN
F 3 "~" H 1900 5250 50  0001 C CNN
	1    1900 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4950 2000 5250
Wire Wire Line
	1800 5250 1700 5250
Wire Wire Line
	3100 5250 3200 5250
Wire Wire Line
	3400 5250 3400 4950
Wire Wire Line
	2150 3600 2400 3600
Wire Wire Line
	2400 3600 2400 3000
Wire Wire Line
	2150 3700 2450 3700
Wire Wire Line
	2450 3700 2450 3100
Wire Wire Line
	3550 3100 3550 3700
Wire Wire Line
	3650 3600 3900 3600
Wire Wire Line
	3550 3700 3900 3700
Wire Wire Line
	2150 2600 3900 2600
Wire Wire Line
	2150 2700 3900 2700
Wire Wire Line
	3650 3000 3650 3600
Wire Wire Line
	2400 3000 3650 3000
Wire Wire Line
	2450 3100 3550 3100
$EndSCHEMATC