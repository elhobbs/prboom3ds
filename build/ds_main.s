	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ds_main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	drawFrame
	.type	drawFrame, %function
drawFrame:
.LFB2:
	.file 1 "c:/devl/prboom3ds/arm9/source/ds_main.c"
	.loc 1 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 40 0
	bl	gfxFlushBuffers
.LVL0:
	.loc 1 42 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 41 0
	b	gfxSwapBuffers
.LVL1:
	.cfi_endproc
.LFE2:
	.size	drawFrame, .-drawFrame
	.align	2
	.global	keyboardStart
	.type	keyboardStart, %function
keyboardStart:
.LFB4:
	.loc 1 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE4:
	.size	keyboardStart, .-keyboardStart
	.align	2
	.global	keyboardEnd
	.type	keyboardEnd, %function
keyboardEnd:
.LFB5:
	.loc 1 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE5:
	.size	keyboardEnd, .-keyboardEnd
	.align	2
	.global	switchConsole
	.type	switchConsole, %function
switchConsole:
.LFB6:
	.loc 1 76 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE6:
	.size	switchConsole, .-switchConsole
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.loc 1 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	.loc 1 100 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 101 0
	subs	r4, r1, #0
	.loc 1 100 0
	mov	r5, r0
	.loc 1 101 0
	beq	.L7
	.loc 1 102 0
	ldr	r2, .L11
	.loc 1 103 0
	ldr	r3, .L11+4
	.loc 1 102 0
	str	r0, [r2]
	.loc 1 103 0
	str	r4, [r3]
.LBB6:
.LBB7:
	.loc 1 47 0
	bl	srvInit
.LVL3:
	.loc 1 48 0
	bl	aptInit
.LVL4:
	.loc 1 49 0
	mov	r0, #0
	bl	hidInit
.LVL5:
	.loc 1 50 0
	mov	r0, #0
	bl	irrstInit
.LVL6:
	.loc 1 51 0
	bl	gfxInit
.LVL7:
	.loc 1 53 0
	mov	r0, #1
	bl	gfxSet3D
.LVL8:
	.loc 1 55 0
	bl	svcGetSystemTick
.LVL9:
	bl	srand
.LVL10:
	.loc 1 58 0
	mov	r1, #0
	mov	r0, #1
	bl	consoleInit
.LVL11:
	.loc 1 59 0
	bl	SD_init
.LVL12:
	.loc 1 61 0
	bl	gfxFlushBuffers
.LVL13:
	.loc 1 62 0
	bl	gfxSwapBuffers
.LVL14:
.LBE7:
.LBE6:
	.loc 1 112 0
	ldr	r0, .L11+8
	bl	puts
.LVL15:
	.loc 1 113 0
	ldr	r2, [r4]
.L8:
	.loc 1 113 0 is_stmt 0 discriminator 4
	mov	r1, r5
	ldr	r0, .L11+12
	bl	printf
.LVL16:
	.loc 1 117 0 is_stmt 1 discriminator 4
	ldr	r1, .L11+16
	mov	r0, #1
	bl	lprintf
.LVL17:
	.loc 1 137 0 discriminator 4
	bl	Z_Init
.LVL18:
	.loc 1 142 0 discriminator 4
	bl	D_DoomMain
.LVL19:
	.loc 1 145 0 discriminator 4
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL20:
.L7:
	.loc 1 107 0
	ldr	r2, .L11+20
	ldr	r3, .L11+4
	.loc 1 106 0
	ldr	r1, .L11
.LVL21:
	.loc 1 107 0
	str	r2, [r3]
	.loc 1 106 0
	str	r4, [r1]
.LBB9:
.LBB8:
	.loc 1 47 0
	bl	srvInit
.LVL22:
	.loc 1 48 0
	bl	aptInit
.LVL23:
	.loc 1 49 0
	mov	r0, r4
	bl	hidInit
.LVL24:
	.loc 1 50 0
	mov	r0, r4
	bl	irrstInit
.LVL25:
	.loc 1 51 0
	bl	gfxInit
.LVL26:
	.loc 1 53 0
	mov	r0, #1
	bl	gfxSet3D
.LVL27:
	.loc 1 55 0
	bl	svcGetSystemTick
.LVL28:
	bl	srand
.LVL29:
	.loc 1 58 0
	mov	r1, r4
	mov	r0, #1
	bl	consoleInit
.LVL30:
	.loc 1 59 0
	bl	SD_init
.LVL31:
	.loc 1 61 0
	bl	gfxFlushBuffers
.LVL32:
	.loc 1 62 0
	bl	gfxSwapBuffers
.LVL33:
.LBE8:
.LBE9:
	.loc 1 112 0
	ldr	r0, .L11+8
	bl	puts
