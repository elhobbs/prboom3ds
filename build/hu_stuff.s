	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"hu_stuff.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	HU_Init
	.type	HU_Init, %function
HU_Init:
.LFB5:
	.file 1 "c:/devl/prboom3ds/src/hu_stuff.c"
	.loc 1 291 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 297 0
	mvn	r7, #14
	.loc 1 300 0
	mov	r4, #33
	.loc 1 297 0
	ldr	r3, .L34
	ldr	r2, .L34+4
	ldr	r6, .L34+8
	ldr	r5, .L34+12
	.loc 1 291 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 1 297 0
	str	r2, [r3]
.LVL0:
.L2:
	.loc 1 303 0
	cmp	r7, #9
	bls	.L25
	sub	r3, r4, #65
	.loc 1 310 0
	cmp	r3, #25
	bls	.L26
	.loc 1 317 0
	cmp	r4, #45
	beq	.L27
	.loc 1 322 0
	cmp	r4, #47
	beq	.L28
	.loc 1 327 0
	cmp	r4, #58
	beq	.L29
	.loc 1 332 0
	cmp	r4, #91
	beq	.L30
	.loc 1 337 0
	cmp	r4, #93
	beq	.L31
	.loc 1 342 0
	cmp	r4, #96
	bgt	.L12
	.loc 1 344 0
	ldr	r1, .L34+16
	add	r0, sp, #4
.L22:
	.loc 1 351 0
	mov	r2, r4
	bl	sprintf
.LVL1:
	.loc 1 352 0
	mov	r0, r6
	add	r1, sp, #4
	bl	R_SetPatchNum
.LVL2:
	.loc 1 353 0
	mov	r0, r5
	add	r1, sp, #4
	bl	R_SetPatchNum
.LVL3:
.L4:
	.loc 1 301 0 discriminator 2
	add	r4, r4, #1
.LVL4:
	cmp	r4, #128
	add	r7, r7, #1
.LVL5:
	add	r6, r6, #20
	add	r5, r5, #20
	bne	.L2
	.loc 1 301 0 is_stmt 0
	mov	r3, #76
	mov	r2, #85
	mov	r4, #0
.LVL6:
	ldr	r5, .L34+20
	ldr	r8, .L34+24
	ldr	r7, .L34+28
.LVL7:
	ldr	r6, .L34+32
	b	.L16
.LVL8:
.L32:
	smull	r3, r2, r7, r4
	sub	r2, r2, r4, asr #31
	add	r3, r2, r2, asl #1
	rsb	r3, r3, r4
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	ldrb	r2, [r8, r2]	@ zero_extendqisi2
.LVL9:
.L16:
	.loc 1 361 0 is_stmt 1 discriminator 3
	ldr	r1, .L34+36
	add	r0, sp, #4
	bl	sprintf
.LVL10:
	.loc 1 360 0 discriminator 3
	add	r4, r4, #1
.LVL11:
	.loc 1 362 0 discriminator 3
	mov	r0, r5
	add	r1, sp, #4
	bl	R_SetPatchNum
.LVL12:
	.loc 1 360 0 discriminator 3
	cmp	r4, #9
	add	r5, r5, #20
	bne	.L32
	.loc 1 360 0 is_stmt 0
	mov	r4, #0
.LVL13:
	ldr	r5, .L34+40
.L17:
.LVL14:
	.loc 1 367 0 is_stmt 1 discriminator 3
	mov	r2, r4
	ldr	r1, .L34+44
	add	r0, sp, #4
	bl	sprintf
.LVL15:
	.loc 1 366 0 discriminator 3
	add	r4, r4, #1
.LVL16:
	.loc 1 368 0 discriminator 3
	mov	r0, r5
	add	r1, sp, #4
	bl	R_SetPatchNum
.LVL17:
	.loc 1 366 0 discriminator 3
	cmp	r4, #6
	add	r5, r5, #20
	bne	.L17
	.loc 1 370 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL18:
.L27:
	.cfi_restore_state
	.loc 1 319 0
	mov	r0, r6
	ldr	r1, .L34+48
	bl	R_SetPatchNum
.LVL19:
	.loc 1 320 0
	mov	r0, r5
	ldr	r1, .L34+52
	bl	R_SetPatchNum
.LVL20:
.L7:
	.loc 1 301 0
	add	r4, r4, #1
.LVL21:
	add	r7, r7, #1
.LVL22:
	add	r6, r6, #20
	add	r5, r5, #20
	b	.L2
.L31:
	.loc 1 339 0
	mov	r0, r6
	ldr	r1, .L34+56
	bl	R_SetPatchNum
.LVL23:
	.loc 1 340 0
	mov	r0, r5
	ldr	r1, .L34+60
	bl	R_SetPatchNum
.LVL24:
	b	.L7
.L30:
	.loc 1 334 0
	mov	r0, r6
	ldr	r1, .L34+64
	bl	R_SetPatchNum
.LVL25:
	.loc 1 335 0
	mov	r0, r5
	ldr	r1, .L34+68
	bl	R_SetPatchNum
.LVL26:
	b	.L7
.L29:
	.loc 1 329 0
	mov	r0, r6
	ldr	r1, .L34+72
	bl	R_SetPatchNum
.LVL27:
	.loc 1 330 0
	mov	r0, r5
	ldr	r1, .L34+76
	bl	R_SetPatchNum
.LVL28:
	b	.L7
.L28:
	.loc 1 324 0
	mov	r0, r6
	ldr	r1, .L34+80
	bl	R_SetPatchNum
.LVL29:
	.loc 1 325 0
	mov	r0, r5
	ldr	r1, .L34+84
	bl	R_SetPatchNum
.LVL30:
	b	.L7
.L26:
	.loc 1 312 0
	mov	r2, r4
	ldr	r1, .L34+88
	add	r0, sp, #4
.L21:
	bl	sprintf
.LVL31:
	.loc 1 313 0
	mov	r0, r6
	add	r1, sp, #4
	bl	R_SetPatchNum
.LVL32:
	.loc 1 314 0
	add	r0, sp, #4
	ldr	r1, .L34+16
	mov	r2, r4
	bl	sprintf
.LVL33:
	.loc 1 315 0
	mov	r0, r5
	add	r1, sp, #4
	bl	R_SetPatchNum
.LVL34:
	b	.L4
.L25:
	.loc 1 305 0
	add	r0, sp, #4
	ldr	r1, .L34+92
	mov	r2, r7
	b	.L21
.L12:
	.loc 1 349 0
	cmp	r4, #122
	bgt	.L33
	.loc 1 356 0
	mov	ip, r5
	ldr	lr, .L34+12
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L4
.L33:
	.loc 1 351 0
	add	r0, sp, #4
	ldr	r1, .L34+96
	b	.L22
.L35:
	.align	2
.L34:
	.word	shiftxform
	.word	.LANCHOR0
	.word	hu_font2
	.word	hu_font
	.word	.LC1
	.word	hu_msgbg
	.word	.LC15
	.word	1431655766
	.word	.LC16
	.word	.LC14
	.word	hu_fontk
	.word	.LC17
	.word	.LC3
	.word	.LC4
	.word	.LC11
	.word	.LC12
	.word	.LC9
	.word	.LC10
	.word	.LC7
	.word	.LC8
	.word	.LC5
	.word	.LC6
	.word	.LC2
	.word	.LC0
	.word	.LC13
	.cfi_endproc
.LFE5:
	.size	HU_Init, .-HU_Init
	.align	2
	.global	HU_Start
	.type	HU_Start, %function
HU_Start:
.LFB7:
	.loc 1 396 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 401 0
	ldr	r4, .L123
	.loc 1 404 0
	mov	ip, #284
	.loc 1 401 0
	ldr	r3, [r4, #656]
	.loc 1 405 0
	mov	r9, #0
	.loc 1 401 0
	cmp	r3, #0
.LBB16:
.LBB17:
	.loc 1 381 0
	movne	r3, #0
.LBE17:
.LBE16:
	.loc 1 412 0
	mov	r7, #33
	.loc 1 439 0
	mov	r10, #3
.LBB19:
.LBB18:
	.loc 1 381 0
	strne	r3, [r4, #656]
.LBE18:
.LBE19:
	.loc 1 404 0
	ldr	r3, .L123+4
	ldr	r2, .L123+8
	ldr	r1, [r3]
	.loc 1 412 0
	ldr	r3, .L123+12
	.loc 1 404 0
	mla	ip, ip, r1, r2
	.loc 1 406 0
	ldr	lr, .L123+16
	.loc 1 412 0
	ldr	r3, [r3]
	ldr	r5, .L123+20
	ldr	r0, .L123+24
	.loc 1 408 0
	ldr	r6, .L123+28
	.loc 1 396 0
	sub	sp, sp, #24
	.cfi_def_cfa_offset 56
	.loc 1 412 0
	str	r3, [sp, #8]
	str	r0, [sp, #12]
	mov	r1, r9
	mov	r2, r9
	stmia	sp, {r5, r7}
	add	r0, r0, #8
	.loc 1 406 0
	str	r9, [lr]
	.loc 1 412 0
	mov	r3, #1
	.loc 1 408 0
	str	r9, [r6]
	.loc 1 404 0
	str	ip, [r4, #660]
	.loc 1 405 0
	str	r9, [r4, #664]
	.loc 1 407 0
	str	r9, [r4, #668]
	.loc 1 412 0
	bl	HUlib_initSText
.LVL35:
	.loc 1 426 0
	ldr	r3, .L123+32
	ldr	r2, [r5, #4]
	ldr	r3, [r3]
	.loc 1 442 0
	ldr	r8, .L123+36
	.loc 1 426 0
	mov	r1, r9
	rsb	r2, r2, #167
	str	r3, [sp, #4]
	ldr	r0, .L123+40
	mov	r3, r5
	str	r7, [sp]
	bl	HUlib_initTextLine
.LVL36:
	.loc 1 439 0
	ldr	r3, [r8]
	ldr	r0, .L123+44
	cmp	r3, r9
	movne	r1, #224
	moveq	r1, #2
	movne	r2, #2
	moveq	r2, #183
	str	r10, [sp, #4]
	ldr	r3, .L123+48
	str	r7, [sp]
	bl	HUlib_initTextLine
.LVL37:
	.loc 1 452 0
	ldr	r3, [r8]
	ldr	r0, .L123+52
	cmp	r3, r9
	moveq	r1, #2
	movne	r1, #224
	moveq	r2, #191
	movne	r2, #10
	str	r10, [sp, #4]
	ldr	r3, .L123+48
	str	r7, [sp]
	bl	HUlib_initTextLine
.LVL38:
	.loc 1 478 0
	mov	r10, #2
	.loc 1 465 0
	mov	r3, #5
	ldr	r2, [r8]
	ldr	r0, .L123+56
	cmp	r2, r9
	movne	r1, #200
	moveq	r1, r10
	movne	r2, #191
	moveq	r2, #175
	str	r3, [sp, #4]
	str	r7, [sp]
	ldr	r3, .L123+48
	bl	HUlib_initTextLine
.LVL39:
	.loc 1 478 0
	ldr	r3, [r8]
	ldr	r0, .L123+60
	cmp	r3, r9
	moveq	r1, r10
	movne	r1, #200
	moveq	r2, #167
	movne	r2, #183
	ldr	r3, .L123+48
	str	r7, [sp]
	str	r10, [sp, #4]
	bl	HUlib_initTextLine
.LVL40:
	.loc 1 491 0
	ldr	r2, [r8]
	ldr	r9, .L123+48
	cmp	r2, #0
	movne	r2, #191
	moveq	r2, #159
	mov	r1, r10
	mov	r3, r9
	ldr	r0, .L123+64
	stmia	sp, {r7, r10}
	bl	HUlib_initTextLine
.LVL41:
	.loc 1 504 0
	mov	r3, #6
	ldr	r2, [r8]
	.loc 1 507 0
	ldr	r1, [r9, #640]
	.loc 1 504 0
	cmp	r2, #0
	.loc 1 507 0
	mov	r1, r1, asl r10
	.loc 1 504 0
	movne	r2, #191
	moveq	r2, #159
	add	r1, r1, r10
	str	r3, [sp, #4]
	ldr	r0, .L123+68
	ldr	r3, .L123+72
	str	r7, [sp]
	bl	HUlib_initTextLine
.LVL42:
	.loc 1 517 0
	ldr	r2, [r8]
	mov	r1, r10
	cmp	r2, #0
	movne	r2, #183
	moveq	r2, #151
	mov	r3, r9
	str	r7, [sp]
	str	r10, [sp, #4]
	ldr	r0, .L123+76
	bl	HUlib_initTextLine
.LVL43:
	.loc 1 529 0
	ldr	r1, .L123+80
	ldr	r3, [r1]
	cmp	r3, #16
	bgt	.L45
	cmp	r3, #1
	movle	r2, #0
	movgt	r2, #1
	add	ip, r3, r10
	mov	ip, ip, asl #3
.L46:
	.loc 1 532 0
	ldr	r0, .L123+84
	.loc 1 534 0
	mov	r1, #0
	.loc 1 532 0
	mov	r3, r0
	.loc 1 534 0
	mov	r7, #33
	ldr	r8, .L123+88
	ldr	lr, .L123+92
	ldr	r8, [r8]
	.loc 1 532 0
	str	r2, [r3, #568]!
	.loc 1 534 0
	str	r3, [sp, #20]
	str	ip, [sp]
	mov	r3, #320
	str	r5, [sp, #4]
	add	r0, r0, #572
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	r2, r1
	str	lr, [sp, #16]
	bl	HUlib_initMText
.LVL44:
	.loc 1 550 0
	ldr	r3, .L123+96
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L96
	.loc 1 551 0
	ldr	r3, .L123+100
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L119
.L48:
	.loc 1 561 0
	ldr	r3, .L123+104
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L120
	.loc 1 561 0 is_stmt 0 discriminator 2
	cmp	r3, #3
	.loc 1 562 0 is_stmt 1 discriminator 2
	ldr	r3, .L123+108
	ldreq	r2, .L123+112
	ldr	r3, [r3]
	ldrne	r2, .L123+116
	sub	r3, r3, #1
	.loc 1 561 0 discriminator 2
	ldr	r3, [r2, r3, asl #2]
	ldr	r7, [r3]
	b	.L47
.L45:
	.loc 1 530 0
	mov	r3, #16
	mov	ip, #144
	mov	r2, #1
	str	r3, [r1]
	b	.L46
.L96:
	.loc 1 564 0
	ldr	r7, .L123+120
.L47:
.LVL45:
	.loc 1 565 0
	ldrb	r1, [r7]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L55
.LVL46:
.L54:
	.loc 1 566 0
	ldr	r0, .L123+40
	bl	HUlib_addCharToTextLine
.LVL47:
	.loc 1 565 0
	ldrb	r1, [r7, #1]!	@ zero_extendqisi2
.LVL48:
	cmp	r1, #0
	bne	.L54
.LVL49:
.L55:
	.loc 1 574 0
	mvn	r7, #12
	.loc 1 571 0
	mov	r8, #33
	.loc 1 574 0
	ldr	r1, [r9, #640]
	.loc 1 571 0
	ldr	r10, .L123+124
	.loc 1 574 0
	mul	r1, r7, r1
	.loc 1 571 0
	ldr	r3, [r10]
	add	r1, r1, #320
	str	r3, [sp, #4]
	ldr	r0, .L123+128
	mov	r2, #1
	ldr	r3, .L123+20
	str	r8, [sp]
	bl	HUlib_initTextLine
.LVL50:
	.loc 1 583 0
	ldr	r1, [r9, #640]
	.loc 1 580 0
	ldr	r3, [r10]
	.loc 1 583 0
	mul	r1, r7, r1
	.loc 1 580 0
	ldr	r2, [r5, #644]
	add	r1, r1, #320
	str	r3, [sp, #4]
	add	r2, r2, #2
	ldr	r0, .L123+132
	ldr	r3, .L123+20
	str	r8, [sp]
	bl	HUlib_initTextLine
.LVL51:
	.loc 1 592 0
	ldr	r1, [r9, #640]
	.loc 1 593 0
	ldr	r2, [r5, #644]
	.loc 1 592 0
	mul	r1, r7, r1
	.loc 1 589 0
	ldr	r3, [r10]
	.loc 1 593 0
	mov	r2, r2, asl #1
	.loc 1 589 0
	str	r3, [sp, #4]
	add	r1, r1, #320
	ldr	r3, .L123+20
	str	r8, [sp]
	add	r2, r2, #3
	ldr	r0, .L123+136
	bl	HUlib_initTextLine
.LVL52:
	.loc 1 601 0
	ldr	r3, .L123+140
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L121
.L53:
	.loc 1 618 0
	ldr	r3, .L123+144
	ldmia	r3, {r0, r1}
	.loc 1 620 0
	uxtb	r3, r0
	cmp	r3, #0
	.loc 1 618 0
	str	r0, [r4, #96]
	strb	r1, [r4, #100]
.LVL53:
	.loc 1 620 0
	ldrne	r7, .L123+148
	beq	.L57
.LVL54:
.L68:
	.loc 1 621 0
	mov	r1, r3
	ldr	r0, .L123+56
	bl	HUlib_addCharToTextLine
.LVL55:
	.loc 1 620 0
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2
.LVL56:
	cmp	r3, #0
	bne	.L68
.LVL57:
.L57:
	.loc 1 624 0
	ldr	r3, .L123+152
	ldmia	r3, {r0, r1}
	.loc 1 626 0
	uxtb	r2, r0
	cmp	r2, #0
	.loc 1 624 0
	str	r0, [r4, #176]
	strb	r1, [r4, #180]
.LVL58:
	.loc 1 626 0
	ldrne	r7, .L123+156
	beq	.L67
.LVL59:
.L71:
	.loc 1 627 0
	mov	r1, r2
	ldr	r0, .L123+44
	bl	HUlib_addCharToTextLine
.LVL60:
	.loc 1 626 0
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2
.LVL61:
	cmp	r2, #0
	bne	.L71
.LVL62:
.L67:
	.loc 1 630 0
	ldr	r3, .L123+160
	ldmia	r3, {r0, r1}
	.loc 1 632 0
	uxtb	r2, r0
	cmp	r2, #0
	.loc 1 630 0
	str	r0, [r4, #256]
	strb	r1, [r4, #260]
.LVL63:
	.loc 1 632 0
	ldrne	r7, .L123+164
	beq	.L70
.LVL64:
.L74:
	.loc 1 633 0
	mov	r1, r2
	ldr	r0, .L123+52
	bl	HUlib_addCharToTextLine
.LVL65:
	.loc 1 632 0
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2
.LVL66:
	cmp	r2, #0
	bne	.L74
.LVL67:
.L70:
	.loc 1 636 0
	ldr	r3, .L123+168
	ldmia	r3, {r0, r1}
	.loc 1 638 0
	uxtb	r2, r0
	cmp	r2, #0
	.loc 1 636 0
	str	r0, [r4, #336]
	strb	r1, [r4, #340]
.LVL68:
	.loc 1 638 0
	ldrne	r7, .L123+172
	beq	.L73
.LVL69:
.L77:
	.loc 1 639 0
	mov	r1, r2
	ldr	r0, .L123+60
	bl	HUlib_addCharToTextLine
.LVL70:
	.loc 1 638 0
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2
.LVL71:
	cmp	r2, #0
	bne	.L77
.LVL72:
.L73:
	.loc 1 642 0
	ldr	r3, .L123+176
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L122
	.loc 1 643 0
	ldr	r3, .L123+180
	ldmia	r3, {r0, r1}
	str	r0, [r4, #416]
	strb	r1, [r4, #420]
.L78:
.LVL73:
	.loc 1 647 0
	ldrb	r1, [r4, #416]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r7, .L123+184
	beq	.L83
.LVL74:
.L82:
	.loc 1 648 0
	ldr	r0, .L123+64
	bl	HUlib_addCharToTextLine
.LVL75:
	.loc 1 647 0
	ldrb	r1, [r7, #1]!	@ zero_extendqisi2
.LVL76:
	cmp	r1, #0
	bne	.L82
.LVL77:
.L83:
	.loc 1 651 0
	mov	r3, #32
	ldr	r7, .L123+188
	.loc 1 653 0
	subs	r1, r3, #0
	.loc 1 651 0
	strh	r3, [r7]	@ movhi
.LVL78:
	.loc 1 653 0
	beq	.L81
.LVL79:
.L86:
	.loc 1 654 0
	ldr	r0, .L123+68
	bl	HUlib_addCharToTextLine
.LVL80:
	.loc 1 653 0
	ldrb	r1, [r7, #1]!	@ zero_extendqisi2
.LVL81:
	cmp	r1, #0
	bne	.L86
.LVL82:
.L81:
	.loc 1 657 0
	ldr	r3, .L123+192
	ldmia	r3, {r0, r1}
	.loc 1 659 0
	uxtb	r2, r0
	cmp	r2, #0
	.loc 1 657 0
	str	r0, [r4, #576]
	strb	r1, [r4, #580]
.LVL83:
	.loc 1 659 0
	ldrne	r7, .L123+196
	beq	.L85
.LVL84:
.L88:
	.loc 1 660 0
	mov	r1, r2
	ldr	r0, .L123+76
	bl	HUlib_addCharToTextLine
.LVL85:
	.loc 1 659 0
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2
.LVL86:
	cmp	r2, #0
	bne	.L88
.LVL87:
.L85:
	.loc 1 663 0
	mov	r3, #33
	mov	r7, #0
	ldr	r8, .L123+200
	ldr	r2, [r5, #4]
	ldr	r1, [r8]
	add	r2, r2, #1
	stmib	sp, {r1, r6}
	str	r3, [sp]
	ldr	r0, .L123+204
	mov	r1, r7
	ldr	r3, .L123+20
	bl	HUlib_initIText
.LVL88:
	.loc 1 676 0
	mov	r9, r7
	ldr	r6, .L123+208
	ldr	r5, .L123+212
.LVL89:
.L87:
	.loc 1 676 0 is_stmt 0 discriminator 3
	mov	r1, #0
	ldr	r0, [r8]
	mov	r2, r1
	str	r0, [sp, #4]
	str	r9, [sp]
	add	r0, r6, r7
	str	r5, [sp, #8]
	mov	r3, r1
	add	r7, r7, #2048
	bl	HUlib_initIText
.LVL90:
	.loc 1 675 0 is_stmt 1 discriminator 3
	cmp	r7, #8192
	bne	.L87
	.loc 1 688 0
	mov	r3, #1
	str	r3, [r4, #656]
	.loc 1 689 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L122:
	.cfi_restore_state
	.loc 1 645 0
	ldr	r3, .L123+216
	ldmia	r3, {r0, r1}
	str	r0, [r4, #416]
	strb	r1, [r4, #420]
	b	.L78
.L119:
	mov	r2, #1
	mov	r3, r2, asl r3
	tst	r3, #11
	beq	.L48
	.loc 1 556 0
	ldr	r2, .L123+220
	ldr	r3, .L123+108
	ldr	r2, [r2]
	ldr	r1, [r3]
	sub	r3, r2, #1
	add	r3, r3, r3, asl #3
	add	r3, r3, r1
	ldr	r2, .L123+224
	sub	r3, r3, #1
	ldr	r3, [r2, r3, asl #2]
	ldr	r7, [r3]
.LVL91:
	.loc 1 557 0
	b	.L47
.LVL92:
.L121:
	.loc 1 603 0
	ldr	r1, .L123+228
	ldr	r0, .L123
	mov	r2, #0
	bl	sprintf
.LVL93:
	.loc 1 605 0
	ldrb	r1, [r4]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r7, .L123
	beq	.L62
.LVL94:
.L61:
	.loc 1 606 0
	ldr	r0, .L123+128
	bl	HUlib_addCharToTextLine
.LVL95:
	.loc 1 605 0
	ldrb	r1, [r7, #1]!	@ zero_extendqisi2
.LVL96:
	cmp	r1, #0
	bne	.L61
.LVL97:
.L62:
	.loc 1 607 0
	ldr	r1, .L123+232
	ldr	r0, .L123+236
	mov	r2, #0
	bl	sprintf
.LVL98:
	.loc 1 609 0
	ldrb	r1, [r4, #32]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r7, .L123+236
	beq	.L60
.LVL99:
.L64:
	.loc 1 610 0
	ldr	r0, .L123+132
	bl	HUlib_addCharToTextLine
.LVL100:
	.loc 1 609 0
	ldrb	r1, [r7, #1]!	@ zero_extendqisi2
.LVL101:
	cmp	r1, #0
	bne	.L64
.LVL102:
.L60:
	.loc 1 611 0
	ldr	r1, .L123+240
	ldr	r0, .L123+244
	mov	r2, #0
	bl	sprintf
.LVL103:
	.loc 1 613 0
	ldrb	r1, [r4, #64]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r7, .L123+244
	beq	.L53
.LVL104:
.L65:
	.loc 1 614 0
	ldr	r0, .L123+136
	bl	HUlib_addCharToTextLine
.LVL105:
	.loc 1 613 0
	ldrb	r1, [r7, #1]!	@ zero_extendqisi2
.LVL106:
	cmp	r1, #0
	bne	.L65
	b	.L53
.LVL107:
.L120:
	.loc 1 561 0 discriminator 1
	ldr	r3, .L123+108
	ldr	r2, .L123+248
	ldr	r3, [r3]
	sub	r3, r3, #1
	ldr	r3, [r2, r3, asl #2]
	ldr	r7, [r3]
	b	.L47
.L124:
	.align	2
.L123:
	.word	.LANCHOR1
	.word	displayplayer
	.word	players
	.word	hudcolor_mesg
	.word	message_dontfuckwithme
	.word	hu_font
	.word	.LANCHOR1+664
	.word	chat_on
	.word	hudcolor_titl
	.word	hud_distributed
	.word	.LANCHOR2+648
	.word	.LANCHOR2+2684
	.word	hu_font2
	.word	.LANCHOR3-3464
	.word	.LANCHOR3-1428
	.word	.LANCHOR3+608
	.word	.LANCHOR3+2644
	.word	.LANCHOR4-3504
	.word	hu_fontk
	.word	.LANCHOR4-1468
	.word	hud_msg_lines
	.word	.LANCHOR4
	.word	hudcolor_list
	.word	hu_msgbg
	.word	gamestate
	.word	gamemode
	.word	gamemission
	.word	gamemap
	.word	mapnamesp
	.word	mapnames2
	.word	.LC18
	.word	hudcolor_xyco
	.word	.LANCHOR5+452
	.word	.LANCHOR5+2488
	.word	.LANCHOR6-3660
	.word	map_point_coordinates
	.word	.LC19
	.word	.LANCHOR1+96
	.word	.LC23
	.word	.LANCHOR1+176
	.word	.LC24
	.word	.LANCHOR1+256
	.word	.LC25
	.word	.LANCHOR1+336
	.word	deathmatch
	.word	.LC26
	.word	.LANCHOR1+416
	.word	.LANCHOR1+496
	.word	.LC28
	.word	.LANCHOR1+576
	.word	hudcolor_chat
	.word	.LANCHOR6-1624
	.word	.LANCHOR6+424
	.word	.LANCHOR7+432
	.word	.LC27
	.word	gameepisode
	.word	mapnames
	.word	.LC20
	.word	.LC21
	.word	.LANCHOR1+32
	.word	.LC22
	.word	.LANCHOR1+64
	.word	mapnamest
	.cfi_endproc
.LFE7:
	.size	HU_Start, .-HU_Start
	.align	2
	.global	HU_MoveHud
	.type	HU_MoveHud, %function
HU_MoveHud:
.LFB8:
	.loc 1 702 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 706 0
	ldr	r3, .L136
	ldr	r1, .L136+4
	ldr	r2, [r3]
	ldr	r3, [r1]
	cmp	r2, r3
	.loc 1 723 0
	streq	r2, [r1]
	.loc 1 706 0
	bxeq	lr
	.loc 1 708 0
	cmp	r2, #0
	.loc 1 702 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 708 0
	beq	.L135
	.loc 1 712 0
	mov	lr, #2
	.loc 1 714 0
	ldr	r3, .L136+8
	ldr	ip, .L136+12
	ldr	r0, [r3, #640]
	.loc 1 709 0
	mov	r4, #191
	.loc 1 714 0
	mov	r0, r0, asl lr
	.loc 1 708 0
	mov	r8, #200
	.loc 1 711 0
	mov	r7, #183
	.loc 1 718 0
	mov	r5, #224
	.loc 1 714 0
	add	r0, r0, lr
	str	r0, [ip, #-3504]
	.loc 1 721 0
	mov	r0, #10
	.loc 1 708 0
	ldr	r3, .L136+16
	.loc 1 718 0
	ldr	r6, .L136+20
	.loc 1 715 0
	str	r4, [ip, #-3500]
	.loc 1 709 0
	str	r4, [r3, #-1424]
	.loc 1 713 0
	str	r4, [r3, #2648]
	.loc 1 708 0
	str	r8, [r3, #-1428]
	.loc 1 710 0
	str	r8, [r3, #608]
	.loc 1 711 0
	str	r7, [r3, #612]
	.loc 1 717 0
	str	r7, [ip, #-1464]
	.loc 1 716 0
	str	lr, [ip, #-1468]
	.loc 1 712 0
	str	lr, [r3, #2644]
	.loc 1 719 0
	str	lr, [r6, #2688]
	.loc 1 718 0
	str	r5, [r6, #2684]
	.loc 1 720 0
	str	r5, [r3, #-3464]
.L129:
	.loc 1 721 0 discriminator 4
	str	r0, [r3, #-3460]
	.loc 1 723 0 discriminator 4
	str	r2, [r1]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L135:
	.loc 1 708 0
	mov	r0, #2
	.loc 1 713 0
	mov	r5, #159
	.loc 1 717 0
	mov	r9, #151
	.loc 1 709 0
	mov	r8, #175
	.loc 1 711 0
	mov	r7, #167
	.loc 1 719 0
	mov	r6, #183
	.loc 1 714 0
	ldr	r3, .L136+8
	ldr	lr, .L136+12
	ldr	ip, [r3, #640]
	.loc 1 718 0
	ldr	r4, .L136+20
	.loc 1 708 0
	ldr	r3, .L136+16
	.loc 1 714 0
	mov	ip, ip, asl r0
	add	ip, ip, r0
	.loc 1 716 0
	str	r0, [lr, #-1468]
	.loc 1 708 0
	str	r0, [r3, #-1428]
	.loc 1 710 0
	str	r0, [r3, #608]
	.loc 1 712 0
	str	r0, [r3, #2644]
	.loc 1 720 0
	str	r0, [r3, #-3464]
	.loc 1 718 0
	str	r0, [r4, #2684]
	.loc 1 714 0
	str	ip, [lr, #-3504]
	.loc 1 717 0
	str	r9, [lr, #-1464]
	.loc 1 715 0
	str	r5, [lr, #-3500]
	.loc 1 713 0
	str	r5, [r3, #2648]
	.loc 1 709 0
	str	r8, [r3, #-1424]
	.loc 1 711 0
	str	r7, [r3, #612]
	.loc 1 719 0
	str	r6, [r4, #2688]
	.loc 1 721 0
	mov	r0, #191
	b	.L129
.L137:
	.align	2
.L136:
	.word	hud_distributed
	.word	.LANCHOR8
	.word	hu_font2
	.word	.LANCHOR4
	.word	.LANCHOR3
	.word	.LANCHOR2
	.cfi_endproc
.LFE8:
	.size	HU_MoveHud, .-HU_MoveHud
	.align	2
	.global	HU_Erase
	.type	HU_Erase, %function
HU_Erase:
.LFB10:
	.loc 1 1290 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1292 0
	ldr	r0, .L143
	.loc 1 1290 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 1292 0
	ldr	r3, [r0, #568]
	cmp	r3, #0
	beq	.L142
	.loc 1 1295 0
	add	r0, r0, #572
	bl	HUlib_eraseMText
.LVL108:
.L140:
	.loc 1 1298 0
	ldr	r0, .L143+4
	bl	HUlib_eraseIText
.LVL109:
	.loc 1 1302 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 1301 0
	ldr	r0, .L143+8
	b	HUlib_eraseTextLine
.LVL110:
.L142:
	.cfi_restore_state
	.loc 1 1293 0
	ldr	r0, .L143+12
	bl	HUlib_eraseSText
.LVL111:
	b	.L140
.L144:
	.align	2
.L143:
	.word	.LANCHOR4
	.word	.LANCHOR6-1624
	.word	.LANCHOR2+648
	.word	.LANCHOR1+672
	.cfi_endproc
.LFE10:
	.size	HU_Erase, .-HU_Erase
	.align	2
	.global	HU_Drawer
	.type	HU_Drawer, %function
HU_Drawer:
.LFB9:
	.loc 1 734 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 743 0
	ldr	r3, .L430
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bxeq	lr
	.loc 1 734 0
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
	.loc 1 748 0
	ldr	r8, .L430+4
	.loc 1 746 0
	ldr	r2, .L430+8
	.loc 1 748 0
	ldrb	r3, [r8]	@ zero_extendqisi2
	.loc 1 734 0
	sub	sp, sp, #324
	.cfi_def_cfa_offset 360
	.loc 1 748 0
	tst	r3, #1
	.loc 1 746 0
	ldr	r5, [r2]
.LVL112:
	.loc 1 748 0
	bne	.L421
.L148:
	.loc 1 790 0
	ldr	r4, .L430+12
	.loc 1 789 0
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L160
	.loc 1 790 0
	ldr	r3, .L430+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L422
.LVL113:
.L160:
	.loc 1 1267 0
	ldr	r5, .L430+20
	.loc 1 1263 0
	bl	HU_Erase
.LVL114:
	.loc 1 1267 0
	ldr	r3, [r5]
	cmp	r3, #1
	ble	.L423
	.loc 1 1271 0
	ldr	r4, .L430+24
	ldr	r3, [r4, #568]
	cmp	r3, #0
	beq	.L274
.L275:
	.loc 1 1276 0
	ldr	r0, .L430+28
	bl	HUlib_drawMText
.LVL115:
.L276:
	.loc 1 1279 0
	ldr	r0, .L430+32
	bl	HUlib_drawIText
.LVL116:
	.loc 1 1280 0
	add	sp, sp, #324
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL117:
.L422:
	.cfi_restore_state
	.loc 1 792 0
	ldr	r2, .L430+36
	ldr	r3, .L430+40
	.loc 1 791 0
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L160
	.loc 1 793 0
	ldrb	r3, [r8]	@ zero_extendqisi2
	.loc 1 792 0
	tst	r3, #1
	bne	.L160
	.loc 1 746 0
	mov	r3, #284
	.loc 1 796 0
	ldr	r2, .L430+44
	.loc 1 746 0
	ldr	r7, .L430+48
	.loc 1 796 0
	ldr	r6, [r2]
	.loc 1 746 0
	mla	r3, r3, r5, r7
	.loc 1 796 0
	and	r6, r6, #1
	eor	r6, r6, #1
	.loc 1 797 0
	cmp	r6, #0
	.loc 1 746 0
	str	r3, [sp, #20]
	.loc 1 796 0
	str	r6, [sp, #24]
.LVL118:
	.loc 1 797 0
	bne	.L424
	.loc 1 862 0
	ldr	r0, .L430+52
	mov	r1, r6
	bl	HUlib_drawTextLine
.LVL119:
	.loc 1 916 0
	ldr	r0, .L430+56
	mov	r1, r6
	bl	HUlib_drawTextLine
.LVL120:
	.loc 1 969 0
	ldr	r0, .L430+60
	mov	r1, r6
	bl	HUlib_drawTextLine
.LVL121:
	.loc 1 1033 0
	mov	r1, r6
	ldr	r0, .L430+64
	bl	HUlib_drawTextLine
.LVL122:
	ldr	r3, [r4]
.L251:
	.loc 1 1211 0
	cmp	r3, #1
	ble	.L160
	ldr	r6, .L430+276
	ldr	r9, .L430+68
.L236:
	.loc 1 1213 0
	ldr	r0, .L430+72
	bl	HUlib_clearTextLine
.LVL123:
	.loc 1 1214 0
	ldr	r0, .L430+76
	bl	HUlib_clearTextLine
.LVL124:
	.loc 1 1218 0
	ldrb	r1, [r6, #416]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r8, .L430+80
	beq	.L266
.LVL125:
.L265:
	.loc 1 1219 0
	ldr	r0, .L430+72
	bl	HUlib_addCharToTextLine
.LVL126:
	.loc 1 1218 0
	ldrb	r1, [r8, #1]!	@ zero_extendqisi2
.LVL127:
	cmp	r1, #0
	bne	.L265
.LVL128:
.L266:
	.loc 1 1220 0
	ldr	r0, .L430+72
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL129:
	.loc 1 1223 0
	ldr	r3, [r9]
	cmp	r3, #0
	bne	.L231
.LVL130:
	.loc 1 1227 0
	ldrb	r1, [r6, #496]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r8, .L430+84
	beq	.L269
.LVL131:
.L268:
	.loc 1 1228 0
	ldr	r0, .L430+76
	bl	HUlib_addCharToTextLine
.LVL132:
	.loc 1 1227 0
	ldrb	r1, [r8, #1]!	@ zero_extendqisi2
.LVL133:
	cmp	r1, #0
	bne	.L268
.LVL134:
.L269:
	.loc 1 1230 0
	ldr	r0, .L430+76
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL135:
.L231:
	.loc 1 1235 0
	ldr	r3, .L430+88
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L160
	.loc 1 1237 0
	ldr	r3, [r4]
	ldr	r2, [sp, #24]
	ldr	r8, .L430+12
	cmp	r3, #1
	movle	r2, #0
	andgt	r2, r2, #1
	cmp	r2, #0
	bne	.L425
.LVL136:
.L270:
	.loc 1 1257 0
	cmp	r3, #1
	ble	.L160
	.loc 1 1258 0
	ldr	r0, .L430+92
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL137:
	b	.L160
.LVL138:
.L421:
	.loc 1 751 0
	ldr	r0, .L430+96
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL139:
	.loc 1 755 0
	ldr	r3, .L430+100
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L148
	.loc 1 757 0
	mov	r3, #284
	mul	r3, r3, r5
	ldr	r7, .L430+48
	ldr	r6, .L430+276
	ldr	r3, [r7, r3]
	ldr	r1, .L430+104
	ldrsh	r2, [r3, #26]
	mov	r0, r6
	bl	sprintf
.LVL140:
	.loc 1 758 0
	ldr	r0, .L430+108
	bl	HUlib_clearTextLine
.LVL141:
	.loc 1 760 0
	ldrb	r1, [r6]	@ zero_extendqisi2
	cmp	r1, #0
	movne	r4, r6
	beq	.L154
.LVL142:
.L153:
	.loc 1 761 0
	ldr	r0, .L430+108
	bl	HUlib_addCharToTextLine
.LVL143:
	.loc 1 760 0
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
.LVL144:
	cmp	r1, #0
	bne	.L153
.LVL145:
.L154:
	.loc 1 762 0
	ldr	r0, .L430+108
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL146:
	.loc 1 766 0
	mov	r3, #284
	mul	r3, r3, r5
	ldr	r3, [r7, r3]
	ldr	r1, .L430+112
	ldrsh	r2, [r3, #30]
	ldr	r0, .L430+116
	bl	sprintf
.LVL147:
	.loc 1 767 0
	ldr	r0, .L430+120
	bl	HUlib_clearTextLine
.LVL148:
	.loc 1 769 0
	ldrb	r1, [r6, #32]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r4, .L430+116
	beq	.L152
.LVL149:
.L157:
	.loc 1 770 0
	ldr	r0, .L430+120
	bl	HUlib_addCharToTextLine
.LVL150:
	.loc 1 769 0
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
.LVL151:
	cmp	r1, #0
	bne	.L157
.LVL152:
.L152:
	.loc 1 771 0
	ldr	r0, .L430+120
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL153:
	.loc 1 776 0
	mov	r3, #284
	mul	r3, r3, r5
	ldr	r3, [r7, r3]
	ldr	r1, .L430+124
	ldrsh	r2, [r3, #34]
	ldr	r0, .L430+128
	bl	sprintf
.LVL154:
	.loc 1 777 0
	ldr	r0, .L430+132
	bl	HUlib_clearTextLine
.LVL155:
	.loc 1 779 0
	ldrb	r1, [r6, #64]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r4, .L430+128
	beq	.L156
.LVL156:
.L158:
	.loc 1 780 0
	ldr	r0, .L430+132
	bl	HUlib_addCharToTextLine
.LVL157:
	.loc 1 779 0
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
.LVL158:
	cmp	r1, #0
	bne	.L158
.LVL159:
.L156:
	.loc 1 781 0
	ldr	r0, .L430+132
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL160:
	b	.L148
.LVL161:
.L423:
	.loc 1 1268 0
	mov	r3, #0
	ldr	r4, .L430+24
	str	r3, [r4, #568]
.L274:
	.loc 1 1272 0
	ldr	r0, .L430+136
	bl	HUlib_drawSText
.LVL162:
	.loc 1 1275 0
	ldr	r3, [r5]
	cmp	r3, #1
	ble	.L276
	.loc 1 1275 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #568]
	cmp	r3, #0
	bne	.L275
	.loc 1 1279 0 is_stmt 1
	ldr	r0, .L430+32
	bl	HUlib_drawIText
.LVL163:
	.loc 1 1280 0
	add	sp, sp, #324
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL164:
.L424:
	.cfi_restore_state
	.loc 1 799 0
	bl	HU_MoveHud
.LVL165:
	.loc 1 803 0
	ldr	r0, .L430+52
	bl	HUlib_clearTextLine
.LVL166:
	.loc 1 805 0
	ldr	r3, [sp, #20]
	ldr	r1, .L430+140
	ldrb	r2, [r3, #120]	@ zero_extendqisi2
	.loc 1 804 0
	ldr	r6, .L430+276
	.loc 1 805 0
	add	r3, r2, r2, asl #1
	ldrb	r3, [r1, r3, asl #3]	@ zero_extendqisi2
	.loc 1 804 0
	ldr	r1, .L430+144
	.loc 1 805 0
	cmp	r3, #5
	.loc 1 804 0
	ldmia	r1, {r0, r1}
	add	r8, r6, #96
	str	r0, [r6, #96]
	strb	r1, [r6, #100]
	add	ip, r6, #100
	.loc 1 803 0
	ldr	fp, .L430+148
	.loc 1 805 0
	beq	.L426
.LBB20:
	.loc 1 812 0
	add	r1, r5, r5, asl #3
	rsb	r1, r5, r1, asl #3
	add	r3, r1, r3
	.loc 1 814 0
	mov	r1, r2
	.loc 1 812 0
	add	r2, r3, #40
	ldr	r2, [r7, r2, asl #2]
	.loc 1 813 0
	add	r3, r3, #44
	.loc 1 814 0
	ldr	r0, [sp, #20]
	.loc 1 813 0
	ldr	r9, [r7, r3, asl #2]
	.loc 1 812 0
	str	r2, [sp, #28]
.LVL167:
	.loc 1 814 0
	bl	P_GetAmmoLevel
.LVL168:
	.loc 1 815 0
	cmp	r0, #0
	add	r1, r0, #3
	movge	r1, r0
	.loc 1 818 0
	mov	r3, r9
	.loc 1 814 0
	mov	r10, r0
.LVL169:
	.loc 1 815 0
	mov	r9, r1, asr #2
.LVL170:
	.loc 1 818 0
	ldr	r2, [sp, #28]
	add	r0, sp, #80
.LVL171:
	ldr	r1, .L430+152
	bl	sprintf
.LVL172:
	.loc 1 821 0
	cmp	r9, #0
	add	r3, r9, #3
	movge	r3, r9
	mov	r3, r3, asr #2
	cmp	r3, #0
	ble	.L166
	.loc 1 822 0
	mov	r0, #123
	add	r1, r3, #3
	add	r1, r8, r1
	add	r2, r6, #99
.LVL173:
.L167:
	strb	r0, [r2, #1]!
.LVL174:
	.loc 1 821 0
	cmp	r2, r1
	bne	.L167
	.loc 1 824 0
	mov	r2, r9, asr #31
.LVL175:
	mov	r1, r2, lsr #30
	add	r2, r9, r1
	and	r2, r2, #3
	rsb	r2, r1, r2
	cmp	r2, #2
	add	r3, r3, #4
	beq	.L169
	cmp	r2, #3
	beq	.L170
	cmp	r2, #1
	beq	.L171
.LVL176:
.L168:
	.loc 1 839 0
	cmp	r3, #10
	bgt	.L173
.LVL177:
.L172:
	.loc 1 840 0
	mov	r2, #127
	add	r8, r8, r3
.L174:
	add	r3, r3, #1
.LVL178:
	.loc 1 839 0
	cmp	r3, #11
	.loc 1 840 0
	strb	r2, [r8], #1
	.loc 1 839 0
	bne	.L174
.L173:
	.loc 1 841 0
	mov	r2, #0
	add	r3, r6, r3
.LVL179:
	.loc 1 842 0
	add	r1, sp, #80
	ldr	r0, .L430+156
	.loc 1 841 0
	strb	r2, [r3, #96]
	.loc 1 842 0
	bl	strcat
.LVL180:
	.loc 1 845 0
	cmp	r10, #0
	.loc 1 846 0
	moveq	r3, #4
	streq	r3, [fp, #-1412]
	.loc 1 845 0
	beq	.L176
	.loc 1 847 0
	cmp	r10, #99
	.loc 1 848 0
	movgt	r3, #7
	strgt	r3, [fp, #-1412]
	.loc 1 847 0
	bgt	.L176
	.loc 1 849 0
	ldr	r3, .L430+160
	ldr	r3, [r3]
	cmp	r10, r3
	.loc 1 850 0
	movlt	r3, #6
	strlt	r3, [fp, #-1412]
	.loc 1 849 0
	blt	.L176
	.loc 1 851 0
	ldr	r3, .L430+272
	ldr	r3, [r3]
	cmp	r10, r3
	.loc 1 852 0
	movlt	r3, #5
	.loc 1 854 0
	movge	r3, #3
	str	r3, [fp, #-1412]
.LVL181:
.L176:
.LBE20:
	.loc 1 858 0
	ldrb	r1, [r6, #96]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r8, .L430+156
	beq	.L165
.LVL182:
.L180:
	.loc 1 859 0
	ldr	r0, .L430+52
	bl	HUlib_addCharToTextLine
.LVL183:
	.loc 1 858 0
	ldrb	r1, [r8, #1]!	@ zero_extendqisi2
.LVL184:
	cmp	r1, #0
	bne	.L180
.LVL185:
.L165:
	.loc 1 862 0
	ldr	r0, .L430+52
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL186:
.LBB21:
	.loc 1 867 0
	mov	r3, #284
	mla	r3, r3, r5, r7
	ldr	r8, [r3, #40]
.LVL187:
	.loc 1 868 0
	cmp	r8, #100
	ble	.L280
.LVL188:
	.loc 1 871 0
	ldr	r0, .L430+56
	.loc 1 874 0
	add	r10, sp, #160
	.loc 1 871 0
	bl	HUlib_clearTextLine
.LVL189:
	.loc 1 874 0
	ldr	r1, .L430+164
	mov	r0, r10
	mov	r2, r8
	bl	sprintf
.LVL190:
	mov	ip, #1
	.loc 1 877 0
	mov	r1, #9
.LVL191:
.L281:
	mov	r3, #4
	.loc 1 878 0
	mov	r0, #123
	ldr	r2, .L430+168
.LVL192:
.L182:
	add	r3, r3, #1
.LVL193:
	.loc 1 877 0
	cmp	r3, r1
	.loc 1 878 0
	strb	r0, [r2, #1]!
	.loc 1 877 0
	ble	.L182
	.loc 1 880 0
	cmp	ip, #2
	beq	.L184
	cmp	ip, #3
	beq	.L185
	cmp	ip, #1
	beq	.L186
.LVL194:
.L188:
	.loc 1 896 0
	mov	r1, #127
	ldr	r2, .L430+172
	add	r2, r2, r3
.L190:
	add	r3, r3, #1
.LVL195:
	.loc 1 895 0
	cmp	r3, #10
	.loc 1 896 0
	strb	r1, [r2], #1
	.loc 1 895 0
	ble	.L190
.L189:
	.loc 1 897 0
	mov	r2, #0
	add	r3, r6, r3
.LVL196:
	.loc 1 898 0
	mov	r1, r10
	ldr	r0, .L430+172
	.loc 1 897 0
	strb	r2, [r3, #176]
	.loc 1 898 0
	bl	strcat
.LVL197:
	.loc 1 901 0
	ldr	r3, .L430+176
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.L191
	.loc 1 902 0
	mov	r2, #6
	ldr	r3, .L430+180
	str	r2, [r3, #2700]
.L195:
.LVL198:
	.loc 1 912 0
	ldrb	r1, [r6, #176]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r8, .L430+172
.LVL199:
	beq	.L193
.LVL200:
.L197:
	.loc 1 913 0
	ldr	r0, .L430+56
	bl	HUlib_addCharToTextLine
.LVL201:
	.loc 1 912 0
	ldrb	r1, [r8, #1]!	@ zero_extendqisi2
.LVL202:
	cmp	r1, #0
	bne	.L197
.LVL203:
.L193:
.LBE21:
	.loc 1 916 0
	ldr	r0, .L430+56
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL204:
.LBB22:
	.loc 1 921 0
	mov	r3, #284
	mla	r3, r3, r5, r7
	ldr	r10, [r3, #44]
.LVL205:
	.loc 1 922 0
	cmp	r10, #100
	ble	.L283
.LVL206:
	.loc 1 925 0
	ldr	r0, .L430+60
	.loc 1 927 0
	add	r9, sp, #240
	.loc 1 925 0
	bl	HUlib_clearTextLine
.LVL207:
	.loc 1 927 0
	ldr	r1, .L430+164
	mov	r0, r9
	mov	r2, r10
	bl	sprintf
.LVL208:
	mov	ip, #1
	.loc 1 930 0
	mov	r1, #9
.LVL209:
.L284:
	mov	r3, #4
	.loc 1 931 0
	mov	r0, #123
	ldr	r2, .L430+184
.LVL210:
.L199:
	add	r3, r3, #1
.LVL211:
	.loc 1 930 0
	cmp	r3, r1
	.loc 1 931 0
	strb	r0, [r2, #1]!
	.loc 1 930 0
	ble	.L199
	.loc 1 933 0
	cmp	ip, #2
	beq	.L201
	cmp	ip, #3
	beq	.L202
	cmp	ip, #1
	beq	.L203
.LVL212:
.L205:
	.loc 1 949 0
	mov	r1, #127
	ldr	r2, .L430+188
	add	r2, r2, r3
.L207:
	add	r3, r3, #1
.LVL213:
	.loc 1 948 0
	cmp	r3, #10
	.loc 1 949 0
	strb	r1, [r2], #1
	.loc 1 948 0
	ble	.L207
.L206:
	.loc 1 950 0
	mov	r2, #0
	add	r3, r6, r3
.LVL214:
	.loc 1 951 0
	mov	r1, r9
	ldr	r0, .L430+188
	.loc 1 950 0
	strb	r2, [r3, #256]
	.loc 1 951 0
	bl	strcat
.LVL215:
	.loc 1 954 0
	ldr	r3, .L430+192
	ldr	r3, [r3]
	cmp	r10, r3
	bge	.L208
	.loc 1 955 0
	mov	r3, #6
	str	r3, [fp, #-3448]
.L212:
.LVL216:
	.loc 1 965 0
	ldrb	r1, [r6, #256]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r8, .L430+188
	beq	.L210
.LVL217:
.L214:
	.loc 1 966 0
	ldr	r0, .L430+60
	bl	HUlib_addCharToTextLine
.LVL218:
	.loc 1 965 0
	ldrb	r1, [r8, #1]!	@ zero_extendqisi2
.LVL219:
	cmp	r1, #0
	bne	.L214
.LVL220:
.L210:
.LBE22:
	.loc 1 969 0
	ldr	r0, .L430+60
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL221:
.LBB23:
	.loc 1 977 0
	ldr	r0, .L430+64
	bl	HUlib_clearTextLine
.LVL222:
	mov	r3, #284
	.loc 1 978 0
	mov	r2, #0
	mul	r3, r3, r5
	add	r9, r3, #124
.LBB24:
	.loc 1 1011 0
	add	r3, r7, r3
	str	r3, [sp, #36]
.LBE24:
	.loc 1 978 0
	mov	r10, r2
.LVL223:
	add	r9, r7, r9
	strb	r2, [r6, #340]
.LVL224:
	.loc 1 981 0
	mov	r8, r2
	.loc 1 978 0
	mov	fp, #4
	ldr	r3, .L430+196
	b	.L228
.LVL225:
.L428:
.LBB25:
	.loc 1 985 0
	cmp	r2, #3
	beq	.L216
.L215:
	.loc 1 1003 0
	ldr	r2, [r9]
	cmp	r2, #0
	bne	.L427
.L218:
.LBE25:
	.loc 1 981 0 discriminator 2
	add	r8, r8, #1
.LVL226:
	cmp	r8, #9
	add	r9, r9, #4
	add	r10, r10, #24
	beq	.L229
.LVL227:
.L228:
.LBB26:
	.loc 1 985 0
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #1
	beq	.L216
	bcs	.L428
	.loc 1 988 0
	cmp	r8, #7
	cmpne	r8, #4
	bgt	.L218
	b	.L215
.L216:
	.loc 1 993 0
	cmp	r8, #8
	bne	.L215
.L229:
.LVL228:
.LBE26:
	.loc 1 1029 0
	ldrb	r1, [r6, #336]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r8, .L430+200
	beq	.L220
.LVL229:
.L230:
	.loc 1 1030 0
	ldr	r0, .L430+64
	bl	HUlib_addCharToTextLine
.LVL230:
	.loc 1 1029 0
	ldrb	r1, [r8, #1]!	@ zero_extendqisi2
.LVL231:
	cmp	r1, #0
	bne	.L230
.LVL232:
.L220:
.LBE23:
	.loc 1 1033 0
	ldr	r0, .L430+64
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL233:
	.loc 1 1035 0
	ldr	r3, [r4]
	cmp	r3, #1
	ble	.L231
.LBB32:
	.loc 1 1039 0
	mov	r3, #0
	.loc 1 1041 0
	ldr	r9, .L430+68
	.loc 1 1039 0
	strb	r3, [r6, #420]
	.loc 1 1041 0
	ldr	r1, [r9]
	.loc 1 1039 0
	ldr	ip, .L430+276
	.loc 1 1041 0
	cmp	r1, r3
	bne	.L232
	.loc 1 1041 0 is_stmt 0 discriminator 1
	ldr	r3, .L430+204
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L233
.LVL234:
	mov	r2, #284
	.loc 1 1043 0 is_stmt 1
	mov	r0, r1
	.loc 1 1044 0
	mov	r3, #33
	.loc 1 1053 0
	mov	lr, #32
	mla	r2, r2, r5, r7
	.loc 1 1044 0
	strb	r1, [ip, #496]
.LVL235:
	add	r2, r2, #72
.LVL236:
.L235:
	.loc 1 1049 0
	ldr	ip, [r2, #4]!
	add	r1, r3, #1
	cmp	ip, #0
	beq	.L234
	.loc 1 1053 0
	add	ip, r0, #2
.LVL237:
	.loc 1 1052 0
	add	r8, r6, r0
	.loc 1 1054 0
	add	ip, r6, ip
.LVL238:
	.loc 1 1052 0
	strb	r3, [r8, #496]
	.loc 1 1053 0
	strb	lr, [r8, #497]
	.loc 1 1054 0
	add	r0, r0, #3
.LVL239:
	strb	lr, [ip, #496]
.LVL240:
.L234:
	uxtb	r3, r1
	.loc 1 1046 0 discriminator 2
	cmp	r3, #39
	bne	.L235
	.loc 1 1056 0
	mov	r2, #0
	add	r3, r6, r0
	strb	r2, [r3, #496]
	b	.L236
.LVL241:
.L427:
.LBE32:
.LBB39:
.LBB27:
	.loc 1 1006 0
	uxtb	r2, r8
	mov	r1, r2
	ldr	r0, [sp, #20]
	str	r3, [sp, #32]
	str	r2, [sp, #28]
	bl	P_GetAmmoLevel
.LVL242:
	.loc 1 1009 0
	mov	ip, #27
	.loc 1 1010 0
	ldr	r3, .L430+140
	.loc 1 1009 0
	add	r1, r6, fp
	.loc 1 1010 0
	ldrb	lr, [r3, r10]	@ zero_extendqisi2
	.loc 1 1009 0
	strb	ip, [r1, #336]
	.loc 1 1010 0
	cmp	lr, #5
	.loc 1 1009 0
	add	r1, fp, #1
.LVL243:
	.loc 1 1010 0
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #32]
	beq	.L429
	.loc 1 1012 0
	cmp	r0, #0
	bne	.L224
	.loc 1 1013 0
	mov	r0, #52
.LVL244:
	ldr	ip, .L430+276
	add	fp, fp, #2
.LVL245:
	add	r1, ip, r1
	strb	r0, [r1, #336]
.L223:
.LVL246:
	.loc 1 1023 0
	mov	ip, #32
	.loc 1 1024 0
	mov	r0, #0
	.loc 1 1022 0
	add	r1, r6, fp
	add	r2, r2, #49
	.loc 1 1023 0
	add	fp, fp, #2
.LVL247:
	.loc 1 1022 0
	strb	r2, [r1, #336]
	.loc 1 1024 0
	add	r2, r6, fp
	.loc 1 1023 0
	strb	ip, [r1, #337]
	.loc 1 1024 0
	strb	r0, [r2, #336]
	b	.L218
.LVL248:
.L283:
.LBE27:
.LBE39:
.LBB40:
	.loc 1 922 0 discriminator 1
	cmp	r10, #0
	add	r8, r10, #3
	movge	r8, r10
	.loc 1 925 0 discriminator 1
	ldr	r0, .L430+60
	.loc 1 927 0 discriminator 1
	add	r9, sp, #240
	.loc 1 925 0 discriminator 1
	bl	HUlib_clearTextLine
.LVL249:
	.loc 1 922 0 discriminator 1
	mov	r3, r8, asr #2
	.loc 1 927 0 discriminator 1
	ldr	r1, .L430+164
	mov	r0, r9
	mov	r2, r10
	.loc 1 922 0 discriminator 1
	str	r3, [sp, #28]
.LVL250:
	.loc 1 927 0 discriminator 1
	bl	sprintf
.LVL251:
	.loc 1 930 0 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r3, #0
	add	r1, r3, #3
	movge	r1, r3
	mov	r1, r1, asr #2
	add	r1, r1, #3
	cmp	r1, #3
	ble	.L198
	mov	ip, r8, asr #31
	mov	ip, ip, lsr #30
	add	r3, r3, ip
	and	r3, r3, #3
	rsb	ip, ip, r3
	b	.L284
.LVL252:
.L280:
.LBE40:
.LBB41:
	.loc 1 868 0 discriminator 1
	cmp	r8, #0
	add	r9, r8, #3
	movge	r9, r8
	.loc 1 871 0 discriminator 1
	ldr	r0, .L430+56
	.loc 1 874 0 discriminator 1
	add	r10, sp, #160
	.loc 1 871 0 discriminator 1
	bl	HUlib_clearTextLine
.LVL253:
	.loc 1 868 0 discriminator 1
	mov	r3, r9, asr #2
	.loc 1 874 0 discriminator 1
	ldr	r1, .L430+164
	mov	r0, r10
	mov	r2, r8
	.loc 1 868 0 discriminator 1
	str	r3, [sp, #28]
.LVL254:
	.loc 1 874 0 discriminator 1
	bl	sprintf
.LVL255:
	.loc 1 877 0 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r3, #0
	add	r1, r3, #3
	movge	r1, r3
	mov	r1, r1, asr #2
	add	r1, r1, #3
	cmp	r1, #3
	ble	.L181
	mov	ip, r9, asr #31
	mov	ip, ip, lsr #30
	add	r3, r3, ip
	and	r3, r3, #3
	rsb	ip, ip, r3
	b	.L281
.LVL256:
.L191:
	.loc 1 903 0
	ldr	r3, .L430+208
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.L194
	.loc 1 904 0
	mov	r2, #5
	ldr	r3, .L430+180
	str	r2, [r3, #2700]
	b	.L195
.LVL257:
.L208:
.LBE41:
.LBB42:
	.loc 1 956 0
	ldr	r3, .L430+212
	ldr	r3, [r3]
	cmp	r10, r3
	.loc 1 957 0
	movlt	r3, #5
	strlt	r3, [fp, #-3448]
	.loc 1 956 0
	blt	.L212
	.loc 1 958 0
	ldr	r3, .L430+216
	ldr	r3, [r3]
	cmp	r10, r3
	.loc 1 959 0
	movle	r3, #3
	.loc 1 961 0
	movgt	r3, #7
	str	r3, [fp, #-3448]
	b	.L212
.LVL258:
.L232:
.LBE42:
.LBB43:
	.loc 1 1041 0
	mvn	r8, #0
	ldr	r9, .L430+220
	ldr	r10, .L430+224
	ldr	lr, .L430+228
	str	r8, [sp, #28]
	str	r8, [sp, #40]
	str	r8, [sp, #44]
	str	r9, [sp, #36]
	str	r9, [sp, #32]
	str	r9, [sp, #20]
	sub	fp, r10, #104
.L242:
.LVL259:
.LBB33:
	.loc 1 1075 0
	ldr	r2, [lr, r3, asl #2]
	cmp	r2, #0
	beq	.L237
	mov	r2, #0
	mov	r1, r10
	mov	ip, r2
.L241:
.LVL260:
	.loc 1 1083 0
	ldr	r0, [lr, r2, asl #2]
	cmp	r0, #0
	beq	.L238
	.loc 1 1084 0
	cmp	r2, r3
	ldreq	r0, [fp, #104]
	ldrne	r0, [r1]
	rsbeq	r0, r0, #0
	add	ip, ip, r0
.LVL261:
.L238:
	.loc 1 1081 0 discriminator 2
	add	r2, r2, #1
.LVL262:
	cmp	r2, #4
	add	r1, r1, #4
	bne	.L241
	.loc 1 1088 0
	ldr	r2, [sp, #20]
.LVL263:
	cmp	ip, r2
	bgt	.L288
	.loc 1 1093 0
	ldr	r2, [sp, #32]
	cmp	ip, r2
	bgt	.L289
	.loc 1 1098 0
	ldr	r2, [sp, #36]
	cmp	ip, r2
	bgt	.L290
	.loc 1 1103 0
	cmp	ip, r9
	movgt	r9, ip
.LVL264:
	movgt	r8, r3
.LVL265:
.L237:
	.loc 1 1072 0 discriminator 2
	add	r3, r3, #1
.LVL266:
	cmp	r3, #4
	add	r10, r10, #284
	add	fp, fp, #288
	bne	.L242
	.loc 1 1110 0
	ldr	r10, [sp, #44]
	cmn	r10, #1
.LBE33:
	.loc 1 1060 0
	moveq	r10, r3
.LBB34:
	.loc 1 1110 0
	beq	.L243
	.loc 1 1112 0
	ldr	r2, [sp, #20]
	ldr	r1, .L430+232
	add	r0, sp, #48
	bl	sprintf
.LVL267:
	.loc 1 1114 0
	mov	r1, #27
	.loc 1 1115 0
	ldr	r2, .L430+204
	and	r3, r10, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [r3, #8]
	.loc 1 1117 0
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	.loc 1 1115 0
	add	r2, r2, #48
	.loc 1 1117 0
	cmp	r3, #0
	.loc 1 1115 0
	strb	r2, [r6, #421]
	.loc 1 1114 0
	strb	r1, [r6, #420]
.LVL268:
	.loc 1 1117 0
	beq	.L293
	mov	r10, #6
	ldr	r1, .L430+236
	add	r2, sp, #48
.LVL269:
.L244:
	.loc 1 1118 0
	strb	r3, [r1, #1]!
	.loc 1 1117 0
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	.loc 1 1118 0
	add	r10, r10, #1
.LVL270:
	.loc 1 1117 0
	cmp	r3, #0
	bne	.L244
.LVL271:
.L243:
	.loc 1 1121 0
	ldr	fp, [sp, #40]
	cmn	fp, #1
	beq	.L245
	.loc 1 1123 0
	ldr	r2, [sp, #32]
	ldr	r1, .L430+232
	add	r0, sp, #48
	bl	sprintf
.LVL272:
	.loc 1 1125 0
	mov	r1, #27
	.loc 1 1126 0
	ldr	r2, .L430+204
	and	r3, fp, #3
	add	r3, r2, r3, asl #2
	ldr	r0, [r3, #8]
	.loc 1 1128 0
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	.loc 1 1126 0
	add	r0, r0, #48
	.loc 1 1125 0
	add	r2, r6, r10
	.loc 1 1128 0
	cmp	r3, #0
	.loc 1 1126 0
	strb	r0, [r2, #417]
	.loc 1 1125 0
	strb	r1, [r2, #416]
	.loc 1 1126 0
	add	r0, r10, #2
.LVL273:
	.loc 1 1128 0
	beq	.L294
	ldr	r1, .L430+240
	add	r2, sp, #48
.LVL274:
	add	r1, r10, r1
	mov	r10, r0
.LVL275:
.L246:
	.loc 1 1129 0
	strb	r3, [r1, #1]!
	.loc 1 1128 0
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	.loc 1 1129 0
	add	r10, r10, #1
.LVL276:
	.loc 1 1128 0
	cmp	r3, #0
	bne	.L246
.LVL277:
.L245:
	.loc 1 1132 0
	ldr	fp, [sp, #28]
	cmn	fp, #1
	beq	.L247
	.loc 1 1134 0
	ldr	r2, [sp, #36]
	ldr	r1, .L430+232
	add	r0, sp, #48
	bl	sprintf
.LVL278:
	.loc 1 1136 0
	mov	r1, #27
	.loc 1 1137 0
	ldr	r2, .L430+204
	and	r3, fp, #3
	add	r3, r2, r3, asl #2
	ldr	r0, [r3, #8]
	.loc 1 1139 0
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	.loc 1 1137 0
	add	r0, r0, #48
	.loc 1 1136 0
	add	r2, r6, r10
	.loc 1 1139 0
	cmp	r3, #0
	.loc 1 1137 0
	strb	r0, [r2, #417]
	.loc 1 1136 0
	strb	r1, [r2, #416]
	.loc 1 1137 0
	add	r0, r10, #2
.LVL279:
	.loc 1 1139 0
	beq	.L295
	ldr	r1, .L430+240
	add	r2, sp, #48
.LVL280:
	add	r1, r10, r1
	mov	r10, r0
.LVL281:
.L248:
	.loc 1 1140 0
	strb	r3, [r1, #1]!
	.loc 1 1139 0
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	.loc 1 1140 0
	add	r10, r10, #1
.LVL282:
	.loc 1 1139 0
	cmp	r3, #0
	bne	.L248
.LVL283:
.L247:
	.loc 1 1143 0
	cmn	r8, #1
	beq	.L249
	.loc 1 1145 0
	mov	r2, r9
	ldr	r1, .L430+232
	add	r0, sp, #48
	bl	sprintf
.LVL284:
	.loc 1 1147 0
	mov	r0, #27
	.loc 1 1148 0
	ldr	r3, .L430+204
	and	r8, r8, #3
	add	r8, r3, r8, asl #2
	ldr	r1, [r8, #8]
	.loc 1 1150 0
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	.loc 1 1147 0
	add	r2, r6, r10
	.loc 1 1148 0
	add	r1, r1, #48
	.loc 1 1150 0
	cmp	r3, #0
	.loc 1 1147 0
	strb	r0, [r2, #416]
	.loc 1 1148 0
	strb	r1, [r2, #417]
	add	r0, r10, #2
.LVL285:
	.loc 1 1150 0
	beq	.L296
	ldr	r1, .L430+240
	add	r2, sp, #48
.LVL286:
	add	r1, r10, r1
	mov	r10, r0
.LVL287:
.L250:
	.loc 1 1151 0
	strb	r3, [r1, #1]!
	.loc 1 1150 0
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	.loc 1 1151 0
	add	r10, r10, #1
.LVL288:
	.loc 1 1150 0
	cmp	r3, #0
	bne	.L250
.LVL289:
.L249:
	.loc 1 1153 0
	mov	r2, #0
	add	r3, r6, r10
	strb	r2, [r3, #416]
	ldr	r3, [r4]
.LBE34:
	b	.L251
.LVL290:
.L288:
.LBB35:
	ldr	r2, [sp, #40]
	ldr	r8, [sp, #28]
	str	r2, [sp, #28]
.LVL291:
	ldr	r2, [sp, #32]
	ldr	r9, [sp, #36]
.LVL292:
	str	r2, [sp, #36]
.LVL293:
	ldr	r2, [sp, #44]
	str	r3, [sp, #44]
.LVL294:
	str	r2, [sp, #40]
.LVL295:
	ldr	r2, [sp, #20]
	str	ip, [sp, #20]
.LVL296:
	str	r2, [sp, #32]
.LVL297:
	b	.L237
.LVL298:
.L224:
.LBE35:
.LBE43:
.LBB44:
.LBB28:
	.loc 1 1014 0
	cmp	r0, #99
	ble	.L225
	.loc 1 1015 0
	mov	r0, #55
.LVL299:
	ldr	ip, .L430+276
	add	fp, fp, #2
.LVL300:
	add	r1, ip, r1
	strb	r0, [r1, #336]
	b	.L223
.LVL301:
.L181:
.LBE28:
.LBE44:
.LBB45:
	.loc 1 880 0
	ands	r3, r3, #-2147483645
	submi	r3, r3, #1
	mvnmi	r3, r3, asl #30
	mvnmi	r3, r3, lsr #30
	addmi	r3, r3, #1
	cmp	r3, #2
	beq	.L304
	cmp	r3, #3
	beq	.L302
	cmp	r3, #1
	.loc 1 877 0
	movne	r3, #4
	.loc 1 880 0
	bne	.L188
	.loc 1 877 0
	mov	r3, #4
.LVL302:
.L186:
	.loc 1 885 0
	mov	r1, #126
	add	r2, r6, r3
	strb	r1, [r2, #176]
	add	r3, r3, #1
.LVL303:
.L187:
	.loc 1 895 0
	cmp	r3, #10
	ble	.L188
	b	.L189
.LVL304:
.L302:
	.loc 1 877 0
	mov	r3, #4
.LVL305:
.L185:
	.loc 1 891 0
	mov	r1, #124
	add	r2, r6, r3
	strb	r1, [r2, #176]
	add	r3, r3, #1
.LVL306:
	.loc 1 892 0
	b	.L187
.LVL307:
.L306:
.LBE45:
.LBB46:
	.loc 1 930 0
	mov	r3, #4
.LVL308:
.L202:
	.loc 1 944 0
	mov	r1, #124
	add	r2, r6, r3
	strb	r1, [r2, #256]
	add	r3, r3, #1
.LVL309:
.L204:
	.loc 1 948 0
	cmp	r3, #10
	ble	.L205
	b	.L206
.LVL310:
.L308:
	.loc 1 930 0
	mov	r3, #4
.LVL311:
.L201:
	.loc 1 941 0
	mov	r1, #125
	add	r2, r6, r3
	strb	r1, [r2, #256]
	add	r3, r3, #1
.LVL312:
	.loc 1 942 0
	b	.L204
.LVL313:
.L198:
	.loc 1 933 0
	ands	r3, r3, #-2147483645
	submi	r3, r3, #1
	mvnmi	r3, r3, asl #30
	mvnmi	r3, r3, lsr #30
	addmi	r3, r3, #1
	cmp	r3, #2
	beq	.L308
	cmp	r3, #3
	beq	.L306
	cmp	r3, #1
	.loc 1 930 0
	movne	r3, #4
	.loc 1 933 0
	bne	.L205
	.loc 1 930 0
	mov	r3, #4
.LVL314:
.L203:
	.loc 1 938 0
	mov	r1, #126
	add	r2, r6, r3
	strb	r1, [r2, #256]
	add	r3, r3, #1
.LVL315:
	.loc 1 939 0
	b	.L204
.LVL316:
.L194:
.LBE46:
.LBB47:
	.loc 1 905 0
	ldr	r3, .L430+244
	ldr	r3, [r3]
	cmp	r8, r3
	.loc 1 906 0
	movle	r2, #3
	.loc 1 908 0
	movgt	r2, #7
	ldr	r3, .L430+180
	str	r2, [r3, #2700]
	b	.L195
.LVL317:
.L304:
	.loc 1 877 0
	mov	r3, #4
.LVL318:
.L184:
	.loc 1 888 0
	mov	r1, #125
	add	r2, r6, r3
	strb	r1, [r2, #176]
	add	r3, r3, #1
.LVL319:
	.loc 1 889 0
	b	.L187
.LVL320:
.L429:
.LBE47:
.LBB48:
.LBB29:
	.loc 1 1011 0
	ldr	r0, [sp, #36]
.LVL321:
	add	r1, r6, r1
.LVL322:
	ldr	r0, [r0, #56]
	add	fp, fp, #2
.LVL323:
	cmp	r0, #0
	movne	r0, #51
	moveq	r0, #50
	strb	r0, [r1, #336]
	b	.L223
.LVL324:
.L425:
.LBE29:
.LBE48:
	.loc 1 1240 0
	ldr	r0, .L430+92
	bl	HUlib_clearTextLine
.LVL325:
	.loc 1 1243 0
	mov	r3, #284
	mla	r5, r3, r5, r7
.LVL326:
	ldr	r0, .L430+248
	ldr	r1, .L430+252
	ldr	r0, [r0]
	ldr	r1, [r1]
	ldr	lr, [r5, #212]
	ldr	ip, [r5, #216]
	ldr	r3, .L430+256
	ldr	r2, [r5, #208]
	ldr	r3, [r3]
	stmib	sp, {r0, ip}
	str	r1, [sp, #12]
	str	lr, [sp]
	ldr	r1, .L430+260
	ldr	r0, .L430+264
	bl	sprintf
.LVL327:
	.loc 1 1253 0
	ldrb	r1, [r6, #576]	@ zero_extendqisi2
	cmp	r1, #0
	ldreq	r3, [r8]
	beq	.L270
	ldr	r5, .L430+264
.LVL328:
.L272:
	.loc 1 1254 0
	ldr	r0, .L430+92
	bl	HUlib_addCharToTextLine
.LVL329:
	.loc 1 1253 0
	ldrb	r1, [r5, #1]!	@ zero_extendqisi2
.LVL330:
	cmp	r1, #0
	bne	.L272
	ldr	r3, [r4]
	b	.L270
.LVL331:
.L233:
	mov	r1, #284
.LBB49:
	.loc 1 1205 0
	mov	lr, r3
	.loc 1 1041 0
	mov	r2, #4
	.loc 1 1165 0
	mov	ip, #27
	.loc 1 1202 0
	mov	r8, #32
	mla	r1, r1, r5, r7
	add	r1, r1, #72
.L261:
.LVL332:
	.loc 1 1161 0
	ldr	r0, [r1, #4]!
	.loc 1 1165 0
	add	r9, r6, r2
	.loc 1 1161 0
	cmp	r0, #0
	.loc 1 1166 0
	sub	r0, r3, #1
	.loc 1 1161 0
	beq	.L252
	.loc 1 1165 0
	strb	ip, [r9, #416]
	.loc 1 1201 0
	add	r10, r2, #4
	.loc 1 1165 0
	add	r9, r2, #1
.LVL333:
	.loc 1 1199 0
	add	r9, r6, r9
.LVL334:
	.loc 1 1202 0
	add	r10, r6, r10
	.loc 1 1166 0
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L253
.L255:
	.word	.L254
	.word	.L256
	.word	.L257
	.word	.L258
	.word	.L259
.L258:
.LVL335:
	.loc 1 1193 0
	mov	fp, #53
	str	fp, [sp, #20]
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	.loc 1 1194 0
	add	r0, r6, r2
	.loc 1 1193 0
	strb	fp, [r9, #416]
.LVL336:
	.loc 1 1194 0
	mov	r9, #89
.L414:
	.loc 1 1200 0
	strb	r9, [r0, #418]
	.loc 1 1201 0
	mov	r9, #83
	.loc 1 1200 0
	add	r2, r2, #5
.LVL337:
	.loc 1 1201 0
	strb	r9, [r0, #419]
	.loc 1 1202 0
	strb	r8, [r10, #416]
.LVL338:
.L260:
	.loc 1 1205 0
	add	r0, r6, r2
	strb	lr, [r0, #416]
.L252:
	.loc 1 1158 0 discriminator 2
	add	r3, r3, #1
.LVL339:
	cmp	r3, #6
	bne	.L261
	ldr	r3, [r4]
.LVL340:
	b	.L251
.LVL341:
.L257:
	.loc 1 1187 0
	mov	fp, #55
	str	fp, [sp, #20]
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	.loc 1 1188 0
	add	r0, r6, r2
	.loc 1 1187 0
	strb	fp, [r9, #416]
.LVL342:
	.loc 1 1188 0
	mov	r9, #66
	b	.L414
.LVL343:
.L256:
	.loc 1 1181 0
	mov	fp, #54
	str	fp, [sp, #20]
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	.loc 1 1182 0
	add	r0, r6, r2
	.loc 1 1181 0
	strb	fp, [r9, #416]
.LVL344:
	.loc 1 1182 0
	mov	r9, #82
.L415:
	strb	r9, [r0, #418]
	.loc 1 1183 0
	mov	r9, #67
	.loc 1 1182 0
	add	r2, r2, #5
.LVL345:
	.loc 1 1183 0
	strb	r9, [r0, #419]
	.loc 1 1184 0
	strb	r8, [r10, #416]
	.loc 1 1185 0
	b	.L260
.LVL346:
.L254:
	.loc 1 1175 0
	mov	fp, #53
	str	fp, [sp, #20]
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	.loc 1 1176 0
	add	r0, r6, r2
	.loc 1 1175 0
	strb	fp, [r9, #416]
.LVL347:
	.loc 1 1176 0
	mov	r9, #89
	b	.L415
.LVL348:
.L253:
	.loc 1 1169 0
	mov	fp, #55
	str	fp, [sp, #20]
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	.loc 1 1170 0
	add	r0, r6, r2
	.loc 1 1169 0
	strb	fp, [r9, #416]
.LVL349:
	.loc 1 1170 0
	mov	r9, #66
	b	.L415
.LVL350:
.L426:
.LBE49:
	.loc 1 808 0
	mov	r2, #2
	.loc 1 807 0
	ldr	r3, .L430+268
	.loc 1 808 0
	str	r2, [fp, #-1412]
	.loc 1 807 0
	ldmia	r3, {r0, r1, r2}
	stmia	ip, {r0, r1, r2}
	b	.L176
.LVL351:
.L225:
.LBB50:
.LBB30:
	.loc 1 1016 0
	ldr	ip, .L430+160
	ldr	ip, [ip]
	cmp	r0, ip
	bge	.L226
	.loc 1 1017 0
	mov	r0, #54
.LVL352:
	ldr	ip, .L430+276
	add	fp, fp, #2
.LVL353:
	add	r1, ip, r1
	strb	r0, [r1, #336]
	b	.L223
.L431:
	.align	2
.L430:
	.word	menuactive
	.word	automapmode
	.word	displayplayer
	.word	hud_active
	.word	hud_displayed
	.word	hud_msg_lines
	.word	.LANCHOR4
	.word	.LANCHOR4+572
	.word	.LANCHOR6-1624
	.word	viewheight
	.word	SCREENHEIGHT
	.word	gametic
	.word	players
	.word	.LANCHOR3-1428
	.word	.LANCHOR2+2684
	.word	.LANCHOR3-3464
	.word	.LANCHOR3+608
	.word	deathmatch
	.word	.LANCHOR3+2644
	.word	.LANCHOR4-3504
	.word	.LANCHOR1+416
	.word	.LANCHOR1+496
	.word	hud_nosecrets
	.word	.LANCHOR4-1468
	.word	.LANCHOR2+648
	.word	map_point_coordinates
	.word	.LC20
	.word	.LANCHOR5+452
	.word	.LC21
	.word	.LANCHOR1+32
	.word	.LANCHOR5+2488
	.word	.LC22
	.word	.LANCHOR1+64
	.word	.LANCHOR6-3660
	.word	.LANCHOR1+672
	.word	weaponinfo
	.word	.LC19
	.word	.LANCHOR3
	.word	.LC30
	.word	.LANCHOR1+96
	.word	ammo_red
	.word	.LC31
	.word	.LANCHOR1+179
	.word	.LANCHOR1+176
	.word	health_red
	.word	.LANCHOR2
	.word	.LANCHOR1+259
	.word	.LANCHOR1+256
	.word	armor_red
	.word	gamemode
	.word	.LANCHOR1+336
	.word	.LANCHOR8
	.word	health_yellow
	.word	armor_yellow
	.word	armor_green
	.word	-999
	.word	players+104
	.word	playeringame
	.word	.LC32
	.word	.LANCHOR1+421
	.word	.LANCHOR1+417
	.word	health_green
	.word	totalitems
	.word	totalsecret
	.word	totallive
	.word	.LC33
	.word	.LANCHOR1+576
	.word	.LC29
	.word	ammo_yellow
	.word	.LANCHOR1
.LVL354:
.L289:
.LBE30:
.LBE50:
.LBB51:
.LBB36:
	ldr	r2, [sp, #40]
	ldr	r8, [sp, #28]
	str	r2, [sp, #28]
.LVL355:
	ldr	r2, [sp, #32]
	ldr	r9, [sp, #36]
.LVL356:
	str	r3, [sp, #40]
.LVL357:
	str	r2, [sp, #36]
.LVL358:
	str	ip, [sp, #32]
.LVL359:
	b	.L237
.LVL360:
.L259:
.LBE36:
	.loc 1 1199 0
	mov	fp, #54
	str	fp, [sp, #20]
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	.loc 1 1200 0
	add	r0, r6, r2
	.loc 1 1199 0
	strb	fp, [r9, #416]
.LVL361:
	.loc 1 1200 0
	mov	r9, #82
	b	.L414
.LVL362:
.L300:
.LBE51:
.LBB52:
	.loc 1 821 0
	mov	r3, #4
.LVL363:
.L169:
	.loc 1 832 0
	mov	r1, #125
	add	r2, r6, r3
	strb	r1, [r2, #96]
	add	r3, r3, #1
.LVL364:
	.loc 1 833 0
	b	.L168
.LVL365:
.L166:
	.loc 1 824 0
	ands	r9, r9, #-2147483645
.LVL366:
	submi	r9, r9, #1
	mvnmi	r9, r9, asl #30
	mvnmi	r9, r9, lsr #30
	addmi	r9, r9, #1
	cmp	r9, #2
	beq	.L300
	cmp	r9, #3
	beq	.L298
	cmp	r9, #1
	.loc 1 821 0
	movne	r3, #4
	.loc 1 824 0
	bne	.L172
	.loc 1 821 0
	mov	r3, #4
.LVL367:
.L171:
	.loc 1 829 0
	mov	r1, #126
	add	r2, r6, r3
	strb	r1, [r2, #96]
	add	r3, r3, #1
.LVL368:
	.loc 1 830 0
	b	.L168
.LVL369:
.L298:
	.loc 1 821 0
	mov	r3, #4
.LVL370:
.L170:
	.loc 1 835 0
	mov	r1, #124
	add	r2, r6, r3
	strb	r1, [r2, #96]
	add	r3, r3, #1
.LVL371:
	.loc 1 836 0
	b	.L168
.LVL372:
.L290:
.LBE52:
.LBB53:
.LBB37:
	ldr	r8, [sp, #28]
	ldr	r9, [sp, #36]
.LVL373:
	str	r3, [sp, #28]
.LVL374:
	str	ip, [sp, #36]
.LVL375:
	b	.L237
.LVL376:
.L226:
.LBE37:
.LBE53:
.LBB54:
.LBB31:
	.loc 1 1018 0
	ldr	ip, .L430+272
	.loc 1 1021 0
	add	fp, fp, #2
.LVL377:
	.loc 1 1018 0
	ldr	ip, [ip]
	cmp	r0, ip
	.loc 1 1019 0
	movlt	r0, #53
.LVL378:
	.loc 1 1021 0
	movge	r0, #51
	ldr	ip, .L430+276
	add	r1, ip, r1
	strb	r0, [r1, #336]
	b	.L223
.LVL379:
.L296:
.LBE31:
.LBE54:
.LBB55:
.LBB38:
	.loc 1 1148 0
	mov	r10, r0
	b	.L249
.LVL380:
.L293:
	.loc 1 1115 0
	mov	r10, #6
	b	.L243
.LVL381:
.L294:
	.loc 1 1126 0
	mov	r10, r0
	b	.L245
.L295:
	.loc 1 1137 0
	mov	r10, r0
	b	.L247
.LBE38:
.LBE55:
	.cfi_endproc
.LFE9:
	.size	HU_Drawer, .-HU_Drawer
	.align	2
	.global	HU_Ticker
	.type	HU_Ticker, %function
HU_Ticker:
.LFB11:
	.loc 1 1315 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
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
	.loc 1 1320 0
	ldr	r8, .L482
	.loc 1 1315 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 1320 0
	ldr	r3, [r8, #436]
	cmp	r3, #0
	beq	.L434
	.loc 1 1320 0 is_stmt 0 discriminator 1
	sub	r3, r3, #1
	cmp	r3, #0
	.loc 1 1322 0 is_stmt 1 discriminator 1
	ldreq	r2, .L482+4
	.loc 1 1320 0 discriminator 1
	str	r3, [r8, #436]
	.loc 1 1322 0 discriminator 1
	streq	r3, [r2, #664]
	.loc 1 1323 0 discriminator 1
	streq	r3, [r2, #668]
.L434:
	.loc 1 1325 0
	ldr	r3, [r8, #440]
	ldr	r4, .L482
	cmp	r3, #0
	beq	.L437
	.loc 1 1325 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #444]
	cmp	r3, #9
	add	r3, r3, #1
	str	r3, [r4, #444]
	bgt	.L480
.L437:
	.loc 1 1332 0 is_stmt 1
	ldr	r3, .L482+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L439
	.loc 1 1332 0 is_stmt 0 discriminator 1
	ldr	r5, .L482+12
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L439
.L440:
	.loc 1 1357 0 is_stmt 1
	ldr	r3, .L482+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L432
	mov	r4, #0
	ldr	r5, .L482+20
	ldr	r7, .L482+24
	ldr	r6, .L482+28
	ldr	r10, .L482+32
	.loc 1 1363 0
	ldr	r3, .L482+36
	.loc 1 1371 0
	ldr	fp, .L482+40
.L449:
.LVL382:
	.loc 1 1361 0
	ldr	r2, [r10, r4, asl #2]
	mov	ip, r4, asl #2
	cmp	r2, #0
	beq	.L443
	.loc 1 1363 0
	ldr	r2, [r3]
	cmp	r4, r2
	beq	.L443
	.loc 1 1364 0
	ldrb	r9, [r5, #12]	@ zero_extendqisi2
.LVL383:
	cmp	r9, #0
	beq	.L443
	.loc 1 1366 0
	cmp	r9, #5
	.loc 1 1367 0
	strlsb	r9, [r7]
	.loc 1 1366 0
	bls	.L445
	.loc 1 1370 0
	sub	r2, r9, #97
	cmp	r2, #25
	.loc 1 1371 0
	ldrls	r2, [fp]
	.loc 1 1372 0
	mov	r0, r6
	.loc 1 1371 0
	ldrlsb	r9, [r2, r9]	@ zero_extendqisi2
.LVL384:
	str	r3, [sp, #4]
	.loc 1 1372 0
	mov	r1, r9
	str	ip, [sp]
	bl	HUlib_keyInIText
.LVL385:
	.loc 1 1373 0
	sub	r3, r9, #13
	clz	r3, r3
	cmp	r0, #0
	mov	r3, r3, lsr #5
	moveq	r3, #0
	cmp	r3, #0
	ldr	ip, [sp]
	ldr	r3, [sp, #4]
	beq	.L445
	.loc 1 1375 0
	ldr	r2, [r6, #2028]
	cmp	r2, #0
	beq	.L447
	.loc 1 1376 0
	ldr	r2, [r3]
	ldrb	r1, [r7]	@ zero_extendqisi2
	add	r2, r2, #1
	.loc 1 1377 0
	cmp	r1, #5
	cmpne	r1, r2
	beq	.L481
.LVL386:
.L447:
	.loc 1 1391 0
	mov	r0, r6
	str	r3, [sp]
	bl	HUlib_resetIText
.LVL387:
	ldr	r3, [sp]
.L445:
	.loc 1 1394 0
	mov	r2, #0
	strb	r2, [r5, #12]
.LVL388:
.L443:
	.loc 1 1359 0 discriminator 2
	add	r4, r4, #1
.LVL389:
	cmp	r4, #4
	add	r5, r5, #284
	add	r7, r7, #1
	add	r6, r6, #2048
	bne	.L449
.LVL390:
.L432:
	.loc 1 1398 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L439:
	.cfi_restore_state
	.loc 1 1335 0
	ldr	r4, .L482+4
	ldr	r3, [r4, #660]
	ldr	r2, [r3, #220]
	cmp	r2, #0
	beq	.L440
	.loc 1 1336 0 discriminator 1
	ldr	r3, [r4, #668]
	ldr	r5, .L482+12
	cmp	r3, #0
	beq	.L441
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L440
.L441:
	.loc 1 1339 0
	ldr	r0, .L482+44
	mov	r1, #0
	bl	HUlib_addMessageToSText
.LVL391:
	.loc 1 1341 0
	ldr	r3, [r4, #660]
	ldr	r0, .L482+48
	ldr	r2, [r3, #220]
	mov	r1, #0
	bl	HUlib_addMessageToMText
.LVL392:
	.loc 1 1344 0
	mov	r3, #0
	.loc 1 1346 0
	mov	r1, #1
	.loc 1 1348 0
	mov	r2, #140
	.loc 1 1350 0
	ldr	r0, [r5]
	.loc 1 1344 0
	ldr	ip, [r4, #660]
	.loc 1 1352 0
	str	r3, [r5]
	.loc 1 1344 0
	str	r3, [ip, #220]
	.loc 1 1350 0
	str	r0, [r4, #668]
	.loc 1 1346 0
	str	r1, [r4, #664]
	.loc 1 1348 0
	str	r2, [r8, #436]
	b	.L440
.L480:
	.loc 1 1326 0
	ldr	r3, .L482+52
	ldr	r0, .L482+56
	ldrb	r1, [r3]	@ zero_extendqisi2
	bl	HUlib_keyInIText
.LVL393:
	.loc 1 1327 0
	mov	r3, #8
	str	r3, [r4, #444]
	b	.L437
.LVL394:
.L481:
	str	r3, [sp]
	.loc 1 1379 0
	ldr	r3, .L482+60
	ldr	r0, .L482+44
.LVL395:
	ldr	r1, [r3, ip]
	add	r2, r6, #24
	bl	HUlib_addMessageToSText
.LVL396:
	.loc 1 1383 0
	mov	r2, #1
	.loc 1 1385 0
	mov	r1, #140
	.loc 1 1386 0
	ldr	r3, .L482+64
	.loc 1 1385 0
	str	r1, [r8, #436]
	.loc 1 1386 0
	ldrb	r0, [r3]	@ zero_extendqisi2
	.loc 1 1383 0
	ldr	r3, .L482+4
	.loc 1 1386 0
	cmp	r0, #2
	.loc 1 1383 0
	str	r2, [r3, #668]
	.loc 1 1384 0
	str	r2, [r3, #664]
	.loc 1 1386 0
	ldr	r3, [sp]
	.loc 1 1387 0
	moveq	r0, #0
	moveq	r1, #108
	.loc 1 1389 0
	movne	r0, #0
	movne	r1, #87
	strne	r3, [sp]
	bl	S_StartSound
.LVL397:
	ldr	r3, [sp]
	b	.L447
.L483:
	.align	2
.L482:
	.word	.LANCHOR7
	.word	.LANCHOR1
	.word	showMessages
	.word	message_dontfuckwithme
	.word	netgame
	.word	players
	.word	.LANCHOR7+448
	.word	.LANCHOR6+424
	.word	playeringame
	.word	consoleplayer
	.word	shiftxform
	.word	.LANCHOR1+672
	.word	.LANCHOR4+572
	.word	key_backspace
	.word	.LANCHOR6-1624
	.word	.LANCHOR8+24
	.word	gamemode
	.cfi_endproc
.LFE11:
	.size	HU_Ticker, .-HU_Ticker
	.align	2
	.global	HU_dequeueChatChar
	.type	HU_dequeueChatChar, %function
HU_dequeueChatChar:
.LFB13:
	.loc 1 1434 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1437 0
	ldr	r2, .L487
	ldr	r3, [r2, #452]
	ldr	r1, [r2, #456]
	cmp	r1, r3
	.loc 1 1440 0
	addne	r1, r3, #1
	andne	r1, r1, #127
	.loc 1 1439 0
	addne	r3, r2, r3
	ldrneb	r0, [r3, #460]	@ zero_extendqisi2
.LVL398:
	.loc 1 1440 0
	strne	r1, [r2, #452]
	.loc 1 1444 0
	moveq	r0, #0
.LVL399:
	.loc 1 1447 0
	bx	lr
.L488:
	.align	2
.L487:
	.word	.LANCHOR7
	.cfi_endproc
.LFE13:
	.size	HU_dequeueChatChar, .-HU_dequeueChatChar
	.align	2
	.global	HU_Responder
	.type	HU_Responder, %function
HU_Responder:
.LFB14:
	.loc 1 1457 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL400:
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
	.loc 1 1472 0
	ldr	r3, .L555
.LVL401:
	.loc 1 1474 0
	ldr	r2, [r0, #4]
	.loc 1 1472 0
	ldr	r4, [r3, #8]
	ldmia	r3, {r1, ip}
	ldr	lr, [r3, #12]
	add	ip, ip, r1
.LVL402:
	add	r1, ip, r4
.LVL403:
	.loc 1 1474 0
	cmp	r2, #182
	.loc 1 1457 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 1472 0
	add	r1, r1, lr
.LVL404:
	.loc 1 1474 0
	beq	.L544
	.loc 1 1479 0
	cmp	r2, #184
	beq	.L545
	.loc 1 1484 0
	ldr	ip, .L555+4
	.loc 1 1486 0
	ldrb	r6, [r0]	@ zero_extendqisi2
	.loc 1 1484 0
	ldr	ip, [ip]
	cmp	r2, ip
	.loc 1 1486 0
	clzeq	r0, r6
.LVL405:
	.loc 1 1487 0
	moveq	lr, #0
	.loc 1 1486 0
	ldreq	ip, .L555+8
	moveq	r0, r0, lsr #5
	streq	r0, [ip, #440]
	.loc 1 1487 0
	streq	lr, [ip, #444]
	.loc 1 1490 0
	cmp	r6, #0
	bne	.L501
	.loc 1 1493 0
	ldr	r4, .L555+12
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.L496
	.loc 1 1495 0
	ldr	r0, .L555+16
	ldr	r0, [r0]
	cmp	r2, r0
	beq	.L546
	.loc 1 1513 0
	ldr	r0, .L555+20
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.L501
	.loc 1 1513 0 is_stmt 0 discriminator 1
	ldr	r0, .L555+24
	ldr	r0, [r0, #568]
	cmp	r0, #0
	bne	.L501
	.loc 1 1513 0 discriminator 2
	ldr	r0, .L555+28
	ldr	r0, [r0]
	cmp	r0, #0
	cmpne	r1, #1
	ble	.L501
	.loc 1 1515 0 is_stmt 1
	ldr	r0, .L555+32
	ldr	r0, [r0]
	cmp	r2, r0
	beq	.L547
	.loc 1 1521 0
	cmp	r1, #2
	beq	.L501
	.loc 1 1534 0
	ldr	r1, .L555+36
.LVL406:
	ldr	r5, .L555+8
	.loc 1 1546 0
	ldr	r7, .L555+40
	.loc 1 1534 0
	ldr	r8, [r1]
	.loc 1 1546 0
	ldr	lr, [r7, #660]
	ldr	r1, [r5, #596]
	ldr	ip, .L555+44
	ldr	fp, .L555+48
	.loc 1 1544 0
	ldr	r10, .L555+52
	.loc 1 1542 0
	ldr	r9, .L555+56
.LVL407:
.L512:
	.loc 1 1525 0
	ldr	r0, [ip, r6, asl #2]
	cmp	r2, r0
	beq	.L548
.L504:
	.loc 1 1523 0 discriminator 2
	add	r6, r6, #1
.LVL408:
	cmp	r6, #4
	bne	.L512
	str	r1, [r5, #596]
.LVL409:
.L501:
	.loc 1 1491 0
	mov	r0, #0
.LVL410:
.L491:
	.loc 1 1600 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL411:
.L496:
	.cfi_restore_state
	.loc 1 1553 0
	ldr	r3, .L555+24
	ldr	r3, [r3, #568]
	cmp	r3, #0
	bne	.L501
	.loc 1 1557 0
	ldr	r5, .L555+8
	.loc 1 1555 0
	uxtb	r2, r2
	.loc 1 1557 0
	ldr	r3, [r5, #592]
	.loc 1 1555 0
	mov	r7, r2
.LVL412:
	.loc 1 1557 0
	cmp	r3, #0
	bne	.L549
	.loc 1 1580 0
	ldr	r3, [r5, #588]
	cmp	r3, #0
	bne	.L522
	.loc 1 1580 0 is_stmt 0 discriminator 1
	sub	r3, r2, #97
	cmp	r3, #25
	bhi	.L523
.L522:
	.loc 1 1581 0 is_stmt 1
	ldr	r3, .L555+60
	ldr	r3, [r3]
	ldrb	r7, [r3, r2]	@ zero_extendqisi2
.LVL413:
.L523:
	.loc 1 1582 0
	ldr	r0, .L555+64
	mov	r1, r7
.LVL414:
	bl	HUlib_keyInIText
.LVL415:
	.loc 1 1583 0
	subs	r6, r0, #0
	beq	.L524
.LVL416:
.LBB56:
.LBB57:
	.loc 1 1415 0
	ldr	r2, [r5, #456]
	ldr	r1, [r5, #452]
	add	r3, r2, #1
	and	r3, r3, #127
	cmp	r3, r1
	.loc 1 1417 0
	ldreq	r3, .L555+40
	.loc 1 1415 0
	ldr	r1, .L555+8
	.loc 1 1417 0
	ldreq	r2, .L555+68
	ldreq	r3, [r3, #660]
	.loc 1 1421 0
	addne	r2, r1, r2
	.loc 1 1417 0
	streq	r2, [r3, #220]
	.loc 1 1421 0
	strneb	r7, [r2, #460]
	.loc 1 1422 0
	strne	r3, [r1, #456]
.LVL417:
.L524:
.LBE57:
.LBE56:
	.loc 1 1586 0
	ldr	r3, .L555+16
	ldr	r3, [r3]
	cmp	r7, r3
	beq	.L550
	.loc 1 1595 0
	ldr	r3, .L555+72
	ldr	r3, [r3]
	cmp	r7, r3
	.loc 1 1596 0
	moveq	r3, #0
	.loc 1 1582 0
	moveq	r0, r6
.LVL418:
	.loc 1 1596 0
	streq	r3, [r4]
	.loc 1 1595 0
	beq	.L491
.L529:
	.loc 1 1582 0
	mov	r0, r6
	b	.L491
.LVL419:
.L544:
	.loc 1 1476 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 1477 0
	mov	r0, #0
.LVL420:
	.loc 1 1476 0
	clz	r3, r3
	ldr	r2, .L555+8
	mov	r3, r3, lsr #5
	str	r3, [r2, #588]
	.loc 1 1600 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL421:
.L545:
	.cfi_restore_state
	.loc 1 1481 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 1482 0
	mov	r0, #0
.LVL422:
	.loc 1 1481 0
	clz	r3, r3
	ldr	r2, .L555+8
	mov	r3, r3, lsr #5
	str	r3, [r2, #592]
	.loc 1 1600 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L546:
	.cfi_restore_state
	.loc 1 1498 0
	ldr	r3, .L555+76
	ldr	r3, [r3]
	cmp	r3, #1
	ble	.L551
	.loc 1 1500 0
	ldr	r4, .L555+24
	ldr	r3, [r4, #568]
	cmp	r3, #0
	bne	.L552
.LVL423:
.L500:
	.loc 1 1501 0
	clz	r3, r3
	mov	r3, r3, lsr #5
	str	r3, [r4, #568]
.L499:
	.loc 1 1504 0
	cmp	r3, #0
	.loc 1 1506 0
	mov	r0, #1
	.loc 1 1504 0
	bne	.L491
	.loc 1 1507 0
	mov	r2, #140
	.loc 1 1506 0
	ldr	r1, .L555+40
	.loc 1 1507 0
	ldr	r3, .L555+8
	.loc 1 1506 0
	str	r0, [r1, #664]
	.loc 1 1507 0
	str	r2, [r3, #436]
	b	.L491
.LVL424:
.L549:
	.loc 1 1559 0
	sub	r3, r2, #48
	uxtb	r3, r3
.LVL425:
	.loc 1 1560 0
	cmp	r3, #9
	bhi	.L501
.LBB58:
.LBB59:
	.loc 1 1415 0
	ldr	r1, [r5, #456]
.LVL426:
.LBE59:
.LBE58:
	.loc 1 1565 0
	ldr	r0, .L555+16
.LBB67:
.LBB60:
	.loc 1 1415 0
	ldr	r7, [r5, #452]
	add	r2, r1, #1
.LBE60:
.LBE67:
	.loc 1 1562 0
	ldr	r10, .L555+80
	mov	r3, r3, asl #2
.LVL427:
.LBB68:
.LBB61:
	.loc 1 1415 0
	and	r2, r2, #127
.LBE61:
.LBE68:
	.loc 1 1565 0
	ldr	r0, [r0]
	.loc 1 1562 0
	add	ip, r10, r3
.LBB69:
.LBB62:
	.loc 1 1415 0
	cmp	r2, r7
.LBE62:
.LBE69:
	.loc 1 1562 0
	ldr	ip, [ip, #40]
.LVL428:
	.loc 1 1565 0
	str	r0, [sp, #4]
.LVL429:
.LBB70:
.LBB63:
	.loc 1 1415 0
	beq	.L553
	ldr	r0, .L555+40
.LBE63:
.LBE70:
	.loc 1 1565 0
	ldrb	lr, [sp, #4]	@ zero_extendqisi2
.LBB71:
.LBB64:
	.loc 1 1421 0
	add	r1, r5, r1
	ldr	r8, [r0, #660]
.LBE64:
.LBE71:
	.loc 1 1565 0
	strb	lr, [r1, #460]
.LBB72:
.LBB65:
	.loc 1 1422 0
	str	r2, [r5, #456]
.L516:
	sub	ip, ip, #1
.LVL430:
	ldr	r9, [r5, #456]
	add	lr, r2, #1
.LBE65:
.LBE72:
.LBB73:
.LBB74:
	.loc 1 1417 0
	ldr	fp, .L555+68
	b	.L515
.LVL431:
.L519:
	.loc 1 1415 0
	cmp	r7, r0
	.loc 1 1421 0
	movne	r2, r0
	movne	r9, r2
	.loc 1 1417 0
	streq	fp, [r8, #220]
	.loc 1 1421 0
	strneb	r1, [r6, #460]
	addne	lr, r2, #1
.LVL432:
.L515:
.LBE74:
.LBE73:
	.loc 1 1568 0
	ldrb	r1, [ip, #1]!	@ zero_extendqisi2
.LVL433:
.LBB77:
.LBB75:
	.loc 1 1421 0
	add	r6, r5, r2
.LBE75:
.LBE77:
	.loc 1 1568 0
	cmp	r1, #0
.LBB78:
.LBB76:
	.loc 1 1415 0
	and	r0, lr, #127
.LBE76:
.LBE78:
	.loc 1 1568 0
	bne	.L519
.LBB79:
.LBB80:
	.loc 1 1415 0
	mov	lr, r0
.LBE80:
.LBE79:
	.loc 1 1573 0
	mov	ip, #0
.LVL434:
.LBB85:
.LBB81:
	.loc 1 1415 0
	cmp	r7, r0
	ldr	r1, .L555+8
.LVL435:
	.loc 1 1417 0
	ldreq	r2, .L555+68
.LBE81:
.LBE85:
	.loc 1 1570 0
	ldrneb	r0, [sp, #4]	@ zero_extendqisi2
.LBB86:
.LBB82:
	.loc 1 1421 0
	addne	r2, r1, r2
.LBE82:
.LBE86:
	.loc 1 1570 0
	strneb	r0, [r2, #460]
.LBB87:
.LBB83:
	.loc 1 1417 0
	streq	r2, [r8, #220]
.LBE83:
.LBE87:
	.loc 1 1574 0
	ldr	r2, .L555+84
	add	r3, r10, r3
	str	r9, [r5, #456]
.LVL436:
	mov	r0, r2
.LBB88:
.LBB84:
	.loc 1 1422 0
	strne	lr, [r1, #456]
.LBE84:
.LBE88:
	.loc 1 1574 0
	ldr	r1, [r3, #40]
	.loc 1 1573 0
	str	ip, [r4]
	.loc 1 1574 0
	bl	strcpy
.LVL437:
	.loc 1 1575 0
	str	r0, [r8, #220]
.LVL438:
	.loc 1 1576 0
	mov	r0, #1
	b	.L491
.LVL439:
.L551:
	ldr	r3, .L555+24
	ldr	r3, [r3, #568]
	b	.L499
.LVL440:
.L550:
	.loc 1 1588 0
	mov	r3, #0
	.loc 1 1589 0
	ldr	r1, .L555+88
	.loc 1 1588 0
	str	r3, [r4]
	.loc 1 1589 0
	ldr	r3, [r1, #404]
	cmp	r3, #0
	beq	.L529
	.loc 1 1591 0
	ldr	r3, .L555+84
	sub	r1, r1, #1600
	mov	r0, r3
.LVL441:
	bl	strcpy
.LVL442:
	mov	r3, r0
	.loc 1 1592 0
	ldr	r2, .L555+40
	.loc 1 1582 0
	mov	r0, r6
	.loc 1 1592 0
	ldr	r2, [r2, #660]
	str	r3, [r2, #220]
	b	.L491
.LVL443:
.L552:
	.loc 1 1500 0 discriminator 1
	bl	HU_Erase
.LVL444:
	ldr	r3, [r4, #568]
	b	.L500
.LVL445:
.L553:
.LBB89:
.LBB66:
	.loc 1 1417 0
	ldr	r0, .L555+40
	mov	r2, r1
	ldr	r8, [r0, #660]
	ldr	r1, .L555+68
	str	r1, [r8, #220]
	b	.L516
.LVL446:
.L548:
.LBE66:
.LBE89:
	.loc 1 1527 0
	ldr	r0, [r3, r6, asl #2]
	cmp	r0, #0
	beq	.L505
	.loc 1 1527 0 is_stmt 0 discriminator 1
	cmp	r8, r6
	bne	.L554
.L506:
	.loc 1 1536 0 is_stmt 1
	add	r1, r1, #1
	.loc 1 1537 0
	cmp	r1, #2
	bgt	.L508
	.loc 1 1538 0
	ldr	r0, .L555+92
	str	r0, [lr, #220]
	b	.L504
.L505:
	.loc 1 1534 0
	cmp	r6, r8
	bne	.L504
	b	.L506
.LVL447:
.L547:
	.loc 1 1517 0
	mov	r5, #1
	.loc 1 1518 0
	ldr	r0, .L555+64
	.loc 1 1517 0
	str	r5, [r4]
.LVL448:
	.loc 1 1518 0
	bl	HUlib_resetIText
.LVL449:
.LBB90:
.LBB91:
	.loc 1 1415 0
	ldr	r2, .L555+8
	ldr	r3, [r2, #456]
	ldr	r0, [r2, #452]
	add	r1, r3, r5
	and	r1, r1, #127
	cmp	r1, r0
	.loc 1 1421 0
	movne	ip, #5
	.loc 1 1417 0
	ldreq	r3, .L555+40
	ldreq	r2, .L555+68
	ldreq	r3, [r3, #660]
	.loc 1 1421 0
	addne	r3, r2, r3
.LBE91:
.LBE90:
	.loc 1 1517 0
	moveq	r0, r5
.LBB94:
.LBB92:
	.loc 1 1417 0
	streq	r2, [r3, #220]
	.loc 1 1422 0
	strne	r1, [r2, #456]
.LBE92:
.LBE94:
	.loc 1 1517 0
	movne	r0, r5
.LBB95:
.LBB93:
	.loc 1 1421 0
	strneb	ip, [r3, #460]
	b	.L491
.LVL450:
.L508:
.LBE93:
.LBE95:
	.loc 1 1539 0
	cmp	r1, #5
	.loc 1 1540 0
	ldrle	r0, .L555+96
	strle	r0, [lr, #220]
	ble	.L504
.L509:
	.loc 1 1541 0
	cmp	r1, #8
	.loc 1 1542 0
	strle	r9, [lr, #220]
	.loc 1 1541 0
	ble	.L504
	.loc 1 1544 0
	cmp	r1, #31
	movgt	r0, fp
	movle	r0, r10
	str	r0, [lr, #220]
	b	.L504
.L554:
	.loc 1 1529 0
	mov	r8, #1
	.loc 1 1530 0
	ldr	r0, .L555+64
	str	r1, [r5, #596]
	.loc 1 1529 0
	str	r8, [r4]
.LVL451:
	.loc 1 1530 0
	bl	HUlib_resetIText
.LVL452:
.LBB96:
.LBB97:
	.loc 1 1415 0
	ldr	r1, [r5, #456]
	ldr	r0, [r5, #452]
	add	r2, r1, r8
	and	r2, r2, #127
	cmp	r2, r0
.LBE97:
.LBE96:
	.loc 1 1531 0
	add	r3, r6, r8
	ldr	r0, .L555+8
	uxtb	r3, r3
.LVL453:
.LBB100:
.LBB98:
	.loc 1 1417 0
	ldreq	r2, .L555+68
	ldreq	r3, [r7, #660]
.LVL454:
	.loc 1 1421 0
	addne	r1, r0, r1
	.loc 1 1422 0
	strne	r2, [r0, #456]
.LBE98:
.LBE100:
	.loc 1 1529 0
	moveq	r0, r8
.LBB101:
.LBB99:
	.loc 1 1417 0
	streq	r2, [r3, #220]
	.loc 1 1421 0
	strneb	r3, [r1, #460]
.LBE99:
.LBE101:
	.loc 1 1529 0
	movne	r0, r8
	b	.L491
.L556:
	.align	2
.L555:
	.word	playeringame
	.word	key_backspace
	.word	.LANCHOR7
	.word	chat_on
	.word	key_enter
	.word	demoplayback
	.word	.LANCHOR4
	.word	netgame
	.word	key_chat
	.word	consoleplayer
	.word	.LANCHOR1
	.word	destination_keys
	.word	.LC39
	.word	.LC38
	.word	.LC37
	.word	shiftxform
	.word	.LANCHOR6-1624
	.word	.LC34
	.word	key_escape
	.word	hud_msg_lines
	.word	.LANCHOR8
	.word	.LANCHOR7+600
	.word	.LANCHOR6
	.word	.LC35
	.word	.LC36
	.cfi_endproc
.LFE14:
	.size	HU_Responder, .-HU_Responder
	.global	english_shiftxform
	.comm	shiftxform,4,4
	.comm	hud_list_bgon,4,4
	.comm	hudcolor_list,4,4
	.comm	hud_msg_lines,4,4
	.comm	hudcolor_chat,4,4
	.comm	hudcolor_mesg,4,4
	.comm	hudcolor_xyco,4,4
	.comm	hudcolor_titl,4,4
	.comm	message_dontfuckwithme,4,4
	.comm	chat_on,4,4
	.comm	hu_msgbg,180,4
	.comm	hu_fontk,1900,4
	.comm	hu_font2,1900,4
	.comm	hu_font,1900,4
	.comm	chat_char,1,1
	.global	plyrcoltran
	.global	player_names
	.global	chat_macros
	.global	hud_graph_keys
	.comm	hud_distributed,4,4
	.comm	hud_nosecrets,4,4
	.comm	hud_displayed,4,4
	.comm	hud_active,4,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	english_shiftxform, %object
	.size	english_shiftxform, 128
english_shiftxform:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	34
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	60
	.byte	95
	.byte	62
	.byte	63
	.byte	41
	.byte	33
	.byte	64
	.byte	35
	.byte	36
	.byte	37
	.byte	94
	.byte	38
	.byte	42
	.byte	40
	.byte	58
	.byte	58
	.byte	60
	.byte	43
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	91
	.byte	33
	.byte	93
	.byte	34
	.byte	95
	.byte	39
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.data
	.align	2
	.set	.LANCHOR8,. + 0
	.type	ohud_distributed.9362, %object
	.size	ohud_distributed.9362, 4
ohud_distributed.9362:
	.word	-1
	.type	hud_graph_keys, %object
	.size	hud_graph_keys, 4
hud_graph_keys:
	.word	1
	.type	plyrcoltran, %object
	.size	plyrcoltran, 16
plyrcoltran:
	.word	3
	.word	2
	.word	4
	.word	6
	.type	player_names, %object
	.size	player_names, 16
player_names:
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.type	chat_macros, %object
	.size	chat_macros, 40
chat_macros:
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"DIG%.1d\000"
.LC1:
	.ascii	"STCFN%.3d\000"
	.space	2
.LC2:
	.ascii	"DIG%c\000"
	.space	2
.LC3:
	.ascii	"DIG45\000"
	.space	2
.LC4:
	.ascii	"STCFN045\000"
	.space	3
.LC5:
	.ascii	"DIG47\000"
	.space	2
.LC6:
	.ascii	"STCFN047\000"
	.space	3
.LC7:
	.ascii	"DIG58\000"
	.space	2
.LC8:
	.ascii	"STCFN058\000"
	.space	3
.LC9:
	.ascii	"DIG91\000"
	.space	2
.LC10:
	.ascii	"STCFN091\000"
	.space	3
.LC11:
	.ascii	"DIG93\000"
	.space	2
.LC12:
	.ascii	"STCFN093\000"
	.space	3
.LC13:
	.ascii	"STBR%.3d\000"
	.space	3
.LC14:
	.ascii	"BOX%c%c\000"
.LC17:
	.ascii	"STKEYS%d\000"
	.space	3
.LC15:
	.ascii	"UCL\000"
.LC16:
	.ascii	"LCR\000"
.LC18:
	.ascii	"\000"
	.space	3
.LC19:
	.ascii	"AMM \000"
	.space	3
.LC20:
	.ascii	"X: %-5d\000"
.LC21:
	.ascii	"Y: %-5d\000"
.LC22:
	.ascii	"Z: %-5d\000"
.LC23:
	.ascii	"HEL \000"
	.space	3
.LC24:
	.ascii	"ARM \000"
	.space	3
.LC25:
	.ascii	"WEA \000"
	.space	3
.LC26:
	.ascii	"KEY \000"
	.space	3
.LC27:
	.ascii	"FRG \000"
	.space	3
.LC28:
	.ascii	"STS \000"
	.space	3
.LC29:
	.ascii	"\177\177\177\177\177\177\177 N/A\000"
.LC30:
	.ascii	"%d/%d\000"
	.space	2
.LC31:
	.ascii	"%3d\000"
.LC32:
	.ascii	"%5d\000"
.LC33:
	.ascii	"STS \0336K \0333%d \0336M \0333%d \0337I \0333%d/%d"
	.ascii	" \0335S \0333%d/%d\000"
	.space	2
.LC34:
	.ascii	"[Message unsent]\000"
	.space	3
.LC35:
	.ascii	"You mumble to yourself\000"
	.space	1
.LC36:
	.ascii	"Who's there?\000"
	.space	3
.LC37:
	.ascii	"You scare yourself\000"
	.space	1
.LC38:
	.ascii	"You start to rave\000"
	.space	2
.LC39:
	.ascii	"You've lost it...\000"
	.space	2
.LC40:
	.ascii	"Player 1: \000"
	.space	1
.LC41:
	.ascii	"Player 2: \000"
	.space	1
.LC42:
	.ascii	"Player 3: \000"
	.space	1
.LC43:
	.ascii	"Player 4: \000"
	.space	1
.LC44:
	.ascii	"No\000"
	.space	1
.LC45:
	.ascii	"I'm ready to kick butt!\000"
.LC46:
	.ascii	"I'm OK.\000"
.LC47:
	.ascii	"I'm not looking too good!\000"
	.space	2
.LC48:
	.ascii	"Help!\000"
	.space	2
.LC49:
	.ascii	"You suck!\000"
	.space	2
.LC50:
	.ascii	"Next time, scumbag...\000"
	.space	2
.LC51:
	.ascii	"Come here!\000"
	.space	1
.LC52:
	.ascii	"I'll take care of it.\000"
	.space	2
.LC53:
	.ascii	"Yes\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.set	.LANCHOR2,. + 8184
	.set	.LANCHOR3,. + 16368
	.set	.LANCHOR4,. + 24552
	.set	.LANCHOR5,. + 57288
	.set	.LANCHOR6,. + 65472
	.set	.LANCHOR7,. + 73656
	.type	hud_coordstrx, %object
	.size	hud_coordstrx, 32
hud_coordstrx:
	.space	32
	.type	hud_coordstry, %object
	.size	hud_coordstry, 32
hud_coordstry:
	.space	32
	.type	hud_coordstrz, %object
	.size	hud_coordstrz, 32
hud_coordstrz:
	.space	32
	.type	hud_ammostr, %object
	.size	hud_ammostr, 80
hud_ammostr:
	.space	80
	.type	hud_healthstr, %object
	.size	hud_healthstr, 80
hud_healthstr:
	.space	80
	.type	hud_armorstr, %object
	.size	hud_armorstr, 80
hud_armorstr:
	.space	80
	.type	hud_weapstr, %object
	.size	hud_weapstr, 80
hud_weapstr:
	.space	80
	.type	hud_keysstr, %object
	.size	hud_keysstr, 80
hud_keysstr:
	.space	80
	.type	hud_gkeysstr, %object
	.size	hud_gkeysstr, 80
hud_gkeysstr:
	.space	80
	.type	hud_monsecstr, %object
	.size	hud_monsecstr, 80
hud_monsecstr:
	.space	80
	.type	headsupactive, %object
	.size	headsupactive, 4
headsupactive:
	.space	4
	.type	plr, %object
	.size	plr, 4
plr:
	.space	4
	.type	message_on, %object
	.size	message_on, 4
message_on:
	.space	4
	.type	message_nottobefuckedwith, %object
	.size	message_nottobefuckedwith, 4
message_nottobefuckedwith:
	.space	4
	.type	w_message, %object
	.size	w_message, 8160
w_message:
	.space	8160
	.type	w_title, %object
	.size	w_title, 2036
w_title:
	.space	2036
	.type	w_health, %object
	.size	w_health, 2036
w_health:
	.space	2036
	.type	w_armor, %object
	.size	w_armor, 2036
w_armor:
	.space	2036
	.type	w_ammo, %object
	.size	w_ammo, 2036
w_ammo:
	.space	2036
	.type	w_weapon, %object
	.size	w_weapon, 2036
w_weapon:
	.space	2036
	.type	w_keys, %object
	.size	w_keys, 2036
w_keys:
	.space	2036
	.type	w_gkeys, %object
	.size	w_gkeys, 2036
w_gkeys:
	.space	2036
	.type	w_monsec, %object
	.size	w_monsec, 2036
w_monsec:
	.space	2036
	.type	message_list, %object
	.size	message_list, 4
message_list:
	.space	4
	.type	w_rtext, %object
	.size	w_rtext, 32616
w_rtext:
	.space	32616
	.type	w_coordx, %object
	.size	w_coordx, 2036
w_coordx:
	.space	2036
	.type	w_coordy, %object
	.size	w_coordy, 2036
w_coordy:
	.space	2036
	.type	w_coordz, %object
	.size	w_coordz, 2036
w_coordz:
	.space	2036
	.type	w_chat, %object
	.size	w_chat, 2048
w_chat:
	.space	2048
	.type	w_inputbuffer, %object
	.size	w_inputbuffer, 8192
w_inputbuffer:
	.space	8192
	.type	always_off, %object
	.size	always_off, 4
always_off:
	.space	4
	.type	message_counter, %object
	.size	message_counter, 4
message_counter:
	.space	4
	.type	bsdown, %object
	.size	bsdown, 4
bsdown:
	.space	4
	.type	bscounter, %object
	.size	bscounter, 4
bscounter:
	.space	4
	.type	chat_dest, %object
	.size	chat_dest, 4
chat_dest:
	.space	4
	.type	tail, %object
	.size	tail, 4
tail:
	.space	4
	.type	head, %object
	.size	head, 4
head:
	.space	4
	.type	chatchars, %object
	.size	chatchars, 128
chatchars:
	.space	128
	.type	shiftdown.9535, %object
	.size	shiftdown.9535, 4
shiftdown.9535:
	.space	4
	.type	altdown.9536, %object
	.size	altdown.9536, 4
altdown.9536:
	.space	4
	.type	num_nobrainers.9540, %object
	.size	num_nobrainers.9540, 4
num_nobrainers.9540:
	.space	4
	.type	lastmessage.9532, %object
	.size	lastmessage.9532, 81
lastmessage.9532:
	.space	81
	.text
.Letext0:
	.file 2 "c:/devl/prboom3ds/src/doomdef.h"
	.file 3 "c:/devl/prboom3ds/src/d_items.h"
	.file 4 "c:/devl/prboom3ds/src/doomtype.h"
	.file 5 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 6 "c:/devl/prboom3ds/src/tables.h"
	.file 7 "c:/devl/prboom3ds/src/d_think.h"
	.file 8 "c:/devl/prboom3ds/src/info.h"
	.file 9 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 10 "c:/devl/prboom3ds/src/doomdata.h"
	.file 11 "c:/devl/prboom3ds/src/p_mobj.h"
	.file 12 "c:/devl/prboom3ds/src/r_defs.h"
	.file 13 "c:/devl/prboom3ds/src/d_player.h"
	.file 14 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 15 "c:/devl/prboom3ds/src/doomstat.h"
	.file 16 "c:/devl/prboom3ds/src/d_event.h"
	.file 17 "c:/devl/prboom3ds/src/v_video.h"
	.file 18 "c:/devl/prboom3ds/src/hu_lib.h"
	.file 19 "c:/devl/prboom3ds/src/sounds.h"
	.file 20 "c:/devl/prboom3ds/src/st_stuff.h"
	.file 21 "c:/devl/prboom3ds/src/g_game.h"
	.file 22 "c:/devl/prboom3ds/src/r_main.h"
	.file 23 "c:/devl/prboom3ds/src/r_data.h"
	.file 24 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.file 25 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 26 "c:/devl/prboom3ds/src/s_sound.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5722
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1959
	.byte	0x1
	.4byte	.LASF1960
	.4byte	.LASF1961
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.uleb128 0x4
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87
	.uleb128 0x6
	.4byte	0x7a
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x43
	.4byte	0xb3
	.uleb128 0x8
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF12
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF13
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF14
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.byte	0x49
	.4byte	0x8c
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x4c
	.4byte	0xe5
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.byte	0x52
	.4byte	0xbe
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x95
	.4byte	0x111
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF26
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x2
	.byte	0x9a
	.4byte	0xf0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xbc
	.4byte	0x14f
	.uleb128 0x8
	.4byte	.LASF28
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF29
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF30
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF31
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF32
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF33
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF34
	.sleb128 6
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xc8
	.4byte	0x19a
	.uleb128 0x8
	.4byte	.LASF35
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF36
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF37
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF38
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF39
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF40
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF41
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF42
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF43
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF44
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF45
	.sleb128 10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x2
	.byte	0xd5
	.4byte	0x14f
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xd8
	.4byte	0x1d2
	.uleb128 0x8
	.4byte	.LASF47
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF48
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF49
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF50
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF51
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF52
	.sleb128 5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x2
	.byte	0xdf
	.4byte	0x1a5
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xe2
	.4byte	0x210
	.uleb128 0x8
	.4byte	.LASF54
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF55
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF56
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF57
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF58
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF59
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF60
	.sleb128 6
	.byte	0
	.uleb128 0xa
	.byte	0x18
	.byte	0x3
	.byte	0x2e
	.4byte	0x261
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x3
	.byte	0x30
	.4byte	0x1d2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x3
	.byte	0x31
	.4byte	0x2e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x3
	.byte	0x32
	.4byte	0x2e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x3
	.byte	0x33
	.4byte	0x2e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x3
	.byte	0x34
	.4byte	0x2e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x3
	.byte	0x35
	.4byte	0x2e
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x3
	.byte	0x37
	.4byte	0x210
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF68
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x4
	.byte	0x42
	.4byte	0x2e
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x4
	.byte	0x4c
	.4byte	0x3c
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x4
	.byte	0x5c
	.4byte	0x66
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x5
	.byte	0x2f
	.4byte	0x2e
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x6
	.byte	0x47
	.4byte	0x25
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0x32
	.4byte	0x2b5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0xc
	.4byte	0x2c2
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x7
	.byte	0x48
	.4byte	0x2aa
	.uleb128 0xe
	.4byte	.LASF1458
	.byte	0x18
	.byte	0x7
	.byte	0x4c
	.4byte	0x322
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x7
	.byte	0x4e
	.4byte	0x322
	.byte	0
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x7
	.byte	0x4f
	.4byte	0x322
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x7
	.byte	0x50
	.4byte	0x2c2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x7
	.byte	0x56
	.4byte	0x322
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x7
	.byte	0x56
	.4byte	0x322
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x7
	.byte	0x5b
	.4byte	0x25
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x7
	.byte	0x5c
	.4byte	0x2cd
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x2e
	.4byte	0x6d7
	.uleb128 0x8
	.4byte	.LASF83
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF84
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF85
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF86
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF87
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF88
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF89
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF90
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF91
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF92
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF93
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF94
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF95
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF96
	.sleb128 13
	.uleb128 0x8
	.4byte	.LASF97
	.sleb128 14
	.uleb128 0x8
	.4byte	.LASF98
	.sleb128 15
	.uleb128 0x8
	.4byte	.LASF99
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF100
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF101
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF102
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF103
	.sleb128 20
	.uleb128 0x8
	.4byte	.LASF104
	.sleb128 21
	.uleb128 0x8
	.4byte	.LASF105
	.sleb128 22
	.uleb128 0x8
	.4byte	.LASF106
	.sleb128 23
	.uleb128 0x8
	.4byte	.LASF107
	.sleb128 24
	.uleb128 0x8
	.4byte	.LASF108
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF109
	.sleb128 26
	.uleb128 0x8
	.4byte	.LASF110
	.sleb128 27
	.uleb128 0x8
	.4byte	.LASF111
	.sleb128 28
	.uleb128 0x8
	.4byte	.LASF112
	.sleb128 29
	.uleb128 0x8
	.4byte	.LASF113
	.sleb128 30
	.uleb128 0x8
	.4byte	.LASF114
	.sleb128 31
	.uleb128 0x8
	.4byte	.LASF115
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF116
	.sleb128 33
	.uleb128 0x8
	.4byte	.LASF117
	.sleb128 34
	.uleb128 0x8
	.4byte	.LASF118
	.sleb128 35
	.uleb128 0x8
	.4byte	.LASF119
	.sleb128 36
	.uleb128 0x8
	.4byte	.LASF120
	.sleb128 37
	.uleb128 0x8
	.4byte	.LASF121
	.sleb128 38
	.uleb128 0x8
	.4byte	.LASF122
	.sleb128 39
	.uleb128 0x8
	.4byte	.LASF123
	.sleb128 40
	.uleb128 0x8
	.4byte	.LASF124
	.sleb128 41
	.uleb128 0x8
	.4byte	.LASF125
	.sleb128 42
	.uleb128 0x8
	.4byte	.LASF126
	.sleb128 43
	.uleb128 0x8
	.4byte	.LASF127
	.sleb128 44
	.uleb128 0x8
	.4byte	.LASF128
	.sleb128 45
	.uleb128 0x8
	.4byte	.LASF129
	.sleb128 46
	.uleb128 0x8
	.4byte	.LASF130
	.sleb128 47
	.uleb128 0x8
	.4byte	.LASF131
	.sleb128 48
	.uleb128 0x8
	.4byte	.LASF132
	.sleb128 49
	.uleb128 0x8
	.4byte	.LASF133
	.sleb128 50
	.uleb128 0x8
	.4byte	.LASF134
	.sleb128 51
	.uleb128 0x8
	.4byte	.LASF135
	.sleb128 52
	.uleb128 0x8
	.4byte	.LASF136
	.sleb128 53
	.uleb128 0x8
	.4byte	.LASF137
	.sleb128 54
	.uleb128 0x8
	.4byte	.LASF138
	.sleb128 55
	.uleb128 0x8
	.4byte	.LASF139
	.sleb128 56
	.uleb128 0x8
	.4byte	.LASF140
	.sleb128 57
	.uleb128 0x8
	.4byte	.LASF141
	.sleb128 58
	.uleb128 0x8
	.4byte	.LASF142
	.sleb128 59
	.uleb128 0x8
	.4byte	.LASF143
	.sleb128 60
	.uleb128 0x8
	.4byte	.LASF144
	.sleb128 61
	.uleb128 0x8
	.4byte	.LASF145
	.sleb128 62
	.uleb128 0x8
	.4byte	.LASF146
	.sleb128 63
	.uleb128 0x8
	.4byte	.LASF147
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF148
	.sleb128 65
	.uleb128 0x8
	.4byte	.LASF149
	.sleb128 66
	.uleb128 0x8
	.4byte	.LASF150
	.sleb128 67
	.uleb128 0x8
	.4byte	.LASF151
	.sleb128 68
	.uleb128 0x8
	.4byte	.LASF152
	.sleb128 69
	.uleb128 0x8
	.4byte	.LASF153
	.sleb128 70
	.uleb128 0x8
	.4byte	.LASF154
	.sleb128 71
	.uleb128 0x8
	.4byte	.LASF155
	.sleb128 72
	.uleb128 0x8
	.4byte	.LASF156
	.sleb128 73
	.uleb128 0x8
	.4byte	.LASF157
	.sleb128 74
	.uleb128 0x8
	.4byte	.LASF158
	.sleb128 75
	.uleb128 0x8
	.4byte	.LASF159
	.sleb128 76
	.uleb128 0x8
	.4byte	.LASF160
	.sleb128 77
	.uleb128 0x8
	.4byte	.LASF161
	.sleb128 78
	.uleb128 0x8
	.4byte	.LASF162
	.sleb128 79
	.uleb128 0x8
	.4byte	.LASF163
	.sleb128 80
	.uleb128 0x8
	.4byte	.LASF164
	.sleb128 81
	.uleb128 0x8
	.4byte	.LASF165
	.sleb128 82
	.uleb128 0x8
	.4byte	.LASF166
	.sleb128 83
	.uleb128 0x8
	.4byte	.LASF167
	.sleb128 84
	.uleb128 0x8
	.4byte	.LASF168
	.sleb128 85
	.uleb128 0x8
	.4byte	.LASF169
	.sleb128 86
	.uleb128 0x8
	.4byte	.LASF170
	.sleb128 87
	.uleb128 0x8
	.4byte	.LASF171
	.sleb128 88
	.uleb128 0x8
	.4byte	.LASF172
	.sleb128 89
	.uleb128 0x8
	.4byte	.LASF173
	.sleb128 90
	.uleb128 0x8
	.4byte	.LASF174
	.sleb128 91
	.uleb128 0x8
	.4byte	.LASF175
	.sleb128 92
	.uleb128 0x8
	.4byte	.LASF176
	.sleb128 93
	.uleb128 0x8
	.4byte	.LASF177
	.sleb128 94
	.uleb128 0x8
	.4byte	.LASF178
	.sleb128 95
	.uleb128 0x8
	.4byte	.LASF179
	.sleb128 96
	.uleb128 0x8
	.4byte	.LASF180
	.sleb128 97
	.uleb128 0x8
	.4byte	.LASF181
	.sleb128 98
	.uleb128 0x8
	.4byte	.LASF182
	.sleb128 99
	.uleb128 0x8
	.4byte	.LASF183
	.sleb128 100
	.uleb128 0x8
	.4byte	.LASF184
	.sleb128 101
	.uleb128 0x8
	.4byte	.LASF185
	.sleb128 102
	.uleb128 0x8
	.4byte	.LASF186
	.sleb128 103
	.uleb128 0x8
	.4byte	.LASF187
	.sleb128 104
	.uleb128 0x8
	.4byte	.LASF188
	.sleb128 105
	.uleb128 0x8
	.4byte	.LASF189
	.sleb128 106
	.uleb128 0x8
	.4byte	.LASF190
	.sleb128 107
	.uleb128 0x8
	.4byte	.LASF191
	.sleb128 108
	.uleb128 0x8
	.4byte	.LASF192
	.sleb128 109
	.uleb128 0x8
	.4byte	.LASF193
	.sleb128 110
	.uleb128 0x8
	.4byte	.LASF194
	.sleb128 111
	.uleb128 0x8
	.4byte	.LASF195
	.sleb128 112
	.uleb128 0x8
	.4byte	.LASF196
	.sleb128 113
	.uleb128 0x8
	.4byte	.LASF197
	.sleb128 114
	.uleb128 0x8
	.4byte	.LASF198
	.sleb128 115
	.uleb128 0x8
	.4byte	.LASF199
	.sleb128 116
	.uleb128 0x8
	.4byte	.LASF200
	.sleb128 117
	.uleb128 0x8
	.4byte	.LASF201
	.sleb128 118
	.uleb128 0x8
	.4byte	.LASF202
	.sleb128 119
	.uleb128 0x8
	.4byte	.LASF203
	.sleb128 120
	.uleb128 0x8
	.4byte	.LASF204
	.sleb128 121
	.uleb128 0x8
	.4byte	.LASF205
	.sleb128 122
	.uleb128 0x8
	.4byte	.LASF206
	.sleb128 123
	.uleb128 0x8
	.4byte	.LASF207
	.sleb128 124
	.uleb128 0x8
	.4byte	.LASF208
	.sleb128 125
	.uleb128 0x8
	.4byte	.LASF209
	.sleb128 126
	.uleb128 0x8
	.4byte	.LASF210
	.sleb128 127
	.uleb128 0x8
	.4byte	.LASF211
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF212
	.sleb128 129
	.uleb128 0x8
	.4byte	.LASF213
	.sleb128 130
	.uleb128 0x8
	.4byte	.LASF214
	.sleb128 131
	.uleb128 0x8
	.4byte	.LASF215
	.sleb128 132
	.uleb128 0x8
	.4byte	.LASF216
	.sleb128 133
	.uleb128 0x8
	.4byte	.LASF217
	.sleb128 134
	.uleb128 0x8
	.4byte	.LASF218
	.sleb128 135
	.uleb128 0x8
	.4byte	.LASF219
	.sleb128 136
	.uleb128 0x8
	.4byte	.LASF220
	.sleb128 137
	.uleb128 0x8
	.4byte	.LASF221
	.sleb128 138
	.uleb128 0x8
	.4byte	.LASF222
	.sleb128 139
	.uleb128 0x8
	.4byte	.LASF223
	.sleb128 140
	.byte	0
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0x8
	.byte	0xc1
	.4byte	0x333
	.uleb128 0x7
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.4byte	0x2306
	.uleb128 0x8
	.4byte	.LASF225
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF226
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF227
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF228
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF229
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF230
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF231
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF232
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF233
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF234
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF235
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF236
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF237
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF238
	.sleb128 13
	.uleb128 0x8
	.4byte	.LASF239
	.sleb128 14
	.uleb128 0x8
	.4byte	.LASF240
	.sleb128 15
	.uleb128 0x8
	.4byte	.LASF241
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF242
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF243
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF244
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF245
	.sleb128 20
	.uleb128 0x8
	.4byte	.LASF246
	.sleb128 21
	.uleb128 0x8
	.4byte	.LASF247
	.sleb128 22
	.uleb128 0x8
	.4byte	.LASF248
	.sleb128 23
	.uleb128 0x8
	.4byte	.LASF249
	.sleb128 24
	.uleb128 0x8
	.4byte	.LASF250
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF251
	.sleb128 26
	.uleb128 0x8
	.4byte	.LASF252
	.sleb128 27
	.uleb128 0x8
	.4byte	.LASF253
	.sleb128 28
	.uleb128 0x8
	.4byte	.LASF254
	.sleb128 29
	.uleb128 0x8
	.4byte	.LASF255
	.sleb128 30
	.uleb128 0x8
	.4byte	.LASF256
	.sleb128 31
	.uleb128 0x8
	.4byte	.LASF257
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF258
	.sleb128 33
	.uleb128 0x8
	.4byte	.LASF259
	.sleb128 34
	.uleb128 0x8
	.4byte	.LASF260
	.sleb128 35
	.uleb128 0x8
	.4byte	.LASF261
	.sleb128 36
	.uleb128 0x8
	.4byte	.LASF262
	.sleb128 37
	.uleb128 0x8
	.4byte	.LASF263
	.sleb128 38
	.uleb128 0x8
	.4byte	.LASF264
	.sleb128 39
	.uleb128 0x8
	.4byte	.LASF265
	.sleb128 40
	.uleb128 0x8
	.4byte	.LASF266
	.sleb128 41
	.uleb128 0x8
	.4byte	.LASF267
	.sleb128 42
	.uleb128 0x8
	.4byte	.LASF268
	.sleb128 43
	.uleb128 0x8
	.4byte	.LASF269
	.sleb128 44
	.uleb128 0x8
	.4byte	.LASF270
	.sleb128 45
	.uleb128 0x8
	.4byte	.LASF271
	.sleb128 46
	.uleb128 0x8
	.4byte	.LASF272
	.sleb128 47
	.uleb128 0x8
	.4byte	.LASF273
	.sleb128 48
	.uleb128 0x8
	.4byte	.LASF274
	.sleb128 49
	.uleb128 0x8
	.4byte	.LASF275
	.sleb128 50
	.uleb128 0x8
	.4byte	.LASF276
	.sleb128 51
	.uleb128 0x8
	.4byte	.LASF277
	.sleb128 52
	.uleb128 0x8
	.4byte	.LASF278
	.sleb128 53
	.uleb128 0x8
	.4byte	.LASF279
	.sleb128 54
	.uleb128 0x8
	.4byte	.LASF280
	.sleb128 55
	.uleb128 0x8
	.4byte	.LASF281
	.sleb128 56
	.uleb128 0x8
	.4byte	.LASF282
	.sleb128 57
	.uleb128 0x8
	.4byte	.LASF283
	.sleb128 58
	.uleb128 0x8
	.4byte	.LASF284
	.sleb128 59
	.uleb128 0x8
	.4byte	.LASF285
	.sleb128 60
	.uleb128 0x8
	.4byte	.LASF286
	.sleb128 61
	.uleb128 0x8
	.4byte	.LASF287
	.sleb128 62
	.uleb128 0x8
	.4byte	.LASF288
	.sleb128 63
	.uleb128 0x8
	.4byte	.LASF289
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF290
	.sleb128 65
	.uleb128 0x8
	.4byte	.LASF291
	.sleb128 66
	.uleb128 0x8
	.4byte	.LASF292
	.sleb128 67
	.uleb128 0x8
	.4byte	.LASF293
	.sleb128 68
	.uleb128 0x8
	.4byte	.LASF294
	.sleb128 69
	.uleb128 0x8
	.4byte	.LASF295
	.sleb128 70
	.uleb128 0x8
	.4byte	.LASF296
	.sleb128 71
	.uleb128 0x8
	.4byte	.LASF297
	.sleb128 72
	.uleb128 0x8
	.4byte	.LASF298
	.sleb128 73
	.uleb128 0x8
	.4byte	.LASF299
	.sleb128 74
	.uleb128 0x8
	.4byte	.LASF300
	.sleb128 75
	.uleb128 0x8
	.4byte	.LASF301
	.sleb128 76
	.uleb128 0x8
	.4byte	.LASF302
	.sleb128 77
	.uleb128 0x8
	.4byte	.LASF303
	.sleb128 78
	.uleb128 0x8
	.4byte	.LASF304
	.sleb128 79
	.uleb128 0x8
	.4byte	.LASF305
	.sleb128 80
	.uleb128 0x8
	.4byte	.LASF306
	.sleb128 81
	.uleb128 0x8
	.4byte	.LASF307
	.sleb128 82
	.uleb128 0x8
	.4byte	.LASF308
	.sleb128 83
	.uleb128 0x8
	.4byte	.LASF309
	.sleb128 84
	.uleb128 0x8
	.4byte	.LASF310
	.sleb128 85
	.uleb128 0x8
	.4byte	.LASF311
	.sleb128 86
	.uleb128 0x8
	.4byte	.LASF312
	.sleb128 87
	.uleb128 0x8
	.4byte	.LASF313
	.sleb128 88
	.uleb128 0x8
	.4byte	.LASF314
	.sleb128 89
	.uleb128 0x8
	.4byte	.LASF315
	.sleb128 90
	.uleb128 0x8
	.4byte	.LASF316
	.sleb128 91
	.uleb128 0x8
	.4byte	.LASF317
	.sleb128 92
	.uleb128 0x8
	.4byte	.LASF318
	.sleb128 93
	.uleb128 0x8
	.4byte	.LASF319
	.sleb128 94
	.uleb128 0x8
	.4byte	.LASF320
	.sleb128 95
	.uleb128 0x8
	.4byte	.LASF321
	.sleb128 96
	.uleb128 0x8
	.4byte	.LASF322
	.sleb128 97
	.uleb128 0x8
	.4byte	.LASF323
	.sleb128 98
	.uleb128 0x8
	.4byte	.LASF324
	.sleb128 99
	.uleb128 0x8
	.4byte	.LASF325
	.sleb128 100
	.uleb128 0x8
	.4byte	.LASF326
	.sleb128 101
	.uleb128 0x8
	.4byte	.LASF327
	.sleb128 102
	.uleb128 0x8
	.4byte	.LASF328
	.sleb128 103
	.uleb128 0x8
	.4byte	.LASF329
	.sleb128 104
	.uleb128 0x8
	.4byte	.LASF330
	.sleb128 105
	.uleb128 0x8
	.4byte	.LASF331
	.sleb128 106
	.uleb128 0x8
	.4byte	.LASF332
	.sleb128 107
	.uleb128 0x8
	.4byte	.LASF333
	.sleb128 108
	.uleb128 0x8
	.4byte	.LASF334
	.sleb128 109
	.uleb128 0x8
	.4byte	.LASF335
	.sleb128 110
	.uleb128 0x8
	.4byte	.LASF336
	.sleb128 111
	.uleb128 0x8
	.4byte	.LASF337
	.sleb128 112
	.uleb128 0x8
	.4byte	.LASF338
	.sleb128 113
	.uleb128 0x8
	.4byte	.LASF339
	.sleb128 114
	.uleb128 0x8
	.4byte	.LASF340
	.sleb128 115
	.uleb128 0x8
	.4byte	.LASF341
	.sleb128 116
	.uleb128 0x8
	.4byte	.LASF342
	.sleb128 117
	.uleb128 0x8
	.4byte	.LASF343
	.sleb128 118
	.uleb128 0x8
	.4byte	.LASF344
	.sleb128 119
	.uleb128 0x8
	.4byte	.LASF345
	.sleb128 120
	.uleb128 0x8
	.4byte	.LASF346
	.sleb128 121
	.uleb128 0x8
	.4byte	.LASF347
	.sleb128 122
	.uleb128 0x8
	.4byte	.LASF348
	.sleb128 123
	.uleb128 0x8
	.4byte	.LASF349
	.sleb128 124
	.uleb128 0x8
	.4byte	.LASF350
	.sleb128 125
	.uleb128 0x8
	.4byte	.LASF351
	.sleb128 126
	.uleb128 0x8
	.4byte	.LASF352
	.sleb128 127
	.uleb128 0x8
	.4byte	.LASF353
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF354
	.sleb128 129
	.uleb128 0x8
	.4byte	.LASF355
	.sleb128 130
	.uleb128 0x8
	.4byte	.LASF356
	.sleb128 131
	.uleb128 0x8
	.4byte	.LASF357
	.sleb128 132
	.uleb128 0x8
	.4byte	.LASF358
	.sleb128 133
	.uleb128 0x8
	.4byte	.LASF359
	.sleb128 134
	.uleb128 0x8
	.4byte	.LASF360
	.sleb128 135
	.uleb128 0x8
	.4byte	.LASF361
	.sleb128 136
	.uleb128 0x8
	.4byte	.LASF362
	.sleb128 137
	.uleb128 0x8
	.4byte	.LASF363
	.sleb128 138
	.uleb128 0x8
	.4byte	.LASF364
	.sleb128 139
	.uleb128 0x8
	.4byte	.LASF365
	.sleb128 140
	.uleb128 0x8
	.4byte	.LASF366
	.sleb128 141
	.uleb128 0x8
	.4byte	.LASF367
	.sleb128 142
	.uleb128 0x8
	.4byte	.LASF368
	.sleb128 143
	.uleb128 0x8
	.4byte	.LASF369
	.sleb128 144
	.uleb128 0x8
	.4byte	.LASF370
	.sleb128 145
	.uleb128 0x8
	.4byte	.LASF371
	.sleb128 146
	.uleb128 0x8
	.4byte	.LASF372
	.sleb128 147
	.uleb128 0x8
	.4byte	.LASF373
	.sleb128 148
	.uleb128 0x8
	.4byte	.LASF374
	.sleb128 149
	.uleb128 0x8
	.4byte	.LASF375
	.sleb128 150
	.uleb128 0x8
	.4byte	.LASF376
	.sleb128 151
	.uleb128 0x8
	.4byte	.LASF377
	.sleb128 152
	.uleb128 0x8
	.4byte	.LASF378
	.sleb128 153
	.uleb128 0x8
	.4byte	.LASF379
	.sleb128 154
	.uleb128 0x8
	.4byte	.LASF380
	.sleb128 155
	.uleb128 0x8
	.4byte	.LASF381
	.sleb128 156
	.uleb128 0x8
	.4byte	.LASF382
	.sleb128 157
	.uleb128 0x8
	.4byte	.LASF383
	.sleb128 158
	.uleb128 0x8
	.4byte	.LASF384
	.sleb128 159
	.uleb128 0x8
	.4byte	.LASF385
	.sleb128 160
	.uleb128 0x8
	.4byte	.LASF386
	.sleb128 161
	.uleb128 0x8
	.4byte	.LASF387
	.sleb128 162
	.uleb128 0x8
	.4byte	.LASF388
	.sleb128 163
	.uleb128 0x8
	.4byte	.LASF389
	.sleb128 164
	.uleb128 0x8
	.4byte	.LASF390
	.sleb128 165
	.uleb128 0x8
	.4byte	.LASF391
	.sleb128 166
	.uleb128 0x8
	.4byte	.LASF392
	.sleb128 167
	.uleb128 0x8
	.4byte	.LASF393
	.sleb128 168
	.uleb128 0x8
	.4byte	.LASF394
	.sleb128 169
	.uleb128 0x8
	.4byte	.LASF395
	.sleb128 170
	.uleb128 0x8
	.4byte	.LASF396
	.sleb128 171
	.uleb128 0x8
	.4byte	.LASF397
	.sleb128 172
	.uleb128 0x8
	.4byte	.LASF398
	.sleb128 173
	.uleb128 0x8
	.4byte	.LASF399
	.sleb128 174
	.uleb128 0x8
	.4byte	.LASF400
	.sleb128 175
	.uleb128 0x8
	.4byte	.LASF401
	.sleb128 176
	.uleb128 0x8
	.4byte	.LASF402
	.sleb128 177
	.uleb128 0x8
	.4byte	.LASF403
	.sleb128 178
	.uleb128 0x8
	.4byte	.LASF404
	.sleb128 179
	.uleb128 0x8
	.4byte	.LASF405
	.sleb128 180
	.uleb128 0x8
	.4byte	.LASF406
	.sleb128 181
	.uleb128 0x8
	.4byte	.LASF407
	.sleb128 182
	.uleb128 0x8
	.4byte	.LASF408
	.sleb128 183
	.uleb128 0x8
	.4byte	.LASF409
	.sleb128 184
	.uleb128 0x8
	.4byte	.LASF410
	.sleb128 185
	.uleb128 0x8
	.4byte	.LASF411
	.sleb128 186
	.uleb128 0x8
	.4byte	.LASF412
	.sleb128 187
	.uleb128 0x8
	.4byte	.LASF413
	.sleb128 188
	.uleb128 0x8
	.4byte	.LASF414
	.sleb128 189
	.uleb128 0x8
	.4byte	.LASF415
	.sleb128 190
	.uleb128 0x8
	.4byte	.LASF416
	.sleb128 191
	.uleb128 0x8
	.4byte	.LASF417
	.sleb128 192
	.uleb128 0x8
	.4byte	.LASF418
	.sleb128 193
	.uleb128 0x8
	.4byte	.LASF419
	.sleb128 194
	.uleb128 0x8
	.4byte	.LASF420
	.sleb128 195
	.uleb128 0x8
	.4byte	.LASF421
	.sleb128 196
	.uleb128 0x8
	.4byte	.LASF422
	.sleb128 197
	.uleb128 0x8
	.4byte	.LASF423
	.sleb128 198
	.uleb128 0x8
	.4byte	.LASF424
	.sleb128 199
	.uleb128 0x8
	.4byte	.LASF425
	.sleb128 200
	.uleb128 0x8
	.4byte	.LASF426
	.sleb128 201
	.uleb128 0x8
	.4byte	.LASF427
	.sleb128 202
	.uleb128 0x8
	.4byte	.LASF428
	.sleb128 203
	.uleb128 0x8
	.4byte	.LASF429
	.sleb128 204
	.uleb128 0x8
	.4byte	.LASF430
	.sleb128 205
	.uleb128 0x8
	.4byte	.LASF431
	.sleb128 206
	.uleb128 0x8
	.4byte	.LASF432
	.sleb128 207
	.uleb128 0x8
	.4byte	.LASF433
	.sleb128 208
	.uleb128 0x8
	.4byte	.LASF434
	.sleb128 209
	.uleb128 0x8
	.4byte	.LASF435
	.sleb128 210
	.uleb128 0x8
	.4byte	.LASF436
	.sleb128 211
	.uleb128 0x8
	.4byte	.LASF437
	.sleb128 212
	.uleb128 0x8
	.4byte	.LASF438
	.sleb128 213
	.uleb128 0x8
	.4byte	.LASF439
	.sleb128 214
	.uleb128 0x8
	.4byte	.LASF440
	.sleb128 215
	.uleb128 0x8
	.4byte	.LASF441
	.sleb128 216
	.uleb128 0x8
	.4byte	.LASF442
	.sleb128 217
	.uleb128 0x8
	.4byte	.LASF443
	.sleb128 218
	.uleb128 0x8
	.4byte	.LASF444
	.sleb128 219
	.uleb128 0x8
	.4byte	.LASF445
	.sleb128 220
	.uleb128 0x8
	.4byte	.LASF446
	.sleb128 221
	.uleb128 0x8
	.4byte	.LASF447
	.sleb128 222
	.uleb128 0x8
	.4byte	.LASF448
	.sleb128 223
	.uleb128 0x8
	.4byte	.LASF449
	.sleb128 224
	.uleb128 0x8
	.4byte	.LASF450
	.sleb128 225
	.uleb128 0x8
	.4byte	.LASF451
	.sleb128 226
	.uleb128 0x8
	.4byte	.LASF452
	.sleb128 227
	.uleb128 0x8
	.4byte	.LASF453
	.sleb128 228
	.uleb128 0x8
	.4byte	.LASF454
	.sleb128 229
	.uleb128 0x8
	.4byte	.LASF455
	.sleb128 230
	.uleb128 0x8
	.4byte	.LASF456
	.sleb128 231
	.uleb128 0x8
	.4byte	.LASF457
	.sleb128 232
	.uleb128 0x8
	.4byte	.LASF458
	.sleb128 233
	.uleb128 0x8
	.4byte	.LASF459
	.sleb128 234
	.uleb128 0x8
	.4byte	.LASF460
	.sleb128 235
	.uleb128 0x8
	.4byte	.LASF461
	.sleb128 236
	.uleb128 0x8
	.4byte	.LASF462
	.sleb128 237
	.uleb128 0x8
	.4byte	.LASF463
	.sleb128 238
	.uleb128 0x8
	.4byte	.LASF464
	.sleb128 239
	.uleb128 0x8
	.4byte	.LASF465
	.sleb128 240
	.uleb128 0x8
	.4byte	.LASF466
	.sleb128 241
	.uleb128 0x8
	.4byte	.LASF467
	.sleb128 242
	.uleb128 0x8
	.4byte	.LASF468
	.sleb128 243
	.uleb128 0x8
	.4byte	.LASF469
	.sleb128 244
	.uleb128 0x8
	.4byte	.LASF470
	.sleb128 245
	.uleb128 0x8
	.4byte	.LASF471
	.sleb128 246
	.uleb128 0x8
	.4byte	.LASF472
	.sleb128 247
	.uleb128 0x8
	.4byte	.LASF473
	.sleb128 248
	.uleb128 0x8
	.4byte	.LASF474
	.sleb128 249
	.uleb128 0x8
	.4byte	.LASF475
	.sleb128 250
	.uleb128 0x8
	.4byte	.LASF476
	.sleb128 251
	.uleb128 0x8
	.4byte	.LASF477
	.sleb128 252
	.uleb128 0x8
	.4byte	.LASF478
	.sleb128 253
	.uleb128 0x8
	.4byte	.LASF479
	.sleb128 254
	.uleb128 0x8
	.4byte	.LASF480
	.sleb128 255
	.uleb128 0x8
	.4byte	.LASF481
	.sleb128 256
	.uleb128 0x8
	.4byte	.LASF482
	.sleb128 257
	.uleb128 0x8
	.4byte	.LASF483
	.sleb128 258
	.uleb128 0x8
	.4byte	.LASF484
	.sleb128 259
	.uleb128 0x8
	.4byte	.LASF485
	.sleb128 260
	.uleb128 0x8
	.4byte	.LASF486
	.sleb128 261
	.uleb128 0x8
	.4byte	.LASF487
	.sleb128 262
	.uleb128 0x8
	.4byte	.LASF488
	.sleb128 263
	.uleb128 0x8
	.4byte	.LASF489
	.sleb128 264
	.uleb128 0x8
	.4byte	.LASF490
	.sleb128 265
	.uleb128 0x8
	.4byte	.LASF491
	.sleb128 266
	.uleb128 0x8
	.4byte	.LASF492
	.sleb128 267
	.uleb128 0x8
	.4byte	.LASF493
	.sleb128 268
	.uleb128 0x8
	.4byte	.LASF494
	.sleb128 269
	.uleb128 0x8
	.4byte	.LASF495
	.sleb128 270
	.uleb128 0x8
	.4byte	.LASF496
	.sleb128 271
	.uleb128 0x8
	.4byte	.LASF497
	.sleb128 272
	.uleb128 0x8
	.4byte	.LASF498
	.sleb128 273
	.uleb128 0x8
	.4byte	.LASF499
	.sleb128 274
	.uleb128 0x8
	.4byte	.LASF500
	.sleb128 275
	.uleb128 0x8
	.4byte	.LASF501
	.sleb128 276
	.uleb128 0x8
	.4byte	.LASF502
	.sleb128 277
	.uleb128 0x8
	.4byte	.LASF503
	.sleb128 278
	.uleb128 0x8
	.4byte	.LASF504
	.sleb128 279
	.uleb128 0x8
	.4byte	.LASF505
	.sleb128 280
	.uleb128 0x8
	.4byte	.LASF506
	.sleb128 281
	.uleb128 0x8
	.4byte	.LASF507
	.sleb128 282
	.uleb128 0x8
	.4byte	.LASF508
	.sleb128 283
	.uleb128 0x8
	.4byte	.LASF509
	.sleb128 284
	.uleb128 0x8
	.4byte	.LASF510
	.sleb128 285
	.uleb128 0x8
	.4byte	.LASF511
	.sleb128 286
	.uleb128 0x8
	.4byte	.LASF512
	.sleb128 287
	.uleb128 0x8
	.4byte	.LASF513
	.sleb128 288
	.uleb128 0x8
	.4byte	.LASF514
	.sleb128 289
	.uleb128 0x8
	.4byte	.LASF515
	.sleb128 290
	.uleb128 0x8
	.4byte	.LASF516
	.sleb128 291
	.uleb128 0x8
	.4byte	.LASF517
	.sleb128 292
	.uleb128 0x8
	.4byte	.LASF518
	.sleb128 293
	.uleb128 0x8
	.4byte	.LASF519
	.sleb128 294
	.uleb128 0x8
	.4byte	.LASF520
	.sleb128 295
	.uleb128 0x8
	.4byte	.LASF521
	.sleb128 296
	.uleb128 0x8
	.4byte	.LASF522
	.sleb128 297
	.uleb128 0x8
	.4byte	.LASF523
	.sleb128 298
	.uleb128 0x8
	.4byte	.LASF524
	.sleb128 299
	.uleb128 0x8
	.4byte	.LASF525
	.sleb128 300
	.uleb128 0x8
	.4byte	.LASF526
	.sleb128 301
	.uleb128 0x8
	.4byte	.LASF527
	.sleb128 302
	.uleb128 0x8
	.4byte	.LASF528
	.sleb128 303
	.uleb128 0x8
	.4byte	.LASF529
	.sleb128 304
	.uleb128 0x8
	.4byte	.LASF530
	.sleb128 305
	.uleb128 0x8
	.4byte	.LASF531
	.sleb128 306
	.uleb128 0x8
	.4byte	.LASF532
	.sleb128 307
	.uleb128 0x8
	.4byte	.LASF533
	.sleb128 308
	.uleb128 0x8
	.4byte	.LASF534
	.sleb128 309
	.uleb128 0x8
	.4byte	.LASF535
	.sleb128 310
	.uleb128 0x8
	.4byte	.LASF536
	.sleb128 311
	.uleb128 0x8
	.4byte	.LASF537
	.sleb128 312
	.uleb128 0x8
	.4byte	.LASF538
	.sleb128 313
	.uleb128 0x8
	.4byte	.LASF539
	.sleb128 314
	.uleb128 0x8
	.4byte	.LASF540
	.sleb128 315
	.uleb128 0x8
	.4byte	.LASF541
	.sleb128 316
	.uleb128 0x8
	.4byte	.LASF542
	.sleb128 317
	.uleb128 0x8
	.4byte	.LASF543
	.sleb128 318
	.uleb128 0x8
	.4byte	.LASF544
	.sleb128 319
	.uleb128 0x8
	.4byte	.LASF545
	.sleb128 320
	.uleb128 0x8
	.4byte	.LASF546
	.sleb128 321
	.uleb128 0x8
	.4byte	.LASF547
	.sleb128 322
	.uleb128 0x8
	.4byte	.LASF548
	.sleb128 323
	.uleb128 0x8
	.4byte	.LASF549
	.sleb128 324
	.uleb128 0x8
	.4byte	.LASF550
	.sleb128 325
	.uleb128 0x8
	.4byte	.LASF551
	.sleb128 326
	.uleb128 0x8
	.4byte	.LASF552
	.sleb128 327
	.uleb128 0x8
	.4byte	.LASF553
	.sleb128 328
	.uleb128 0x8
	.4byte	.LASF554
	.sleb128 329
	.uleb128 0x8
	.4byte	.LASF555
	.sleb128 330
	.uleb128 0x8
	.4byte	.LASF556
	.sleb128 331
	.uleb128 0x8
	.4byte	.LASF557
	.sleb128 332
	.uleb128 0x8
	.4byte	.LASF558
	.sleb128 333
	.uleb128 0x8
	.4byte	.LASF559
	.sleb128 334
	.uleb128 0x8
	.4byte	.LASF560
	.sleb128 335
	.uleb128 0x8
	.4byte	.LASF561
	.sleb128 336
	.uleb128 0x8
	.4byte	.LASF562
	.sleb128 337
	.uleb128 0x8
	.4byte	.LASF563
	.sleb128 338
	.uleb128 0x8
	.4byte	.LASF564
	.sleb128 339
	.uleb128 0x8
	.4byte	.LASF565
	.sleb128 340
	.uleb128 0x8
	.4byte	.LASF566
	.sleb128 341
	.uleb128 0x8
	.4byte	.LASF567
	.sleb128 342
	.uleb128 0x8
	.4byte	.LASF568
	.sleb128 343
	.uleb128 0x8
	.4byte	.LASF569
	.sleb128 344
	.uleb128 0x8
	.4byte	.LASF570
	.sleb128 345
	.uleb128 0x8
	.4byte	.LASF571
	.sleb128 346
	.uleb128 0x8
	.4byte	.LASF572
	.sleb128 347
	.uleb128 0x8
	.4byte	.LASF573
	.sleb128 348
	.uleb128 0x8
	.4byte	.LASF574
	.sleb128 349
	.uleb128 0x8
	.4byte	.LASF575
	.sleb128 350
	.uleb128 0x8
	.4byte	.LASF576
	.sleb128 351
	.uleb128 0x8
	.4byte	.LASF577
	.sleb128 352
	.uleb128 0x8
	.4byte	.LASF578
	.sleb128 353
	.uleb128 0x8
	.4byte	.LASF579
	.sleb128 354
	.uleb128 0x8
	.4byte	.LASF580
	.sleb128 355
	.uleb128 0x8
	.4byte	.LASF581
	.sleb128 356
	.uleb128 0x8
	.4byte	.LASF582
	.sleb128 357
	.uleb128 0x8
	.4byte	.LASF583
	.sleb128 358
	.uleb128 0x8
	.4byte	.LASF584
	.sleb128 359
	.uleb128 0x8
	.4byte	.LASF585
	.sleb128 360
	.uleb128 0x8
	.4byte	.LASF586
	.sleb128 361
	.uleb128 0x8
	.4byte	.LASF587
	.sleb128 362
	.uleb128 0x8
	.4byte	.LASF588
	.sleb128 363
	.uleb128 0x8
	.4byte	.LASF589
	.sleb128 364
	.uleb128 0x8
	.4byte	.LASF590
	.sleb128 365
	.uleb128 0x8
	.4byte	.LASF591
	.sleb128 366
	.uleb128 0x8
	.4byte	.LASF592
	.sleb128 367
	.uleb128 0x8
	.4byte	.LASF593
	.sleb128 368
	.uleb128 0x8
	.4byte	.LASF594
	.sleb128 369
	.uleb128 0x8
	.4byte	.LASF595
	.sleb128 370
	.uleb128 0x8
	.4byte	.LASF596
	.sleb128 371
	.uleb128 0x8
	.4byte	.LASF597
	.sleb128 372
	.uleb128 0x8
	.4byte	.LASF598
	.sleb128 373
	.uleb128 0x8
	.4byte	.LASF599
	.sleb128 374
	.uleb128 0x8
	.4byte	.LASF600
	.sleb128 375
	.uleb128 0x8
	.4byte	.LASF601
	.sleb128 376
	.uleb128 0x8
	.4byte	.LASF602
	.sleb128 377
	.uleb128 0x8
	.4byte	.LASF603
	.sleb128 378
	.uleb128 0x8
	.4byte	.LASF604
	.sleb128 379
	.uleb128 0x8
	.4byte	.LASF605
	.sleb128 380
	.uleb128 0x8
	.4byte	.LASF606
	.sleb128 381
	.uleb128 0x8
	.4byte	.LASF607
	.sleb128 382
	.uleb128 0x8
	.4byte	.LASF608
	.sleb128 383
	.uleb128 0x8
	.4byte	.LASF609
	.sleb128 384
	.uleb128 0x8
	.4byte	.LASF610
	.sleb128 385
	.uleb128 0x8
	.4byte	.LASF611
	.sleb128 386
	.uleb128 0x8
	.4byte	.LASF612
	.sleb128 387
	.uleb128 0x8
	.4byte	.LASF613
	.sleb128 388
	.uleb128 0x8
	.4byte	.LASF614
	.sleb128 389
	.uleb128 0x8
	.4byte	.LASF615
	.sleb128 390
	.uleb128 0x8
	.4byte	.LASF616
	.sleb128 391
	.uleb128 0x8
	.4byte	.LASF617
	.sleb128 392
	.uleb128 0x8
	.4byte	.LASF618
	.sleb128 393
	.uleb128 0x8
	.4byte	.LASF619
	.sleb128 394
	.uleb128 0x8
	.4byte	.LASF620
	.sleb128 395
	.uleb128 0x8
	.4byte	.LASF621
	.sleb128 396
	.uleb128 0x8
	.4byte	.LASF622
	.sleb128 397
	.uleb128 0x8
	.4byte	.LASF623
	.sleb128 398
	.uleb128 0x8
	.4byte	.LASF624
	.sleb128 399
	.uleb128 0x8
	.4byte	.LASF625
	.sleb128 400
	.uleb128 0x8
	.4byte	.LASF626
	.sleb128 401
	.uleb128 0x8
	.4byte	.LASF627
	.sleb128 402
	.uleb128 0x8
	.4byte	.LASF628
	.sleb128 403
	.uleb128 0x8
	.4byte	.LASF629
	.sleb128 404
	.uleb128 0x8
	.4byte	.LASF630
	.sleb128 405
	.uleb128 0x8
	.4byte	.LASF631
	.sleb128 406
	.uleb128 0x8
	.4byte	.LASF632
	.sleb128 407
	.uleb128 0x8
	.4byte	.LASF633
	.sleb128 408
	.uleb128 0x8
	.4byte	.LASF634
	.sleb128 409
	.uleb128 0x8
	.4byte	.LASF635
	.sleb128 410
	.uleb128 0x8
	.4byte	.LASF636
	.sleb128 411
	.uleb128 0x8
	.4byte	.LASF637
	.sleb128 412
	.uleb128 0x8
	.4byte	.LASF638
	.sleb128 413
	.uleb128 0x8
	.4byte	.LASF639
	.sleb128 414
	.uleb128 0x8
	.4byte	.LASF640
	.sleb128 415
	.uleb128 0x8
	.4byte	.LASF641
	.sleb128 416
	.uleb128 0x8
	.4byte	.LASF642
	.sleb128 417
	.uleb128 0x8
	.4byte	.LASF643
	.sleb128 418
	.uleb128 0x8
	.4byte	.LASF644
	.sleb128 419
	.uleb128 0x8
	.4byte	.LASF645
	.sleb128 420
	.uleb128 0x8
	.4byte	.LASF646
	.sleb128 421
	.uleb128 0x8
	.4byte	.LASF647
	.sleb128 422
	.uleb128 0x8
	.4byte	.LASF648
	.sleb128 423
	.uleb128 0x8
	.4byte	.LASF649
	.sleb128 424
	.uleb128 0x8
	.4byte	.LASF650
	.sleb128 425
	.uleb128 0x8
	.4byte	.LASF651
	.sleb128 426
	.uleb128 0x8
	.4byte	.LASF652
	.sleb128 427
	.uleb128 0x8
	.4byte	.LASF653
	.sleb128 428
	.uleb128 0x8
	.4byte	.LASF654
	.sleb128 429
	.uleb128 0x8
	.4byte	.LASF655
	.sleb128 430
	.uleb128 0x8
	.4byte	.LASF656
	.sleb128 431
	.uleb128 0x8
	.4byte	.LASF657
	.sleb128 432
	.uleb128 0x8
	.4byte	.LASF658
	.sleb128 433
	.uleb128 0x8
	.4byte	.LASF659
	.sleb128 434
	.uleb128 0x8
	.4byte	.LASF660
	.sleb128 435
	.uleb128 0x8
	.4byte	.LASF661
	.sleb128 436
	.uleb128 0x8
	.4byte	.LASF662
	.sleb128 437
	.uleb128 0x8
	.4byte	.LASF663
	.sleb128 438
	.uleb128 0x8
	.4byte	.LASF664
	.sleb128 439
	.uleb128 0x8
	.4byte	.LASF665
	.sleb128 440
	.uleb128 0x8
	.4byte	.LASF666
	.sleb128 441
	.uleb128 0x8
	.4byte	.LASF667
	.sleb128 442
	.uleb128 0x8
	.4byte	.LASF668
	.sleb128 443
	.uleb128 0x8
	.4byte	.LASF669
	.sleb128 444
	.uleb128 0x8
	.4byte	.LASF670
	.sleb128 445
	.uleb128 0x8
	.4byte	.LASF671
	.sleb128 446
	.uleb128 0x8
	.4byte	.LASF672
	.sleb128 447
	.uleb128 0x8
	.4byte	.LASF673
	.sleb128 448
	.uleb128 0x8
	.4byte	.LASF674
	.sleb128 449
	.uleb128 0x8
	.4byte	.LASF675
	.sleb128 450
	.uleb128 0x8
	.4byte	.LASF676
	.sleb128 451
	.uleb128 0x8
	.4byte	.LASF677
	.sleb128 452
	.uleb128 0x8
	.4byte	.LASF678
	.sleb128 453
	.uleb128 0x8
	.4byte	.LASF679
	.sleb128 454
	.uleb128 0x8
	.4byte	.LASF680
	.sleb128 455
	.uleb128 0x8
	.4byte	.LASF681
	.sleb128 456
	.uleb128 0x8
	.4byte	.LASF682
	.sleb128 457
	.uleb128 0x8
	.4byte	.LASF683
	.sleb128 458
	.uleb128 0x8
	.4byte	.LASF684
	.sleb128 459
	.uleb128 0x8
	.4byte	.LASF685
	.sleb128 460
	.uleb128 0x8
	.4byte	.LASF686
	.sleb128 461
	.uleb128 0x8
	.4byte	.LASF687
	.sleb128 462
	.uleb128 0x8
	.4byte	.LASF688
	.sleb128 463
	.uleb128 0x8
	.4byte	.LASF689
	.sleb128 464
	.uleb128 0x8
	.4byte	.LASF690
	.sleb128 465
	.uleb128 0x8
	.4byte	.LASF691
	.sleb128 466
	.uleb128 0x8
	.4byte	.LASF692
	.sleb128 467
	.uleb128 0x8
	.4byte	.LASF693
	.sleb128 468
	.uleb128 0x8
	.4byte	.LASF694
	.sleb128 469
	.uleb128 0x8
	.4byte	.LASF695
	.sleb128 470
	.uleb128 0x8
	.4byte	.LASF696
	.sleb128 471
	.uleb128 0x8
	.4byte	.LASF697
	.sleb128 472
	.uleb128 0x8
	.4byte	.LASF698
	.sleb128 473
	.uleb128 0x8
	.4byte	.LASF699
	.sleb128 474
	.uleb128 0x8
	.4byte	.LASF700
	.sleb128 475
	.uleb128 0x8
	.4byte	.LASF701
	.sleb128 476
	.uleb128 0x8
	.4byte	.LASF702
	.sleb128 477
	.uleb128 0x8
	.4byte	.LASF703
	.sleb128 478
	.uleb128 0x8
	.4byte	.LASF704
	.sleb128 479
	.uleb128 0x8
	.4byte	.LASF705
	.sleb128 480
	.uleb128 0x8
	.4byte	.LASF706
	.sleb128 481
	.uleb128 0x8
	.4byte	.LASF707
	.sleb128 482
	.uleb128 0x8
	.4byte	.LASF708
	.sleb128 483
	.uleb128 0x8
	.4byte	.LASF709
	.sleb128 484
	.uleb128 0x8
	.4byte	.LASF710
	.sleb128 485
	.uleb128 0x8
	.4byte	.LASF711
	.sleb128 486
	.uleb128 0x8
	.4byte	.LASF712
	.sleb128 487
	.uleb128 0x8
	.4byte	.LASF713
	.sleb128 488
	.uleb128 0x8
	.4byte	.LASF714
	.sleb128 489
	.uleb128 0x8
	.4byte	.LASF715
	.sleb128 490
	.uleb128 0x8
	.4byte	.LASF716
	.sleb128 491
	.uleb128 0x8
	.4byte	.LASF717
	.sleb128 492
	.uleb128 0x8
	.4byte	.LASF718
	.sleb128 493
	.uleb128 0x8
	.4byte	.LASF719
	.sleb128 494
	.uleb128 0x8
	.4byte	.LASF720
	.sleb128 495
	.uleb128 0x8
	.4byte	.LASF721
	.sleb128 496
	.uleb128 0x8
	.4byte	.LASF722
	.sleb128 497
	.uleb128 0x8
	.4byte	.LASF723
	.sleb128 498
	.uleb128 0x8
	.4byte	.LASF724
	.sleb128 499
	.uleb128 0x8
	.4byte	.LASF725
	.sleb128 500
	.uleb128 0x8
	.4byte	.LASF726
	.sleb128 501
	.uleb128 0x8
	.4byte	.LASF727
	.sleb128 502
	.uleb128 0x8
	.4byte	.LASF728
	.sleb128 503
	.uleb128 0x8
	.4byte	.LASF729
	.sleb128 504
	.uleb128 0x8
	.4byte	.LASF730
	.sleb128 505
	.uleb128 0x8
	.4byte	.LASF731
	.sleb128 506
	.uleb128 0x8
	.4byte	.LASF732
	.sleb128 507
	.uleb128 0x8
	.4byte	.LASF733
	.sleb128 508
	.uleb128 0x8
	.4byte	.LASF734
	.sleb128 509
	.uleb128 0x8
	.4byte	.LASF735
	.sleb128 510
	.uleb128 0x8
	.4byte	.LASF736
	.sleb128 511
	.uleb128 0x8
	.4byte	.LASF737
	.sleb128 512
	.uleb128 0x8
	.4byte	.LASF738
	.sleb128 513
	.uleb128 0x8
	.4byte	.LASF739
	.sleb128 514
	.uleb128 0x8
	.4byte	.LASF740
	.sleb128 515
	.uleb128 0x8
	.4byte	.LASF741
	.sleb128 516
	.uleb128 0x8
	.4byte	.LASF742
	.sleb128 517
	.uleb128 0x8
	.4byte	.LASF743
	.sleb128 518
	.uleb128 0x8
	.4byte	.LASF744
	.sleb128 519
	.uleb128 0x8
	.4byte	.LASF745
	.sleb128 520
	.uleb128 0x8
	.4byte	.LASF746
	.sleb128 521
	.uleb128 0x8
	.4byte	.LASF747
	.sleb128 522
	.uleb128 0x8
	.4byte	.LASF748
	.sleb128 523
	.uleb128 0x8
	.4byte	.LASF749
	.sleb128 524
	.uleb128 0x8
	.4byte	.LASF750
	.sleb128 525
	.uleb128 0x8
	.4byte	.LASF751
	.sleb128 526
	.uleb128 0x8
	.4byte	.LASF752
	.sleb128 527
	.uleb128 0x8
	.4byte	.LASF753
	.sleb128 528
	.uleb128 0x8
	.4byte	.LASF754
	.sleb128 529
	.uleb128 0x8
	.4byte	.LASF755
	.sleb128 530
	.uleb128 0x8
	.4byte	.LASF756
	.sleb128 531
	.uleb128 0x8
	.4byte	.LASF757
	.sleb128 532
	.uleb128 0x8
	.4byte	.LASF758
	.sleb128 533
	.uleb128 0x8
	.4byte	.LASF759
	.sleb128 534
	.uleb128 0x8
	.4byte	.LASF760
	.sleb128 535
	.uleb128 0x8
	.4byte	.LASF761
	.sleb128 536
	.uleb128 0x8
	.4byte	.LASF762
	.sleb128 537
	.uleb128 0x8
	.4byte	.LASF763
	.sleb128 538
	.uleb128 0x8
	.4byte	.LASF764
	.sleb128 539
	.uleb128 0x8
	.4byte	.LASF765
	.sleb128 540
	.uleb128 0x8
	.4byte	.LASF766
	.sleb128 541
	.uleb128 0x8
	.4byte	.LASF767
	.sleb128 542
	.uleb128 0x8
	.4byte	.LASF768
	.sleb128 543
	.uleb128 0x8
	.4byte	.LASF769
	.sleb128 544
	.uleb128 0x8
	.4byte	.LASF770
	.sleb128 545
	.uleb128 0x8
	.4byte	.LASF771
	.sleb128 546
	.uleb128 0x8
	.4byte	.LASF772
	.sleb128 547
	.uleb128 0x8
	.4byte	.LASF773
	.sleb128 548
	.uleb128 0x8
	.4byte	.LASF774
	.sleb128 549
	.uleb128 0x8
	.4byte	.LASF775
	.sleb128 550
	.uleb128 0x8
	.4byte	.LASF776
	.sleb128 551
	.uleb128 0x8
	.4byte	.LASF777
	.sleb128 552
	.uleb128 0x8
	.4byte	.LASF778
	.sleb128 553
	.uleb128 0x8
	.4byte	.LASF779
	.sleb128 554
	.uleb128 0x8
	.4byte	.LASF780
	.sleb128 555
	.uleb128 0x8
	.4byte	.LASF781
	.sleb128 556
	.uleb128 0x8
	.4byte	.LASF782
	.sleb128 557
	.uleb128 0x8
	.4byte	.LASF783
	.sleb128 558
	.uleb128 0x8
	.4byte	.LASF784
	.sleb128 559
	.uleb128 0x8
	.4byte	.LASF785
	.sleb128 560
	.uleb128 0x8
	.4byte	.LASF786
	.sleb128 561
	.uleb128 0x8
	.4byte	.LASF787
	.sleb128 562
	.uleb128 0x8
	.4byte	.LASF788
	.sleb128 563
	.uleb128 0x8
	.4byte	.LASF789
	.sleb128 564
	.uleb128 0x8
	.4byte	.LASF790
	.sleb128 565
	.uleb128 0x8
	.4byte	.LASF791
	.sleb128 566
	.uleb128 0x8
	.4byte	.LASF792
	.sleb128 567
	.uleb128 0x8
	.4byte	.LASF793
	.sleb128 568
	.uleb128 0x8
	.4byte	.LASF794
	.sleb128 569
	.uleb128 0x8
	.4byte	.LASF795
	.sleb128 570
	.uleb128 0x8
	.4byte	.LASF796
	.sleb128 571
	.uleb128 0x8
	.4byte	.LASF797
	.sleb128 572
	.uleb128 0x8
	.4byte	.LASF798
	.sleb128 573
	.uleb128 0x8
	.4byte	.LASF799
	.sleb128 574
	.uleb128 0x8
	.4byte	.LASF800
	.sleb128 575
	.uleb128 0x8
	.4byte	.LASF801
	.sleb128 576
	.uleb128 0x8
	.4byte	.LASF802
	.sleb128 577
	.uleb128 0x8
	.4byte	.LASF803
	.sleb128 578
	.uleb128 0x8
	.4byte	.LASF804
	.sleb128 579
	.uleb128 0x8
	.4byte	.LASF805
	.sleb128 580
	.uleb128 0x8
	.4byte	.LASF806
	.sleb128 581
	.uleb128 0x8
	.4byte	.LASF807
	.sleb128 582
	.uleb128 0x8
	.4byte	.LASF808
	.sleb128 583
	.uleb128 0x8
	.4byte	.LASF809
	.sleb128 584
	.uleb128 0x8
	.4byte	.LASF810
	.sleb128 585
	.uleb128 0x8
	.4byte	.LASF811
	.sleb128 586
	.uleb128 0x8
	.4byte	.LASF812
	.sleb128 587
	.uleb128 0x8
	.4byte	.LASF813
	.sleb128 588
	.uleb128 0x8
	.4byte	.LASF814
	.sleb128 589
	.uleb128 0x8
	.4byte	.LASF815
	.sleb128 590
	.uleb128 0x8
	.4byte	.LASF816
	.sleb128 591
	.uleb128 0x8
	.4byte	.LASF817
	.sleb128 592
	.uleb128 0x8
	.4byte	.LASF818
	.sleb128 593
	.uleb128 0x8
	.4byte	.LASF819
	.sleb128 594
	.uleb128 0x8
	.4byte	.LASF820
	.sleb128 595
	.uleb128 0x8
	.4byte	.LASF821
	.sleb128 596
	.uleb128 0x8
	.4byte	.LASF822
	.sleb128 597
	.uleb128 0x8
	.4byte	.LASF823
	.sleb128 598
	.uleb128 0x8
	.4byte	.LASF824
	.sleb128 599
	.uleb128 0x8
	.4byte	.LASF825
	.sleb128 600
	.uleb128 0x8
	.4byte	.LASF826
	.sleb128 601
	.uleb128 0x8
	.4byte	.LASF827
	.sleb128 602
	.uleb128 0x8
	.4byte	.LASF828
	.sleb128 603
	.uleb128 0x8
	.4byte	.LASF829
	.sleb128 604
	.uleb128 0x8
	.4byte	.LASF830
	.sleb128 605
	.uleb128 0x8
	.4byte	.LASF831
	.sleb128 606
	.uleb128 0x8
	.4byte	.LASF832
	.sleb128 607
	.uleb128 0x8
	.4byte	.LASF833
	.sleb128 608
	.uleb128 0x8
	.4byte	.LASF834
	.sleb128 609
	.uleb128 0x8
	.4byte	.LASF835
	.sleb128 610
	.uleb128 0x8
	.4byte	.LASF836
	.sleb128 611
	.uleb128 0x8
	.4byte	.LASF837
	.sleb128 612
	.uleb128 0x8
	.4byte	.LASF838
	.sleb128 613
	.uleb128 0x8
	.4byte	.LASF839
	.sleb128 614
	.uleb128 0x8
	.4byte	.LASF840
	.sleb128 615
	.uleb128 0x8
	.4byte	.LASF841
	.sleb128 616
	.uleb128 0x8
	.4byte	.LASF842
	.sleb128 617
	.uleb128 0x8
	.4byte	.LASF843
	.sleb128 618
	.uleb128 0x8
	.4byte	.LASF844
	.sleb128 619
	.uleb128 0x8
	.4byte	.LASF845
	.sleb128 620
	.uleb128 0x8
	.4byte	.LASF846
	.sleb128 621
	.uleb128 0x8
	.4byte	.LASF847
	.sleb128 622
	.uleb128 0x8
	.4byte	.LASF848
	.sleb128 623
	.uleb128 0x8
	.4byte	.LASF849
	.sleb128 624
	.uleb128 0x8
	.4byte	.LASF850
	.sleb128 625
	.uleb128 0x8
	.4byte	.LASF851
	.sleb128 626
	.uleb128 0x8
	.4byte	.LASF852
	.sleb128 627
	.uleb128 0x8
	.4byte	.LASF853
	.sleb128 628
	.uleb128 0x8
	.4byte	.LASF854
	.sleb128 629
	.uleb128 0x8
	.4byte	.LASF855
	.sleb128 630
	.uleb128 0x8
	.4byte	.LASF856
	.sleb128 631
	.uleb128 0x8
	.4byte	.LASF857
	.sleb128 632
	.uleb128 0x8
	.4byte	.LASF858
	.sleb128 633
	.uleb128 0x8
	.4byte	.LASF859
	.sleb128 634
	.uleb128 0x8
	.4byte	.LASF860
	.sleb128 635
	.uleb128 0x8
	.4byte	.LASF861
	.sleb128 636
	.uleb128 0x8
	.4byte	.LASF862
	.sleb128 637
	.uleb128 0x8
	.4byte	.LASF863
	.sleb128 638
	.uleb128 0x8
	.4byte	.LASF864
	.sleb128 639
	.uleb128 0x8
	.4byte	.LASF865
	.sleb128 640
	.uleb128 0x8
	.4byte	.LASF866
	.sleb128 641
	.uleb128 0x8
	.4byte	.LASF867
	.sleb128 642
	.uleb128 0x8
	.4byte	.LASF868
	.sleb128 643
	.uleb128 0x8
	.4byte	.LASF869
	.sleb128 644
	.uleb128 0x8
	.4byte	.LASF870
	.sleb128 645
	.uleb128 0x8
	.4byte	.LASF871
	.sleb128 646
	.uleb128 0x8
	.4byte	.LASF872
	.sleb128 647
	.uleb128 0x8
	.4byte	.LASF873
	.sleb128 648
	.uleb128 0x8
	.4byte	.LASF874
	.sleb128 649
	.uleb128 0x8
	.4byte	.LASF875
	.sleb128 650
	.uleb128 0x8
	.4byte	.LASF876
	.sleb128 651
	.uleb128 0x8
	.4byte	.LASF877
	.sleb128 652
	.uleb128 0x8
	.4byte	.LASF878
	.sleb128 653
	.uleb128 0x8
	.4byte	.LASF879
	.sleb128 654
	.uleb128 0x8
	.4byte	.LASF880
	.sleb128 655
	.uleb128 0x8
	.4byte	.LASF881
	.sleb128 656
	.uleb128 0x8
	.4byte	.LASF882
	.sleb128 657
	.uleb128 0x8
	.4byte	.LASF883
	.sleb128 658
	.uleb128 0x8
	.4byte	.LASF884
	.sleb128 659
	.uleb128 0x8
	.4byte	.LASF885
	.sleb128 660
	.uleb128 0x8
	.4byte	.LASF886
	.sleb128 661
	.uleb128 0x8
	.4byte	.LASF887
	.sleb128 662
	.uleb128 0x8
	.4byte	.LASF888
	.sleb128 663
	.uleb128 0x8
	.4byte	.LASF889
	.sleb128 664
	.uleb128 0x8
	.4byte	.LASF890
	.sleb128 665
	.uleb128 0x8
	.4byte	.LASF891
	.sleb128 666
	.uleb128 0x8
	.4byte	.LASF892
	.sleb128 667
	.uleb128 0x8
	.4byte	.LASF893
	.sleb128 668
	.uleb128 0x8
	.4byte	.LASF894
	.sleb128 669
	.uleb128 0x8
	.4byte	.LASF895
	.sleb128 670
	.uleb128 0x8
	.4byte	.LASF896
	.sleb128 671
	.uleb128 0x8
	.4byte	.LASF897
	.sleb128 672
	.uleb128 0x8
	.4byte	.LASF898
	.sleb128 673
	.uleb128 0x8
	.4byte	.LASF899
	.sleb128 674
	.uleb128 0x8
	.4byte	.LASF900
	.sleb128 675
	.uleb128 0x8
	.4byte	.LASF901
	.sleb128 676
	.uleb128 0x8
	.4byte	.LASF902
	.sleb128 677
	.uleb128 0x8
	.4byte	.LASF903
	.sleb128 678
	.uleb128 0x8
	.4byte	.LASF904
	.sleb128 679
	.uleb128 0x8
	.4byte	.LASF905
	.sleb128 680
	.uleb128 0x8
	.4byte	.LASF906
	.sleb128 681
	.uleb128 0x8
	.4byte	.LASF907
	.sleb128 682
	.uleb128 0x8
	.4byte	.LASF908
	.sleb128 683
	.uleb128 0x8
	.4byte	.LASF909
	.sleb128 684
	.uleb128 0x8
	.4byte	.LASF910
	.sleb128 685
	.uleb128 0x8
	.4byte	.LASF911
	.sleb128 686
	.uleb128 0x8
	.4byte	.LASF912
	.sleb128 687
	.uleb128 0x8
	.4byte	.LASF913
	.sleb128 688
	.uleb128 0x8
	.4byte	.LASF914
	.sleb128 689
	.uleb128 0x8
	.4byte	.LASF915
	.sleb128 690
	.uleb128 0x8
	.4byte	.LASF916
	.sleb128 691
	.uleb128 0x8
	.4byte	.LASF917
	.sleb128 692
	.uleb128 0x8
	.4byte	.LASF918
	.sleb128 693
	.uleb128 0x8
	.4byte	.LASF919
	.sleb128 694
	.uleb128 0x8
	.4byte	.LASF920
	.sleb128 695
	.uleb128 0x8
	.4byte	.LASF921
	.sleb128 696
	.uleb128 0x8
	.4byte	.LASF922
	.sleb128 697
	.uleb128 0x8
	.4byte	.LASF923
	.sleb128 698
	.uleb128 0x8
	.4byte	.LASF924
	.sleb128 699
	.uleb128 0x8
	.4byte	.LASF925
	.sleb128 700
	.uleb128 0x8
	.4byte	.LASF926
	.sleb128 701
	.uleb128 0x8
	.4byte	.LASF927
	.sleb128 702
	.uleb128 0x8
	.4byte	.LASF928
	.sleb128 703
	.uleb128 0x8
	.4byte	.LASF929
	.sleb128 704
	.uleb128 0x8
	.4byte	.LASF930
	.sleb128 705
	.uleb128 0x8
	.4byte	.LASF931
	.sleb128 706
	.uleb128 0x8
	.4byte	.LASF932
	.sleb128 707
	.uleb128 0x8
	.4byte	.LASF933
	.sleb128 708
	.uleb128 0x8
	.4byte	.LASF934
	.sleb128 709
	.uleb128 0x8
	.4byte	.LASF935
	.sleb128 710
	.uleb128 0x8
	.4byte	.LASF936
	.sleb128 711
	.uleb128 0x8
	.4byte	.LASF937
	.sleb128 712
	.uleb128 0x8
	.4byte	.LASF938
	.sleb128 713
	.uleb128 0x8
	.4byte	.LASF939
	.sleb128 714
	.uleb128 0x8
	.4byte	.LASF940
	.sleb128 715
	.uleb128 0x8
	.4byte	.LASF941
	.sleb128 716
	.uleb128 0x8
	.4byte	.LASF942
	.sleb128 717
	.uleb128 0x8
	.4byte	.LASF943
	.sleb128 718
	.uleb128 0x8
	.4byte	.LASF944
	.sleb128 719
	.uleb128 0x8
	.4byte	.LASF945
	.sleb128 720
	.uleb128 0x8
	.4byte	.LASF946
	.sleb128 721
	.uleb128 0x8
	.4byte	.LASF947
	.sleb128 722
	.uleb128 0x8
	.4byte	.LASF948
	.sleb128 723
	.uleb128 0x8
	.4byte	.LASF949
	.sleb128 724
	.uleb128 0x8
	.4byte	.LASF950
	.sleb128 725
	.uleb128 0x8
	.4byte	.LASF951
	.sleb128 726
	.uleb128 0x8
	.4byte	.LASF952
	.sleb128 727
	.uleb128 0x8
	.4byte	.LASF953
	.sleb128 728
	.uleb128 0x8
	.4byte	.LASF954
	.sleb128 729
	.uleb128 0x8
	.4byte	.LASF955
	.sleb128 730
	.uleb128 0x8
	.4byte	.LASF956
	.sleb128 731
	.uleb128 0x8
	.4byte	.LASF957
	.sleb128 732
	.uleb128 0x8
	.4byte	.LASF958
	.sleb128 733
	.uleb128 0x8
	.4byte	.LASF959
	.sleb128 734
	.uleb128 0x8
	.4byte	.LASF960
	.sleb128 735
	.uleb128 0x8
	.4byte	.LASF961
	.sleb128 736
	.uleb128 0x8
	.4byte	.LASF962
	.sleb128 737
	.uleb128 0x8
	.4byte	.LASF963
	.sleb128 738
	.uleb128 0x8
	.4byte	.LASF964
	.sleb128 739
	.uleb128 0x8
	.4byte	.LASF965
	.sleb128 740
	.uleb128 0x8
	.4byte	.LASF966
	.sleb128 741
	.uleb128 0x8
	.4byte	.LASF967
	.sleb128 742
	.uleb128 0x8
	.4byte	.LASF968
	.sleb128 743
	.uleb128 0x8
	.4byte	.LASF969
	.sleb128 744
	.uleb128 0x8
	.4byte	.LASF970
	.sleb128 745
	.uleb128 0x8
	.4byte	.LASF971
	.sleb128 746
	.uleb128 0x8
	.4byte	.LASF972
	.sleb128 747
	.uleb128 0x8
	.4byte	.LASF973
	.sleb128 748
	.uleb128 0x8
	.4byte	.LASF974
	.sleb128 749
	.uleb128 0x8
	.4byte	.LASF975
	.sleb128 750
	.uleb128 0x8
	.4byte	.LASF976
	.sleb128 751
	.uleb128 0x8
	.4byte	.LASF977
	.sleb128 752
	.uleb128 0x8
	.4byte	.LASF978
	.sleb128 753
	.uleb128 0x8
	.4byte	.LASF979
	.sleb128 754
	.uleb128 0x8
	.4byte	.LASF980
	.sleb128 755
	.uleb128 0x8
	.4byte	.LASF981
	.sleb128 756
	.uleb128 0x8
	.4byte	.LASF982
	.sleb128 757
	.uleb128 0x8
	.4byte	.LASF983
	.sleb128 758
	.uleb128 0x8
	.4byte	.LASF984
	.sleb128 759
	.uleb128 0x8
	.4byte	.LASF985
	.sleb128 760
	.uleb128 0x8
	.4byte	.LASF986
	.sleb128 761
	.uleb128 0x8
	.4byte	.LASF987
	.sleb128 762
	.uleb128 0x8
	.4byte	.LASF988
	.sleb128 763
	.uleb128 0x8
	.4byte	.LASF989
	.sleb128 764
	.uleb128 0x8
	.4byte	.LASF990
	.sleb128 765
	.uleb128 0x8
	.4byte	.LASF991
	.sleb128 766
	.uleb128 0x8
	.4byte	.LASF992
	.sleb128 767
	.uleb128 0x8
	.4byte	.LASF993
	.sleb128 768
	.uleb128 0x8
	.4byte	.LASF994
	.sleb128 769
	.uleb128 0x8
	.4byte	.LASF995
	.sleb128 770
	.uleb128 0x8
	.4byte	.LASF996
	.sleb128 771
	.uleb128 0x8
	.4byte	.LASF997
	.sleb128 772
	.uleb128 0x8
	.4byte	.LASF998
	.sleb128 773
	.uleb128 0x8
	.4byte	.LASF999
	.sleb128 774
	.uleb128 0x8
	.4byte	.LASF1000
	.sleb128 775
	.uleb128 0x8
	.4byte	.LASF1001
	.sleb128 776
	.uleb128 0x8
	.4byte	.LASF1002
	.sleb128 777
	.uleb128 0x8
	.4byte	.LASF1003
	.sleb128 778
	.uleb128 0x8
	.4byte	.LASF1004
	.sleb128 779
	.uleb128 0x8
	.4byte	.LASF1005
	.sleb128 780
	.uleb128 0x8
	.4byte	.LASF1006
	.sleb128 781
	.uleb128 0x8
	.4byte	.LASF1007
	.sleb128 782
	.uleb128 0x8
	.4byte	.LASF1008
	.sleb128 783
	.uleb128 0x8
	.4byte	.LASF1009
	.sleb128 784
	.uleb128 0x8
	.4byte	.LASF1010
	.sleb128 785
	.uleb128 0x8
	.4byte	.LASF1011
	.sleb128 786
	.uleb128 0x8
	.4byte	.LASF1012
	.sleb128 787
	.uleb128 0x8
	.4byte	.LASF1013
	.sleb128 788
	.uleb128 0x8
	.4byte	.LASF1014
	.sleb128 789
	.uleb128 0x8
	.4byte	.LASF1015
	.sleb128 790
	.uleb128 0x8
	.4byte	.LASF1016
	.sleb128 791
	.uleb128 0x8
	.4byte	.LASF1017
	.sleb128 792
	.uleb128 0x8
	.4byte	.LASF1018
	.sleb128 793
	.uleb128 0x8
	.4byte	.LASF1019
	.sleb128 794
	.uleb128 0x8
	.4byte	.LASF1020
	.sleb128 795
	.uleb128 0x8
	.4byte	.LASF1021
	.sleb128 796
	.uleb128 0x8
	.4byte	.LASF1022
	.sleb128 797
	.uleb128 0x8
	.4byte	.LASF1023
	.sleb128 798
	.uleb128 0x8
	.4byte	.LASF1024
	.sleb128 799
	.uleb128 0x8
	.4byte	.LASF1025
	.sleb128 800
	.uleb128 0x8
	.4byte	.LASF1026
	.sleb128 801
	.uleb128 0x8
	.4byte	.LASF1027
	.sleb128 802
	.uleb128 0x8
	.4byte	.LASF1028
	.sleb128 803
	.uleb128 0x8
	.4byte	.LASF1029
	.sleb128 804
	.uleb128 0x8
	.4byte	.LASF1030
	.sleb128 805
	.uleb128 0x8
	.4byte	.LASF1031
	.sleb128 806
	.uleb128 0x8
	.4byte	.LASF1032
	.sleb128 807
	.uleb128 0x8
	.4byte	.LASF1033
	.sleb128 808
	.uleb128 0x8
	.4byte	.LASF1034
	.sleb128 809
	.uleb128 0x8
	.4byte	.LASF1035
	.sleb128 810
	.uleb128 0x8
	.4byte	.LASF1036
	.sleb128 811
	.uleb128 0x8
	.4byte	.LASF1037
	.sleb128 812
	.uleb128 0x8
	.4byte	.LASF1038
	.sleb128 813
	.uleb128 0x8
	.4byte	.LASF1039
	.sleb128 814
	.uleb128 0x8
	.4byte	.LASF1040
	.sleb128 815
	.uleb128 0x8
	.4byte	.LASF1041
	.sleb128 816
	.uleb128 0x8
	.4byte	.LASF1042
	.sleb128 817
	.uleb128 0x8
	.4byte	.LASF1043
	.sleb128 818
	.uleb128 0x8
	.4byte	.LASF1044
	.sleb128 819
	.uleb128 0x8
	.4byte	.LASF1045
	.sleb128 820
	.uleb128 0x8
	.4byte	.LASF1046
	.sleb128 821
	.uleb128 0x8
	.4byte	.LASF1047
	.sleb128 822
	.uleb128 0x8
	.4byte	.LASF1048
	.sleb128 823
	.uleb128 0x8
	.4byte	.LASF1049
	.sleb128 824
	.uleb128 0x8
	.4byte	.LASF1050
	.sleb128 825
	.uleb128 0x8
	.4byte	.LASF1051
	.sleb128 826
	.uleb128 0x8
	.4byte	.LASF1052
	.sleb128 827
	.uleb128 0x8
	.4byte	.LASF1053
	.sleb128 828
	.uleb128 0x8
	.4byte	.LASF1054
	.sleb128 829
	.uleb128 0x8
	.4byte	.LASF1055
	.sleb128 830
	.uleb128 0x8
	.4byte	.LASF1056
	.sleb128 831
	.uleb128 0x8
	.4byte	.LASF1057
	.sleb128 832
	.uleb128 0x8
	.4byte	.LASF1058
	.sleb128 833
	.uleb128 0x8
	.4byte	.LASF1059
	.sleb128 834
	.uleb128 0x8
	.4byte	.LASF1060
	.sleb128 835
	.uleb128 0x8
	.4byte	.LASF1061
	.sleb128 836
	.uleb128 0x8
	.4byte	.LASF1062
	.sleb128 837
	.uleb128 0x8
	.4byte	.LASF1063
	.sleb128 838
	.uleb128 0x8
	.4byte	.LASF1064
	.sleb128 839
	.uleb128 0x8
	.4byte	.LASF1065
	.sleb128 840
	.uleb128 0x8
	.4byte	.LASF1066
	.sleb128 841
	.uleb128 0x8
	.4byte	.LASF1067
	.sleb128 842
	.uleb128 0x8
	.4byte	.LASF1068
	.sleb128 843
	.uleb128 0x8
	.4byte	.LASF1069
	.sleb128 844
	.uleb128 0x8
	.4byte	.LASF1070
	.sleb128 845
	.uleb128 0x8
	.4byte	.LASF1071
	.sleb128 846
	.uleb128 0x8
	.4byte	.LASF1072
	.sleb128 847
	.uleb128 0x8
	.4byte	.LASF1073
	.sleb128 848
	.uleb128 0x8
	.4byte	.LASF1074
	.sleb128 849
	.uleb128 0x8
	.4byte	.LASF1075
	.sleb128 850
	.uleb128 0x8
	.4byte	.LASF1076
	.sleb128 851
	.uleb128 0x8
	.4byte	.LASF1077
	.sleb128 852
	.uleb128 0x8
	.4byte	.LASF1078
	.sleb128 853
	.uleb128 0x8
	.4byte	.LASF1079
	.sleb128 854
	.uleb128 0x8
	.4byte	.LASF1080
	.sleb128 855
	.uleb128 0x8
	.4byte	.LASF1081
	.sleb128 856
	.uleb128 0x8
	.4byte	.LASF1082
	.sleb128 857
	.uleb128 0x8
	.4byte	.LASF1083
	.sleb128 858
	.uleb128 0x8
	.4byte	.LASF1084
	.sleb128 859
	.uleb128 0x8
	.4byte	.LASF1085
	.sleb128 860
	.uleb128 0x8
	.4byte	.LASF1086
	.sleb128 861
	.uleb128 0x8
	.4byte	.LASF1087
	.sleb128 862
	.uleb128 0x8
	.4byte	.LASF1088
	.sleb128 863
	.uleb128 0x8
	.4byte	.LASF1089
	.sleb128 864
	.uleb128 0x8
	.4byte	.LASF1090
	.sleb128 865
	.uleb128 0x8
	.4byte	.LASF1091
	.sleb128 866
	.uleb128 0x8
	.4byte	.LASF1092
	.sleb128 867
	.uleb128 0x8
	.4byte	.LASF1093
	.sleb128 868
	.uleb128 0x8
	.4byte	.LASF1094
	.sleb128 869
	.uleb128 0x8
	.4byte	.LASF1095
	.sleb128 870
	.uleb128 0x8
	.4byte	.LASF1096
	.sleb128 871
	.uleb128 0x8
	.4byte	.LASF1097
	.sleb128 872
	.uleb128 0x8
	.4byte	.LASF1098
	.sleb128 873
	.uleb128 0x8
	.4byte	.LASF1099
	.sleb128 874
	.uleb128 0x8
	.4byte	.LASF1100
	.sleb128 875
	.uleb128 0x8
	.4byte	.LASF1101
	.sleb128 876
	.uleb128 0x8
	.4byte	.LASF1102
	.sleb128 877
	.uleb128 0x8
	.4byte	.LASF1103
	.sleb128 878
	.uleb128 0x8
	.4byte	.LASF1104
	.sleb128 879
	.uleb128 0x8
	.4byte	.LASF1105
	.sleb128 880
	.uleb128 0x8
	.4byte	.LASF1106
	.sleb128 881
	.uleb128 0x8
	.4byte	.LASF1107
	.sleb128 882
	.uleb128 0x8
	.4byte	.LASF1108
	.sleb128 883
	.uleb128 0x8
	.4byte	.LASF1109
	.sleb128 884
	.uleb128 0x8
	.4byte	.LASF1110
	.sleb128 885
	.uleb128 0x8
	.4byte	.LASF1111
	.sleb128 886
	.uleb128 0x8
	.4byte	.LASF1112
	.sleb128 887
	.uleb128 0x8
	.4byte	.LASF1113
	.sleb128 888
	.uleb128 0x8
	.4byte	.LASF1114
	.sleb128 889
	.uleb128 0x8
	.4byte	.LASF1115
	.sleb128 890
	.uleb128 0x8
	.4byte	.LASF1116
	.sleb128 891
	.uleb128 0x8
	.4byte	.LASF1117
	.sleb128 892
	.uleb128 0x8
	.4byte	.LASF1118
	.sleb128 893
	.uleb128 0x8
	.4byte	.LASF1119
	.sleb128 894
	.uleb128 0x8
	.4byte	.LASF1120
	.sleb128 895
	.uleb128 0x8
	.4byte	.LASF1121
	.sleb128 896
	.uleb128 0x8
	.4byte	.LASF1122
	.sleb128 897
	.uleb128 0x8
	.4byte	.LASF1123
	.sleb128 898
	.uleb128 0x8
	.4byte	.LASF1124
	.sleb128 899
	.uleb128 0x8
	.4byte	.LASF1125
	.sleb128 900
	.uleb128 0x8
	.4byte	.LASF1126
	.sleb128 901
	.uleb128 0x8
	.4byte	.LASF1127
	.sleb128 902
	.uleb128 0x8
	.4byte	.LASF1128
	.sleb128 903
	.uleb128 0x8
	.4byte	.LASF1129
	.sleb128 904
	.uleb128 0x8
	.4byte	.LASF1130
	.sleb128 905
	.uleb128 0x8
	.4byte	.LASF1131
	.sleb128 906
	.uleb128 0x8
	.4byte	.LASF1132
	.sleb128 907
	.uleb128 0x8
	.4byte	.LASF1133
	.sleb128 908
	.uleb128 0x8
	.4byte	.LASF1134
	.sleb128 909
	.uleb128 0x8
	.4byte	.LASF1135
	.sleb128 910
	.uleb128 0x8
	.4byte	.LASF1136
	.sleb128 911
	.uleb128 0x8
	.4byte	.LASF1137
	.sleb128 912
	.uleb128 0x8
	.4byte	.LASF1138
	.sleb128 913
	.uleb128 0x8
	.4byte	.LASF1139
	.sleb128 914
	.uleb128 0x8
	.4byte	.LASF1140
	.sleb128 915
	.uleb128 0x8
	.4byte	.LASF1141
	.sleb128 916
	.uleb128 0x8
	.4byte	.LASF1142
	.sleb128 917
	.uleb128 0x8
	.4byte	.LASF1143
	.sleb128 918
	.uleb128 0x8
	.4byte	.LASF1144
	.sleb128 919
	.uleb128 0x8
	.4byte	.LASF1145
	.sleb128 920
	.uleb128 0x8
	.4byte	.LASF1146
	.sleb128 921
	.uleb128 0x8
	.4byte	.LASF1147
	.sleb128 922
	.uleb128 0x8
	.4byte	.LASF1148
	.sleb128 923
	.uleb128 0x8
	.4byte	.LASF1149
	.sleb128 924
	.uleb128 0x8
	.4byte	.LASF1150
	.sleb128 925
	.uleb128 0x8
	.4byte	.LASF1151
	.sleb128 926
	.uleb128 0x8
	.4byte	.LASF1152
	.sleb128 927
	.uleb128 0x8
	.4byte	.LASF1153
	.sleb128 928
	.uleb128 0x8
	.4byte	.LASF1154
	.sleb128 929
	.uleb128 0x8
	.4byte	.LASF1155
	.sleb128 930
	.uleb128 0x8
	.4byte	.LASF1156
	.sleb128 931
	.uleb128 0x8
	.4byte	.LASF1157
	.sleb128 932
	.uleb128 0x8
	.4byte	.LASF1158
	.sleb128 933
	.uleb128 0x8
	.4byte	.LASF1159
	.sleb128 934
	.uleb128 0x8
	.4byte	.LASF1160
	.sleb128 935
	.uleb128 0x8
	.4byte	.LASF1161
	.sleb128 936
	.uleb128 0x8
	.4byte	.LASF1162
	.sleb128 937
	.uleb128 0x8
	.4byte	.LASF1163
	.sleb128 938
	.uleb128 0x8
	.4byte	.LASF1164
	.sleb128 939
	.uleb128 0x8
	.4byte	.LASF1165
	.sleb128 940
	.uleb128 0x8
	.4byte	.LASF1166
	.sleb128 941
	.uleb128 0x8
	.4byte	.LASF1167
	.sleb128 942
	.uleb128 0x8
	.4byte	.LASF1168
	.sleb128 943
	.uleb128 0x8
	.4byte	.LASF1169
	.sleb128 944
	.uleb128 0x8
	.4byte	.LASF1170
	.sleb128 945
	.uleb128 0x8
	.4byte	.LASF1171
	.sleb128 946
	.uleb128 0x8
	.4byte	.LASF1172
	.sleb128 947
	.uleb128 0x8
	.4byte	.LASF1173
	.sleb128 948
	.uleb128 0x8
	.4byte	.LASF1174
	.sleb128 949
	.uleb128 0x8
	.4byte	.LASF1175
	.sleb128 950
	.uleb128 0x8
	.4byte	.LASF1176
	.sleb128 951
	.uleb128 0x8
	.4byte	.LASF1177
	.sleb128 952
	.uleb128 0x8
	.4byte	.LASF1178
	.sleb128 953
	.uleb128 0x8
	.4byte	.LASF1179
	.sleb128 954
	.uleb128 0x8
	.4byte	.LASF1180
	.sleb128 955
	.uleb128 0x8
	.4byte	.LASF1181
	.sleb128 956
	.uleb128 0x8
	.4byte	.LASF1182
	.sleb128 957
	.uleb128 0x8
	.4byte	.LASF1183
	.sleb128 958
	.uleb128 0x8
	.4byte	.LASF1184
	.sleb128 959
	.uleb128 0x8
	.4byte	.LASF1185
	.sleb128 960
	.uleb128 0x8
	.4byte	.LASF1186
	.sleb128 961
	.uleb128 0x8
	.4byte	.LASF1187
	.sleb128 962
	.uleb128 0x8
	.4byte	.LASF1188
	.sleb128 963
	.uleb128 0x8
	.4byte	.LASF1189
	.sleb128 964
	.uleb128 0x8
	.4byte	.LASF1190
	.sleb128 965
	.uleb128 0x8
	.4byte	.LASF1191
	.sleb128 966
	.uleb128 0x8
	.4byte	.LASF1192
	.sleb128 967
	.uleb128 0x8
	.4byte	.LASF1193
	.sleb128 968
	.uleb128 0x8
	.4byte	.LASF1194
	.sleb128 969
	.uleb128 0x8
	.4byte	.LASF1195
	.sleb128 970
	.uleb128 0x8
	.4byte	.LASF1196
	.sleb128 971
	.uleb128 0x8
	.4byte	.LASF1197
	.sleb128 972
	.uleb128 0x8
	.4byte	.LASF1198
	.sleb128 973
	.uleb128 0x8
	.4byte	.LASF1199
	.sleb128 974
	.uleb128 0x8
	.4byte	.LASF1200
	.sleb128 975
	.uleb128 0x8
	.4byte	.LASF1201
	.sleb128 976
	.uleb128 0x8
	.4byte	.LASF1202
	.sleb128 977
	.uleb128 0x8
	.4byte	.LASF1203
	.sleb128 978
	.uleb128 0x8
	.4byte	.LASF1204
	.sleb128 979
	.uleb128 0x8
	.4byte	.LASF1205
	.sleb128 980
	.uleb128 0x8
	.4byte	.LASF1206
	.sleb128 981
	.uleb128 0x8
	.4byte	.LASF1207
	.sleb128 982
	.uleb128 0x8
	.4byte	.LASF1208
	.sleb128 983
	.uleb128 0x8
	.4byte	.LASF1209
	.sleb128 984
	.uleb128 0x8
	.4byte	.LASF1210
	.sleb128 985
	.uleb128 0x8
	.4byte	.LASF1211
	.sleb128 986
	.uleb128 0x8
	.4byte	.LASF1212
	.sleb128 987
	.uleb128 0x8
	.4byte	.LASF1213
	.sleb128 988
	.uleb128 0x8
	.4byte	.LASF1214
	.sleb128 989
	.uleb128 0x8
	.4byte	.LASF1215
	.sleb128 990
	.uleb128 0x8
	.4byte	.LASF1216
	.sleb128 991
	.uleb128 0x8
	.4byte	.LASF1217
	.sleb128 992
	.uleb128 0x8
	.4byte	.LASF1218
	.sleb128 993
	.uleb128 0x8
	.4byte	.LASF1219
	.sleb128 994
	.uleb128 0x8
	.4byte	.LASF1220
	.sleb128 995
	.uleb128 0x8
	.4byte	.LASF1221
	.sleb128 996
	.uleb128 0x8
	.4byte	.LASF1222
	.sleb128 997
	.uleb128 0x8
	.4byte	.LASF1223
	.sleb128 998
	.uleb128 0x8
	.4byte	.LASF1224
	.sleb128 999
	.uleb128 0x8
	.4byte	.LASF1225
	.sleb128 1040
	.uleb128 0x8
	.4byte	.LASF1226
	.sleb128 1041
	.uleb128 0x8
	.4byte	.LASF1227
	.sleb128 1042
	.uleb128 0x8
	.4byte	.LASF1228
	.sleb128 1043
	.uleb128 0x8
	.4byte	.LASF1229
	.sleb128 1044
	.uleb128 0x8
	.4byte	.LASF1230
	.sleb128 1045
	.uleb128 0x8
	.4byte	.LASF1231
	.sleb128 1046
	.uleb128 0x8
	.4byte	.LASF1232
	.sleb128 1047
	.uleb128 0x8
	.4byte	.LASF1233
	.sleb128 1048
	.uleb128 0x8
	.4byte	.LASF1234
	.sleb128 1049
	.uleb128 0x8
	.4byte	.LASF1235
	.sleb128 1050
	.uleb128 0x8
	.4byte	.LASF1236
	.sleb128 1051
	.uleb128 0x8
	.4byte	.LASF1237
	.sleb128 1052
	.uleb128 0x8
	.4byte	.LASF1238
	.sleb128 1053
	.uleb128 0x8
	.4byte	.LASF1239
	.sleb128 1054
	.uleb128 0x8
	.4byte	.LASF1240
	.sleb128 1055
	.uleb128 0x8
	.4byte	.LASF1241
	.sleb128 1056
	.uleb128 0x8
	.4byte	.LASF1242
	.sleb128 1057
	.uleb128 0x8
	.4byte	.LASF1243
	.sleb128 1058
	.uleb128 0x8
	.4byte	.LASF1244
	.sleb128 1059
	.uleb128 0x8
	.4byte	.LASF1245
	.sleb128 1060
	.uleb128 0x8
	.4byte	.LASF1246
	.sleb128 1061
	.uleb128 0x8
	.4byte	.LASF1247
	.sleb128 1062
	.uleb128 0x8
	.4byte	.LASF1248
	.sleb128 1063
	.uleb128 0x8
	.4byte	.LASF1249
	.sleb128 1064
	.uleb128 0x8
	.4byte	.LASF1250
	.sleb128 1065
	.uleb128 0x8
	.4byte	.LASF1251
	.sleb128 1066
	.uleb128 0x8
	.4byte	.LASF1252
	.sleb128 1067
	.uleb128 0x8
	.4byte	.LASF1253
	.sleb128 1068
	.uleb128 0x8
	.4byte	.LASF1254
	.sleb128 1069
	.uleb128 0x8
	.4byte	.LASF1255
	.sleb128 1070
	.uleb128 0x8
	.4byte	.LASF1256
	.sleb128 1071
	.uleb128 0x8
	.4byte	.LASF1257
	.sleb128 1072
	.uleb128 0x8
	.4byte	.LASF1258
	.sleb128 1073
	.uleb128 0x8
	.4byte	.LASF1259
	.sleb128 1074
	.uleb128 0x8
	.4byte	.LASF1260
	.sleb128 1075
	.uleb128 0x8
	.4byte	.LASF1261
	.sleb128 1076
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1262
	.byte	0x8
	.2byte	0x4e3
	.4byte	0x6e2
	.uleb128 0x10
	.byte	0x1c
	.byte	0x8
	.2byte	0x4e9
	.4byte	0x2377
	.uleb128 0x11
	.4byte	.LASF1263
	.byte	0x8
	.2byte	0x4eb
	.4byte	0x6d7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1264
	.byte	0x8
	.2byte	0x4ec
	.4byte	0x51
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF1265
	.byte	0x8
	.2byte	0x4ed
	.4byte	0x51
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF1266
	.byte	0x8
	.2byte	0x4ee
	.4byte	0x2aa
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF1267
	.byte	0x8
	.2byte	0x4ef
	.4byte	0x2306
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF1268
	.byte	0x8
	.2byte	0x4f0
	.4byte	0x51
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF1269
	.byte	0x8
	.2byte	0x4f0
	.4byte	0x51
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1270
	.byte	0x8
	.2byte	0x4f1
	.4byte	0x2312
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.2byte	0x4fd
	.4byte	0x277c
	.uleb128 0x8
	.4byte	.LASF1271
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1272
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1273
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1274
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF1275
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF1276
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF1277
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF1278
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF1279
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF1280
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF1281
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF1282
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF1283
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF1284
	.sleb128 13
	.uleb128 0x8
	.4byte	.LASF1285
	.sleb128 14
	.uleb128 0x8
	.4byte	.LASF1286
	.sleb128 15
	.uleb128 0x8
	.4byte	.LASF1287
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF1288
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF1289
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF1290
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF1291
	.sleb128 20
	.uleb128 0x8
	.4byte	.LASF1292
	.sleb128 21
	.uleb128 0x8
	.4byte	.LASF1293
	.sleb128 22
	.uleb128 0x8
	.4byte	.LASF1294
	.sleb128 23
	.uleb128 0x8
	.4byte	.LASF1295
	.sleb128 24
	.uleb128 0x8
	.4byte	.LASF1296
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF1297
	.sleb128 26
	.uleb128 0x8
	.4byte	.LASF1298
	.sleb128 27
	.uleb128 0x8
	.4byte	.LASF1299
	.sleb128 28
	.uleb128 0x8
	.4byte	.LASF1300
	.sleb128 29
	.uleb128 0x8
	.4byte	.LASF1301
	.sleb128 30
	.uleb128 0x8
	.4byte	.LASF1302
	.sleb128 31
	.uleb128 0x8
	.4byte	.LASF1303
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF1304
	.sleb128 33
	.uleb128 0x8
	.4byte	.LASF1305
	.sleb128 34
	.uleb128 0x8
	.4byte	.LASF1306
	.sleb128 35
	.uleb128 0x8
	.4byte	.LASF1307
	.sleb128 36
	.uleb128 0x8
	.4byte	.LASF1308
	.sleb128 37
	.uleb128 0x8
	.4byte	.LASF1309
	.sleb128 38
	.uleb128 0x8
	.4byte	.LASF1310
	.sleb128 39
	.uleb128 0x8
	.4byte	.LASF1311
	.sleb128 40
	.uleb128 0x8
	.4byte	.LASF1312
	.sleb128 41
	.uleb128 0x8
	.4byte	.LASF1313
	.sleb128 42
	.uleb128 0x8
	.4byte	.LASF1314
	.sleb128 43
	.uleb128 0x8
	.4byte	.LASF1315
	.sleb128 44
	.uleb128 0x8
	.4byte	.LASF1316
	.sleb128 45
	.uleb128 0x8
	.4byte	.LASF1317
	.sleb128 46
	.uleb128 0x8
	.4byte	.LASF1318
	.sleb128 47
	.uleb128 0x8
	.4byte	.LASF1319
	.sleb128 48
	.uleb128 0x8
	.4byte	.LASF1320
	.sleb128 49
	.uleb128 0x8
	.4byte	.LASF1321
	.sleb128 50
	.uleb128 0x8
	.4byte	.LASF1322
	.sleb128 51
	.uleb128 0x8
	.4byte	.LASF1323
	.sleb128 52
	.uleb128 0x8
	.4byte	.LASF1324
	.sleb128 53
	.uleb128 0x8
	.4byte	.LASF1325
	.sleb128 54
	.uleb128 0x8
	.4byte	.LASF1326
	.sleb128 55
	.uleb128 0x8
	.4byte	.LASF1327
	.sleb128 56
	.uleb128 0x8
	.4byte	.LASF1328
	.sleb128 57
	.uleb128 0x8
	.4byte	.LASF1329
	.sleb128 58
	.uleb128 0x8
	.4byte	.LASF1330
	.sleb128 59
	.uleb128 0x8
	.4byte	.LASF1331
	.sleb128 60
	.uleb128 0x8
	.4byte	.LASF1332
	.sleb128 61
	.uleb128 0x8
	.4byte	.LASF1333
	.sleb128 62
	.uleb128 0x8
	.4byte	.LASF1334
	.sleb128 63
	.uleb128 0x8
	.4byte	.LASF1335
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF1336
	.sleb128 65
	.uleb128 0x8
	.4byte	.LASF1337
	.sleb128 66
	.uleb128 0x8
	.4byte	.LASF1338
	.sleb128 67
	.uleb128 0x8
	.4byte	.LASF1339
	.sleb128 68
	.uleb128 0x8
	.4byte	.LASF1340
	.sleb128 69
	.uleb128 0x8
	.4byte	.LASF1341
	.sleb128 70
	.uleb128 0x8
	.4byte	.LASF1342
	.sleb128 71
	.uleb128 0x8
	.4byte	.LASF1343
	.sleb128 72
	.uleb128 0x8
	.4byte	.LASF1344
	.sleb128 73
	.uleb128 0x8
	.4byte	.LASF1345
	.sleb128 74
	.uleb128 0x8
	.4byte	.LASF1346
	.sleb128 75
	.uleb128 0x8
	.4byte	.LASF1347
	.sleb128 76
	.uleb128 0x8
	.4byte	.LASF1348
	.sleb128 77
	.uleb128 0x8
	.4byte	.LASF1349
	.sleb128 78
	.uleb128 0x8
	.4byte	.LASF1350
	.sleb128 79
	.uleb128 0x8
	.4byte	.LASF1351
	.sleb128 80
	.uleb128 0x8
	.4byte	.LASF1352
	.sleb128 81
	.uleb128 0x8
	.4byte	.LASF1353
	.sleb128 82
	.uleb128 0x8
	.4byte	.LASF1354
	.sleb128 83
	.uleb128 0x8
	.4byte	.LASF1355
	.sleb128 84
	.uleb128 0x8
	.4byte	.LASF1356
	.sleb128 85
	.uleb128 0x8
	.4byte	.LASF1357
	.sleb128 86
	.uleb128 0x8
	.4byte	.LASF1358
	.sleb128 87
	.uleb128 0x8
	.4byte	.LASF1359
	.sleb128 88
	.uleb128 0x8
	.4byte	.LASF1360
	.sleb128 89
	.uleb128 0x8
	.4byte	.LASF1361
	.sleb128 90
	.uleb128 0x8
	.4byte	.LASF1362
	.sleb128 91
	.uleb128 0x8
	.4byte	.LASF1363
	.sleb128 92
	.uleb128 0x8
	.4byte	.LASF1364
	.sleb128 93
	.uleb128 0x8
	.4byte	.LASF1365
	.sleb128 94
	.uleb128 0x8
	.4byte	.LASF1366
	.sleb128 95
	.uleb128 0x8
	.4byte	.LASF1367
	.sleb128 96
	.uleb128 0x8
	.4byte	.LASF1368
	.sleb128 97
	.uleb128 0x8
	.4byte	.LASF1369
	.sleb128 98
	.uleb128 0x8
	.4byte	.LASF1370
	.sleb128 99
	.uleb128 0x8
	.4byte	.LASF1371
	.sleb128 100
	.uleb128 0x8
	.4byte	.LASF1372
	.sleb128 101
	.uleb128 0x8
	.4byte	.LASF1373
	.sleb128 102
	.uleb128 0x8
	.4byte	.LASF1374
	.sleb128 103
	.uleb128 0x8
	.4byte	.LASF1375
	.sleb128 104
	.uleb128 0x8
	.4byte	.LASF1376
	.sleb128 105
	.uleb128 0x8
	.4byte	.LASF1377
	.sleb128 106
	.uleb128 0x8
	.4byte	.LASF1378
	.sleb128 107
	.uleb128 0x8
	.4byte	.LASF1379
	.sleb128 108
	.uleb128 0x8
	.4byte	.LASF1380
	.sleb128 109
	.uleb128 0x8
	.4byte	.LASF1381
	.sleb128 110
	.uleb128 0x8
	.4byte	.LASF1382
	.sleb128 111
	.uleb128 0x8
	.4byte	.LASF1383
	.sleb128 112
	.uleb128 0x8
	.4byte	.LASF1384
	.sleb128 113
	.uleb128 0x8
	.4byte	.LASF1385
	.sleb128 114
	.uleb128 0x8
	.4byte	.LASF1386
	.sleb128 115
	.uleb128 0x8
	.4byte	.LASF1387
	.sleb128 116
	.uleb128 0x8
	.4byte	.LASF1388
	.sleb128 117
	.uleb128 0x8
	.4byte	.LASF1389
	.sleb128 118
	.uleb128 0x8
	.4byte	.LASF1390
	.sleb128 119
	.uleb128 0x8
	.4byte	.LASF1391
	.sleb128 120
	.uleb128 0x8
	.4byte	.LASF1392
	.sleb128 121
	.uleb128 0x8
	.4byte	.LASF1393
	.sleb128 122
	.uleb128 0x8
	.4byte	.LASF1394
	.sleb128 123
	.uleb128 0x8
	.4byte	.LASF1395
	.sleb128 124
	.uleb128 0x8
	.4byte	.LASF1396
	.sleb128 125
	.uleb128 0x8
	.4byte	.LASF1397
	.sleb128 126
	.uleb128 0x8
	.4byte	.LASF1398
	.sleb128 127
	.uleb128 0x8
	.4byte	.LASF1399
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF1400
	.sleb128 129
	.uleb128 0x8
	.4byte	.LASF1401
	.sleb128 130
	.uleb128 0x8
	.4byte	.LASF1402
	.sleb128 131
	.uleb128 0x8
	.4byte	.LASF1403
	.sleb128 132
	.uleb128 0x8
	.4byte	.LASF1404
	.sleb128 133
	.uleb128 0x8
	.4byte	.LASF1405
	.sleb128 134
	.uleb128 0x8
	.4byte	.LASF1406
	.sleb128 135
	.uleb128 0x8
	.4byte	.LASF1407
	.sleb128 136
	.uleb128 0x8
	.4byte	.LASF1408
	.sleb128 137
	.uleb128 0x8
	.4byte	.LASF1409
	.sleb128 138
	.uleb128 0x8
	.4byte	.LASF1410
	.sleb128 139
	.uleb128 0x8
	.4byte	.LASF1411
	.sleb128 140
	.uleb128 0x8
	.4byte	.LASF1412
	.sleb128 141
	.uleb128 0x8
	.4byte	.LASF1413
	.sleb128 142
	.uleb128 0x8
	.4byte	.LASF1414
	.sleb128 143
	.uleb128 0x8
	.4byte	.LASF1415
	.sleb128 144
	.uleb128 0x8
	.4byte	.LASF1416
	.sleb128 145
	.uleb128 0x8
	.4byte	.LASF1417
	.sleb128 146
	.uleb128 0x8
	.4byte	.LASF1418
	.sleb128 147
	.uleb128 0x8
	.4byte	.LASF1419
	.sleb128 148
	.uleb128 0x8
	.4byte	.LASF1420
	.sleb128 149
	.uleb128 0x8
	.4byte	.LASF1421
	.sleb128 150
	.uleb128 0x8
	.4byte	.LASF1422
	.sleb128 151
	.uleb128 0x8
	.4byte	.LASF1423
	.sleb128 152
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1424
	.byte	0x8
	.2byte	0x59e
	.4byte	0x2383
	.uleb128 0x10
	.byte	0x68
	.byte	0x8
	.2byte	0x5a8
	.4byte	0x28bd
	.uleb128 0x11
	.4byte	.LASF1425
	.byte	0x8
	.2byte	0x5aa
	.4byte	0x2e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1426
	.byte	0x8
	.2byte	0x5ac
	.4byte	0x2e
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF1427
	.byte	0x8
	.2byte	0x5ae
	.4byte	0x2e
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF1428
	.byte	0x8
	.2byte	0x5af
	.4byte	0x2e
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF1429
	.byte	0x8
	.2byte	0x5b0
	.4byte	0x2e
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF1430
	.byte	0x8
	.2byte	0x5b1
	.4byte	0x2e
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF1431
	.byte	0x8
	.2byte	0x5b4
	.4byte	0x2e
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF1432
	.byte	0x8
	.2byte	0x5b5
	.4byte	0x2e
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF1433
	.byte	0x8
	.2byte	0x5b6
	.4byte	0x2e
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF1434
	.byte	0x8
	.2byte	0x5bc
	.4byte	0x2e
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF1435
	.byte	0x8
	.2byte	0x5bd
	.4byte	0x2e
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF1436
	.byte	0x8
	.2byte	0x5be
	.4byte	0x2e
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF1437
	.byte	0x8
	.2byte	0x5c0
	.4byte	0x2e
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF1438
	.byte	0x8
	.2byte	0x5c1
	.4byte	0x2e
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF1439
	.byte	0x8
	.2byte	0x5c3
	.4byte	0x2e
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF1440
	.byte	0x8
	.2byte	0x5c6
	.4byte	0x2e
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF1441
	.byte	0x8
	.2byte	0x5c8
	.4byte	0x2e
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF1442
	.byte	0x8
	.2byte	0x5c9
	.4byte	0x2e
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF1443
	.byte	0x8
	.2byte	0x5cb
	.4byte	0x2e
	.byte	0x48
	.uleb128 0x11
	.4byte	.LASF1444
	.byte	0x8
	.2byte	0x5ce
	.4byte	0x2e
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF1445
	.byte	0x8
	.2byte	0x5cf
	.4byte	0x2e
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF1446
	.byte	0x8
	.2byte	0x5d1
	.4byte	0x289
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF1447
	.byte	0x8
	.2byte	0x5d2
	.4byte	0x2e
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1448
	.byte	0x8
	.2byte	0x5d5
	.4byte	0x2788
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0x47
	.4byte	0x28e4
	.uleb128 0x8
	.4byte	.LASF1449
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1450
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1451
	.sleb128 2
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x9
	.byte	0x4d
	.4byte	0x291b
	.uleb128 0xb
	.4byte	.LASF1452
	.byte	0x9
	.byte	0x4f
	.4byte	0x291b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1265
	.byte	0x9
	.byte	0x50
	.4byte	0x2e
	.byte	0x4
	.uleb128 0x13
	.ascii	"sx\000"
	.byte	0x9
	.byte	0x51
	.4byte	0x294
	.byte	0x8
	.uleb128 0x13
	.ascii	"sy\000"
	.byte	0x9
	.byte	0x52
	.4byte	0x294
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2377
	.uleb128 0x9
	.4byte	.LASF1453
	.byte	0x9
	.byte	0x53
	.4byte	0x28e4
	.uleb128 0x14
	.4byte	0x4a
	.4byte	0x293c
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0xa
	.byte	0xa
	.byte	0xc0
	.4byte	0x297d
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xa
	.byte	0xc1
	.4byte	0x43
	.byte	0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xa
	.byte	0xc2
	.4byte	0x43
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF1454
	.byte	0xa
	.byte	0xc3
	.4byte	0x43
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF1455
	.byte	0xa
	.byte	0xc4
	.4byte	0x43
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF1456
	.byte	0xa
	.byte	0xc5
	.4byte	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1457
	.byte	0xa
	.byte	0xc6
	.4byte	0x293c
	.uleb128 0xe
	.4byte	.LASF1459
	.byte	0xd0
	.byte	0xb
	.byte	0xf8
	.4byte	0x2bfc
	.uleb128 0xb
	.4byte	.LASF1460
	.byte	0xb
	.byte	0xfb
	.4byte	0x328
	.byte	0
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xb
	.byte	0xfe
	.4byte	0x294
	.byte	0x18
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xb
	.byte	0xff
	.4byte	0x294
	.byte	0x1c
	.uleb128 0x16
	.ascii	"z\000"
	.byte	0xb
	.2byte	0x100
	.4byte	0x294
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF1461
	.byte	0xb
	.2byte	0x103
	.4byte	0x2bfc
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF1462
	.byte	0xb
	.2byte	0x104
	.4byte	0x2c02
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF1454
	.byte	0xb
	.2byte	0x107
	.4byte	0x29f
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF1263
	.byte	0xb
	.2byte	0x108
	.4byte	0x6d7
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF1264
	.byte	0xb
	.2byte	0x109
	.4byte	0x2e
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF1463
	.byte	0xb
	.2byte	0x10d
	.4byte	0x2bfc
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF1464
	.byte	0xb
	.2byte	0x10e
	.4byte	0x2c02
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF1465
	.byte	0xb
	.2byte	0x110
	.4byte	0x2c3d
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF1466
	.byte	0xb
	.2byte	0x113
	.4byte	0x294
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF1467
	.byte	0xb
	.2byte	0x114
	.4byte	0x294
	.byte	0x48
	.uleb128 0x11
	.4byte	.LASF1468
	.byte	0xb
	.2byte	0x117
	.4byte	0x294
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF1441
	.byte	0xb
	.2byte	0x11a
	.4byte	0x294
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF1442
	.byte	0xb
	.2byte	0x11b
	.4byte	0x294
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF1469
	.byte	0xb
	.2byte	0x11e
	.4byte	0x294
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF1470
	.byte	0xb
	.2byte	0x11f
	.4byte	0x294
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF1471
	.byte	0xb
	.2byte	0x120
	.4byte	0x294
	.byte	0x60
	.uleb128 0x11
	.4byte	.LASF1472
	.byte	0xb
	.2byte	0x123
	.4byte	0x2e
	.byte	0x64
	.uleb128 0x11
	.4byte	.LASF1455
	.byte	0xb
	.2byte	0x125
	.4byte	0x277c
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF1473
	.byte	0xb
	.2byte	0x126
	.4byte	0x2c43
	.byte	0x6c
	.uleb128 0x11
	.4byte	.LASF1265
	.byte	0xb
	.2byte	0x128
	.4byte	0x2e
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF1452
	.byte	0xb
	.2byte	0x129
	.4byte	0x291b
	.byte	0x74
	.uleb128 0x11
	.4byte	.LASF1446
	.byte	0xb
	.2byte	0x12a
	.4byte	0x289
	.byte	0x78
	.uleb128 0x11
	.4byte	.LASF1474
	.byte	0xb
	.2byte	0x12b
	.4byte	0x2e
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF1475
	.byte	0xb
	.2byte	0x12c
	.4byte	0x2e
	.byte	0x84
	.uleb128 0x11
	.4byte	.LASF1476
	.byte	0xb
	.2byte	0x12f
	.4byte	0x43
	.byte	0x88
	.uleb128 0x11
	.4byte	.LASF1477
	.byte	0xb
	.2byte	0x130
	.4byte	0x43
	.byte	0x8a
	.uleb128 0x11
	.4byte	.LASF1478
	.byte	0xb
	.2byte	0x131
	.4byte	0x43
	.byte	0x8c
	.uleb128 0x11
	.4byte	.LASF1479
	.byte	0xb
	.2byte	0x135
	.4byte	0x2bfc
	.byte	0x90
	.uleb128 0x11
	.4byte	.LASF1430
	.byte	0xb
	.2byte	0x139
	.4byte	0x43
	.byte	0x94
	.uleb128 0x11
	.4byte	.LASF1480
	.byte	0xb
	.2byte	0x13d
	.4byte	0x43
	.byte	0x96
	.uleb128 0x11
	.4byte	.LASF1481
	.byte	0xb
	.2byte	0x140
	.4byte	0x43
	.byte	0x98
	.uleb128 0x11
	.4byte	.LASF1482
	.byte	0xb
	.2byte	0x142
	.4byte	0x43
	.byte	0x9a
	.uleb128 0x11
	.4byte	.LASF1483
	.byte	0xb
	.2byte	0x146
	.4byte	0x2e13
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF1484
	.byte	0xb
	.2byte	0x149
	.4byte	0x43
	.byte	0xa0
	.uleb128 0x11
	.4byte	.LASF1485
	.byte	0xb
	.2byte	0x14c
	.4byte	0x297d
	.byte	0xa2
	.uleb128 0x11
	.4byte	.LASF1486
	.byte	0xb
	.2byte	0x14f
	.4byte	0x2bfc
	.byte	0xac
	.uleb128 0x11
	.4byte	.LASF1487
	.byte	0xb
	.2byte	0x152
	.4byte	0x2bfc
	.byte	0xb0
	.uleb128 0x11
	.4byte	.LASF1488
	.byte	0xb
	.2byte	0x158
	.4byte	0x2e
	.byte	0xb4
	.uleb128 0x11
	.4byte	.LASF1489
	.byte	0xb
	.2byte	0x159
	.4byte	0x2e
	.byte	0xb8
	.uleb128 0x11
	.4byte	.LASF1490
	.byte	0xb
	.2byte	0x15c
	.4byte	0x2e7a
	.byte	0xbc
	.uleb128 0x11
	.4byte	.LASF1491
	.byte	0xb
	.2byte	0x15e
	.4byte	0x294
	.byte	0xc0
	.uleb128 0x11
	.4byte	.LASF1492
	.byte	0xb
	.2byte	0x15f
	.4byte	0x294
	.byte	0xc4
	.uleb128 0x11
	.4byte	.LASF1493
	.byte	0xb
	.2byte	0x160
	.4byte	0x294
	.byte	0xc8
	.uleb128 0x16
	.ascii	"pad\000"
	.byte	0xb
	.2byte	0x162
	.4byte	0x294
	.byte	0xcc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2988
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2bfc
	.uleb128 0x17
	.4byte	.LASF1494
	.byte	0xc
	.byte	0xc
	.2byte	0x123
	.4byte	0x2c3d
	.uleb128 0x11
	.4byte	.LASF1495
	.byte	0xc
	.2byte	0x125
	.4byte	0x34ea
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1496
	.byte	0xc
	.2byte	0x126
	.4byte	0x2e
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF1497
	.byte	0xc
	.2byte	0x126
	.4byte	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c08
	.uleb128 0x5
	.byte	0x4
	.4byte	0x28bd
	.uleb128 0x18
	.4byte	.LASF1498
	.2byte	0x11c
	.byte	0xd
	.byte	0x5d
	.4byte	0x2e13
	.uleb128 0x13
	.ascii	"mo\000"
	.byte	0xd
	.byte	0x5f
	.4byte	0x2f0e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1499
	.byte	0xd
	.byte	0x60
	.4byte	0x2f03
	.byte	0x4
	.uleb128 0x13
	.ascii	"cmd\000"
	.byte	0xd
	.byte	0x61
	.4byte	0x2edd
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF1500
	.byte	0xd
	.byte	0x66
	.4byte	0x294
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF1501
	.byte	0xd
	.byte	0x68
	.4byte	0x294
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF1502
	.byte	0xd
	.byte	0x6a
	.4byte	0x294
	.byte	0x18
	.uleb128 0x13
	.ascii	"bob\000"
	.byte	0xd
	.byte	0x6c
	.4byte	0x294
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF1469
	.byte	0xd
	.byte	0x73
	.4byte	0x294
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF1470
	.byte	0xd
	.byte	0x73
	.4byte	0x294
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF1475
	.byte	0xd
	.byte	0x77
	.4byte	0x2e
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF1503
	.byte	0xd
	.byte	0x78
	.4byte	0x2e
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF1504
	.byte	0xd
	.byte	0x7a
	.4byte	0x2e
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF1505
	.byte	0xd
	.byte	0x7d
	.4byte	0x2f14
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF1506
	.byte	0xd
	.byte	0x7e
	.4byte	0x2f24
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF1507
	.byte	0xd
	.byte	0x7f
	.4byte	0x273
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF1508
	.byte	0xd
	.byte	0x82
	.4byte	0x2f34
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF1509
	.byte	0xd
	.byte	0x83
	.4byte	0x19a
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF1510
	.byte	0xd
	.byte	0x86
	.4byte	0x19a
	.byte	0x79
	.uleb128 0xb
	.4byte	.LASF1511
	.byte	0xd
	.byte	0x88
	.4byte	0x2f44
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xd
	.byte	0x89
	.4byte	0x2f34
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF1512
	.byte	0xd
	.byte	0x8a
	.4byte	0x2f34
	.byte	0xb0
	.uleb128 0xb
	.4byte	.LASF1513
	.byte	0xd
	.byte	0x8d
	.4byte	0x2e
	.byte	0xc0
	.uleb128 0xb
	.4byte	.LASF1514
	.byte	0xd
	.byte	0x8e
	.4byte	0x2e
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF1515
	.byte	0xd
	.byte	0x92
	.4byte	0x2e
	.byte	0xc8
	.uleb128 0xb
	.4byte	.LASF1516
	.byte	0xd
	.byte	0x95
	.4byte	0x2e
	.byte	0xcc
	.uleb128 0xb
	.4byte	.LASF1517
	.byte	0xd
	.byte	0x98
	.4byte	0x2e
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF1518
	.byte	0xd
	.byte	0x99
	.4byte	0x2e
	.byte	0xd4
	.uleb128 0xb
	.4byte	.LASF1519
	.byte	0xd
	.byte	0x9a
	.4byte	0x2e
	.byte	0xd8
	.uleb128 0xb
	.4byte	.LASF1520
	.byte	0xd
	.byte	0x9d
	.4byte	0x81
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF1521
	.byte	0xd
	.byte	0xa0
	.4byte	0x2e
	.byte	0xe0
	.uleb128 0xb
	.4byte	.LASF1522
	.byte	0xd
	.byte	0xa1
	.4byte	0x2e
	.byte	0xe4
	.uleb128 0xb
	.4byte	.LASF1523
	.byte	0xd
	.byte	0xa4
	.4byte	0x2f0e
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF1524
	.byte	0xd
	.byte	0xa7
	.4byte	0x2e
	.byte	0xec
	.uleb128 0xb
	.4byte	.LASF1525
	.byte	0xd
	.byte	0xab
	.4byte	0x2e
	.byte	0xf0
	.uleb128 0xb
	.4byte	.LASF1526
	.byte	0xd
	.byte	0xaf
	.4byte	0x2e
	.byte	0xf4
	.uleb128 0xb
	.4byte	.LASF1527
	.byte	0xd
	.byte	0xb2
	.4byte	0x2f54
	.byte	0xf8
	.uleb128 0x19
	.4byte	.LASF1528
	.byte	0xd
	.byte	0xb5
	.4byte	0x273
	.2byte	0x118
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c49
	.uleb128 0xe
	.4byte	.LASF1529
	.byte	0x1c
	.byte	0xc
	.byte	0xde
	.4byte	0x2e7a
	.uleb128 0xb
	.4byte	.LASF1530
	.byte	0xc
	.byte	0xe0
	.4byte	0x34ea
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1531
	.byte	0xc
	.byte	0xe1
	.4byte	0x2bfc
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF1532
	.byte	0xc
	.byte	0xe2
	.4byte	0x2e7a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF1533
	.byte	0xc
	.byte	0xe3
	.4byte	0x2e7a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF1534
	.byte	0xc
	.byte	0xe4
	.4byte	0x2e7a
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF1535
	.byte	0xc
	.byte	0xe5
	.4byte	0x2e7a
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF1536
	.byte	0xc
	.byte	0xe6
	.4byte	0x273
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2e19
	.uleb128 0xf
	.4byte	.LASF1537
	.byte	0xb
	.2byte	0x165
	.4byte	0x2988
	.uleb128 0xa
	.byte	0x8
	.byte	0xe
	.byte	0x31
	.4byte	0x2edd
	.uleb128 0xb
	.4byte	.LASF1538
	.byte	0xe
	.byte	0x33
	.4byte	0x35
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1539
	.byte	0xe
	.byte	0x34
	.4byte	0x35
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF1540
	.byte	0xe
	.byte	0x35
	.4byte	0x43
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF1541
	.byte	0xe
	.byte	0x36
	.4byte	0x43
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF1542
	.byte	0xe
	.byte	0x37
	.4byte	0x27e
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF1543
	.byte	0xe
	.byte	0x38
	.4byte	0x27e
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1544
	.byte	0xe
	.byte	0x39
	.4byte	0x2e8c
	.uleb128 0x7
	.byte	0x1
	.byte	0xd
	.byte	0x40
	.4byte	0x2f03
	.uleb128 0x8
	.4byte	.LASF1545
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1546
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1547
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1548
	.byte	0xd
	.byte	0x48
	.4byte	0x2ee8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2e80
	.uleb128 0x14
	.4byte	0x2e
	.4byte	0x2f24
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	0x273
	.4byte	0x2f34
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	0x2e
	.4byte	0x2f44
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	0x273
	.4byte	0x2f54
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	0x2921
	.4byte	0x2f64
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1549
	.byte	0xd
	.byte	0xb7
	.4byte	0x2c49
	.uleb128 0x7
	.byte	0x1
	.byte	0xf
	.byte	0x57
	.4byte	0x301a
	.uleb128 0x8
	.4byte	.LASF1550
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1551
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1552
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1553
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF1554
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF1555
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF1556
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF1557
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF1558
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF1559
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF1560
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF1561
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF1562
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF1563
	.sleb128 13
	.uleb128 0x8
	.4byte	.LASF1564
	.sleb128 14
	.uleb128 0x8
	.4byte	.LASF1565
	.sleb128 15
	.uleb128 0x8
	.4byte	.LASF1566
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF1567
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF1568
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF1569
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF1570
	.sleb128 20
	.uleb128 0x8
	.4byte	.LASF1571
	.sleb128 21
	.uleb128 0x8
	.4byte	.LASF1572
	.sleb128 22
	.uleb128 0x8
	.4byte	.LASF1573
	.sleb128 23
	.uleb128 0x8
	.4byte	.LASF1574
	.sleb128 24
	.uleb128 0x8
	.4byte	.LASF1575
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF1576
	.sleb128 32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF1582
	.byte	0x1
	.byte	0xf
	.byte	0xaa
	.4byte	0x3045
	.uleb128 0x8
	.4byte	.LASF1577
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1578
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1579
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF1580
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF1581
	.sleb128 16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF1583
	.byte	0x1
	.byte	0xf
	.byte	0xb3
	.4byte	0x3064
	.uleb128 0x8
	.4byte	.LASF1584
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1585
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1586
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.4byte	0x3085
	.uleb128 0x8
	.4byte	.LASF1587
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1588
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1589
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1590
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1591
	.byte	0x10
	.byte	0x35
	.4byte	0x3064
	.uleb128 0xa
	.byte	0x10
	.byte	0x10
	.byte	0x38
	.4byte	0x30c9
	.uleb128 0xb
	.4byte	.LASF1455
	.byte	0x10
	.byte	0x3a
	.4byte	0x3085
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1592
	.byte	0x10
	.byte	0x3b
	.4byte	0x2e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF1593
	.byte	0x10
	.byte	0x3c
	.4byte	0x2e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF1594
	.byte	0x10
	.byte	0x3d
	.4byte	0x2e
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1595
	.byte	0x10
	.byte	0x3e
	.4byte	0x3090
	.uleb128 0xa
	.byte	0x8
	.byte	0xc
	.byte	0x4d
	.4byte	0x30f1
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xc
	.byte	0x4e
	.4byte	0x294
	.byte	0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xc
	.byte	0x4e
	.4byte	0x294
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0xc
	.byte	0x4c
	.4byte	0x3108
	.uleb128 0x1c
	.4byte	0x30d4
	.uleb128 0x1d
	.ascii	"v\000"
	.byte	0xc
	.byte	0x50
	.4byte	0x3108
	.byte	0
	.uleb128 0x14
	.4byte	0x294
	.4byte	0x3118
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xc
	.byte	0x4a
	.4byte	0x3127
	.uleb128 0x1e
	.4byte	0x30f1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1596
	.byte	0xc
	.byte	0x52
	.4byte	0x3118
	.uleb128 0xa
	.byte	0x24
	.byte	0xc
	.byte	0x55
	.4byte	0x3165
	.uleb128 0xb
	.4byte	.LASF1460
	.byte	0xc
	.byte	0x57
	.4byte	0x328
	.byte	0
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xc
	.byte	0x58
	.4byte	0x294
	.byte	0x18
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xc
	.byte	0x58
	.4byte	0x294
	.byte	0x1c
	.uleb128 0x13
	.ascii	"z\000"
	.byte	0xc
	.byte	0x58
	.4byte	0x294
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1597
	.byte	0xc
	.byte	0x59
	.4byte	0x3132
	.uleb128 0xa
	.byte	0xc4
	.byte	0xc
	.byte	0x60
	.4byte	0x3365
	.uleb128 0xb
	.4byte	.LASF1598
	.byte	0xc
	.byte	0x62
	.4byte	0x2e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1599
	.byte	0xc
	.byte	0x63
	.4byte	0x273
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF1600
	.byte	0xc
	.byte	0x64
	.4byte	0x273
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF1601
	.byte	0xc
	.byte	0x65
	.4byte	0x294
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF1602
	.byte	0xc
	.byte	0x66
	.4byte	0x294
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF1603
	.byte	0xc
	.byte	0x67
	.4byte	0x2e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF1604
	.byte	0xc
	.byte	0x67
	.4byte	0x2e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF1605
	.byte	0xc
	.byte	0x68
	.4byte	0x2e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF1606
	.byte	0xc
	.byte	0x69
	.4byte	0x2f0e
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF1607
	.byte	0xc
	.byte	0x6a
	.4byte	0x2f34
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF1608
	.byte	0xc
	.byte	0x6b
	.4byte	0x3165
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF1472
	.byte	0xc
	.byte	0x6c
	.4byte	0x2e
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF1609
	.byte	0xc
	.byte	0x6d
	.4byte	0x2f0e
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF1488
	.byte	0xc
	.byte	0x73
	.4byte	0x2e
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF1489
	.byte	0xc
	.byte	0x73
	.4byte	0x2e
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF1610
	.byte	0xc
	.byte	0x76
	.4byte	0x2c
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF1611
	.byte	0xc
	.byte	0x77
	.4byte	0x2c
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF1612
	.byte	0xc
	.byte	0x78
	.4byte	0x2c
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF1613
	.byte	0xc
	.byte	0x7b
	.4byte	0x2e
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF1614
	.byte	0xc
	.byte	0x7c
	.4byte	0x2e
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF1615
	.byte	0xc
	.byte	0x7d
	.4byte	0x2e
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF1616
	.byte	0xc
	.byte	0x80
	.4byte	0x2e
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF1617
	.byte	0xc
	.byte	0x82
	.4byte	0x2e
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF1618
	.byte	0xc
	.byte	0x82
	.4byte	0x2e
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF1619
	.byte	0xc
	.byte	0x82
	.4byte	0x2e
	.byte	0x8c
	.uleb128 0xb
	.4byte	.LASF1620
	.byte	0xc
	.byte	0x86
	.4byte	0x2e7a
	.byte	0x90
	.uleb128 0xb
	.4byte	.LASF1621
	.byte	0xc
	.byte	0x88
	.4byte	0x2e
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF1622
	.byte	0xc
	.byte	0x89
	.4byte	0x346a
	.byte	0x98
	.uleb128 0x13
	.ascii	"sky\000"
	.byte	0xc
	.byte	0x92
	.4byte	0x2e
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF1623
	.byte	0xc
	.byte	0x95
	.4byte	0x294
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF1624
	.byte	0xc
	.byte	0x95
	.4byte	0x294
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF1625
	.byte	0xc
	.byte	0x96
	.4byte	0x294
	.byte	0xa8
	.uleb128 0xb
	.4byte	.LASF1626
	.byte	0xc
	.byte	0x96
	.4byte	0x294
	.byte	0xac
	.uleb128 0xb
	.4byte	.LASF1627
	.byte	0xc
	.byte	0x99
	.4byte	0x2e
	.byte	0xb0
	.uleb128 0xb
	.4byte	.LASF1628
	.byte	0xc
	.byte	0x99
	.4byte	0x2e
	.byte	0xb4
	.uleb128 0xb
	.4byte	.LASF1629
	.byte	0xc
	.byte	0x9b
	.4byte	0x43
	.byte	0xb8
	.uleb128 0xb
	.4byte	.LASF1630
	.byte	0xc
	.byte	0x9c
	.4byte	0x43
	.byte	0xba
	.uleb128 0xb
	.4byte	.LASF1631
	.byte	0xc
	.byte	0x9d
	.4byte	0x43
	.byte	0xbc
	.uleb128 0xb
	.4byte	.LASF1632
	.byte	0xc
	.byte	0x9e
	.4byte	0x43
	.byte	0xbe
	.uleb128 0xb
	.4byte	.LASF1633
	.byte	0xc
	.byte	0x9f
	.4byte	0x43
	.byte	0xc0
	.uleb128 0x13
	.ascii	"tag\000"
	.byte	0xc
	.byte	0xa0
	.4byte	0x43
	.byte	0xc2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1634
	.byte	0x7c
	.byte	0xc
	.byte	0xb1
	.4byte	0x346a
	.uleb128 0xb
	.4byte	.LASF1635
	.byte	0xc
	.byte	0xb3
	.4byte	0x2e
	.byte	0
	.uleb128 0x13
	.ascii	"v1\000"
	.byte	0xc
	.byte	0xb4
	.4byte	0x34d4
	.byte	0x4
	.uleb128 0x13
	.ascii	"v2\000"
	.byte	0xc
	.byte	0xb4
	.4byte	0x34d4
	.byte	0x8
	.uleb128 0x13
	.ascii	"dx\000"
	.byte	0xc
	.byte	0xb5
	.4byte	0x294
	.byte	0xc
	.uleb128 0x13
	.ascii	"dy\000"
	.byte	0xc
	.byte	0xb5
	.4byte	0x294
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF1446
	.byte	0xc
	.byte	0xb6
	.4byte	0x4a
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF1632
	.byte	0xc
	.byte	0xb7
	.4byte	0x43
	.byte	0x16
	.uleb128 0x13
	.ascii	"tag\000"
	.byte	0xc
	.byte	0xb8
	.4byte	0x43
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF1636
	.byte	0xc
	.byte	0xb9
	.4byte	0x292c
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF1637
	.byte	0xc
	.byte	0xba
	.4byte	0x34da
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF1638
	.byte	0xc
	.byte	0xbb
	.4byte	0x34a2
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF1639
	.byte	0xc
	.byte	0xbc
	.4byte	0x34ea
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF1640
	.byte	0xc
	.byte	0xbd
	.4byte	0x34ea
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF1472
	.byte	0xc
	.byte	0xbe
	.4byte	0x2e
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF1641
	.byte	0xc
	.byte	0xbf
	.4byte	0x2c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF1642
	.byte	0xc
	.byte	0xc0
	.4byte	0x2e
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF1604
	.byte	0xc
	.byte	0xc1
	.4byte	0x2e
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF1603
	.byte	0xc
	.byte	0xc1
	.4byte	0x2e
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF1643
	.byte	0xc
	.byte	0xc2
	.4byte	0x2e
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF1644
	.byte	0xc
	.byte	0xc9
	.4byte	0x34ad
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF1608
	.byte	0xc
	.byte	0xca
	.4byte	0x3165
	.byte	0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3470
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3365
	.uleb128 0x9
	.4byte	.LASF1645
	.byte	0xc
	.byte	0xa4
	.4byte	0x3170
	.uleb128 0x7
	.byte	0x1
	.byte	0xc
	.byte	0xaa
	.4byte	0x34a2
	.uleb128 0x8
	.4byte	.LASF1646
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1647
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1648
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1649
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1650
	.byte	0xc
	.byte	0xaf
	.4byte	0x3481
	.uleb128 0x7
	.byte	0x1
	.byte	0xc
	.byte	0xc3
	.4byte	0x34d4
	.uleb128 0x8
	.4byte	.LASF1651
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1652
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1653
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF1654
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF1655
	.sleb128 16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3127
	.uleb128 0x14
	.4byte	0x294
	.4byte	0x34ea
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3476
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1656
	.uleb128 0x10
	.byte	0x14
	.byte	0xc
	.2byte	0x157
	.4byte	0x3542
	.uleb128 0x11
	.4byte	.LASF1657
	.byte	0xc
	.2byte	0x159
	.4byte	0x2e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1442
	.byte	0xc
	.2byte	0x159
	.4byte	0x2e
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF1658
	.byte	0xc
	.2byte	0x15a
	.4byte	0x2e
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF1659
	.byte	0xc
	.2byte	0x15a
	.4byte	0x2e
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF1660
	.byte	0xc
	.2byte	0x15b
	.4byte	0x2e
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1661
	.byte	0xc
	.2byte	0x15c
	.4byte	0x34f7
	.uleb128 0x7
	.byte	0x1
	.byte	0x11
	.byte	0x3b
	.4byte	0x359f
	.uleb128 0x8
	.4byte	.LASF1662
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1663
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1664
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1665
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF1666
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF1667
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF1668
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF1669
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF1670
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF1671
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF1672
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF1673
	.sleb128 11
	.byte	0
	.uleb128 0x1f
	.2byte	0x7f4
	.byte	0x12
	.byte	0x3e
	.4byte	0x360d
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0x12
	.byte	0x41
	.4byte	0x2e
	.byte	0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0x12
	.byte	0x42
	.4byte	0x2e
	.byte	0x4
	.uleb128 0x13
	.ascii	"f\000"
	.byte	0x12
	.byte	0x44
	.4byte	0x360d
	.byte	0x8
	.uleb128 0x13
	.ascii	"sc\000"
	.byte	0x12
	.byte	0x45
	.4byte	0x2e
	.byte	0xc
	.uleb128 0x13
	.ascii	"cm\000"
	.byte	0x12
	.byte	0x48
	.4byte	0x2e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF1674
	.byte	0x12
	.byte	0x4d
	.4byte	0x2e
	.byte	0x14
	.uleb128 0x13
	.ascii	"l\000"
	.byte	0x12
	.byte	0x4e
	.4byte	0x3618
	.byte	0x18
	.uleb128 0x20
	.ascii	"len\000"
	.byte	0x12
	.byte	0x4f
	.4byte	0x2e
	.2byte	0x7ec
	.uleb128 0x19
	.4byte	.LASF1675
	.byte	0x12
	.byte	0x52
	.4byte	0x2e
	.2byte	0x7f0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3613
	.uleb128 0x6
	.4byte	0x3542
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x3629
	.uleb128 0x21
	.4byte	0x6d
	.2byte	0x7d0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1676
	.byte	0x12
	.byte	0x54
	.4byte	0x359f
	.uleb128 0x1f
	.2byte	0x1fe0
	.byte	0x12
	.byte	0x5a
	.4byte	0x3678
	.uleb128 0x13
	.ascii	"l\000"
	.byte	0x12
	.byte	0x5c
	.4byte	0x3678
	.byte	0
	.uleb128 0x20
	.ascii	"h\000"
	.byte	0x12
	.byte	0x5d
	.4byte	0x2e
	.2byte	0x1fd0
	.uleb128 0x20
	.ascii	"cl\000"
	.byte	0x12
	.byte	0x5e
	.4byte	0x2e
	.2byte	0x1fd4
	.uleb128 0x20
	.ascii	"on\000"
	.byte	0x12
	.byte	0x61
	.4byte	0x3688
	.2byte	0x1fd8
	.uleb128 0x19
	.4byte	.LASF1677
	.byte	0x12
	.byte	0x62
	.4byte	0x273
	.2byte	0x1fdc
	.byte	0
	.uleb128 0x14
	.4byte	0x3629
	.4byte	0x3688
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x273
	.uleb128 0x9
	.4byte	.LASF1678
	.byte	0x12
	.byte	0x64
	.4byte	0x3634
	.uleb128 0x1f
	.2byte	0x7f68
	.byte	0x12
	.byte	0x68
	.4byte	0x3722
	.uleb128 0x13
	.ascii	"l\000"
	.byte	0x12
	.byte	0x6a
	.4byte	0x3722
	.byte	0
	.uleb128 0x20
	.ascii	"nl\000"
	.byte	0x12
	.byte	0x6b
	.4byte	0x2e
	.2byte	0x7f40
	.uleb128 0x20
	.ascii	"nr\000"
	.byte	0x12
	.byte	0x6c
	.4byte	0x2e
	.2byte	0x7f44
	.uleb128 0x20
	.ascii	"cl\000"
	.byte	0x12
	.byte	0x6d
	.4byte	0x2e
	.2byte	0x7f48
	.uleb128 0x20
	.ascii	"x\000"
	.byte	0x12
	.byte	0x6f
	.4byte	0x2e
	.2byte	0x7f4c
	.uleb128 0x20
	.ascii	"y\000"
	.byte	0x12
	.byte	0x6f
	.4byte	0x2e
	.2byte	0x7f50
	.uleb128 0x20
	.ascii	"w\000"
	.byte	0x12
	.byte	0x6f
	.4byte	0x2e
	.2byte	0x7f54
	.uleb128 0x20
	.ascii	"h\000"
	.byte	0x12
	.byte	0x6f
	.4byte	0x2e
	.2byte	0x7f58
	.uleb128 0x20
	.ascii	"bg\000"
	.byte	0x12
	.byte	0x70
	.4byte	0x360d
	.2byte	0x7f5c
	.uleb128 0x20
	.ascii	"on\000"
	.byte	0x12
	.byte	0x73
	.4byte	0x3688
	.2byte	0x7f60
	.uleb128 0x19
	.4byte	.LASF1677
	.byte	0x12
	.byte	0x74
	.4byte	0x273
	.2byte	0x7f64
	.byte	0
	.uleb128 0x14
	.4byte	0x3629
	.4byte	0x3732
	.uleb128 0x15
	.4byte	0x6d
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1679
	.byte	0x12
	.byte	0x76
	.4byte	0x3699
	.uleb128 0x1f
	.2byte	0x800
	.byte	0x12
	.byte	0x7c
	.4byte	0x3776
	.uleb128 0x13
	.ascii	"l\000"
	.byte	0x12
	.byte	0x7e
	.4byte	0x3629
	.byte	0
	.uleb128 0x20
	.ascii	"lm\000"
	.byte	0x12
	.byte	0x81
	.4byte	0x2e
	.2byte	0x7f4
	.uleb128 0x20
	.ascii	"on\000"
	.byte	0x12
	.byte	0x84
	.4byte	0x3688
	.2byte	0x7f8
	.uleb128 0x19
	.4byte	.LASF1677
	.byte	0x12
	.byte	0x85
	.4byte	0x273
	.2byte	0x7fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1680
	.byte	0x12
	.byte	0x87
	.4byte	0x373d
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x3791
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x37a1
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x13
	.byte	0xb6
	.4byte	0x3a8f
	.uleb128 0x8
	.4byte	.LASF1681
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF1682
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF1683
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF1684
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF1685
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF1686
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF1687
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF1688
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF1689
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF1690
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF1691
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF1692
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF1693
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF1694
	.sleb128 13
	.uleb128 0x8
	.4byte	.LASF1695
	.sleb128 14
	.uleb128 0x8
	.4byte	.LASF1696
	.sleb128 15
	.uleb128 0x8
	.4byte	.LASF1697
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF1698
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF1699
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF1700
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF1701
	.sleb128 20
	.uleb128 0x8
	.4byte	.LASF1702
	.sleb128 21
	.uleb128 0x8
	.4byte	.LASF1703
	.sleb128 22
	.uleb128 0x8
	.4byte	.LASF1704
	.sleb128 23
	.uleb128 0x8
	.4byte	.LASF1705
	.sleb128 24
	.uleb128 0x8
	.4byte	.LASF1706
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF1707
	.sleb128 26
	.uleb128 0x8
	.4byte	.LASF1708
	.sleb128 27
	.uleb128 0x8
	.4byte	.LASF1709
	.sleb128 28
	.uleb128 0x8
	.4byte	.LASF1710
	.sleb128 29
	.uleb128 0x8
	.4byte	.LASF1711
	.sleb128 30
	.uleb128 0x8
	.4byte	.LASF1712
	.sleb128 31
	.uleb128 0x8
	.4byte	.LASF1713
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF1714
	.sleb128 33
	.uleb128 0x8
	.4byte	.LASF1715
	.sleb128 34
	.uleb128 0x8
	.4byte	.LASF1716
	.sleb128 35
	.uleb128 0x8
	.4byte	.LASF1717
	.sleb128 36
	.uleb128 0x8
	.4byte	.LASF1718
	.sleb128 37
	.uleb128 0x8
	.4byte	.LASF1719
	.sleb128 38
	.uleb128 0x8
	.4byte	.LASF1720
	.sleb128 39
	.uleb128 0x8
	.4byte	.LASF1721
	.sleb128 40
	.uleb128 0x8
	.4byte	.LASF1722
	.sleb128 41
	.uleb128 0x8
	.4byte	.LASF1723
	.sleb128 42
	.uleb128 0x8
	.4byte	.LASF1724
	.sleb128 43
	.uleb128 0x8
	.4byte	.LASF1725
	.sleb128 44
	.uleb128 0x8
	.4byte	.LASF1726
	.sleb128 45
	.uleb128 0x8
	.4byte	.LASF1727
	.sleb128 46
	.uleb128 0x8
	.4byte	.LASF1728
	.sleb128 47
	.uleb128 0x8
	.4byte	.LASF1729
	.sleb128 48
	.uleb128 0x8
	.4byte	.LASF1730
	.sleb128 49
	.uleb128 0x8
	.4byte	.LASF1731
	.sleb128 50
	.uleb128 0x8
	.4byte	.LASF1732
	.sleb128 51
	.uleb128 0x8
	.4byte	.LASF1733
	.sleb128 52
	.uleb128 0x8
	.4byte	.LASF1734
	.sleb128 53
	.uleb128 0x8
	.4byte	.LASF1735
	.sleb128 54
	.uleb128 0x8
	.4byte	.LASF1736
	.sleb128 55
	.uleb128 0x8
	.4byte	.LASF1737
	.sleb128 56
	.uleb128 0x8
	.4byte	.LASF1738
	.sleb128 57
	.uleb128 0x8
	.4byte	.LASF1739
	.sleb128 58
	.uleb128 0x8
	.4byte	.LASF1740
	.sleb128 59
	.uleb128 0x8
	.4byte	.LASF1741
	.sleb128 60
	.uleb128 0x8
	.4byte	.LASF1742
	.sleb128 61
	.uleb128 0x8
	.4byte	.LASF1743
	.sleb128 62
	.uleb128 0x8
	.4byte	.LASF1744
	.sleb128 63
	.uleb128 0x8
	.4byte	.LASF1745
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF1746
	.sleb128 65
	.uleb128 0x8
	.4byte	.LASF1747
	.sleb128 66
	.uleb128 0x8
	.4byte	.LASF1748
	.sleb128 67
	.uleb128 0x8
	.4byte	.LASF1749
	.sleb128 68
	.uleb128 0x8
	.4byte	.LASF1750
	.sleb128 69
	.uleb128 0x8
	.4byte	.LASF1751
	.sleb128 70
	.uleb128 0x8
	.4byte	.LASF1752
	.sleb128 71
	.uleb128 0x8
	.4byte	.LASF1753
	.sleb128 72
	.uleb128 0x8
	.4byte	.LASF1754
	.sleb128 73
	.uleb128 0x8
	.4byte	.LASF1755
	.sleb128 74
	.uleb128 0x8
	.4byte	.LASF1756
	.sleb128 75
	.uleb128 0x8
	.4byte	.LASF1757
	.sleb128 76
	.uleb128 0x8
	.4byte	.LASF1758
	.sleb128 77
	.uleb128 0x8
	.4byte	.LASF1759
	.sleb128 78
	.uleb128 0x8
	.4byte	.LASF1760
	.sleb128 79
	.uleb128 0x8
	.4byte	.LASF1761
	.sleb128 80
	.uleb128 0x8
	.4byte	.LASF1762
	.sleb128 81
	.uleb128 0x8
	.4byte	.LASF1763
	.sleb128 82
	.uleb128 0x8
	.4byte	.LASF1764
	.sleb128 83
	.uleb128 0x8
	.4byte	.LASF1765
	.sleb128 84
	.uleb128 0x8
	.4byte	.LASF1766
	.sleb128 85
	.uleb128 0x8
	.4byte	.LASF1767
	.sleb128 86
	.uleb128 0x8
	.4byte	.LASF1768
	.sleb128 87
	.uleb128 0x8
	.4byte	.LASF1769
	.sleb128 88
	.uleb128 0x8
	.4byte	.LASF1770
	.sleb128 89
	.uleb128 0x8
	.4byte	.LASF1771
	.sleb128 90
	.uleb128 0x8
	.4byte	.LASF1772
	.sleb128 91
	.uleb128 0x8
	.4byte	.LASF1773
	.sleb128 92
	.uleb128 0x8
	.4byte	.LASF1774
	.sleb128 93
	.uleb128 0x8
	.4byte	.LASF1775
	.sleb128 94
	.uleb128 0x8
	.4byte	.LASF1776
	.sleb128 95
	.uleb128 0x8
	.4byte	.LASF1777
	.sleb128 96
	.uleb128 0x8
	.4byte	.LASF1778
	.sleb128 97
	.uleb128 0x8
	.4byte	.LASF1779
	.sleb128 98
	.uleb128 0x8
	.4byte	.LASF1780
	.sleb128 99
	.uleb128 0x8
	.4byte	.LASF1781
	.sleb128 100
	.uleb128 0x8
	.4byte	.LASF1782
	.sleb128 101
	.uleb128 0x8
	.4byte	.LASF1783
	.sleb128 102
	.uleb128 0x8
	.4byte	.LASF1784
	.sleb128 103
	.uleb128 0x8
	.4byte	.LASF1785
	.sleb128 104
	.uleb128 0x8
	.4byte	.LASF1786
	.sleb128 105
	.uleb128 0x8
	.4byte	.LASF1787
	.sleb128 106
	.uleb128 0x8
	.4byte	.LASF1788
	.sleb128 107
	.uleb128 0x8
	.4byte	.LASF1789
	.sleb128 108
	.uleb128 0x8
	.4byte	.LASF1790
	.sleb128 109
	.uleb128 0x8
	.4byte	.LASF1791
	.sleb128 110
	.uleb128 0x8
	.4byte	.LASF1792
	.sleb128 111
	.uleb128 0x8
	.4byte	.LASF1793
	.sleb128 112
	.uleb128 0x8
	.4byte	.LASF1794
	.sleb128 113
	.uleb128 0x8
	.4byte	.LASF1795
	.sleb128 114
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1962
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF1963
	.byte	0x1
	.2byte	0x585
	.byte	0x1
	.4byte	0x3ab0
	.uleb128 0x24
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x585
	.4byte	0x7a
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1797
	.byte	0x1
	.2byte	0x122
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2c
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x125
	.4byte	0x2e
	.4byte	.LLST0
	.uleb128 0x26
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x126
	.4byte	0x2e
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LASF1796
	.byte	0x1
	.2byte	0x127
	.4byte	0x3791
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0x5492
	.4byte	0x3b05
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0x54ad
	.4byte	0x3b1f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0x54ad
	.4byte	0x3b39
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0x5492
	.4byte	0x3b56
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0x54ad
	.4byte	0x3b70
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0x5492
	.4byte	0x3b93
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL17
	.4byte	0x54ad
	.4byte	0x3bad
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL19
	.4byte	0x54ad
	.4byte	0x3bca
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0x54ad
	.4byte	0x3be7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL23
	.4byte	0x54ad
	.4byte	0x3c04
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0x54ad
	.4byte	0x3c21
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0x54ad
	.4byte	0x3c3e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL26
	.4byte	0x54ad
	.4byte	0x3c5b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL27
	.4byte	0x54ad
	.4byte	0x3c78
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0x54ad
	.4byte	0x3c95
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0x54ad
	.4byte	0x3cb2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL30
	.4byte	0x54ad
	.4byte	0x3ccf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL31
	.4byte	0x5492
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0x54ad
	.4byte	0x3cf2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL33
	.4byte	0x5492
	.4byte	0x3d15
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL34
	.4byte	0x54ad
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1798
	.byte	0x1
	.2byte	0x18b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x419a
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x2e
	.4byte	.LLST2
	.uleb128 0x26
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x81
	.4byte	.LLST3
	.uleb128 0x2c
	.4byte	0x3a8f
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x192
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0x54c9
	.4byte	0x3d96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+672
	.byte	0
	.uleb128 0x28
	.4byte	.LVL36
	.4byte	0x5503
	.4byte	0x3dc0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+648
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL37
	.4byte	0x5503
	.4byte	0x3dee
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_font2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL38
	.4byte	0x5503
	.4byte	0x3e1c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_font2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL39
	.4byte	0x5503
	.4byte	0x3e49
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_font2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-1428
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL40
	.4byte	0x5503
	.4byte	0x3e77
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_font2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+608
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL41
	.4byte	0x5503
	.4byte	0x3ea8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+2644
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0x5503
	.4byte	0x3ed5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_fontk
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-3504
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL43
	.4byte	0x5503
	.4byte	0x3f06
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-1468
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0x5533
	.4byte	0x3f57
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x140
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4+572
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4+568
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_msgbg
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0x5577
	.4byte	0x3f6e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+648
	.byte	0
	.uleb128 0x28
	.4byte	.LVL50
	.4byte	0x5503
	.4byte	0x3f97
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+452
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL51
	.4byte	0x5503
	.4byte	0x3fbb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+2488
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0x5503
	.4byte	0x3fdf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-3660
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL55
	.4byte	0x5577
	.4byte	0x3ff6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-1428
	.byte	0
	.uleb128 0x28
	.4byte	.LVL60
	.4byte	0x5577
	.4byte	0x400d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.byte	0
	.uleb128 0x28
	.4byte	.LVL65
	.4byte	0x5577
	.4byte	0x4024
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.byte	0
	.uleb128 0x28
	.4byte	.LVL70
	.4byte	0x5577
	.4byte	0x403b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+608
	.byte	0
	.uleb128 0x28
	.4byte	.LVL75
	.4byte	0x5577
	.4byte	0x4052
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+2644
	.byte	0
	.uleb128 0x28
	.4byte	.LVL80
	.4byte	0x5577
	.4byte	0x4069
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-3504
	.byte	0
	.uleb128 0x28
	.4byte	.LVL85
	.4byte	0x5577
	.4byte	0x4080
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-1468
	.byte	0
	.uleb128 0x28
	.4byte	.LVL88
	.4byte	0x5591
	.4byte	0x40b1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x28
	.4byte	.LVL90
	.4byte	0x5591
	.4byte	0x40ec
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x800
	.byte	0x1c
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL93
	.4byte	0x5492
	.4byte	0x410e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0x5577
	.4byte	0x4125
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+452
	.byte	0
	.uleb128 0x28
	.4byte	.LVL98
	.4byte	0x5492
	.4byte	0x414a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+32
	.byte	0
	.uleb128 0x28
	.4byte	.LVL100
	.4byte	0x5577
	.4byte	0x4161
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+2488
	.byte	0
	.uleb128 0x28
	.4byte	.LVL103
	.4byte	0x5492
	.4byte	0x4186
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+64
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL105
	.4byte	0x5577
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-3660
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1799
	.byte	0x1
	.2byte	0x2bd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c3
	.uleb128 0x27
	.4byte	.LASF1800
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	ohud_distributed.9362
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1801
	.byte	0x1
	.2byte	0x509
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4232
	.uleb128 0x28
	.4byte	.LVL108
	.4byte	0x55c6
	.4byte	0x41f0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4+572
	.byte	0
	.uleb128 0x28
	.4byte	.LVL109
	.4byte	0x55d7
	.4byte	0x4207
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL110
	.4byte	0x55e8
	.4byte	0x421e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+648
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL111
	.4byte	0x55f9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+672
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1802
	.byte	0x1
	.2byte	0x2dd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a9e
	.uleb128 0x26
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x74
	.4byte	.LLST4
	.uleb128 0x2e
	.ascii	"plr\000"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x4a9e
	.uleb128 0x27
	.4byte	.LASF1803
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x4aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x27
	.4byte	.LASF1804
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x4aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.4byte	.LASF1805
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x4aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x2e
	.4byte	.LLST5
	.uleb128 0x2f
	.4byte	.LASF1806
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x2e
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x4350
	.uleb128 0x2f
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x32c
	.4byte	0x2e
	.4byte	.LLST7
	.uleb128 0x2f
	.4byte	.LASF1807
	.byte	0x1
	.2byte	0x32d
	.4byte	0x2e
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LASF1808
	.byte	0x1
	.2byte	0x32e
	.4byte	0x2e
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.LASF1809
	.byte	0x1
	.2byte	0x32f
	.4byte	0x2e
	.4byte	.LLST10
	.uleb128 0x28
	.4byte	.LVL168
	.4byte	0x560a
	.4byte	0x430f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -348
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.4byte	.LVL172
	.4byte	0x5492
	.4byte	0x4335
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -340
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL180
	.4byte	0x5624
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+96
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x441e
	.uleb128 0x2f
	.4byte	.LASF1475
	.byte	0x1
	.2byte	0x363
	.4byte	0x2e
	.4byte	.LLST11
	.uleb128 0x2f
	.4byte	.LASF1810
	.byte	0x1
	.2byte	0x364
	.4byte	0x2e
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LVL189
	.4byte	0x563e
	.4byte	0x4390
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.byte	0
	.uleb128 0x28
	.4byte	.LVL190
	.4byte	0x5492
	.4byte	0x43b3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL197
	.4byte	0x5624
	.4byte	0x43d0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+176
	.byte	0
	.uleb128 0x28
	.4byte	.LVL201
	.4byte	0x5577
	.4byte	0x43e7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.byte	0
	.uleb128 0x28
	.4byte	.LVL253
	.4byte	0x563e
	.4byte	0x43fe
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL255
	.4byte	0x5492
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x44ec
	.uleb128 0x2f
	.4byte	.LASF1811
	.byte	0x1
	.2byte	0x399
	.4byte	0x2e
	.4byte	.LLST13
	.uleb128 0x2f
	.4byte	.LASF1812
	.byte	0x1
	.2byte	0x39a
	.4byte	0x2e
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	.LVL207
	.4byte	0x563e
	.4byte	0x445e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.byte	0
	.uleb128 0x28
	.4byte	.LVL208
	.4byte	0x5492
	.4byte	0x4481
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL215
	.4byte	0x5624
	.4byte	0x449e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+256
	.byte	0
	.uleb128 0x28
	.4byte	.LVL218
	.4byte	0x5577
	.4byte	0x44b5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.byte	0
	.uleb128 0x28
	.4byte	.LVL249
	.4byte	0x563e
	.4byte	0x44cc
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL251
	.4byte	0x5492
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x4572
	.uleb128 0x26
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x2e
	.4byte	.LLST15
	.uleb128 0x2f
	.4byte	.LASF1808
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x2e
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0x4547
	.uleb128 0x26
	.ascii	"ok\000"
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x2e
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	.LVL242
	.4byte	0x560a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -340
	.byte	0x94
	.byte	0x1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -348
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL222
	.4byte	0x563e
	.4byte	0x455e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+608
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL230
	.4byte	0x5577
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+608
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x46cc
	.uleb128 0x26
	.ascii	"k\000"
	.byte	0x1
	.2byte	0x40d
	.4byte	0x2e
	.4byte	.LLST18
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x138
	.uleb128 0x2f
	.4byte	.LASF1813
	.byte	0x1
	.2byte	0x42a
	.4byte	0x2e
	.4byte	.LLST19
	.uleb128 0x2f
	.4byte	.LASF1814
	.byte	0x1
	.2byte	0x42a
	.4byte	0x2e
	.4byte	.LLST20
	.uleb128 0x2f
	.4byte	.LASF1815
	.byte	0x1
	.2byte	0x42a
	.4byte	0x2e
	.4byte	.LLST21
	.uleb128 0x2f
	.4byte	.LASF1816
	.byte	0x1
	.2byte	0x42a
	.4byte	0x2e
	.4byte	.LLST22
	.uleb128 0x2f
	.4byte	.LASF1817
	.byte	0x1
	.2byte	0x42b
	.4byte	0x2e
	.4byte	.LLST23
	.uleb128 0x2f
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x42b
	.4byte	0x2e
	.4byte	.LLST24
	.uleb128 0x2f
	.4byte	.LASF1819
	.byte	0x1
	.2byte	0x42b
	.4byte	0x2e
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	.LASF1820
	.byte	0x1
	.2byte	0x42b
	.4byte	0x2e
	.uleb128 0x2f
	.4byte	.LASF1821
	.byte	0x1
	.2byte	0x42c
	.4byte	0x2e
	.4byte	.LLST26
	.uleb128 0x26
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x42c
	.4byte	0x2e
	.4byte	.LLST27
	.uleb128 0x27
	.4byte	.LASF1822
	.byte	0x1
	.2byte	0x42d
	.4byte	0x4ab4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x28
	.4byte	.LVL267
	.4byte	0x5492
	.4byte	0x465e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -348
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x28
	.4byte	.LVL272
	.4byte	0x5492
	.4byte	0x4684
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -336
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x28
	.4byte	.LVL278
	.4byte	0x5492
	.4byte	0x46aa
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -332
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL284
	.4byte	0x5492
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL114
	.4byte	0x41c3
	.uleb128 0x28
	.4byte	.LVL115
	.4byte	0x564f
	.4byte	0x46ec
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4+572
	.byte	0
	.uleb128 0x28
	.4byte	.LVL116
	.4byte	0x5660
	.4byte	0x4703
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.uleb128 0x28
	.4byte	.LVL119
	.4byte	0x5671
	.4byte	0x4720
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-1428
	.byte	0
	.uleb128 0x28
	.4byte	.LVL120
	.4byte	0x5671
	.4byte	0x473d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.byte	0
	.uleb128 0x28
	.4byte	.LVL121
	.4byte	0x5671
	.4byte	0x475a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.byte	0
	.uleb128 0x28
	.4byte	.LVL122
	.4byte	0x5671
	.4byte	0x4777
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+608
	.byte	0
	.uleb128 0x28
	.4byte	.LVL123
	.4byte	0x563e
	.4byte	0x478e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+2644
	.byte	0
	.uleb128 0x28
	.4byte	.LVL124
	.4byte	0x563e
	.4byte	0x47a5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-3504
	.byte	0
	.uleb128 0x28
	.4byte	.LVL126
	.4byte	0x5577
	.4byte	0x47bc
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+2644
	.byte	0
	.uleb128 0x28
	.4byte	.LVL129
	.4byte	0x5671
	.4byte	0x47d8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+2644
	.byte	0
	.uleb128 0x28
	.4byte	.LVL132
	.4byte	0x5577
	.4byte	0x47ef
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-3504
	.byte	0
	.uleb128 0x28
	.4byte	.LVL135
	.4byte	0x5671
	.4byte	0x480b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-3504
	.byte	0
	.uleb128 0x28
	.4byte	.LVL137
	.4byte	0x5671
	.4byte	0x4827
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-1468
	.byte	0
	.uleb128 0x28
	.4byte	.LVL139
	.4byte	0x5671
	.4byte	0x4843
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+648
	.byte	0
	.uleb128 0x28
	.4byte	.LVL140
	.4byte	0x5492
	.4byte	0x4860
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL141
	.4byte	0x563e
	.4byte	0x4877
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+452
	.byte	0
	.uleb128 0x28
	.4byte	.LVL143
	.4byte	0x5577
	.4byte	0x488e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+452
	.byte	0
	.uleb128 0x28
	.4byte	.LVL146
	.4byte	0x5671
	.4byte	0x48aa
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+452
	.byte	0
	.uleb128 0x28
	.4byte	.LVL147
	.4byte	0x5492
	.4byte	0x48ca
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+32
	.byte	0
	.uleb128 0x28
	.4byte	.LVL148
	.4byte	0x563e
	.4byte	0x48e1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+2488
	.byte	0
	.uleb128 0x28
	.4byte	.LVL150
	.4byte	0x5577
	.4byte	0x48f8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+2488
	.byte	0
	.uleb128 0x28
	.4byte	.LVL153
	.4byte	0x5671
	.4byte	0x4914
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5+2488
	.byte	0
	.uleb128 0x28
	.4byte	.LVL154
	.4byte	0x5492
	.4byte	0x4934
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+64
	.byte	0
	.uleb128 0x28
	.4byte	.LVL155
	.4byte	0x563e
	.4byte	0x494b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-3660
	.byte	0
	.uleb128 0x28
	.4byte	.LVL157
	.4byte	0x5577
	.4byte	0x4962
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-3660
	.byte	0
	.uleb128 0x28
	.4byte	.LVL160
	.4byte	0x5671
	.4byte	0x497e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-3660
	.byte	0
	.uleb128 0x28
	.4byte	.LVL162
	.4byte	0x5687
	.4byte	0x4995
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+672
	.byte	0
	.uleb128 0x28
	.4byte	.LVL163
	.4byte	0x5660
	.4byte	0x49ac
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL165
	.4byte	0x419a
	.uleb128 0x28
	.4byte	.LVL166
	.4byte	0x563e
	.4byte	0x49cc
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-1428
	.byte	0
	.uleb128 0x28
	.4byte	.LVL183
	.4byte	0x5577
	.4byte	0x49e3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-1428
	.byte	0
	.uleb128 0x28
	.4byte	.LVL186
	.4byte	0x5671
	.4byte	0x49ff
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-1428
	.byte	0
	.uleb128 0x28
	.4byte	.LVL204
	.4byte	0x5671
	.4byte	0x4a1b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2+2684
	.byte	0
	.uleb128 0x28
	.4byte	.LVL221
	.4byte	0x5671
	.4byte	0x4a37
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3-3464
	.byte	0
	.uleb128 0x28
	.4byte	.LVL233
	.4byte	0x5671
	.4byte	0x4a53
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3+608
	.byte	0
	.uleb128 0x28
	.4byte	.LVL325
	.4byte	0x563e
	.4byte	0x4a6a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-1468
	.byte	0
	.uleb128 0x28
	.4byte	.LVL327
	.4byte	0x5492
	.4byte	0x4a8a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+576
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL329
	.4byte	0x5577
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4-1468
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2f64
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x4ab4
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x4f
	.byte	0
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x4ac4
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x1f
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x522
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ba9
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x524
	.4byte	0x2e
	.4byte	.LLST28
	.uleb128 0x26
	.ascii	"rc\000"
	.byte	0x1
	.2byte	0x524
	.4byte	0x2e
	.4byte	.LLST29
	.uleb128 0x26
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x525
	.4byte	0x7a
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	.LVL385
	.4byte	0x5698
	.4byte	0x4b1f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL387
	.4byte	0x56b2
	.4byte	0x4b33
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL391
	.4byte	0x56c3
	.4byte	0x4b4f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+672
	.byte	0
	.uleb128 0x28
	.4byte	.LVL392
	.4byte	0x56de
	.4byte	0x4b6b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4+572
	.byte	0
	.uleb128 0x28
	.4byte	.LVL393
	.4byte	0x5698
	.4byte	0x4b82
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.uleb128 0x28
	.4byte	.LVL396
	.4byte	0x56c3
	.4byte	0x4b9f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 24
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+672
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL397
	.4byte	0x56f9
	.byte	0
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x599
	.4byte	0x7a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd0
	.uleb128 0x34
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x59b
	.4byte	0x7a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x5b0
	.4byte	0x273
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4dc9
	.uleb128 0x35
	.ascii	"ev\000"
	.byte	0x1
	.2byte	0x5b0
	.4byte	0x4dc9
	.4byte	.LLST31
	.uleb128 0x27
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x5b3
	.4byte	0x4dcf
	.uleb128 0x5
	.byte	0x3
	.4byte	lastmessage.9532
	.uleb128 0x2f
	.4byte	.LASF1827
	.byte	0x1
	.2byte	0x5b4
	.4byte	0x81
	.4byte	.LLST32
	.uleb128 0x2f
	.4byte	.LASF1828
	.byte	0x1
	.2byte	0x5b5
	.4byte	0x273
	.4byte	.LLST33
	.uleb128 0x27
	.4byte	.LASF1829
	.byte	0x1
	.2byte	0x5b6
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	shiftdown.9535
	.uleb128 0x27
	.4byte	.LASF1830
	.byte	0x1
	.2byte	0x5b7
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	altdown.9536
	.uleb128 0x26
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x5b8
	.4byte	0x3c
	.4byte	.LLST34
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x5b9
	.4byte	0x2e
	.4byte	.LLST35
	.uleb128 0x2f
	.4byte	.LASF1831
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x2e
	.4byte	.LLST36
	.uleb128 0x27
	.4byte	.LASF1832
	.byte	0x1
	.2byte	0x5bc
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	num_nobrainers.9540
	.uleb128 0x36
	.4byte	0x3a98
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x630
	.4byte	0x4cab
	.uleb128 0x37
	.4byte	0x3aa5
	.4byte	.LLST37
	.byte	0
	.uleb128 0x38
	.4byte	0x3a98
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x61d
	.4byte	0x4cc9
	.uleb128 0x37
	.4byte	0x3aa5
	.4byte	.LLST38
	.byte	0
	.uleb128 0x38
	.4byte	0x3a98
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.2byte	0x621
	.4byte	0x4ce7
	.uleb128 0x37
	.4byte	0x3aa5
	.4byte	.LLST39
	.byte	0
	.uleb128 0x38
	.4byte	0x3a98
	.4byte	.LBB79
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.2byte	0x622
	.4byte	0x4d05
	.uleb128 0x37
	.4byte	0x3aa5
	.4byte	.LLST40
	.byte	0
	.uleb128 0x38
	.4byte	0x3a98
	.4byte	.LBB90
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.2byte	0x5ef
	.4byte	0x4d23
	.uleb128 0x37
	.4byte	0x3aa5
	.4byte	.LLST41
	.byte	0
	.uleb128 0x38
	.4byte	0x3a98
	.4byte	.LBB96
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.2byte	0x5fb
	.4byte	0x4d41
	.uleb128 0x37
	.4byte	0x3aa5
	.4byte	.LLST42
	.byte	0
	.uleb128 0x28
	.4byte	.LVL415
	.4byte	0x5698
	.4byte	0x4d5e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.uleb128 0x28
	.4byte	.LVL437
	.4byte	0x570f
	.4byte	0x4d75
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR7+600
	.byte	0
	.uleb128 0x28
	.4byte	.LVL442
	.4byte	0x570f
	.4byte	0x4d95
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1600
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR7+600
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL444
	.4byte	0x41c3
	.uleb128 0x28
	.4byte	.LVL449
	.4byte	0x56b2
	.4byte	0x4db5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL452
	.4byte	0x56b2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6-1624
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30c9
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x4ddf
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x50
	.byte	0
	.uleb128 0x39
	.4byte	.LASF1833
	.byte	0x6
	.byte	0x50
	.4byte	0x4dea
	.uleb128 0x6
	.4byte	0x4def
	.uleb128 0x5
	.byte	0x4
	.4byte	0x294
	.uleb128 0x3a
	.ascii	"plr\000"
	.byte	0x1
	.byte	0xa2
	.4byte	0x4a9e
	.uleb128 0x5
	.byte	0x3
	.4byte	plr
	.uleb128 0x3b
	.4byte	.LASF1834
	.byte	0x1
	.byte	0xab
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_title
	.uleb128 0x3b
	.4byte	.LASF1835
	.byte	0x1
	.byte	0xac
	.4byte	0x368e
	.uleb128 0x5
	.byte	0x3
	.4byte	w_message
	.uleb128 0x3b
	.4byte	.LASF1836
	.byte	0x1
	.byte	0xad
	.4byte	0x3776
	.uleb128 0x5
	.byte	0x3
	.4byte	w_chat
	.uleb128 0x14
	.4byte	0x3776
	.4byte	0x4e49
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF1837
	.byte	0x1
	.byte	0xae
	.4byte	0x4e39
	.uleb128 0x5
	.byte	0x3
	.4byte	w_inputbuffer
	.uleb128 0x3b
	.4byte	.LASF1838
	.byte	0x1
	.byte	0xaf
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_coordx
	.uleb128 0x3b
	.4byte	.LASF1839
	.byte	0x1
	.byte	0xb0
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_coordy
	.uleb128 0x3b
	.4byte	.LASF1840
	.byte	0x1
	.byte	0xb1
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_coordz
	.uleb128 0x3b
	.4byte	.LASF1841
	.byte	0x1
	.byte	0xb2
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_ammo
	.uleb128 0x3b
	.4byte	.LASF1842
	.byte	0x1
	.byte	0xb3
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_health
	.uleb128 0x3b
	.4byte	.LASF1843
	.byte	0x1
	.byte	0xb4
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_armor
	.uleb128 0x3b
	.4byte	.LASF1844
	.byte	0x1
	.byte	0xb5
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_weapon
	.uleb128 0x3b
	.4byte	.LASF1845
	.byte	0x1
	.byte	0xb6
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_keys
	.uleb128 0x3b
	.4byte	.LASF1846
	.byte	0x1
	.byte	0xb7
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_gkeys
	.uleb128 0x3b
	.4byte	.LASF1847
	.byte	0x1
	.byte	0xb8
	.4byte	0x3629
	.uleb128 0x5
	.byte	0x3
	.4byte	w_monsec
	.uleb128 0x3b
	.4byte	.LASF1848
	.byte	0x1
	.byte	0xb9
	.4byte	0x3732
	.uleb128 0x5
	.byte	0x3
	.4byte	w_rtext
	.uleb128 0x3b
	.4byte	.LASF1849
	.byte	0x1
	.byte	0xbb
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	always_off
	.uleb128 0x3b
	.4byte	.LASF1850
	.byte	0x1
	.byte	0xbc
	.4byte	0x3781
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_dest
	.uleb128 0x3b
	.4byte	.LASF1851
	.byte	0x1
	.byte	0xbe
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	message_on
	.uleb128 0x3b
	.4byte	.LASF1852
	.byte	0x1
	.byte	0xbf
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	message_list
	.uleb128 0x3b
	.4byte	.LASF1853
	.byte	0x1
	.byte	0xc1
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	message_nottobefuckedwith
	.uleb128 0x3b
	.4byte	.LASF1854
	.byte	0x1
	.byte	0xc2
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	message_counter
	.uleb128 0x3b
	.4byte	.LASF1855
	.byte	0x1
	.byte	0xc5
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	headsupactive
	.uleb128 0x3b
	.4byte	.LASF1856
	.byte	0x1
	.byte	0xd3
	.4byte	0x4ab4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_coordstrx
	.uleb128 0x3b
	.4byte	.LASF1857
	.byte	0x1
	.byte	0xd4
	.4byte	0x4ab4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_coordstry
	.uleb128 0x3b
	.4byte	.LASF1858
	.byte	0x1
	.byte	0xd5
	.4byte	0x4ab4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_coordstrz
	.uleb128 0x3b
	.4byte	.LASF1859
	.byte	0x1
	.byte	0xd6
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_ammostr
	.uleb128 0x3b
	.4byte	.LASF1860
	.byte	0x1
	.byte	0xd7
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_healthstr
	.uleb128 0x3b
	.4byte	.LASF1861
	.byte	0x1
	.byte	0xd8
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_armorstr
	.uleb128 0x3b
	.4byte	.LASF1862
	.byte	0x1
	.byte	0xd9
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_weapstr
	.uleb128 0x3b
	.4byte	.LASF1863
	.byte	0x1
	.byte	0xda
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_keysstr
	.uleb128 0x3b
	.4byte	.LASF1864
	.byte	0x1
	.byte	0xdb
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_gkeysstr
	.uleb128 0x3b
	.4byte	.LASF1865
	.byte	0x1
	.byte	0xdc
	.4byte	0x4aa4
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_monsecstr
	.uleb128 0x27
	.4byte	.LASF1866
	.byte	0x1
	.2byte	0x51f
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	bsdown
	.uleb128 0x27
	.4byte	.LASF1867
	.byte	0x1
	.2byte	0x520
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	bscounter
	.uleb128 0x14
	.4byte	0x7a
	.4byte	0x506a
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x7f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1868
	.byte	0x1
	.2byte	0x57a
	.4byte	0x505a
	.uleb128 0x5
	.byte	0x3
	.4byte	chatchars
	.uleb128 0x27
	.4byte	.LASF1869
	.byte	0x1
	.2byte	0x57b
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	head
	.uleb128 0x27
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0x57c
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	tail
	.uleb128 0x3c
	.4byte	.LASF1871
	.byte	0x2
	.byte	0x7d
	.4byte	0x2e
	.uleb128 0x14
	.4byte	0x261
	.4byte	0x50bb
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1872
	.byte	0x3
	.byte	0x39
	.4byte	0x50ab
	.uleb128 0x14
	.4byte	0x294
	.4byte	0x50d7
	.uleb128 0x21
	.4byte	0x6d
	.2byte	0x27ff
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1873
	.byte	0x6
	.byte	0x4d
	.4byte	0x50c6
	.uleb128 0x3c
	.4byte	.LASF1874
	.byte	0xf
	.byte	0x3e
	.4byte	0xb3
	.uleb128 0x3c
	.4byte	.LASF1875
	.byte	0xf
	.byte	0x3f
	.4byte	0xe5
	.uleb128 0x3c
	.4byte	.LASF1876
	.byte	0xf
	.byte	0x88
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1877
	.byte	0xf
	.byte	0x89
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1878
	.byte	0xf
	.byte	0x8f
	.4byte	0x273
	.uleb128 0x3c
	.4byte	.LASF1879
	.byte	0xf
	.byte	0x93
	.4byte	0x273
	.uleb128 0x3c
	.4byte	.LASF1880
	.byte	0xf
	.byte	0xb1
	.4byte	0x301a
	.uleb128 0x3c
	.4byte	.LASF1881
	.byte	0xf
	.byte	0xb8
	.4byte	0x3045
	.uleb128 0x3c
	.4byte	.LASF1882
	.byte	0xf
	.byte	0xc3
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1883
	.byte	0xf
	.byte	0xc4
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1884
	.byte	0xf
	.byte	0xca
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1885
	.byte	0xf
	.byte	0xcb
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1886
	.byte	0xf
	.byte	0xcc
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1887
	.byte	0xf
	.byte	0xd6
	.4byte	0x273
	.uleb128 0x3c
	.4byte	.LASF1888
	.byte	0xf
	.byte	0xe1
	.4byte	0x111
	.uleb128 0x3c
	.4byte	.LASF1889
	.byte	0xf
	.byte	0xe9
	.4byte	0x2e
	.uleb128 0x14
	.4byte	0x2f64
	.4byte	0x51a2
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1890
	.byte	0xf
	.byte	0xed
	.4byte	0x5192
	.uleb128 0x14
	.4byte	0x273
	.4byte	0x51bd
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1891
	.byte	0xf
	.byte	0xf0
	.4byte	0x51ad
	.uleb128 0x3d
	.4byte	.LASF1892
	.byte	0x1
	.byte	0xc8
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hudcolor_titl
	.uleb128 0x3d
	.4byte	.LASF1893
	.byte	0x1
	.byte	0xc9
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hudcolor_xyco
	.uleb128 0x3d
	.4byte	.LASF1894
	.byte	0x1
	.byte	0xcb
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hudcolor_mesg
	.uleb128 0x3d
	.4byte	.LASF1895
	.byte	0x1
	.byte	0xcc
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hudcolor_chat
	.uleb128 0x3d
	.4byte	.LASF1896
	.byte	0x1
	.byte	0xcf
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hudcolor_list
	.uleb128 0x3d
	.4byte	.LASF1897
	.byte	0x1
	.byte	0xd0
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_list_bgon
	.uleb128 0x3d
	.4byte	.LASF1898
	.byte	0x1
	.byte	0xcd
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_msg_lines
	.uleb128 0x3d
	.4byte	.LASF1899
	.byte	0x1
	.byte	0x35
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_distributed
	.uleb128 0x3d
	.4byte	.LASF1900
	.byte	0x1
	.byte	0x33
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_displayed
	.uleb128 0x3d
	.4byte	.LASF1901
	.byte	0x1
	.byte	0x32
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_active
	.uleb128 0x3d
	.4byte	.LASF1902
	.byte	0x1
	.byte	0x34
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_nosecrets
	.uleb128 0x3c
	.4byte	.LASF1903
	.byte	0x14
	.byte	0x59
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1904
	.byte	0x14
	.byte	0x5a
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1905
	.byte	0x14
	.byte	0x5b
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1906
	.byte	0x14
	.byte	0x5c
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1907
	.byte	0x14
	.byte	0x5d
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1908
	.byte	0x14
	.byte	0x5e
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1909
	.byte	0x14
	.byte	0x5f
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1910
	.byte	0x14
	.byte	0x60
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1911
	.byte	0x15
	.byte	0x6c
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1912
	.byte	0x15
	.byte	0x73
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1913
	.byte	0x15
	.byte	0x74
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1914
	.byte	0x15
	.byte	0x75
	.4byte	0x2e
	.uleb128 0x3c
	.4byte	.LASF1915
	.byte	0x15
	.byte	0x90
	.4byte	0x2f34
	.uleb128 0x3c
	.4byte	.LASF1501
	.byte	0x16
	.byte	0x33
	.4byte	0x2e
	.uleb128 0x3d
	.4byte	.LASF1916
	.byte	0x1
	.byte	0x36
	.4byte	0x2e
	.uleb128 0x5
	.byte	0x3
	.4byte	hud_graph_keys
	.uleb128 0x14
	.4byte	0x81
	.4byte	0x533e
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x9
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF1917
	.byte	0x1
	.byte	0x84
	.4byte	0x532e
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_macros
	.uleb128 0x14
	.4byte	0x81
	.4byte	0x535f
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x3
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF1918
	.byte	0x1
	.byte	0x94
	.4byte	0x534f
	.uleb128 0x5
	.byte	0x3
	.4byte	player_names
	.uleb128 0x3d
	.4byte	.LASF1919
	.byte	0x1
	.byte	0x9f
	.4byte	0x2f34
	.uleb128 0x5
	.byte	0x3
	.4byte	plyrcoltran
	.uleb128 0x3d
	.4byte	.LASF1920
	.byte	0x1
	.byte	0xa1
	.4byte	0x7a
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_char
	.uleb128 0x14
	.4byte	0x3542
	.4byte	0x53a2
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x5e
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF1921
	.byte	0x1
	.byte	0xa5
	.4byte	0x5392
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_font
	.uleb128 0x3d
	.4byte	.LASF1922
	.byte	0x1
	.byte	0xa6
	.4byte	0x5392
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_font2
	.uleb128 0x3d
	.4byte	.LASF1923
	.byte	0x1
	.byte	0xa7
	.4byte	0x5392
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_fontk
	.uleb128 0x14
	.4byte	0x3542
	.4byte	0x53e5
	.uleb128 0x15
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF1924
	.byte	0x1
	.byte	0xa8
	.4byte	0x53d5
	.uleb128 0x5
	.byte	0x3
	.4byte	hu_msgbg
	.uleb128 0x3d
	.4byte	.LASF1925
	.byte	0x1
	.byte	0xbd
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_on
	.uleb128 0x3d
	.4byte	.LASF1926
	.byte	0x1
	.byte	0xc0
	.4byte	0x273
	.uleb128 0x5
	.byte	0x3
	.4byte	message_dontfuckwithme
	.uleb128 0x3c
	.4byte	.LASF1927
	.byte	0x1
	.byte	0xc3
	.4byte	0x2e
	.uleb128 0x14
	.4byte	0x542e
	.4byte	0x542e
	.uleb128 0x3e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x74
	.uleb128 0x3c
	.4byte	.LASF1928
	.byte	0x1
	.byte	0xe5
	.4byte	0x5423
	.uleb128 0x3c
	.4byte	.LASF1929
	.byte	0x1
	.byte	0xe6
	.4byte	0x5423
	.uleb128 0x3c
	.4byte	.LASF1930
	.byte	0x1
	.byte	0xe7
	.4byte	0x5423
	.uleb128 0x3c
	.4byte	.LASF1931
	.byte	0x1
	.byte	0xe8
	.4byte	0x5423
	.uleb128 0x3c
	.4byte	.LASF1932
	.byte	0x1
	.byte	0xea
	.4byte	0x2e
	.uleb128 0x3d
	.4byte	.LASF1933
	.byte	0x1
	.byte	0xf0
	.4byte	0x81
	.uleb128 0x5
	.byte	0x3
	.4byte	shiftxform
	.uleb128 0x3d
	.4byte	.LASF1934
	.byte	0x1
	.byte	0xf2
	.4byte	0x548d
	.uleb128 0x5
	.byte	0x3
	.4byte	english_shiftxform
	.uleb128 0x6
	.4byte	0x505a
	.uleb128 0x3f
	.4byte	.LASF1939
	.byte	0x18
	.byte	0xd9
	.4byte	0x2e
	.4byte	0x54ad
	.uleb128 0x40
	.4byte	0x74
	.uleb128 0x40
	.4byte	0x81
	.uleb128 0xd
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1935
	.byte	0x17
	.byte	0x6b
	.4byte	0x54c3
	.uleb128 0x40
	.4byte	0x54c3
	.uleb128 0x40
	.4byte	0x81
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3542
	.uleb128 0x41
	.4byte	.LASF1936
	.byte	0x12
	.byte	0xae
	.4byte	0x54fd
	.uleb128 0x40
	.4byte	0x54fd
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x360d
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x3688
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x368e
	.uleb128 0x41
	.4byte	.LASF1937
	.byte	0x12
	.byte	0x95
	.4byte	0x552d
	.uleb128 0x40
	.4byte	0x552d
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x360d
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3629
	.uleb128 0x41
	.4byte	.LASF1938
	.byte	0x12
	.byte	0xc3
	.4byte	0x5571
	.uleb128 0x40
	.4byte	0x5571
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x360d
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x360d
	.uleb128 0x40
	.4byte	0x3688
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3732
	.uleb128 0x3f
	.4byte	.LASF1940
	.byte	0x12
	.byte	0xa0
	.4byte	0x273
	.4byte	0x5591
	.uleb128 0x40
	.4byte	0x552d
	.uleb128 0x40
	.4byte	0x7a
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1941
	.byte	0x12
	.byte	0xdc
	.4byte	0x55c0
	.uleb128 0x40
	.4byte	0x55c0
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x360d
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x2e
	.uleb128 0x40
	.4byte	0x3688
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3776
	.uleb128 0x41
	.4byte	.LASF1942
	.byte	0x12
	.byte	0xd9
	.4byte	0x55d7
	.uleb128 0x40
	.4byte	0x5571
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1943
	.byte	0x12
	.byte	0xf5
	.4byte	0x55e8
	.uleb128 0x40
	.4byte	0x55c0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1944
	.byte	0x12
	.byte	0xa6
	.4byte	0x55f9
	.uleb128 0x40
	.4byte	0x552d
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1945
	.byte	0x12
	.byte	0xbf
	.4byte	0x560a
	.uleb128 0x40
	.4byte	0x54fd
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF1946
	.byte	0x9
	.byte	0x5a
	.4byte	0x2e
	.4byte	0x5624
	.uleb128 0x40
	.4byte	0x2e13
	.uleb128 0x40
	.4byte	0x19a
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF1947
	.byte	0x19
	.byte	0x1a
	.4byte	0x74
	.4byte	0x563e
	.uleb128 0x40
	.4byte	0x74
	.uleb128 0x40
	.4byte	0x81
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1948
	.byte	0x12
	.byte	0x93
	.4byte	0x564f
	.uleb128 0x40
	.4byte	0x552d
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1949
	.byte	0x12
	.byte	0xd6
	.4byte	0x5660
	.uleb128 0x40
	.4byte	0x5571
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1950
	.byte	0x12
	.byte	0xf2
	.4byte	0x5671
	.uleb128 0x40
	.4byte	0x55c0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1951
	.byte	0x12
	.byte	0xa3
	.4byte	0x5687
	.uleb128 0x40
	.4byte	0x552d
	.uleb128 0x40
	.4byte	0x273
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1952
	.byte	0x12
	.byte	0xbc
	.4byte	0x5698
	.uleb128 0x40
	.4byte	0x54fd
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF1953
	.byte	0x12
	.byte	0xee
	.4byte	0x273
	.4byte	0x56b2
	.uleb128 0x40
	.4byte	0x55c0
	.uleb128 0x40
	.4byte	0x3c
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1954
	.byte	0x12
	.byte	0xe6
	.4byte	0x56c3
	.uleb128 0x40
	.4byte	0x55c0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1955
	.byte	0x12
	.byte	0xb9
	.4byte	0x56de
	.uleb128 0x40
	.4byte	0x54fd
	.uleb128 0x40
	.4byte	0x81
	.uleb128 0x40
	.4byte	0x81
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1956
	.byte	0x12
	.byte	0xc8
	.4byte	0x56f9
	.uleb128 0x40
	.4byte	0x5571
	.uleb128 0x40
	.4byte	0x81
	.uleb128 0x40
	.4byte	0x81
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1957
	.byte	0x1a
	.byte	0x3e
	.4byte	0x570f
	.uleb128 0x40
	.4byte	0x2c
	.uleb128 0x40
	.4byte	0x2e
	.byte	0
	.uleb128 0x42
	.4byte	.LASF1958
	.byte	0x19
	.byte	0x1e
	.4byte	0x74
	.uleb128 0x40
	.4byte	0x74
	.uleb128 0x40
	.4byte	0x81
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_ammostr
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_healthstr
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_armorstr
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_weapstr
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_keysstr
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_gkeysstr
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_monsecstr
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_coordstrx
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_coordstry
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_coordstrz
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_keysstr
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_gkeysstr
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_coordstrx
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_coordstry
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_coordstrz
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_ammostr
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_healthstr
	.byte	0x9f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_armorstr
	.byte	0x9f
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_weapstr
	.byte	0x9f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -4
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x142
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -322
	.byte	0x9f
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -322
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -322
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	hud_monsecstr
	.byte	0x9f
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	hud_ammostr-2
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	hud_ammostr-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL381-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -344
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -344
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168-1-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x10
	.byte	0x7a
	.sleb128 0
	.byte	0x7a
	.sleb128 3
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x10
	.byte	0x7a
	.sleb128 0
	.byte	0x7a
	.sleb128 3
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x10
	.byte	0x7a
	.sleb128 0
	.byte	0x7a
	.sleb128 3
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255-1-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x2
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251-1-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL372-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL267-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -348
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -348
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -348
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -348
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -336
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -336
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -336
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -336
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -332
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -332
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -332
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -332
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -324
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -324
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -324
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -324
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -328
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -328
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -328
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -328
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -340
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL394-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL394-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL422-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x28
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL451-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x10
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL444-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x10
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL449-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-1-.Ltext0
	.2byte	0x10
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL454-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
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
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF62:
	.ascii	"upstate\000"
.LASF860:
	.ascii	"S_BSPI_RUN1\000"
.LASF861:
	.ascii	"S_BSPI_RUN2\000"
.LASF862:
	.ascii	"S_BSPI_RUN3\000"
.LASF863:
	.ascii	"S_BSPI_RUN4\000"
.LASF864:
	.ascii	"S_BSPI_RUN5\000"
.LASF865:
	.ascii	"S_BSPI_RUN6\000"
.LASF866:
	.ascii	"S_BSPI_RUN7\000"
.LASF867:
	.ascii	"S_BSPI_RUN8\000"
.LASF868:
	.ascii	"S_BSPI_RUN9\000"
.LASF150:
	.ascii	"SPR_YSKU\000"
.LASF1691:
	.ascii	"sfx_sawup\000"
.LASF1523:
	.ascii	"attacker\000"
.LASF515:
	.ascii	"S_FIRE10\000"
.LASF516:
	.ascii	"S_FIRE11\000"
.LASF517:
	.ascii	"S_FIRE12\000"
.LASF518:
	.ascii	"S_FIRE13\000"
.LASF519:
	.ascii	"S_FIRE14\000"
.LASF520:
	.ascii	"S_FIRE15\000"
.LASF521:
	.ascii	"S_FIRE16\000"
.LASF522:
	.ascii	"S_FIRE17\000"
.LASF523:
	.ascii	"S_FIRE18\000"
.LASF524:
	.ascii	"S_FIRE19\000"
.LASF1405:
	.ascii	"MT_MISC84\000"
.LASF1338:
	.ascii	"MT_MISC20\000"
.LASF1083:
	.ascii	"S_MEGA2\000"
.LASF1084:
	.ascii	"S_MEGA3\000"
.LASF1085:
	.ascii	"S_MEGA4\000"
.LASF1342:
	.ascii	"MT_MISC24\000"
.LASF1343:
	.ascii	"MT_MISC25\000"
.LASF1345:
	.ascii	"MT_MISC26\000"
.LASF1346:
	.ascii	"MT_MISC27\000"
.LASF1347:
	.ascii	"MT_MISC28\000"
.LASF1350:
	.ascii	"MT_MISC29\000"
.LASF714:
	.ascii	"S_SARG_PAIN2\000"
.LASF1480:
	.ascii	"threshold\000"
.LASF36:
	.ascii	"wp_pistol\000"
.LASF191:
	.ascii	"SPR_COL1\000"
.LASF192:
	.ascii	"SPR_COL2\000"
.LASF193:
	.ascii	"SPR_COL3\000"
.LASF194:
	.ascii	"SPR_COL4\000"
.LASF203:
	.ascii	"SPR_COL5\000"
.LASF197:
	.ascii	"SPR_COL6\000"
.LASF1963:
	.ascii	"HU_queueChatChar\000"
.LASF19:
	.ascii	"pack_plut\000"
.LASF1787:
	.ascii	"sfx_skesit\000"
.LASF1768:
	.ascii	"sfx_tink\000"
.LASF525:
	.ascii	"S_FIRE20\000"
.LASF526:
	.ascii	"S_FIRE21\000"
.LASF527:
	.ascii	"S_FIRE22\000"
.LASF528:
	.ascii	"S_FIRE23\000"
.LASF529:
	.ascii	"S_FIRE24\000"
.LASF177:
	.ascii	"SPR_COLU\000"
.LASF531:
	.ascii	"S_FIRE26\000"
.LASF25:
	.ascii	"GS_FINALE\000"
.LASF533:
	.ascii	"S_FIRE28\000"
.LASF534:
	.ascii	"S_FIRE29\000"
.LASF66:
	.ascii	"flashstate\000"
.LASF1351:
	.ascii	"MT_MISC30\000"
.LASF1266:
	.ascii	"action\000"
.LASF1353:
	.ascii	"MT_MISC32\000"
.LASF1011:
	.ascii	"S_BRAINEYE1\000"
.LASF876:
	.ascii	"S_BSPI_PAIN\000"
.LASF1356:
	.ascii	"MT_MISC35\000"
.LASF348:
	.ascii	"S_BFGEXP\000"
.LASF50:
	.ascii	"am_misl\000"
.LASF1359:
	.ascii	"MT_MISC38\000"
.LASF1360:
	.ascii	"MT_MISC39\000"
.LASF1629:
	.ascii	"floorpic\000"
.LASF68:
	.ascii	"_Bool\000"
.LASF878:
	.ascii	"S_BSPI_DIE1\000"
.LASF1421:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF1451:
	.ascii	"NUMPSPRITES\000"
.LASF883:
	.ascii	"S_BSPI_DIE6\000"
.LASF1774:
	.ascii	"sfx_getpow\000"
.LASF1648:
	.ascii	"ST_POSITIVE\000"
.LASF1500:
	.ascii	"viewz\000"
.LASF1675:
	.ascii	"needsupdate\000"
.LASF774:
	.ascii	"S_BOSS_RAISE1\000"
.LASF64:
	.ascii	"readystate\000"
.LASF1285:
	.ascii	"MT_HEAD\000"
.LASF776:
	.ascii	"S_BOSS_RAISE3\000"
.LASF535:
	.ascii	"S_FIRE30\000"
.LASF680:
	.ascii	"S_TROO_PAIN\000"
.LASF969:
	.ascii	"S_SSWV_DIE1\000"
.LASF779:
	.ascii	"S_BOSS_RAISE6\000"
.LASF971:
	.ascii	"S_SSWV_DIE3\000"
.LASF972:
	.ascii	"S_SSWV_DIE4\000"
.LASF973:
	.ascii	"S_SSWV_DIE5\000"
.LASF145:
	.ascii	"SPR_BKEY\000"
.LASF791:
	.ascii	"S_BOS2_ATK1\000"
.LASF792:
	.ascii	"S_BOS2_ATK2\000"
.LASF793:
	.ascii	"S_BOS2_ATK3\000"
.LASF179:
	.ascii	"SPR_GOR1\000"
.LASF186:
	.ascii	"SPR_GOR2\000"
.LASF187:
	.ascii	"SPR_GOR3\000"
.LASF188:
	.ascii	"SPR_GOR4\000"
.LASF189:
	.ascii	"SPR_GOR5\000"
.LASF1363:
	.ascii	"MT_MISC42\000"
.LASF1364:
	.ascii	"MT_MISC43\000"
.LASF548:
	.ascii	"S_SKEL_RUN1\000"
.LASF549:
	.ascii	"S_SKEL_RUN2\000"
.LASF550:
	.ascii	"S_SKEL_RUN3\000"
.LASF551:
	.ascii	"S_SKEL_RUN4\000"
.LASF552:
	.ascii	"S_SKEL_RUN5\000"
.LASF553:
	.ascii	"S_SKEL_RUN6\000"
.LASF554:
	.ascii	"S_SKEL_RUN7\000"
.LASF555:
	.ascii	"S_SKEL_RUN8\000"
.LASF556:
	.ascii	"S_SKEL_RUN9\000"
.LASF39:
	.ascii	"wp_missile\000"
.LASF1034:
	.ascii	"S_BEXP2\000"
.LASF1428:
	.ascii	"seestate\000"
.LASF1036:
	.ascii	"S_BEXP4\000"
.LASF729:
	.ascii	"S_HEAD_ATK1\000"
.LASF730:
	.ascii	"S_HEAD_ATK2\000"
.LASF731:
	.ascii	"S_HEAD_ATK3\000"
.LASF1638:
	.ascii	"slopetype\000"
.LASF983:
	.ascii	"S_SSWV_RAISE1\000"
.LASF984:
	.ascii	"S_SSWV_RAISE2\000"
.LASF985:
	.ascii	"S_SSWV_RAISE3\000"
.LASF986:
	.ascii	"S_SSWV_RAISE4\000"
.LASF987:
	.ascii	"S_SSWV_RAISE5\000"
.LASF1454:
	.ascii	"angle\000"
.LASF1818:
	.ascii	"idx2\000"
.LASF1280:
	.ascii	"MT_FATSHOT\000"
.LASF1559:
	.ascii	"comp_falloff\000"
.LASF165:
	.ascii	"SPR_CELL\000"
.LASF1791:
	.ascii	"sfx_dgatk\000"
.LASF166:
	.ascii	"SPR_CELP\000"
.LASF1149:
	.ascii	"S_HEARTCOL\000"
.LASF1725:
	.ascii	"sfx_cybsit\000"
.LASF1908:
	.ascii	"armor_green\000"
.LASF1515:
	.ascii	"cheats\000"
.LASF1496:
	.ascii	"numlines\000"
.LASF1066:
	.ascii	"S_MEDI\000"
.LASF1073:
	.ascii	"S_PINV\000"
.LASF1329:
	.ascii	"MT_INS\000"
.LASF1372:
	.ascii	"MT_MISC51\000"
.LASF1373:
	.ascii	"MT_MISC52\000"
.LASF1327:
	.ascii	"MT_INV\000"
.LASF1375:
	.ascii	"MT_MISC54\000"
.LASF1959:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF284:
	.ascii	"S_MISSILEUP\000"
.LASF1378:
	.ascii	"MT_MISC57\000"
.LASF1379:
	.ascii	"MT_MISC58\000"
.LASF1380:
	.ascii	"MT_MISC59\000"
.LASF461:
	.ascii	"S_SPOS_RAISE1\000"
.LASF1735:
	.ascii	"sfx_vilatk\000"
.LASF1929:
	.ascii	"mapnames2\000"
.LASF1851:
	.ascii	"message_on\000"
.LASF16:
	.ascii	"doom\000"
.LASF1685:
	.ascii	"sfx_dshtgn\000"
.LASF255:
	.ascii	"S_SGUNFLASH1\000"
.LASF256:
	.ascii	"S_SGUNFLASH2\000"
.LASF803:
	.ascii	"S_BOS2_RAISE1\000"
.LASF804:
	.ascii	"S_BOS2_RAISE2\000"
.LASF805:
	.ascii	"S_BOS2_RAISE3\000"
.LASF806:
	.ascii	"S_BOS2_RAISE4\000"
.LASF807:
	.ascii	"S_BOS2_RAISE5\000"
.LASF808:
	.ascii	"S_BOS2_RAISE6\000"
.LASF809:
	.ascii	"S_BOS2_RAISE7\000"
.LASF568:
	.ascii	"S_SKEL_PAIN\000"
.LASF1055:
	.ascii	"S_RKEY\000"
.LASF77:
	.ascii	"next\000"
.LASF1957:
	.ascii	"S_StartSound\000"
.LASF1697:
	.ascii	"sfx_firsht\000"
.LASF1689:
	.ascii	"sfx_plasma\000"
.LASF237:
	.ascii	"S_PISTOLUP\000"
.LASF923:
	.ascii	"S_CYBER_DIE8\000"
.LASF1797:
	.ascii	"HU_Init\000"
.LASF1620:
	.ascii	"touching_thinglist\000"
.LASF1381:
	.ascii	"MT_MISC60\000"
.LASF1382:
	.ascii	"MT_MISC61\000"
.LASF1383:
	.ascii	"MT_MISC62\000"
.LASF1384:
	.ascii	"MT_MISC63\000"
.LASF1385:
	.ascii	"MT_MISC64\000"
.LASF1386:
	.ascii	"MT_MISC65\000"
.LASF1387:
	.ascii	"MT_MISC66\000"
.LASF1388:
	.ascii	"MT_MISC67\000"
.LASF352:
	.ascii	"S_EXPLODE1\000"
.LASF353:
	.ascii	"S_EXPLODE2\000"
.LASF354:
	.ascii	"S_EXPLODE3\000"
.LASF1780:
	.ascii	"sfx_manatk\000"
.LASF1930:
	.ascii	"mapnamesp\000"
.LASF543:
	.ascii	"S_TRACEEXP1\000"
.LASF544:
	.ascii	"S_TRACEEXP2\000"
.LASF545:
	.ascii	"S_TRACEEXP3\000"
.LASF1931:
	.ascii	"mapnamest\000"
.LASF931:
	.ascii	"S_PAIN_RUN5\000"
.LASF1033:
	.ascii	"S_BEXP\000"
.LASF932:
	.ascii	"S_PAIN_RUN6\000"
.LASF1524:
	.ascii	"extralight\000"
.LASF1150:
	.ascii	"S_HEARTCOL2\000"
.LASF329:
	.ascii	"S_RBALLX1\000"
.LASF1249:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1229:
	.ascii	"S_PLS1EXP\000"
.LASF1442:
	.ascii	"height\000"
.LASF1312:
	.ascii	"MT_TELEPORTMAN\000"
.LASF1891:
	.ascii	"playeringame\000"
.LASF23:
	.ascii	"GS_LEVEL\000"
.LASF1391:
	.ascii	"MT_MISC70\000"
.LASF110:
	.ascii	"SPR_IFOG\000"
.LASF1393:
	.ascii	"MT_MISC72\000"
.LASF1394:
	.ascii	"MT_MISC73\000"
.LASF1395:
	.ascii	"MT_MISC74\000"
.LASF1396:
	.ascii	"MT_MISC75\000"
.LASF1397:
	.ascii	"MT_MISC76\000"
.LASF1156:
	.ascii	"S_GREENTORCH2\000"
.LASF1157:
	.ascii	"S_GREENTORCH3\000"
.LASF1158:
	.ascii	"S_GREENTORCH4\000"
.LASF997:
	.ascii	"S_COMMKEEN9\000"
.LASF646:
	.ascii	"S_CPOS_PAIN2\000"
.LASF1652:
	.ascii	"RF_MID_TILE\000"
.LASF869:
	.ascii	"S_BSPI_RUN10\000"
.LASF870:
	.ascii	"S_BSPI_RUN11\000"
.LASF871:
	.ascii	"S_BSPI_RUN12\000"
.LASF953:
	.ascii	"S_SSWV_RUN1\000"
.LASF954:
	.ascii	"S_SSWV_RUN2\000"
.LASF955:
	.ascii	"S_SSWV_RUN3\000"
.LASF956:
	.ascii	"S_SSWV_RUN4\000"
.LASF957:
	.ascii	"S_SSWV_RUN5\000"
.LASF958:
	.ascii	"S_SSWV_RUN6\000"
.LASF959:
	.ascii	"S_SSWV_RUN7\000"
.LASF960:
	.ascii	"S_SSWV_RUN8\000"
.LASF846:
	.ascii	"S_SPID_DIE1\000"
.LASF1808:
	.ascii	"ammolevel\000"
.LASF67:
	.ascii	"weaponinfo_t\000"
.LASF1279:
	.ascii	"MT_FATSO\000"
.LASF682:
	.ascii	"S_TROO_DIE1\000"
.LASF683:
	.ascii	"S_TROO_DIE2\000"
.LASF684:
	.ascii	"S_TROO_DIE3\000"
.LASF685:
	.ascii	"S_TROO_DIE4\000"
.LASF686:
	.ascii	"S_TROO_DIE5\000"
.LASF1666:
	.ascii	"CR_BROWN\000"
.LASF11:
	.ascii	"shareware\000"
.LASF1951:
	.ascii	"HUlib_drawTextLine\000"
.LASF1063:
	.ascii	"S_YSKULL\000"
.LASF1064:
	.ascii	"S_YSKULL2\000"
.LASF163:
	.ascii	"SPR_ROCK\000"
.LASF1304:
	.ascii	"MT_ROCKET\000"
.LASF1402:
	.ascii	"MT_MISC81\000"
.LASF1403:
	.ascii	"MT_MISC82\000"
.LASF1404:
	.ascii	"MT_MISC83\000"
.LASF641:
	.ascii	"S_CPOS_ATK1\000"
.LASF642:
	.ascii	"S_CPOS_ATK2\000"
.LASF643:
	.ascii	"S_CPOS_ATK3\000"
.LASF644:
	.ascii	"S_CPOS_ATK4\000"
.LASF1271:
	.ascii	"MT_PLAYER\000"
.LASF1071:
	.ascii	"S_SOUL5\000"
.LASF175:
	.ascii	"SPR_SHOT\000"
.LASF370:
	.ascii	"S_IFOG2\000"
.LASF371:
	.ascii	"S_IFOG3\000"
.LASF372:
	.ascii	"S_IFOG4\000"
.LASF373:
	.ascii	"S_IFOG5\000"
.LASF104:
	.ascii	"SPR_PLSE\000"
.LASF96:
	.ascii	"SPR_PLSF\000"
.LASF95:
	.ascii	"SPR_PLSG\000"
.LASF766:
	.ascii	"S_BOSS_PAIN2\000"
.LASF1882:
	.ascii	"consoleplayer\000"
.LASF466:
	.ascii	"S_VILE_STND\000"
.LASF994:
	.ascii	"S_COMMKEEN6\000"
.LASF995:
	.ascii	"S_COMMKEEN7\000"
.LASF996:
	.ascii	"S_COMMKEEN8\000"
.LASF103:
	.ascii	"SPR_PLSS\000"
.LASF845:
	.ascii	"S_SPID_PAIN2\000"
.LASF1468:
	.ascii	"dropoffz\000"
.LASF1715:
	.ascii	"sfx_oof\000"
.LASF1443:
	.ascii	"mass\000"
.LASF1756:
	.ascii	"sfx_posact\000"
.LASF1197:
	.ascii	"S_DOGS_STND\000"
.LASF216:
	.ascii	"SPR_POB1\000"
.LASF217:
	.ascii	"SPR_POB2\000"
.LASF1793:
	.ascii	"sfx_dgdth\000"
.LASF1067:
	.ascii	"S_SOUL\000"
.LASF1747:
	.ascii	"sfx_skldth\000"
.LASF1077:
	.ascii	"S_PSTR\000"
.LASF1662:
	.ascii	"CR_BRICK\000"
.LASF909:
	.ascii	"S_CYBER_ATK1\000"
.LASF910:
	.ascii	"S_CYBER_ATK2\000"
.LASF911:
	.ascii	"S_CYBER_ATK3\000"
.LASF912:
	.ascii	"S_CYBER_ATK4\000"
.LASF913:
	.ascii	"S_CYBER_ATK5\000"
.LASF914:
	.ascii	"S_CYBER_ATK6\000"
.LASF1902:
	.ascii	"hud_nosecrets\000"
.LASF1104:
	.ascii	"S_BFUG\000"
.LASF142:
	.ascii	"SPR_FCAN\000"
.LASF587:
	.ascii	"S_FATT_STND\000"
.LASF1024:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1025:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1026:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF308:
	.ascii	"S_BFGUP\000"
.LASF1474:
	.ascii	"intflags\000"
.LASF147:
	.ascii	"SPR_YKEY\000"
.LASF1531:
	.ascii	"m_thing\000"
.LASF695:
	.ascii	"S_TROO_RAISE1\000"
.LASF696:
	.ascii	"S_TROO_RAISE2\000"
.LASF697:
	.ascii	"S_TROO_RAISE3\000"
.LASF698:
	.ascii	"S_TROO_RAISE4\000"
.LASF699:
	.ascii	"S_TROO_RAISE5\000"
.LASF1108:
	.ascii	"S_PLAS\000"
.LASF990:
	.ascii	"S_COMMKEEN2\000"
.LASF991:
	.ascii	"S_COMMKEEN3\000"
.LASF992:
	.ascii	"S_COMMKEEN4\000"
.LASF993:
	.ascii	"S_COMMKEEN5\000"
.LASF374:
	.ascii	"S_PLAY\000"
.LASF940:
	.ascii	"S_PAIN_DIE2\000"
.LASF941:
	.ascii	"S_PAIN_DIE3\000"
.LASF942:
	.ascii	"S_PAIN_DIE4\000"
.LASF943:
	.ascii	"S_PAIN_DIE5\000"
.LASF944:
	.ascii	"S_PAIN_DIE6\000"
.LASF1282:
	.ascii	"MT_TROOP\000"
.LASF495:
	.ascii	"S_VILE_PAIN2\000"
.LASF1921:
	.ascii	"hu_font\000"
.LASF1837:
	.ascii	"w_inputbuffer\000"
.LASF623:
	.ascii	"S_FATT_RAISE1\000"
.LASF40:
	.ascii	"wp_plasma\000"
.LASF625:
	.ascii	"S_FATT_RAISE3\000"
.LASF626:
	.ascii	"S_FATT_RAISE4\000"
.LASF627:
	.ascii	"S_FATT_RAISE5\000"
.LASF628:
	.ascii	"S_FATT_RAISE6\000"
.LASF629:
	.ascii	"S_FATT_RAISE7\000"
.LASF630:
	.ascii	"S_FATT_RAISE8\000"
.LASF1487:
	.ascii	"lastenemy\000"
.LASF339:
	.ascii	"S_ROCKET\000"
.LASF1303:
	.ascii	"MT_HEADSHOT\000"
.LASF1532:
	.ascii	"m_tprev\000"
.LASF1621:
	.ascii	"linecount\000"
.LASF1616:
	.ascii	"heightsec\000"
.LASF1636:
	.ascii	"sidenum\000"
.LASF892:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1131:
	.ascii	"S_STALAGTITE\000"
.LASF733:
	.ascii	"S_HEAD_PAIN2\000"
.LASF734:
	.ascii	"S_HEAD_PAIN3\000"
.LASF1247:
	.ascii	"S_BSKUL_ATK2\000"
.LASF70:
	.ascii	"byte\000"
.LASF33:
	.ascii	"it_redskull\000"
.LASF1757:
	.ascii	"sfx_bgact\000"
.LASF1310:
	.ascii	"MT_TFOG\000"
.LASF442:
	.ascii	"S_SPOS_ATK1\000"
.LASF443:
	.ascii	"S_SPOS_ATK2\000"
.LASF444:
	.ascii	"S_SPOS_ATK3\000"
.LASF379:
	.ascii	"S_PLAY_ATK1\000"
.LASF380:
	.ascii	"S_PLAY_ATK2\000"
.LASF1481:
	.ascii	"pursuecount\000"
.LASF130:
	.ascii	"SPR_APLS\000"
.LASF1628:
	.ascii	"ceilinglightsec\000"
.LASF1873:
	.ascii	"finesine\000"
.LASF1516:
	.ascii	"refire\000"
.LASF1556:
	.ascii	"comp_doorlight\000"
.LASF1595:
	.ascii	"event_t\000"
.LASF1160:
	.ascii	"S_REDTORCH2\000"
.LASF1161:
	.ascii	"S_REDTORCH3\000"
.LASF1162:
	.ascii	"S_REDTORCH4\000"
.LASF669:
	.ascii	"S_TROO_RUN1\000"
.LASF670:
	.ascii	"S_TROO_RUN2\000"
.LASF671:
	.ascii	"S_TROO_RUN3\000"
.LASF672:
	.ascii	"S_TROO_RUN4\000"
.LASF673:
	.ascii	"S_TROO_RUN5\000"
.LASF674:
	.ascii	"S_TROO_RUN6\000"
.LASF675:
	.ascii	"S_TROO_RUN7\000"
.LASF676:
	.ascii	"S_TROO_RUN8\000"
.LASF1781:
	.ascii	"sfx_mandth\000"
.LASF1588:
	.ascii	"ev_keyup\000"
.LASF121:
	.ascii	"SPR_CPOS\000"
.LASF584:
	.ascii	"S_FATSHOTX1\000"
.LASF585:
	.ascii	"S_FATSHOTX2\000"
.LASF586:
	.ascii	"S_FATSHOTX3\000"
.LASF664:
	.ascii	"S_CPOS_RAISE5\000"
.LASF665:
	.ascii	"S_CPOS_RAISE6\000"
.LASF666:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1831:
	.ascii	"numplayers\000"
.LASF35:
	.ascii	"wp_fist\000"
.LASF1436:
	.ascii	"missilestate\000"
.LASF151:
	.ascii	"SPR_STIM\000"
.LASF1905:
	.ascii	"health_green\000"
.LASF253:
	.ascii	"S_SGUN8\000"
.LASF700:
	.ascii	"S_SARG_STND\000"
.LASF1868:
	.ascii	"chatchars\000"
.LASF925:
	.ascii	"S_CYBER_DIE10\000"
.LASF101:
	.ascii	"SPR_BAL1\000"
.LASF102:
	.ascii	"SPR_BAL2\000"
.LASF124:
	.ascii	"SPR_BAL7\000"
.LASF1473:
	.ascii	"info\000"
.LASF1751:
	.ascii	"sfx_bspdth\000"
.LASF1119:
	.ascii	"S_HEADSONSTICK\000"
.LASF1414:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1786:
	.ascii	"sfx_skeact\000"
.LASF1467:
	.ascii	"ceilingz\000"
.LASF1922:
	.ascii	"hu_font2\000"
.LASF1782:
	.ascii	"sfx_sssit\000"
.LASF576:
	.ascii	"S_SKEL_RAISE1\000"
.LASF89:
	.ascii	"SPR_SHT2\000"
.LASF1417:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF230:
	.ascii	"S_PUNCH1\000"
.LASF231:
	.ascii	"S_PUNCH2\000"
.LASF232:
	.ascii	"S_PUNCH3\000"
.LASF233:
	.ascii	"S_PUNCH4\000"
.LASF234:
	.ascii	"S_PUNCH5\000"
.LASF593:
	.ascii	"S_FATT_RUN5\000"
.LASF229:
	.ascii	"S_PUNCHUP\000"
.LASF1669:
	.ascii	"CR_BLUE\000"
.LASF65:
	.ascii	"atkstate\000"
.LASF597:
	.ascii	"S_FATT_RUN9\000"
.LASF848:
	.ascii	"S_SPID_DIE3\000"
.LASF849:
	.ascii	"S_SPID_DIE4\000"
.LASF88:
	.ascii	"SPR_SHTF\000"
.LASF84:
	.ascii	"SPR_SHTG\000"
.LASF368:
	.ascii	"S_IFOG01\000"
.LASF369:
	.ascii	"S_IFOG02\000"
.LASF854:
	.ascii	"S_SPID_DIE9\000"
.LASF1716:
	.ascii	"sfx_telept\000"
.LASF1898:
	.ascii	"hud_msg_lines\000"
.LASF1248:
	.ascii	"S_BSKUL_ATK3\000"
.LASF1096:
	.ascii	"S_AMMO\000"
.LASF1589:
	.ascii	"ev_mouse\000"
.LASF51:
	.ascii	"NUMAMMO\000"
.LASF927:
	.ascii	"S_PAIN_RUN1\000"
.LASF928:
	.ascii	"S_PAIN_RUN2\000"
.LASF929:
	.ascii	"S_PAIN_RUN3\000"
.LASF930:
	.ascii	"S_PAIN_RUN4\000"
.LASF210:
	.ascii	"SPR_HDB1\000"
.LASF211:
	.ascii	"SPR_HDB2\000"
.LASF212:
	.ascii	"SPR_HDB3\000"
.LASF213:
	.ascii	"SPR_HDB4\000"
.LASF214:
	.ascii	"SPR_HDB5\000"
.LASF215:
	.ascii	"SPR_HDB6\000"
.LASF1272:
	.ascii	"MT_POSSESSED\000"
.LASF262:
	.ascii	"S_DSGUN3\000"
.LASF263:
	.ascii	"S_DSGUN4\000"
.LASF1455:
	.ascii	"type\000"
.LASF1834:
	.ascii	"w_title\000"
.LASF282:
	.ascii	"S_MISSILE\000"
.LASF1138:
	.ascii	"S_SKULLCOL\000"
.LASF1110:
	.ascii	"S_SHOT2\000"
.LASF1853:
	.ascii	"message_nottobefuckedwith\000"
.LASF1177:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1476:
	.ascii	"movedir\000"
.LASF1826:
	.ascii	"lastmessage\000"
.LASF654:
	.ascii	"S_CPOS_XDIE1\000"
.LASF1555:
	.ascii	"comp_blazing\000"
.LASF1938:
	.ascii	"HUlib_initMText\000"
.LASF1939:
	.ascii	"sprintf\000"
.LASF1676:
	.ascii	"hu_textline_t\000"
.LASF1899:
	.ascii	"hud_distributed\000"
.LASF74:
	.ascii	"actionf_t\000"
.LASF171:
	.ascii	"SPR_MGUN\000"
.LASF1284:
	.ascii	"MT_SHADOWS\000"
.LASF557:
	.ascii	"S_SKEL_RUN10\000"
.LASF558:
	.ascii	"S_SKEL_RUN11\000"
.LASF559:
	.ascii	"S_SKEL_RUN12\000"
.LASF225:
	.ascii	"S_NULL\000"
.LASF767:
	.ascii	"S_BOSS_DIE1\000"
.LASF768:
	.ascii	"S_BOSS_DIE2\000"
.LASF769:
	.ascii	"S_BOSS_DIE3\000"
.LASF770:
	.ascii	"S_BOSS_DIE4\000"
.LASF771:
	.ascii	"S_BOSS_DIE5\000"
.LASF772:
	.ascii	"S_BOSS_DIE6\000"
.LASF773:
	.ascii	"S_BOSS_DIE7\000"
.LASF937:
	.ascii	"S_PAIN_PAIN\000"
.LASF306:
	.ascii	"S_BFG\000"
.LASF1910:
	.ascii	"ammo_yellow\000"
.LASF1434:
	.ascii	"painsound\000"
.LASF1549:
	.ascii	"player_t\000"
.LASF1632:
	.ascii	"special\000"
.LASF952:
	.ascii	"S_SSWV_STND2\000"
.LASF172:
	.ascii	"SPR_CSAW\000"
.LASF1087:
	.ascii	"S_PMAP\000"
.LASF1533:
	.ascii	"m_tnext\000"
.LASF1093:
	.ascii	"S_PVIS\000"
.LASF307:
	.ascii	"S_BFGDOWN\000"
.LASF1729:
	.ascii	"sfx_vilsit\000"
.LASF1296:
	.ascii	"MT_BOSSBRAIN\000"
.LASF118:
	.ascii	"SPR_SKEL\000"
.LASF302:
	.ascii	"S_PLASMA1\000"
.LASF303:
	.ascii	"S_PLASMA2\000"
.LASF1167:
	.ascii	"S_GTORCHSHRT\000"
.LASF1425:
	.ascii	"doomednum\000"
.LASF1671:
	.ascii	"CR_YELLOW\000"
.LASF1497:
	.ascii	"firstline\000"
.LASF1101:
	.ascii	"S_SHEL\000"
.LASF858:
	.ascii	"S_BSPI_STND2\000"
.LASF1571:
	.ascii	"comp_sound\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF1750:
	.ascii	"sfx_spidth\000"
.LASF116:
	.ascii	"SPR_FATB\000"
.LASF1587:
	.ascii	"ev_keydown\000"
.LASF223:
	.ascii	"NUMSPRITES\000"
.LASF1198:
	.ascii	"S_DOGS_STND2\000"
.LASF122:
	.ascii	"SPR_SARG\000"
.LASF341:
	.ascii	"S_BFGSHOT2\000"
.LASF120:
	.ascii	"SPR_FATT\000"
.LASF1737:
	.ascii	"sfx_skeswg\000"
.LASF1068:
	.ascii	"S_SOUL2\000"
.LASF1069:
	.ascii	"S_SOUL3\000"
.LASF1070:
	.ascii	"S_SOUL4\000"
.LASF221:
	.ascii	"SPR_TNT1\000"
.LASF1072:
	.ascii	"S_SOUL6\000"
.LASF1906:
	.ascii	"armor_red\000"
.LASF828:
	.ascii	"S_SPID_RUN1\000"
.LASF829:
	.ascii	"S_SPID_RUN2\000"
.LASF830:
	.ascii	"S_SPID_RUN3\000"
.LASF831:
	.ascii	"S_SPID_RUN4\000"
.LASF832:
	.ascii	"S_SPID_RUN5\000"
.LASF833:
	.ascii	"S_SPID_RUN6\000"
.LASF834:
	.ascii	"S_SPID_RUN7\000"
.LASF835:
	.ascii	"S_SPID_RUN8\000"
.LASF836:
	.ascii	"S_SPID_RUN9\000"
.LASF1035:
	.ascii	"S_BEXP3\000"
.LASF17:
	.ascii	"doom2\000"
.LASF1695:
	.ascii	"sfx_rlaunc\000"
.LASF1217:
	.ascii	"S_DOGS_DIE6\000"
.LASF1124:
	.ascii	"S_DEADSTICK\000"
.LASF1525:
	.ascii	"fixedcolormap\000"
.LASF1624:
	.ascii	"floor_yoffs\000"
.LASF1511:
	.ascii	"weaponowned\000"
.LASF1298:
	.ascii	"MT_BOSSTARGET\000"
.LASF1313:
	.ascii	"MT_EXTRABFG\000"
.LASF414:
	.ascii	"S_POSS_DIE1\000"
.LASF415:
	.ascii	"S_POSS_DIE2\000"
.LASF416:
	.ascii	"S_POSS_DIE3\000"
.LASF417:
	.ascii	"S_POSS_DIE4\000"
.LASF418:
	.ascii	"S_POSS_DIE5\000"
.LASF244:
	.ascii	"S_SGUNDOWN\000"
.LASF1784:
	.ascii	"sfx_keenpn\000"
.LASF91:
	.ascii	"SPR_CHGF\000"
.LASF90:
	.ascii	"SPR_CHGG\000"
.LASF1805:
	.ascii	"armorstr\000"
.LASF895:
	.ascii	"S_ARACH_PLEX2\000"
.LASF896:
	.ascii	"S_ARACH_PLEX3\000"
.LASF897:
	.ascii	"S_ARACH_PLEX4\000"
.LASF898:
	.ascii	"S_ARACH_PLEX5\000"
.LASF639:
	.ascii	"S_CPOS_RUN7\000"
.LASF1479:
	.ascii	"target\000"
.LASF201:
	.ascii	"SPR_CEYE\000"
.LASF1227:
	.ascii	"S_PLS1BALL\000"
.LASF1679:
	.ascii	"hu_mtext_t\000"
.LASF945:
	.ascii	"S_PAIN_RAISE1\000"
.LASF946:
	.ascii	"S_PAIN_RAISE2\000"
.LASF947:
	.ascii	"S_PAIN_RAISE3\000"
.LASF948:
	.ascii	"S_PAIN_RAISE4\000"
.LASF949:
	.ascii	"S_PAIN_RAISE5\000"
.LASF582:
	.ascii	"S_FATSHOT1\000"
.LASF583:
	.ascii	"S_FATSHOT2\000"
.LASF1749:
	.ascii	"sfx_cybdth\000"
.LASF1647:
	.ascii	"ST_VERTICAL\000"
.LASF158:
	.ascii	"SPR_SUIT\000"
.LASF810:
	.ascii	"S_SKULL_STND\000"
.LASF1600:
	.ascii	"no_bottomtextures\000"
.LASF1953:
	.ascii	"HUlib_keyInIText\000"
.LASF1681:
	.ascii	"sfx_None\000"
.LASF1800:
	.ascii	"ohud_distributed\000"
.LASF844:
	.ascii	"S_SPID_PAIN\000"
.LASF1423:
	.ascii	"NUMMOBJTYPES\000"
.LASF1550:
	.ascii	"comp_telefrag\000"
.LASF140:
	.ascii	"SPR_BAR1\000"
.LASF1917:
	.ascii	"chat_macros\000"
.LASF257:
	.ascii	"S_DSGUN\000"
.LASF1136:
	.ascii	"S_CANDLESTIK\000"
.LASF1897:
	.ascii	"hud_list_bgon\000"
.LASF58:
	.ascii	"pw_allmap\000"
.LASF1261:
	.ascii	"NUMSTATES\000"
.LASF1664:
	.ascii	"CR_GRAY\000"
.LASF322:
	.ascii	"S_TBALL1\000"
.LASF323:
	.ascii	"S_TBALL2\000"
.LASF536:
	.ascii	"S_SMOKE1\000"
.LASF537:
	.ascii	"S_SMOKE2\000"
.LASF538:
	.ascii	"S_SMOKE3\000"
.LASF539:
	.ascii	"S_SMOKE4\000"
.LASF540:
	.ascii	"S_SMOKE5\000"
.LASF759:
	.ascii	"S_BOSS_RUN6\000"
.LASF760:
	.ascii	"S_BOSS_RUN7\000"
.LASF761:
	.ascii	"S_BOSS_RUN8\000"
.LASF123:
	.ascii	"SPR_HEAD\000"
.LASF1464:
	.ascii	"bprev\000"
.LASF184:
	.ascii	"SPR_POL1\000"
.LASF180:
	.ascii	"SPR_POL2\000"
.LASF183:
	.ascii	"SPR_POL3\000"
.LASF182:
	.ascii	"SPR_POL4\000"
.LASF181:
	.ascii	"SPR_POL5\000"
.LASF185:
	.ascii	"SPR_POL6\000"
.LASF1878:
	.ascii	"netgame\000"
.LASF1031:
	.ascii	"S_BAR1\000"
.LASF1900:
	.ascii	"hud_displayed\000"
.LASF1754:
	.ascii	"sfx_pedth\000"
.LASF1713:
	.ascii	"sfx_itemup\000"
.LASF1803:
	.ascii	"ammostr\000"
.LASF1314:
	.ascii	"MT_MISC0\000"
.LASF1117:
	.ascii	"S_DEADTORSO\000"
.LASF1866:
	.ascii	"bsdown\000"
.LASF259:
	.ascii	"S_DSGUNUP\000"
.LASF1776:
	.ascii	"sfx_boscub\000"
.LASF1738:
	.ascii	"sfx_pldeth\000"
.LASF1426:
	.ascii	"spawnstate\000"
.LASF1642:
	.ascii	"tranlump\000"
.LASF1950:
	.ascii	"HUlib_drawIText\000"
.LASF668:
	.ascii	"S_TROO_STND2\000"
.LASF1188:
	.ascii	"S_TECH2LAMP\000"
.LASF1698:
	.ascii	"sfx_firxpl\000"
.LASF1701:
	.ascii	"sfx_doropn\000"
.LASF1300:
	.ascii	"MT_SPAWNFIRE\000"
.LASF1832:
	.ascii	"num_nobrainers\000"
.LASF1275:
	.ascii	"MT_FIRE\000"
.LASF1663:
	.ascii	"CR_TAN\000"
.LASF1267:
	.ascii	"nextstate\000"
.LASF1358:
	.ascii	"MT_MISC37\000"
.LASF1617:
	.ascii	"bottommap\000"
.LASF1877:
	.ascii	"gamemap\000"
.LASF765:
	.ascii	"S_BOSS_PAIN\000"
.LASF134:
	.ascii	"SPR_SSWV\000"
.LASF327:
	.ascii	"S_RBALL1\000"
.LASF328:
	.ascii	"S_RBALL2\000"
.LASF1711:
	.ascii	"sfx_pepain\000"
.LASF1132:
	.ascii	"S_TALLGRNCOL\000"
.LASF1821:
	.ascii	"fragcount\000"
.LASF1484:
	.ascii	"lastlook\000"
.LASF1748:
	.ascii	"sfx_brsdth\000"
.LASF1684:
	.ascii	"sfx_sgcock\000"
.LASF1548:
	.ascii	"playerstate_t\000"
.LASF1121:
	.ascii	"S_HEADONASTICK\000"
.LASF1482:
	.ascii	"gear\000"
.LASF1848:
	.ascii	"w_rtext\000"
.LASF401:
	.ascii	"S_POSS_RUN1\000"
.LASF343:
	.ascii	"S_BFGLAND2\000"
.LASF344:
	.ascii	"S_BFGLAND3\000"
.LASF345:
	.ascii	"S_BFGLAND4\000"
.LASF346:
	.ascii	"S_BFGLAND5\000"
.LASF347:
	.ascii	"S_BFGLAND6\000"
.LASF407:
	.ascii	"S_POSS_RUN7\000"
.LASF408:
	.ascii	"S_POSS_RUN8\000"
.LASF390:
	.ascii	"S_PLAY_XDIE1\000"
.LASF391:
	.ascii	"S_PLAY_XDIE2\000"
.LASF392:
	.ascii	"S_PLAY_XDIE3\000"
.LASF393:
	.ascii	"S_PLAY_XDIE4\000"
.LASF394:
	.ascii	"S_PLAY_XDIE5\000"
.LASF395:
	.ascii	"S_PLAY_XDIE6\000"
.LASF396:
	.ascii	"S_PLAY_XDIE7\000"
.LASF397:
	.ascii	"S_PLAY_XDIE8\000"
.LASF398:
	.ascii	"S_PLAY_XDIE9\000"
.LASF1546:
	.ascii	"PST_DEAD\000"
.LASF796:
	.ascii	"S_BOS2_DIE1\000"
.LASF797:
	.ascii	"S_BOS2_DIE2\000"
.LASF798:
	.ascii	"S_BOS2_DIE3\000"
.LASF799:
	.ascii	"S_BOS2_DIE4\000"
.LASF800:
	.ascii	"S_BOS2_DIE5\000"
.LASF801:
	.ascii	"S_BOS2_DIE6\000"
.LASF802:
	.ascii	"S_BOS2_DIE7\000"
.LASF1446:
	.ascii	"flags\000"
.LASF722:
	.ascii	"S_SARG_RAISE2\000"
.LASF1947:
	.ascii	"strcat\000"
.LASF366:
	.ascii	"S_TFOG10\000"
.LASF724:
	.ascii	"S_SARG_RAISE4\000"
.LASF1674:
	.ascii	"linelen\000"
.LASF419:
	.ascii	"S_POSS_XDIE1\000"
.LASF420:
	.ascii	"S_POSS_XDIE2\000"
.LASF421:
	.ascii	"S_POSS_XDIE3\000"
.LASF422:
	.ascii	"S_POSS_XDIE4\000"
.LASF423:
	.ascii	"S_POSS_XDIE5\000"
.LASF424:
	.ascii	"S_POSS_XDIE6\000"
.LASF425:
	.ascii	"S_POSS_XDIE7\000"
.LASF47:
	.ascii	"am_clip\000"
.LASF427:
	.ascii	"S_POSS_XDIE9\000"
.LASF1120:
	.ascii	"S_GIBS\000"
.LASF735:
	.ascii	"S_HEAD_DIE1\000"
.LASF736:
	.ascii	"S_HEAD_DIE2\000"
.LASF737:
	.ascii	"S_HEAD_DIE3\000"
.LASF738:
	.ascii	"S_HEAD_DIE4\000"
.LASF739:
	.ascii	"S_HEAD_DIE5\000"
.LASF740:
	.ascii	"S_HEAD_DIE6\000"
.LASF588:
	.ascii	"S_FATT_STND2\000"
.LASF1111:
	.ascii	"S_COLU\000"
.LASF238:
	.ascii	"S_PISTOL1\000"
.LASF239:
	.ascii	"S_PISTOL2\000"
.LASF240:
	.ascii	"S_PISTOL3\000"
.LASF241:
	.ascii	"S_PISTOL4\000"
.LASF577:
	.ascii	"S_SKEL_RAISE2\000"
.LASF578:
	.ascii	"S_SKEL_RAISE3\000"
.LASF579:
	.ascii	"S_SKEL_RAISE4\000"
.LASF580:
	.ascii	"S_SKEL_RAISE5\000"
.LASF581:
	.ascii	"S_SKEL_RAISE6\000"
.LASF1140:
	.ascii	"S_BIGTREE\000"
.LASF1649:
	.ascii	"ST_NEGATIVE\000"
.LASF1050:
	.ascii	"S_BON2C\000"
.LASF1051:
	.ascii	"S_BON2D\000"
.LASF356:
	.ascii	"S_TFOG01\000"
.LASF357:
	.ascii	"S_TFOG02\000"
.LASF173:
	.ascii	"SPR_LAUN\000"
.LASF412:
	.ascii	"S_POSS_PAIN\000"
.LASF747:
	.ascii	"S_BRBALL1\000"
.LASF1933:
	.ascii	"shiftxform\000"
.LASF748:
	.ascii	"S_BRBALL2\000"
.LASF1278:
	.ascii	"MT_SMOKE\000"
.LASF1292:
	.ascii	"MT_CYBORG\000"
.LASF1918:
	.ascii	"player_names\000"
.LASF1444:
	.ascii	"damage\000"
.LASF452:
	.ascii	"S_SPOS_XDIE1\000"
.LASF453:
	.ascii	"S_SPOS_XDIE2\000"
.LASF454:
	.ascii	"S_SPOS_XDIE3\000"
.LASF455:
	.ascii	"S_SPOS_XDIE4\000"
.LASF456:
	.ascii	"S_SPOS_XDIE5\000"
.LASF457:
	.ascii	"S_SPOS_XDIE6\000"
.LASF458:
	.ascii	"S_SPOS_XDIE7\000"
.LASF459:
	.ascii	"S_SPOS_XDIE8\000"
.LASF460:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1599:
	.ascii	"no_toptextures\000"
.LASF1709:
	.ascii	"sfx_vipain\000"
.LASF1459:
	.ascii	"mobj_s\000"
.LASF1537:
	.ascii	"mobj_t\000"
.LASF1635:
	.ascii	"iLineID\000"
.LASF1633:
	.ascii	"oldspecial\000"
.LASF1053:
	.ascii	"S_BKEY\000"
.LASF56:
	.ascii	"pw_invisibility\000"
.LASF1883:
	.ascii	"displayplayer\000"
.LASF1422:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF1641:
	.ascii	"specialdata\000"
.LASF138:
	.ascii	"SPR_ARM1\000"
.LASF139:
	.ascii	"SPR_ARM2\000"
.LASF1274:
	.ascii	"MT_VILE\000"
.LASF1700:
	.ascii	"sfx_pstop\000"
.LASF31:
	.ascii	"it_blueskull\000"
.LASF1608:
	.ascii	"soundorg\000"
.LASF1415:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF300:
	.ascii	"S_PLASMADOWN\000"
.LASF612:
	.ascii	"S_FATT_PAIN2\000"
.LASF1785:
	.ascii	"sfx_keendt\000"
.LASF1010:
	.ascii	"S_BRAINEYESEE\000"
.LASF1210:
	.ascii	"S_DOGS_PAIN\000"
.LASF547:
	.ascii	"S_SKEL_STND2\000"
.LASF1241:
	.ascii	"S_BSKUL_STND\000"
.LASF900:
	.ascii	"S_CYBER_STND2\000"
.LASF1270:
	.ascii	"state_t\000"
.LASF744:
	.ascii	"S_HEAD_RAISE4\000"
.LASF970:
	.ascii	"S_SSWV_DIE2\000"
.LASF12:
	.ascii	"registered\000"
.LASF1760:
	.ascii	"sfx_bspwlk\000"
.LASF426:
	.ascii	"S_POSS_XDIE8\000"
.LASF1194:
	.ascii	"S_DETONATE\000"
.LASF1562:
	.ascii	"comp_pursuit\000"
.LASF1100:
	.ascii	"S_CELP\000"
.LASF1142:
	.ascii	"S_EVILEYE\000"
.LASF1168:
	.ascii	"S_GTORCHSHRT2\000"
.LASF1169:
	.ascii	"S_GTORCHSHRT3\000"
.LASF1170:
	.ascii	"S_GTORCHSHRT4\000"
.LASF1501:
	.ascii	"viewheight\000"
.LASF1463:
	.ascii	"bnext\000"
.LASF1586:
	.ascii	"mnact_full\000"
.LASF1779:
	.ascii	"sfx_bosdth\000"
.LASF601:
	.ascii	"S_FATT_ATK1\000"
.LASF132:
	.ascii	"SPR_CYBR\000"
.LASF63:
	.ascii	"downstate\000"
.LASF602:
	.ascii	"S_FATT_ATK2\000"
.LASF505:
	.ascii	"S_VILE_DIE10\000"
.LASF93:
	.ascii	"SPR_MISF\000"
.LASF92:
	.ascii	"SPR_MISG\000"
.LASF1879:
	.ascii	"deathmatch\000"
.LASF105:
	.ascii	"SPR_MISL\000"
.LASF1059:
	.ascii	"S_BSKULL\000"
.LASF136:
	.ascii	"SPR_BBRN\000"
.LASF480:
	.ascii	"S_VILE_ATK1\000"
.LASF481:
	.ascii	"S_VILE_ATK2\000"
.LASF482:
	.ascii	"S_VILE_ATK3\000"
.LASF483:
	.ascii	"S_VILE_ATK4\000"
.LASF484:
	.ascii	"S_VILE_ATK5\000"
.LASF485:
	.ascii	"S_VILE_ATK6\000"
.LASF486:
	.ascii	"S_VILE_ATK7\000"
.LASF227:
	.ascii	"S_PUNCH\000"
.LASF488:
	.ascii	"S_VILE_ATK9\000"
.LASF207:
	.ascii	"SPR_SMBT\000"
.LASF1765:
	.ascii	"sfx_hoof\000"
.LASF1478:
	.ascii	"strafecount\000"
.LASF1207:
	.ascii	"S_DOGS_ATK1\000"
.LASF1208:
	.ascii	"S_DOGS_ATK2\000"
.LASF1209:
	.ascii	"S_DOGS_ATK3\000"
.LASF783:
	.ascii	"S_BOS2_RUN1\000"
.LASF784:
	.ascii	"S_BOS2_RUN2\000"
.LASF785:
	.ascii	"S_BOS2_RUN3\000"
.LASF786:
	.ascii	"S_BOS2_RUN4\000"
.LASF787:
	.ascii	"S_BOS2_RUN5\000"
.LASF788:
	.ascii	"S_BOS2_RUN6\000"
.LASF789:
	.ascii	"S_BOS2_RUN7\000"
.LASF790:
	.ascii	"S_BOS2_RUN8\000"
.LASF1631:
	.ascii	"lightlevel\000"
.LASF198:
	.ascii	"SPR_TRE1\000"
.LASF199:
	.ascii	"SPR_TRE2\000"
.LASF857:
	.ascii	"S_BSPI_STND\000"
.LASF1696:
	.ascii	"sfx_rxplod\000"
.LASF1435:
	.ascii	"meleestate\000"
.LASF61:
	.ascii	"ammo\000"
.LASF647:
	.ascii	"S_CPOS_DIE1\000"
.LASF206:
	.ascii	"SPR_TRED\000"
.LASF99:
	.ascii	"SPR_BLUD\000"
.LASF603:
	.ascii	"S_FATT_ATK3\000"
.LASF604:
	.ascii	"S_FATT_ATK4\000"
.LASF605:
	.ascii	"S_FATT_ATK5\000"
.LASF606:
	.ascii	"S_FATT_ATK6\000"
.LASF607:
	.ascii	"S_FATT_ATK7\000"
.LASF608:
	.ascii	"S_FATT_ATK8\000"
.LASF609:
	.ascii	"S_FATT_ATK9\000"
.LASF1418:
	.ascii	"MT_STEALTHIMP\000"
.LASF109:
	.ascii	"SPR_TFOG\000"
.LASF1250:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1251:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF315:
	.ascii	"S_BLOOD1\000"
.LASF316:
	.ascii	"S_BLOOD2\000"
.LASF317:
	.ascii	"S_BLOOD3\000"
.LASF1838:
	.ascii	"w_coordx\000"
.LASF1839:
	.ascii	"w_coordy\000"
.LASF1840:
	.ascii	"w_coordz\000"
.LASF1268:
	.ascii	"misc1\000"
.LASF1269:
	.ascii	"misc2\000"
.LASF1707:
	.ascii	"sfx_dmpain\000"
.LASF1411:
	.ascii	"MT_STEALTHBABY\000"
.LASF1540:
	.ascii	"angleturn\000"
.LASF1928:
	.ascii	"mapnames\000"
.LASF1107:
	.ascii	"S_LAUN\000"
.LASF1847:
	.ascii	"w_monsec\000"
.LASF1193:
	.ascii	"S_GRENADE\000"
.LASF367:
	.ascii	"S_IFOG\000"
.LASF112:
	.ascii	"SPR_POSS\000"
.LASF117:
	.ascii	"SPR_FBXP\000"
.LASF916:
	.ascii	"S_CYBER_DIE1\000"
.LASF917:
	.ascii	"S_CYBER_DIE2\000"
.LASF918:
	.ascii	"S_CYBER_DIE3\000"
.LASF919:
	.ascii	"S_CYBER_DIE4\000"
.LASF920:
	.ascii	"S_CYBER_DIE5\000"
.LASF921:
	.ascii	"S_CYBER_DIE6\000"
.LASF922:
	.ascii	"S_CYBER_DIE7\000"
.LASF794:
	.ascii	"S_BOS2_PAIN\000"
.LASF924:
	.ascii	"S_CYBER_DIE9\000"
.LASF1485:
	.ascii	"spawnpoint\000"
.LASF1263:
	.ascii	"sprite\000"
.LASF1529:
	.ascii	"msecnode_s\000"
.LASF1680:
	.ascii	"hu_itext_t\000"
.LASF1855:
	.ascii	"headsupactive\000"
.LASF1341:
	.ascii	"MT_MISC23\000"
.LASF1615:
	.ascii	"nextsec\000"
.LASF1614:
	.ascii	"prevsec\000"
.LASF1137:
	.ascii	"S_CANDELABRA\000"
.LASF477:
	.ascii	"S_VILE_RUN10\000"
.LASF478:
	.ascii	"S_VILE_RUN11\000"
.LASF479:
	.ascii	"S_VILE_RUN12\000"
.LASF1097:
	.ascii	"S_ROCK\000"
.LASF246:
	.ascii	"S_SGUN1\000"
.LASF247:
	.ascii	"S_SGUN2\000"
.LASF248:
	.ascii	"S_SGUN3\000"
.LASF249:
	.ascii	"S_SGUN4\000"
.LASF250:
	.ascii	"S_SGUN5\000"
.LASF251:
	.ascii	"S_SGUN6\000"
.LASF252:
	.ascii	"S_SGUN7\000"
.LASF71:
	.ascii	"uint_64_t\000"
.LASF254:
	.ascii	"S_SGUN9\000"
.LASF222:
	.ascii	"SPR_DOGS\000"
.LASF243:
	.ascii	"S_SGUN\000"
.LASF1860:
	.ascii	"hud_healthstr\000"
.LASF1133:
	.ascii	"S_SHRTGRNCOL\000"
.LASF1783:
	.ascii	"sfx_ssdth\000"
.LASF1773:
	.ascii	"sfx_flamst\000"
.LASF818:
	.ascii	"S_SKULL_PAIN\000"
.LASF1299:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1802:
	.ascii	"HU_Drawer\000"
.LASF542:
	.ascii	"S_TRACER2\000"
.LASF1141:
	.ascii	"S_TECHPILLAR\000"
.LASF546:
	.ascii	"S_SKEL_STND\000"
.LASF701:
	.ascii	"S_SARG_STND2\000"
.LASF1766:
	.ascii	"sfx_metal\000"
.LASF15:
	.ascii	"indetermined\000"
.LASF447:
	.ascii	"S_SPOS_DIE1\000"
.LASF448:
	.ascii	"S_SPOS_DIE2\000"
.LASF449:
	.ascii	"S_SPOS_DIE3\000"
.LASF450:
	.ascii	"S_SPOS_DIE4\000"
.LASF451:
	.ascii	"S_SPOS_DIE5\000"
.LASF1547:
	.ascii	"PST_REBORN\000"
.LASF1733:
	.ascii	"sfx_sgtatk\000"
.LASF1176:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF1260:
	.ascii	"S_MUSHROOM\000"
.LASF1730:
	.ascii	"sfx_mansit\000"
.LASF710:
	.ascii	"S_SARG_ATK1\000"
.LASF711:
	.ascii	"S_SARG_ATK2\000"
.LASF712:
	.ascii	"S_SARG_ATK3\000"
.LASF301:
	.ascii	"S_PLASMAUP\000"
.LASF1265:
	.ascii	"tics\000"
.LASF1940:
	.ascii	"HUlib_addCharToTextLine\000"
.LASF1057:
	.ascii	"S_YKEY\000"
.LASF1704:
	.ascii	"sfx_swtchn\000"
.LASF1440:
	.ascii	"speed\000"
.LASF1637:
	.ascii	"bbox\000"
.LASF1798:
	.ascii	"HU_Start\000"
.LASF270:
	.ascii	"S_DSNR1\000"
.LASF939:
	.ascii	"S_PAIN_DIE1\000"
.LASF1705:
	.ascii	"sfx_swtchx\000"
.LASF1603:
	.ascii	"nexttag\000"
.LASF469:
	.ascii	"S_VILE_RUN2\000"
.LASF1771:
	.ascii	"sfx_itmbk\000"
.LASF1187:
	.ascii	"S_TECHLAMP4\000"
.LASF633:
	.ascii	"S_CPOS_RUN1\000"
.LASF634:
	.ascii	"S_CPOS_RUN2\000"
.LASF635:
	.ascii	"S_CPOS_RUN3\000"
.LASF636:
	.ascii	"S_CPOS_RUN4\000"
.LASF637:
	.ascii	"S_CPOS_RUN5\000"
.LASF638:
	.ascii	"S_CPOS_RUN6\000"
.LASF169:
	.ascii	"SPR_BPAK\000"
.LASF640:
	.ascii	"S_CPOS_RUN8\000"
.LASF1037:
	.ascii	"S_BEXP5\000"
.LASF1788:
	.ascii	"sfx_skeatk\000"
.LASF1457:
	.ascii	"mapthing_t\000"
.LASF402:
	.ascii	"S_POSS_RUN2\000"
.LASF403:
	.ascii	"S_POSS_RUN3\000"
.LASF404:
	.ascii	"S_POSS_RUN4\000"
.LASF721:
	.ascii	"S_SARG_RAISE1\000"
.LASF405:
	.ascii	"S_POSS_RUN5\000"
.LASF723:
	.ascii	"S_SARG_RAISE3\000"
.LASF406:
	.ascii	"S_POSS_RUN6\000"
.LASF725:
	.ascii	"S_SARG_RAISE5\000"
.LASF726:
	.ascii	"S_SARG_RAISE6\000"
.LASF1740:
	.ascii	"sfx_podth1\000"
.LASF1741:
	.ascii	"sfx_podth2\000"
.LASF1742:
	.ascii	"sfx_podth3\000"
.LASF1579:
	.ascii	"am_rotate\000"
.LASF1887:
	.ascii	"demoplayback\000"
.LASF1804:
	.ascii	"healthstr\000"
.LASF1374:
	.ascii	"MT_MISC53\000"
.LASF1795:
	.ascii	"NUMSFX\000"
.LASF208:
	.ascii	"SPR_SMGT\000"
.LASF1001:
	.ascii	"S_KEENPAIN\000"
.LASF349:
	.ascii	"S_BFGEXP2\000"
.LASF350:
	.ascii	"S_BFGEXP3\000"
.LASF351:
	.ascii	"S_BFGEXP4\000"
.LASF1829:
	.ascii	"shiftdown\000"
.LASF280:
	.ascii	"S_CHAINFLASH1\000"
.LASF281:
	.ascii	"S_CHAINFLASH2\000"
.LASF236:
	.ascii	"S_PISTOLDOWN\000"
.LASF1653:
	.ascii	"RF_BOT_TILE\000"
.LASF901:
	.ascii	"S_CYBER_RUN1\000"
.LASF902:
	.ascii	"S_CYBER_RUN2\000"
.LASF903:
	.ascii	"S_CYBER_RUN3\000"
.LASF904:
	.ascii	"S_CYBER_RUN4\000"
.LASF905:
	.ascii	"S_CYBER_RUN5\000"
.LASF906:
	.ascii	"S_CYBER_RUN6\000"
.LASF907:
	.ascii	"S_CYBER_RUN7\000"
.LASF908:
	.ascii	"S_CYBER_RUN8\000"
.LASF1806:
	.ascii	"doit\000"
.LASF1429:
	.ascii	"seesound\000"
.LASF1886:
	.ascii	"totalsecret\000"
.LASF27:
	.ascii	"gamestate_t\000"
.LASF1089:
	.ascii	"S_PMAP3\000"
.LASF1090:
	.ascii	"S_PMAP4\000"
.LASF1091:
	.ascii	"S_PMAP5\000"
.LASF1092:
	.ascii	"S_PMAP6\000"
.LASF1522:
	.ascii	"bonuscount\000"
.LASF819:
	.ascii	"S_SKULL_PAIN2\000"
.LASF1667:
	.ascii	"CR_GOLD\000"
.LASF1433:
	.ascii	"painchance\000"
.LASF645:
	.ascii	"S_CPOS_PAIN\000"
.LASF1743:
	.ascii	"sfx_bgdth1\000"
.LASF1602:
	.ascii	"ceilingheight\000"
.LASF13:
	.ascii	"commercial\000"
.LASF1949:
	.ascii	"HUlib_drawMText\000"
.LASF1688:
	.ascii	"sfx_dbload\000"
.LASF1859:
	.ascii	"hud_ammostr\000"
.LASF1490:
	.ascii	"touching_sectorlist\000"
.LASF950:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1410:
	.ascii	"MT_DOGS\000"
.LASF1357:
	.ascii	"MT_MISC36\000"
.LASF754:
	.ascii	"S_BOSS_RUN1\000"
.LASF755:
	.ascii	"S_BOSS_RUN2\000"
.LASF756:
	.ascii	"S_BOSS_RUN3\000"
.LASF757:
	.ascii	"S_BOSS_RUN4\000"
.LASF758:
	.ascii	"S_BOSS_RUN5\000"
.LASF276:
	.ascii	"S_CHAINUP\000"
.LASF228:
	.ascii	"S_PUNCHDOWN\000"
.LASF1517:
	.ascii	"killcount\000"
.LASF1139:
	.ascii	"S_TORCHTREE\000"
.LASF951:
	.ascii	"S_SSWV_STND\000"
.LASF1672:
	.ascii	"CR_BLUE2\000"
.LASF998:
	.ascii	"S_COMMKEEN10\000"
.LASF999:
	.ascii	"S_COMMKEEN11\000"
.LASF1000:
	.ascii	"S_COMMKEEN12\000"
.LASF915:
	.ascii	"S_CYBER_PAIN\000"
.LASF1799:
	.ascii	"HU_MoveHud\000"
.LASF434:
	.ascii	"S_SPOS_RUN1\000"
.LASF190:
	.ascii	"SPR_SMIT\000"
.LASF69:
	.ascii	"boolean\000"
.LASF437:
	.ascii	"S_SPOS_RUN4\000"
.LASF438:
	.ascii	"S_SPOS_RUN5\000"
.LASF127:
	.ascii	"SPR_SKUL\000"
.LASF440:
	.ascii	"S_SPOS_RUN7\000"
.LASF441:
	.ascii	"S_SPOS_RUN8\000"
.LASF1098:
	.ascii	"S_BROK\000"
.LASF1427:
	.ascii	"spawnhealth\000"
.LASF1412:
	.ascii	"MT_STEALTHVILE\000"
.LASF1920:
	.ascii	"chat_char\000"
.LASF1623:
	.ascii	"floor_xoffs\000"
.LASF894:
	.ascii	"S_ARACH_PLEX\000"
.LASF1155:
	.ascii	"S_GREENTORCH\000"
.LASF43:
	.ascii	"wp_supershotgun\000"
.LASF294:
	.ascii	"S_SAWDOWN\000"
.LASF1234:
	.ascii	"S_PLS2BALL\000"
.LASF1694:
	.ascii	"sfx_sawhit\000"
.LASF1693:
	.ascii	"sfx_sawful\000"
.LASF1262:
	.ascii	"statenum_t\000"
.LASF1914:
	.ascii	"key_enter\000"
.LASF1302:
	.ascii	"MT_TROOPSHOT\000"
.LASF1613:
	.ascii	"stairlock\000"
.LASF1287:
	.ascii	"MT_BRUISERSHOT\000"
.LASF1761:
	.ascii	"sfx_vilact\000"
.LASF1611:
	.ascii	"ceilingdata\000"
.LASF1956:
	.ascii	"HUlib_addMessageToMText\000"
.LASF1544:
	.ascii	"ticcmd_t\000"
.LASF1407:
	.ascii	"MT_MISC86\000"
.LASF1449:
	.ascii	"ps_weapon\000"
.LASF1726:
	.ascii	"sfx_spisit\000"
.LASF775:
	.ascii	"S_BOSS_RAISE2\000"
.LASF382:
	.ascii	"S_PLAY_PAIN2\000"
.LASF1413:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF1692:
	.ascii	"sfx_sawidl\000"
.LASF777:
	.ascii	"S_BOSS_RAISE4\000"
.LASF778:
	.ascii	"S_BOSS_RAISE5\000"
.LASF1264:
	.ascii	"frame\000"
.LASF119:
	.ascii	"SPR_MANF\000"
.LASF632:
	.ascii	"S_CPOS_STND2\000"
.LASF1759:
	.ascii	"sfx_bspact\000"
.LASF445:
	.ascii	"S_SPOS_PAIN\000"
.LASF37:
	.ascii	"wp_shotgun\000"
.LASF413:
	.ascii	"S_POSS_PAIN2\000"
.LASF1308:
	.ascii	"MT_PUFF\000"
.LASF1812:
	.ascii	"armorbars\000"
.LASF1557:
	.ascii	"comp_model\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF285:
	.ascii	"S_MISSILE1\000"
.LASF286:
	.ascii	"S_MISSILE2\000"
.LASF287:
	.ascii	"S_MISSILE3\000"
.LASF661:
	.ascii	"S_CPOS_RAISE2\000"
.LASF662:
	.ascii	"S_CPOS_RAISE3\000"
.LASF663:
	.ascii	"S_CPOS_RAISE4\000"
.LASF1510:
	.ascii	"pendingweapon\000"
.LASF1105:
	.ascii	"S_MGUN\000"
.LASF1948:
	.ascii	"HUlib_clearTextLine\000"
.LASF1286:
	.ascii	"MT_BRUISER\000"
.LASF168:
	.ascii	"SPR_SBOX\000"
.LASF1519:
	.ascii	"secretcount\000"
.LASF1424:
	.ascii	"mobjtype_t\000"
.LASF1438:
	.ascii	"xdeathstate\000"
.LASF1880:
	.ascii	"automapmode\000"
.LASF1505:
	.ascii	"powers\000"
.LASF814:
	.ascii	"S_SKULL_ATK1\000"
.LASF815:
	.ascii	"S_SKULL_ATK2\000"
.LASF816:
	.ascii	"S_SKULL_ATK3\000"
.LASF817:
	.ascii	"S_SKULL_ATK4\000"
.LASF795:
	.ascii	"S_BOS2_PAIN2\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF1288:
	.ascii	"MT_KNIGHT\000"
.LASF1568:
	.ascii	"comp_zerotags\000"
.LASF1:
	.ascii	"signed char\000"
.LASF1539:
	.ascii	"sidemove\000"
.LASF1445:
	.ascii	"activesound\000"
.LASF1822:
	.ascii	"numbuf\000"
.LASF446:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1214:
	.ascii	"S_DOGS_DIE3\000"
.LASF1841:
	.ascii	"w_ammo\000"
.LASF1764:
	.ascii	"sfx_punch\000"
.LASF610:
	.ascii	"S_FATT_ATK10\000"
.LASF1654:
	.ascii	"RF_IGNORE\000"
.LASF205:
	.ascii	"SPR_TGRN\000"
.LASF1678:
	.ascii	"hu_stext_t\000"
.LASF1817:
	.ascii	"idx1\000"
.LASF1590:
	.ascii	"ev_joystick\000"
.LASF1819:
	.ascii	"idx3\000"
.LASF1820:
	.ascii	"idx4\000"
.LASF1333:
	.ascii	"MT_MEGA\000"
.LASF107:
	.ascii	"SPR_BFE1\000"
.LASF108:
	.ascii	"SPR_BFE2\000"
.LASF1365:
	.ascii	"MT_MISC44\000"
.LASF1609:
	.ascii	"thinglist\000"
.LASF1813:
	.ascii	"top1\000"
.LASF1814:
	.ascii	"top2\000"
.LASF1367:
	.ascii	"MT_MISC46\000"
.LASF1815:
	.ascii	"top3\000"
.LASF1816:
	.ascii	"top4\000"
.LASF1661:
	.ascii	"patchnum_t\000"
.LASF1295:
	.ascii	"MT_KEEN\000"
.LASF1607:
	.ascii	"blockbox\000"
.LASF53:
	.ascii	"ammotype_t\000"
.LASF667:
	.ascii	"S_TROO_STND\000"
.LASF614:
	.ascii	"S_FATT_DIE2\000"
.LASF305:
	.ascii	"S_PLASMAFLASH2\000"
.LASF46:
	.ascii	"weapontype_t\000"
.LASF1542:
	.ascii	"chatchar\000"
.LASF358:
	.ascii	"S_TFOG2\000"
.LASF359:
	.ascii	"S_TFOG3\000"
.LASF360:
	.ascii	"S_TFOG4\000"
.LASF361:
	.ascii	"S_TFOG5\000"
.LASF362:
	.ascii	"S_TFOG6\000"
.LASF363:
	.ascii	"S_TFOG7\000"
.LASF364:
	.ascii	"S_TFOG8\000"
.LASF365:
	.ascii	"S_TFOG9\000"
.LASF780:
	.ascii	"S_BOSS_RAISE7\000"
.LASF1513:
	.ascii	"attackdown\000"
.LASF83:
	.ascii	"SPR_TROO\000"
.LASF1192:
	.ascii	"S_TNT1\000"
.LASF1794:
	.ascii	"sfx_dgpain\000"
.LASF94:
	.ascii	"SPR_SAWG\000"
.LASF1885:
	.ascii	"totalitems\000"
.LASF1534:
	.ascii	"m_sprev\000"
.LASF1324:
	.ascii	"MT_MISC10\000"
.LASF1722:
	.ascii	"sfx_sgtsit\000"
.LASF143:
	.ascii	"SPR_BON1\000"
.LASF144:
	.ascii	"SPR_BON2\000"
.LASF1745:
	.ascii	"sfx_sgtdth\000"
.LASF1650:
	.ascii	"slopetype_t\000"
.LASF30:
	.ascii	"it_redcard\000"
.LASF1134:
	.ascii	"S_TALLREDCOL\000"
.LASF1577:
	.ascii	"am_active\000"
.LASF1558:
	.ascii	"comp_god\000"
.LASF1452:
	.ascii	"state\000"
.LASF1862:
	.ascii	"hud_weapstr\000"
.LASF1109:
	.ascii	"S_SHOT\000"
.LASF965:
	.ascii	"S_SSWV_ATK5\000"
.LASF1114:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF1115:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1116:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF1962:
	.ascii	"HU_Stop\000"
.LASF855:
	.ascii	"S_SPID_DIE10\000"
.LASF856:
	.ascii	"S_SPID_DIE11\000"
.LASF1506:
	.ascii	"cards\000"
.LASF200:
	.ascii	"SPR_ELEC\000"
.LASF1003:
	.ascii	"S_BRAIN\000"
.LASF1236:
	.ascii	"S_PLS2BALLX1\000"
.LASF1237:
	.ascii	"S_PLS2BALLX2\000"
.LASF1238:
	.ascii	"S_PLS2BALLX3\000"
.LASF1290:
	.ascii	"MT_SPIDER\000"
.LASF1086:
	.ascii	"S_SUIT\000"
.LASF98:
	.ascii	"SPR_BFGF\000"
.LASF97:
	.ascii	"SPR_BFGG\000"
.LASF1955:
	.ascii	"HUlib_addMessageToSText\000"
.LASF1488:
	.ascii	"friction\000"
.LASF926:
	.ascii	"S_PAIN_STND\000"
.LASF1945:
	.ascii	"HUlib_eraseSText\000"
.LASF1724:
	.ascii	"sfx_brssit\000"
.LASF1919:
	.ascii	"plyrcoltran\000"
.LASF342:
	.ascii	"S_BFGLAND\000"
.LASF1032:
	.ascii	"S_BAR2\000"
.LASF1199:
	.ascii	"S_DOGS_RUN1\000"
.LASF1200:
	.ascii	"S_DOGS_RUN2\000"
.LASF1201:
	.ascii	"S_DOGS_RUN3\000"
.LASF1924:
	.ascii	"hu_msgbg\000"
.LASF1202:
	.ascii	"S_DOGS_RUN4\000"
.LASF78:
	.ascii	"function\000"
.LASF1203:
	.ascii	"S_DOGS_RUN5\000"
.LASF1204:
	.ascii	"S_DOGS_RUN6\000"
.LASF1767:
	.ascii	"sfx_chgun\000"
.LASF48:
	.ascii	"am_shell\000"
.LASF1889:
	.ascii	"gametic\000"
.LASF1472:
	.ascii	"validcount\000"
.LASF1936:
	.ascii	"HUlib_initSText\000"
.LASF1881:
	.ascii	"menuactive\000"
.LASF1520:
	.ascii	"message\000"
.LASF1849:
	.ascii	"always_off\000"
.LASF80:
	.ascii	"cprev\000"
.LASF622:
	.ascii	"S_FATT_DIE10\000"
.LASF34:
	.ascii	"NUMCARDS\000"
.LASF1159:
	.ascii	"S_REDTORCH\000"
.LASF1306:
	.ascii	"MT_BFG\000"
.LASF1619:
	.ascii	"topmap\000"
.LASF1927:
	.ascii	"showMessages\000"
.LASF114:
	.ascii	"SPR_VILE\000"
.LASF1770:
	.ascii	"sfx_bdcls\000"
.LASF1309:
	.ascii	"MT_BLOOD\000"
.LASF235:
	.ascii	"S_PISTOL\000"
.LASF1845:
	.ascii	"w_keys\000"
.LASF1960:
	.ascii	"c:/devl/prboom3ds/src/hu_stuff.c\000"
.LASF1904:
	.ascii	"health_yellow\000"
.LASF467:
	.ascii	"S_VILE_STND2\000"
.LASF885:
	.ascii	"S_BSPI_RAISE1\000"
.LASF886:
	.ascii	"S_BSPI_RAISE2\000"
.LASF887:
	.ascii	"S_BSPI_RAISE3\000"
.LASF888:
	.ascii	"S_BSPI_RAISE4\000"
.LASF889:
	.ascii	"S_BSPI_RAISE5\000"
.LASF890:
	.ascii	"S_BSPI_RAISE6\000"
.LASF891:
	.ascii	"S_BSPI_RAISE7\000"
.LASF1469:
	.ascii	"momx\000"
.LASF1470:
	.ascii	"momy\000"
.LASF5:
	.ascii	"long int\000"
.LASF974:
	.ascii	"S_SSWV_XDIE1\000"
.LASF975:
	.ascii	"S_SSWV_XDIE2\000"
.LASF976:
	.ascii	"S_SSWV_XDIE3\000"
.LASF977:
	.ascii	"S_SSWV_XDIE4\000"
.LASF978:
	.ascii	"S_SSWV_XDIE5\000"
.LASF979:
	.ascii	"S_SSWV_XDIE6\000"
.LASF980:
	.ascii	"S_SSWV_XDIE7\000"
.LASF981:
	.ascii	"S_SSWV_XDIE8\000"
.LASF982:
	.ascii	"S_SSWV_XDIE9\000"
.LASF272:
	.ascii	"S_DSGUNFLASH1\000"
.LASF273:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1340:
	.ascii	"MT_MISC22\000"
.LASF1528:
	.ascii	"didsecret\000"
.LASF530:
	.ascii	"S_FIRE25\000"
.LASF624:
	.ascii	"S_FATT_RAISE2\000"
.LASF1376:
	.ascii	"MT_MISC55\000"
.LASF1502:
	.ascii	"deltaviewheight\000"
.LASF532:
	.ascii	"S_FIRE27\000"
.LASF32:
	.ascii	"it_yellowskull\000"
.LASF1062:
	.ascii	"S_RSKULL2\000"
.LASF1486:
	.ascii	"tracer\000"
.LASF837:
	.ascii	"S_SPID_RUN10\000"
.LASF838:
	.ascii	"S_SPID_RUN11\000"
.LASF839:
	.ascii	"S_SPID_RUN12\000"
.LASF1958:
	.ascii	"strcpy\000"
.LASF1714:
	.ascii	"sfx_wpnup\000"
.LASF1792:
	.ascii	"sfx_dgact\000"
.LASF1943:
	.ascii	"HUlib_eraseIText\000"
.LASF1828:
	.ascii	"eatkey\000"
.LASF1491:
	.ascii	"PrevX\000"
.LASF1492:
	.ascii	"PrevY\000"
.LASF1493:
	.ascii	"PrevZ\000"
.LASF1447:
	.ascii	"raisestate\000"
.LASF1409:
	.ascii	"MT_PULL\000"
.LASF1246:
	.ascii	"S_BSKUL_ATK1\000"
.LASF288:
	.ascii	"S_MISSILEFLASH1\000"
.LASF289:
	.ascii	"S_MISSILEFLASH2\000"
.LASF290:
	.ascii	"S_MISSILEFLASH3\000"
.LASF291:
	.ascii	"S_MISSILEFLASH4\000"
.LASF149:
	.ascii	"SPR_RSKU\000"
.LASF1575:
	.ascii	"COMP_NUM\000"
.LASF1734:
	.ascii	"sfx_skepch\000"
.LASF1687:
	.ascii	"sfx_dbcls\000"
.LASF1807:
	.ascii	"fullammo\000"
.LASF75:
	.ascii	"think_t\000"
.LASF648:
	.ascii	"S_CPOS_DIE2\000"
.LASF649:
	.ascii	"S_CPOS_DIE3\000"
.LASF650:
	.ascii	"S_CPOS_DIE4\000"
.LASF651:
	.ascii	"S_CPOS_DIE5\000"
.LASF1651:
	.ascii	"RF_TOP_TILE\000"
.LASF652:
	.ascii	"S_CPOS_DIE6\000"
.LASF653:
	.ascii	"S_CPOS_DIE7\000"
.LASF1094:
	.ascii	"S_PVIS2\000"
.LASF1584:
	.ascii	"mnact_inactive\000"
.LASF1301:
	.ascii	"MT_BARREL\000"
.LASF1582:
	.ascii	"automapmode_e\000"
.LASF1259:
	.ascii	"S_BSKUL_DIE8\000"
.LASF826:
	.ascii	"S_SPID_STND\000"
.LASF1856:
	.ascii	"hud_coordstrx\000"
.LASF1857:
	.ascii	"hud_coordstry\000"
.LASF1858:
	.ascii	"hud_coordstrz\000"
.LASF598:
	.ascii	"S_FATT_RUN10\000"
.LASF599:
	.ascii	"S_FATT_RUN11\000"
.LASF600:
	.ascii	"S_FATT_RUN12\000"
.LASF1293:
	.ascii	"MT_PAIN\000"
.LASF1152:
	.ascii	"S_BLUETORCH2\000"
.LASF1448:
	.ascii	"mobjinfo_t\000"
.LASF1153:
	.ascii	"S_BLUETORCH3\000"
.LASF1717:
	.ascii	"sfx_posit1\000"
.LASF1154:
	.ascii	"S_BLUETORCH4\000"
.LASF209:
	.ascii	"SPR_SMRT\000"
.LASF1719:
	.ascii	"sfx_posit3\000"
.LASF313:
	.ascii	"S_BFGFLASH1\000"
.LASF314:
	.ascii	"S_BFGFLASH2\000"
.LASF847:
	.ascii	"S_SPID_DIE2\000"
.LASF126:
	.ascii	"SPR_BOS2\000"
.LASF850:
	.ascii	"S_SPID_DIE5\000"
.LASF851:
	.ascii	"S_SPID_DIE6\000"
.LASF1777:
	.ascii	"sfx_bossit\000"
.LASF852:
	.ascii	"S_SPID_DIE7\000"
.LASF853:
	.ascii	"S_SPID_DIE8\000"
.LASF1944:
	.ascii	"HUlib_eraseTextLine\000"
.LASF1143:
	.ascii	"S_EVILEYE2\000"
.LASF1144:
	.ascii	"S_EVILEYE3\000"
.LASF1145:
	.ascii	"S_EVILEYE4\000"
.LASF318:
	.ascii	"S_PUFF1\000"
.LASF319:
	.ascii	"S_PUFF2\000"
.LASF320:
	.ascii	"S_PUFF3\000"
.LASF137:
	.ascii	"SPR_BOSF\000"
.LASF1622:
	.ascii	"lines\000"
.LASF1572:
	.ascii	"comp_666\000"
.LASF125:
	.ascii	"SPR_BOSS\000"
.LASF1305:
	.ascii	"MT_PLASMA\000"
.LASF1789:
	.ascii	"sfx_radio\000"
.LASF872:
	.ascii	"S_BSPI_ATK1\000"
.LASF873:
	.ascii	"S_BSPI_ATK2\000"
.LASF874:
	.ascii	"S_BSPI_ATK3\000"
.LASF875:
	.ascii	"S_BSPI_ATK4\000"
.LASF1054:
	.ascii	"S_BKEY2\000"
.LASF44:
	.ascii	"NUMWEAPONS\000"
.LASF1211:
	.ascii	"S_DOGS_PAIN2\000"
.LASF859:
	.ascii	"S_BSPI_SIGHT\000"
.LASF1706:
	.ascii	"sfx_plpain\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF1535:
	.ascii	"m_snext\000"
.LASF1005:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1006:
	.ascii	"S_BRAIN_DIE2\000"
.LASF1007:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1008:
	.ascii	"S_BRAIN_DIE4\000"
.LASF340:
	.ascii	"S_BFGSHOT\000"
.LASF1146:
	.ascii	"S_FLOATSKULL\000"
.LASF496:
	.ascii	"S_VILE_DIE1\000"
.LASF497:
	.ascii	"S_VILE_DIE2\000"
.LASF498:
	.ascii	"S_VILE_DIE3\000"
.LASF499:
	.ascii	"S_VILE_DIE4\000"
.LASF500:
	.ascii	"S_VILE_DIE5\000"
.LASF501:
	.ascii	"S_VILE_DIE6\000"
.LASF502:
	.ascii	"S_VILE_DIE7\000"
.LASF503:
	.ascii	"S_VILE_DIE8\000"
.LASF504:
	.ascii	"S_VILE_DIE9\000"
.LASF1521:
	.ascii	"damagecount\000"
.LASF1627:
	.ascii	"floorlightsec\000"
.LASF1564:
	.ascii	"comp_staylift\000"
.LASF178:
	.ascii	"SPR_SMT2\000"
.LASF1056:
	.ascii	"S_RKEY2\000"
.LASF1027:
	.ascii	"S_ARM1\000"
.LASF1029:
	.ascii	"S_ARM2\000"
.LASF1215:
	.ascii	"S_DOGS_DIE4\000"
.LASF1216:
	.ascii	"S_DOGS_DIE5\000"
.LASF1122:
	.ascii	"S_HEADCANDLES\000"
.LASF156:
	.ascii	"SPR_PINS\000"
.LASF752:
	.ascii	"S_BOSS_STND\000"
.LASF1912:
	.ascii	"key_chat\000"
.LASF1758:
	.ascii	"sfx_dmact\000"
.LASF732:
	.ascii	"S_HEAD_PAIN\000"
.LASF29:
	.ascii	"it_yellowcard\000"
.LASF1580:
	.ascii	"am_follow\000"
.LASF1850:
	.ascii	"chat_dest\000"
.LASF1277:
	.ascii	"MT_TRACER\000"
.LASF613:
	.ascii	"S_FATT_DIE1\000"
.LASF10:
	.ascii	"char\000"
.LASF615:
	.ascii	"S_FATT_DIE3\000"
.LASF616:
	.ascii	"S_FATT_DIE4\000"
.LASF617:
	.ascii	"S_FATT_DIE5\000"
.LASF618:
	.ascii	"S_FATT_DIE6\000"
.LASF619:
	.ascii	"S_FATT_DIE7\000"
.LASF620:
	.ascii	"S_FATT_DIE8\000"
.LASF621:
	.ascii	"S_FATT_DIE9\000"
.LASF688:
	.ascii	"S_TROO_XDIE2\000"
.LASF689:
	.ascii	"S_TROO_XDIE3\000"
.LASF690:
	.ascii	"S_TROO_XDIE4\000"
.LASF691:
	.ascii	"S_TROO_XDIE5\000"
.LASF692:
	.ascii	"S_TROO_XDIE6\000"
.LASF693:
	.ascii	"S_TROO_XDIE7\000"
.LASF694:
	.ascii	"S_TROO_XDIE8\000"
.LASF161:
	.ascii	"SPR_CLIP\000"
.LASF1736:
	.ascii	"sfx_claw\000"
.LASF1935:
	.ascii	"R_SetPatchNum\000"
.LASF1135:
	.ascii	"S_SHRTREDCOL\000"
.LASF79:
	.ascii	"cnext\000"
.LASF1178:
	.ascii	"S_HANGTSKULL\000"
.LASF1909:
	.ascii	"ammo_red\000"
.LASF1890:
	.ascii	"players\000"
.LASF1937:
	.ascii	"HUlib_initTextLine\000"
.LASF1875:
	.ascii	"gamemission\000"
.LASF1892:
	.ascii	"hudcolor_titl\000"
.LASF1823:
	.ascii	"HU_Ticker\000"
.LASF1195:
	.ascii	"S_DETONATE2\000"
.LASF1196:
	.ascii	"S_DETONATE3\000"
.LASF60:
	.ascii	"NUMPOWERS\000"
.LASF1604:
	.ascii	"firsttag\000"
.LASF963:
	.ascii	"S_SSWV_ATK3\000"
.LASF964:
	.ascii	"S_SSWV_ATK4\000"
.LASF269:
	.ascii	"S_DSGUN10\000"
.LASF1746:
	.ascii	"sfx_cacdth\000"
.LASF1941:
	.ascii	"HUlib_initIText\000"
.LASF55:
	.ascii	"pw_strength\000"
.LASF195:
	.ascii	"SPR_CAND\000"
.LASF1932:
	.ascii	"map_point_coordinates\000"
.LASF1703:
	.ascii	"sfx_stnmov\000"
.LASF1283:
	.ascii	"MT_SERGEANT\000"
.LASF81:
	.ascii	"references\000"
.LASF1125:
	.ascii	"S_LIVESTICK\000"
.LASF1065:
	.ascii	"S_STIM\000"
.LASF1907:
	.ascii	"armor_yellow\000"
.LASF1852:
	.ascii	"message_list\000"
.LASF1561:
	.ascii	"comp_skymap\000"
.LASF49:
	.ascii	"am_cell\000"
.LASF28:
	.ascii	"it_bluecard\000"
.LASF1871:
	.ascii	"SCREENHEIGHT\000"
.LASF1466:
	.ascii	"floorz\000"
.LASF728:
	.ascii	"S_HEAD_RUN1\000"
.LASF383:
	.ascii	"S_PLAY_DIE1\000"
.LASF384:
	.ascii	"S_PLAY_DIE2\000"
.LASF385:
	.ascii	"S_PLAY_DIE3\000"
.LASF386:
	.ascii	"S_PLAY_DIE4\000"
.LASF387:
	.ascii	"S_PLAY_DIE5\000"
.LASF388:
	.ascii	"S_PLAY_DIE6\000"
.LASF389:
	.ascii	"S_PLAY_DIE7\000"
.LASF1942:
	.ascii	"HUlib_eraseMText\000"
.LASF399:
	.ascii	"S_POSS_STND\000"
.LASF1225:
	.ascii	"S_OLDBFG42\000"
.LASF1226:
	.ascii	"S_OLDBFG43\000"
.LASF355:
	.ascii	"S_TFOG\000"
.LASF1361:
	.ascii	"MT_MISC40\000"
.LASF1362:
	.ascii	"MT_MISC41\000"
.LASF1494:
	.ascii	"subsector_s\000"
.LASF715:
	.ascii	"S_SARG_DIE1\000"
.LASF1592:
	.ascii	"data1\000"
.LASF716:
	.ascii	"S_SARG_DIE2\000"
.LASF1593:
	.ascii	"data2\000"
.LASF717:
	.ascii	"S_SARG_DIE3\000"
.LASF1594:
	.ascii	"data3\000"
.LASF718:
	.ascii	"S_SARG_DIE4\000"
.LASF1016:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1017:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1018:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1019:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1020:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1021:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1022:
	.ascii	"S_SPAWNFIRE7\000"
.LASF26:
	.ascii	"GS_DEMOSCREEN\000"
.LASF687:
	.ascii	"S_TROO_XDIE1\000"
.LASF1541:
	.ascii	"consistancy\000"
.LASF1598:
	.ascii	"iSectorID\000"
.LASF1796:
	.ascii	"buffer\000"
.LASF1495:
	.ascii	"sector\000"
.LASF1180:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF335:
	.ascii	"S_PLASEXP2\000"
.LASF336:
	.ascii	"S_PLASEXP3\000"
.LASF337:
	.ascii	"S_PLASEXP4\000"
.LASF338:
	.ascii	"S_PLASEXP5\000"
.LASF41:
	.ascii	"wp_bfg\000"
.LASF1164:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1165:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1166:
	.ascii	"S_BTORCHSHRT4\000"
.LASF1753:
	.ascii	"sfx_kntdth\000"
.LASF468:
	.ascii	"S_VILE_RUN1\000"
.LASF258:
	.ascii	"S_DSGUNDOWN\000"
.LASF470:
	.ascii	"S_VILE_RUN3\000"
.LASF471:
	.ascii	"S_VILE_RUN4\000"
.LASF472:
	.ascii	"S_VILE_RUN5\000"
.LASF473:
	.ascii	"S_VILE_RUN6\000"
.LASF474:
	.ascii	"S_VILE_RUN7\000"
.LASF475:
	.ascii	"S_VILE_RUN8\000"
.LASF476:
	.ascii	"S_VILE_RUN9\000"
.LASF719:
	.ascii	"S_SARG_DIE5\000"
.LASF720:
	.ascii	"S_SARG_DIE6\000"
.LASF1536:
	.ascii	"visited\000"
.LASF1460:
	.ascii	"thinker\000"
.LASF1775:
	.ascii	"sfx_bospit\000"
.LASF1644:
	.ascii	"r_flags\000"
.LASF1257:
	.ascii	"S_BSKUL_DIE6\000"
.LASF560:
	.ascii	"S_SKEL_FIST1\000"
.LASF561:
	.ascii	"S_SKEL_FIST2\000"
.LASF562:
	.ascii	"S_SKEL_FIST3\000"
.LASF563:
	.ascii	"S_SKEL_FIST4\000"
.LASF299:
	.ascii	"S_PLASMA\000"
.LASF1078:
	.ascii	"S_PINS\000"
.LASF1205:
	.ascii	"S_DOGS_RUN7\000"
.LASF1206:
	.ascii	"S_DOGS_RUN8\000"
.LASF1677:
	.ascii	"laston\000"
.LASF1235:
	.ascii	"S_PLS2BALL2\000"
.LASF1489:
	.ascii	"movefactor\000"
.LASF1710:
	.ascii	"sfx_mnpain\000"
.LASF1673:
	.ascii	"CR_LIMIT\000"
.LASF1151:
	.ascii	"S_BLUETORCH\000"
.LASF589:
	.ascii	"S_FATT_RUN1\000"
.LASF590:
	.ascii	"S_FATT_RUN2\000"
.LASF591:
	.ascii	"S_FATT_RUN3\000"
.LASF592:
	.ascii	"S_FATT_RUN4\000"
.LASF57:
	.ascii	"pw_ironfeet\000"
.LASF594:
	.ascii	"S_FATT_RUN6\000"
.LASF595:
	.ascii	"S_FATT_RUN7\000"
.LASF596:
	.ascii	"S_FATT_RUN8\000"
.LASF1127:
	.ascii	"S_MEAT2\000"
.LASF1128:
	.ascii	"S_MEAT3\000"
.LASF1129:
	.ascii	"S_MEAT4\000"
.LASF1130:
	.ascii	"S_MEAT5\000"
.LASF1731:
	.ascii	"sfx_pesit\000"
.LASF242:
	.ascii	"S_PISTOLFLASH\000"
.LASF1601:
	.ascii	"floorheight\000"
.LASF462:
	.ascii	"S_SPOS_RAISE2\000"
.LASF463:
	.ascii	"S_SPOS_RAISE3\000"
.LASF464:
	.ascii	"S_SPOS_RAISE4\000"
.LASF465:
	.ascii	"S_SPOS_RAISE5\000"
.LASF152:
	.ascii	"SPR_MEDI\000"
.LASF154:
	.ascii	"SPR_PINV\000"
.LASF1720:
	.ascii	"sfx_bgsit1\000"
.LASF1721:
	.ascii	"sfx_bgsit2\000"
.LASF1755:
	.ascii	"sfx_skedth\000"
.LASF1004:
	.ascii	"S_BRAIN_PAIN\000"
.LASF275:
	.ascii	"S_CHAINDOWN\000"
.LASF1228:
	.ascii	"S_PLS1BALL2\000"
.LASF1224:
	.ascii	"S_OLDBFG1\000"
.LASF1835:
	.ascii	"w_message\000"
.LASF1825:
	.ascii	"HU_Responder\000"
.LASF1581:
	.ascii	"am_grid\000"
.LASF494:
	.ascii	"S_VILE_PAIN\000"
.LASF541:
	.ascii	"S_TRACER\000"
.LASF24:
	.ascii	"GS_INTERMISSION\000"
.LASF1420:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF1552:
	.ascii	"comp_vile\000"
.LASF1811:
	.ascii	"armor\000"
.LASF961:
	.ascii	"S_SSWV_ATK1\000"
.LASF962:
	.ascii	"S_SSWV_ATK2\000"
.LASF491:
	.ascii	"S_VILE_HEAL1\000"
.LASF492:
	.ascii	"S_VILE_HEAL2\000"
.LASF493:
	.ascii	"S_VILE_HEAL3\000"
.LASF966:
	.ascii	"S_SSWV_ATK6\000"
.LASF1477:
	.ascii	"movecount\000"
.LASF146:
	.ascii	"SPR_RKEY\000"
.LASF1727:
	.ascii	"sfx_bspsit\000"
.LASF1112:
	.ascii	"S_STALAG\000"
.LASF1527:
	.ascii	"psprites\000"
.LASF1618:
	.ascii	"midmap\000"
.LASF1576:
	.ascii	"COMP_TOTAL\000"
.LASF1708:
	.ascii	"sfx_popain\000"
.LASF827:
	.ascii	"S_SPID_STND2\000"
.LASF73:
	.ascii	"angle_t\000"
.LASF1630:
	.ascii	"ceilingpic\000"
.LASF1113:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1182:
	.ascii	"S_SMALLPOOL\000"
.LASF1453:
	.ascii	"pspdef_t\000"
.LASF1377:
	.ascii	"MT_MISC56\000"
.LASF611:
	.ascii	"S_FATT_PAIN\000"
.LASF1646:
	.ascii	"ST_HORIZONTAL\000"
.LASF1870:
	.ascii	"tail\000"
.LASF375:
	.ascii	"S_PLAY_RUN1\000"
.LASF376:
	.ascii	"S_PLAY_RUN2\000"
.LASF377:
	.ascii	"S_PLAY_RUN3\000"
.LASF378:
	.ascii	"S_PLAY_RUN4\000"
.LASF1103:
	.ascii	"S_BPAK\000"
.LASF141:
	.ascii	"SPR_BEXP\000"
.LASF1842:
	.ascii	"w_health\000"
.LASF1824:
	.ascii	"HU_dequeueChatChar\000"
.LASF1498:
	.ascii	"player_s\000"
.LASF1060:
	.ascii	"S_BSKULL2\000"
.LASF100:
	.ascii	"SPR_PUFF\000"
.LASF989:
	.ascii	"S_COMMKEEN\000"
.LASF1699:
	.ascii	"sfx_pstart\000"
.LASF1514:
	.ascii	"usedown\000"
.LASF1416:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF781:
	.ascii	"S_BOS2_STND\000"
.LASF106:
	.ascii	"SPR_BFS1\000"
.LASF1925:
	.ascii	"chat_on\000"
.LASF1012:
	.ascii	"S_SPAWN1\000"
.LASF1013:
	.ascii	"S_SPAWN2\000"
.LASF1014:
	.ascii	"S_SPAWN3\000"
.LASF1015:
	.ascii	"S_SPAWN4\000"
.LASF1185:
	.ascii	"S_TECHLAMP2\000"
.LASF1186:
	.ascii	"S_TECHLAMP3\000"
.LASF42:
	.ascii	"wp_chainsaw\000"
.LASF1291:
	.ascii	"MT_BABY\000"
.LASF1512:
	.ascii	"maxammo\000"
.LASF934:
	.ascii	"S_PAIN_ATK2\000"
.LASF1772:
	.ascii	"sfx_flame\000"
.LASF1126:
	.ascii	"S_LIVESTICK2\000"
.LASF1893:
	.ascii	"hudcolor_xyco\000"
.LASF1171:
	.ascii	"S_RTORCHSHRT\000"
.LASF1337:
	.ascii	"MT_MISC19\000"
.LASF128:
	.ascii	"SPR_SPID\000"
.LASF727:
	.ascii	"S_HEAD_STND\000"
.LASF702:
	.ascii	"S_SARG_RUN1\000"
.LASF703:
	.ascii	"S_SARG_RUN2\000"
.LASF704:
	.ascii	"S_SARG_RUN3\000"
.LASF705:
	.ascii	"S_SARG_RUN4\000"
.LASF706:
	.ascii	"S_SARG_RUN5\000"
.LASF707:
	.ascii	"S_SARG_RUN6\000"
.LASF708:
	.ascii	"S_SARG_RUN7\000"
.LASF709:
	.ascii	"S_SARG_RUN8\000"
.LASF1315:
	.ascii	"MT_MISC1\000"
.LASF1316:
	.ascii	"MT_MISC2\000"
.LASF1317:
	.ascii	"MT_MISC3\000"
.LASF1318:
	.ascii	"MT_MISC4\000"
.LASF1319:
	.ascii	"MT_MISC5\000"
.LASF1320:
	.ascii	"MT_MISC6\000"
.LASF1321:
	.ascii	"MT_MISC7\000"
.LASF1322:
	.ascii	"MT_MISC8\000"
.LASF1323:
	.ascii	"MT_MISC9\000"
.LASF292:
	.ascii	"S_SAW\000"
.LASF157:
	.ascii	"SPR_MEGA\000"
.LASF381:
	.ascii	"S_PLAY_PAIN\000"
.LASF1854:
	.ascii	"message_counter\000"
.LASF1665:
	.ascii	"CR_GREEN\000"
.LASF333:
	.ascii	"S_PLASBALL2\000"
.LASF1450:
	.ascii	"ps_flash\000"
.LASF1499:
	.ascii	"playerstate\000"
.LASF1643:
	.ascii	"r_validcount\000"
.LASF1869:
	.ascii	"head\000"
.LASF135:
	.ascii	"SPR_KEEN\000"
.LASF1790:
	.ascii	"sfx_dgsit\000"
.LASF967:
	.ascii	"S_SSWV_PAIN\000"
.LASF1432:
	.ascii	"painstate\000"
.LASF1002:
	.ascii	"S_KEENPAIN2\000"
.LASF1901:
	.ascii	"hud_active\000"
.LASF59:
	.ascii	"pw_infrared\000"
.LASF489:
	.ascii	"S_VILE_ATK10\000"
.LASF490:
	.ascii	"S_VILE_ATK11\000"
.LASF1954:
	.ascii	"HUlib_resetIText\000"
.LASF1567:
	.ascii	"comp_infcheat\000"
.LASF1659:
	.ascii	"topoffset\000"
.LASF1419:
	.ascii	"MT_STEALTHFATSO\000"
.LASF968:
	.ascii	"S_SSWV_PAIN2\000"
.LASF1401:
	.ascii	"MT_MISC80\000"
.LASF1439:
	.ascii	"deathsound\000"
.LASF1042:
	.ascii	"S_BON1A\000"
.LASF1043:
	.ascii	"S_BON1B\000"
.LASF1044:
	.ascii	"S_BON1C\000"
.LASF1045:
	.ascii	"S_BON1D\000"
.LASF1046:
	.ascii	"S_BON1E\000"
.LASF1645:
	.ascii	"sector_t\000"
.LASF1570:
	.ascii	"comp_respawn\000"
.LASF1657:
	.ascii	"width\000"
.LASF155:
	.ascii	"SPR_PSTR\000"
.LASF1712:
	.ascii	"sfx_slop\000"
.LASF1339:
	.ascii	"MT_MISC21\000"
.LASF713:
	.ascii	"S_SARG_PAIN\000"
.LASF1334:
	.ascii	"MT_CLIP\000"
.LASF170:
	.ascii	"SPR_BFUG\000"
.LASF1389:
	.ascii	"MT_MISC68\000"
.LASF1038:
	.ascii	"S_BBAR1\000"
.LASF1039:
	.ascii	"S_BBAR2\000"
.LASF1040:
	.ascii	"S_BBAR3\000"
.LASF226:
	.ascii	"S_LIGHTDONE\000"
.LASF877:
	.ascii	"S_BSPI_PAIN2\000"
.LASF1926:
	.ascii	"message_dontfuckwithme\000"
.LASF1569:
	.ascii	"comp_moveblock\000"
.LASF1253:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1507:
	.ascii	"backpack\000"
.LASF1255:
	.ascii	"S_BSKUL_DIE4\000"
.LASF1867:
	.ascii	"bscounter\000"
.LASF677:
	.ascii	"S_TROO_ATK1\000"
.LASF678:
	.ascii	"S_TROO_ATK2\000"
.LASF679:
	.ascii	"S_TROO_ATK3\000"
.LASF821:
	.ascii	"S_SKULL_DIE2\000"
.LASF822:
	.ascii	"S_SKULL_DIE3\000"
.LASF823:
	.ascii	"S_SKULL_DIE4\000"
.LASF824:
	.ascii	"S_SKULL_DIE5\000"
.LASF825:
	.ascii	"S_SKULL_DIE6\000"
.LASF174:
	.ascii	"SPR_PLAS\000"
.LASF1048:
	.ascii	"S_BON2A\000"
.LASF1049:
	.ascii	"S_BON2B\000"
.LASF87:
	.ascii	"SPR_PISF\000"
.LASF86:
	.ascii	"SPR_PISG\000"
.LASF1052:
	.ascii	"S_BON2E\000"
.LASF1344:
	.ascii	"MT_CHAINGUN\000"
.LASF324:
	.ascii	"S_TBALLX1\000"
.LASF325:
	.ascii	"S_TBALLX2\000"
.LASF326:
	.ascii	"S_TBALLX3\000"
.LASF45:
	.ascii	"wp_nochange\000"
.LASF1281:
	.ascii	"MT_CHAINGUY\000"
.LASF1597:
	.ascii	"degenmobj_t\000"
.LASF1718:
	.ascii	"sfx_posit2\000"
.LASF1538:
	.ascii	"forwardmove\000"
.LASF1836:
	.ascii	"w_chat\000"
.LASF820:
	.ascii	"S_SKULL_DIE1\000"
.LASF18:
	.ascii	"pack_tnt\000"
.LASF1183:
	.ascii	"S_BRAINSTEM\000"
.LASF988:
	.ascii	"S_KEENSTND\000"
.LASF1088:
	.ascii	"S_PMAP2\000"
.LASF111:
	.ascii	"SPR_PLAY\000"
.LASF1509:
	.ascii	"readyweapon\000"
.LASF1723:
	.ascii	"sfx_cacsit\000"
.LASF1732:
	.ascii	"sfx_sklatk\000"
.LASF1915:
	.ascii	"destination_keys\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF1903:
	.ascii	"health_red\000"
.LASF1123:
	.ascii	"S_HEADCANDLES2\000"
.LASF1311:
	.ascii	"MT_IFOG\000"
.LASF1573:
	.ascii	"comp_soul\000"
.LASF202:
	.ascii	"SPR_FSKU\000"
.LASF1778:
	.ascii	"sfx_bospn\000"
.LASF439:
	.ascii	"S_SPOS_RUN6\000"
.LASF1553:
	.ascii	"comp_pain\000"
.LASF295:
	.ascii	"S_SAWUP\000"
.LASF1028:
	.ascii	"S_ARM1A\000"
.LASF631:
	.ascii	"S_CPOS_STND\000"
.LASF1352:
	.ascii	"MT_MISC31\000"
.LASF1471:
	.ascii	"momz\000"
.LASF1102:
	.ascii	"S_SBOX\000"
.LASF1354:
	.ascii	"MT_MISC33\000"
.LASF1355:
	.ascii	"MT_MISC34\000"
.LASF1218:
	.ascii	"S_DOGS_RAISE1\000"
.LASF1219:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1220:
	.ascii	"S_DOGS_RAISE3\000"
.LASF334:
	.ascii	"S_PLASEXP\000"
.LASF1222:
	.ascii	"S_DOGS_RAISE5\000"
.LASF1223:
	.ascii	"S_DOGS_RAISE6\000"
.LASF1656:
	.ascii	"float\000"
.LASF1118:
	.ascii	"S_DEADBOTTOM\000"
.LASF1769:
	.ascii	"sfx_bdopn\000"
.LASF1175:
	.ascii	"S_HANGNOGUTS\000"
.LASF1431:
	.ascii	"attacksound\000"
.LASF1079:
	.ascii	"S_PINS2\000"
.LASF1080:
	.ascii	"S_PINS3\000"
.LASF1081:
	.ascii	"S_PINS4\000"
.LASF1861:
	.ascii	"hud_armorstr\000"
.LASF933:
	.ascii	"S_PAIN_ATK1\000"
.LASF1961:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF935:
	.ascii	"S_PAIN_ATK3\000"
.LASF936:
	.ascii	"S_PAIN_ATK4\000"
.LASF1946:
	.ascii	"P_GetAmmoLevel\000"
.LASF1884:
	.ascii	"totallive\000"
.LASF1566:
	.ascii	"comp_stairs\000"
.LASF245:
	.ascii	"S_SGUNUP\000"
.LASF1639:
	.ascii	"frontsector\000"
.LASF1810:
	.ascii	"healthbars\000"
.LASF196:
	.ascii	"SPR_CBRA\000"
.LASF1437:
	.ascii	"deathstate\000"
.LASF1846:
	.ascii	"w_gkeys\000"
.LASF1030:
	.ascii	"S_ARM2A\000"
.LASF899:
	.ascii	"S_CYBER_STND\000"
.LASF1658:
	.ascii	"leftoffset\000"
.LASF1058:
	.ascii	"S_YKEY2\000"
.LASF508:
	.ascii	"S_FIRE3\000"
.LASF1574:
	.ascii	"comp_maskedanim\000"
.LASF1430:
	.ascii	"reactiontime\000"
.LASF513:
	.ascii	"S_FIRE8\000"
.LASF753:
	.ascii	"S_BOSS_STND2\000"
.LASF1762:
	.ascii	"sfx_noway\000"
.LASF1895:
	.ascii	"hudcolor_chat\000"
.LASF1462:
	.ascii	"sprev\000"
.LASF296:
	.ascii	"S_SAW1\000"
.LASF297:
	.ascii	"S_SAW2\000"
.LASF298:
	.ascii	"S_SAW3\000"
.LASF20:
	.ascii	"none\000"
.LASF1041:
	.ascii	"S_BON1\000"
.LASF1047:
	.ascii	"S_BON2\000"
.LASF1483:
	.ascii	"player\000"
.LASF1612:
	.ascii	"lightingdata\000"
.LASF1801:
	.ascii	"HU_Erase\000"
.LASF293:
	.ascii	"S_SAWB\000"
.LASF681:
	.ascii	"S_TROO_PAIN2\000"
.LASF1297:
	.ascii	"MT_BOSSSPIT\000"
.LASF506:
	.ascii	"S_FIRE1\000"
.LASF507:
	.ascii	"S_FIRE2\000"
.LASF72:
	.ascii	"fixed_t\000"
.LASF509:
	.ascii	"S_FIRE4\000"
.LASF510:
	.ascii	"S_FIRE5\000"
.LASF511:
	.ascii	"S_FIRE6\000"
.LASF512:
	.ascii	"S_FIRE7\000"
.LASF164:
	.ascii	"SPR_BROK\000"
.LASF514:
	.ascii	"S_FIRE9\000"
.LASF1239:
	.ascii	"S_BON3\000"
.LASF1240:
	.ascii	"S_BON4\000"
.LASF1366:
	.ascii	"MT_MISC45\000"
.LASF1099:
	.ascii	"S_CELL\000"
.LASF1368:
	.ascii	"MT_MISC47\000"
.LASF162:
	.ascii	"SPR_AMMO\000"
.LASF1369:
	.ascii	"MT_MISC48\000"
.LASF1221:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1370:
	.ascii	"MT_MISC49\000"
.LASF812:
	.ascii	"S_SKULL_RUN1\000"
.LASF813:
	.ascii	"S_SKULL_RUN2\000"
.LASF1179:
	.ascii	"S_HANGTLOOKUP\000"
.LASF274:
	.ascii	"S_CHAIN\000"
.LASF1888:
	.ascii	"gamestate\000"
.LASF1591:
	.ascii	"evtype_t\000"
.LASF304:
	.ascii	"S_PLASMAFLASH1\000"
.LASF260:
	.ascii	"S_DSGUN1\000"
.LASF261:
	.ascii	"S_DSGUN2\000"
.LASF153:
	.ascii	"SPR_SOUL\000"
.LASF113:
	.ascii	"SPR_SPOS\000"
.LASF264:
	.ascii	"S_DSGUN5\000"
.LASF265:
	.ascii	"S_DSGUN6\000"
.LASF266:
	.ascii	"S_DSGUN7\000"
.LASF267:
	.ascii	"S_DSGUN8\000"
.LASF268:
	.ascii	"S_DSGUN9\000"
.LASF432:
	.ascii	"S_SPOS_STND\000"
.LASF133:
	.ascii	"SPR_PAIN\000"
.LASF660:
	.ascii	"S_CPOS_RAISE1\000"
.LASF1508:
	.ascii	"frags\000"
.LASF1408:
	.ascii	"MT_PUSH\000"
.LASF1752:
	.ascii	"sfx_vildth\000"
.LASF1503:
	.ascii	"armorpoints\000"
.LASF1543:
	.ascii	"buttons\000"
.LASF1625:
	.ascii	"ceiling_xoffs\000"
.LASF309:
	.ascii	"S_BFG1\000"
.LASF310:
	.ascii	"S_BFG2\000"
.LASF311:
	.ascii	"S_BFG3\000"
.LASF312:
	.ascii	"S_BFG4\000"
.LASF1896:
	.ascii	"hudcolor_list\000"
.LASF1670:
	.ascii	"CR_ORANGE\000"
.LASF1913:
	.ascii	"key_backspace\000"
.LASF1952:
	.ascii	"HUlib_drawSText\000"
.LASF224:
	.ascii	"spritenum_t\000"
.LASF271:
	.ascii	"S_DSNR2\000"
.LASF1916:
	.ascii	"hud_graph_keys\000"
.LASF811:
	.ascii	"S_SKULL_STND2\000"
.LASF1610:
	.ascii	"floordata\000"
.LASF1074:
	.ascii	"S_PINV2\000"
.LASF1075:
	.ascii	"S_PINV3\000"
.LASF1076:
	.ascii	"S_PINV4\000"
.LASF1189:
	.ascii	"S_TECH2LAMP2\000"
.LASF1190:
	.ascii	"S_TECH2LAMP3\000"
.LASF1191:
	.ascii	"S_TECH2LAMP4\000"
.LASF1833:
	.ascii	"finecosine\000"
.LASF1634:
	.ascii	"line_s\000"
.LASF7:
	.ascii	"long long int\000"
.LASF85:
	.ascii	"SPR_PUNG\000"
.LASF655:
	.ascii	"S_CPOS_XDIE2\000"
.LASF656:
	.ascii	"S_CPOS_XDIE3\000"
.LASF657:
	.ascii	"S_CPOS_XDIE4\000"
.LASF658:
	.ascii	"S_CPOS_XDIE5\000"
.LASF659:
	.ascii	"S_CPOS_XDIE6\000"
.LASF840:
	.ascii	"S_SPID_ATK1\000"
.LASF841:
	.ascii	"S_SPID_ATK2\000"
.LASF842:
	.ascii	"S_SPID_ATK3\000"
.LASF843:
	.ascii	"S_SPID_ATK4\000"
.LASF1565:
	.ascii	"comp_zombie\000"
.LASF564:
	.ascii	"S_SKEL_MISS1\000"
.LASF565:
	.ascii	"S_SKEL_MISS2\000"
.LASF566:
	.ascii	"S_SKEL_MISS3\000"
.LASF567:
	.ascii	"S_SKEL_MISS4\000"
.LASF321:
	.ascii	"S_PUFF4\000"
.LASF1923:
	.ascii	"hu_fontk\000"
.LASF1061:
	.ascii	"S_RSKULL\000"
.LASF893:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF1371:
	.ascii	"MT_MISC50\000"
.LASF741:
	.ascii	"S_HEAD_RAISE1\000"
.LASF1406:
	.ascii	"MT_MISC85\000"
.LASF742:
	.ascii	"S_HEAD_RAISE2\000"
.LASF1252:
	.ascii	"S_BSKUL_DIE1\000"
.LASF743:
	.ascii	"S_HEAD_RAISE3\000"
.LASF1254:
	.ascii	"S_BSKUL_DIE3\000"
.LASF148:
	.ascii	"SPR_BSKU\000"
.LASF1256:
	.ascii	"S_BSKUL_DIE5\000"
.LASF745:
	.ascii	"S_HEAD_RAISE5\000"
.LASF1258:
	.ascii	"S_BSKUL_DIE7\000"
.LASF746:
	.ascii	"S_HEAD_RAISE6\000"
.LASF1864:
	.ascii	"hud_gkeysstr\000"
.LASF1660:
	.ascii	"lumpnum\000"
.LASF1872:
	.ascii	"weaponinfo\000"
.LASF1349:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF159:
	.ascii	"SPR_PMAP\000"
.LASF1009:
	.ascii	"S_BRAINEYE\000"
.LASF1530:
	.ascii	"m_sector\000"
.LASF160:
	.ascii	"SPR_PVIS\000"
.LASF1163:
	.ascii	"S_BTORCHSHRT\000"
.LASF1545:
	.ascii	"PST_LIVE\000"
.LASF1876:
	.ascii	"gameepisode\000"
.LASF1307:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1626:
	.ascii	"ceiling_yoffs\000"
.LASF1830:
	.ascii	"altdown\000"
.LASF487:
	.ascii	"S_VILE_ATK8\000"
.LASF428:
	.ascii	"S_POSS_RAISE1\000"
.LASF429:
	.ascii	"S_POSS_RAISE2\000"
.LASF430:
	.ascii	"S_POSS_RAISE3\000"
.LASF431:
	.ascii	"S_POSS_RAISE4\000"
.LASF283:
	.ascii	"S_MISSILEDOWN\000"
.LASF1563:
	.ascii	"comp_doorstuck\000"
.LASF1844:
	.ascii	"w_weapon\000"
.LASF1763:
	.ascii	"sfx_barexp\000"
.LASF1147:
	.ascii	"S_FLOATSKULL2\000"
.LASF1148:
	.ascii	"S_FLOATSKULL3\000"
.LASF1686:
	.ascii	"sfx_dbopn\000"
.LASF1865:
	.ascii	"hud_monsecstr\000"
.LASF1690:
	.ascii	"sfx_bfg\000"
.LASF1809:
	.ascii	"ammobars\000"
.LASF1082:
	.ascii	"S_MEGA\000"
.LASF762:
	.ascii	"S_BOSS_ATK1\000"
.LASF763:
	.ascii	"S_BOSS_ATK2\000"
.LASF764:
	.ascii	"S_BOSS_ATK3\000"
.LASF1465:
	.ascii	"subsector\000"
.LASF218:
	.ascii	"SPR_BRS1\000"
.LASF1596:
	.ascii	"vertex_t\000"
.LASF569:
	.ascii	"S_SKEL_PAIN2\000"
.LASF1106:
	.ascii	"S_CSAW\000"
.LASF54:
	.ascii	"pw_invulnerability\000"
.LASF749:
	.ascii	"S_BRBALLX1\000"
.LASF750:
	.ascii	"S_BRBALLX2\000"
.LASF751:
	.ascii	"S_BRBALLX3\000"
.LASF879:
	.ascii	"S_BSPI_DIE2\000"
.LASF880:
	.ascii	"S_BSPI_DIE3\000"
.LASF881:
	.ascii	"S_BSPI_DIE4\000"
.LASF882:
	.ascii	"S_BSPI_DIE5\000"
.LASF38:
	.ascii	"wp_chaingun\000"
.LASF884:
	.ascii	"S_BSPI_DIE7\000"
.LASF435:
	.ascii	"S_SPOS_RUN2\000"
.LASF1640:
	.ascii	"backsector\000"
.LASF436:
	.ascii	"S_SPOS_RUN3\000"
.LASF938:
	.ascii	"S_PAIN_PAIN2\000"
.LASF573:
	.ascii	"S_SKEL_DIE4\000"
.LASF1682:
	.ascii	"sfx_pistol\000"
.LASF167:
	.ascii	"SPR_SHEL\000"
.LASF1390:
	.ascii	"MT_MISC69\000"
.LASF1504:
	.ascii	"armortype\000"
.LASF1583:
	.ascii	"menuactive_e\000"
.LASF219:
	.ascii	"SPR_TLMP\000"
.LASF1934:
	.ascii	"english_shiftxform\000"
.LASF400:
	.ascii	"S_POSS_STND2\000"
.LASF1348:
	.ascii	"MT_SHOTGUN\000"
.LASF1863:
	.ascii	"hud_keysstr\000"
.LASF1273:
	.ascii	"MT_SHOTGUY\000"
.LASF1518:
	.ascii	"itemcount\000"
.LASF1184:
	.ascii	"S_TECHLAMP\000"
.LASF1294:
	.ascii	"MT_WOLFSS\000"
.LASF22:
	.ascii	"GameMission_t\000"
.LASF1702:
	.ascii	"sfx_dorcls\000"
.LASF1212:
	.ascii	"S_DOGS_DIE1\000"
.LASF1213:
	.ascii	"S_DOGS_DIE2\000"
.LASF782:
	.ascii	"S_BOS2_STND2\000"
.LASF1606:
	.ascii	"soundtarget\000"
.LASF277:
	.ascii	"S_CHAIN1\000"
.LASF278:
	.ascii	"S_CHAIN2\000"
.LASF279:
	.ascii	"S_CHAIN3\000"
.LASF330:
	.ascii	"S_RBALLX2\000"
.LASF331:
	.ascii	"S_RBALLX3\000"
.LASF1911:
	.ascii	"key_escape\000"
.LASF204:
	.ascii	"SPR_TBLU\000"
.LASF433:
	.ascii	"S_SPOS_STND2\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF1683:
	.ascii	"sfx_shotgn\000"
.LASF1461:
	.ascii	"snext\000"
.LASF1560:
	.ascii	"comp_floors\000"
.LASF52:
	.ascii	"am_noammo\000"
.LASF1458:
	.ascii	"thinker_s\000"
.LASF82:
	.ascii	"thinker_t\000"
.LASF1554:
	.ascii	"comp_skull\000"
.LASF1827:
	.ascii	"macromessage\000"
.LASF1242:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1243:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1244:
	.ascii	"S_BSKUL_RUN3\000"
.LASF1245:
	.ascii	"S_BSKUL_RUN4\000"
.LASF1744:
	.ascii	"sfx_bgdth2\000"
.LASF1023:
	.ascii	"S_SPAWNFIRE8\000"
.LASF409:
	.ascii	"S_POSS_ATK1\000"
.LASF410:
	.ascii	"S_POSS_ATK2\000"
.LASF411:
	.ascii	"S_POSS_ATK3\000"
.LASF1392:
	.ascii	"MT_MISC71\000"
.LASF1172:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1173:
	.ascii	"S_RTORCHSHRT3\000"
.LASF1174:
	.ascii	"S_RTORCHSHRT4\000"
.LASF1578:
	.ascii	"am_overlay\000"
.LASF3:
	.ascii	"short int\000"
.LASF1398:
	.ascii	"MT_MISC77\000"
.LASF1399:
	.ascii	"MT_MISC78\000"
.LASF1655:
	.ascii	"RF_CLOSED\000"
.LASF1400:
	.ascii	"MT_MISC79\000"
.LASF1289:
	.ascii	"MT_SKULL\000"
.LASF1551:
	.ascii	"comp_dropoff\000"
.LASF1276:
	.ascii	"MT_UNDEAD\000"
.LASF21:
	.ascii	"GameMode_t\000"
.LASF76:
	.ascii	"prev\000"
.LASF570:
	.ascii	"S_SKEL_DIE1\000"
.LASF571:
	.ascii	"S_SKEL_DIE2\000"
.LASF572:
	.ascii	"S_SKEL_DIE3\000"
.LASF115:
	.ascii	"SPR_FIRE\000"
.LASF574:
	.ascii	"S_SKEL_DIE5\000"
.LASF575:
	.ascii	"S_SKEL_DIE6\000"
.LASF1668:
	.ascii	"CR_RED\000"
.LASF1181:
	.ascii	"S_COLONGIBS\000"
.LASF1874:
	.ascii	"gamemode\000"
.LASF1585:
	.ascii	"mnact_float\000"
.LASF220:
	.ascii	"SPR_TLP2\000"
.LASF1894:
	.ascii	"hudcolor_mesg\000"
.LASF332:
	.ascii	"S_PLASBALL\000"
.LASF1739:
	.ascii	"sfx_pdiehi\000"
.LASF176:
	.ascii	"SPR_SGN2\000"
.LASF1456:
	.ascii	"options\000"
.LASF129:
	.ascii	"SPR_BSPI\000"
.LASF1843:
	.ascii	"w_armor\000"
.LASF131:
	.ascii	"SPR_APBX\000"
.LASF1526:
	.ascii	"colormap\000"
.LASF14:
	.ascii	"retail\000"
.LASF1325:
	.ascii	"MT_MISC11\000"
.LASF1326:
	.ascii	"MT_MISC12\000"
.LASF1328:
	.ascii	"MT_MISC13\000"
.LASF1330:
	.ascii	"MT_MISC14\000"
.LASF1331:
	.ascii	"MT_MISC15\000"
.LASF1332:
	.ascii	"MT_MISC16\000"
.LASF1335:
	.ascii	"MT_MISC17\000"
.LASF1336:
	.ascii	"MT_MISC18\000"
.LASF1095:
	.ascii	"S_CLIP\000"
.LASF1441:
	.ascii	"radius\000"
.LASF1475:
	.ascii	"health\000"
.LASF1230:
	.ascii	"S_PLS1EXP2\000"
.LASF1231:
	.ascii	"S_PLS1EXP3\000"
.LASF1232:
	.ascii	"S_PLS1EXP4\000"
.LASF1233:
	.ascii	"S_PLS1EXP5\000"
.LASF1728:
	.ascii	"sfx_kntsit\000"
.LASF1605:
	.ascii	"soundtraversed\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
