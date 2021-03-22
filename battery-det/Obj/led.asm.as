CHIP SN8P2711A
EXTERN DATA X
EXTERN DATA H
EXTERN DATA L
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
	DB 0xFF,0xF, 0xFF,0x9, 0x43,0xA, 0xCC,0x9, 0x10,0xA, 0x99,0x9, 0xDD,0x9, 0x0,0x0
_SGV_INIT_CODE SEGMENT CODE BANK 0x0 INBANK
	extern code __INIT@global_
	B0MOV 132, #(_LedChangeBufSetting_initial_value)$M
	B0MOV 131, #(_LedChangeBufSetting_initial_value)$L
	MOV A, #(_LedChangeBufSetting)$M
	B0MOV H, A
	MOV A, #(_LedChangeBufSetting)$L
	B0MOV L, A
	MOV A, #(16)
	B0MOV X, A
	CALL __INIT@global_
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
 .stabn 0x44,0,66,L4-_initLED
L4:
	CLR _led_status
.stabn 0x44,0,67,L5-_initLED
L5:
	BSET _led_init
.stabn 0x44,0,69,L6-_initLED
L6:
 .stabn 0xE0,0,0,L7-_initLED
L7:
.stabn 0x44,0,70,L8-_initLED
L8:
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
 .stabn 0x44,0,82,L40-_controlLED
L40:
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	MOV A, #0x00
	B0MOV 130, #0x10
	CALL __Get2ByteRamCst
	CALL __CmpULong
	b0bts1	134.0
	JMP	L10
.stabn 0xC0,0,1,L41-_controlLED
L41:
.stabn 0x44,0,82,L42-_controlLED
L42:
 .stabn 0x44,0,83,L43-_controlLED
L43:
	CLR _setLED_arg@0
	CALL _setLED
.stabn 0x44,0,84,L44-_controlLED
L44:
	BSET _led_init
.stabn 0xE0,0,1,L45-_controlLED
L45:
.stabn 0x44,0,85,L46-_controlLED
L46:
	JMP L9
L10:
.stabn 0xC0,0,1,L47-_controlLED
L47:
.stabn 0x44,0,85,L48-_controlLED
L48:
 .stabn 0x44,0,87,L49-_controlLED
L49:
	BTS1 _led_init
	JMP L12
.stabn 0xC0,0,2,L50-_controlLED
L50:
.stabn 0x44,0,87,L51-_controlLED
L51:
 .stabn 0x44,0,88,L52-_controlLED
L52:
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	MOV A, #0x00
	B0MOV 130, #0x00
	CALL __Get2ByteRamCst
	CALL __CmpLong
	B0BTS0	134.0
	JMP	L14
	B0BTS1	134.2
	JMP	L14
.stabn 0xC0,0,3,L53-_controlLED
L53:
.stabn 0x44,0,89,L54-_controlLED
L54:
 .stabn 0x44,0,90,L55-_controlLED
L55:
	BCLR _led_init
.stabn 0x44,0,91,L56-_controlLED
L56:
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, #(_LedChangeBufSetting+0+2)$M
	MOV A, #(_LedChangeBufSetting+0+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	B0BTS1	134.2
	JMP	L16
.stabn 0xC0,0,4,L57-_controlLED
L57:
.stabn 0x44,0,91,L58-_controlLED
L58:
 .stabn 0x44,0,92,L59-_controlLED
L59:
	CLR _controlLED_data@0
.stabn 0xE0,0,4,L60-_controlLED
L60:
.stabn 0x44,0,93,L61-_controlLED
L61:
	JMP L13
L16:
.stabn 0x44,0,93,L62-_controlLED
L62:
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, #(_LedChangeBufSetting+4+2)$M
	MOV A, #(_LedChangeBufSetting+4+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	B0BTS1	134.2
	JMP	L20
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, #(_LedChangeBufSetting+0+2)$M
	MOV A, #(_LedChangeBufSetting+0+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	b0bts0	134.2
	JMP	L20
.stabn 0xC0,0,4,L63-_controlLED
L63:
.stabn 0x44,0,94,L64-_controlLED
L64:
 .stabn 0x44,0,95,L65-_controlLED
