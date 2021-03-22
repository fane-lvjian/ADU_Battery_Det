
;----------------------------------------------------
;  Copyright (c) 2003-2013 SONiX Technology Co., Ltd.
;  Sonix SN8 C Compiler - V2.01
;----------------------------------------------------

__INTERRUPT_BACKUP_X EQU 1
__INTERRUPT_BACKUP_Y EQU 1
__INTERRUPT_BACKUP_Z EQU 1
__INTERRUPT_BACKUP_R EQU 1
__INTERRUPT_BACKUP_H EQU 1
__INTERRUPT_BACKUP_L EQU 1
CHIP SN8P2711A

INCLUDE <sncc_macros.h>
EXTERN DATA T
EXTERN DATA I
.CODE
.stabs "lcc4_compiled.",0x3C,0,0,0
.stabs "C:\Users\HUAWEI\Desktop\battery-det(1)\battery-det\battery-det/",0x64,0,3,Ltext0
.stabs ".\Src\led.c",0x64,0,3,Ltext0
Ltext0:
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;4;0;",128,0,0,0
.stabs "float:t4=r1;4;0;",128,0,0,0
.stabs "long double:t5=r1;4;0;",128,0,0,0
.stabs "long int:t6=r1;-32768;32767;",128,0,0,0
.stabs "long long int:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "signed char:t8=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t9=r1;0;255;",128,0,0,0
.stabs "unsigned long:t10=r1;0;65535;",128,0,0,0
.stabs "unsigned long long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned int:t12=r1;0;255;",128,0,0,0
.stabs "void:t13=13",128,0,0,0
.stabs "bit:t14",128,0,0,0
.stabs ":t300=L16:0",128,0,0,0
.stabs ":t301=L16:1",128,0,0,0
.stabs ":t302=L16:2",128,0,0,0
.stabs ":t303=L16:3",128,0,0,0
.stabs ":t304=L16:4",128,0,0,0
.stabs ":t305=L16:5",128,0,0,0
.stabs ":t306=L16:6",128,0,0,0
.stabs ":t307=L16:7",128,0,0,0
.stabs ":t308=ar1;0;9;1",128,0,0,0

;---------------Begin emit user code-----------------

PUBLIC _initLED
PUBLIC _controlLED
PUBLIC _controlLED_arg@0
PUBLIC _setLED_arg@0
_led_status@segment SEGMENT DATA INBANK
	_led_status DS 1

_led_c_GlobalBitDataPool0 BITSEGMENT DATA BANK 0 INBANK
	_led_init DSBIT 1

_LedChangeBufSetting@segment SEGMENT DATA INBANK
	_LedChangeBufSetting DS 16
_DATA_INIT_CODE SEGMENT CODE INBANK
_LedChangeBufSetting_initial_value:
	DB 0xFF,0xF
	DB 0xFF,0x9
	DB 0x43,0xA
	DB 0xCC,0x9
	DB 0x10,0xA
	DB 0x99,0x9
	DB 0xDD,0x9
	DB 0x0,0x0
_SGV_INIT_CODE SEGMENT CODE BANK 0x0 INBANK
INIT@global _LedChangeBufSetting,_LedChangeBufSetting_initial_value,16
_Function_initLED_data SEGMENT DATA INBANK

_Function_controlLED_data SEGMENT DATA INBANK
	_controlLED_arg@0 DS 2
	_controlLED_data@0	DS	1

_Function_setLED_data SEGMENT DATA INBANK
	_setLED_arg@0 DS 1


_VirtualReg SEGMENT DATA BANK 0 INBANK COMMON
	W0 DS 1
	W1 DS 1
	W2 DS 1
	W3 DS 1

