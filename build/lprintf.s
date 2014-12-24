	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"lprintf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	doom_vsnprintf
	.type	doom_vsnprintf, %function
doom_vsnprintf:
.LFB2:
	.file 1 "c:/devl/prboom3ds/src/lprintf.c"
	.loc 1 391 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 395 0
	adds	r6, r1, #0
	movne	r6, #1
	adds	ip, r0, #0
	movne	ip, #1
	cmp	ip, r6
	.loc 1 391 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 395 0
	bne	.L25
	.loc 1 396 0
	cmp	r2, #0
	mov	r8, r2
	beq	.L26
	mov	r5, r3
	mov	r4, r1
	mov	r9, r0
	.loc 1 398 0
	str	r3, [sp, #4]
	.loc 1 399 0
	bl	vsnprintf
.LVL1:
	.loc 1 402 0
	subs	fp, r0, #0
	blt	.L27
.LVL2:
.L5:
	.loc 1 428 0
	cmp	r4, fp
	movhi	r6, #0
	andls	r6, r6, #1
	cmp	r6, #0
	beq	.L16
	.loc 1 428 0 is_stmt 0 discriminator 1
	sub	r4, r4, #1
.LVL3:
	ldrb	r3, [r9, r4]	@ zero_extendqisi2
	cmp	r3, #0
	.loc 1 429 0 is_stmt 1 discriminator 1
	movne	r3, #0
	strneb	r3, [r9, r4]
.LVL4:
.L16:
	.loc 1 432 0
	mov	r0, fp
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5:
.L27:
	.cfi_restore_state
	ldr	r10, .L29
	ldr	r7, .L29+4
	ldr	r1, [r10]
.LVL6:
.L6:
.LBB2:
	.loc 1 410 0
	cmp	r4, r1
	.loc 1 408 0
	movcs	r1, r1, asl #1
	strcs	r1, [r10]
	.loc 1 410 0
	bcs	.L6
	.loc 1 412 0
	ldr	r0, [r7]
	bl	realloc
.LVL7:
	.loc 1 413 0
	cmp	r0, #0
	.loc 1 412 0
	str	r0, [r7]
	.loc 1 413 0
	beq	.L28
	.loc 1 416 0
	ldr	r1, [r10]
	mov	r2, r8
	mov	r3, r5
	.loc 1 415 0
	str	r5, [sp, #4]
	.loc 1 416 0
	bl	vsnprintf
.LVL8:
	.loc 1 408 0
	ldr	ip, [r10]
	subs	fp, r0, #0
	mov	r1, ip, asl #1
	str	r1, [r10]
	blt	.L6
	.loc 1 420 0
	cmp	r6, #0
	beq	.L16
.LBB3:
	.loc 1 422 0
	cmp	r4, fp
	movhi	r5, fp
.LVL9:
	subls	r5, r4, #1
.LVL10:
	.loc 1 423 0
	ldr	r1, [r7]
	mov	r0, r9
.LVL11:
	mov	r2, r5
	bl	memmove
.LVL12:
	.loc 1 424 0
	mov	r3, #0
	strb	r3, [r9, r5]
	b	.L5
.LVL13:
.L28:
.LBE3:
	.loc 1 413 0 discriminator 1
	ldr	r0, .L29+8
	ldr	r1, .L29+12
	ldr	r2, .L29+16
	ldr	r3, .L29+20
	bl	__assert_func
.LVL14:
.L26:
.LBE2:
	.loc 1 396 0 discriminator 1
	ldr	r0, .L29+8
.LVL15:
	mov	r1, #396
.LVL16:
	ldr	r2, .L29+16
.LVL17:
	ldr	r3, .L29+24
.LVL18:
	bl	__assert_func
.LVL19:
.L25:
	.loc 1 395 0 discriminator 1
	ldr	r0, .L29+8
.LVL20:
	ldr	r1, .L29+28
.LVL21:
	ldr	r2, .L29+16
.LVL22:
	ldr	r3, .L29+32
.LVL23:
	bl	__assert_func
.LVL24:
.L30:
	.align	2
.L29:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LC0
	.word	413
	.word	.LANCHOR0
	.word	.LC3
	.word	.LC2
	.word	395
	.word	.LC1
	.cfi_endproc
.LFE2:
	.size	doom_vsnprintf, .-doom_vsnprintf
	.align	2
	.global	lprintf
	.type	lprintf, %function
lprintf:
.LFB0:
	.loc 1 329 0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 2056
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL25:
	stmfd	sp!, {r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 14, -16
	mov	r5, r0
.LVL26:
	sub	sp, sp, #2048
	.cfi_def_cfa_offset 2076
	sub	sp, sp, #12
	.cfi_def_cfa_offset 2088
	.loc 1 335 0
	add	ip, sp, #2080
	.loc 1 339 0
	ldr	r6, .L41
	.loc 1 336 0
	mov	r3, ip
	add	r0, sp, #8
.LVL27:
	mov	r1, #2048
	ldr	r2, [sp, #2076]
	.loc 1 335 0
	str	ip, [sp, #4]
	.loc 1 336 0
	bl	doom_vsnprintf
.LVL28:
	.loc 1 339 0
	ldr	r3, [r6, #4]
	ands	r4, r5, r3
	bne	.L39
.LVL29:
.L32:
	.loc 1 346 0
	mov	r0, #1
	bl	isatty
.LVL30:
	cmp	r0, #0
	bne	.L33
	.loc 1 346 0 is_stmt 0 discriminator 1
	ldr	r3, [r6, #8]
	tst	r5, r3
	bne	.L40
.L33:
	.loc 1 350 0 is_stmt 1
	mov	r0, r4
	add	sp, sp, #2048
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 12
.LVL31:
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
.LVL32:
.L40:
	.cfi_restore_state
	.loc 1 347 0
	ldr	r3, .L41+4
	add	r2, sp, #8
	ldr	r3, [r3]
	ldr	r1, .L41+8
	ldr	r0, [r3, #12]
	bl	fprintf
.LVL33:
	mov	r4, r0
.LVL34:
	b	.L33
.LVL35:
.L39:
	.loc 1 341 0
	ldr	r3, .L41+4
	ldr	r1, .L41+8
	ldr	r3, [r3]
	add	r2, sp, #8
	ldr	r0, [r3, #8]
	bl	fprintf
.LVL36:
	mov	r4, r0
.LVL37:
	b	.L32
.L42:
	.align	2
.L41:
	.word	.LANCHOR1
	.word	_impure_ptr
	.word	.LC4
	.cfi_endproc
.LFE0:
	.size	lprintf, .-lprintf
	.align	2
	.global	I_Error
	.type	I_Error, %function
I_Error:
.LFB1:
	.loc 1 362 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 2056
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL38:
	stmfd	sp!, {r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 20
	.cfi_offset 14, -20
	sub	sp, sp, #2048
	.cfi_def_cfa_offset 2068
	sub	sp, sp, #12
	.cfi_def_cfa_offset 2080
	.loc 1 365 0
	add	ip, sp, #2064
	add	ip, ip, #4
	.loc 1 366 0
	mov	r3, ip
	ldr	r2, [sp, #2064]
	add	r0, sp, #8
	mov	r1, #2048
	.loc 1 365 0
	str	ip, [sp, #4]
	.loc 1 366 0
	bl	doom_vsnprintf
.LVL39:
	.loc 1 368 0
	add	r2, sp, #8
	ldr	r1, .L45
	mov	r0, #8
	bl	lprintf
.LVL40:
	.loc 1 375 0
	mvn	r0, #0
	bl	I_SafeExit
.LVL41:
	.loc 1 376 0
	add	sp, sp, #2048
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.L46:
	.align	2
.L45:
	.word	.LC5
	.cfi_endproc
.LFE1:
	.size	I_Error, .-I_Error
	.align	2
	.global	doom_snprintf
	.type	doom_snprintf, %function
doom_snprintf:
.LFB3:
	.loc 1 435 0
	.cfi_startproc
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL42:
	stmfd	sp!, {r2, r3}
	.cfi_def_cfa_offset 8
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -12
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 439 0
	add	ip, sp, #20
	.loc 1 440 0
	mov	r3, ip
	ldr	r2, [sp, #16]
	.loc 1 439 0
	str	ip, [sp, #4]
	.loc 1 440 0
	bl	doom_vsnprintf
.LVL43:
	.loc 1 444 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_restore 3
	.cfi_restore 2
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.size	doom_snprintf, .-doom_snprintf
	.global	cons_output_mask
	.global	cons_error_mask
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.5712, %object
	.size	__FUNCTION__.5712, 15
__FUNCTION__.5712:
	.ascii	"doom_vsnprintf\000"
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	backsize.5714, %object
	.size	backsize.5714, 4
backsize.5714:
	.word	1024
	.type	cons_output_mask, %object
	.size	cons_output_mask, 4
cons_output_mask:
	.word	-1
	.type	cons_error_mask, %object
	.size	cons_error_mask, 4
cons_error_mask:
	.word	-2
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"c:/devl/prboom3ds/src/lprintf.c\000"
.LC1:
	.ascii	"(max == 0 && buf == NULL) || (max != 0 && buf != NU"
	.ascii	"LL)\000"
	.space	1
.LC2:
	.ascii	"fmt != NULL\000"
.LC3:
	.ascii	"backbuffer != NULL\000"
	.space	1
.LC4:
	.ascii	"%s\000"
	.space	1
.LC5:
	.ascii	"%s\012\000"
	.bss
	.align	2
	.set	.LANCHOR2,. + 0
	.type	backbuffer.5713, %object
	.size	backbuffer.5713, 4
backbuffer.5713:
	.space	4
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 3 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stdarg.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 7 "<built-in>"
	.file 8 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.file 9 "c:/devl/prboom3ds/src/lprintf.h"
	.file 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 12 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\assert.h"
	.file 13 "c:/devl/prboom3ds/src/i_main.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xde6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x28
	.4byte	0x42
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x7
	.byte	0
	.4byte	0x59
	.uleb128 0x5
	.4byte	.LASF15
	.4byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x5
	.byte	0x10
	.4byte	0x7e
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0x27
	.4byte	0x7e
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x161
	.4byte	0x30
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0xe6
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4c
	.4byte	0xbb
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4d
	.4byte	0xe6
	.byte	0
	.uleb128 0xb
	.4byte	0x69
	.4byte	0xf6
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x11e
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x5
	.byte	0x49
	.4byte	0x5b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4e
	.4byte	0xc7
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4f
	.4byte	0xfd
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x53
	.4byte	0x9a
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.4byte	0x85
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x192
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.4byte	0x192
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x30
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x6
	.byte	0x30
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0x5b
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.4byte	0x5b
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x31
	.4byte	0x198
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x13f
	.uleb128 0xb
	.4byte	0x134
	.4byte	0x1a8
	.uleb128 0xc
	.4byte	0xf6
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x221
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.4byte	0x5b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x38
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x39
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3a
	.4byte	0x5b
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3b
	.4byte	0x5b
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3c
	.4byte	0x5b
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3d
	.4byte	0x5b
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3e
	.4byte	0x5b
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3f
	.4byte	0x5b
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x261
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x49
	.4byte	0x261
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4a
	.4byte	0x261
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.4byte	0x134
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4f
	.4byte	0x134
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x59
	.4byte	0x271
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.2byte	0x190
	.byte	0x6
	.byte	0x5b
	.4byte	0x2af
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0x5c
	.4byte	0x2af
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5d
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5f
	.4byte	0x2b5
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x60
	.4byte	0x221
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x271
	.uleb128 0xb
	.4byte	0x2c5
	.4byte	0x2c5
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2cb
	.uleb128 0x13
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x2f1
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0x74
	.4byte	0x2f1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x6
	.byte	0x75
	.4byte	0x5b
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x421
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb4
	.4byte	0x2f1
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb5
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x6
	.byte	0xb7
	.4byte	0x70
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb8
	.4byte	0x70
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2cc
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.4byte	0x5b
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc1
	.4byte	0x59
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc3
	.4byte	0x584
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc5
	.4byte	0x5b3
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0xc8
	.4byte	0x5d7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0xc9
	.4byte	0x5f1
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2cc
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcd
	.4byte	0x2f1
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xce
	.4byte	0x5b
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd1
	.4byte	0x5f7
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd2
	.4byte	0x607
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2cc
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd8
	.4byte	0x5b
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd9
	.4byte	0xa5
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.byte	0xdc
	.4byte	0x43f
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe0
	.4byte	0x129
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe2
	.4byte	0x11e
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe3
	.4byte	0x5b
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.4byte	0x5b
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x59
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x5b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x445
	.uleb128 0x16
	.4byte	.LASF68
	.2byte	0x428
	.byte	0x6
	.2byte	0x239
	.4byte	0x577
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x23b
	.4byte	0x5b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x240
	.4byte	0x65e
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x240
	.4byte	0x65e
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x240
	.4byte	0x65e
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x242
	.4byte	0x5b
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x243
	.4byte	0x840
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x245
	.4byte	0x5b
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x246
	.4byte	0x5a8
	.byte	0x34
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x248
	.4byte	0x5b
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x24a
	.4byte	0x85b
	.byte	0x3c
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x24d
	.4byte	0x192
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x24e
	.4byte	0x5b
	.byte	0x44
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x24f
	.4byte	0x192
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x250
	.4byte	0x861
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x253
	.4byte	0x5b
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x254
	.4byte	0x577
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x277
	.4byte	0x81e
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x27b
	.4byte	0x2af
	.2byte	0x148
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x27c
	.4byte	0x271
	.2byte	0x14c
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x280
	.4byte	0x872
	.2byte	0x2dc
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x285
	.4byte	0x623
	.2byte	0x2e0
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x286
	.4byte	0x87e
	.2byte	0x2ec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.uleb128 0x10
	.byte	0x4
	.4byte	0x421
	.uleb128 0x14
	.4byte	0x5b
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x59
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x5b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5ae
	.uleb128 0x19
	.4byte	0x57d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x58a
	.uleb128 0x14
	.4byte	0xb0
	.4byte	0x5d7
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x59
	.uleb128 0x15
	.4byte	0xb0
	.uleb128 0x15
	.4byte	0x5b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x14
	.4byte	0x5b
	.4byte	0x5f1
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x59
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5dd
	.uleb128 0xb
	.4byte	0x69
	.4byte	0x607
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x69
	.4byte	0x617
	.uleb128 0xc
	.4byte	0xf6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x11d
	.4byte	0x2f7
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x658
	.uleb128 0x17
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x123
	.4byte	0x658
	.byte	0
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x124
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x125
	.4byte	0x65e
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x623
	.uleb128 0x10
	.byte	0x4
	.4byte	0x617
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0xe
	.byte	0x6
	.2byte	0x13d
	.4byte	0x699
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x13e
	.4byte	0x699
	.byte	0
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x13f
	.4byte	0x699
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x140
	.4byte	0x77
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x77
	.4byte	0x6a9
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x258
	.4byte	0x7aa
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x25a
	.4byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x25b
	.4byte	0x577
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x25c
	.4byte	0x7aa
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x25d
	.4byte	0x1a8
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x25e
	.4byte	0x5b
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x25f
	.4byte	0x93
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x260
	.4byte	0x664
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x261
	.4byte	0x11e
	.byte	0x68
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x262
	.4byte	0x11e
	.byte	0x70
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x263
	.4byte	0x11e
	.byte	0x78
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x264
	.4byte	0x7ba
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x265
	.4byte	0x7ca
	.byte	0x88
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x266
	.4byte	0x5b
	.byte	0xa0
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x267
	.4byte	0x11e
	.byte	0xa4
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x268
	.4byte	0x11e
	.byte	0xac
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x269
	.4byte	0x11e
	.byte	0xb4
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x26a
	.4byte	0x11e
	.byte	0xbc
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x26b
	.4byte	0x11e
	.byte	0xc4
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x26c
	.4byte	0x5b
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x7ba
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x7ca
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x7da
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x271
	.4byte	0x7fe
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x274
	.4byte	0x7fe
	.byte	0
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x275
	.4byte	0x80e
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x2f1
	.4byte	0x80e
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x30
	.4byte	0x81e
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x256
	.4byte	0x840
	.uleb128 0x1d
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x26d
	.4byte	0x6a9
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x276
	.4byte	0x7da
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x850
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.4byte	0x85b
	.uleb128 0x15
	.4byte	0x43f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x850
	.uleb128 0x10
	.byte	0x4
	.4byte	0x192
	.uleb128 0x1e
	.4byte	0x872
	.uleb128 0x15
	.4byte	0x5b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x878
	.uleb128 0x10
	.byte	0x4
	.4byte	0x867
	.uleb128 0xb
	.4byte	0x617
	.4byte	0x88e
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x8
	.byte	0x33
	.4byte	0x617
	.uleb128 0x10
	.byte	0x4
	.4byte	0x89f
	.uleb128 0x1f
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x3
	.byte	0x62
	.4byte	0x37
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF123
	.uleb128 0x20
	.byte	0x1
	.byte	0x9
	.byte	0x28
	.4byte	0x8e6
	.uleb128 0x21
	.4byte	.LASF124
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF125
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF126
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF127
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF128
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF129
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF130
	.sleb128 64
	.byte	0
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x9
	.byte	0x30
	.4byte	0x8b2
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x186
	.4byte	0x5b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaae
	.uleb128 0x23
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x186
	.4byte	0x577
	.4byte	.LLST0
	.uleb128 0x23
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x186
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x23
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x186
	.4byte	0x5a8
	.4byte	.LLST2
	.uleb128 0x23
	.ascii	"va\000"
	.byte	0x1
	.2byte	0x186
	.4byte	0x8a0
	.4byte	.LLST3
	.uleb128 0x24
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x188
	.4byte	0x5b
	.4byte	.LLST4
	.uleb128 0x25
	.ascii	"vc\000"
	.byte	0x1
	.2byte	0x189
	.4byte	0x8a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.4byte	.LASF152
	.4byte	0xabe
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.5712
	.uleb128 0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xa2b
	.uleb128 0x28
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x195
	.4byte	0x577
	.uleb128 0x5
	.byte	0x3
	.4byte	backbuffer.5713
	.uleb128 0x28
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x196
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	backsize.5714
	.uleb128 0x27
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x9db
	.uleb128 0x24
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0xd2b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xd4a
	.uleb128 0x2c
	.4byte	.LVL8
	.4byte	0xd64
	.4byte	0x9fe
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0xd89
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x19d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL1
	.4byte	0xd64
	.4byte	0xa51
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL19
	.4byte	0xd89
	.4byte	0xa81
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x18c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL24
	.4byte	0xd89
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x18b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0xabe
	.uleb128 0xc
	.4byte	0xf6
	.byte	0xe
	.byte	0
	.uleb128 0x19
	.4byte	0xaae
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x148
	.4byte	0x5b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbe
	.uleb128 0x23
	.ascii	"pri\000"
	.byte	0x1
	.2byte	0x148
	.4byte	0x8e6
	.4byte	.LLST6
	.uleb128 0x2d
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x148
	.4byte	0x5a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2e
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x5b
	.4byte	.LLST7
	.uleb128 0x25
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0x14b
	.4byte	0xbbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x24
	.ascii	"lvl\000"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x5b
	.4byte	.LLST8
	.uleb128 0x25
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x8a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2084
	.uleb128 0x2f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x15a
	.4byte	0x5b
	.4byte	0xb49
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL28
	.4byte	0x8f1
	.4byte	0xb72
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0xda9
	.4byte	0xb85
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL33
	.4byte	0xdbb
	.4byte	0xba3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x29
	.4byte	.LVL36
	.4byte	0xdbb
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0xbcf
	.uleb128 0x30
	.4byte	0xf6
	.2byte	0x7ff
	.byte	0
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x169
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc72
	.uleb128 0x32
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x169
	.4byte	0x5a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.uleb128 0x28
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x16b
	.4byte	0xbbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2072
	.uleb128 0x28
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x16c
	.4byte	0x8a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2076
	.uleb128 0x2c
	.4byte	.LVL39
	.4byte	0x8f1
	.4byte	0xc3e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL40
	.4byte	0xac3
	.4byte	0xc61
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0xddc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x5b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfd
	.uleb128 0x23
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x577
	.4byte	.LLST9
	.uleb128 0x23
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x2d
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x5a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2e
	.uleb128 0x25
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x5b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x25
	.ascii	"va\000"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x8a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0x8f1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x2fa
	.4byte	0x43f
	.uleb128 0x34
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3c
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	cons_output_mask
	.uleb128 0x34
	.4byte	.LASF142
	.byte	0x1
	.byte	0x3b
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	cons_error_mask
	.uleb128 0x35
	.4byte	.LASF143
	.byte	0xa
	.byte	0x18
	.4byte	0x59
	.4byte	0xd4a
	.uleb128 0x15
	.4byte	0x59
	.uleb128 0x15
	.4byte	0x899
	.uleb128 0x15
	.4byte	0x25
	.byte	0
	.uleb128 0x35
	.4byte	.LASF144
	.byte	0xb
	.byte	0x7d
	.4byte	0x59
	.4byte	0xd64
	.uleb128 0x15
	.4byte	0x59
	.uleb128 0x15
	.4byte	0x25
	.byte	0
	.uleb128 0x36
	.4byte	.LASF145
	.byte	0x8
	.2byte	0x126
	.4byte	0x5b
	.4byte	0xd89
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x37
	.byte	0
	.uleb128 0x37
	.4byte	.LASF147
	.byte	0xc
	.byte	0x29
	.4byte	0xda9
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x5b
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x15a
	.4byte	0x5b
	.4byte	0xdbb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x35
	.4byte	.LASF148
	.byte	0x8
	.byte	0xa9
	.4byte	0x5b
	.4byte	0xdd6
	.uleb128 0x15
	.4byte	0xdd6
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x88e
	.uleb128 0x38
	.4byte	.LASF154
	.byte	0xd
	.byte	0x28
	.uleb128 0x15
	.4byte	0x5b
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"_dso_handle\000"
.LASF50:
	.ascii	"_size\000"
.LASF0:
	.ascii	"size_t\000"
.LASF95:
	.ascii	"_rand48\000"
.LASF74:
	.ascii	"_emergency\000"
.LASF122:
	.ascii	"va_list\000"
.LASF64:
	.ascii	"_data\000"
.LASF115:
	.ascii	"_wcrtomb_state\000"
.LASF116:
	.ascii	"_wcsrtombs_state\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF139:
	.ascii	"doom_snprintf\000"
.LASF54:
	.ascii	"_lbfsize\000"
.LASF143:
	.ascii	"memmove\000"
.LASF113:
	.ascii	"_mbrtowc_state\000"
.LASF154:
	.ascii	"I_SafeExit\000"
.LASF108:
	.ascii	"_wctomb_state\000"
.LASF31:
	.ascii	"__tm_sec\000"
.LASF9:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"signed char\000"
.LASF60:
	.ascii	"_ubuf\000"
.LASF148:
	.ascii	"fprintf\000"
.LASF49:
	.ascii	"_base\000"
.LASF33:
	.ascii	"__tm_hour\000"
.LASF89:
	.ascii	"__sf\000"
.LASF150:
	.ascii	"c:/devl/prboom3ds/src/lprintf.c\000"
.LASF55:
	.ascii	"_cookie\000"
.LASF88:
	.ascii	"__sglue\000"
.LASF132:
	.ascii	"backbuffer\000"
.LASF7:
	.ascii	"long int\000"
.LASF52:
	.ascii	"_flags\000"
.LASF44:
	.ascii	"_is_cxa\000"
.LASF70:
	.ascii	"_stdin\000"
.LASF24:
	.ascii	"__va_list\000"
.LASF62:
	.ascii	"_blksize\000"
.LASF84:
	.ascii	"_cvtbuf\000"
.LASF63:
	.ascii	"_offset\000"
.LASF114:
	.ascii	"_mbsrtowcs_state\000"
.LASF112:
	.ascii	"_mbrlen_state\000"
.LASF124:
	.ascii	"LO_INFO\000"
.LASF41:
	.ascii	"_fnargs\000"
.LASF131:
	.ascii	"OutputLevels\000"
.LASF47:
	.ascii	"_fns\000"
.LASF125:
	.ascii	"LO_CONFIRM\000"
.LASF153:
	.ascii	"I_Error\000"
.LASF28:
	.ascii	"_sign\000"
.LASF22:
	.ascii	"_flock_t\000"
.LASF72:
	.ascii	"_stderr\000"
.LASF25:
	.ascii	"_Bigint\000"
.LASF103:
	.ascii	"_gamma_signgam\000"
.LASF56:
	.ascii	"_read\000"
.LASF80:
	.ascii	"_result_k\000"
.LASF30:
	.ascii	"__tm\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"__wchb\000"
.LASF71:
	.ascii	"_stdout\000"
.LASF83:
	.ascii	"_cvtlen\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF130:
	.ascii	"LO_ALWAYS\000"
.LASF53:
	.ascii	"_file\000"
.LASF152:
	.ascii	"__FUNCTION__\000"
.LASF93:
	.ascii	"_niobs\000"
.LASF127:
	.ascii	"LO_ERROR\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF86:
	.ascii	"_atexit0\000"
.LASF110:
	.ascii	"_signal_buf\000"
.LASF101:
	.ascii	"_asctime_buf\000"
.LASF134:
	.ascii	"doom_vsnprintf\000"
.LASF79:
	.ascii	"_result\000"
.LASF16:
	.ascii	"__wch\000"
.LASF135:
	.ascii	"lprintf\000"
.LASF14:
	.ascii	"wint_t\000"
.LASF141:
	.ascii	"cons_output_mask\000"
.LASF65:
	.ascii	"_lock\000"
.LASF67:
	.ascii	"_flags2\000"
.LASF121:
	.ascii	"FILE\000"
.LASF57:
	.ascii	"_write\000"
.LASF36:
	.ascii	"__tm_year\000"
.LASF146:
	.ascii	"isatty\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF149:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF1:
	.ascii	"__gnuc_va_list\000"
.LASF118:
	.ascii	"_nextf\000"
.LASF138:
	.ascii	"argptr\000"
.LASF35:
	.ascii	"__tm_mon\000"
.LASF45:
	.ascii	"_atexit\000"
.LASF77:
	.ascii	"__sdidinit\000"
.LASF12:
	.ascii	"_off_t\000"
.LASF145:
	.ascii	"vsnprintf\000"
.LASF82:
	.ascii	"_freelist\000"
.LASF136:
	.ascii	"error\000"
.LASF11:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF123:
	.ascii	"_Bool\000"
.LASF147:
	.ascii	"__assert_func\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF126:
	.ascii	"LO_WARN\000"
.LASF85:
	.ascii	"_new\000"
.LASF117:
	.ascii	"_h_errno\000"
.LASF5:
	.ascii	"short int\000"
.LASF38:
	.ascii	"__tm_yday\000"
.LASF48:
	.ascii	"__sbuf\000"
.LASF94:
	.ascii	"_iobs\000"
.LASF91:
	.ascii	"__FILE\000"
.LASF21:
	.ascii	"_mbstate_t\000"
.LASF51:
	.ascii	"__sFILE\000"
.LASF66:
	.ascii	"_mbstate\000"
.LASF104:
	.ascii	"_rand_next\000"
.LASF106:
	.ascii	"_mblen_state\000"
.LASF73:
	.ascii	"_inc\000"
.LASF46:
	.ascii	"_ind\000"
.LASF76:
	.ascii	"_current_locale\000"
.LASF78:
	.ascii	"__cleanup\000"
.LASF27:
	.ascii	"_maxwds\000"
.LASF68:
	.ascii	"_reent\000"
.LASF96:
	.ascii	"_seed\000"
.LASF19:
	.ascii	"__count\000"
.LASF20:
	.ascii	"__value\000"
.LASF58:
	.ascii	"_seek\000"
.LASF140:
	.ascii	"_impure_ptr\000"
.LASF13:
	.ascii	"_fpos_t\000"
.LASF40:
	.ascii	"_on_exit_args\000"
.LASF69:
	.ascii	"_errno\000"
.LASF90:
	.ascii	"char\000"
.LASF32:
	.ascii	"__tm_min\000"
.LASF133:
	.ascii	"backsize\000"
.LASF97:
	.ascii	"_mult\000"
.LASF142:
	.ascii	"cons_error_mask\000"
.LASF26:
	.ascii	"_next\000"
.LASF100:
	.ascii	"_strtok_last\000"
.LASF137:
	.ascii	"errmsg\000"
.LASF43:
	.ascii	"_fntypes\000"
.LASF15:
	.ascii	"__ap\000"
.LASF98:
	.ascii	"_add\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF111:
	.ascii	"_getdate_err\000"
.LASF128:
	.ascii	"LO_FATAL\000"
.LASF75:
	.ascii	"_current_category\000"
.LASF99:
	.ascii	"_unused_rand\000"
.LASF29:
	.ascii	"_wds\000"
.LASF37:
	.ascii	"__tm_wday\000"
.LASF92:
	.ascii	"_glue\000"
.LASF119:
	.ascii	"_nmalloc\000"
.LASF109:
	.ascii	"_l64a_buf\000"
.LASF87:
	.ascii	"_sig_func\000"
.LASF61:
	.ascii	"_nbuf\000"
.LASF120:
	.ascii	"_unused\000"
.LASF39:
	.ascii	"__tm_isdst\000"
.LASF102:
	.ascii	"_localtime_buf\000"
.LASF59:
	.ascii	"_close\000"
.LASF144:
	.ascii	"realloc\000"
.LASF105:
	.ascii	"_r48\000"
.LASF107:
	.ascii	"_mbtowc_state\000"
.LASF151:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF81:
	.ascii	"_p5s\000"
.LASF129:
	.ascii	"LO_DEBUG\000"
.LASF34:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
