	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"z_bmalloc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	Z_BMalloc
	.type	Z_BMalloc, %function
Z_BMalloc:
.LFB3:
	.file 1 "c:/devl/prboom3ds/src/z_bmalloc.c"
	.loc 1 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 70 0
	ldr	r4, [r0]
	.loc 1 69 0
	mov	r7, r0
	.loc 1 71 0
	cmp	r4, #0
	.loc 1 70 0
	mov	r6, r0
.LVL1:
	.loc 1 71 0
	bne	.L5
	b	.L2
.LVL2:
.L3:
.LBB13:
	.loc 1 82 0
	mov	r6, r4
.LVL3:
	ldr	r4, [r4]
.LBE13:
	.loc 1 71 0
	cmp	r4, #0
	beq	.L2
.LVL4:
.L5:
.LBB17:
	.loc 1 72 0
	add	r5, r4, #8
	mov	r0, r5
	mov	r1, #0
	ldr	r2, [r4, #4]
	bl	memchr
.LVL5:
	.loc 1 73 0
	cmp	r0, #0
	beq	.L3
.LBB14:
	.loc 1 79 0
	mov	r2, #1
	.loc 1 74 0
	rsb	r5, r5, r0
.LVL6:
	.loc 1 79 0
	add	r4, r4, r5
	strb	r2, [r4, #8]
	.loc 1 80 0
	ldr	r0, [r6]
.LVL7:
.LBB15:
.LBB16:
	.loc 1 51 0
	ldr	r2, [r7, #4]
	ldr	r3, [r0, #4]
	add	r3, r3, #8
	mla	r5, r2, r5, r3
.LVL8:
	add	r0, r0, r5
.LVL9:
.LBE16:
.LBE15:
	.loc 1 80 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL10:
.L2:
.LBE14:
.LBE17:
.LBB18:
	.loc 1 90 0
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #12]
	mla	r0, r3, r0, r0
	mov	r1, #1
	mov	r3, #0
	add	r0, r0, #8
	bl	Z_Calloc
.LVL11:
	.loc 1 95 0
	mov	r2, #1
	.loc 1 92 0
	mov	r1, #0
	.loc 1 90 0
	str	r0, [r6]
	.loc 1 95 0
	strb	r2, [r0, #8]
	.loc 1 96 0
	ldr	r2, [r7, #8]
	.loc 1 92 0
	str	r1, [r0]
.LBB19:
.LBB20:
	.loc 1 51 0
	add	r5, r2, #8
.LBE20:
.LBE19:
	.loc 1 96 0
	str	r2, [r0, #4]
.LVL12:
.LBB22:
.LBB21:
	.loc 1 51 0
	add	r0, r0, r5
.LVL13:
.LBE21:
.LBE22:
.LBE18:
	.loc 1 99 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE3:
	.size	Z_BMalloc, .-Z_BMalloc
	.global	__aeabi_uidiv
	.align	2
	.global	Z_BFree
	.type	Z_BFree, %function
Z_BFree:
.LFB4:
	.loc 1 102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL14:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 103 0
	ldr	r4, [r0]
	.loc 1 102 0
	mov	r8, r0
	.loc 1 105 0
	cmp	r4, #0
.LVL15:
	beq	.L13
	mov	r6, r1
	mov	r5, r0
	ldr	r7, [r0, #4]
.LVL16:
.L16:
	mvn	r3, #7
.LBB23:
.LBB24:
.LBB25:
	.loc 1 60 0
	ldr	r9, [r4, #4]
	.loc 1 57 0
	rsb	r0, r4, r6
	rsb	r3, r9, r3
.LVL17:
	.loc 1 61 0
	adds	r0, r3, r0
	bmi	.L14
	.loc 1 62 0
	mov	r1, r7
	bl	__aeabi_uidiv
.LVL18:
	.loc 1 63 0
	cmp	r9, r0
	bls	.L14
.LBE25:
.LBE24:
	.loc 1 112 0
	mov	r3, #0
	add	r4, r4, r0
	strb	r3, [r4, #8]
	.loc 1 113 0
	ldr	r4, [r5]
	mov	r1, #1
	add	r0, r4, #8
.LVL19:
	ldr	r2, [r4, #4]
	bl	memchr
.LVL20:
	cmp	r0, #0
	beq	.L17
.LBE23:
	.loc 1 123 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L14:
.LBB28:
	.loc 1 120 0
	mov	r5, r4
.LVL21:
	ldr	r4, [r4]
.LVL22:
.LBE28:
	.loc 1 105 0
	cmp	r4, #0
	bne	.L16
.LVL23:
.L13:
	.loc 1 122 0
	ldr	r1, [r8, #16]
	ldr	r0, .L24
	.loc 1 123 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL24:
	.loc 1 122 0
	b	I_Error
.LVL25:
.L17:
	.cfi_restore_state
.LBB29:
.LBB26:
	.loc 1 116 0
	ldr	r3, [r4]
	.loc 1 117 0
	mov	r0, r4
	.loc 1 116 0
	str	r3, [r5]
.LBE26:
.LBE29:
	.loc 1 123 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL26:
.LBB30:
.LBB27:
	.loc 1 117 0
	b	Z_Free
.LVL27:
.L25:
	.align	2
.L24:
	.word	.LC0
.LBE27:
.LBE30:
	.cfi_endproc
.LFE4:
	.size	Z_BFree, .-Z_BFree
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Z_BFree: Free not in zone %s\000"
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 3 "c:/devl/prboom3ds/src/doomtype.h"
	.file 4 "c:/devl/prboom3ds/src/z_bmalloc.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 6 "c:/devl/prboom3ds/src/z_zone.h"
	.file 7 "c:/devl/prboom3ds/src/lprintf.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x428
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.4byte	.LASF36
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
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd4
	.4byte	0x64
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4c
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x14
	.byte	0x4
	.byte	0x22
	.4byte	0xf3
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0x23
	.4byte	0x88
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.4byte	0x6b
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x25
	.4byte	0x6b
	.byte	0x8
	.uleb128 0xb
	.ascii	"tag\000"
	.byte	0x4
	.byte	0x26
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x27
	.4byte	0x98
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.4byte	0x124
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.4byte	0x124
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2d
	.4byte	0x6b
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2e
	.4byte	0x12a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf3
	.uleb128 0xc
	.4byte	0x7d
	.4byte	0x139
	.uleb128 0xd
	.4byte	0x8a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2f
	.4byte	0xf3
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.byte	0x42
	.4byte	0x159
	.uleb128 0xf
	.4byte	.LASF24
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x31
	.4byte	0x88
	.byte	0x3
	.4byte	0x187
	.uleb128 0x11
	.ascii	"p\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x187
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x31
	.4byte	0x6b
	.uleb128 0x11
	.ascii	"n\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x6b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x139
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x36
	.4byte	0x5d
	.byte	0x3
	.4byte	0x1c8
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.4byte	0x1c8
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x36
	.4byte	0x6b
	.uleb128 0x11
	.ascii	"p\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xa3
	.uleb128 0x13
	.ascii	"dif\000"
	.byte	0x1
	.byte	0x39
	.4byte	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ce
	.uleb128 0x7
	.4byte	0x139
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x44
	.4byte	0x88
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x44
	.4byte	0x2d5
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x46
	.4byte	0x2db
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.4byte	0x27c
	.uleb128 0x18
	.ascii	"p\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x2e1
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x266
	.uleb128 0x18
	.ascii	"n\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0x5d
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	0x159
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.4byte	0x17d
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	0x172
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	0x169
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0x3c3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x56
	.4byte	0x187
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	0x159
	.4byte	.LBB19
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x61
	.4byte	0x2bf
	.uleb128 0x20
	.4byte	0x17d
	.byte	0
	.uleb128 0x21
	.4byte	0x172
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x1b
	.4byte	0x169
	.4byte	.LLST8
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x3e2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x187
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0x65
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c3
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x65
	.4byte	0x2d5
	.4byte	.LLST9
	.uleb128 0x23
	.ascii	"p\000"
	.byte	0x1
	.byte	0x65
	.4byte	0x88
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x67
	.4byte	0x2db
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x3af
	.uleb128 0x13
	.ascii	"n\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0x5d
	.uleb128 0x24
	.4byte	0x18d
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x6a
	.4byte	0x377
	.uleb128 0x1b
	.4byte	0x1b3
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0x1a8
	.uleb128 0x1b
	.4byte	0x19d
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x26
	.4byte	0x1bc
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x399
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x73
	.4byte	0x187
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0x40c
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x3c3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0x41d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF32
	.byte	0x5
	.byte	0x15
	.4byte	0x88
	.4byte	0x3e2
	.uleb128 0x2a
	.4byte	0xa3
	.uleb128 0x2a
	.4byte	0x5d
	.uleb128 0x2a
	.4byte	0x6b
	.byte	0
	.uleb128 0x29
	.4byte	.LASF33
	.byte	0x6
	.byte	0x4f
	.4byte	0x88
	.4byte	0x406
	.uleb128 0x2a
	.4byte	0x6b
	.uleb128 0x2a
	.4byte	0x6b
	.uleb128 0x2a
	.4byte	0x5d
	.uleb128 0x2a
	.4byte	0x406
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x88
	.uleb128 0x2b
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4a
	.4byte	0x41d
	.uleb128 0x2a
	.4byte	0x88
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3d
	.uleb128 0x2a
	.4byte	0x98
	.uleb128 0x2d
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x50
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
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF10:
	.ascii	"size_t\000"
.LASF36:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF22:
	.ascii	"used\000"
.LASF28:
	.ascii	"pool\000"
.LASF17:
	.ascii	"desc\000"
.LASF11:
	.ascii	"byte\000"
.LASF39:
	.ascii	"Z_Free\000"
.LASF15:
	.ascii	"size\000"
.LASF37:
	.ascii	"Z_BMalloc\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF27:
	.ascii	"iselem\000"
.LASF16:
	.ascii	"perpool\000"
.LASF30:
	.ascii	"pzone\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"nextpool\000"
.LASF32:
	.ascii	"memchr\000"
.LASF26:
	.ascii	"getelem\000"
.LASF2:
	.ascii	"short int\000"
.LASF33:
	.ascii	"Z_Calloc\000"
.LASF29:
	.ascii	"newpool\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF18:
	.ascii	"block_memory_alloc_s\000"
.LASF24:
	.ascii	"unused_block\000"
.LASF21:
	.ascii	"blocks\000"
.LASF12:
	.ascii	"sizetype\000"
.LASF31:
	.ascii	"oldpool\000"
.LASF6:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"char\000"
.LASF40:
	.ascii	"I_Error\000"
.LASF38:
	.ascii	"Z_BFree\000"
.LASF19:
	.ascii	"bmalpool_s\000"
.LASF23:
	.ascii	"bmalpool_t\000"
.LASF14:
	.ascii	"firstpool\000"
.LASF35:
	.ascii	"c:/devl/prboom3ds/src/z_bmalloc.c\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF25:
	.ascii	"used_block\000"
.LASF9:
	.ascii	"_Bool\000"
.LASF34:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