.LVL34:
	.loc 1 113 0
	ldr	r2, .L11+24
	b	.L8
.L12:
	.align	2
.L11:
	.word	myargc
	.word	myargv
	.word	.LC1
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR0
	.word	.LC0
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.global	gen_console_enable
	.global	gen_screen_swap
	.global	DS_USERNAME
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC2:
	.ascii	"\000\000\000\000\000"
	.data
	.align	2
	.type	gen_console_enable, %object
	.size	gen_console_enable, 4
gen_console_enable:
	.word	1
	.type	DS_USERNAME, %object
	.size	DS_USERNAME, 4
DS_USERNAME:
	.word	.LC5
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"{null}\000"
	.space	1
.LC1:
	.ascii	"system initialized\000"
	.space	1
.LC3:
	.ascii	"%d %s\012\000"
	.space	1
.LC4:
	.ascii	"PrBoom DS\012\000"
	.space	1
.LC5:
	.ascii	"username\000"
	.bss
	.align	2
	.type	gen_screen_swap, %object
	.size	gen_screen_swap, 4
gen_screen_swap:
	.space	4
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h"
	.file 4 "c:/devkitPro/libctru/include/3ds/types.h"
	.file 5 "c:/devkitPro/libctru/include/3ds/gfx.h"
	.file 6 "c:/devkitPro/libctru/include/3ds/console.h"
	.file 7 "c:/devl/prboom3ds/src/lprintf.h"
	.file 8 "c:/devl/prboom3ds/src/m_argv.h"
	.file 9 "c:/devkitPro/libctru/include/3ds/srv.h"
	.file 10 "c:/devkitPro/libctru/include/3ds/services/apt.h"
	.file 11 "c:/devkitPro/libctru/include/3ds/services/hid.h"
	.file 12 "c:/devkitPro/libctru/include/3ds/services/irrst.h"
	.file 13 "c:/devkitPro/libctru/include/3ds/svc.h"
	.file 14 "<built-in>"
	.file 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x73f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x1
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1c
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x26
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x37
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x38
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4e
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x36
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x41
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x42
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x4e
	.4byte	0x82
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x4
	.byte	0x14
	.4byte	0xa2
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x15
	.4byte	0xad
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x16
	.4byte	0xc3
	.uleb128 0x5
	.ascii	"u64\000"
	.byte	0x4
	.byte	0x17
	.4byte	0xce
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x29
	.4byte	0x104
	.uleb128 0x6
	.byte	0x4
	.4byte	0xee
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.4byte	0x13c
	.uleb128 0x8
	.4byte	.LASF21
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xc
	.4byte	0x127
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x1a
	.4byte	0x152
	.uleb128 0x6
	.byte	0x4
	.4byte	0x158
	.uleb128 0x9
	.4byte	0x16c
	.4byte	0x16c
	.uleb128 0xa
	.4byte	0x173
	.uleb128 0xa
	.4byte	0x175
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x6
	.byte	0x1d
	.4byte	0x1ad
	.uleb128 0xd
	.ascii	"gfx\000"
	.byte	0x6
	.byte	0x1f
	.4byte	0x1ad
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x6
	.byte	0x20
	.4byte	0xe3
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0x21
	.4byte	0xe3
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x23
	.4byte	0x17c
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x4c
	.byte	0x6
	.byte	0x40
	.4byte	0x2a1
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x42
	.4byte	0x1b3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x44
	.4byte	0x2a1
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x46
	.4byte	0x94
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x47
	.4byte	0x94
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x49
	.4byte	0x94
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x4a
	.4byte	0x94
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4c
	.4byte	0x94
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4d
	.4byte	0x94
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4f
	.4byte	0x94
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x50
	.4byte	0x94
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x51
	.4byte	0x94
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x52
	.4byte	0x94
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x54
	.4byte	0x94
	.byte	0x34
	.uleb128 0xd
	.ascii	"fg\000"
	.byte	0x6
	.byte	0x55
	.4byte	0x94
	.byte	0x38
	.uleb128 0xd
	.ascii	"bg\000"
	.byte	0x6
	.byte	0x56
	.4byte	0x94
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.4byte	0x94
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0x59
	.4byte	0x147
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5c
	.4byte	0x16c
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x5d
	.4byte	0x1be
	.uleb128 0x6
	.byte	0x4
	.4byte	0x175
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2be
	.uleb128 0xf
	.4byte	0x175
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x28
	.4byte	0x2f7
	.uleb128 0x8
	.4byte	.LASF47
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF48
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF49
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF50
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF51
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF52
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF53
	.sleb128 64
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x30
	.4byte	0x2c3
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x1
	.byte	0x13
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x332
	.uleb128 0x12
	.4byte	.LVL0
	.4byte	0x609
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x616
	.byte	0
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x45
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x48
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	0x302
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	0x39d
	.uleb128 0x17
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x10f
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x37
	.4byte	0x94
	.byte	0
	.4byte	0x38d
	.uleb128 0x19
	.uleb128 0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x3c
	.4byte	0x94
	.byte	0
	.uleb128 0x19
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x64
	.4byte	0x94
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5af
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x64
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x64
	.4byte	0x5af
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0x89
	.4byte	0x94
	.4byte	0x3e5
	.uleb128 0x19
	.byte	0
	.uleb128 0x1e
	.4byte	0x363
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6f
	.4byte	0x539
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x20
	.4byte	0x36f
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x623
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x634
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0x645
	.4byte	0x427
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL6
	.4byte	0x65a
	.4byte	0x43a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x66f
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0x67c
	.4byte	0x456
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x68d
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0x69e
	.uleb128 0x21
	.4byte	.LVL11
	.4byte	0x6af
	.4byte	0x480
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x6cf
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0x609
	.uleb128 0x12
	.4byte	.LVL14
	.4byte	0x616
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0x623
	.uleb128 0x12
	.4byte	.LVL23
	.4byte	0x634
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x645
	.4byte	0x4c1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x65a
	.4byte	0x4d5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0x66f
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x67c
	.4byte	0x4f1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL28
	.4byte	0x68d
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0x69e
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0x6af
	.4byte	0x51c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL31
	.4byte	0x6cf
	.uleb128 0x12
	.4byte	.LVL32
	.4byte	0x609
	.uleb128 0x12
	.4byte	.LVL33
	.4byte	0x616
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL15
	.4byte	0x6e0
	.4byte	0x550
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x6f9
	.4byte	0x56d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x70f
	.4byte	0x589
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL18
	.4byte	0x72a
	.uleb128 0x12
	.4byte	.LVL19
	.4byte	0x73b
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x6e0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0x24
	.4byte	.LASF61
	.byte	0x8
	.byte	0x29
	.4byte	0x94
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x8
	.byte	0x2a
	.4byte	0x5cb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0xf
	.4byte	0x2b8
	.uleb128 0x25
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc
	.4byte	0x2b2
	.uleb128 0x5
	.byte	0x3
	.4byte	DS_USERNAME
	.uleb128 0x25
	.4byte	.LASF64
	.byte	0x1
	.byte	0x42
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_screen_swap
	.uleb128 0x25
	.4byte	.LASF65
	.byte	0x1
	.byte	0x43
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_console_enable
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x5
	.byte	0x1e
	.4byte	0x616
	.uleb128 0x19
	.byte	0
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x5
	.byte	0x1f
	.4byte	0x623
	.uleb128 0x19
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x9
	.byte	0x3
	.4byte	0x10f
	.4byte	0x634
	.uleb128 0x19
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0xa
	.byte	0x2a
	.4byte	0x10f
	.4byte	0x645
	.uleb128 0x19
	.byte	0
	.uleb128 0x27
	.4byte	.LASF71
	.byte	0xb
	.byte	0x4e
	.4byte	0x10f
	.4byte	0x65a
	.uleb128 0xa
	.4byte	0x11a
	.byte	0
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0xc
	.byte	0xc
	.4byte	0x10f
	.4byte	0x66f
	.uleb128 0xa
	.4byte	0x11a
	.byte	0
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x5
	.byte	0x16
	.4byte	0x67c
	.uleb128 0x19
	.byte	0
	.uleb128 0x28
	.4byte	.LASF74
	.byte	0x5
	.byte	0x1a
	.4byte	0x68d
	.uleb128 0xa
	.4byte	0x16c
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0xd
	.byte	0x54
	.4byte	0xf9
	.4byte	0x69e
	.uleb128 0x19
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF59
	.byte	0x1
	.byte	0x37
	.4byte	0x94
	.4byte	0x6af
	.uleb128 0x19
	.byte	0
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x6
	.byte	0x90
	.4byte	0x6c9
	.4byte	0x6c9
	.uleb128 0xa
	.4byte	0x13c
	.uleb128 0xa
	.4byte	0x6c9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x1d
	.4byte	.LASF77
	.byte	0x1
	.byte	0x10
	.4byte	0x16c
	.4byte	0x6e0
	.uleb128 0x19
	.byte	0
	.uleb128 0x29
	.4byte	.LASF79
	.byte	0xe
	.byte	0
	.4byte	.LASF87
	.4byte	0x94
	.4byte	0x6f9
	.uleb128 0xa
	.4byte	0x2b8
	.byte	0
	.uleb128 0x27
	.4byte	.LASF80
	.byte	0xf
	.byte	0xad
	.4byte	0x94
	.4byte	0x70f
	.uleb128 0xa
	.4byte	0x2b8
	.uleb128 0x19
	.byte	0
	.uleb128 0x27
	.4byte	.LASF81
	.byte	0x7
	.byte	0x36
	.4byte	0x94
	.4byte	0x72a
	.uleb128 0xa
	.4byte	0x2f7
	.uleb128 0xa
	.4byte	0x2b8
	.uleb128 0x19
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0x89
	.4byte	0x94
	.4byte	0x73b
	.uleb128 0x19
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF88
	.byte	0x1
	.byte	0x11
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-1
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"ConsolePrint\000"
.LASF27:
	.ascii	"asciiOffset\000"
