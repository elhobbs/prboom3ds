	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"r_filter.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	R_FilterInit
	.type	R_FilterInit, %function
R_FilterInit:
.LFB0:
	.file 1 "c:/devl/prboom3ds/src/r_filter.c"
	.loc 1 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 66 0
	mov	r3, #0
	.loc 1 43 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	ldr	r2, .L29
.LVL1:
.L4:
	.loc 1 68 0
	bic	lr, r3, #2
	.loc 1 70 0
	bic	ip, r3, #4
	.loc 1 68 0
	subs	lr, lr, #8
	sub	r0, r3, #4
	movne	lr, #1
	.loc 1 70 0
	cmp	ip, #1
	.loc 1 74 0
	bic	r1, r3, #8
	.loc 1 70 0
	moveq	ip, #2
	movne	ip, #1
	.loc 1 72 0
	cmp	r0, #1
	movls	r0, #0
	movhi	r0, #1
	.loc 1 74 0
	cmp	r1, #2
	moveq	r1, #2
	movne	r1, #1
	.loc 1 66 0
	add	r3, r3, #1
.LVL2:
	cmp	r3, #16
	.loc 1 68 0
	strb	lr, [r2]
	.loc 1 70 0
	strb	ip, [r2, #16]
	.loc 1 72 0
	strb	r0, [r2, #32]
	.loc 1 74 0
	strb	r1, [r2, #48]
	add	r2, r2, #1
	.loc 1 66 0
	bne	.L4
	mov	r2, #0
	mov	ip, #32
	.loc 1 91 0
	mov	r5, #4
	ldr	r7, .L29+4
.LVL3:
.L5:
	mvn	lr, ip
	add	r6, r2, #64
	add	r8, r7, r6
	add	r2, r7, r2
	mov	lr, lr, lsr #31
	.loc 1 74 0
	mov	r3, #32
	b	.L15
.LVL4:
.L28:
	.loc 1 87 0 discriminator 1
	cmp	r1, #32
	movle	r1, #4
	movgt	r1, #0
	strb	r1, [r2]
.L8:
	add	r2, r2, #1
	.loc 1 84 0 discriminator 2
	cmp	r8, r2
	sub	r3, r3, #1
.LVL5:
	beq	.L27
.LVL6:
.L15:
	.loc 1 87 0
	mvn	r0, r3
	mov	r0, r0, lsr #31
	tst	r0, lr
	add	r1, r3, ip
	bne	.L28
	.loc 1 88 0
	cmp	r3, #0
	movgt	r4, #0
	movle	r4, #1
	tst	r4, lr
	rsb	r1, r3, ip
	beq	.L9
	.loc 1 88 0 is_stmt 0 discriminator 1
	cmp	r1, #32
	movgt	r1, #2
	movle	r1, #4
	add	r2, r2, #1
	strb	r1, [r2, #-1]
	.loc 1 84 0 is_stmt 1 discriminator 1
	cmp	r8, r2
	sub	r3, r3, #1
.LVL7:
	bne	.L15
.LVL8:
.L27:
	.loc 1 83 0 discriminator 2
	cmp	r6, #4096
	sub	ip, ip, #1
.LVL9:
	mov	r2, r6
	bne	.L5
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL10:
.L9:
	.loc 1 89 0
	cmp	ip, #0
	movgt	r1, #0
	movle	r1, #1
	tst	r0, r1
	rsb	r9, ip, r3
	beq	.L11
	.loc 1 89 0 is_stmt 0 discriminator 1
	cmp	r9, #32
	movgt	r9, #1
	movle	r9, #4
	strb	r9, [r2]
	b	.L8
.L11:
	add	r0, ip, r3
	.loc 1 90 0 is_stmt 1
	tst	r4, r1
	rsb	r0, r0, #0
	.loc 1 91 0
	streqb	r5, [r2]
	.loc 1 90 0
	beq	.L8
	.loc 1 90 0 is_stmt 0 discriminator 1
	cmp	r0, #32
	movgt	r0, #3
	movle	r0, #4
	strb	r0, [r2]
	b	.L8
.L30:
	.align	2
.L29:
	.word	filter_roundedRowMap
	.word	filter_roundedUVMap
	.cfi_endproc
.LFE0:
	.size	R_FilterInit, .-R_FilterInit
	.align	2
	.global	filter_getScale2xQuadColors
	.type	filter_getScale2xQuadColors, %function
filter_getScale2xQuadColors:
.LFB1:
	.loc 1 96 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL11:
	.loc 1 111 0
	cmp	r2, r3
	moveq	ip, #2
	movne	ip, #0
	.loc 1 96 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 96 0
	ldrb	lr, [sp, #16]	@ zero_extendqisi2
	.loc 1 111 0
	cmp	r1, r2
	orreq	ip, ip, #1
	cmp	r3, lr
	moveq	r3, #4
.LVL12:
	movne	r3, #0
	cmp	lr, r1
	moveq	r1, #8
.LVL13:
	movne	r1, #0
	orr	r3, ip, r3
	.loc 1 112 0
	ldr	ip, .L39
	.loc 1 111 0
	orr	r3, r3, r1
.LVL14:
	.loc 1 112 0
	ldrb	r6, [ip, r3]!	@ zero_extendqisi2
	.loc 1 105 0
	ldr	r3, .L39+4
.LVL15:
	.loc 1 114 0
	ldrb	r1, [ip, #32]	@ zero_extendqisi2
	.loc 1 115 0
	ldrb	r4, [ip, #48]	@ zero_extendqisi2
	.loc 1 113 0
	ldrb	r5, [ip, #16]	@ zero_extendqisi2
	.loc 1 106 0
	strb	r0, [r3, #1]
	.loc 1 105 0
	strb	lr, [r3]
	.loc 1 107 0
	strb	r2, [r3, #2]
	.loc 1 112 0
	ldrb	lr, [r3, r6]	@ zero_extendqisi2
	.loc 1 113 0
	ldrb	ip, [r3, r5]	@ zero_extendqisi2
	.loc 1 114 0
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	.loc 1 115 0
	ldrb	r2, [r3, r4]	@ zero_extendqisi2
.LVL16:
	.loc 1 116 0
	strb	r0, [r3, #8]
	.loc 1 112 0
	strb	lr, [r3, #4]
	.loc 1 113 0
	strb	ip, [r3, #5]
	.loc 1 114 0
	strb	r1, [r3, #6]
	.loc 1 115 0
	strb	r2, [r3, #7]
	.loc 1 119 0
	add	r0, r3, #4
.LVL17:
	ldmfd	sp!, {r4, r5, r6, pc}
.L40:
	.align	2
.L39:
	.word	filter_roundedRowMap
	.word	.LANCHOR0
	.cfi_endproc
.LFE1:
	.size	filter_getScale2xQuadColors, .-filter_getScale2xQuadColors
	.comm	filter_roundedRowMap,64,4
	.comm	filter_roundedUVMap,4096,4
	.global	filter_ditherMatrix
	.data
	.align	2
	.type	filter_ditherMatrix, %object
	.size	filter_ditherMatrix, 16
filter_ditherMatrix:
	.byte	0
	.byte	-32
	.byte	48
	.byte	-48
	.byte	-80
	.byte	80
	.byte	-128
	.byte	96
	.byte	-64
	.byte	32
	.byte	-16
	.byte	16
	.byte	112
	.byte	-112
	.byte	64
	.byte	-96
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rowColors.4218, %object
	.size	rowColors.4218, 3
rowColors.4218:
	.space	3
	.space	1
	.type	quad.4217, %object
	.size	quad.4217, 5
quad.4217:
	.space	5
	.text
.Letext0:
	.file 2 "c:/devl/prboom3ds/src/doomtype.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1de
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.4byte	.LASF18
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
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4c
	.4byte	0x28
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf
	.uleb128 0x6
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x59
	.4byte	.LLST0
	.uleb128 0x6
	.ascii	"j\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x59
	.4byte	.LLST1
	.uleb128 0x7
	.ascii	"s\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x59
	.uleb128 0x6
	.ascii	"t\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x59
	.4byte	.LLST2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x60
	.4byte	0x14a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a
	.uleb128 0x9
	.ascii	"e\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST3
	.uleb128 0x9
	.ascii	"b\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST4
	.uleb128 0x9
	.ascii	"f\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST5
	.uleb128 0x9
	.ascii	"h\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST6
	.uleb128 0xa
	.ascii	"d\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x1
	.byte	0x65
	.4byte	0x150
	.uleb128 0x5
	.byte	0x3
	.4byte	quad.4217
	.uleb128 0xb
	.4byte	.LASF11
	.byte	0x1
	.byte	0x66
	.4byte	0x167
	.uleb128 0x5
	.byte	0x3
	.4byte	rowColors.4218
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x67
	.4byte	0x59
	.4byte	.LLST7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6e
	.uleb128 0xe
	.4byte	0x6e
	.4byte	0x160
	.uleb128 0xf
	.4byte	0x160
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xe
	.4byte	0x6e
	.4byte	0x177
	.uleb128 0xf
	.4byte	0x160
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x6e
	.4byte	0x18d
	.uleb128 0xf
	.4byte	0x160
	.byte	0x3
	.uleb128 0xf
	.4byte	0x160
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x23
	.4byte	0x177
	.uleb128 0x5
	.byte	0x3
	.4byte	filter_ditherMatrix
	.uleb128 0xe
	.4byte	0x6e
	.4byte	0x1af
	.uleb128 0x11
	.4byte	0x160
	.2byte	0xfff
	.byte	0
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x28
	.4byte	0x19e
	.uleb128 0x5
	.byte	0x3
	.4byte	filter_roundedUVMap
	.uleb128 0xe
	.4byte	0x6e
	.4byte	0x1d0
	.uleb128 0xf
	.4byte	0x160
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x29
	.4byte	0x1c0
	.uleb128 0x5
	.byte	0x3
	.4byte	filter_roundedRowMap
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x6
	.byte	0x8
	.byte	0x21
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	rowColors.4218+1
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	rowColors.4218+2
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"filter_roundedRowMap\000"
.LASF21:
	.ascii	"filter_getScale2xQuadColors\000"
.LASF14:
	.ascii	"filter_ditherMatrix\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF15:
	.ascii	"filter_roundedUVMap\000"
.LASF10:
	.ascii	"quad\000"
.LASF6:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"R_FilterInit\000"
.LASF4:
	.ascii	"long int\000"
.LASF19:
	.ascii	"byte\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"code\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"c:/devl/prboom3ds/src/r_filter.c\000"
.LASF9:
	.ascii	"_Bool\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF17:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF11:
	.ascii	"rowColors\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
