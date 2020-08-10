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
P 5500 1700
F 0 "U1" H 5525 2615 50  0000 C CNN
F 1 "SC16IS752IPW" H 5525 2524 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 5500 800 50  0001 C CNN
F 3 "https://au.mouser.com/datasheet/2/302/SC16IS752_SC16IS762-1127856.pdf" H 5300 1900 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:Conn_02x06_SAAB_SID_HPD ICM1
U 1 1 5E210180
P 1400 1400
F 0 "ICM1" H 1400 1865 50  0000 C CNN
F 1 "ICM_CONN" H 1400 1774 50  0000 C CNN
F 2 "sid-board:SAAB_SID_CONNECTOR_HEADER" H 1150 1400 50  0001 C CNN
F 3 "~" H 1150 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:Conn_02x06_SAAB_SID_HPD SID1
U 1 1 5E211BEE
P 1400 2400
F 0 "SID1" H 1400 2865 50  0000 C CNN
F 1 "SID_CONN" H 1400 2774 50  0000 C CNN
F 2 "sid-board:SAAB_SID_CONNECTOR_HEADER" H 1150 2400 50  0001 C CNN
F 3 "~" H 1150 2400 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
Text GLabel 950  1600 0    50   Input ~ 0
VIN
Text GLabel 950  1300 0    50   Input ~ 0
GND
Text GLabel 1200 5550 0    50   Input ~ 0
GND
Text GLabel 900  5250 0    50   Input ~ 0
VIN
Text GLabel 2900 5250 2    50   Input ~ 0
VDD_5V
Text GLabel 950  2300 0    50   Input ~ 0
GND
Text GLabel 950  2600 0    50   Input ~ 0
VIN
Wire Wire Line
	950  1700 700  1700
Wire Wire Line
	700  1700 700  2700
Wire Wire Line
	700  2700 950  2700
Wire Wire Line
	950  2400 650  2400
Wire Wire Line
	650  2400 650  1400
Wire Wire Line
	650  1400 950  1400
Text GLabel 3200 1000 2    50   Input ~ 0
GND
Text GLabel 3200 2150 2    50   Input ~ 0
GND
$Comp
L Device:C_Small C1
U 1 1 5E2BAD29
P 2800 5550
F 0 "C1" V 2571 5550 50  0000 C CNN
F 1 "0.1uF" V 2662 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2800 5550 50  0001 C CNN
F 3 "~" H 2800 5550 50  0001 C CNN
	1    2800 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1750 4950 1750
Wire Wire Line
	4900 1850 4950 1850
Text GLabel 5100 2850 2    50   Input ~ 0
VDD_5V
Text GLabel 5100 3050 2    50   Input ~ 0
GND
Text GLabel 5100 2950 2    50   Input ~ 0
VDD_3.3V
Text GLabel 4900 1850 0    50   Input ~ 0
GND
Text GLabel 4900 1750 0    50   Input ~ 0
VDD_3.3V
$Comp
L Device:R_Small R1
U 1 1 5E32A99C
P 6100 2450
F 0 "R1" H 6159 2496 50  0000 L CNN
F 1 "1K" H 6159 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6100 2450 50  0001 C CNN
F 3 "~" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
Text GLabel 6100 2550 0    50   Input ~ 0
VDD_3.3V
Text GLabel 2600 5550 0    50   Input ~ 0
GND
Text GLabel 1500 5250 2    50   Input ~ 0
VDD_3.3V
$Comp
L Regulator_Linear:MCP1703A-3302_SOT223 U2
U 1 1 5E2845BD
P 1200 5250
F 0 "U2" H 1200 5492 50  0000 C CNN
F 1 "MCP1703A-3302_SOT223" H 1200 5401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1200 5450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 1200 5200 50  0001 C CNN
	1    1200 5250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U5
U 1 1 5E285FEA
P 2600 5250
F 0 "U5" H 2600 5492 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 2600 5401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2600 5450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 2600 5200 50  0001 C CNN
	1    2600 5250
	1    0    0    -1  
$EndComp
Text GLabel 2300 5250 0    50   Input ~ 0
VIN
Text Notes 900  4950 0    50   ~ 10
3.3V SUPPLY LDO
Text Notes 2300 4950 0    50   ~ 10
5V SUPPLY LDO
Text GLabel 4950 1550 0    50   Input ~ 10
XTAL1
$Comp
L Device:C_Small C4
U 1 1 5E29894F
P 1400 5550
F 0 "C4" V 1171 5550 50  0000 C CNN
F 1 "0.1uF" V 1262 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 5550 50  0001 C CNN
F 3 "~" H 1400 5550 50  0001 C CNN
	1    1400 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 5250 1500 5550
