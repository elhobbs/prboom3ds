	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"z_zone.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	Z_DumpHistory
	.type	Z_DumpHistory, %function
Z_DumpHistory:
.LFB4:
	.file 1 "c:/devl/prboom3ds/src/z_zone.c"
	.loc 1 263 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	bx	lr
	.cfi_endproc
.LFE4:
	.size	Z_DumpHistory, .-Z_DumpHistory
	.align	2
	.global	Z_Close
	.type	Z_Close, %function
Z_Close:
.LFB5:
	.loc 1 269 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE5:
	.size	Z_Close, .-Z_Close
	.align	2
	.global	Z_Init
	.type	Z_Init, %function
Z_Init:
.LFB6:
	.loc 1 277 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE6:
	.size	Z_Init, .-Z_Init
	.align	2
	.global	Z_Free
	.type	Z_Free, %function
Z_Free:
.LFB8:
	.loc 1 463 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1:
	.loc 1 475 0
	cmp	r0, #0
	.loc 1 464 0
	sub	r1, r0, #32
.LVL2:
	.loc 1 475 0
	bxeq	lr
	.loc 1 491 0
	ldr	r3, [r0, #-20]
	.loc 1 463 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 491 0
	cmp	r3, #0
	.loc 1 492 0
	movne	r2, #0
	strne	r2, [r3]
	.loc 1 494 0
	ldr	ip, [r0, #-32]
	cmp	ip, r1
	beq	.L14
	.loc 1 497 0
	ldrb	r2, [r0, #-16]	@ zero_extendqisi2
	ldr	r3, .L15
	ldr	lr, [r3, r2, asl #2]
	cmp	lr, r1
	.loc 1 498 0
	streq	ip, [r3, r2, asl #2]
.L8:
	.loc 1 499 0
	ldr	lr, [r0, #-28]
	.loc 1 502 0
	ldr	r4, [r0, #-24]
	.loc 1 499 0
	str	ip, [lr]
	.loc 1 500 0
	ldr	ip, [r0, #-32]
	.loc 1 502 0
	ldr	r2, [r3, #32]
	.loc 1 500 0
	str	lr, [ip, #4]
	.loc 1 502 0
	add	r2, r2, r4
	.loc 1 516 0
	mov	r0, r1
.LVL3:
	.loc 1 521 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 502 0
	str	r2, [r3, #32]
	.loc 1 516 0
	b	free
.LVL4:
.L14:
	.cfi_restore_state
	.loc 1 495 0
	mov	lr, #0
	ldr	r3, .L15
	ldrb	r2, [r0, #-16]	@ zero_extendqisi2
	str	lr, [r3, r2, asl #2]
	b	.L8
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.cfi_endproc
.LFE8:
	.size	Z_Free, .-Z_Free
	.align	2
	.global	Z_FreeTags
	.type	Z_FreeTags, %function
Z_FreeTags:
.LFB9:
	.loc 1 528 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5:
	.loc 1 534 0
	cmp	r0, #1
	.loc 1 528 0
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
	.loc 1 534 0
	movge	r7, r0
	movlt	r7, #1
.LVL6:
	cmp	r1, #6
	movlt	r9, r1
	movge	r9, #6
.LVL7:
	.loc 1 539 0
	cmp	r7, r9
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr	r3, .L28
	sub	r8, r7, #-1073741823
	add	r8, r3, r8, asl #2
.L21:
.LVL8:
.LBB2:
	.loc 1 542 0
	ldr	r4, [r8, #4]!
.LVL9:
	.loc 1 543 0
	cmp	r4, #0
	.loc 1 545 0
	ldrne	r6, [r4, #4]
	.loc 1 543 0
	bne	.L24
	b	.L23
.LVL10:
.L27:
.LBB3:
	.loc 1 556 0
	mov	r4, r5
.LVL11:
.L24:
	.loc 1 548 0
	mov	r0, r4
	ldr	r5, [r0], #32
.LVL12:
	.loc 1 552 0
	bl	Z_Free
.LVL13:
	.loc 1 554 0
	cmp	r4, r6
	bne	.L27
.LVL14:
.L23:
.LBE3:
.LBE2:
	.loc 1 539 0
	add	r7, r7, #1
.LVL15:
	cmp	r9, r7
	bge	.L21
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.cfi_endproc
.LFE9:
	.size	Z_FreeTags, .-Z_FreeTags
	.align	2
	.global	Z_Malloc
	.type	Z_Malloc, %function
Z_Malloc:
.LFB7:
	.loc 1 344 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL16:
	.loc 1 366 0
	cmp	r0, #0
	.loc 1 344 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 344 0
	mov	r6, r2
	.loc 1 366 0
	beq	.L42
	.loc 1 369 0
	add	r0, r0, #31
.LVL17:
	bic	r8, r0, #31
.LVL18:
	mov	r7, r1
	add	r5, r8, #32
	ldr	r4, .L44
	b	.L33
.LVL19:
.L35:
	.loc 1 399 0
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L43
.LVL20:
.L34:
	.loc 1 409 0
	mov	r0, #6
	mov	r1, r0
	bl	Z_FreeTags
.LVL21:
.L33:
	.loc 1 397 0
	mov	r0, r5
	bl	malloc
.LVL22:
	cmp	r0, #0
	beq	.L35
	.loc 1 412 0
	ldr	r2, [r4, r7, asl #2]
	ldr	r1, .L44
	cmp	r2, #0
	.loc 1 419 0
	ldrne	r2, [r2, #4]
	.loc 1 414 0
	streq	r0, [r1, r7, asl #2]
	.loc 1 419 0
	strne	r0, [r2]
	.loc 1 420 0
	ldrne	r2, [r1, r7, asl #2]
	.loc 1 415 0
	streq	r0, [r0, #4]
	.loc 1 420 0
	ldrne	r1, [r2, #4]
	.loc 1 421 0
	strne	r2, [r0]
	.loc 1 420 0
	strne	r1, [r0, #4]
	.loc 1 422 0
	strne	r0, [r2, #4]
	.loc 1 433 0
	ldr	r2, [r4, #32]
	.loc 1 415 0
	streq	r0, [r0]
	.loc 1 433 0
	rsb	r2, r8, r2
	.loc 1 446 0
	cmp	r6, #0
	.loc 1 425 0
	str	r8, [r0, #8]
	.loc 1 443 0
	strb	r7, [r0, #16]
	.loc 1 444 0
	str	r6, [r0, #12]
	.loc 1 433 0
	str	r2, [r4, #32]
	.loc 1 445 0
	add	r0, r0, #32
.LVL23:
	.loc 1 446 0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL24:
.L41:
	.loc 1 447 0
	str	r0, [r6]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL25:
.L43:
	.loc 1 400 0
	ldr	r0, .L44+4
.LVL26:
	mov	r1, r8
	bl	I_Error
.LVL27:
	b	.L34
.LVL28:
.L42:
	.loc 1 367 0
	cmp	r2, #0
	bne	.L41
	mov	r0, r2
.LVL29:
	.loc 1 456 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.word	.LC0
	.cfi_endproc
.LFE7:
	.size	Z_Malloc, .-Z_Malloc
	.align	2
	.global	Z_ChangeTag
	.type	Z_ChangeTag, %function
Z_ChangeTag:
.LFB10:
	.loc 1 566 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL30:
	.loc 1 570 0
	cmp	r0, #0
	bxeq	lr
	.loc 1 574 0
	ldrb	r2, [r0, #-16]	@ zero_extendqisi2
	cmp	r2, r1
	bxeq	lr
	.loc 1 604 0
	ldr	ip, [r0, #-32]
	.loc 1 567 0
	sub	r3, r0, #32
.LVL31:
	.loc 1 604 0
	cmp	ip, r3
	.loc 1 566 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 604 0
	beq	.L57
	.loc 1 607 0
	ldr	lr, .L58
	ldr	r4, [lr, r2, asl #2]
	cmp	r4, r3
	.loc 1 608 0
	streq	ip, [lr, r2, asl #2]
	ldreq	ip, [r0, #-32]
.L49:
	.loc 1 609 0
	ldr	r4, [r0, #-28]
	.loc 1 612 0
	ldr	r2, .L58
	.loc 1 609 0
	str	ip, [r4]
	.loc 1 610 0
	ldr	ip, [r0, #-32]
	str	r4, [ip, #4]
	.loc 1 612 0
	ldr	ip, [lr, r1, asl #2]
	cmp	ip, #0
	.loc 1 614 0
	streq	r3, [r2, r1, asl #2]
	.loc 1 615 0
	streq	r3, [r0, #-28]
	streq	r3, [r0, #-32]
	.loc 1 612 0
	beq	.L51
	.loc 1 619 0
	ldr	ip, [ip, #4]
	str	r3, [ip]
	.loc 1 620 0
	ldr	ip, [r2, r1, asl #2]
	ldr	ip, [ip, #4]
	str	ip, [r0, #-28]
	.loc 1 621 0
	ldr	ip, [r2, r1, asl #2]
	str	ip, [r0, #-32]
	.loc 1 622 0
	ldr	r2, [r2, r1, asl #2]
	str	r3, [r2, #4]
.L51:
	.loc 1 639 0
	strb	r1, [r0, #-16]
	ldmfd	sp!, {r4, pc}
.L57:
	.loc 1 605 0
	mov	ip, #0
	ldr	lr, .L58
	str	ip, [lr, r2, asl #2]
	ldr	ip, [r0, #-32]
	b	.L49
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.cfi_endproc
.LFE10:
	.size	Z_ChangeTag, .-Z_ChangeTag
	.align	2
	.global	Z_Realloc
	.type	Z_Realloc, %function
Z_Realloc:
.LFB11:
	.loc 1 647 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL32:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 647 0
	mov	r5, r1
	mov	r4, r0
	.loc 1 648 0
	mov	r1, r2
.LVL33:
	mov	r0, r5
.LVL34:
	mov	r2, r3
.LVL35:
	.loc 1 647 0
	mov	r6, r3
	.loc 1 648 0
	bl	Z_Malloc
.LVL36:
	.loc 1 649 0
	cmp	r4, #0
	.loc 1 648 0
	mov	r7, r0
.LVL37:
	.loc 1 649 0
	beq	.L62
.LVL38:
.LBB4:
	.loc 1 652 0
	ldr	r3, [r4, #-24]
	mov	r1, r4
	cmp	r5, r3
	movcc	r2, r5
	movcs	r2, r3
	bl	memcpy
.LVL39:
	.loc 1 653 0
	mov	r0, r4
	bl	Z_Free
.LVL40:
	.loc 1 654 0
	cmp	r6, #0
	.loc 1 655 0
	strne	r7, [r6]
.LVL41:
.L62:
.LBE4:
	.loc 1 658 0
	mov	r0, r7
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE11:
	.size	Z_Realloc, .-Z_Realloc
	.align	2
	.global	Z_Calloc
	.type	Z_Calloc, %function
Z_Calloc:
.LFB12:
	.loc 1 665 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL42:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 667 0
	mul	r4, r1, r0
.LVL43:
	cmp	r4, #0
	beq	.L69
	mov	r1, r2
.LVL44:
	.loc 1 667 0 is_stmt 0 discriminator 1
	mov	r0, r4
	mov	r2, r3
.LVL45:
	bl	Z_Malloc
.LVL46:
	mov	r2, r4
	.loc 1 668 0 is_stmt 1 discriminator 1
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL47:
	.loc 1 667 0 discriminator 1
	mov	r1, #0
	b	memset
.LVL48:
.L69:
	.cfi_restore_state
	.loc 1 668 0
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE12:
	.size	Z_Calloc, .-Z_Calloc
	.align	2
	.global	Z_Strdup
	.type	Z_Strdup, %function
Z_Strdup:
.LFB13:
	.loc 1 675 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL49:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 675 0
	mov	r6, r1
	mov	r5, r2
	mov	r4, r0
	.loc 1 676 0
	bl	strlen
.LVL50:
	mov	r1, r6
	mov	r2, r5
	add	r0, r0, #1
	bl	Z_Malloc
.LVL51:
	mov	r1, r4
	.loc 1 677 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL52:
	.loc 1 676 0
	b	strcpy
.LVL53:
	.cfi_endproc
.LFE13:
	.size	Z_Strdup, .-Z_Strdup
	.align	2
	.global	Z_CheckHeap
	.type	Z_CheckHeap, %function
Z_CheckHeap:
.LFB14:
	.loc 1 686 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE14:
	.size	Z_CheckHeap, .-Z_CheckHeap
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Z_Malloc: Failure trying to allocate %lu bytes\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	blockbytag, %object
	.size	blockbytag, 32
blockbytag:
	.space	32
	.type	free_memory, %object
	.size	free_memory, 4
free_memory:
	.space	4
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 3 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 5 "c:/devl/prboom3ds/src/lprintf.h"
	.file 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 7 "c:/devl/prboom3ds/src/z_zone.h"
	.file 8 "c:/devl/prboom3ds/src/tables.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x673
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.4byte	0xdd
	.uleb128 0xa
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF12
	.sleb128 1
	.uleb128 0xa
	.4byte	.LASF13
	.sleb128 2
	.uleb128 0xa
	.4byte	.LASF14
	.sleb128 3
	.uleb128 0xa
	.4byte	.LASF15
	.sleb128 4
	.uleb128 0xa
	.4byte	.LASF16
	.sleb128 5
	.uleb128 0xa
	.4byte	.LASF17
	.sleb128 6
	.uleb128 0xa
	.4byte	.LASF18
	.sleb128 7
	.uleb128 0xa
	.4byte	.LASF19
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2f
	.4byte	0x37
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x14
	.byte	0x1
	.byte	0x58
	.4byte	0x13f
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5e
	.4byte	0x13f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5e
	.4byte	0x13f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x60
	.4byte	0x145
	.byte	0xc
	.uleb128 0xd
	.ascii	"tag\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x45
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x1
	.byte	0x68
	.4byte	0xf6
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b
	.uleb128 0xf
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x106
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x10c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1ca
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e8
	.uleb128 0x11
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x1e8
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x5d9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14b
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x20b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x20b
	.4byte	0x37
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x20b
	.4byte	0x37
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x21d
	.4byte	0x1e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x21d
	.4byte	0x1e8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x224
	.4byte	0x1e8
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x19f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x153
	.4byte	0x7d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x315
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x153
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x11
	.ascii	"tag\000"
	.byte	0x1
	.2byte	0x153
	.4byte	0x37
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x153
	.4byte	0x145
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x159
	.4byte	0x1e8
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x1ee
	.4byte	0x2e7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x5ea
	.4byte	0x2fb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL27
	.4byte	0x5ff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x231
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x358
	.uleb128 0xf
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x231
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.ascii	"tag\000"
	.byte	0x1
	.2byte	0x231
	.4byte	0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x237
	.4byte	0x1e8
	.4byte	.LLST9
	.byte	0
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x282
	.4byte	0x7d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x424
	.uleb128 0x11
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x282
	.4byte	0x7d
	.4byte	.LLST10
	.uleb128 0x11
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x282
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x11
	.ascii	"tag\000"
	.byte	0x1
	.2byte	0x282
	.4byte	0x37
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x282
	.4byte	0x145
	.4byte	.LLST13
	.uleb128 0x1b
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x288
	.4byte	0x7d
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x406
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x28b
	.4byte	0x1e8
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x611
	.4byte	0x3f5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL40
	.4byte	0x19f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x275
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x294
	.4byte	0x7d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b9
	.uleb128 0x11
	.ascii	"n1\000"
	.byte	0x1
	.2byte	0x294
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x11
	.ascii	"n2\000"
	.byte	0x1
	.2byte	0x294
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x11
	.ascii	"tag\000"
	.byte	0x1
	.2byte	0x294
	.4byte	0x37
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x294
	.4byte	0x145
	.4byte	.LLST19
	.uleb128 0x1a
	.4byte	.LVL46
	.4byte	0x275
	.4byte	0x49e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL48
	.4byte	0x62e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x29e
	.4byte	0x7f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x541
	.uleb128 0x11
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x8c
	.4byte	.LLST20
	.uleb128 0x11
	.ascii	"tag\000"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x37
	.4byte	.LLST21
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x29e
	.4byte	0x145
	.4byte	.LLST22
	.uleb128 0x1a
	.4byte	.LVL50
	.4byte	0x64b
	.4byte	0x515
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0x275
	.4byte	0x52f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL53
	.4byte	0x660
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x2a7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF59
	.byte	0x8
	.byte	0x50
	.4byte	0x55e
	.uleb128 0x7
	.4byte	0x563
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x1e
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6d
	.4byte	0x575
	.byte	0x20
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x1f
	.4byte	0x1e8
	.4byte	0x58a
	.uleb128 0x20
	.4byte	0x76
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6f
	.4byte	0x57a
	.uleb128 0x5
	.byte	0x3
	.4byte	blockbytag
	.uleb128 0x1e
	.4byte	.LASF46
	.byte	0x1
	.byte	0x73
	.4byte	0x5a7
	.byte	0
	.uleb128 0x7
	.4byte	0x37
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.byte	0x74
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	free_memory
	.uleb128 0x1f
	.4byte	0xe4
	.4byte	0x5ce
	.uleb128 0x22
	.4byte	0x76
	.2byte	0x27ff
	.byte	0
	.uleb128 0x23
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4d
	.4byte	0x5bd
	.uleb128 0x24
	.4byte	.LASF48
	.byte	0x4
	.byte	0x55
	.4byte	0x5ea
	.uleb128 0x25
	.4byte	0x7d
	.byte	0
	.uleb128 0x26
	.4byte	.LASF52
	.byte	0x4
	.byte	0x60
	.4byte	0x7d
	.4byte	0x5ff
	.uleb128 0x25
	.4byte	0x25
	.byte	0
	.uleb128 0x24
	.4byte	.LASF49
	.byte	0x5
	.byte	0x3d
	.4byte	0x611
	.uleb128 0x25
	.4byte	0x8c
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.4byte	.LASF50
	.4byte	0x7d
	.4byte	0x62e
	.uleb128 0x25
	.4byte	0x7d
	.uleb128 0x25
	.4byte	0x97
	.uleb128 0x25
	.4byte	0x76
	.byte	0
	.uleb128 0x28
	.4byte	.LASF51
	.4byte	0x7d
	.4byte	0x64b
	.uleb128 0x25
	.4byte	0x7d
	.uleb128 0x25
	.4byte	0x37
	.uleb128 0x25
	.4byte	0x76
	.byte	0
	.uleb128 0x26
	.4byte	.LASF53
	.byte	0x6
	.byte	0x21
	.4byte	0x25
	.4byte	0x660
	.uleb128 0x25
	.4byte	0x8c
	.byte	0
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x6
	.byte	0x1e
	.4byte	0x7f
	.uleb128 0x25
	.4byte	0x7f
	.uleb128 0x25
	.4byte	0x8c
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -31
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
.LASF18:
	.ascii	"PU_NEWBLOCK\000"
.LASF11:
	.ascii	"PU_FREE\000"
.LASF38:
	.ascii	"Z_ChangeTag\000"
.LASF37:
	.ascii	"end_block\000"
.LASF28:
	.ascii	"memblock_t\000"
.LASF3:
	.ascii	"short int\000"
.LASF21:
	.ascii	"size_t\000"
.LASF52:
	.ascii	"malloc\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF22:
	.ascii	"fixed_t\000"
.LASF46:
	.ascii	"memory_size\000"
.LASF50:
	.ascii	"memcpy\000"
.LASF56:
	.ascii	"c:/devl/prboom3ds/src/z_zone.c\000"
.LASF30:
	.ascii	"Z_Init\000"
.LASF41:
	.ascii	"Z_Calloc\000"
.LASF43:
	.ascii	"Z_CheckHeap\000"
.LASF17:
	.ascii	"PU_CACHE\000"
.LASF59:
	.ascii	"finecosine\000"
.LASF57:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF48:
	.ascii	"free\000"
.LASF60:
	.ascii	"finesine\000"
.LASF1:
	.ascii	"signed char\000"
.LASF23:
	.ascii	"float\000"
.LASF14:
	.ascii	"PU_MUSIC\000"
.LASF7:
	.ascii	"long long int\000"
.LASF40:
	.ascii	"Z_Realloc\000"
.LASF51:
	.ascii	"memset\000"
.LASF5:
	.ascii	"long int\000"
.LASF42:
	.ascii	"Z_Strdup\000"
.LASF36:
	.ascii	"block\000"
.LASF16:
	.ascii	"PU_LEVSPEC\000"
.LASF15:
	.ascii	"PU_LEVEL\000"
.LASF47:
	.ascii	"free_memory\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF25:
	.ascii	"prev\000"
.LASF12:
	.ascii	"PU_STATIC\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF31:
	.ascii	"Z_DumpHistory\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF58:
	.ascii	"memblock\000"
.LASF27:
	.ascii	"user\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF10:
	.ascii	"char\000"
.LASF39:
	.ascii	"Z_Malloc\000"
.LASF53:
	.ascii	"strlen\000"
.LASF44:
	.ascii	"HEADER_SIZE\000"
.LASF35:
	.ascii	"hightag\000"
.LASF54:
	.ascii	"strcpy\000"
.LASF20:
	.ascii	"_Bool\000"
.LASF45:
	.ascii	"blockbytag\000"
.LASF34:
	.ascii	"lowtag\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF55:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF26:
	.ascii	"size\000"
.LASF32:
	.ascii	"Z_Free\000"
.LASF33:
	.ascii	"Z_FreeTags\000"
.LASF29:
	.ascii	"Z_Close\000"
.LASF49:
	.ascii	"I_Error\000"
.LASF13:
	.ascii	"PU_SOUND\000"
.LASF24:
	.ascii	"next\000"
.LASF19:
	.ascii	"PU_MAX\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
