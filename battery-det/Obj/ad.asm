
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
.stabs ".\Src\ad.c",0x64,0,3,Ltext0
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

PUBLIC _initAD
PUBLIC _controlAD
PUBLIC _getBAT_AD
PUBLIC _clearAD
_adBattIdx@segment SEGMENT DATA INBANK
	_adBattIdx DS 1
_ad_val_sum@segment SEGMENT DATA INBANK
	_ad_val_sum DS 2
_ad_value@segment SEGMENT DATA INBANK
	_ad_value DS 2

_Function_initAD_data SEGMENT DATA INBANK

_Function_controlAD_data SEGMENT DATA INBANK
	_controlAD_data@0	DS	1
	_controlAD_data@1	DS	1
	_controlAD_data@2	DS	1
	_controlAD_data@3	DS	1

_Function_getBAT_AD_data SEGMENT DATA INBANK

_Function_clearAD_data SEGMENT DATA INBANK


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
.stabs "initAD:F13",36,0,0,_initAD
_Function_initAD_code SEGMENT CODE INBANK USING _Function_initAD_data
_initAD:
.stabn 0xC0,0,0,L2-_initAD
L2:
.stabn 0x44,0,50,L3-_initAD
L3:
;Line#50 {

 .stabn 0x44,0,51,L4-_initAD
L4:
;Line#51 	ad_value = 0x0000;

 	;MOVI2 _ad_value ,#0
	__SelectBANK _ad_value
	CLR _ad_value
	CLR _ad_value+1
.stabn 0x44,0,52,L5-_initAD
L5:
;Line#52 	ad_val_sum = 0x0000;

 	;MOVI2 _ad_val_sum ,#0
	__SelectBANK _ad_val_sum
	CLR _ad_val_sum
	CLR _ad_val_sum+1
.stabn 0x44,0,53,L6-_initAD
L6:
;Line#53 	adBattIdx = 0;	

 	;MOVU1 _adBattIdx ,#0
	__SelectBANK _adBattIdx
	CLR _adBattIdx
.stabn 0x44,0,58,L7-_initAD
L7:
;Line#58 	ADR = 0x40;

 	;MOVU1 0xB3 ,#64
	MOV A, #0x40
	B0MOV 0xB3, A
.stabn 0x44,0,60,L8-_initAD
L8:
;Line#60 	FEVHENB = 0;

 	;MOVX1 0xAF.7 ,#0
	B0BCLR 0xAF.7
.stabn 0x44,0,62,L9-_initAD
L9:
;Line#62 	VREFH = 0x02;

 	;MOVU1 0xAF ,#2
	MOV A, #0x02
	B0MOV 0xAF, A
.stabn 0x44,0,64,L10-_initAD
L10:
;Line#64 	P4CON = 0x08;

 	;MOVU1 0xAE ,#8
	MOV A, #0x08
	B0MOV 0xAE, A
.stabn 0x44,0,65,L11-_initAD
L11:
;Line#65 	FP43M = 0;

 	;MOVX1 0xC4.3 ,#0
	B0BCLR 0xC4.3
.stabn 0x44,0,66,L12-_initAD
L12:
;Line#66 	P4UR = 0x00;

 	;MOVU1 0xE4 ,#0
	__SelectBANKCNST 0
	CLR (0xE4 & 0xFF)
.stabn 0x44,0,68,L13-_initAD
L13:
;Line#68 	FADENB = 1;

 	;MOVX1 0xB1.7 ,#1
	B0BSET 0xB1.7
.stabn 0x44,0,70,L14-_initAD
L14:
;Line#70 	NOP(400);

 	_NOP 400 

.stabn 0x44,0,70,L15-_initAD
L15:
;Line#70 	NOP(400);

 .stabn 0x44,0,72,L16-_initAD
L16:
;Line#72 	FCHS2 = 0;

 	;MOVX1 0xB1.2 ,#0
	B0BCLR 0xB1.2
.stabn 0x44,0,73,L17-_initAD
L17:
;Line#73 	FCHS1 = 1;

 	;MOVX1 0xB1.1 ,#1
	B0BSET 0xB1.1
.stabn 0x44,0,74,L18-_initAD
L18:
;Line#74 	FCHS0 = 1;

 	;MOVX1 0xB1.0 ,#1
	B0BSET 0xB1.0
.stabn 0x44,0,76,L19-_initAD
L19:
;Line#76 	FGCHS = 1;

 	;MOVX1 0xB1.4 ,#1
	B0BSET 0xB1.4
.stabn 0x44,0,78,L20-_initAD
L20:
;Line#78 	return;

 .stabn 0xE0,0,0,L21-_initAD
L21:
.stabn 0x44,0,79,L22-_initAD
L22:
;Line#79 }

L1:
	RET