.stabs "R:G12",32,0,0,0x82
.stabs "Z:G12",32,0,0,0x83
.stabs "Y:G12",32,0,0,0x84
.stabs "PFLAG:G12",32,0,0,0x86
.stabs "FZ:G300",32,0,0,0x86
.stabs "FDC:G301",32,0,0,0x86
.stabs "FC:G302",32,0,0,0x86
.stabs "FLVD24:G304",32,0,0,0x86
.stabs "FLVD36:G305",32,0,0,0x86
.stabs "FNPD:G306",32,0,0,0x86
.stabs "FNT0:G307",32,0,0,0x86
.stabs "P4CON:G12",32,0,0,0xAE
.stabs "VREFH:G12",32,0,0,0xAF
.stabs "FVHS0:G300",32,0,0,0xAF
.stabs "FVHS1:G301",32,0,0,0xAF
.stabs "FEVHENB:G307",32,0,0,0xAF
.stabs "ADM:G12",32,0,0,0xB1
.stabs "FADENB:G307",32,0,0,0xB1
.stabs "FADS:G306",32,0,0,0xB1
.stabs "FEOC:G305",32,0,0,0xB1
.stabs "FGCHS:G304",32,0,0,0xB1
.stabs "FCHS2:G302",32,0,0,0xB1
.stabs "FCHS1:G301",32,0,0,0xB1
.stabs "FCHS0:G300",32,0,0,0xB1
.stabs "ADB:G12",32,0,0,0xB2
.stabs "ADR:G12",32,0,0,0xB3
.stabs "FADCKS1:G306",32,0,0,0xB3
.stabs "FADCKS0:G304",32,0,0,0xB3
.stabs "FADB3:G303",32,0,0,0xB3
.stabs "FADB2:G302",32,0,0,0xB3
.stabs "FADB1:G301",32,0,0,0xB3
.stabs "FADB0:G300",32,0,0,0xB3
.stabs "P0M:G12",32,0,0,0xB8
.stabs "FP00M:G300",32,0,0,0xB8
.stabs "FP01M:G301",32,0,0,0xB8
.stabs "FP02M:G302",32,0,0,0xB8
.stabs "FP03M:G303",32,0,0,0xB8
.stabs "PEDGE:G12",32,0,0,0xBF
.stabs "FP00G1:G304",32,0,0,0xBF
.stabs "FP00G0:G303",32,0,0,0xBF
.stabs "P4M:G12",32,0,0,0xC4
.stabs "FP40M:G300",32,0,0,0xC4
.stabs "FP41M:G301",32,0,0,0xC4
.stabs "FP42M:G302",32,0,0,0xC4
.stabs "FP43M:G303",32,0,0,0xC4
.stabs "FP44M:G304",32,0,0,0xC4
.stabs "P5M:G12",32,0,0,0xC5
.stabs "FP53M:G303",32,0,0,0xC5
.stabs "FP54M:G304",32,0,0,0xC5
.stabs "INTRQ:G12",32,0,0,0xC8
.stabs "FP00IRQ:G300",32,0,0,0xC8
.stabs "FP01IRQ:G301",32,0,0,0xC8
.stabs "FTC0IRQ:G305",32,0,0,0xC8
.stabs "FTC1IRQ:G306",32,0,0,0xC8
.stabs "FADCIRQ:G307",32,0,0,0xC8
.stabs "INTEN:G12",32,0,0,0xC9
.stabs "FP00IEN:G300",32,0,0,0xC9
.stabs "FP01IEN:G301",32,0,0,0xC9
.stabs "FTC0IEN:G305",32,0,0,0xC9
.stabs "FTC1IEN:G306",32,0,0,0xC9
.stabs "FADCIEN:G307",32,0,0,0xC9
.stabs "OSCM:G12",32,0,0,0xCA
.stabs "FCPUM1:G304",32,0,0,0xCA
.stabs "FCPUM0:G303",32,0,0,0xCA
.stabs "FCLKMD:G302",32,0,0,0xCA
.stabs "FSTPHX:G301",32,0,0,0xCA
.stabs "WDTR:G12",32,0,0,0xCC
.stabs "PCL:G12",32,0,0,0xCE
.stabs "PCH:G12",32,0,0,0xCF
.stabs "P0:G12",32,0,0,0xD0
.stabs "FP00:G300",32,0,0,0xD0
.stabs "FP01:G301",32,0,0,0xD0
.stabs "FP02:G302",32,0,0,0xD0
.stabs "FP03:G303",32,0,0,0xD0
.stabs "FP04:G304",32,0,0,0xD0
.stabs "P4:G12",32,0,0,0xD4
.stabs "FP40:G300",32,0,0,0xD4
.stabs "FP41:G301",32,0,0,0xD4
.stabs "FP42:G302",32,0,0,0xD4
.stabs "FP43:G303",32,0,0,0xD4
.stabs "FP44:G304",32,0,0,0xD4
.stabs "P5:G12",32,0,0,0xD5
.stabs "FP53:G303",32,0,0,0xD5
.stabs "FP54:G304",32,0,0,0xD5
.stabs "T0M:G12",32,0,0,0xD8
.stabs "FTC0GN:G301",32,0,0,0xD8
.stabs "FTC0X8:G302",32,0,0,0xD8
.stabs "FTC1X8:G303",32,0,0,0xD8
.stabs "TC0M:G12",32,0,0,0xDA
.stabs "FTC0ENB:G307",32,0,0,0xDA
.stabs "FTC0RATE2:G306",32,0,0,0xDA
.stabs "FTC0RATE1:G305",32,0,0,0xDA
.stabs "FTC0RATE0:G304",32,0,0,0xDA
.stabs "FTC0CKS:G303",32,0,0,0xDA
.stabs "FALOAD0:G302",32,0,0,0xDA
.stabs "FTC0OUT:G301",32,0,0,0xDA
.stabs "FPWM0OUT:G300",32,0,0,0xDA
.stabs "TC0C:G12",32,0,0,0xDB
.stabs "TC0R:G12",32,0,0,0xCD
.stabs "TC1M:G12",32,0,0,0xDC
.stabs "FTC1ENB:G307",32,0,0,0xDC
.stabs "FTC1RATE2:G306",32,0,0,0xDC
.stabs "FTC1RATE1:G305",32,0,0,0xDC
.stabs "FTC1RATE0:G304",32,0,0,0xDC
.stabs "FTC1CKS:G303",32,0,0,0xDC
.stabs "FALOAD1:G302",32,0,0,0xDC
.stabs "FTC1OUT:G301",32,0,0,0xDC
.stabs "FPWM1OUT:G300",32,0,0,0xDC
.stabs "TC1C:G12",32,0,0,0xDD
.stabs "TC1R:G12",32,0,0,0xDE
.stabs "STKP:G12",32,0,0,0xDF
.stabs "FGIE:G307",32,0,0,0xDF
.stabs "FSTKPB2:G302",32,0,0,0xDF
.stabs "FSTKPB1:G301",32,0,0,0xDF
.stabs "FSTKPB0:G300",32,0,0,0xDF
.stabs "P0UR:G12",32,0,0,0xE0
.stabs "P4UR:G12",32,0,0,0xE4
.stabs "P5UR:G12",32,0,0,0xE5
.stabs "_YZ:G12",32,0,0,0xE7
.stabs "STK3L:G12",32,0,0,0xF8
.stabs "STK3H:G12",32,0,0,0xF9
.stabs "STK2L:G12",32,0,0,0xFA
.stabs "STK2H:G12",32,0,0,0xFB
.stabs "STK1L:G12",32,0,0,0xFC
.stabs "STK1H:G12",32,0,0,0xFD
.stabs "STK0L:G12",32,0,0,0xFE
.stabs "STK0H:G12",32,0,0,0xFF
.stabs ":t15=ar1;0;3;16=ar1;0;1;6",128,0,0,0
.stabs "LedChangeBufSetting:S15",38,0,0,_LedChangeBufSetting
.stabs "initLED:F13",36,0,0,_initLED
_Function_initLED_code SEGMENT CODE INBANK USING _Function_initLED_data
_initLED:
.stabn 0xC0,0,0,L2-_initLED
L2:
.stabn 0x44,0,65,L3-_initLED
L3:
;Line#65 {

 .stabn 0x44,0,66,L4-_initLED
