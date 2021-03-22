CHIP SN8P2711A
EXTERN DATA X
EXTERN DATA H
EXTERN DATA L
EXTERN DATA T
EXTERN DATA I
.CODE
.stabs "lcc4_compiled.",0x3C,0,0,0
.stabs "C:\Users\HUAWEI\Desktop\battery-det(1)\battery-det\battery-det/",0x64,0,3,Ltext0
.stabs ".\Src\main.c",0x64,0,3,Ltext0
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
PUBLIC _dc_type
PUBLIC _isr_isr
PUBLIC _main
PUBLIC _initTimer
PUBLIC _init_IO
PUBLIC _dc_DET
PUBLIC _bat_in_cnt
_bat_in_cnt@segment SEGMENT DATA INBANK
	_bat_in_cnt DS 1
PUBLIC _dc_in_cnt
_dc_in_cnt@segment SEGMENT DATA INBANK
	_dc_in_cnt DS 1
PUBLIC _fcout2
_fcout2@segment SEGMENT DATA INBANK
	_fcout2 DS 1
PUBLIC _fcout1
_fcout1@segment SEGMENT DATA INBANK
	_fcout1 DS 1
_dc_type@segment SEGMENT DATA INBANK
	_dc_type DS 1
_SGV_INIT_CODE SEGMENT CODE BANK 0x0 INBANK
	MOV A,#0x1
	MOV _dc_type,A
_InterruptBackupData SEGMENT DATA BANK 0 INBANK COMMON
	_bufT ds 1
	_bufI ds 1
	_bufY ds 1
	_bufZ ds 1
	_bufR ds 1
	_bufX ds 1
_Function_isr_isr_data SEGMENT DATA INBANK
_Function_main_data SEGMENT DATA INBANK
	_main_data@0	DS	1
	_main_data@1	DS	1
_Function_initTimer_data SEGMENT DATA INBANK
_Function_init_IO_data SEGMENT DATA INBANK
_Function_dc_DET_data SEGMENT DATA INBANK
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
.stabs " :T15=eDC_IN:0,BAT_IN:1,;",128,0,0,0
.stabs "dc_type:G15",32,0,0,_dc_type
.stabs "isr:F13",36,0,0,_isr_isr
_interrupt@_isr_isr SEGMENT CODE AT 0x8 INBANK
_vector_for_isr_isr:
	JMP _isr_isr
_Function_isr_isr_code SEGMENT CODE INBANK USING _Function_isr_isr_data
_isr_isr:
	PUSH
		B0MOV A, X
		B0MOV _bufX, A
		B0MOV A, 132
		B0MOV _bufY, A
		B0MOV A, 131
		B0MOV _bufZ, A
		B0MOV A, 130
		B0MOV _bufR, A
	B0MOV A, T
	B0MOV _bufT, A
	B0MOV A, I
	B0MOV _bufI, A
.stabn 0xC0,0,0,L5-_isr_isr
L5:
.stabn 0x44,0,59,L6-_isr_isr
L6:
 .stabn 0x44,0,60,L7-_isr_isr
L7:
	B0BTS1 0xC8.5
	JMP L3
.stabn 0xC0,0,1,L8-_isr_isr
L8:
.stabn 0x44,0,60,L9-_isr_isr
L9:
 .stabn 0x44,0,61,L10-_isr_isr
L10:
	B0BCLR 0xC8.5
.stabn 0x44,0,62,L11-_isr_isr
L11:
	INCMS _fcout1
	NOP
.stabn 0xE0,0,1,L12-_isr_isr
L12:
.stabn 0x44,0,63,L13-_isr_isr
L13:
L3:
.stabn 0xE0,0,0,L14-_isr_isr
L14:
.stabn 0x44,0,64,L15-_isr_isr
L15:
L2:
	B0MOV A, _bufT
	B0MOV T, A
	B0MOV A, _bufI
	B0MOV I, A
	B0MOV A, _bufX
	B0MOV X, A
	B0MOV A, _bufY
	B0MOV 132, A
	B0MOV A, _bufZ
	B0MOV 131, A
	B0MOV A, _bufR
	B0MOV 130, A
	POP
	RETI
.stabs "main:F13",36,0,0,_main
_Function_main_code SEGMENT CODE INBANK USING _Function_main_data
_main:
.stabs "temp_bat:6",128,0,0,_main_data@0
.stabn 0xC0,0,0,L26-_main
L26:
.stabn 0x44,0,72,L27-_main
L27:
 .stabn 0x44,0,73,L28-_main
L28:
	CLR _main_data@0
	CLR _main_data@0+1
.stabn 0x44,0,76,L29-_main
L29:
	CALL _initTimer
.stabn 0x44,0,78,L30-_main
L30:
	CALL _init_IO
.stabn 0x44,0,80,L31-_main
L31:
	CALL _initAD
.stabn 0x44,0,82,L32-_main
L32:
	CALL _initLED
L17:
.stabn 0xC0,0,1,L33-_main
L33:
.stabn 0x44,0,84,L34-_main
L34:
 .stabn 0x44,0,86,L35-_main
