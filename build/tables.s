	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tables.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_uidiv
	.align	2
	.global	SlopeDiv
	.type	SlopeDiv, %function
SlopeDiv:
.LFB5:
	.file 1 "c:/devl/prboom3ds/src/tables.c"
	.loc 1 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 62 0
	cmp	r1, #512
	bcs	.L7
	.loc 1 63 0
	mov	r0, #2048
.LVL1:
	bx	lr
.LVL2:
.L7:
	.loc 1 59 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 64 0
	mov	r1, r1, lsr #8
.LVL3:
	mov	r0, r0, asl #3
.LVL4:
	bl	__aeabi_uidiv
.LVL5:
	.loc 1 65 0
	cmp	r0, #2048
	movcs	r0, #2048
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE5:
	.size	SlopeDiv, .-SlopeDiv
	.align	2
	.global	R_LoadTrigTables
	.type	R_LoadTrigTables, %function
R_LoadTrigTables:
.LFB6:
	.loc 1 84 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB9:
.LBB10:
	.file 2 "c:/devl/prboom3ds/src/w_wad.h"
	.loc 2 132 0
	ldr	r0, .L33
	mov	r1, #5
	mvn	r2, #0
	bl	W_FindNumFromName
.LVL7:
.LBE10:
.LBE9:
	.loc 1 88 0
	cmn	r0, #1
.LBB12:
.LBB11:
	.loc 2 132 0
	mov	r4, r0
.LBE11:
.LBE12:
	.loc 1 88 0
	beq	.L29
.L9:
	.loc 1 89 0
	mov	r0, r4
	bl	W_LumpLength
.LVL8:
	cmp	r0, #40960
	beq	.L10
	.loc 1 90 0
	ldr	r0, .L33+4
	bl	I_Error
.LVL9:
.L10:
	.loc 1 91 0
	mov	r0, r4
	ldr	r1, .L33+8
	bl	W_ReadLump
.LVL10:
.LBB13:
.LBB14:
	.loc 2 132 0
	ldr	r0, .L33+12
	mov	r1, #5
	mvn	r2, #0
	bl	W_FindNumFromName
.LVL11:
.LBE14:
.LBE13:
	.loc 1 95 0
	cmn	r0, #1
.LBB16:
.LBB15:
	.loc 2 132 0
	mov	r4, r0
.LBE15:
.LBE16:
	.loc 1 95 0
	beq	.L30
.L11:
	.loc 1 96 0
	mov	r0, r4
	bl	W_LumpLength
.LVL12:
	cmp	r0, #16384
	beq	.L12
	.loc 1 97 0
	ldr	r0, .L33+16
	bl	I_Error
.LVL13:
.L12:
	.loc 1 98 0
	mov	r0, r4
	ldr	r1, .L33+20
	bl	W_ReadLump
.LVL14:
.LBB17:
.LBB18:
	.loc 2 132 0
	ldr	r0, .L33+24
	mov	r1, #5
	mvn	r2, #0
	bl	W_FindNumFromName
.LVL15:
.LBE18:
.LBE17:
	.loc 1 102 0
	cmn	r0, #1
.LBB20:
.LBB19:
	.loc 2 132 0
	mov	r4, r0
.LBE19:
.LBE20:
	.loc 1 102 0
	beq	.L31
.L13:
	.loc 1 103 0
	mov	r0, r4
	bl	W_LumpLength
.LVL16:
	ldr	r3, .L33+28
	cmp	r0, r3
	beq	.L14
	.loc 1 104 0
	ldr	r0, .L33+32
	bl	I_Error
.LVL17:
.L14:
	.loc 1 105 0
	mov	r0, r4
	ldr	r1, .L33+36
	bl	W_ReadLump
.LVL18:
.LBB21:
	.loc 1 110 0
	mov	r0, #1
	ldr	r1, .L33+40
	bl	lprintf