L4:
;Line#66 	led_status = LED_GREEN;

 	;MOVU1 _led_status ,#0
	__SelectBANK _led_status
	CLR _led_status
.stabn 0x44,0,67,L5-_initLED
L5:
;Line#67 	led_init = 1;

 	;MOVX1 _led_init ,#1
	__SelectBANK _led_init
	BSET _led_init
.stabn 0x44,0,69,L6-_initLED
L6:
;Line#69 	return;

 .stabn 0xE0,0,0,L7-_initLED
L7:
.stabn 0x44,0,70,L8-_initLED
L8:
;Line#70 }

L1:
	RET
.stabs "controlLED:F13",36,0,0,_controlLED
_Function_controlLED_code SEGMENT CODE INBANK USING _Function_controlLED_data
_controlLED:
.stabs "ad_val:p6",160,0,0,_controlLED_arg@0
.stabs "led_set:9",128,0,0,_controlLED_data@0
.stabn 0xC0,0,0,L38-_controlLED
L38:
.stabn 0x44,0,78,L39-_controlLED
L39:
;Line#78 {

 .stabn 0x44,0,82,L40-_controlLED
L40:
;Line#82 	if (ad_val == 4096) {

 	;NEI2 L10 ,_controlLED_arg@0 ,#4096
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	MOV A, #0x00
	B0MOV R, #0x10
	CALL __Get2ByteRamCst
	CALL __CmpULong
	JNE L10