Wire Wire Line
	1300 5550 1200 5550
Wire Wire Line
	2600 5550 2700 5550
Wire Wire Line
	2900 5550 2900 5250
Text GLabel 4950 1450 0    50   Input ~ 0
VDD_3.3V
Wire Notes Line
	1950 4850 1950 5650
Wire Notes Line
	700  5650 700  4850
Wire Notes Line
	3250 4850 3250 5650
Wire Notes Line
	700  4850 3250 4850
Wire Notes Line
	700  5650 3250 5650
Wire Notes Line
	2250 850  2250 2950
Wire Notes Line
	550  2950 550  850 
Text Notes 600  800  0    50   ~ 0
SID & ICM\nCONNECTORS
Text GLabel 4950 1350 0    50   Input ~ 0
RXA
Text GLabel 4950 1250 0    50   Input ~ 0
TXA
Text GLabel 6100 1650 2    50   Input ~ 0
GND
Text GLabel 6100 1550 2    50   Input ~ 0
TXB
Text GLabel 6100 1450 2    50   Input ~ 0
RXB
Text Notes 2450 800  0    50   ~ 0
CAN INTERFACE
Text GLabel 4950 2350 3    50   Input ~ 0
GND
Wire Notes Line
	5550 3150 5550 2800
Wire Notes Line
	5550 2800 6400 2800
Wire Notes Line
	6400 2800 6400 850 
Text Notes 4300 800  0    50   ~ 0
DUAL UART to SPI INTERFACE
Text Notes 6500 3100 0    50   ~ 0
OSCILLATOR
Text GLabel 6550 2700 3    50   Input ~ 10
XTAL1
Text GLabel 7500 2400 3    50   Input ~ 0
GND
$Comp
L Device:LED D1
U 1 1 5E524EBA
P 6950 1050
F 0 "D1" H 6943 795 50  0000 C CNN
F 1 "LED7" H 6943 886 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1050 50  0001 C CNN
F 3 "~" H 6950 1050 50  0001 C CNN
	1    6950 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E52A67D
P 6950 1150
F 0 "D2" H 6943 895 50  0000 C CNN
F 1 "LED6" H 6943 986 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1150 50  0001 C CNN
F 3 "~" H 6950 1150 50  0001 C CNN
	1    6950 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E52A91D
P 6950 1250
F 0 "D3" H 6943 995 50  0000 C CNN
F 1 "LED5" H 6943 1086 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1250 50  0001 C CNN
F 3 "~" H 6950 1250 50  0001 C CNN
	1    6950 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E52ACF3
P 6950 1350
F 0 "D4" H 6943 1095 50  0000 C CNN
F 1 "LED4" H 6943 1186 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1350 50  0001 C CNN
F 3 "~" H 6950 1350 50  0001 C CNN
	1    6950 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E52AFBB
P 6950 1750
F 0 "D5" H 6943 1495 50  0000 C CNN
F 1 "LED3" H 6943 1586 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1750 50  0001 C CNN
F 3 "~" H 6950 1750 50  0001 C CNN
	1    6950 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E52B30B
P 6950 1850
F 0 "D6" H 6943 1595 50  0000 C CNN
F 1 "LED2" H 6943 1686 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1850 50  0001 C CNN
F 3 "~" H 6950 1850 50  0001 C CNN
	1    6950 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5E52B635
P 6950 1950
F 0 "D7" H 6943 1695 50  0000 C CNN
F 1 "LED1" H 6943 1786 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1950 50  0001 C CNN
F 3 "~" H 6950 1950 50  0001 C CNN
	1    6950 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 5E52B939
P 6950 2050
F 0 "D8" H 6943 1795 50  0000 C CNN
F 1 "LED0" H 6943 1886 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 2050 50  0001 C CNN
F 3 "~" H 6950 2050 50  0001 C CNN
	1    6950 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5E53A5B3
P 6700 1050
F 0 "R11" H 6759 1096 50  0000 L CNN
F 1 "1K" H 6759 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1050 50  0001 C CNN
F 3 "~" H 6700 1050 50  0001 C CNN
	1    6700 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5E53AB50
