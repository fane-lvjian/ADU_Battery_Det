.line "C:\Users\HUAWEI\Desktop\battery-det(1)\battery-det\battery-det\Src\crt0.asm"
.line 6
CHIP SN8P2711A
.line 9
	public H
.line 12
	public L
.line 15
	public X
.line 17
public I
public T
.line 20
public __ClearWatchDogTimer
public __ClrRAM
PUBLIC _sgv_init_entry
.line 24
Extern CODE _main
.line 29
crt0@data SEGMENT DATA AT 0x00 INBANK
.line 31
		H ds 1
.line 34
		L ds 1
.line 37
		X ds 1
.line 39
	I ds 1
	T	ds 1
.line 45
crt0@code SEGMENT CODE AT 0x0 INBANK
	ORG	0
	jmp		_sgv_init_entry
	org 7
	nop
.line 51
_SGV_INIT_CODE_BEGIN segment CODE
_sgv_init_entry:
.line 54
	MOV A,# 0x7F
	B0MOV 223, A
.line 57
	CALL __ClearWatchDogTimer
	CALL __ClrRAM
.line 61
_SGV_INIT_CODE segment CODE BANK 0x0 INBANK
.line 63
_SGV_INIT_CODE_END segment CODE
.line 68
	CALL __ClearWatchDogTimer
	JMP _main
.line 74
__ClearWatchDogTimer:
	MOV  A, #5AH
	B0MOV  204, A
	RET
.line 84
__ClrRAM:
.line 86
	CLR 		132
	B0MOV		131,#0x3f
.line 89
ClrRAM10:
	CLR 		231
	DECMS		131
	JMP 		ClrRAM10
	CLR 		231
.line 95
	RET