.stabn 0xC0,0,1,L41-_controlLED
L41:
.stabn 0x44,0,82,L42-_controlLED
L42:
;Line#82 	if (ad_val == 4096) {

 .stabn 0x44,0,83,L43-_controlLED
L43:
;Line#83 		setLED(LED_GREEN);

 	;PUSH _setLED_arg@0 ,#0
	__SelectBANK _setLED_arg@0
	CLR _setLED_arg@0
	;CALLV _setLED
	CALL _setLED
.stabn 0x44,0,84,L44-_controlLED
L44:
;Line#84 		led_init = 1;

 	;MOVX1 _led_init ,#1
	__SelectBANK _led_init
	BSET _led_init
.stabn 0xE0,0,1,L45-_controlLED
L45:
.stabn 0x44,0,85,L46-_controlLED
L46:
;Line#85 	} else {

	JMP L9
L10:
.stabn 0xC0,0,1,L47-_controlLED
L47:
.stabn 0x44,0,85,L48-_controlLED
L48:
;Line#85 	} else {

 .stabn 0x44,0,87,L49-_controlLED
L49:
;Line#87 		if (led_init == 1) {

 	;NEX1 L12 ,_led_init ,#1
	__SelectBANK _led_init
	BTS1 _led_init
	JMP L12
.stabn 0xC0,0,2,L50-_controlLED
L50:
.stabn 0x44,0,87,L51-_controlLED
L51:
;Line#87 		if (led_init == 1) {

 .stabn 0x44,0,88,L52-_controlLED
L52:
;Line#88 			if(ad_val > 0)

 	;LE L14 ,_controlLED_arg@0 ,#0
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	MOV A, #0x00
	B0MOV R, #0x00
	CALL __Get2ByteRamCst
	CALL __CmpLong
	JLE L14
.stabn 0xC0,0,3,L53-_controlLED
L53:
.stabn 0x44,0,89,L54-_controlLED
L54:
;Line#89 			{

 .stabn 0x44,0,90,L55-_controlLED
L55:
;Line#90 				led_init = 0;

 	;MOVX1 _led_init ,#0
	__SelectBANK _led_init
	BCLR _led_init
