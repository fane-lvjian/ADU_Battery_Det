# SONIX DSP Makefile Version:1.0.0.2
# Defination
COMPILER = "c:\sonix\SN8_C_~1.337\bin\build\sn8pc.exe"
GMA = "C:\Sonix\SN8_C_~1.337\Bin\Build\gma.exe"
LINKER = "C:\Sonix\SN8_C_~1.337\Bin\Build\slink.exe"
CONVERT = "C:\Sonix\SN8_C_~1.337\Bin\Build\RcvSN8.exe"

# Define Path Macro
PRJ_PATH=.
OBJ_PATH=.\Obj
INC_PATH=.\Include
LIB_PATH=.\Lib
C_INC_PATH=C:\Sonix\SN8_C_~1.337\C\include
OUT_PATH=.\Bin
VPATH=.\:$(OBJ_PATH):$(LIB_PATH):$(INC_PATH):$(C_INC_PATH):$(OUT_PATH)

# Define Option Flags
COMPILER_FLAGS = -target=SN8P2711A -INI="C:\Sonix\SN8_C_~1.337\Bin\Build\SN8P2700A.ini" -PROJECTNAME=".\battery-det.prj" -WL=1 -Chip_Series=2 -A -g -I.\Include -IC:\Sonix\SN8_C_~1.337\C\include -NoCALLHL -NoMUL -NoHL -NoX -PUSH2 -NoGlobalOpt -tempdir="$(OBJ_PATH)"  -cpp_skip_asm -DICE_Mode=0
GMA_FLAGS = /INI:"SN8P2700A.ini" /ID1:0 /ID2:0  /MACHINE:SN8P2711A  /Chip_Series:2 /NOPeephole: /PATH:".\Include" /PROJECTNAME:".\battery-det.prj" /WL:1 /DEFINE:ICE_Mode=0 /DEFINE:SN8P2711A=1  /OutputPath:"$(OBJ_PATH)" 
LINK_FLAGS = /MACHINE:SN8P2711A /Chip_Series:2 /INI:"SN8P2700A.ini" /WL:1 /OutputFile:"$(OUT_PATH)/battery-det.out"  /MAP:"$(OBJ_PATH)\battery-det.map"   /LISTFILE:  /STDLIB:".\Obj"    /PATH:"$(LIB_PATH)" /STACK: /PROJECTNAME:".\battery-det.prj"
CONV_FLAGS = /MACHINE:SN8P2711A /INI:"SN8P2700A.ini" /WL:1 /OutputFile:"$(OUT_PATH)/battery-det.sn8"  /PROJECTNAME:".\battery-det.prj" /IDSVersion:V1.20.219.337n /Chip_Series:2 /OSLIB:".\Obj"  
LINK_DEP_FILES = $(OBJ_PATH)\crt0.o $(OBJ_PATH)\main.o $(OBJ_PATH)\ad.o $(OBJ_PATH)\led.o   \

# Define Rule
$(OBJ_PATH)\ad.asm: .\Src\ad.c $(C_INC_PATH)\SN8P2711A.h $(PRJ_PATH)\battery-det.cfg .\Include\ad.h
	@$(COMPILER) $(COMPILER_FLAGS) -o $@ $^ 

$(OBJ_PATH)\led.asm: .\Src\led.c $(C_INC_PATH)\SN8P2711A.h $(PRJ_PATH)\battery-det.cfg .\Include\led.h
	@$(COMPILER) $(COMPILER_FLAGS) -o $@ $^ 

$(OBJ_PATH)\main.asm: .\Src\main.c $(C_INC_PATH)\SN8P2711A.h $(PRJ_PATH)\battery-det.cfg .\Include\ad.h .\Include\led.h
	@$(COMPILER) $(COMPILER_FLAGS) -o $@ $^ 

$(OBJ_PATH)\ad.o: $(OBJ_PATH)\ad.asm $(PRJ_PATH)\battery-det.cfg
	@$(GMA) $(GMA_FLAGS) /CSource: /CASE: $< 

$(OBJ_PATH)\crt0.o: .\Src\crt0.asm $(PRJ_PATH)\battery-det.cfg
	@$(GMA) $(GMA_FLAGS) $< 

$(OBJ_PATH)\led.o: $(OBJ_PATH)\led.asm $(PRJ_PATH)\battery-det.cfg
	@$(GMA) $(GMA_FLAGS) /CSource: /CASE: $< 

$(OBJ_PATH)\main.o: $(OBJ_PATH)\main.asm $(PRJ_PATH)\battery-det.cfg
	@$(GMA) $(GMA_FLAGS) /CSource: /CASE: $< 

$(OUT_PATH)\battery-det.out: $(LINK_DEP_FILES) $(PRJ_PATH)\battery-det.cop
	@$(LINKER) $(LINK_FLAGS) /CSource: /CASE: $(LINK_DEP_FILES) 

$(OUT_PATH)\battery-det.sn8: $(OUT_PATH)\battery-det.out $(PRJ_PATH)\battery-det.cop
	@$(CONVERT) $(CONV_FLAGS) $^ 


# Define Clean Rule
Clean:
	@del /F /Q $(OBJ_PATH)\*.*;
	@if EXIST .\battery-det.prj.stb del .\battery-det.prj.stb;
	@if EXIST .\battery-det.out del .\battery-det.out;
	@if EXIST .\battery-det.sn8 del .\battery-det.sn8;
	@if EXIST .\battery-det.sn8.dep del .\battery-det.sn8.dep;
	@if EXIST $(OUT_PATH)\battery-det.out del $(OUT_PATH)\battery-det.out;
	@if EXIST $(OUT_PATH)\battery-det.sn8 del $(OUT_PATH)\battery-det.sn8;
	@if EXIST $(OUT_PATH)\battery-det.sn8.dep del $(OUT_PATH)\battery-det.sn8.dep;

# Don't keep invalid files, command line must return non-zero(1 or 2) value 
# to validate delete on error mechanism 
# else return 0 for success

.DELETE_ON_ERROR:

Begin: 

Build: Begin All 

Rebuild: Clean Build 

All:$(OUT_PATH)\battery-det.out $(OUT_PATH)\battery-det.sn8