.LVL19:
	.loc 1 114 0
	ldr	r3, .L33+8
	ldr	r2, [r3, #4]
	sub	r2, r2, #11
	cmp	r2, #88
	bls	.L32
	ldr	r1, .L33+44
	sub	r3, r3, #4
.L16:
	ldr	r2, [r3, #4]!
	rev	r2, r2
	.loc 1 123 0 discriminator 3
	cmp	r3, r1
	str	r2, [r3]
.LVL20:
	bne	.L16
	ldr	r3, .L33+48
	add	r1, r3, #16384
.L17:
	ldr	r2, [r3, #4]!
	rev	r2, r2
	.loc 1 124 0 discriminator 3
	cmp	r3, r1
	str	r2, [r3]
	bne	.L17
	ldr	r3, .L33+52
	ldr	r1, .L33+56
.L18:
	ldr	r2, [r3, #4]!
	rev	r2, r2
	.loc 1 125 0 discriminator 3
	cmp	r3, r1
	str	r2, [r3]
	bne	.L18
	.loc 1 126 0
	mov	r0, #1
.LBE21:
	.loc 1 128 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB22:
	.loc 1 126 0
	ldr	r1, .L33+60
	b	lprintf
.LVL21:
.L32:
	.cfi_restore_state
	.loc 1 115 0
	mov	r0, #1
.LBE22:
	.loc 1 128 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB23:
	.loc 1 115 0
	ldr	r1, .L33+64
	b	lprintf
.LVL22:
.L31:
	.cfi_restore_state
.LBE23:
	.loc 1 102 0 discriminator 1
	ldr	r0, .L33+68
	bl	I_Error
.LVL23:
	b	.L13
.LVL24:
.L29:
	.loc 1 88 0 discriminator 1
	ldr	r0, .L33+68
	bl	I_Error
.LVL25:
	b	.L9
.LVL26:
.L30:
	.loc 1 95 0 discriminator 1
	ldr	r0, .L33+68
	bl	I_Error
.LVL27:
	b	.L11
.L34:
	.align	2
.L33:
	.word	.LC0
	.word	.LC2
	.word	finesine
	.word	.LC3
	.word	.LC4
	.word	finetangent
	.word	.LC5
	.word	8196
	.word	.LC6
	.word	tantoangle
	.word	.LC7
	.word	finesine+40956
	.word	finetangent-4
	.word	tantoangle-4
	.word	tantoangle+8192
	.word	.LC9
	.word	.LC8
	.word	.LC1
	.cfi_endproc
.LFE6:
	.size	R_LoadTrigTables, .-R_LoadTrigTables
	.comm	tantoangle,8196,4
	.comm	finesine,40960,4
	.comm	finetangent,16384,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SINETABL\000"
	.space	3
.LC1:
	.ascii	"Failed to locate trig tables\000"
	.space	3
.LC2:
	.ascii	"R_LoadTrigTables: Invalid SINETABL\000"
	.space	1
.LC3:
	.ascii	"TANGTABL\000"
	.space	3
.LC4:
	.ascii	"R_LoadTrigTables: Invalid TANGTABL\000"
	.space	1
.LC5:
	.ascii	"TANTOANG\000"
	.space	3
.LC6:
	.ascii	"R_LoadTrigTables: Invalid TANTOANG\000"
	.space	1
.LC7:
	.ascii	"Endianness...\000"
	.space	2
.LC8:
	.ascii	"ok.\000"
.LC9:
	.ascii	"corrected.\000"
	.text
.Letext0:
	.file 3 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 4 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 5 "c:/devl/prboom3ds/src/tables.h"
	.file 6 "c:/devl/prboom3ds/src/lprintf.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4e3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x1
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0xd4
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x6a
	.4byte	0xbe
	.uleb128 0x9
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF12
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF13
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF14
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x47
	.4byte	0x25
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x28
	.4byte	0x10f
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 64
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0xdb
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x2
	.byte	0x83
	.4byte	0x2c
	.byte	0x3
	.4byte	0x140
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x2
	.byte	0x83
	.4byte	0x86
	.uleb128 0xc
	.ascii	"ns\000"
	.byte	0x2
	.byte	0x83
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3a
	.4byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x187
	.uleb128 0xe
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0xe
	.ascii	"den\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0xf
	.ascii	"ans\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x53
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f0
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x55
	.4byte	0x2c
	.uleb128 0x12
	.4byte	0x11a
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x57
	.4byte	0x1eb
	.uleb128 0x13
	.4byte	0x135
	.byte	0x5
	.uleb128 0x14
	.4byte	0x12a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x473
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x11a
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x5e
	.4byte	0x22f
	.uleb128 0x17
	.4byte	0x135
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	0x12a
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x473
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x11a
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x65
	.4byte	0x273
	.uleb128 0x17
	.4byte	0x135
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	0x12a
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x473
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x2d6
	.uleb128 0x19
	.ascii	"n\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x33
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x492
	.4byte	0x2a1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x492
	.4byte	0x2bd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0x492
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x4ad
	.4byte	0x2ea
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x4c2
	.4byte	0x301
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x4d4
	.4byte	0x31e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	finesine
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x4ad
	.4byte	0x332
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x4c2
	.4byte	0x349
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x4d4
	.4byte	0x366
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	finetangent
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x4ad
	.4byte	0x37a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x4c2
	.4byte	0x391
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x4d4
	.4byte	0x3ae
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	tantoangle
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x4c2
	.4byte	0x3c5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x4c2
	.4byte	0x3dc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x4c2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x5
	.byte	0x50
	.4byte	0x402
	.uleb128 0x6
	.byte	0x3
	.4byte	finesine+8192
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x407
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x1e
	.4byte	0xc5
	.4byte	0x41e
	.uleb128 0x1f
	.4byte	0x78
	.2byte	0x27ff
	.byte	0
	.uleb128 0x20
	.4byte	.LASF32
	.byte	0x1
	.byte	0x48
	.4byte	0x40d
	.uleb128 0x5
	.byte	0x3
	.4byte	finesine
	.uleb128 0x1e
	.4byte	0xc5
	.4byte	0x440
	.uleb128 0x1f
	.4byte	0x78
	.2byte	0xfff
	.byte	0
	.uleb128 0x20
	.4byte	.LASF33
	.byte	0x1
	.byte	0x44
	.4byte	0x42f
	.uleb128 0x5
	.byte	0x3
	.4byte	finetangent
	.uleb128 0x1e
	.4byte	0xd0
	.4byte	0x462
	.uleb128 0x1f
	.4byte	0x78
	.2byte	0x800
	.byte	0
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4a
	.4byte	0x451
	.uleb128 0x5
	.byte	0x3
	.4byte	tantoangle
	.uleb128 0x21
	.4byte	.LASF35
	.byte	0x2
	.byte	0x7f
	.4byte	0x2c
	.4byte	0x492
	.uleb128 0x22
	.4byte	0x86
	.uleb128 0x22
	.4byte	0x2c
	.uleb128 0x22
	.4byte	0x2c
	.byte	0
	.uleb128 0x21
	.4byte	.LASF36
	.byte	0x6
	.byte	0x36
	.4byte	0x2c
	.4byte	0x4ad
	.uleb128 0x22
	.4byte	0x10f
	.uleb128 0x22
	.4byte	0x86
	.uleb128 0x23
	.byte	0
	.uleb128 0x21
	.4byte	.LASF37
	.byte	0x2
	.byte	0x86
	.4byte	0x2c
	.4byte	0x4c2
	.uleb128 0x22
	.4byte	0x2c
	.byte	0
	.uleb128 0x24
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3d
	.4byte	0x4d4
	.uleb128 0x22
	.4byte	0x86
	.uleb128 0x23
	.byte	0
	.uleb128 0x25
	.4byte	.LASF45
	.byte	0x2
	.byte	0x87
	.uleb128 0x22
	.4byte	0x2c
	.uleb128 0x22
	.4byte	0x3e
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
	.uleb128 0x1b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x10
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0xf7
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x33
	.byte	0x24
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF35:
	.ascii	"W_FindNumFromName\000"
.LASF10:
	.ascii	"char\000"
.LASF18:
	.ascii	"size_t\000"
.LASF40:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF42:
	.ascii	"SlopeDiv\000"
.LASF25:
	.ascii	"LO_FATAL\000"
.LASF43:
	.ascii	"R_LoadTrigTables\000"
.LASF24:
	.ascii	"LO_ERROR\000"
.LASF15:
	.ascii	"ns_hires\000"
.LASF11:
	.ascii	"ns_global\000"
.LASF39:
	.ascii	"c:/devl/prboom3ds/src/tables.c\000"
.LASF21:
	.ascii	"LO_INFO\000"
.LASF34:
	.ascii	"tantoangle\000"
.LASF37:
	.ascii	"W_LumpLength\000"
.LASF36:
	.ascii	"lprintf\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF30:
	.ascii	"lump\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF33:
	.ascii	"finetangent\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"ns_flats\000"
.LASF22:
	.ascii	"LO_CONFIRM\000"
.LASF27:
	.ascii	"LO_ALWAYS\000"
.LASF45:
	.ascii	"W_ReadLump\000"
.LASF32:
	.ascii	"finesine\000"
.LASF23:
	.ascii	"LO_WARN\000"
.LASF20:
	.ascii	"angle_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF31:
	.ascii	"finecosine\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF7:
	.ascii	"long long int\000"
.LASF26:
	.ascii	"LO_DEBUG\000"
.LASF29:
	.ascii	"name\000"
.LASF44:
	.ascii	"I_Error\000"
.LASF3:
	.ascii	"short int\000"
.LASF19:
	.ascii	"fixed_t\000"
.LASF12:
	.ascii	"ns_sprites\000"
.LASF28:
	.ascii	"OutputLevels\000"
.LASF5:
	.ascii	"long int\000"
.LASF14:
	.ascii	"ns_colormaps\000"
.LASF1:
	.ascii	"signed char\000"
.LASF17:
	.ascii	"_Bool\000"
.LASF16:
	.ascii	"ns_prboom\000"
.LASF38:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF41:
	.ascii	"W_CheckNumForName\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