.stabn 0x44,0,91,L56-_controlLED
L56:
;Line#91 				if (ad_val >= LedChangeBufSetting[LED_GREEN][THRESHOLD_L]){

 	;LT L16 ,_controlLED_arg@0 ,_LedChangeBufSetting+0+2
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, #(_LedChangeBufSetting+0+2)$M
	MOV A, #(_LedChangeBufSetting+0+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JLT L16
.stabn 0xC0,0,4,L57-_controlLED
L57:
.stabn 0x44,0,91,L58-_controlLED
L58:
;Line#91 				if (ad_val >= LedChangeBufSetting[LED_GREEN][THRESHOLD_L]){

 .stabn 0x44,0,92,L59-_controlLED
L59:
;Line#92 					led_set = LED_GREEN;

 	;MOVU1 _controlLED_data@0 ,#0
	__SelectBANK _controlLED_data@0
	CLR _controlLED_data@0
.stabn 0xE0,0,4,L60-_controlLED
L60:
.stabn 0x44,0,93,L61-_controlLED
L61:
;Line#93 				} else if ((ad_val >= LedChangeBufSetting[LED_YELLOW][THRESHOLD_L]) &&

	JMP L13
L16:
.stabn 0x44,0,93,L62-_controlLED
L62:
;Line#93 				} else if ((ad_val >= LedChangeBufSetting[LED_YELLOW][THRESHOLD_L]) &&

 	;LT L20 ,_controlLED_arg@0 ,_LedChangeBufSetting+4+2
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, #(_LedChangeBufSetting+4+2)$M
	MOV A, #(_LedChangeBufSetting+4+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JLT L20
	;GE L20 ,_controlLED_arg@0 ,_LedChangeBufSetting+0+2
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, #(_LedChangeBufSetting+0+2)$M
	MOV A, #(_LedChangeBufSetting+0+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JGE L20
.stabn 0xC0,0,4,L63-_controlLED
L63:
.stabn 0x44,0,94,L64-_controlLED
L64:
;Line#94 						(ad_val < LedChangeBufSetting[LED_GREEN][THRESHOLD_L])) {

 .stabn 0x44,0,95,L65-_controlLED
L65:
;Line#95 					led_set = LED_YELLOW;

 	;MOVU1 _controlLED_data@0 ,#1
	MOV A, #0x01
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,4,L66-_controlLED
L66:
.stabn 0x44,0,96,L67-_controlLED
L67:
;Line#96 				} else if ((ad_val >= LedChangeBufSetting[LED_RED][THRESHOLD_L]) &&

	JMP L13
L20:
.stabn 0x44,0,96,L68-_controlLED
L68:
;Line#96 				} else if ((ad_val >= LedChangeBufSetting[LED_RED][THRESHOLD_L]) &&

 	;LT L26 ,_controlLED_arg@0 ,_LedChangeBufSetting+8+2
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, #(_LedChangeBufSetting+8+2)$M
	MOV A, #(_LedChangeBufSetting+8+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JLT L26
	;GE L26 ,_controlLED_arg@0 ,_LedChangeBufSetting+4+2
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, #(_LedChangeBufSetting+4+2)$M
	MOV A, #(_LedChangeBufSetting+4+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JGE L26
.stabn 0xC0,0,4,L69-_controlLED
L69:
.stabn 0x44,0,97,L70-_controlLED
L70:
;Line#97 						(ad_val < LedChangeBufSetting[LED_YELLOW][THRESHOLD_L])) {

 .stabn 0x44,0,98,L71-_controlLED
L71:
;Line#98 					led_set = LED_RED;

 	;MOVU1 _controlLED_data@0 ,#2
	MOV A, #0x02
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,4,L72-_controlLED
L72:
.stabn 0x44,0,99,L73-_controlLED
L73:
;Line#99 				} else {

	JMP L13
L26:
.stabn 0xC0,0,4,L74-_controlLED
L74:
.stabn 0x44,0,99,L75-_controlLED
L75:
;Line#99 				} else {

 .stabn 0x44,0,100,L76-_controlLED
