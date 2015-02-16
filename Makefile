#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

ifeq ($(strip $(CTRULIB)),)
# THIS IS TEMPORARY - in the future it should be at $(DEVKITPRO)/libctru
$(error "Please set CTRULIB in your environment. export CTRULIB=<path to>libctru")
endif

TOPDIR ?= $(CURDIR)
include $(DEVKITARM)/3ds_rules


#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# DATA is a list of directories containing data files
# INCLUDES is a list of directories containing header files
# SPECS is the directory containing the important build and link files
#---------------------------------------------------------------------------------
export TARGET		:=	$(shell basename $(CURDIR))
BUILD		:=	build
SOURCES		:=	src arm9/source arm11/source
DATA		:=	dat
INCLUDES	:=	include src arm9/include arm11/include


export	OUTPUT_FORMAT	?= 3dsx

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
ARCH	:=	-march=armv6k -mtune=mpcore -mfloat-abi=hard

CFLAGS	:=	-g -Wall -O2 -mword-relocations -save-temps \
			-fomit-frame-pointer -ffast-math \
			$(ARCH)

CFLAGS	+=	$(INCLUDE) -DARM11 -D_3DS

CXXFLAGS	:= $(CFLAGS) -fno-rtti -fno-exceptions -std=gnu++11

ASFLAGS	:=	-g $(ARCH)
LDFLAGS	=	-specs=3dsx.specs -g $(ARCH) \
			-Wl,-Map,$(TARGET).map

LIBS	:= -lctru -lm

#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
LIBDIRS	:= $(CTRULIB)
 
  
#---------------------------------------------------------------------------------
# no real need to edit anything past this point unless you need to add additional
# rules for different file extensions
#---------------------------------------------------------------------------------
ifneq ($(BUILD),$(notdir $(CURDIR)))
#---------------------------------------------------------------------------------
 
export OUTPUT	:=	$(CURDIR)/$(TARGET)
export TOPDIR	:=	$(CURDIR)

export VPATH	:=	$(foreach dir,$(SOURCES),$(CURDIR)/$(dir)) \
			$(foreach dir,$(DATA),$(CURDIR)/$(dir))

export DEPSDIR	:=	$(CURDIR)/$(BUILD)

CFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.c)))
CPPFILES	:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.cpp)))
SFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.s)))
BINFILES	:=	$(foreach dir,$(DATA),$(notdir $(wildcard $(dir)/*.*)))

#---------------------------------------------------------------------------------
# use CXX for linking C++ projects, CC for standard C
#---------------------------------------------------------------------------------
ifeq ($(strip $(CPPFILES)),)
#---------------------------------------------------------------------------------
	export LD	:=	$(CC)
#---------------------------------------------------------------------------------
else
#---------------------------------------------------------------------------------
	export LD	:=	$(CXX)
#---------------------------------------------------------------------------------
endif
#---------------------------------------------------------------------------------

export OFILES	:=	$(addsuffix .o,$(BINFILES)) \
			$(CPPFILES:.cpp=.o) $(CFILES:.c=.o) $(SFILES:.s=.o)

export INCLUDE	:=	$(foreach dir,$(INCLUDES),-I$(CURDIR)/$(dir)) \
			$(foreach dir,$(LIBDIRS),-I$(dir)/include) \
			-I$(CURDIR)/$(BUILD)

export LIBPATHS	:=	$(foreach dir,$(LIBDIRS),-L$(dir)/lib)

.PHONY: $(BUILD) clean all
 
#---------------------------------------------------------------------------------
all: $(BUILD)

$(BUILD):
	@[ -d $@ ] || mkdir -p $@
	@make --no-print-directory -C $(BUILD) -f $(CURDIR)/Makefile
 
#---------------------------------------------------------------------------------
clean:
	@echo clean ...
	@rm -fr $(BUILD) $(TARGET).3dsx $(TARGET).elf
 
 
 cia:
		@make $(MAKEFLAGS) OUTPUT_FORMAT=cia

 3dsx:
		@make $(MAKEFLAGS) OUTPUT_FORMAT=3dsx

#---------------------------------------------------------------------------------
else
 
DEPENDS	:=	$(OFILES:.o=.d)

.PHONY: all

all:	$(OUTPUT).$(OUTPUT_FORMAT)
 
#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------
$(OUTPUT).3dsx	:	$(OUTPUT).elf
$(OUTPUT).elf	:	$(OFILES)
$(OUTPUT).cia	:	$(OUTPUT).elf
	@echo built ... $< $@ 
	@echo $(notdir $(OUTPUT))
	@cp $(OUTPUT).elf $(TARGET)_stripped.elf
	arm-none-eabi-strip $(TARGET)_stripped.elf
	$(TOPDIR)\resources\makerom.exe -f cci -rsf $(TOPDIR)\resources\gw_workaround.rsf -target d -exefslogo -elf $(TARGET)_stripped.elf -icon $(TOPDIR)\resources\icon.bin -banner $(TOPDIR)\resources\banner.bin -o $(TOPDIR)\$(notdir $(OUTPUT)).3ds
	$(TOPDIR)\resources\makerom.exe -f cia -o $(OUTPUT).cia -elf $(TARGET)_stripped.elf -rsf $(TOPDIR)\resources\build_cia.rsf -icon $(TOPDIR)\resources\icon.bin -banner $(TOPDIR)\resources\banner.bin -exefslogo -target t
#	@echo built ... $(notdir $@)

#---------------------------------------------------------------------------------
# you need a rule like this for each extension you use as binary data 
#---------------------------------------------------------------------------------
%.bin.o	:	%.bin
#---------------------------------------------------------------------------------
	@echo $(notdir $<)
	@$(bin2o)

-include $(DEPENDS)
 
#---------------------------------------------------------------------------------------
endif
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------