.stabs "controlAD:F13",36,0,0,_controlAD
_Function_controlAD_code SEGMENT CODE INBANK USING _Function_controlAD_data
_controlAD:
.stabs "ad_val_H:6",128,0,0,_controlAD_data@0
.stabs "ad_val:6",128,0,0,_controlAD_data@2
.stabn 0xC0,0,0,L31-_controlAD
L31:
.stabn 0x44,0,86,L32-_controlAD
L32:
;Line#86 {

 .stabn 0x44,0,87,L33-_controlAD
L33:
;Line#87 	long int ad_val_H = 0;

 	;MOVI2 _controlAD_data@0 ,#0
	__SelectBANK _controlAD_data@0
	CLR _controlAD_data@0
	CLR _controlAD_data@0+1
.stabn 0x44,0,88,L34-_controlAD
L34:
;Line#88 	long int ad_val = 0;

 	;MOVI2 _controlAD_data@2 ,#0
	__SelectBANK _controlAD_data@2
	CLR _controlAD_data@2
	CLR _controlAD_data@2+1
.stabn 0x44,0,91,L35-_controlAD
L35:
;Line#91 	FADS = 1;

 	;MOVX1 0xB1.6 ,#1
	B0BSET 0xB1.6
L24:
.stabn 0xC0,0,1,L36-_controlAD
L36:
.stabn 0x44,0,93,L37-_controlAD
L37:
;Line#93 	while(FEOC == 0){

 .stabn 0x44,0,94,L38-_controlAD
L38:
;Line#94 		;

 .stabn 0xE0,0,1,L39-_controlAD
L39:
.stabn 0x44,0,95,L40-_controlAD
L40:
;Line#95 	}

L25:
.stabn 0x44,0,93,L41-_controlAD
L41:
;Line#93 	while(FEOC == 0){

 	;EQ L24 ,0xB1.5 ,#0
	B0BTS1 0xB1.5
	JMP L24
.stabn 0x44,0,97,L42-_controlAD
L42:
;Line#97 	if (FP02 != 0) {

 	;EQ L23 ,0xD0.2 ,#0
	B0BTS1 0xD0.2
	JMP L23
.stabn 0xC0,0,1,L43-_controlAD
L43:
.stabn 0x44,0,97,L44-_controlAD
L44:
;Line#97 	if (FP02 != 0) {

 .stabn 0x44,0,98,L45-_controlAD
L45:
;Line#98 		ad_val_H = ADB;	          //Get AD convert result high byte

 	;CVUI2 _controlAD_data@0 ,0xB2
	B0MOV A, 0xB2
	__SelectBANK _controlAD_data@0
	MOV _controlAD_data@0, A
	CLR _controlAD_data@0+1
.stabn 0x44,0,99,L46-_controlAD
L46:
;Line#99 		ad_val = (ad_val_H << 4)|(ADR & 0x0f);

 	;LSH W0:W1 ,_controlAD_data@0 ,#4
	MOV A, #(W0)$M
	B0MOV H, A
	MOV A, #(W0)$L
	B0MOV L, A
	B0MOV Y, #(_controlAD_data@0)$M
	B0MOV Z, #(_controlAD_data@0)$L
	MOV A, #0x04
	CALL __Get2ByteRamToLArg
	CALL __SLLong2Ram
	;ANDU1 W2 ,0xB3 ,#15
	B0MOV A, 0xB3
	AND A, #0x0f
	;CVUI2 W2:W3 ,W2
	__SelectBANKCNST 0
	CLR W3
	;ORI2 _controlAD_data@2 ,W2:W3 ,W0:W1
	__SelectBANKCNST 0
	OR A, W0
	__SelectBANK _controlAD_data@2
	MOV _controlAD_data@2, A
	B0MOV A, W1
	__SelectBANKCNST 0
	OR A, W3
	__SelectBANK _controlAD_data@2
	MOV _controlAD_data@2+1, A
.stabn 0x44,0,102,L47-_controlAD
L47:
;Line#102 		ad_val_sum = ad_val_sum + ad_val;

 	;ADDI2 _ad_val_sum ,_ad_val_sum ,_controlAD_data@2
	MOV A, _controlAD_data@2
	__SelectBANK _ad_val_sum
	ADD _ad_val_sum, A
	__SelectBANK _controlAD_data@2
	MOV A, _controlAD_data@2+1
	__SelectBANK _ad_val_sum
	ADC _ad_val_sum+1, A
.stabn 0x44,0,103,L48-_controlAD
L48:
;Line#103 		adBattIdx ++;

 	;ADDU1 _adBattIdx ,_adBattIdx ,#1
	__SelectBANK _adBattIdx
	INCMS _adBattIdx
	NOP
.stabn 0x44,0,104,L49-_controlAD
L49:
;Line#104 		if (adBattIdx >= AD_SAMPLING_TIMES) {

 	;LT L23 ,_adBattIdx ,#8
	MOV A, _adBattIdx
	SUB A, #0x08
	JLT L23