L35:
	CALL __ClearWatchDogTimer
.stabn 0x44,0,89,L36-_main
L36:
	MOV A, _fcout1
	CMPRS A, #0x3c
	JMP L20
.stabn 0xC0,0,2,L37-_main
L37:
.stabn 0x44,0,89,L38-_main
L38:
 .stabn 0x44,0,90,L39-_main
L39:
	CLR _fcout1
.stabn 0x44,0,91,L40-_main
L40:
	INCMS _fcout2
	NOP
.stabn 0x44,0,93,L41-_main
L41:
	CALL _controlAD
.stabn 0x44,0,95,L42-_main
L42:
	CALL _dc_DET
.stabn 0xE0,0,2,L43-_main
L43:
.stabn 0x44,0,96,L44-_main
L44:
L20:
.stabn 0x44,0,99,L45-_main
L45:
	MOV A, _fcout2
	SUB A, #0x04
	B0BTS1	134.2
	JMP	L22
.stabn 0xC0,0,2,L46-_main
L46:
.stabn 0x44,0,99,L47-_main
L47:
 .stabn 0x44,0,100,L48-_main
L48:
	CLR _fcout2
.stabn 0x44,0,102,L49-_main
L49:
	MOV A, _dc_type
	CMPRS A, #0x00
	JMP L24
.stabn 0xC0,0,3,L50-_main
L50:
.stabn 0x44,0,102,L51-_main
L51:
 .stabn 0x44,0,103,L52-_main
L52:
	CLR _controlLED_arg@0
	MOV A, #0x10
	MOV _controlLED_arg@0+1, A
	CALL _controlLED
.stabn 0x44,0,104,L53-_main
L53:
	CALL _clearAD
.stabn 0xE0,0,3,L54-_main
L54:
.stabn 0x44,0,105,L55-_main
L55:
	JMP L25
L24:
.stabn 0xC0,0,3,L56-_main
L56:
.stabn 0x44,0,105,L57-_main
L57:
 .stabn 0x44,0,106,L58-_main
L58:
	CALL _getBAT_AD
	MOV _main_data@0, A
	B0MOV A, 130
	MOV _main_data@0+1, A
.stabn 0x44,0,107,L59-_main
L59:
	MOV A, _main_data@0
	MOV _controlLED_arg@0, A
	MOV A, _main_data@0+1
	MOV _controlLED_arg@0+1, A
	CALL _controlLED
.stabn 0xE0,0,3,L60-_main
L60:
.stabn 0x44,0,108,L61-_main
L61:
L25:
.stabn 0xE0,0,2,L62-_main
L62:
.stabn 0x44,0,109,L63-_main
L63:
L22:
.stabn 0xE0,0,1,L64-_main
L64:
.stabn 0x44,0,110,L65-_main
L65:
L18:
.stabn 0x44,0,84,L66-_main
L66:
	JMP L17
.stabn 0xE0,0,0,L67-_main
L67:
.stabn 0x44,0,111,L68-_main
L68:
L16:
_main_end:
CALLTREE _main invoke _initTimer,_init_IO,_initAD,_initLED,__ClearWatchDogTimer,_controlAD,_dc_DET,_controlLED,_clearAD,_getBAT_AD
.stabs "initTimer:F13",36,0,0,_initTimer
_Function_initTimer_code SEGMENT CODE INBANK USING _Function_initTimer_data
_initTimer:
.stabn 0xC0,0,0,L70-_initTimer
L70:
.stabn 0x44,0,119,L71-_initTimer
L71:
 .stabn 0x44,0,126,L72-_initTimer
L72:
	MOV A, #0x34
	B0MOV 0xDA, A
.stabn 0x44,0,128,L73-_initTimer
L73:
	MOV A, #0x7d
	B0MOV 0xDB, A
.stabn 0x44,0,129,L74-_initTimer
L74:
	B0MOV 0xCD, A
.stabn 0x44,0,131,L75-_initTimer
L75:
	B0BCLR 0xC8.5
.stabn 0x44,0,133,L76-_initTimer
L76:
	B0BCLR 0xD8.2
.stabn 0x44,0,135,L77-_initTimer
L77:
	B0BSET 0xC9.5
.stabn 0x44,0,136,L78-_initTimer
L78:
	CLR (0xC8 &  0xFF)
.stabn 0x44,0,137,L79-_initTimer
L79:
	MOV A, #0x20
	B0MOV 0xC9, A
.stabn 0x44,0,138,L80-_initTimer
L80:
	B0BSET 0xDA.7
.stabn 0x44,0,139,L81-_initTimer
L81:
	B0BSET 0xDF.7
.stabn 0x44,0,141,L82-_initTimer
L82:
 .stabn 0xE0,0,0,L83-_initTimer
L83:
.stabn 0x44,0,142,L84-_initTimer
L84:
L69:
	RET
.stabs "init_IO:F13",36,0,0,_init_IO
_Function_init_IO_code SEGMENT CODE INBANK USING _Function_init_IO_data
_init_IO:
.stabn 0xC0,0,0,L86-_init_IO
L86:
.stabn 0x44,0,150,L87-_init_IO
L87:
 .stabn 0x44,0,152,L88-_init_IO