L76:
;Line#100 					led_set = LED_RED_BLINK;

 	;MOVU1 _controlLED_data@0 ,#3
	MOV A, #0x03
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,4,L77-_controlLED
L77:
.stabn 0x44,0,101,L78-_controlLED
L78:
;Line#101 				}

 .stabn 0xE0,0,3,L79-_controlLED
L79:
.stabn 0x44,0,102,L80-_controlLED
L80:
;Line#102 			}else{

	JMP L13
L14:
.stabn 0xC0,0,3,L81-_controlLED
L81:
.stabn 0x44,0,102,L82-_controlLED
L82:
;Line#102 			}else{

 .stabn 0x44,0,104,L83-_controlLED
L83:
;Line#104 				led_set = LED_TYPE_NUM;

 	;MOVU1 _controlLED_data@0 ,#4
	MOV A, #0x04
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L84-_controlLED
L84:
.stabn 0x44,0,105,L85-_controlLED
L85:
;Line#105 			}

 .stabn 0xE0,0,2,L86-_controlLED
L86:
.stabn 0x44,0,106,L87-_controlLED
L87:
;Line#106 		} else {

	JMP L13
L12:
.stabn 0xC0,0,2,L88-_controlLED
L88:
.stabn 0x44,0,106,L89-_controlLED
L89:
;Line#106 		} else {

 .stabn 0x44,0,108,L90-_controlLED
L90:
;Line#108 			if (ad_val < LedChangeBufSetting[led_status][THRESHOLD_L]){

 	;CVUU2 W0:W1 ,_led_status
	__SelectBANK _led_status
	MOV A, _led_status
	B0MOV W0, A
	__SelectBANKCNST 0
	CLR W1
	;LSH W0:W1 ,W0:W1 ,#2
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W0
	__SelectBANKCNST 0
	RLCM W1
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W0
	__SelectBANKCNST 0
	RLCM W1
	;LEA W2:W3 ,_LedChangeBufSetting+2
	;ADDP2 W0:W1 ,W2:W3 ,W0:W1
	B0MOV A, W0
	ADD A, #(_LedChangeBufSetting+2)$L
	B0MOV W0, A
	MOV A, #(_LedChangeBufSetting+2)$M
	ADC A, W1
	;GE L32 ,_controlLED_arg@0 , *W0:W1
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, A
	B0MOV A, W0
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JGE L32
.stabn 0xC0,0,3,L91-_controlLED
L91:
.stabn 0x44,0,108,L92-_controlLED
L92:
;Line#108 			if (ad_val < LedChangeBufSetting[led_status][THRESHOLD_L]){

 .stabn 0x44,0,109,L93-_controlLED
L93:
;Line#109 				led_set = led_status + 1;

 	;ADDU1 _controlLED_data@0 ,_led_status ,#1
	MOV A, #0x01
	__SelectBANK _led_status
	ADD A, _led_status
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L94-_controlLED
L94:
.stabn 0x44,0,110,L95-_controlLED
L95:
;Line#110 			} else if (ad_val >= LedChangeBufSetting[led_status][THRESHOLD_H]) {

	JMP L33
L32:
.stabn 0x44,0,110,L96-_controlLED
L96:
;Line#110 			} else if (ad_val >= LedChangeBufSetting[led_status][THRESHOLD_H]) {

 	;CVUU2 W0:W1 ,_led_status
	__SelectBANK _led_status
	MOV A, _led_status
	B0MOV W0, A
	__SelectBANKCNST 0
	CLR W1
	;LSH W0:W1 ,W0:W1 ,#2
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W0
	__SelectBANKCNST 0
	RLCM W1
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W0
	__SelectBANKCNST 0
	RLCM W1
	;LEA W2:W3 ,_LedChangeBufSetting+0
	;ADDP2 W0:W1 ,W2:W3 ,W0:W1
	B0MOV A, W0
	ADD A, #(_LedChangeBufSetting+0)$L
	B0MOV W0, A
	MOV A, #(_LedChangeBufSetting+0)$M
	ADC A, W1
	;LT L35 ,_controlLED_arg@0 , *W0:W1
	B0MOV Y, #(_controlLED_arg@0)$M
	B0MOV Z, #(_controlLED_arg@0)$L
	B0MOV R, A
	B0MOV A, W0
	CALL __Get2ByteRamRam
	CALL __CmpLong
	JLT L35