L65:
	MOV A, #0x01
	MOV _controlLED_data@0, A
.stabn 0xE0,0,4,L66-_controlLED
L66:
.stabn 0x44,0,96,L67-_controlLED
L67:
	JMP L13
L20:
.stabn 0x44,0,96,L68-_controlLED
L68:
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, #(_LedChangeBufSetting+8+2)$M
	MOV A, #(_LedChangeBufSetting+8+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	B0BTS1	134.2
	JMP	L26
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, #(_LedChangeBufSetting+4+2)$M
	MOV A, #(_LedChangeBufSetting+4+2)$L
	CALL __Get2ByteRamRam
	CALL __CmpLong
	b0bts0	134.2
	JMP	L26
.stabn 0xC0,0,4,L69-_controlLED
L69:
.stabn 0x44,0,97,L70-_controlLED
L70:
 .stabn 0x44,0,98,L71-_controlLED
L71:
	MOV A, #0x02
	MOV _controlLED_data@0, A
.stabn 0xE0,0,4,L72-_controlLED
L72:
.stabn 0x44,0,99,L73-_controlLED
L73:
	JMP L13
L26:
.stabn 0xC0,0,4,L74-_controlLED
L74:
.stabn 0x44,0,99,L75-_controlLED
L75:
 .stabn 0x44,0,100,L76-_controlLED
L76:
	MOV A, #0x03
	MOV _controlLED_data@0, A
.stabn 0xE0,0,4,L77-_controlLED
L77:
.stabn 0x44,0,101,L78-_controlLED
L78:
 .stabn 0xE0,0,3,L79-_controlLED
L79:
.stabn 0x44,0,102,L80-_controlLED
L80:
	JMP L13
L14:
.stabn 0xC0,0,3,L81-_controlLED
L81:
.stabn 0x44,0,102,L82-_controlLED
L82:
 .stabn 0x44,0,104,L83-_controlLED
L83:
	MOV A, #0x04
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L84-_controlLED
L84:
.stabn 0x44,0,105,L85-_controlLED
L85:
 .stabn 0xE0,0,2,L86-_controlLED
L86:
.stabn 0x44,0,106,L87-_controlLED
L87:
	JMP L13
L12:
.stabn 0xC0,0,2,L88-_controlLED
L88:
.stabn 0x44,0,106,L89-_controlLED
L89:
 .stabn 0x44,0,108,L90-_controlLED
L90:
	MOV A, _led_status
	B0MOV W0, A
	CLR W1
	B0BCLR 134.2
	RLCM W0
	RLCM W1
	B0BCLR 134.2
	RLCM W0
	RLCM W1
	B0MOV A, W0
	ADD A, #(_LedChangeBufSetting+2)$L
	B0MOV W0, A
	MOV A, #(_LedChangeBufSetting+2)$M
	ADC A, W1
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, A
	B0MOV A, W0
	CALL __Get2ByteRamRam
	CALL __CmpLong
	b0bts0	134.2
	JMP	L32
.stabn 0xC0,0,3,L91-_controlLED
L91:
.stabn 0x44,0,108,L92-_controlLED
L92:
 .stabn 0x44,0,109,L93-_controlLED
L93:
	MOV A, #0x01
	ADD A, _led_status
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L94-_controlLED
L94:
.stabn 0x44,0,110,L95-_controlLED
L95:
	JMP L33
L32:
.stabn 0x44,0,110,L96-_controlLED
L96:
	MOV A, _led_status
	B0MOV W0, A
	CLR W1
	B0BCLR 134.2
	RLCM W0
	RLCM W1
	B0BCLR 134.2
	RLCM W0
	RLCM W1
	B0MOV A, W0
	ADD A, #(_LedChangeBufSetting+0)$L
	B0MOV W0, A
	MOV A, #(_LedChangeBufSetting+0)$M
	ADC A, W1
	B0MOV 132, #(_controlLED_arg@0)$M
	B0MOV 131, #(_controlLED_arg@0)$L
	B0MOV 130, A
	B0MOV A, W0
	CALL __Get2ByteRamRam
	CALL __CmpLong
	B0BTS1	134.2
	JMP	L35