.LASF79:
	.ascii	"__builtin_puts\000"
.LASF78:
	.ascii	"drawFrame\000"
.LASF52:
	.ascii	"LO_DEBUG\000"
.LASF36:
	.ascii	"prevCursorY\000"
.LASF68:
	.ascii	"gfxSwapBuffers\000"
.LASF18:
	.ascii	"uint64_t\000"
.LASF33:
	.ascii	"cursorX\000"
.LASF61:
	.ascii	"myargc\000"
.LASF23:
	.ascii	"gfxScreen_t\000"
.LASF40:
	.ascii	"windowY\000"
.LASF56:
	.ascii	"keyboardEnd\000"
.LASF20:
	.ascii	"sizetype\000"
.LASF86:
	.ascii	"main\000"
.LASF31:
	.ascii	"font\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF69:
	.ascii	"srvInit\000"
.LASF2:
	.ascii	"short int\000"
.LASF60:
	.ascii	"Z_Init\000"
.LASF88:
	.ascii	"D_DoomMain\000"
.LASF21:
	.ascii	"GFX_TOP\000"
.LASF76:
	.ascii	"consoleInit\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF49:
	.ascii	"LO_WARN\000"
.LASF45:
	.ascii	"PrintChar\000"
.LASF39:
	.ascii	"windowX\000"