.stabn 0xC0,0,2,L50-_controlAD
L50:
.stabn 0x44,0,104,L51-_controlAD
L51:
;Line#104 		if (adBattIdx >= AD_SAMPLING_TIMES) {

 .stabn 0x44,0,105,L52-_controlAD
L52:
;Line#105 			adBattIdx = 0;

 	;MOVU1 _adBattIdx ,#0
	CLR _adBattIdx
.stabn 0x44,0,106,L53-_controlAD
L53:
;Line#106 			ad_value = ad_val_sum >> AD_SAMPLING_TIMES_SHIFT;

 	;RSH _ad_value ,_ad_val_sum ,#3
	MOV A, #(_ad_value)$M
	B0MOV H, A
	MOV A, #(_ad_value)$L
	B0MOV L, A
	B0MOV Y, #(_ad_val_sum)$M
	B0MOV Z, #(_ad_val_sum)$L
	MOV A, #0x03
	CALL __Get2ByteRamToLArg
	CALL __SRLong2Ram
.stabn 0x44,0,107,L54-_controlAD
L54:
;Line#107 			ad_val_sum = 0x0000;

 	;MOVI2 _ad_val_sum ,#0
	__SelectBANK _ad_val_sum
	CLR _ad_val_sum
	CLR _ad_val_sum+1
.stabn 0xE0,0,2,L55-_controlAD
L55:
.stabn 0x44,0,108,L56-_controlAD
L56:
;Line#108 		}

 .stabn 0xE0,0,1,L57-_controlAD
L57:
.stabn 0x44,0,109,L58-_controlAD
L58:
;Line#109 	}

 .stabn 0x44,0,111,L59-_controlAD
L59:
;Line#111 	return;

 .stabn 0xE0,0,0,L60-_controlAD
L60:
.stabn 0x44,0,112,L61-_controlAD
L61:
;Line#112 }

L23:
	RET

CALLTREE _controlAD invoke __Get2ByteRamToLArg,__SLLong2Ram,__SRLong2Ram

.stabs "getBAT_AD:F6",36,0,0,_getBAT_AD
_Function_getBAT_AD_code SEGMENT CODE INBANK USING _Function_getBAT_AD_data
_getBAT_AD:
.stabn 0xC0,0,0,L63-_getBAT_AD
L63:
.stabn 0x44,0,119,L64-_getBAT_AD
L64:
;Line#119 {

 .stabn 0x44,0,120,L65-_getBAT_AD
L65:
;Line#120 	return (ad_value);

 	;RETI2 _ad_value
	__SelectBANK _ad_value
	MOV A, _ad_value+1
	B0MOV R, A
	MOV A, _ad_value
.stabn 0xE0,0,0,L66-_getBAT_AD
L66:
.stabn 0x44,0,121,L67-_getBAT_AD
L67:
;Line#121 }

L62:
	RET
.stabs "clearAD:F13",36,0,0,_clearAD
_Function_clearAD_code SEGMENT CODE INBANK USING _Function_clearAD_data
_clearAD:
.stabn 0xC0,0,0,L69-_clearAD
L69:
.stabn 0x44,0,129,L70-_clearAD
L70:
;Line#129 {

 .stabn 0x44,0,130,L71-_clearAD
L71:
;Line#130 	ad_value = 0x0000;

 	;MOVI2 _ad_value ,#0
	__SelectBANK _ad_value
	CLR _ad_value
	CLR _ad_value+1
.stabn 0x44,0,131,L72-_clearAD
L72:
;Line#131 	ad_val_sum = 0x0000;

 	;MOVI2 _ad_val_sum ,#0
	__SelectBANK _ad_val_sum
	CLR _ad_val_sum
	CLR _ad_val_sum+1
.stabn 0x44,0,132,L73-_clearAD
L73:
;Line#132 	adBattIdx = 0;

 	;MOVU1 _adBattIdx ,#0
	__SelectBANK _adBattIdx
	CLR _adBattIdx
.stabn 0x44,0,134,L74-_clearAD
L74:
;Line#134 	return ;

 .stabn 0xE0,0,0,L75-_clearAD
L75:
.stabn 0x44,0,135,L76-_clearAD
L76:
;Line#135 }

L68:
	RET
.stabs "_intrinsicbitfield:T15=s1bit0:12,0,1;bit1:12,1,1;bit2:12,2,1;\\",128,0,0,0
.stabs "bit3:12,3,1;bit4:12,4,1;bit5:12,5,1;bit6:12,6,1;bit7:12,7,1;;",128,0,0,0
.stabs "", 100, 0, 0,Letext
Letext:
.stabs "adBattIdx:S9",40,0,0,_adBattIdx
.stabs "ad_val_sum:S6",40,0,0,_ad_val_sum
.stabs "ad_value:S6",40,0,0,_ad_value
EXTERN CODE __SRLong2Ram
EXTERN CODE __SLLong2Ram
EXTERN CODE __Get2ByteRamToLArg