.stabn 0xC0,0,3,L97-_controlLED
L97:
.stabn 0x44,0,110,L98-_controlLED
L98:
 .stabn 0x44,0,111,L99-_controlLED
L99:
	MOV A, _led_status
	SUB A, #0x01
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L100-_controlLED
L100:
.stabn 0x44,0,112,L101-_controlLED
L101:
	JMP L36
L35:
.stabn 0xC0,0,3,L102-_controlLED
L102:
.stabn 0x44,0,112,L103-_controlLED
L103:
 .stabn 0x44,0,113,L104-_controlLED
L104:
	MOV A, _led_status
	MOV _controlLED_data@0, A
.stabn 0xE0,0,3,L105-_controlLED
L105:
.stabn 0x44,0,114,L106-_controlLED
L106:
L36:
L33:
.stabn 0xE0,0,2,L107-_controlLED
L107:
.stabn 0x44,0,115,L108-_controlLED
L108:
L13:
.stabn 0x44,0,116,L109-_controlLED
L109:
	MOV A, _controlLED_data@0
	MOV _setLED_arg@0, A
	CALL _setLED
.stabn 0xE0,0,1,L110-_controlLED
L110:
.stabn 0x44,0,117,L111-_controlLED
L111:
 .stabn 0x44,0,119,L112-_controlLED
L112:
 .stabn 0xE0,0,0,L113-_controlLED
L113:
.stabn 0x44,0,120,L114-_controlLED
L114:
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
 .stabn 0x44,0,129,L124-_setLED
L124:
	MOV A, _setLED_arg@0
	ADD A, #0x80
	CMPRS A, #0x84
	B0BTS0 134.2
	JMP L151
	SUB A, #0x80
	B0BTS1 134.2
	JMP L151
	B0ADD 206, A
	JMP L118
	JMP L119
	JMP L120
	JMP L121
L151:
	JMP L117
.stabn 0xC0,0,1,L125-_setLED
L125:
.stabn 0x44,0,129,L126-_setLED
L126:
L118:
.stabn 0x44,0,131,L127-_setLED
L127:
	B0BCLR 0xD0.3
.stabn 0x44,0,132,L128-_setLED
L128:
	B0BSET 0xD4.4
.stabn 0x44,0,133,L129-_setLED
L129:
	B0BCLR 0xD5.3
.stabn 0x44,0,134,L130-_setLED
L130:
	JMP L117
L119:
.stabn 0x44,0,136,L131-_setLED
L131:
	B0BCLR 0xD0.3
.stabn 0x44,0,137,L132-_setLED
L132:
	B0BCLR 0xD4.4
.stabn 0x44,0,138,L133-_setLED
L133:
	B0BSET 0xD5.3
.stabn 0x44,0,139,L134-_setLED
L134:
	JMP L117
L120:
.stabn 0x44,0,141,L135-_setLED
L135:
	B0BSET 0xD0.3
.stabn 0x44,0,142,L136-_setLED
L136:
	B0BCLR 0xD4.4
.stabn 0x44,0,143,L137-_setLED
L137:
	B0BCLR 0xD5.3
.stabn 0x44,0,144,L138-_setLED
L138:
	JMP L117
L121:
.stabn 0x44,0,146,L139-_setLED
L139:
	MOV A, #0x00
	B0BTS0 0xD0.3
	MOV A, #0x01
	B0BSET 0xD0.3
	CMPRS A, #0x00
	B0BCLR 0xD0.3
.stabn 0x44,0,147,L140-_setLED
L140:
	B0BCLR 0xD4.4
.stabn 0x44,0,148,L141-_setLED
L141:
	B0BCLR 0xD5.3
.stabn 0x44,0,149,L142-_setLED
L142:
 .stabn 0x44,0,151,L143-_setLED
L143:
 .stabn 0xE0,0,1,L144-_setLED
L144:
.stabn 0x44,0,152,L145-_setLED
L145:
L117:
.stabn 0x44,0,154,L146-_setLED
L146:
	MOV A, _setLED_arg@0
	MOV _led_status, A
.stabn 0x44,0,156,L147-_setLED
L147:
 .stabn 0xE0,0,0,L148-_setLED
L148:
.stabn 0x44,0,157,L149-_setLED
L149:
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