P 6700 1150
F 0 "R12" H 6759 1196 50  0000 L CNN
F 1 "1K" H 6759 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1150 50  0001 C CNN
F 3 "~" H 6700 1150 50  0001 C CNN
	1    6700 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5E53ADA4
P 6700 1250
F 0 "R13" H 6759 1296 50  0000 L CNN
F 1 "1K" H 6759 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1250 50  0001 C CNN
F 3 "~" H 6700 1250 50  0001 C CNN
	1    6700 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5E53B004
P 6700 1350
F 0 "R14" H 6759 1396 50  0000 L CNN
F 1 "1K" H 6759 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1350 50  0001 C CNN
F 3 "~" H 6700 1350 50  0001 C CNN
	1    6700 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5E53B270
P 6700 1750
F 0 "R15" H 6759 1796 50  0000 L CNN
F 1 "1K" H 6759 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1750 50  0001 C CNN
F 3 "~" H 6700 1750 50  0001 C CNN
	1    6700 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5E53B4E8
P 6700 1850
F 0 "R16" H 6759 1896 50  0000 L CNN
F 1 "1K" H 6759 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1850 50  0001 C CNN
F 3 "~" H 6700 1850 50  0001 C CNN
	1    6700 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5E53B76C
P 6700 1950
F 0 "R17" H 6759 1996 50  0000 L CNN
F 1 "1K" H 6759 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1950 50  0001 C CNN
F 3 "~" H 6700 1950 50  0001 C CNN
	1    6700 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5E53B9FC
P 6700 2050
F 0 "R18" H 6759 2096 50  0000 L CNN
F 1 "1K" H 6759 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 2050 50  0001 C CNN
F 3 "~" H 6700 2050 50  0001 C CNN
	1    6700 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1050 6600 1050
Wire Wire Line
	6100 1150 6600 1150
Wire Wire Line
	6100 1250 6600 1250
Wire Wire Line
	6100 1350 6600 1350
Wire Wire Line
	6100 1750 6600 1750
Wire Wire Line
	6600 1850 6100 1850
Wire Wire Line
	6100 1950 6600 1950
Wire Wire Line
	6600 2050 6100 2050
Text GLabel 7100 2150 2    50   Input ~ 0
GND
Wire Wire Line
	7100 2150 7100 2050
Connection ~ 7100 1150
Wire Wire Line
	7100 1150 7100 1050
Connection ~ 7100 1250
Wire Wire Line
	7100 1250 7100 1150
Connection ~ 7100 1350
Wire Wire Line
	7100 1350 7100 1250
Connection ~ 7100 1750
Wire Wire Line
	7100 1750 7100 1350
Connection ~ 7100 1850
Wire Wire Line
	7100 1850 7100 1750
Connection ~ 7100 1950
Wire Wire Line
	7100 1950 7100 1850
Connection ~ 7100 2050
Wire Wire Line
	7100 2050 7100 1950
Wire Notes Line
	6450 850  7350 850 
Wire Notes Line
	7350 850  7350 2250
Wire Notes Line
	7350 2250 6450 2250
Wire Notes Line
	6450 2250 6450 850 
Text Notes 6450 800  0    50   ~ 0
GPIO LED OUTPUT
Text GLabel 4950 2250 0    50   Input ~ 0
CLK
Text GLabel 4950 2150 0    50   Input ~ 0
MISO
Text GLabel 4950 2050 0    50   Input ~ 0
MOSI
Text GLabel 4950 1950 0    50   Input ~ 0
CS
Text GLabel 4600 2750 0    50   Input ~ 0
CLK
Text GLabel 4600 2850 0    50   Input ~ 0
MISO
Text GLabel 4600 2950 0    50   Input ~ 0
MOSI
Text GLabel 4600 3050 0    50   Input ~ 0
CS
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J1
U 1 1 5E4709DB
P 4800 2850
F 0 "J1" H 4850 3167 50  0000 C CNN
F 1 "SPI+IRQ+POWER" H 4850 3076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 4800 2850 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
Text GLabel 6100 2350 2    50   Input ~ 0
IRQ
Text GLabel 5100 2750 2    50   Input ~ 0
IRQ
Wire Notes Line
	4300 3150 4300 850 
Wire Notes Line
	4300 3150 5550 3150
Wire Notes Line
	4300 850  6400 850 