L88:
	B0BCLR 0xB8.2
.stabn 0x44,0,154,L89-_init_IO
L89:
	B0BSET 0xB8.3
.stabn 0x44,0,155,L90-_init_IO
L90:
	B0BCLR 0xD0.3
.stabn 0x44,0,157,L91-_init_IO
L91:
	B0BSET 0xC4.4
.stabn 0x44,0,158,L92-_init_IO
L92:
	B0BCLR 0xD4.4
.stabn 0x44,0,160,L93-_init_IO
L93:
	B0BSET 0xC5.3
.stabn 0x44,0,161,L94-_init_IO
L94:
	B0BCLR 0xD5.3
.stabn 0x44,0,163,L95-_init_IO
L95:
 .stabn 0xE0,0,0,L96-_init_IO
L96:
.stabn 0x44,0,164,L97-_init_IO
L97:
L85:
	RET
.stabs "dc_DET:F13",36,0,0,_dc_DET
_Function_dc_DET_code SEGMENT CODE INBANK USING _Function_dc_DET_data
_dc_DET:
.stabn 0xC0,0,0,L105-_dc_DET
L105:
.stabn 0x44,0,171,L106-_dc_DET
L106:
 .stabn 0x44,0,173,L107-_dc_DET
L107:
	B0BTS0 0xD0.2
	JMP L99
.stabn 0xC0,0,1,L108-_dc_DET
L108:
.stabn 0x44,0,173,L109-_dc_DET
L109:
 .stabn 0x44,0,174,L110-_dc_DET
L110:
	CLR _bat_in_cnt
.stabn 0x44,0,175,L111-_dc_DET
L111:
	INCMS _dc_in_cnt
	NOP
.stabn 0x44,0,176,L112-_dc_DET
L112:
	MOV A, _dc_in_cnt
	CMPRS A, #0x08
	JMP L98
.stabn 0xC0,0,2,L113-_dc_DET
L113:
.stabn 0x44,0,176,L114-_dc_DET
L114:
 .stabn 0x44,0,177,L115-_dc_DET
L115:
	CLR _dc_in_cnt
.stabn 0x44,0,178,L116-_dc_DET
L116:
	CLR _dc_type
.stabn 0xE0,0,2,L117-_dc_DET
L117:
.stabn 0x44,0,179,L118-_dc_DET
L118:
 .stabn 0xE0,0,1,L119-_dc_DET
L119:
.stabn 0x44,0,180,L120-_dc_DET
L120:
	JMP L98
L99:
.stabn 0xC0,0,1,L121-_dc_DET
L121:
.stabn 0x44,0,180,L122-_dc_DET
L122:
 .stabn 0x44,0,181,L123-_dc_DET
L123:
	CLR _dc_in_cnt
.stabn 0x44,0,182,L124-_dc_DET
L124:
	INCMS _bat_in_cnt
	NOP
.stabn 0x44,0,183,L125-_dc_DET
L125:
	MOV A, _bat_in_cnt
	CMPRS A, #0x08
	JMP L98
.stabn 0xC0,0,2,L126-_dc_DET
L126:
.stabn 0x44,0,183,L127-_dc_DET
L127:
 .stabn 0x44,0,184,L128-_dc_DET
L128:
	CLR _bat_in_cnt
.stabn 0x44,0,185,L129-_dc_DET
L129:
	MOV A, #0x01
	MOV _dc_type, A
.stabn 0xE0,0,2,L130-_dc_DET
L130:
.stabn 0x44,0,186,L131-_dc_DET
L131:
 .stabn 0xE0,0,1,L132-_dc_DET
L132:
.stabn 0x44,0,187,L133-_dc_DET
L133:
 .stabn 0x44,0,189,L134-_dc_DET
L134:
 .stabn 0xE0,0,0,L135-_dc_DET
L135:
.stabn 0x44,0,190,L136-_dc_DET
L136:
L98:
	RET
.stabs "_intrinsicbitfield:T16=s1bit0:12,0,1;bit1:12,1,1;bit2:12,2,1;\\",128,0,0,0
.stabs "bit3:12,3,1;bit4:12,4,1;bit5:12,5,1;bit6:12,6,1;bit7:12,7,1;;",128,0,0,0
.stabs "DC_TYPE:t15",128,0,0,0
.stabs "", 100, 0, 0,Letext
Letext:
.stabs "bat_in_cnt:G9",32,0,0,_bat_in_cnt
.stabs "dc_in_cnt:G9",32,0,0,_dc_in_cnt
.stabs "fcout2:G9",32,0,0,_fcout2
.stabs "fcout1:G9",32,0,0,_fcout1
extern data _controlLED_arg@0
EXTERN CODE __ClearWatchDogTimer
EXTERN CODE _initAD
EXTERN CODE _controlAD
EXTERN CODE _getBAT_AD
EXTERN CODE _clearAD
EXTERN CODE _initLED
EXTERN CODE _controlLED