.stabn 0xC0,0,3,L97-_controlLED
L97:
.stabn 0x44,0,110,L98-_controlLED
L98:
;Line#110 			} else if (ad_val >= LedChangeBufSetting[led_status][THRESHOLD_H]) {

 .stabn 0x44,0,111,L99-_controlLED
L99:
;Line#111 				led_set = led_status - 1; 

 	;SUBU1 _controlLED_data@0 ,_led_status ,#1
	__SelectBANK _led_status
	MOV A, _led_status
	SUB A, #0x01
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L100-_controlLED
L100:
.stabn 0x44,0,112,L101-_controlLED
L101:
;Line#112 			} else {

	JMP L36
L35:
.stabn 0xC0,0,3,L102-_controlLED
L102:
.stabn 0x44,0,112,L103-_controlLED
L103:
;Line#112 			} else {

 .stabn 0x44,0,113,L104-_controlLED
L104:
;Line#113 				led_set = led_status;

 	;MOVU1 _controlLED_data@0 ,_led_status
	__SelectBANK _led_status
	MOV A, _led_status
	__SelectBANK _controlLED_data@0
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L105-_controlLED
L105:
.stabn 0x44,0,114,L106-_controlLED
L106:
;Line#114 			}

L36:
L33:
.stabn 0xE0,0,2,L107-_controlLED
L107:
.stabn 0x44,0,115,L108-_controlLED
L108:
;Line#115 		}

L13:
.stabn 0x44,0,116,L109-_controlLED
L109:
;Line#116 		setLED(led_set);

 	;PUSH _setLED_arg@0 ,_controlLED_data@0
	__SelectBANK _controlLED_data@0
	MOV A, _controlLED_data@0
	__SelectBANK _setLED_arg@0
	MOV _setLED_arg@0, A
	;CALLV _setLED
	CALL _setLED
.stabn 0xE0,0,1,L110-_controlLED
L110:
.stabn 0x44,0,117,L111-_controlLED
L111:
;Line#117 	}

 .stabn 0x44,0,119,L112-_controlLED
L112:
;Line#119 	return;

 .stabn 0xE0,0,0,L113-_controlLED
L113:
.stabn 0x44,0,120,L114-_controlLED
L114:
;Line#120 }

L9:
	RET

CALLTREE _controlLED invoke __Get2ByteRamCst,__CmpULong,_setLED,__CmpLong,__Get2ByteRamRam

.stabs "setLED:f13",36,0,0,_setLED
_Function_setLED_code SEGMENT CODE INBANK USING _Function_setLED_data
_setLED:
.stabs "led_type:p9",160,0,0,_setLED_arg@0
.stabn 0xC0,0,0,L122-_setLED
L122:
.stabn 0x44,0,128,L123-_setLED
L123:
;Line#128 {

 .stabn 0x44,0,129,L124-_setLED
L124:
	__SelectBANK _setLED_arg@0
	MOV A, _setLED_arg@0
	ADD A, #0x80
	CMPRS A, #0x84
	B0BTS0 FC
	JMP L151
	SUB A, #0x80
	B0BTS1 FC
	JMP L151
	B0ADD PCL, A
	JMP L118
	JMP L119
	JMP L120
	JMP L121
L151:
;Line#129 	switch (led_type) {

	JMP L117
.stabn 0xC0,0,1,L125-_setLED
L125:
.stabn 0x44,0,129,L126-_setLED
L126:
;Line#129 	switch (led_type) {

L118:
.stabn 0x44,0,131,L127-_setLED
L127:
;Line#131 			FP03 = 0; //red = off

 	;MOVX1 0xD0.3 ,#0
	B0BCLR 0xD0.3
