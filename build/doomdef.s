	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"doomdef.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	SCREENPITCH
	.global	SCREENHEIGHT
	.global	SCREENWIDTH
	.data
	.align	2
	.type	SCREENPITCH, %object
	.size	SCREENPITCH, 4
SCREENPITCH:
	.word	400
	.type	SCREENHEIGHT, %object
	.size	SCREENHEIGHT, 4
SCREENHEIGHT:
	.word	240
	.type	SCREENWIDTH, %object
	.size	SCREENWIDTH, 4
SCREENWIDTH:
	.word	400
	.text
.Letext0:
	.file 1 "c:/devl/prboom3ds/src/doomdef.c"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x1
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2e
	.4byte	0x24
	.uleb128 0x5
	.byte	0x3
	.4byte	SCREENWIDTH
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2f
	.4byte	0x24
	.uleb128 0x5
	.byte	0x3
	.4byte	SCREENHEIGHT
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x30
	.4byte	0x24
	.uleb128 0x5
	.byte	0x3
	.4byte	SCREENPITCH
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF7:
	.ascii	"long long int\000"
.LASF11:
	.ascii	"SCREENWIDTH\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"c:/devl/prboom3ds/src/doomdef.c\000"
.LASF16:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF12:
	.ascii	"SCREENHEIGHT\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF14:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"char\000"
.LASF5:
	.ascii	"long int\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"SCREENPITCH\000"
.LASF3:
	.ascii	"short int\000"
.LASF9:
	.ascii	"sizetype\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