.LASF84:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF38:
	.ascii	"consoleHeight\000"
.LASF48:
	.ascii	"LO_CONFIRM\000"
.LASF10:
	.ascii	"long long int\000"
.LASF51:
	.ascii	"LO_FATAL\000"
.LASF74:
	.ascii	"gfxSet3D\000"
.LASF37:
	.ascii	"consoleWidth\000"
.LASF85:
	.ascii	"sys_init\000"
.LASF53:
	.ascii	"LO_ALWAYS\000"
.LASF47:
	.ascii	"LO_INFO\000"
.LASF7:
	.ascii	"long int\000"
.LASF63:
	.ascii	"DS_USERNAME\000"
.LASF50:
	.ascii	"LO_ERROR\000"
.LASF80:
	.ascii	"printf\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF54:
	.ascii	"OutputLevels\000"
.LASF71:
	.ascii	"hidInit\000"
.LASF43:
	.ascii	"tabSize\000"
.LASF66:
	.ascii	"switchConsole\000"
.LASF72:
	.ascii	"irrstInit\000"
.LASF57:
	.ascii	"argc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF44:
	.ascii	"flags\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF87:
	.ascii	"puts\000"
.LASF58:
	.ascii	"argv\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF64:
	.ascii	"gen_screen_swap\000"
.LASF42:
	.ascii	"windowHeight\000"
.LASF55:
	.ascii	"keyboardStart\000"
.LASF26:
	.ascii	"char\000"
.LASF25:
	.ascii	"_Bool\000"
.LASF34:
	.ascii	"cursorY\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF81:
	.ascii	"lprintf\000"
.LASF65:
	.ascii	"gen_console_enable\000"
.LASF83:
	.ascii	"c:/devl/prboom3ds/arm9/source/ds_main.c\000"
.LASF11:
	.ascii	"__uint64_t\000"
.LASF70:
	.ascii	"aptInit\000"
.LASF22:
	.ascii	"GFX_BOTTOM\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF29:
	.ascii	"ConsoleFont\000"
.LASF46:
	.ascii	"consoleInitialised\000"
.LASF41:
	.ascii	"windowWidth\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF28:
	.ascii	"numChars\000"
.LASF77:
	.ascii	"SD_init\000"
.LASF30:
	.ascii	"PrintConsole\000"
.LASF35:
	.ascii	"prevCursorX\000"
.LASF32:
	.ascii	"frameBuffer\000"
.LASF62:
	.ascii	"myargv\000"
.LASF67:
	.ascii	"gfxFlushBuffers\000"
.LASF59:
	.ascii	"srand\000"
.LASF73:
	.ascii	"gfxInit\000"
.LASF82:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF75:
	.ascii	"svcGetSystemTick\000"
.LASF19:
	.ascii	"Result\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