.stabn 0x44,0,132,L128-_setLED
L128:
;Line#132 			FP44 = 1; //green = on

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
.stabn 0x44,0,133,L129-_setLED
L129:
;Line#133 			FP53 = 0; //yellow = off

 	;MOVX1 0xD5.3 ,#0
	B0BCLR 0xD5.3
.stabn 0x44,0,134,L130-_setLED
L130:
;Line#134 			break;

	JMP L117
L119:
.stabn 0x44,0,136,L131-_setLED
L131:
;Line#136 			FP03 = 0; //red = off

 	;MOVX1 0xD0.3 ,#0
	B0BCLR 0xD0.3
.stabn 0x44,0,137,L132-_setLED
L132:
;Line#137 			FP44 = 0; //green = off

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,138,L133-_setLED
L133:
;Line#138 			FP53 = 1; //yellow = on

 	;MOVX1 0xD5.3 ,#1
	B0BSET 0xD5.3
.stabn 0x44,0,139,L134-_setLED
L134:
;Line#139 			break;

	JMP L117
L120:
.stabn 0x44,0,141,L135-_setLED
L135:
;Line#141 			FP03 = 1; //red = on

 	;MOVX1 0xD0.3 ,#1
	B0BSET 0xD0.3
.stabn 0x44,0,142,L136-_setLED
L136:
;Line#142 			FP44 = 0; //green = off

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,143,L137-_setLED
L137:
;Line#143 			FP53 = 0; //yellow = off

 	;MOVX1 0xD5.3 ,#0
	B0BCLR 0xD5.3
.stabn 0x44,0,144,L138-_setLED
L138:
;Line#144 			break;

	JMP L117
L121:
.stabn 0x44,0,146,L139-_setLED
L139:
;Line#146 			FP03 = ~FP03; //red = blink

 	;BCOM 0xD0.3 ,0xD0.3
	MOV A, #0x00
	B0BTS0 0xD0.3
	MOV A, #0x01
	B0BSET 0xD0.3
	CMPRS A, #0x00
	B0BCLR 0xD0.3
.stabn 0x44,0,147,L140-_setLED
L140:
;Line#147 			FP44 = 0;     //green = off

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,148,L141-_setLED
L141:
;Line#148 			FP53 = 0;     //yellow = off

 	;MOVX1 0xD5.3 ,#0
	B0BCLR 0xD5.3
.stabn 0x44,0,149,L142-_setLED
L142:
;Line#149 			break;

 .stabn 0x44,0,151,L143-_setLED
L143:
;Line#151 			break;

 .stabn 0xE0,0,1,L144-_setLED
L144:
.stabn 0x44,0,152,L145-_setLED
L145:
;Line#152 	}

L117:
.stabn 0x44,0,154,L146-_setLED
L146:
;Line#154 	led_status = led_type;

 	;MOVU1 _led_status ,_setLED_arg@0
	__SelectBANK _setLED_arg@0
	MOV A, _setLED_arg@0
	__SelectBANK _led_status
	MOV _led_status, A
.stabn 0x44,0,156,L147-_setLED
L147:
;Line#156 	return;

 .stabn 0xE0,0,0,L148-_setLED
L148:
.stabn 0x44,0,157,L149-_setLED
L149:
;Line#157 }

L115:
	RET
.stabs "_intrinsicbitfield:T17=s1bit0:12,0,1;bit1:12,1,1;bit2:12,2,1;\\",128,0,0,0
.stabs "bit3:12,3,1;bit4:12,4,1;bit5:12,5,1;bit6:12,6,1;bit7:12,7,1;;",128,0,0,0
.stabs "", 100, 0, 0,Letext
Letext:
.stabs "led_init:S300",40,0,0,_led_init
.stabs "led_status:S9",40,0,0,_led_status
EXTERN CODE __Get2ByteRamRam
EXTERN CODE __CmpLong
EXTERN CODE __CmpULong
EXTERN CODE __Get2ByteRamCst