$Comp
L local_symbols:S53305-16.000-X X1
U 1 1 5E7AFB1C
P 7050 2600
F 0 "X1" H 7050 2450 50  0000 C CNN
F 1 "S53305-24.000-X" H 7050 2550 50  0000 C CNN
F 2 "sid-board:S53305-16.000-X" H 7050 2600 50  0001 C CNN
F 3 "" H 7050 2600 50  0001 C CNN
	1    7050 2600
	-1   0    0    1   
$EndComp
Text GLabel 6550 2400 3    50   Input ~ 0
VDD_3.3V
Text GLabel 7500 2700 3    50   Input ~ 0
VDD_3.3V
Wire Notes Line
	6450 2300 7600 2300
Wire Notes Line
	7600 2300 7600 3150
Wire Notes Line
	7600 3150 6450 3150
Wire Notes Line
	6450 3150 6450 2300
Text GLabel 3600 1400 2    50   Input ~ 0
RXA
Text GLabel 3600 1500 2    50   Input ~ 0
TXA
Text GLabel 3600 2550 2    50   Input ~ 0
RXB
Text GLabel 3600 2650 2    50   Input ~ 0
TXB
$Comp
L Interface_CAN_LIN:SN65HVD232 U3
U 1 1 5F341EE8
P 3200 1400
F 0 "U3" H 3200 1881 50  0000 C CNN
F 1 "SN65HVD232" H 3200 1790 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3200 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 3100 1800 50  0001 C CNN
	1    3200 1400
	-1   0    0    1   
$EndComp
Text GLabel 3200 1700 0    50   Input ~ 0
VDD_3.3V
$Comp
L Interface_CAN_LIN:SN65HVD232 U4
U 1 1 5F3722CE
P 3200 2550
F 0 "U4" H 3200 3031 50  0000 C CNN
F 1 "SN65HVD232" H 3200 2940 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3200 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 3100 2950 50  0001 C CNN
	1    3200 2550
	-1   0    0    1   
$EndComp
Text GLabel 3200 2850 0    50   Input ~ 0
VDD_3.3V
Text GLabel 1850 1400 2    50   Input ~ 0
CAN_A_L
Text GLabel 2800 1300 0    50   Input ~ 0
CAN_A_L
Text GLabel 2800 1400 0    50   Input ~ 0
CAN_A_H
Text GLabel 1850 1500 2    50   Input ~ 0
CAN_A_H
Text GLabel 1850 2500 2    50   Input ~ 0
CAN_B_H
Text GLabel 1850 2400 2    50   Input ~ 0
CAN_B_L
Text GLabel 2800 2450 0    50   Input ~ 0
CAN_B_L
Text GLabel 2800 2550 0    50   Input ~ 0
CAN_B_H
$Comp
L Switch:SW_Push SW1
U 1 1 5F3DA732
P 7600 5150
F 0 "SW1" H 7600 5435 50  0000 C CNN
F 1 "SW_EN" H 7600 5344 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 7600 5350 50  0001 C CNN
F 3 "~" H 7600 5350 50  0001 C CNN
	1    7600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F3DB8C4
P 8100 5150
F 0 "R4" V 7904 5150 50  0000 C CNN
F 1 "10k" V 7995 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8100 5150 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F3DC1F8
P 7900 5150
F 0 "R2" V 7704 5150 50  0000 C CNN
F 1 "470" V 7795 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 5150 50  0001 C CNN
F 3 "~" H 7900 5150 50  0001 C CNN
	1    7900 5150
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5F3DE1B5
P 5900 3650
F 0 "C2" V 5675 3650 50  0000 C CNN
F 1 "100uF" V 5766 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5900 3650 50  0001 C CNN
F 3 "~" H 5900 3650 50  0001 C CNN
	1    5900 3650
	0    1    1    0   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32U U6
U 1 1 5F3FAEB2
P 5300 5050
F 0 "U6" H 5300 6631 50  0000 C CNN
F 1 "ESP32-WROOM-32U" H 5300 6540 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32U" H 5300 3550 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 5000 5100 50  0001 C CNN
	1    5300 5050
	1    0    0    -1  
$EndComp
Text GLabel 6000 3650 2    50   Input ~ 0
GND
Wire Wire Line
	5300 3650 5800 3650
