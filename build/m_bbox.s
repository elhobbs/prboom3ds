	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"m_bbox.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	M_ClearBox
	.type	M_ClearBox, %function
M_ClearBox:
.LFB4:
	.file 1 "c:/devl/prboom3ds/src/m_bbox.c"
	.loc 1 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 44 0
	mov	r2, #-2147483648
	.loc 1 45 0
	mvn	r3, #-2147483648
	.loc 1 44 0
	str	r2, [r0, #12]
	str	r2, [r0]
	.loc 1 45 0
	str	r3, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.cfi_endproc
.LFE4:
	.size	M_ClearBox, .-M_ClearBox
	.align	2
	.global	M_AddToBox
	.type	M_AddToBox, %function
M_AddToBox:
.LFB5:
	.loc 1 49 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	.loc 1 50 0
	ldr	r3, [r0, #8]
	cmp	r3, r1
	.loc 1 51 0
	strgt	r1, [r0, #8]
	.loc 1 50 0
	bgt	.L4
	.loc 1 52 0
	ldr	r3, [r0, #12]
	cmp	r1, r3
	.loc 1 53 0
	strgt	r1, [r0, #12]
.L4:
	.loc 1 54 0
	ldr	r3, [r0, #4]
	cmp	r3, r2
	.loc 1 55 0
	strgt	r2, [r0, #4]
	.loc 1 54 0
	bxgt	lr
	.loc 1 56 0
	ldr	r3, [r0]
	cmp	r2, r3
	.loc 1 57 0
	strgt	r2, [r0]
	bx	lr
	.cfi_endproc
.LFE5:
	.size	M_AddToBox, .-M_AddToBox
.Letext0:
	.file 2 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 3 "c:/devl/prboom3ds/src/m_bbox.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x1
	.4byte	.LASF15
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2f
	.4byte	0x59
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0x2b
	.4byte	0x9a
	.uleb128 0x6
	.4byte	.LASF10
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF11
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF12
	.sleb128 2
	.uleb128 0x6
	.4byte	.LASF13
	.sleb128 3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd
	.uleb128 0x8
	.ascii	"box\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6e
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x30
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.ascii	"box\000"
	.byte	0x1
	.byte	0x30
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x6e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x6e
	.uleb128 0x1
	.byte	0x52
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"c:/devl/prboom3ds/src/m_bbox.c\000"
.LASF18:
	.ascii	"M_AddToBox\000"
.LASF16:
	.ascii	"fixed_t\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF14:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"BOXLEFT\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF4:
	.ascii	"long int\000"
.LASF9:
	.ascii	"_Bool\000"
.LASF13:
	.ascii	"BOXRIGHT\000"
.LASF17:
	.ascii	"M_ClearBox\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"BOXBOTTOM\000"
.LASF10:
	.ascii	"BOXTOP\000"
.LASF2:
	.ascii	"short int\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