Text GLabel 5300 6450 2    50   Input ~ 0
GND
Text GLabel 8200 5150 2    50   Input ~ 0
VDD_3.3V
Text GLabel 7400 5150 0    50   Input ~ 0
GND
Text GLabel 8000 5150 1    50   Input ~ 0
EN
Text GLabel 4700 3850 0    50   Input ~ 0
EN
$Comp
L Switch:SW_Push SW2
U 1 1 5F41B4C9
P 7600 5600
F 0 "SW2" H 7600 5885 50  0000 C CNN
F 1 "SW_FLASH" H 7600 5794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 7600 5800 50  0001 C CNN
F 3 "~" H 7600 5800 50  0001 C CNN
	1    7600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F41B4CF
P 8100 5600
F 0 "R5" V 7904 5600 50  0000 C CNN
F 1 "10k" V 7995 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8100 5600 50  0001 C CNN
F 3 "~" H 8100 5600 50  0001 C CNN
	1    8100 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F41B4D5
P 7900 5600
F 0 "R3" V 7704 5600 50  0000 C CNN
F 1 "470" V 7795 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 5600 50  0001 C CNN
F 3 "~" H 7900 5600 50  0001 C CNN
	1    7900 5600
	0    1    1    0   
$EndComp
Text GLabel 8200 5600 2    50   Input ~ 0
VDD_3.3V
Text GLabel 7400 5600 0    50   Input ~ 0
GND
Text GLabel 8000 5600 1    50   Input ~ 0
IO0
Text GLabel 5900 3850 2    50   Input ~ 0
IO0
$Comp
L Connector:USB_B_Micro J2
U 1 1 5F431498
P 7500 4050
F 0 "J2" H 7557 4517 50  0000 C CNN
F 1 "USB_B_Micro" H 7557 4426 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 7650 4000 50  0001 C CNN
F 3 "~" H 7650 4000 50  0001 C CNN
	1    7500 4050
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D10
U 1 1 5F43801F
P 7950 3850
F 0 "D10" H 7950 3634 50  0000 C CNN
F 1 "1N5819" H 7950 3725 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7950 3675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 7950 3850 50  0001 C CNN
	1    7950 3850
	-1   0    0    1   
$EndComp
Text GLabel 8100 3850 2    50   Input ~ 0
VIN
Text GLabel 7400 4450 0    50   Input ~ 0
GND
Wire Wire Line
	7400 4450 7500 4450
$Comp
L Device:LED_Small D9
U 1 1 5F455DEF
P 6650 4050
F 0 "D9" H 6650 3845 50  0000 C CNN
F 1 "LED_IO2" H 6650 3936 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6650 4050 50  0001 C CNN
F 3 "~" V 6650 4050 50  0001 C CNN
	1    6650 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F457718
P 6250 4050
F 0 "R6" V 6054 4050 50  0000 C CNN
F 1 "470" V 6145 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 4050 50  0001 C CNN
F 3 "~" H 6250 4050 50  0001 C CNN
	1    6250 4050
	0    1    1    0   
$EndComp
Text GLabel 6750 4050 2    50   Input ~ 0
GND
Wire Wire Line
	6350 4050 6550 4050
Wire Wire Line
	6150 4050 5900 4050
Text GLabel 3200 3350 2    50   Input ~ 0
GND
Text GLabel 3600 3750 2    50   Input ~ 0
RX_ESP32_CAN
Text GLabel 3600 3850 2    50   Input ~ 0
TX_ESP32_CAN
$Comp
L Interface_CAN_LIN:SN65HVD232 U7
U 1 1 5F4AC516
P 3200 3750
F 0 "U7" H 3200 4231 50  0000 C CNN
F 1 "SN65HVD232" H 3200 4140 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3200 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 3100 4150 50  0001 C CNN
	1    3200 3750
	-1   0    0    1   
$EndComp
Text GLabel 3200 4050 0    50   Input ~ 0
VDD_3.3V
Text GLabel 2800 3650 0    50   Input ~ 0
CAN_L
Text GLabel 2800 3750 0    50   Input ~ 0
CAN_H
Wire Notes Line
	4250 850  4250 4450
Wire Notes Line
	2400 850  2400 4450
Text GLabel 5900 4350 2    50   Input ~ 0
TX_ESP32_CAN
Text GLabel 5900 4250 2    50   Input ~ 0
RX_ESP32_CAN
Wire Notes Line
	2400 850  4250 850 
Wire Notes Line
	2400 4450 4250 4450
Wire Notes Line
	550  850  2250 850 
Wire Notes Line
	550  2950 2250 2950
$EndSCHEMATC
