	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"g_game.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	G_DoLoadLevel, %function
G_DoLoadLevel:
.LFB10:
	.file 1 "c:/devl/prboom3ds/src/g_game.c"
	.loc 1 554 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 563 0
	ldr	r0, .L26
	bl	R_FlatNumForName
.LVL0:
	.loc 1 567 0
	ldr	r3, .L26+4
	.loc 1 563 0
	ldr	r2, .L26+8
	.loc 1 567 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 563 0
	str	r0, [r2]
	.loc 1 567 0
	cmp	r3, #2
	beq	.L24
	.loc 1 579 0
	ldr	r3, .L26+12
	ldr	r7, [r3]
	sub	r3, r7, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L6
.L8:
	.word	.L7
	.word	.L9
	.word	.L10
	.word	.L11
.L24:
	.loc 1 571 0
	ldr	r0, .L26+16
	bl	R_TextureNumForName
.LVL1:
	.loc 1 572 0
	ldr	r3, .L26+20
	.loc 1 571 0
	ldr	r4, .L26+24
	.loc 1 572 0
	ldr	r8, [r3]
	.loc 1 571 0
	str	r0, [r4]
	.loc 1 572 0
	cmp	r8, #11
	ble	.L25
	.loc 1 575 0
	cmp	r8, #20
	ble	.L5
	ldr	r3, .L26+12
	ldr	r7, [r3]
	b	.L4
.L11:
	.loc 1 591 0
	ldr	r0, .L26+28
	bl	R_TextureNumForName
.LVL2:
	ldr	r2, .L26+20
	ldr	r3, .L26+24
	ldr	r8, [r2]
	str	r0, [r3]
.L4:
	.loc 1 597 0
	ldr	r3, .L26+32
	.loc 1 608 0
	mov	r1, #2
	.loc 1 597 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	ip, .L26+36
	sub	r3, r3, #7
	cmp	r3, #3
	.loc 1 598 0
	ldrls	r2, .L26+40
	ldrls	r3, .L26+44
	ldrls	r2, [r2]
	ldr	r4, .L26+48
	strls	r2, [r3]
	.loc 1 600 0
	ldr	r3, .L26+52
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	.loc 1 601 0
	mvneq	r2, #0
	streqb	r2, [r3]
	.loc 1 603 0
	mov	r3, #0
	.loc 1 609 0
	mov	lr, r3
	.loc 1 603 0
	ldr	r2, .L26+56
	strb	r3, [r2]
.LVL3:
	add	r2, ip, #1136
.LVL4:
.L15:
	.loc 1 609 0
	mov	r6, #0
	.loc 1 607 0
	ldr	r5, [r4], #4
	.loc 1 609 0
	mov	r3, ip
	.loc 1 607 0
	cmp	r5, r6
	beq	.L14
	.loc 1 607 0 is_stmt 0 discriminator 1
	ldrb	r5, [ip, #-100]	@ zero_extendqisi2
	cmp	r5, #1
	.loc 1 608 0 is_stmt 1 discriminator 1
	streqb	r1, [ip, #-100]
.L14:
	.loc 1 609 0 discriminator 2
	str	lr, [r3], #4
	add	r3, r3, #4
	str	lr, [ip, #4]
	add	ip, ip, #284
	str	lr, [r3], #4
	.loc 1 605 0 discriminator 2
	cmp	ip, r2
	.loc 1 609 0 discriminator 2
	str	lr, [r3]
	.loc 1 605 0 discriminator 2
	bne	.L15
	.loc 1 624 0
	ldr	r3, .L26+60
.LBB34:
	.loc 1 619 0
	ldr	ip, .L26+64
.LBE34:
	.loc 1 624 0
	mov	r2, r6
	mov	r0, r7
	mov	r1, r8
	ldrsb	r3, [r3]
.LBB35:
	.loc 1 619 0
	str	r6, [ip]
.LBE35:
	.loc 1 624 0
	bl	P_SetupLevel
.LVL5:
	.loc 1 627 0
	mov	r4, #0
	.loc 1 625 0
	ldr	r3, .L26+68
	.loc 1 631 0
	ldr	r5, .L26+72
	.loc 1 625 0
	ldr	r3, [r3]
	cmp	r3, #0
	.loc 1 626 0
	ldreq	r2, .L26+76
	ldreq	r3, .L26+80
	ldreq	r2, [r2]
	streq	r2, [r3]
	.loc 1 627 0
	ldr	r3, .L26+84
	strb	r4, [r3]
	.loc 1 628 0
	bl	Z_CheckHeap
.LVL6:
	.loc 1 631 0
	mov	r1, r4
	mov	r0, r5
	mov	r2, #2048
	bl	memset
.LVL7:
	.loc 1 634 0
	ldr	r3, .L26+88
	.loc 1 632 0
	str	r4, [r5, #2048]
	str	r4, [r5, #2052]
	.loc 1 633 0
	str	r4, [r5, #2056]
	str	r4, [r5, #2060]
	.loc 1 634 0
	strb	r4, [r5, #2064]
	.loc 1 635 0
	str	r4, [r5, #2072]
	.loc 1 636 0
	str	r4, [r5, #2088]
	.loc 1 634 0
	str	r4, [r3]
	.loc 1 639 0
	bl	ST_Start
.LVL8:
	.loc 1 641 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 640 0
	b	HU_Start
.LVL9:
.L7:
	.cfi_restore_state
	.loc 1 582 0
	ldr	r0, .L26+92
.L22:
	.loc 1 585 0
	bl	R_TextureNumForName
.LVL10:
	ldr	r2, .L26+24
	ldr	r3, .L26+20
	str	r0, [r2]
	ldr	r8, [r3]
	.loc 1 586 0
	b	.L4
.L9:
	.loc 1 585 0
	ldr	r0, .L26+96
	b	.L22
.L10:
	.loc 1 588 0
	ldr	r0, .L26+16
	b	.L22
.L25:
	.loc 1 573 0
	ldr	r0, .L26+92
	bl	R_TextureNumForName
.LVL11:
	ldr	r3, .L26+12
	str	r0, [r4]
	ldr	r7, [r3]
	b	.L4
.L6:
	ldr	r3, .L26+20
	ldr	r8, [r3]
	b	.L4
.L5:
	.loc 1 576 0
	ldr	r0, .L26+96
	bl	R_TextureNumForName
.LVL12:
	ldr	r3, .L26+12
	str	r0, [r4]
	ldr	r7, [r3]
	b	.L4
.L27:
	.align	2
.L26:
	.word	.LC0
	.word	gamemode
	.word	skyflatnum
	.word	gameepisode
	.word	.LC1
	.word	gamemap
	.word	skytexture
	.word	.LC4
	.word	compatibility_level
	.word	players+104
	.word	gametic
	.word	basetic
	.word	playeringame
	.word	wipegamestate
	.word	gamestate
	.word	gameskill
	.word	secnodezone
	.word	demoplayback
	.word	.LANCHOR0
	.word	consoleplayer
	.word	displayplayer
	.word	gameaction
	.word	paused
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE10:
	.size	G_DoLoadLevel, .-G_DoLoadLevel
	.align	2
	.type	G_UpdateSignature, %function
G_UpdateSignature:
.LFB24:
	.loc 1 1452 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL13:
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
	.loc 1 1452 0
	mov	r4, r0
	mov	r5, r1
.LBB36:
.LBB37:
	.file 2 "c:/devl/prboom3ds/src/w_wad.h"
	.loc 2 132 0
	mov	r0, r2
.LVL14:
	mov	r1, #0
	mvn	r2, #0
.LVL15:
	bl	W_FindNumFromName
.LVL16:
.LBE37:
.LBE36:
	.loc 1 1454 0
	cmn	r0, #1
.LBB39:
.LBB38:
	.loc 2 132 0
	mov	r8, r0
.LBE38:
.LBE39:
	.loc 1 1454 0
	beq	.L29
	.loc 1 1454 0 is_stmt 0 discriminator 1
	ldr	r3, .L42
	add	r9, r0, #10
.LVL17:
	ldr	r3, [r3]
	cmp	r9, r3
	bge	.L29
.LVL18:
.L32:
.LBB40:
	.loc 1 1457 0 is_stmt 1
	mov	r0, r9
	bl	W_LumpLength
.LVL19:
	mov	r6, r0
.LVL20:
	.loc 1 1458 0
	mov	r0, r9
.LVL21:
	bl	W_CacheLumpNum
.LVL22:
	.loc 1 1459 0
	cmp	r6, #0
	beq	.L30
	add	r2, r0, r6
.LVL23:
.L31:
	.loc 1 1460 0
	mov	r7, #0
	ldrb	r6, [r0], #1	@ zero_extendqisi2
.LVL24:
	adds	r4, r4, r4
.LVL25:
	adc	r5, r5, r5
.LVL26:
	adds	r4, r4, r6
.LVL27:
	adc	r5, r5, r7
.LVL28:
	.loc 1 1459 0
	cmp	r0, r2
	bne	.L31
.L30:
	.loc 1 1461 0
	mov	r0, r9
.LVL29:
.LBE40:
	.loc 1 1463 0
	sub	r9, r9, #1
.LVL30:
.LBB41:
	.loc 1 1461 0
	bl	W_UnlockLumpNum
.LVL31:
.LBE41:
	.loc 1 1463 0
	cmp	r9, r8
	bne	.L32
.LVL32:
.L29:
	.loc 1 1465 0
	mov	r0, r4
	mov	r1, r5
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L43:
	.align	2
.L42:
	.word	numlumps
	.cfi_endproc
.LFE24:
	.size	G_UpdateSignature, .-G_UpdateSignature
	.align	2
	.type	G_Signature, %function
G_Signature:
.LFB25:
	.loc 1 1468 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 1474 0
	ldr	r5, .L63
	.loc 1 1468 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 1474 0
	ldr	r3, [r5, #2104]
	cmp	r3, #0
	bne	.L45
	.loc 1 1475 0
	mov	r2, #1
	.loc 1 1476 0
	ldr	r3, .L63+4
	.loc 1 1475 0
	str	r2, [r5, #2104]
	.loc 1 1476 0
	ldrb	r7, [r3]	@ zero_extendqisi2
	cmp	r7, #2
	beq	.L62
	.loc 1 1480 0
	cmp	r7, #3
	moveq	r7, #4
	beq	.L50
	.loc 1 1481 0
	cmp	r7, #0
	moveq	r7, #1
	movne	r7, #3
.L50:
.LVL33:
	ldr	r5, .L63+8
	add	r6, sp, #4
.L51:
.LVL34:
	mov	r4, #9
.LVL35:
.L52:
	.loc 1 1483 0 discriminator 3
	mov	r3, r4
	ldr	r1, .L63+12
	mov	r2, r7
	mov	r0, r6
	bl	sprintf
.LVL36:
	ldrd	r0, [r5]
	mov	r2, r6
	bl	G_UpdateSignature
.LVL37:
	.loc 1 1482 0 discriminator 3
	subs	r4, r4, #1
.LVL38:
	.loc 1 1483 0 discriminator 3
	strd	r0, [r5]
	.loc 1 1482 0 discriminator 3
	bne	.L52
.LVL39:
	.loc 1 1480 0
	subs	r7, r7, #1
.LVL40:
	bne	.L51
	.loc 1 1486 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL41:
.L45:
	.cfi_restore_state
	add	r5, r5, #2112
	ldrd	r0, [r5]
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L62:
	.cfi_restore_state
	.loc 1 1477 0
	ldr	r4, [r5, #2108]
	add	r6, sp, #4
	cmp	r4, #0
	movne	r4, #32
	moveq	r4, #30
.LVL42:
	add	r5, r5, #2112
.L48:
	.loc 1 1478 0 discriminator 7
	mov	r2, r4
	ldr	r1, .L63+16
	mov	r0, r6
	bl	sprintf
.LVL43:
	ldrd	r0, [r5]
	mov	r2, r6
	bl	G_UpdateSignature
.LVL44:
	.loc 1 1477 0 discriminator 7
	subs	r4, r4, #1
.LVL45:
	.loc 1 1478 0 discriminator 7
	strd	r0, [r5]
	.loc 1 1477 0 discriminator 7
	bne	.L48
	.loc 1 1486 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL46:
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.word	gamemode
	.word	.LANCHOR0+2112
	.word	.LC6
	.word	.LC5
	.cfi_endproc
.LFE25:
	.size	G_Signature, .-G_Signature
	.global	__aeabi_idivmod
	.align	2
	.type	G_CheckSpot, %function
G_CheckSpot:
.LFB16:
	.loc 1 1064 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL47:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 1069 0
	mov	r9, #284
	mul	r9, r9, r0
	ldr	r6, .L118
	ldr	ip, [r6, r9]
	cmp	ip, #0
	beq	.L113
	.loc 1 1089 0
	ldrd	r2, [ip, #120]
	mov	fp, r3
	.loc 1 1079 0
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	.loc 1 1080 0
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	.loc 1 1089 0
	orr	r10, r2, #2
	.loc 1 1079 0
	ldrb	r2, [r1]	@ zero_extendqisi2
	.loc 1 1080 0
	orr	r7, r3, r7, asl #8
	.loc 1 1079 0
	orr	r8, r2, r8, asl #8
	mov	r8, r8, asl #16
.LVL48:
	.loc 1 1080 0
	mov	r7, r7, asl #16
.LVL49:
	.loc 1 1090 0
	mov	r2, r7
	.loc 1 1089 0
	strd	r10, [ip, #120]
	mov	r4, r1
	mov	r5, r0
	.loc 1 1090 0
	mov	r1, r8
.LVL50:
	mov	r0, ip
.LVL51:
	bl	P_CheckPosition
.LVL52:
	.loc 1 1091 0
	ldr	ip, [r6, r9]
	.loc 1 1092 0
	cmp	r0, #0
	.loc 1 1091 0
	ldrd	r2, [ip, #120]
	bic	r2, r2, #2
	strd	r2, [ip, #120]
	.loc 1 1092 0
	beq	.L72
	.loc 1 1099 0
	ldr	r9, .L118+4
	ldr	r1, [r9]
	cmp	r1, #0
	ble	.L73
.LBB42:
	.loc 1 1102 0
	ldr	r10, .L118+8
	ldr	r3, [r10, #2120]
	cmp	r1, r3
	bgt	.L114
.LVL53:
.L74:
	.loc 1 1109 0
	ldr	fp, .L118+12
	ldr	r0, [fp]
	cmp	r0, r1
	bge	.L115
.L75:
	.loc 1 1111 0
	mov	r3, #284
	mul	r5, r3, r5
.LVL54:
	add	r3, r0, #1
	str	r3, [fp]
	bl	__aeabi_idivmod
.LVL55:
	ldr	r5, [r6, r5]
	ldr	r3, [r10, #2124]
	str	r5, [r3, r1, asl #2]
.L76:
.LBE42:
	.loc 1 1118 0
	mov	r1, r7
	mov	r0, r8
	bl	R_PointInSubsector
.LVL56:
.LBB43:
	.loc 1 1131 0
	ldr	r2, .L118+16
.LBE43:
	.loc 1 1118 0
	mov	r5, r0
.LVL57:
.LBB44:
	.loc 1 1131 0
	ldrb	r0, [r2]	@ zero_extendqisi2
.LVL58:
	.loc 1 1127 0
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	.loc 1 1131 0
	cmp	r0, #15
	cmpne	r0, #4
	.loc 1 1127 0
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	ldr	r1, .L118+20
	orr	r2, r3, r2, asl #8
	sxth	r2, r2
	smull	r3, r1, r1, r2
	mov	r3, r2, asr #31
	add	r1, r1, r2
	rsb	r1, r3, r1, asr #5
	mov	r1, r1, asl #29
	mov	r1, r1, asr #19
.LVL59:
	.loc 1 1128 0
	ldr	r3, .L118+24
	add	r2, r1, #2048
	ldr	r9, [r3, r2, asl #2]
.LVL60:
	.loc 1 1129 0
	ldr	r4, [r3, r1, asl #2]
.LVL61:
	.loc 1 1131 0
	bhi	.L77
	.loc 1 1132 0
	cmp	r1, #0
	beq	.L77
	bgt	.L79
	cmn	r1, #3072
	beq	.L80
	ble	.L116
	cmn	r1, #2048
	beq	.L83
	cmn	r1, #1024
	bne	.L78
	.loc 1 1143 0
	ldr	r2, .L118+28
	.loc 1 1142 0
	add	r3, r3, #4096
	ldr	r9, [r3]
.LVL62:
	.loc 1 1143 0
	ldr	r4, [r2]
.LVL63:
.L77:
	.loc 1 1153 0
	ldr	r3, [r5]
	add	r0, r9, r9, asl #2
	add	r1, r4, r4, asl #2
	ldr	r2, [r3, #12]
	add	r0, r8, r0, asl #2
	mov	r3, #39
	add	r1, r7, r1, asl #2
	bl	P_SpawnMobj
.LVL64:
	.loc 1 1155 0
	mov	r2, #284
	ldr	r3, .L118+32
	ldr	r3, [r3]
	mla	r6, r2, r3, r6
	ldr	r3, [r6, #16]
	cmp	r3, #1
	beq	.L112
	.loc 1 1156 0
	mov	r1, #35
	bl	S_StartSound
.LVL65:
.L112:
.LBE44:
	.loc 1 1159 0
	mov	r0, #1
	.loc 1 1160 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL66:
.L113:
	.loc 1 1072 0 discriminator 1
	cmp	r0, #0
	ble	.L112
	.loc 1 1072 0 is_stmt 0
	mov	r3, ip
	mov	r2, ip
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r1]	@ zero_extendqisi2
	orr	r5, ip, r5, asl #8
	mov	r5, r5, asl #16
	b	.L70
.LVL67:
.L69:
	.loc 1 1072 0 discriminator 2
	cmp	r2, r0
	beq	.L112
.LVL68:
.L70:
	.loc 1 1073 0 is_stmt 1
	ldr	ip, [r6, r3]
	.loc 1 1072 0
	add	r2, r2, #1
.LVL69:
	.loc 1 1073 0
	ldr	lr, [ip, #24]
	add	r3, r3, #284
	cmp	lr, r5
	bne	.L69
	.loc 1 1074 0
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	ldr	r4, [ip, #28]
	orr	ip, lr, r7, asl #8
	cmp	r4, ip, asl #16
	bne	.L69
.LVL70:
.L72:
	.loc 1 1075 0
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL71:
.L73:
	.loc 1 1114 0
	bne	.L76
	.loc 1 1115 0
	mov	r0, ip
.LVL72:
	bl	P_RemoveMobj
.LVL73:
	b	.L76
.L115:
.LBB45:
	.loc 1 1110 0
	bl	__aeabi_idivmod
.LVL74:
	ldr	r3, [r10, #2124]
	ldr	r0, [r3, r1, asl #2]
	bl	P_RemoveMobj
.LVL75:
	ldr	r1, [r9]
	ldr	r0, [fp]
	b	.L75
.LVL76:
.L114:
	.loc 1 1104 0
	mov	r1, r1, asl #2
	mov	r2, #1
	mov	r3, #0
	ldr	r0, [r10, #2124]
.LVL77:
	bl	Z_Realloc
.LVL78:
	mov	ip, r0
	.loc 1 1105 0
	ldr	r2, [r10, #2120]
	.loc 1 1106 0
	ldr	r3, [r9]
	.loc 1 1105 0
	add	r0, r0, r2, asl #2
	.loc 1 1106 0
	rsb	r2, r2, r3
	.loc 1 1105 0
	mov	r1, #0
	mov	r2, r2, asl #2
	.loc 1 1104 0
	str	ip, [r10, #2124]
	.loc 1 1105 0
	bl	memset
.LVL79:
	.loc 1 1107 0
	ldr	r1, [r9]
	str	r1, [r10, #2120]
	b	.L74
.LVL80:
.L79:
.LBE45:
.LBB46:
	.loc 1 1132 0
	cmp	r1, #2048
	beq	.L77
	ble	.L117
	cmp	r1, #3072
	beq	.L77
.L78:
	.loc 1 1150 0
	ldr	r0, .L118+36
	bl	I_Error
.LVL81:
	b	.L77
.LVL82:
.L83:
	.loc 1 1140 0
	ldr	r2, .L118+40
	.loc 1 1139 0
	ldr	r9, [r3]
.LVL83:
	.loc 1 1140 0
	ldr	r4, [r2]
.LVL84:
	.loc 1 1141 0
	b	.L77
.L116:
	.loc 1 1132 0
	cmn	r1, #4096
	bne	.L78
	.loc 1 1133 0
	ldr	r3, .L118+44
	add	r2, r3, #8192
	ldr	r9, [r2]
.LVL85:
	.loc 1 1134 0
	ldr	r4, [r3]
.LVL86:
	.loc 1 1135 0
	b	.L77
.L80:
	.loc 1 1136 0
	ldr	r3, .L118+28
	.loc 1 1137 0
	sub	r2, r3, #8192
	ldr	r4, [r2]
.LVL87:
	.loc 1 1136 0
	ldr	r9, [r3]
.LVL88:
	.loc 1 1138 0
	b	.L77
.L117:
	.loc 1 1132 0
	cmp	r1, #1024
	bne	.L78
	b	.L77
.L119:
	.align	2
.L118:
	.word	players
	.word	bodyquesize
	.word	.LANCHOR0
	.word	bodyqueslot
	.word	compatibility_level
	.word	-1240768329
	.word	finesine
	.word	finetangent+12288
	.word	consoleplayer
	.word	.LC7
	.word	finetangent+8192
	.word	finetangent
.LBE46:
	.cfi_endproc
.LFE16:
	.size	G_CheckSpot, .-G_CheckSpot
	.align	2
	.type	G_LoadGameErr, %function
G_LoadGameErr:
.LFB28:
	.loc 1 1529 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL89:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 1529 0
	mov	r5, r0
	.loc 1 1530 0
	ldr	r4, .L126
	ldr	r0, [r4, #2128]
.LVL90:
	bl	Z_Free
.LVL91:
	.loc 1 1531 0
	mov	r0, r5
	bl	M_ForcedLoadGame
.LVL92:
	.loc 1 1532 0
	ldr	r3, [r4, #2132]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	.loc 1 1534 0
	bl	D_StartTitle
.LVL93:
	.loc 1 1535 0
	mov	r2, #3
	ldr	r3, .L126+4
	strb	r2, [r3]
	ldmfd	sp!, {r3, r4, r5, pc}
.L127:
	.align	2
.L126:
	.word	.LANCHOR0
	.word	gamestate
	.cfi_endproc
.LFE28:
	.size	G_LoadGameErr, .-G_LoadGameErr
	.align	2
	.type	CheckForOverrun.part.0, %function
CheckForOverrun.part.0:
.LFB54:
	.loc 1 2663 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL94:
	.loc 1 2668 0
	cmp	r0, #0
	bne	.L133
	.loc 1 2671 0
	mov	r0, #1
.LVL95:
	bx	lr
.LVL96:
.L133:
	.loc 1 2663 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 2669 0
	ldr	r0, .L134
.LVL97:
	bl	I_Error
.LVL98:
	.loc 1 2673 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
.L135:
	.align	2
.L134:
	.word	.LC8
	.cfi_endproc
.LFE54:
	.size	CheckForOverrun.part.0, .-CheckForOverrun.part.0
	.align	2
	.type	G_ChangedPlayerColour.part.1, %function
G_ChangedPlayerColour.part.1:
.LFB55:
	.loc 1 991 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL99:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 997 0
	ldr	r3, .L147
	.loc 1 1003 0
	ldr	r4, .L147+4
	.loc 1 997 0
	str	r1, [r3, r0, asl #2]
	.loc 1 1000 0
	bl	R_InitTranslationTables
.LVL100:
	mov	r2, #0
	.loc 1 1002 0
	mov	r3, r2
	ldr	r1, .L147+8
	.loc 1 1003 0
	ldr	r5, .L147+12
	ldrb	ip, [r1]	@ zero_extendqisi2
	.loc 1 1005 0
	ldr	r6, .L147+16
.LVL101:
.L138:
	.loc 1 1003 0
	cmp	ip, #0
	bne	.L137
	ldr	r1, [r4, r3, asl #2]
	cmp	r1, #0
	beq	.L137
	ldr	lr, [r2, r5]
	cmp	lr, #0
	beq	.L137
	.loc 1 1004 0
	ldrd	r0, [lr, #120]
	.loc 1 1005 0
	ldrb	r7, [r3, r6]	@ zero_extendqisi2
	.loc 1 1004 0
	bic	r0, r0, #201326592
	.loc 1 1005 0
	mov	r7, r7, asl #26
	orr	r0, r0, r7
	orr	r1, r1, r7, asr #31
	strd	r0, [lr, #120]
.L137:
	.loc 1 1002 0
	add	r3, r3, #1
.LVL102:
	cmp	r3, #4
	add	r2, r2, #284
	bne	.L138
	.loc 1 1008 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L148:
	.align	2
.L147:
	.word	mapcolor_plyr
	.word	playeringame
	.word	gamestate
	.word	players
	.word	playernumtotrans
	.cfi_endproc
.LFE55:
	.size	G_ChangedPlayerColour.part.1, .-G_ChangedPlayerColour.part.1
	.align	2
	.global	G_BuildTiccmd
	.type	G_BuildTiccmd, %function
G_BuildTiccmd:
.LFB7:
	.loc 1 291 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL103:
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
	mov	r5, r0
	.loc 1 300 0
	mov	r0, #0
.LVL104:
	mov	r3, r5
	strb	r0, [r3], #1
	add	r3, r3, #1
	strb	r0, [r5, #1]
	.loc 1 301 0
	ldr	r2, .L319
	.loc 1 300 0
	strb	r0, [r3], #1
	strb	r0, [r3], #1
	.loc 1 301 0
	ldr	r2, [r2]
	ldr	r1, .L319+4
	ldr	r9, .L319+8
	smull	ip, r1, r1, r2
	mov	ip, r2, asr #31
	.loc 1 300 0
	strb	r0, [r3], #1
	.loc 1 301 0
	rsb	r1, ip, r1, asr #1
	.loc 1 306 0
	ldr	lr, .L319+12
	.loc 1 301 0
	ldr	ip, [r9]
	.loc 1 300 0
	strb	r0, [r3], #1
	.loc 1 301 0
	add	r1, r1, r1, asl #1
	.loc 1 300 0
	strb	r0, [r3], #1
	.loc 1 301 0
	sub	r1, r2, r1, asl #2
	ldr	r4, .L319+16
	add	r2, ip, ip, asl #1
	.loc 1 306 0
	ldr	ip, [lr]
	.loc 1 300 0
	strb	r0, [r3]
	.loc 1 301 0
	add	r2, r1, r2, asl #2
	ldr	r3, .L319+20
	.loc 1 306 0
	ldr	r1, [r4, ip, asl #2]
	.loc 1 301 0
	mov	r2, r2, asl #1
	ldrh	r3, [r3, r2]
	.loc 1 306 0
	cmp	r1, r0
	.loc 1 291 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 301 0
	strh	r3, [r5, #4]	@ movhi
.LVL105:
	.loc 1 306 0
	bne	.L150
	.loc 1 306 0 is_stmt 0 discriminator 2
	ldr	r3, .L319+24
	ldr	r3, [r3]
	add	r3, r4, r3, asl #2
	ldr	r3, [r3, #2088]
	cmp	r3, r0
	beq	.L151
.L150:
	.loc 1 306 0 discriminator 3
	ldr	r7, [r4, #2232]
	clz	r7, r7
	mov	r7, r7, lsr #5
.L152:
.LVL106:
	.loc 1 312 0 is_stmt 1 discriminator 6
	ldr	r2, [r4, #2052]
	ldr	r0, .L319+16
	cmp	r2, #0
	ldr	r3, .L319+28
	bne	.L155
	.loc 1 313 0 discriminator 1
	ldr	r1, [r3]
	.loc 1 312 0 discriminator 1
	ldr	ip, [r0, r1, asl #2]
	cmp	ip, #0
	beq	.L312
.L155:
	ldr	r0, .L319+32
	ldr	r1, [r3]
	ldr	ip, [r0]
.L154:
	.loc 1 314 0
	ldr	r0, .L319+36
	ldr	r3, [r4, #2236]
	ldr	r0, [r0]
	add	r3, r3, r0
	.loc 1 319 0
	cmp	r3, #5
	.loc 1 314 0
	str	r3, [r4, #2236]
	.loc 1 319 0
	movgt	r3, r7
	movle	r3, #2
.L157:
.LVL107:
	.loc 1 325 0
	ldr	r0, .L319+40
	ldr	r6, .L319+16
	ldr	r0, [r0]
	.loc 1 347 0
	ldr	fp, .L319+44
	.loc 1 325 0
	ldr	lr, [r4, r0, asl #2]
	cmp	lr, #0
	.loc 1 328 0
	movne	r8, #0
	.loc 1 327 0
	ldrneh	lr, [r5, #2]
	subne	lr, lr, #32768
	strneh	lr, [r5, #2]	@ movhi
	.loc 1 328 0
	strne	r8, [r6, r0, asl #2]
	.loc 1 346 0
	ldr	r1, [r4, r1, asl #2]
	cmp	r1, #0
	.loc 1 347 0
	ldrne	r0, [fp, r3, asl #2]
	ldrneh	r1, [r5, #2]
	rsbne	r1, r0, r1
	strneh	r1, [r5, #2]	@ movhi
	.loc 1 348 0
	ldr	r1, [r4, ip, asl #2]
	cmp	r1, #0
	.loc 1 349 0
	ldrne	r1, [fp, r3, asl #2]
	ldrneh	r0, [r5, #2]
	addne	r1, r1, r0
	strneh	r1, [r5, #2]	@ movhi
	.loc 1 350 0
	cmp	r2, #0
	ble	.L161
	.loc 1 351 0
	ldr	r2, [fp, r3, asl #2]
	ldrh	r3, [r5, #2]
.LVL108:
	rsb	r3, r2, r3
	strh	r3, [r5, #2]	@ movhi
.L162:
	.loc 1 356 0
	ldr	r3, .L319+48
	ldr	r3, [r3]
	ldr	r3, [r4, r3, asl #2]
	cmp	r3, #0
	.loc 1 357 0
	addne	r3, fp, r7, asl #2
	ldrne	r8, [r3, #12]
.LVL109:
	.loc 1 308 0
	moveq	r8, r3
.LVL110:
	.loc 1 358 0
	ldr	r3, .L319+52
	ldr	r3, [r3]
	ldr	r3, [r4, r3, asl #2]
	cmp	r3, #0
	.loc 1 359 0
	addne	r3, fp, r7, asl #2
	ldrne	r3, [r3, #12]
	rsbne	r8, r3, r8
.LVL111:
	.loc 1 360 0
	ldr	r3, [r4, #2048]
	cmp	r3, #0
	blt	.L313
	.loc 1 363 0
	addne	r3, fp, r7, asl #2
	ldrne	r3, [r3, #12]
	rsbne	r8, r3, r8
.LVL112:
.L166:
	.loc 1 364 0
	ldr	r3, .L319+56
	ldr	r3, [r3]
	ldr	r10, [r4, r3, asl #2]
	cmp	r10, #0
	.loc 1 365 0
	addne	r3, fp, r7, asl #2
	ldrne	r10, [r3, #20]
.LVL113:
	.loc 1 366 0
	ldr	r3, .L319+60
	ldr	r3, [r3]
	ldr	r3, [r4, r3, asl #2]
	cmp	r3, #0
	.loc 1 367 0
	addne	r3, fp, r7, asl #2
	ldrne	r3, [r3, #20]
	rsbne	r10, r3, r10
.LVL114:
	.loc 1 370 0
	bl	HU_dequeueChatChar
.LVL115:
	.loc 1 372 0
	ldr	r3, .L319+64
	.loc 1 370 0
	strb	r0, [r5, #6]
	.loc 1 372 0
	ldr	r2, [r3]
	ldr	r3, .L319+16
	ldr	r2, [r4, r2, asl #2]
	cmp	r2, #0
	bne	.L169
	.loc 1 372 0 is_stmt 0 discriminator 1
	ldr	r2, .L319+68
	ldr	r2, [r2]
	add	r2, r3, r2, asl #2
	ldr	r2, [r2, #2072]
	cmp	r2, #0
	beq	.L314
.L169:
	.loc 1 374 0 is_stmt 1
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	orr	r3, r3, #1
	strb	r3, [r5, #7]
.L170:
	.loc 1 376 0
	ldr	r2, .L319+72
	ldr	r3, .L319+16
	ldr	r2, [r2]
	ldr	r2, [r4, r2, asl #2]
	cmp	r2, #0
	bne	.L171
	.loc 1 376 0 is_stmt 0 discriminator 1
	ldr	r2, .L319+76
	ldr	r2, [r2]
	add	r2, r3, r2, asl #2
	ldr	r2, [r2, #2072]
	cmp	r2, #0
	beq	.L315
.L171:
	.loc 1 381 0 is_stmt 1
	mov	r2, #0
	.loc 1 379 0
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	.loc 1 381 0
	str	r2, [r4, #2240]
	.loc 1 379 0
	orr	r3, r3, #2
	strb	r3, [r5, #7]
.L172:
	.loc 1 395 0
	ldr	r6, .L319+80
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L176
	.loc 1 395 0 is_stmt 0 discriminator 1
	mov	r0, #284
	ldr	r3, [r9]
	ldr	r2, .L319+84
	mla	r0, r0, r3, r2
	ldr	r3, [r0, #192]
	cmp	r3, #0
	bne	.L316
.L176:
	.loc 1 396 0 is_stmt 1
	ldr	r3, .L319+88
	ldr	r2, .L319+16
	ldr	r3, [r3]
	ldr	r1, [r4, r3, asl #2]
	cmp	r1, #0
	beq	.L306
	ldr	r2, .L319+84
.L174:
	.loc 1 397 0
	mov	r0, #284
	ldr	r3, [r9]
	mla	r0, r0, r3, r2
	bl	P_SwitchWeapon
.LVL116:
	.loc 1 455 0
	cmp	r0, #10
	beq	.L188
.LVL117:
.L217:
	mov	r1, r0, asl #3
	uxtb	r1, r1
.LVL118:
.L216:
	.loc 1 457 0
	ldrb	r0, [r5, #7]	@ zero_extendqisi2
	orr	r0, r0, #4
	.loc 1 458 0
	orr	r1, r1, r0
	strb	r1, [r5, #7]
.L188:
	.loc 1 462 0
	ldr	r3, .L319+92
	ldr	r3, [r3]
	add	r3, r4, r3, asl #2
	ldr	r2, [r3, #2072]
	cmp	r2, #0
	.loc 1 463 0
	addne	r3, fp, r7, asl #2
	ldrne	r3, [r3, #12]
	addne	r8, r8, r3
.LVL119:
	.loc 1 464 0
	ldr	r3, .L319+96
	ldr	r3, [r3]
	add	r3, r4, r3, asl #2
	ldr	r3, [r3, #2072]
	cmp	r3, #0
	.loc 1 465 0
	addne	r7, fp, r7, asl #2
.LVL120:
	ldrne	r3, [r7, #12]
	rsbne	r8, r3, r8
.LVL121:
	.loc 1 468 0
	ldr	r3, .L319+100
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L191
	.loc 1 468 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #2244]
	.loc 1 469 0 is_stmt 1 discriminator 1
	ldr	r0, .L319+16
	.loc 1 468 0 discriminator 1
	cmp	r2, r3
	beq	.L191
	.loc 1 469 0
	ldr	r3, [r0, #2248]
	cmp	r3, #1
	ble	.L192
	.loc 1 473 0
	ldr	r3, [r0, #2240]
	.loc 1 472 0
	cmp	r2, #0
	.loc 1 473 0
	addne	r3, r3, #1
	strne	r3, [r0, #2240]
	.loc 1 474 0
	cmp	r3, #2
	.loc 1 480 0
	movne	r3, #0
	.loc 1 471 0
	str	r2, [r0, #2244]
	.loc 1 477 0
	moveq	r2, #0
	.loc 1 476 0
	ldreqb	r3, [r5, #7]	@ zero_extendqisi2
	.loc 1 480 0
	strne	r3, [r4, #2248]
	.loc 1 476 0
	orreq	r3, r3, #2
	streqb	r3, [r5, #7]
	.loc 1 491 0
	ldr	r3, .L319+104
	.loc 1 477 0
	streq	r2, [r4, #2240]
	.loc 1 491 0
	ldr	r3, [r3]
	add	r3, r4, r3, asl #2
	ldr	r3, [r3, #2072]
	cmp	r3, #0
	bne	.L243
.L221:
	.loc 1 491 0 is_stmt 0 discriminator 2
	ldr	r3, .L319+108
	ldr	r3, [r3]
	add	r3, r4, r3, asl #2
	ldr	r2, [r3, #2088]
	adds	r2, r2, #0
	movne	r2, #1
.L198:
.LVL122:
	.loc 1 492 0 is_stmt 1 discriminator 6
	cmp	r1, #0
	beq	.L199
.LVL123:
.L220:
	.loc 1 492 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #2252]
	ldr	r1, .L319+16
	cmp	r2, r3
	beq	.L199
	.loc 1 492 0 discriminator 2
	ldr	r3, [r1, #2256]
	cmp	r3, #1
	ble	.L200
	.loc 1 496 0 is_stmt 1
	ldr	r3, [r1, #2260]
	.loc 1 495 0
	cmp	r2, #0
	.loc 1 496 0
	addne	r3, r3, #1
	strne	r3, [r1, #2260]
	.loc 1 497 0
	cmp	r3, #2
	.loc 1 494 0
	str	r2, [r1, #2252]
	.loc 1 503 0
	movne	r3, #0
	.loc 1 500 0
	moveq	r2, #0
.LVL124:
	.loc 1 499 0
	ldreqb	r3, [r5, #7]	@ zero_extendqisi2
	.loc 1 500 0
	streq	r2, [r4, #2260]
	.loc 1 499 0
	orreq	r3, r3, #2
	streqb	r3, [r5, #7]
	.loc 1 503 0
	strne	r3, [r4, #2256]
.LVL125:
.L204:
	.loc 1 517 0
	mov	ip, #0
	.loc 1 515 0
	ldrh	r3, [r5, #2]
	.loc 1 511 0
	ldr	r2, [r4, #2056]
	.loc 1 515 0
	ldr	r0, [r4, #2060]
	.loc 1 519 0
	ldr	r1, [fp, #16]
	.loc 1 515 0
	rsb	r0, r0, r3
	.loc 1 511 0
	add	r3, r8, r2
.LVL126:
	.loc 1 519 0
	cmp	r3, r1
	.loc 1 515 0
	uxth	r2, r0
	strh	r2, [r5, #2]	@ movhi
	.loc 1 517 0
	str	ip, [r4, #2056]
	str	ip, [r4, #2060]
	movgt	r3, r1
.LVL127:
	.loc 1 519 0
	bgt	.L205
	.loc 1 521 0
	rsb	r0, r1, #0
	cmp	r3, r0
	movlt	r3, r0
.L205:
.LVL128:
	.loc 1 523 0
	cmp	r10, r1
	bgt	.L206
	.loc 1 525 0
	rsb	r1, r1, #0
	cmp	r10, r1
	movge	r1, r10
.L206:
.LVL129:
.LBB52:
.LBB53:
	.loc 1 276 0
	ands	r3, r3, #255
.LVL130:
	beq	.L207
	ldrb	r0, [r6]	@ zero_extendqisi2
	cmp	r0, #6
	bhi	.L207
	ldr	r0, .L319+112
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.L207
	.loc 1 277 0
	ldr	r0, [r4, #2264]
	add	r0, r0, #1
	tst	r0, #31
	str	r0, [r4, #2264]
	bne	.L207
	.loc 1 278 0
	orr	r3, r3, #1
.LVL131:
	sxtb	r0, r3
	cmp	r0, #2
.LVL132:
	subgt	r3, r3, #2
.LVL133:
	uxtb	r3, r3
.LVL134:
.L207:
.LBE53:
.LBE52:
	.loc 1 528 0
	ldrb	ip, [r5]	@ zero_extendqisi2
	.loc 1 529 0
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	.loc 1 528 0
	add	r3, r3, ip
	.loc 1 529 0
	add	r1, r1, r0
.LVL135:
.LBB54:
.LBB55:
	.loc 1 284 0
	cmp	r2, #0
.LBE55:
.LBE54:
	.loc 1 528 0
	strb	r3, [r5]
	.loc 1 529 0
	strb	r1, [r5, #1]
.LVL136:
.LBB58:
.LBB56:
	.loc 1 284 0
	beq	.L212
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L212
	ldr	r3, .L319+112
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L317
.LVL137:
.L212:
.LBE56:
.LBE58:
	.loc 1 533 0
	ldrb	r3, [r4, #2064]	@ zero_extendqisi2
	.loc 1 530 0
	strh	r2, [r5, #2]	@ movhi
	.loc 1 533 0
	tst	r3, #128
	.loc 1 535 0
	movne	r1, #0
	.loc 1 533 0
	ldr	r2, .L319+16
	.loc 1 534 0
	strneb	r3, [r5, #7]
	.loc 1 535 0
	strneb	r1, [r2, #2064]
	.loc 1 537 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL138:
.L306:
	.cfi_restore_state
	.loc 1 401 0
	ldr	r3, .L319+116
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	bne	.L178
	.loc 1 402 0
	ldr	r3, .L319+120
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	bne	.L225
	.loc 1 403 0
	ldr	r3, .L319+124
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	bne	.L180
	.loc 1 404 0
	ldr	r3, .L319+128
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	bne	.L226
	.loc 1 405 0
	ldr	r3, .L319+132
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	bne	.L227
	.loc 1 406 0
	ldr	r3, .L319+136
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	beq	.L181
	.loc 1 406 0 is_stmt 0 discriminator 1
	ldr	r3, .L319+140
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r0, #5
	bne	.L217
.L182:
	.loc 1 408 0 is_stmt 1
	ldr	r3, .L319+144
	ldr	r2, .L319+16
	ldr	r3, [r3]
	ldr	r3, [r4, r3, asl #2]
	cmp	r3, #0
	bne	.L229
	.loc 1 409 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L188
	.loc 1 409 0 is_stmt 0 discriminator 1
	ldr	r3, .L319+148
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	beq	.L188
	.loc 1 409 0 discriminator 3
	ldr	r3, .L319+140
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L188
	.loc 1 409 0
	mov	r0, #8
.LVL139:
	b	.L217
.LVL140:
.L312:
	.loc 1 313 0 is_stmt 1
	ldr	r3, .L319+32
	ldr	ip, [r3]
	ldr	r3, [r0, ip, asl #2]
	cmp	r3, #0
	.loc 1 319 0
	moveq	r3, #2
	.loc 1 316 0
	streq	r2, [r0, #2236]
	.loc 1 313 0
	beq	.L157
	b	.L154
.LVL141:
.L315:
	.loc 1 377 0 discriminator 2
	ldr	r2, .L319+152
	ldr	r2, [r2]
	add	r3, r3, r2, asl #2
	.loc 1 376 0 discriminator 2
	ldr	r3, [r3, #2088]
	cmp	r3, #0
	beq	.L172
	b	.L171
.L314:
	.loc 1 373 0 discriminator 2
	ldr	r2, .L319+156
	ldr	r2, [r2]
	add	r3, r3, r2, asl #2
	.loc 1 372 0 discriminator 2
	ldr	r3, [r3, #2088]
	cmp	r3, #0
	beq	.L170
	b	.L169
.LVL142:
.L151:
	.loc 1 306 0 discriminator 4
	ldr	r7, [r4, #2232]
	b	.L152
.LVL143:
.L199:
	ldr	r3, [r4, #2256]
.L200:
	.loc 1 506 0
	ldr	r2, .L319+36
.LVL144:
	ldr	r1, .L319+16
	ldr	r2, [r2]
	add	r3, r3, r2
	cmp	r3, #20
	str	r3, [r4, #2256]
	.loc 1 508 0
	movgt	r3, #0
	strgt	r3, [r1, #2260]
	.loc 1 509 0
	strgt	r3, [r1, #2252]
	b	.L204
.L191:
	ldr	r3, [r4, #2248]
.L192:
	.loc 1 483 0
	ldr	r2, .L319+36
	ldr	r0, .L319+16
	ldr	r2, [r2]
	add	r3, r3, r2
	cmp	r3, #20
	str	r3, [r4, #2248]
	.loc 1 485 0
	movgt	r3, #0
	strgt	r3, [r0, #2240]
	.loc 1 486 0
	strgt	r3, [r0, #2244]
	.loc 1 491 0
	ldr	r3, .L319+104
	ldr	r3, [r3]
	add	r3, r4, r3, asl #2
	ldr	r3, [r3, #2072]
	cmp	r3, #0
	movne	r2, #1
	bne	.L198
	b	.L221
.LVL145:
.L313:
	.loc 1 361 0
	add	r3, fp, r7, asl #2
	ldr	r3, [r3, #12]
	add	r8, r8, r3
.LVL146:
	b	.L166
.LVL147:
.L161:
	.loc 1 353 0
	ldrne	r3, [fp, r3, asl #2]
.LVL148:
	ldrneh	r2, [r5, #2]
	addne	r3, r3, r2
	strneh	r3, [r5, #2]	@ movhi
	b	.L162
.LVL149:
.L178:
	.loc 1 423 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L216
.LBB59:
	.loc 1 432 0
	mov	r0, #284
	.loc 1 425 0
	ldr	r3, [r9]
.LVL150:
	.loc 1 432 0
	ldr	r2, .L319+84
	mla	r2, r0, r3, r2
.LVL151:
	ldr	r3, [r2, #152]
	cmp	r3, #0
	bne	.L214
.LVL152:
.L184:
	.loc 1 437 0
	mov	r0, #0
	b	.L217
.LVL153:
.L316:
	str	r2, [sp, #4]
.LBE59:
	.loc 1 396 0 discriminator 2
	bl	P_CheckAmmo
.LVL154:
	.loc 1 395 0 discriminator 2
	cmp	r0, #0
	ldr	r2, [sp, #4]
	bne	.L176
	b	.L174
.LVL155:
.L243:
	.loc 1 491 0
	mov	r2, #1
	b	.L220
.LVL156:
.L317:
.LBB60:
.LBB57:
	.loc 1 285 0
	orr	r2, r2, #1
.LVL157:
	sxth	r3, r2
	cmp	r3, #2
	subgt	r2, r2, #2
.LVL158:
	uxthgt	r2, r2
.LVL159:
	b	.L212
.LVL160:
.L225:
.LBE57:
.LBE60:
	.loc 1 402 0
	mov	r0, #1
	b	.L217
.L180:
.LVL161:
	.loc 1 423 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #6
	.loc 1 403 0
	movls	r0, #2
	.loc 1 423 0
	bls	.L217
.LBB61:
	.loc 1 444 0
	ldr	r3, .L319+140
	.loc 1 425 0
	ldr	r2, [r9]
.LVL162:
	.loc 1 444 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L318
.LVL163:
.L186:
	mov	r1, #16
	b	.L216
.LVL164:
.L226:
.LBE61:
	.loc 1 404 0
	mov	r0, #3
	b	.L217
.LVL165:
.L214:
.LBB62:
	.loc 1 433 0 discriminator 2
	ldrb	r3, [r2, #120]	@ zero_extendqisi2
	.loc 1 432 0 discriminator 2
	cmp	r3, #7
	beq	.L184
	.loc 1 433 0
	cmp	r3, #0
	beq	.L229
	.loc 1 434 0
	ldr	r3, [r2, #56]
	.loc 1 437 0
	mov	r0, #7
	.loc 1 434 0
	cmp	r3, #0
	beq	.L217
	.loc 1 436 0
	bl	P_WeaponPreferred
.LVL166:
	.loc 1 435 0
	cmp	r0, #0
	beq	.L184
.LVL167:
.L229:
.LBE62:
	.loc 1 408 0
	mov	r0, #7
	b	.L217
.LVL168:
.L318:
.LBB63:
	.loc 1 445 0 discriminator 2
	mov	r1, #284
	ldr	r3, .L319+84
	mla	r3, r1, r2, r3
	.loc 1 444 0 discriminator 2
	ldr	r2, [r3, #156]
.LVL169:
	cmp	r2, #0
	beq	.L186
	.loc 1 445 0
	ldr	r2, [r3, #132]
	cmp	r2, #0
	beq	.L238
	.loc 1 447 0
	ldrb	r3, [r3, #120]	@ zero_extendqisi2
	.loc 1 446 0
	cmp	r3, #2
	beq	.L238
	.loc 1 447 0
	cmp	r3, #8
	beq	.L186
	.loc 1 449 0
	mov	r0, #8
	mov	r1, #2
	bl	P_WeaponPreferred
.LVL170:
	.loc 1 448 0
	cmp	r0, #0
	beq	.L186
.L238:
	mov	r1, #64
.LVL171:
	b	.L216
.L227:
.LBE63:
	.loc 1 405 0
	mov	r0, #4
	b	.L217
.L181:
	.loc 1 407 0
	ldr	r3, .L319+160
	ldr	r3, [r3]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	beq	.L182
	.loc 1 407 0 is_stmt 0 discriminator 1
	ldr	r3, .L319+140
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L182
	.loc 1 407 0
	mov	r0, #6
	b	.L217
.L320:
	.align	2
.L319:
	.word	maketic
	.word	715827883
	.word	consoleplayer
	.word	key_speed
	.word	.LANCHOR0
	.word	.LANCHOR0+2136
	.word	joybspeed
	.word	key_right
	.word	key_left
	.word	ticdup
	.word	key_reverse
	.word	.LANCHOR1
	.word	key_up
	.word	key_down
	.word	key_straferight
	.word	key_strafeleft
	.word	key_fire
	.word	mousebfire
	.word	key_use
	.word	mousebuse
	.word	compatibility_level
	.word	players
	.word	key_weapontoggle
	.word	mousebforward
	.word	mousebbackward
	.word	mouse_double_click_use
	.word	mousebstrafe
	.word	joybstrafe
	.word	longtics
	.word	key_weapon1
	.word	key_weapon2
	.word	key_weapon3
	.word	key_weapon4
	.word	key_weapon5
	.word	key_weapon6
	.word	gamemode
	.word	key_weapon8
	.word	key_weapon9
	.word	joybuse
	.word	joybfire
	.word	key_weapon7
	.cfi_endproc
.LFE7:
	.size	G_BuildTiccmd, .-G_BuildTiccmd
	.align	2
	.global	G_RestartLevel
	.type	G_RestartLevel, %function
G_RestartLevel:
.LFB8:
	.loc 1 544 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 545 0
	mvn	r2, #124
	ldr	r3, .L322
	strb	r2, [r3, #2064]
	bx	lr
.L323:
	.align	2
.L322:
	.word	.LANCHOR0
	.cfi_endproc
.LFE8:
	.size	G_RestartLevel, .-G_RestartLevel
	.align	2
	.global	G_Responder
	.type	G_Responder, %function
G_Responder:
.LFB11:
	.loc 1 650 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL172:
	.loc 1 656 0
	ldr	r2, .L384
	.loc 1 650 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 656 0
	ldr	r2, [r2]
	ldr	r3, [r0, #4]
	.loc 1 650 0
	mov	r4, r0
	.loc 1 656 0
	cmp	r3, r2
	beq	.L377
.L325:
	.loc 1 685 0
	ldr	r2, .L384+4
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L378
.L336:
	ldr	r3, .L384+8
	ldrb	r2, [r3]	@ zero_extendqisi2
.L339:
	.loc 1 710 0
	cmp	r2, #2
	beq	.L346
.LVL173:
.L352:
	.loc 1 713 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L356
.L348:
	.word	.L347
	.word	.L349
	.word	.L350
	.word	.L351
.LVL174:
.L378:
	.loc 1 685 0 discriminator 1
	ldr	r2, .L384+12
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L337
.L354:
	.loc 1 685 0 is_stmt 0 discriminator 2
	ldr	r2, .L384+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #3
	bne	.L339
	.loc 1 688 0 is_stmt 1
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L379
.L342:
	.loc 1 703 0
	ldr	r1, .L384+16
	ldr	r1, [r1]
	.loc 1 702 0
	tst	r1, #2
	bne	.L356
	.loc 1 703 0
	ldr	r1, .L384+20
	ldrb	r1, [r1]	@ zero_extendqisi2
	tst	r1, #1
	bne	.L356
	.loc 1 703 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	beq	.L344
	.loc 1 704 0 is_stmt 1
	cmp	r2, #2
	beq	.L380
	.loc 1 706 0
	sub	r2, r2, #3
	clz	r2, r2
	cmp	r3, #0
	mov	r2, r2, lsr #5
	moveq	r2, #0
	cmp	r2, #0
	beq	.L356
.L344:
	.loc 1 707 0
	bl	M_StartControlPanel
.LVL175:
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL176:
.L337:
	.loc 1 688 0
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L340
	.loc 1 688 0 is_stmt 0 discriminator 1
	ldr	r1, .L384+24
	ldr	r1, [r1]
	cmp	r3, r1
	beq	.L355
.L340:
	.loc 1 702 0 is_stmt 1
	ldr	r1, .L384+8
	.loc 1 707 0
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #3
	beq	.L342
.LVL177:
.L356:
	.loc 1 757 0
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL178:
.L377:
	.loc 1 656 0 discriminator 1
	ldr	r2, .L384+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L325
	.loc 1 656 0 is_stmt 0 discriminator 2
	ldr	r2, .L384+12
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L326
	.loc 1 656 0 discriminator 4
	ldr	r2, .L384+32
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L327
.L326:
	.loc 1 657 0 is_stmt 1 discriminator 5
	ldr	r2, .L384+8
	.loc 1 656 0 discriminator 5
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L325
	.loc 1 659 0
	ldrb	r0, [r4]	@ zero_extendqisi2
.LVL179:
	cmp	r0, #1
	beq	.L381
	.loc 1 661 0
	cmp	r0, #0
	bne	.L375
	.loc 1 661 0 is_stmt 0 discriminator 1
	ldr	ip, .L384+36
	ldr	r2, [ip, r3, asl #2]
	cmp	r2, #0
	bne	.L375
	.loc 1 663 0 is_stmt 1
	mov	lr, #1
	.loc 1 667 0
	ldr	r1, .L384+40
	ldr	r4, .L384+44
.LVL180:
	ldr	r0, [r1]
	ldr	r2, [r4]
	ldr	r1, .L384+48
	.loc 1 663 0
	str	lr, [ip, r3, asl #2]
	b	.L334
.L333:
	.loc 1 667 0 discriminator 1
	cmp	r0, r2
	beq	.L382
.L334:
	.loc 1 665 0
	add	r2, r2, #1
	cmp	r2, #3
	movgt	r2, #0
	.loc 1 667 0
	ldr	r3, [r1, r2, asl #2]
	cmp	r3, #0
	beq	.L333
	str	r2, [r4]
.L335:
	.loc 1 669 0
	bl	ST_Start
.LVL181:
	.loc 1 670 0
	bl	HU_Start
.LVL182:
	.loc 1 671 0
	mov	r3, #284
	ldr	r1, [r4]
	ldr	r2, .L384+52
	mul	r3, r3, r1
	ldr	r0, [r2, r3]
	bl	S_UpdateSounds
.LVL183:
	.loc 1 672 0
	bl	R_ActivateSectorInterpolations
.LVL184:
	.loc 1 673 0
	mov	r0, #0
	bl	R_SmoothPlaying_Reset
.LVL185:
	.loc 1 675 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL186:
.L351:
	.loc 1 746 0
	ldr	r2, [r4, #4]
	ldr	r3, .L384+36
	and	r2, r2, #1
	str	r2, [r3, #2088]
	.loc 1 747 0
	ldr	r2, [r4, #4]
	.loc 1 752 0
	mov	r0, #1
	.loc 1 747 0
	and	r2, r2, #2
	str	r2, [r3, #2092]
	.loc 1 748 0
	ldr	r2, [r4, #4]
	and	r2, r2, #4
	str	r2, [r3, #2096]
	.loc 1 749 0
	ldr	r2, [r4, #4]
	and	r2, r2, #8
	str	r2, [r3, #2100]
	.loc 1 750 0
	ldr	r1, [r4, #8]
	.loc 1 751 0
	ldr	r2, [r4, #12]
	.loc 1 750 0
	str	r1, [r3, #2052]
	.loc 1 751 0
	str	r2, [r3, #2048]
	.loc 1 752 0
	ldmfd	sp!, {r3, r4, r5, pc}
.L350:
	.loc 1 731 0
	ldr	r3, [r4, #4]
	ldr	r1, .L384+36
	and	r3, r3, #1
	str	r3, [r1, #2072]
	.loc 1 732 0
	ldr	r3, [r4, #4]
	.loc 1 742 0
	ldr	lr, .L384+56
	.loc 1 732 0
	and	r3, r3, #2
	str	r3, [r1, #2076]
	.loc 1 733 0
	ldr	r3, [r4, #4]
	.loc 1 741 0
	ldr	r2, .L384+60
	.loc 1 733 0
	and	r3, r3, #4
	str	r3, [r1, #2080]
	.loc 1 741 0
	ldr	ip, [r4, #8]
	.loc 1 742 0
	ldr	r0, [r4, #12]
	ldr	r3, [lr]
	.loc 1 741 0
	ldr	r2, [r2]
	.loc 1 742 0
	mul	r3, r3, r0
	.loc 1 741 0
	mul	r2, r2, ip
	ldr	lr, .L384+64
	mov	ip, r2, asr #31
	smull	r2, r0, lr, r2
	.loc 1 742 0
	smull	r2, lr, lr, r3
	.loc 1 741 0
	ldr	r5, [r1, #2060]
	.loc 1 742 0
	mov	r2, r3, asr #31
	ldr	r4, [r1, #2056]
.LVL187:
	rsb	r3, r2, lr, asr #2
	.loc 1 741 0
	rsb	r0, ip, r0, asr #2
	add	r2, r0, r5
	.loc 1 742 0
	add	r3, r3, r4
	.loc 1 741 0
	str	r2, [r1, #2060]
	.loc 1 742 0
	str	r3, [r1, #2056]
.L375:
	.loc 1 743 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL188:
.L349:
	.loc 1 726 0
	ldr	r3, [r4, #4]
	cmp	r3, #512
	bge	.L356
	.loc 1 727 0
	mov	r2, #0
	ldr	r1, .L384+36
	.loc 1 728 0
	mov	r0, r2
	.loc 1 727 0
	str	r2, [r1, r3, asl #2]
	ldmfd	sp!, {r3, r4, r5, pc}
.L347:
	.loc 1 716 0
	ldr	r2, .L384+24
	ldr	r3, [r4, #4]
	ldr	r2, [r2]
	cmp	r3, r2
	beq	.L383
	.loc 1 721 0
	cmp	r3, #512
	bge	.L375
	.loc 1 722 0
	mov	r2, #1
	ldr	r1, .L384+36
	.loc 1 723 0
	mov	r0, r2
	.loc 1 722 0
	str	r2, [r1, r3, asl #2]
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL189:
.L346:
	.loc 1 710 0 discriminator 1
	mov	r0, r4
.LVL190:
	bl	F_Responder
.LVL191:
	cmp	r0, #0
	beq	.L352
	b	.L375
.LVL192:
.L379:
	.loc 1 688 0
	ldr	r1, .L384+24
	ldr	r1, [r1]
	cmp	r3, r1
	bne	.L342
.L355:
	.loc 1 690 0
	ldr	r2, .L384+16
	ldr	r3, [r2]
	eor	r3, r3, #2
	cmp	r3, #0
	str	r3, [r2]
	beq	.L341
	.loc 1 691 0
	bl	S_PauseSound
.LVL193:
	.loc 1 694 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL194:
.L327:
	.loc 1 685 0
	ldr	r2, .L384+4
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L354
	b	.L336
.LVL195:
.L381:
	.loc 1 660 0
	ldr	r1, .L384+36
	str	r2, [r1, r3, asl #2]
	ldmfd	sp!, {r3, r4, r5, pc}
.L383:
	.loc 1 718 0
	mvn	r2, #126
	ldr	r3, .L384+36
	.loc 1 719 0
	mov	r0, #1
	.loc 1 718 0
	strb	r2, [r3, #2064]
	.loc 1 719 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL196:
.L341:
	.loc 1 693 0
	bl	S_ResumeSound
.LVL197:
	.loc 1 694 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL198:
.L382:
	str	r0, [r4]
	b	.L335
.LVL199:
.L380:
	.loc 1 705 0
	cmp	r3, #0
	bne	.L344
	b	.L356
.L385:
	.align	2
.L384:
	.word	key_spy
	.word	gameaction
	.word	gamestate
	.word	demoplayback
	.word	paused
	.word	automapmode
	.word	key_pause
	.word	netgame
	.word	deathmatch
	.word	.LANCHOR0
	.word	consoleplayer
	.word	displayplayer
	.word	playeringame
	.word	players
	.word	mouseSensitivity_vert
	.word	mouseSensitivity_horiz
	.word	1717986919
	.cfi_endproc
.LFE11:
	.size	G_Responder, .-G_Responder
	.align	2
	.global	G_ChangedPlayerColour
	.type	G_ChangedPlayerColour, %function
G_ChangedPlayerColour:
.LFB14:
	.loc 1 992 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL200:
	.loc 1 995 0
	ldr	r3, .L388
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	b	G_ChangedPlayerColour.part.1
.LVL201:
.L389:
	.align	2
.L388:
	.word	netgame
	.cfi_endproc
.LFE14:
	.size	G_ChangedPlayerColour, .-G_ChangedPlayerColour
	.align	2
	.global	G_PlayerReborn
	.type	G_PlayerReborn, %function
G_PlayerReborn:
.LFB15:
	.loc 1 1017 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL202:
	.loc 1 1025 0
	mov	ip, #284
	.loc 1 1017 0
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
	.loc 1 1025 0
	ldr	r4, .L392
	.loc 1 1017 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 1025 0
	mla	r4, ip, r0, r4
	add	r5, r4, #104
	ldmia	r5, {r0, r1, r2, r3}
.LVL203:
	stmia	sp, {r0, r1, r2, r3}
.LBB64:
	.loc 1 1035 0
	mov	r2, ip
	mov	r0, r4
	mov	r1, #0
.LBE64:
	.loc 1 1027 0
	ldr	r10, [r4, #212]
	.loc 1 1026 0
	ldr	r9, [r4, #208]
.LVL204:
	.loc 1 1028 0
	ldr	r8, [r4, #216]
.LVL205:
.LBB65:
	.loc 1 1034 0
	ldr	fp, [r4, #200]
.LVL206:
	.loc 1 1035 0
	bl	memset
.LVL207:
.LBE65:
	.loc 1 1039 0
	ldmia	sp, {r0, r1, r2, r3}
	.loc 1 1044 0
	mov	ip, #1
	.loc 1 1045 0
	mov	lr, #0
	.loc 1 1039 0
	stmia	r5, {r0, r1, r2, r3}
	.loc 1 1046 0
	ldr	r1, .L392+4
	.loc 1 1050 0
	ldr	r2, .L392+8
	.loc 1 1046 0
	ldr	r6, [r1]
	.loc 1 1050 0
	ldr	r5, [r2]
	.loc 1 1053 0
	ldr	r3, .L392+12
	ldmia	r3, {r0, r1, r2, r3}
.LBB66:
	.loc 1 1036 0
	str	fp, [r4, #200]
.LBE66:
	.loc 1 1041 0
	str	r10, [r4, #212]
	.loc 1 1040 0
	str	r9, [r4, #208]
	.loc 1 1042 0
	str	r8, [r4, #216]
	.loc 1 1045 0
	strb	lr, [r4, #4]
	.loc 1 1046 0
	str	r6, [r4, #40]
	.loc 1 1050 0
	str	r5, [r4, #160]
.LVL208:
	.loc 1 1053 0
	str	r0, [r4, #176]
.LVL209:
	str	r1, [r4, #180]
.LVL210:
	str	r2, [r4, #184]
.LVL211:
	str	r3, [r4, #188]
.LVL212:
	.loc 1 1048 0
	str	ip, [r4, #124]
	.loc 1 1047 0
	strb	ip, [r4, #121]
	.loc 1 1044 0
	str	ip, [r4, #192]
	str	ip, [r4, #196]
	.loc 1 1047 0
	strb	ip, [r4, #120]
	.loc 1 1049 0
	str	ip, [r4, #128]
	.loc 1 1054 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL213:
.L393:
	.align	2
.L392:
	.word	players
	.word	initial_health
	.word	initial_bullets
	.word	maxammo
	.cfi_endproc
.LFE15:
	.size	G_PlayerReborn, .-G_PlayerReborn
	.align	2
	.global	G_DeathMatchSpawnPlayer
	.type	G_DeathMatchSpawnPlayer, %function
G_DeathMatchSpawnPlayer:
.LFB17:
	.loc 1 1168 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL214:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 1169 0
	ldr	r3, .L402
	ldr	r8, .L402+4
	ldr	r3, [r3]
	ldr	r6, [r8]
	.loc 1 1168 0
	mov	r7, r0
	.loc 1 1169 0
	rsb	r3, r6, r3
	mov	r3, r3, asr #1
	add	r6, r3, r3, asl #1
	add	r6, r6, r6, asl #4
	add	r6, r6, r6, asl #8
	add	r6, r6, r6, asl #16
	add	r6, r3, r6, asl #2
.LVL215:
	.loc 1 1171 0
	cmp	r6, #3
	ble	.L400
.LVL216:
.L395:
	.loc 1 1168 0 discriminator 1
	mov	r5, #20
.LVL217:
.L397:
.LBB67:
	.loc 1 1177 0
	mov	r0, #26
	bl	P_Random
.LVL218:
	mov	r1, r6
	bl	__aeabi_idivmod
.LVL219:
	.loc 1 1178 0
	ldr	r3, [r8]
	add	r1, r1, r1, asl #2
	mov	r4, r1, asl #1
	add	r1, r3, r4
	mov	r0, r7
	bl	G_CheckSpot
.LVL220:
	cmp	r0, #0
	ldr	r3, .L402+4
	bne	.L401
.LBE67:
	.loc 1 1175 0 discriminator 2
	subs	r5, r5, #1
.LVL221:
	bne	.L397
	.loc 1 1187 0
	ldr	r3, .L402+8
	add	r1, r7, r7, asl #2
	mov	r0, r7
	.loc 1 1188 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL222:
	.loc 1 1187 0
	add	r1, r3, r1, asl #1
	b	P_SpawnPlayer
.LVL223:
.L401:
	.cfi_restore_state
.LBB68:
	.loc 1 1180 0
	ldr	r1, [r3]
	add	r3, r7, #1
	uxth	r3, r3
	add	r1, r1, r4
	mov	r2, r3, lsr #8
	.loc 1 1181 0
	mov	r0, r7
.LBE68:
	.loc 1 1188 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL224:
.LBB69:
	.loc 1 1180 0
	strb	r3, [r1, #6]
	strb	r2, [r1, #7]
	.loc 1 1181 0
	b	P_SpawnPlayer
.LVL225:
.L400:
	.cfi_restore_state
.LBE69:
	.loc 1 1172 0
	ldr	r0, .L402+12
.LVL226:
	mov	r1, r6
	mov	r2, #4
	bl	I_Error
.LVL227:
	b	.L395
.L403:
	.align	2
.L402:
	.word	deathmatch_p
	.word	deathmatchstarts
	.word	playerstarts
	.word	.LC9
	.cfi_endproc
.LFE17:
	.size	G_DeathMatchSpawnPlayer, .-G_DeathMatchSpawnPlayer
	.align	2
	.global	G_DoReborn
	.type	G_DoReborn, %function
G_DoReborn:
.LFB18:
	.loc 1 1195 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL228:
	.loc 1 1196 0
	ldr	r3, .L418
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L415
.LBB74:
	.loc 1 1203 0
	mov	r3, #284
	mov	r2, #0
	mul	r3, r3, r0
	.loc 1 1206 0
	ldr	r1, .L418+4
	.loc 1 1203 0
	ldr	ip, .L418+8
	.loc 1 1206 0
	ldr	r1, [r1]
	.loc 1 1203 0
	ldr	r3, [ip, r3]
	.loc 1 1206 0
	cmp	r1, r2
.LBE74:
	.loc 1 1195 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r5, r0
.LBB75:
	.loc 1 1203 0
	str	r2, [r3, #156]
	.loc 1 1206 0
	bne	.L416
.LVL229:
.LBE75:
.LBB76:
.LBB77:
	.loc 1 1212 0
	ldr	r8, .L418+12
	add	r7, r0, r0, asl #2
	add	r7, r8, r7, asl #1
	mov	r1, r7
	bl	G_CheckSpot
.LVL230:
	cmp	r0, #0
	moveq	r4, r0
	bne	.L414
.L408:
	add	r6, r8, r4
	.loc 1 1221 0
	mov	r1, r6
	mov	r0, r5
	bl	G_CheckSpot
.LVL231:
	cmp	r0, #0
	add	r4, r4, #10
	bne	.L417
	.loc 1 1219 0
	cmp	r4, #40
	bne	.L408
.L414:
	.loc 1 1228 0
	mov	r0, r5
	mov	r1, r7
.LBE77:
.LBE76:
	.loc 1 1230 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL232:
.LBB81:
.LBB78:
	.loc 1 1228 0
	b	P_SpawnPlayer
.LVL233:
.L416:
	.cfi_restore_state
.LBE78:
.LBE81:
	.loc 1 1230 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB82:
	.loc 1 1208 0
	b	G_DeathMatchSpawnPlayer
.LVL234:
.L415:
.LBE82:
	.loc 1 1197 0
	mov	r2, #1
	ldr	r3, .L418+16
	strb	r2, [r3]
	bx	lr
.LVL235:
.L417:
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB83:
.LBB79:
	.loc 1 1223 0
	mov	r0, r5
	mov	r1, r6
.LBE79:
.LBE83:
	.loc 1 1230 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL236:
.LBB84:
.LBB80:
	.loc 1 1223 0
	b	P_SpawnPlayer
.LVL237:
.L419:
	.align	2
.L418:
	.word	netgame
	.word	deathmatch
	.word	players
	.word	playerstarts
	.word	gameaction
.LBE80:
.LBE84:
	.cfi_endproc
.LFE18:
	.size	G_DoReborn, .-G_DoReborn
	.align	2
	.global	G_ExitLevel
	.type	G_ExitLevel, %function
G_ExitLevel:
.LFB19:
	.loc 1 1251 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1252 0
	mov	r0, #0
	.loc 1 1253 0
	mov	r2, #6
	.loc 1 1252 0
	ldr	r1, .L421
	.loc 1 1253 0
	ldr	r3, .L421+4
	.loc 1 1252 0
	str	r0, [r1, #2268]
	.loc 1 1253 0
	strb	r2, [r3]
	bx	lr
.L422:
	.align	2
.L421:
	.word	.LANCHOR0
	.word	gameaction
	.cfi_endproc
.LFE19:
	.size	G_ExitLevel, .-G_ExitLevel
	.align	2
	.global	G_SecretExitLevel
	.type	G_SecretExitLevel, %function
G_SecretExitLevel:
.LFB20:
	.loc 1 1260 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1261 0
	ldr	r3, .L430
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	ldr	r3, .L430+4
	beq	.L429
.L424:
	.loc 1 1262 0
	mov	r2, #1
	str	r2, [r3, #2268]
.L426:
	.loc 1 1265 0
	mov	r2, #6
	ldr	r3, .L430+8
	strb	r2, [r3]
	bx	lr
.L429:
	.loc 1 1261 0 discriminator 1
	ldr	r2, [r3, #2108]
	cmp	r2, #0
	.loc 1 1264 0 discriminator 1
	streq	r2, [r3, #2268]
	.loc 1 1261 0 discriminator 1
	beq	.L426
	b	.L424
.L431:
	.align	2
.L430:
	.word	gamemode
	.word	.LANCHOR0
	.word	gameaction
	.cfi_endproc
.LFE20:
	.size	G_SecretExitLevel, .-G_SecretExitLevel
	.align	2
	.global	G_DoCompleted
	.type	G_DoCompleted, %function
G_DoCompleted:
.LFB21:
	.loc 1 1273 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1276 0
	mov	r3, #0
	.loc 1 1273 0
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
	ldr	r6, .L487
.LBB87:
.LBB88:
	.loc 1 975 0
	mov	r5, r3
.LBE88:
.LBE87:
	.loc 1 1276 0
	mov	r7, r6
	ldr	r2, .L487+4
	ldr	r4, .L487+8
	.loc 1 1273 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 1276 0
	strb	r3, [r2]
.LVL238:
	add	r8, r4, #1136
.LVL239:
.L434:
	.loc 1 1279 0
	ldr	r3, [r7], #4
	cmp	r3, #0
	bne	.L483
.L433:
	add	r4, r4, #284
	.loc 1 1278 0 discriminator 2
	cmp	r4, r8
	bne	.L434
	.loc 1 1282 0
	ldr	r10, .L487+12
	ldrb	r3, [r10]	@ zero_extendqisi2
	tst	r3, #1
	bne	.L484
.L435:
	.loc 1 1285 0
	ldr	r3, .L487+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	str	r3, [sp, #4]
	beq	.L436
	.loc 1 1286 0
	ldr	r3, .L487+20
	ldr	r9, [r3]
	cmp	r9, #9
	bne	.L475
.LVL240:
	.loc 1 1295 0 discriminator 1
	mov	r0, #284
	.loc 1 1291 0 discriminator 1
	mov	r1, #1
	.loc 1 1297 0 discriminator 1
	mov	ip, #8
	.loc 1 1295 0 discriminator 1
	ldr	r2, .L487+24
	.loc 1 1291 0 discriminator 1
	ldr	r3, .L487+28
	.loc 1 1295 0 discriminator 1
	ldr	r2, [r2]
	.loc 1 1296 0 discriminator 1
	ldr	r4, .L487+32
	.loc 1 1295 0 discriminator 1
	mla	r0, r0, r2, r3
	.loc 1 1322 0 discriminator 1
	ldr	lr, .L487+36
	.loc 1 1291 0 discriminator 1
	str	r1, [r3, #280]
.LVL241:
	str	r1, [r3, #564]
.LVL242:
	str	r1, [r3, #848]
.LVL243:
	str	r1, [r3, #1132]
.LVL244:
	.loc 1 1296 0 discriminator 1
	ldr	fp, [r4]
	.loc 1 1322 0 discriminator 1
	ldr	lr, [lr, #2268]
	.loc 1 1295 0 discriminator 1
	ldr	r5, .L487+40
	ldr	r1, [r0, #280]
	.loc 1 1296 0 discriminator 1
	sub	r3, fp, #1
	.loc 1 1322 0 discriminator 1
	cmp	lr, #0
	.loc 1 1297 0 discriminator 1
	stmib	r5, {r1, ip}
	.loc 1 1296 0 discriminator 1
	str	r3, [r5]
	.loc 1 1322 0 discriminator 1
	beq	.L485
.LVL245:
.L439:
	.loc 1 1323 0
	mov	r3, #8
	str	r3, [r5, #12]
	b	.L446
.L475:
	.loc 1 1295 0
	mov	r1, #284
	ldr	r2, .L487+24
	ldr	r3, .L487+28
	ldr	r2, [r2]
	.loc 1 1296 0
	ldr	r0, .L487+32
	.loc 1 1295 0
	mla	r3, r1, r2, r3
	.loc 1 1322 0
	ldr	r1, .L487+36
	.loc 1 1296 0
	ldr	fp, [r0]
	.loc 1 1322 0
	ldr	ip, [r1, #2268]
	.loc 1 1295 0
	ldr	r5, .L487+40
	ldr	r0, [r3, #280]
	.loc 1 1296 0
	sub	r1, fp, #1
	.loc 1 1297 0
	sub	r3, r9, #1
	.loc 1 1322 0
	cmp	ip, #0
	.loc 1 1295 0
	str	r0, [r5, #4]
	.loc 1 1296 0
	str	r1, [r5]
	.loc 1 1297 0
	str	r3, [r5, #8]
	.loc 1 1322 0
	bne	.L439
	.loc 1 1345 0
	str	r9, [r5, #12]
.L446:
	.loc 1 1351 0
	mov	r1, #0
	.loc 1 1356 0
	ldr	r0, .L487+44
	add	r3, fp, fp, asl #2
	add	r3, r9, r3, asl #1
	add	r3, r0, r3, asl #2
	ldr	r3, [r3, #156]
	.loc 1 1348 0
	ldr	lr, .L487+48
	.loc 1 1349 0
	ldr	ip, .L487+52
	.loc 1 1350 0
	ldr	r0, .L487+56
	.loc 1 1356 0
	add	r3, r3, r3, asl #2
	.loc 1 1348 0
	ldr	lr, [lr]
	.loc 1 1349 0
	ldr	ip, [ip]
	.loc 1 1350 0
	ldr	r0, [r0]
	.loc 1 1356 0
	rsb	r3, r3, r3, asl #3
	str	r3, [r5, #32]
	.loc 1 1348 0
	str	lr, [r5, #16]
	.loc 1 1349 0
	str	ip, [r5, #20]
	.loc 1 1350 0
	str	r0, [r5, #24]
	.loc 1 1351 0
	str	r1, [r5, #28]
.L460:
	.loc 1 1358 0
	str	r2, [r5, #36]
.LVL246:
	ldr	r5, .L487+40
	ldr	r3, .L487+60
	mov	ip, r5
	ldr	r7, [r3]
	ldr	lr, .L487+28
	add	r8, r5, #160
.LVL247:
.L453:
	.loc 1 1362 0 discriminator 3
	ldr	r0, [r6], #4
	.loc 1 1365 0 discriminator 3
	add	r1, lr, #208
	ldmia	r1, {r1, r2, r3}
	.loc 1 1362 0 discriminator 3
	str	r0, [ip, #40]
	.loc 1 1363 0 discriminator 3
	str	r1, [ip, #44]
	.loc 1 1364 0 discriminator 3
	str	r2, [ip, #48]
	.loc 1 1365 0 discriminator 3
	str	r3, [ip, #52]
	.loc 1 1366 0 discriminator 3
	str	r7, [ip, #56]
	.loc 1 1367 0 discriminator 3
	add	r4, ip, #60
	add	ip, ip, #40
	add	r3, lr, #104
	.loc 1 1360 0 discriminator 3
	cmp	ip, r8
	.loc 1 1367 0 discriminator 3
	ldmia	r3, {r0, r1, r2, r3}
	add	lr, lr, #284
	stmia	r4, {r0, r1, r2, r3}
	.loc 1 1360 0 discriminator 3
	bne	.L453
	.loc 1 1378 0
	mov	r1, #1
	.loc 1 1376 0
	ldr	r0, .L487+64
	mov	r3, r7, asr #31
	smull	r2, r0, r0, r7
	ldr	r2, .L487+68
	add	r7, r0, r7
	.loc 1 1383 0
	ldr	r0, .L487+72
	.loc 1 1376 0
	rsb	r7, r3, r7, asr #5
	.loc 1 1383 0
	ldr	lr, [r0]
	.loc 1 1376 0
	ldr	r3, [r2]
	.loc 1 1379 0
	ldrb	r0, [r10]	@ zero_extendqisi2
	.loc 1 1376 0
	add	r7, r7, r7, asl #2
	rsb	r7, r7, r7, asl #3
	.loc 1 1378 0
	ldr	ip, .L487+76
	.loc 1 1376 0
	add	r3, r7, r3
	.loc 1 1379 0
	bic	r0, r0, #1
	.loc 1 1383 0
	cmp	lr, #0
	.loc 1 1376 0
	str	r3, [r2]
	str	r3, [r5, #200]
	.loc 1 1379 0
	strb	r0, [r10]
	.loc 1 1378 0
	strb	r1, [ip]
	.loc 1 1383 0
	beq	.L454
	.loc 1 1383 0 is_stmt 0 discriminator 1
	ldr	r3, .L487+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L455
	.loc 1 1383 0 discriminator 2
	ldr	r3, .L487+84
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L454
.L455:
	.loc 1 1384 0 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #2
	beq	.L486
	.loc 1 1387 0
	mov	r2, fp
	mov	r3, r9
	mov	r0, #1
	ldr	r1, .L487+88
	bl	lprintf
.LVL248:
.L454:
	.loc 1 1390 0
	ldr	r0, .L487+40
	.loc 1 1391 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1390 0
	b	WI_Start
.LVL249:
.L483:
	.cfi_restore_state
.LBB90:
.LBB89:
	.loc 1 975 0
	mov	r3, r4
	str	r5, [r3], #4
	add	r3, r3, #4
	str	r5, [r4, #4]
	str	r5, [r3], #4
	str	r5, [r3], #4
	str	r5, [r3], #4
	.loc 1 976 0
	add	r0, r4, #24
	mov	r1, #0
	mov	r2, #24
	.loc 1 975 0
	str	r5, [r3]
	.loc 1 976 0
	bl	memset
.LVL250:
	.loc 1 977 0
	str	r5, [r4, #-52]
	.loc 1 978 0
	str	r5, [r4, #184]
	.loc 1 979 0
	str	r5, [r4, #188]
	.loc 1 980 0
	str	r5, [r4, #172]
	.loc 1 981 0
	str	r5, [r4, #176]
	b	.L433
.L484:
.LBE89:
.LBE90:
	.loc 1 1283 0
	bl	AM_Stop
.LVL251:
	b	.L435
.L436:
	.loc 1 1295 0
	mov	r1, #284
	ldr	r2, .L487+24
	ldr	r3, .L487+28
	ldr	r2, [r2]
	.loc 1 1296 0
	ldr	ip, .L487+32
	.loc 1 1295 0
	mla	r3, r1, r2, r3
	.loc 1 1297 0
	ldr	r0, .L487+20
	.loc 1 1302 0
	ldr	r1, .L487+36
	.loc 1 1296 0
	ldr	fp, [ip]
	.loc 1 1297 0
	ldr	r9, [r0]
	.loc 1 1302 0
	ldr	ip, [r1, #2268]
	.loc 1 1295 0
	ldr	r5, .L487+40
	ldr	r0, [r3, #280]
	.loc 1 1297 0
	sub	r1, r9, #1
	.loc 1 1296 0
	sub	r3, fp, #1
	.loc 1 1302 0
	cmp	ip, #0
	.loc 1 1295 0
	str	r0, [r5, #4]
	.loc 1 1296 0
	str	r3, [r5]
	.loc 1 1297 0
	str	r1, [r5, #8]
	.loc 1 1302 0
	bne	.L458
	.loc 1 1311 0
	sub	r3, r9, #31
	cmp	r3, #1
	.loc 1 1315 0
	movls	r3, #15
	strls	r3, [r5, #12]
	.loc 1 1311 0
	bls	.L441
.L444:
	.loc 1 1317 0
	str	r9, [r5, #12]
.L441:
	.loc 1 1351 0
	mov	r0, #0
	.loc 1 1354 0
	ldr	r3, .L487+44
	.loc 1 1348 0
	ldr	ip, .L487+48
	.loc 1 1354 0
	add	r3, r3, r1, asl #2
	ldr	r3, [r3, #28]
	.loc 1 1349 0
	ldr	r4, .L487+52
	.loc 1 1350 0
	ldr	r1, .L487+56
	.loc 1 1348 0
	ldr	lr, [ip]
	.loc 1 1354 0
	add	r3, r3, r3, asl #2
	.loc 1 1349 0
	ldr	ip, [r4]
	.loc 1 1350 0
	ldr	r1, [r1]
	.loc 1 1354 0
	rsb	r3, r3, r3, asl #3
	str	r3, [r5, #32]
	.loc 1 1348 0
	str	lr, [r5, #16]
	.loc 1 1349 0
	str	ip, [r5, #20]
	.loc 1 1350 0
	str	r1, [r5, #24]
	.loc 1 1351 0
	str	r0, [r5, #28]
	b	.L460
.LVL252:
.L485:
	.loc 1 1328 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L446
.L449:
	.word	.L448
	.word	.L450
	.word	.L451
	.word	.L452
.LVL253:
.L458:
	.loc 1 1303 0
	cmp	r9, #15
	beq	.L442
	cmp	r9, #31
	beq	.L444
	b	.L441
.L486:
	.loc 1 1385 0
	mov	r2, r9
	ldr	r1, .L487+92
	mov	r0, #1
	bl	lprintf
.LVL254:
	b	.L454
.LVL255:
.L452:
	.loc 1 1340 0
	mov	r3, #2
	str	r3, [r5, #12]
	.loc 1 1341 0
	b	.L446
.L451:
	.loc 1 1337 0
	mov	r3, #6
	str	r3, [r5, #12]
	.loc 1 1338 0
	b	.L446
.L450:
	.loc 1 1334 0
	mov	r3, #5
	str	r3, [r5, #12]
	.loc 1 1335 0
	b	.L446
.L448:
	.loc 1 1331 0
	mov	r3, #3
	str	r3, [r5, #12]
	.loc 1 1332 0
	b	.L446
.LVL256:
.L442:
	.loc 1 1306 0
	mov	r3, #30
	str	r3, [r5, #12]
	b	.L441
.L488:
	.align	2
.L487:
	.word	playeringame
	.word	gameaction
	.word	players+52
	.word	automapmode
	.word	gamemode
	.word	gamemap
	.word	consoleplayer
	.word	players
	.word	gameepisode
	.word	.LANCHOR0
	.word	wminfo
	.word	.LANCHOR1
	.word	totalkills
	.word	totalitems
	.word	totalsecret
	.word	leveltime
	.word	-368140053
	.word	totalleveltimes
	.word	nodrawers
	.word	gamestate
	.word	demoplayback
	.word	timingdemo
	.word	.LC11
	.word	.LC10
	.cfi_endproc
.LFE21:
	.size	G_DoCompleted, .-G_DoCompleted
	.align	2
	.global	G_WorldDone
	.type	G_WorldDone, %function
G_WorldDone:
.LFB22:
	.loc 1 1398 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1399 0
	mov	r1, #8
	.loc 1 1401 0
	ldr	r2, .L499
	.loc 1 1399 0
	ldr	r3, .L499+4
	.loc 1 1401 0
	ldr	r2, [r2, #2268]
	.loc 1 1398 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 1401 0
	cmp	r2, #0
	.loc 1 1399 0
	strb	r1, [r3]
	.loc 1 1401 0
	beq	.L490
	.loc 1 1402 0
	mov	lr, #284
	mov	ip, #1
	ldr	r0, .L499+8
	ldr	r1, .L499+12
	ldr	r0, [r0]
	mla	r1, lr, r0, r1
	str	ip, [r1, #280]
.L490:
	.loc 1 1404 0
	ldr	r1, .L499+16
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L498
	.loc 1 1420 0
	ldr	r2, .L499+20
	ldr	r2, [r2]
	cmp	r2, #8
	.loc 1 1421 0
	moveq	r2, #7
	streqb	r2, [r3]
	ldr	pc, [sp], #4
.L498:
	.loc 1 1406 0
	ldr	r3, .L499+20
	ldr	r3, [r3]
	sub	r3, r3, #6
	cmp	r3, #25
	ldrhi	pc, [sp], #4
	mov	r1, #1
	ldr	r0, .L499+24
	mov	r3, r1, asl r3
	and	r0, r0, r3
	cmp	r0, #0
	bne	.L493
	ldr	r1, .L499+28
	and	r1, r1, r3
	.loc 1 1410 0
	cmp	r2, #0
	cmpne	r1, #0
	ldreq	pc, [sp], #4
.L493:
	.loc 1 1422 0
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 1416 0
	b	F_StartFinale
.LVL257:
.L500:
	.align	2
.L499:
	.word	.LANCHOR0
	.word	gameaction
	.word	consoleplayer
	.word	players
	.word	gamemode
	.word	gamemap
	.word	16793633
	.word	33554944
	.cfi_endproc
.LFE22:
	.size	G_WorldDone, .-G_WorldDone
	.align	2
	.global	G_DoWorldDone
	.type	G_DoWorldDone, %function
G_DoWorldDone:
.LFB23:
	.loc 1 1425 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1426 0
	mvn	r0, #0
	.loc 1 1427 0
	mov	r4, #0
	.loc 1 1428 0
	ldr	r3, .L503
	ldr	ip, .L503+4
	ldr	r3, [r3, #12]
	.loc 1 1426 0
	ldr	r1, .L503+8
	.loc 1 1427 0
	ldr	r2, .L503+12
	.loc 1 1428 0
	add	r3, r3, #1
	str	r3, [ip]
	.loc 1 1427 0
	strb	r4, [r2]
	.loc 1 1426 0
	str	r0, [r1]
	.loc 1 1429 0
	bl	G_DoLoadLevel
.LVL258:
	.loc 1 1430 0
	ldr	r3, .L503+16
	strb	r4, [r3]
	.loc 1 1432 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1431 0
	b	AM_clearMarks
.LVL259:
.L504:
	.align	2
.L503:
	.word	wminfo
	.word	gamemap
	.word	idmusnum
	.word	gamestate
	.word	gameaction
	.cfi_endproc
.LFE23:
	.size	G_DoWorldDone, .-G_DoWorldDone
	.align	2
	.global	G_ForcedLoadGame
	.type	G_ForcedLoadGame, %function
G_ForcedLoadGame:
.LFB26:
	.loc 1 1493 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1496 0
	mov	r0, #3
	.loc 1 1497 0
	mov	r2, #1
	.loc 1 1496 0
	ldr	r1, .L506
	.loc 1 1497 0
	ldr	r3, .L506+4
	.loc 1 1496 0
	strb	r0, [r1]
	.loc 1 1497 0
	str	r2, [r3, #2272]
	bx	lr
.L507:
	.align	2
.L506:
	.word	gameaction
	.word	.LANCHOR0
	.cfi_endproc
.LFE26:
	.size	G_ForcedLoadGame, .-G_ForcedLoadGame
	.align	2
	.global	G_LoadGame
	.type	G_LoadGame, %function
G_LoadGame:
.LFB27:
	.loc 1 1503 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL260:
	.loc 1 1504 0
	ldr	r2, .L513
	ldr	r3, [r2]
	orrs	r3, r1, r3
	beq	.L512
	.loc 1 1503 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 1514 0
	mov	ip, #0
	.loc 1 1513 0
	mov	r5, #3
	.loc 1 1514 0
	ldr	r3, .L513+4
	.loc 1 1513 0
	ldr	r4, .L513+8
	.loc 1 1519 0
	ldr	lr, .L513+12
	.loc 1 1515 0
	strb	r0, [r3, #2276]
	.loc 1 1513 0
	strb	r5, [r4]
	.loc 1 1519 0
	str	ip, [lr]
	.loc 1 1522 0
	mov	r0, #0
.LVL261:
	.loc 1 1523 0
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1516 0
	str	ip, [r2]
	.loc 1 1514 0
	str	ip, [r3, #2272]
	.loc 1 1521 0
	str	r1, [r3, #2132]
	.loc 1 1522 0
	b	R_SmoothPlaying_Reset
.LVL262:
.L512:
	.loc 1 1509 0
	mov	r0, r0, asl #2
.LVL263:
	.loc 1 1508 0
	and	r0, r0, #28
	mvn	r0, r0, asl #25
	mvn	r0, r0, lsr #25
	.loc 1 1510 0
	ldr	r2, .L513+12
	.loc 1 1508 0
	ldr	r3, .L513+4
	.loc 1 1510 0
	ldr	r2, [r2]
	.loc 1 1508 0
	strb	r0, [r3, #2064]
	.loc 1 1522 0
	mov	r0, #0
	.loc 1 1510 0
	str	r2, [r3, #2272]
	.loc 1 1521 0
	str	r1, [r3, #2132]
	.loc 1 1522 0
	b	R_SmoothPlaying_Reset
.LVL264:
.L514:
	.align	2
.L513:
	.word	demoplayback
	.word	.LANCHOR0
	.word	gameaction
	.word	netgame
	.cfi_endproc
.LFE27:
	.size	G_LoadGame, .-G_LoadGame
	.align	2
	.global	CheckSaveGame
	.type	CheckSaveGame, %function
CheckSaveGame:
.LFB31:
	.loc 1 1734 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL265:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1735 0
	ldr	r5, .L518
	ldr	r6, .L518+4
	ldr	r2, [r5, #2128]
.LVL266:
	ldr	r4, [r6]
	.loc 1 1751 0
	ldr	lr, .L518+8
	.loc 1 1735 0
	rsb	r4, r2, r4
.LVL267:
	.loc 1 1750 0
	add	r3, r0, #1024
.LVL268:
	.loc 1 1751 0
	ldr	ip, [lr, #316]
	add	r3, r3, r4
.LVL269:
	cmp	r3, ip
	ldmlsfd	sp!, {r4, r5, r6, pc}
	.loc 1 1752 0
	add	r3, r0, #2032
	add	r3, r3, #15
	bic	r3, r3, #1020
	bic	r3, r3, #3
	add	ip, r3, ip
	mov	r0, r2
.LVL270:
	mov	r1, ip
.LVL271:
	mov	r2, #1
	mov	r3, #0
	str	ip, [lr, #316]
	bl	Z_Realloc
.LVL272:
	.loc 1 1753 0
	add	r4, r0, r4
.LVL273:
	.loc 1 1752 0
	str	r4, [r6]
	str	r0, [r5, #2128]
	ldmfd	sp!, {r4, r5, r6, pc}
.L519:
	.align	2
.L518:
	.word	.LANCHOR0
	.word	save_p
	.word	.LANCHOR1
	.cfi_endproc
.LFE31:
	.size	CheckSaveGame, .-CheckSaveGame
	.align	2
	.global	G_SaveGameName
	.type	G_SaveGameName, %function
G_SaveGameName:
.LFB32:
	.loc 1 1762 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL274:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 1763 0
	cmp	r3, #0
	ldreq	r3, .L524
.LVL275:
	ldrne	ip, .L524+4
	ldreq	ip, [r3]
.LVL276:
	.loc 1 1762 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 1764 0
	ldr	r3, .L524+8
	str	ip, [sp]
	ldr	r3, [r3]
	str	r2, [sp, #4]
	ldr	r2, .L524+12
.LVL277:
	bl	doom_snprintf
.LVL278:
	.loc 1 1765 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L525:
	.align	2
.L524:
	.word	savegamename
	.word	.LC12
	.word	basesavegame
	.word	.LC13
	.cfi_endproc
.LFE32:
	.size	G_SaveGameName, .-G_SaveGameName
	.align	2
	.global	G_DeferedInitNew
	.type	G_DeferedInitNew, %function
G_DeferedInitNew:
.LFB34:
	.loc 1 1902 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL279:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 1906 0
	mov	lr, #2
	.loc 1 1903 0
	ldr	r3, .L528
	.loc 1 1906 0
	ldr	ip, .L528+4
	.loc 1 1903 0
	strb	r0, [r3, #2277]
	.loc 1 1906 0
	strb	lr, [ip]
	.loc 1 1904 0
	str	r1, [r3, #2280]
	.loc 1 1905 0
	str	r2, [r3, #2284]
	ldr	pc, [sp], #4
.L529:
	.align	2
.L528:
	.word	.LANCHOR0
	.word	gameaction
	.cfi_endproc
.LFE34:
	.size	G_DeferedInitNew, .-G_DeferedInitNew
	.align	2
	.global	G_Compatibility
	.type	G_Compatibility, %function
G_Compatibility:
.LFB35:
	.loc 1 1922 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL280:
	ldr	ip, .L538
	mov	r3, #0
	mov	r2, ip
	ldr	r1, .L538+4
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	ldrb	r0, [r1]	@ zero_extendqisi2
	.loc 1 1987 0
	ldr	lr, .L538+8
.LVL281:
.L532:
	.loc 1 1986 0
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	add	r2, r2, #2
	cmp	r1, r0
	bls	.L531
	.loc 1 1987 0
	ldrb	r1, [ip, r3, asl #1]	@ zero_extendqisi2
	cmp	r1, r0
	movls	r1, #0
	movhi	r1, #1
	str	r1, [lr, r3, asl #2]
.L531:
	.loc 1 1985 0 discriminator 2
	add	r3, r3, #1
.LVL282:
	cmp	r3, #25
	bne	.L532
	.loc 1 1989 0
	cmp	r0, #10
	ldmhifd	sp!, {r4, r5, r6, r7, r8, pc}
	.loc 1 1991 0
	mov	r3, #0
.LVL283:
	.loc 1 1990 0
	mov	r2, #1
	ldr	r8, .L538+12
	.loc 1 1991 0
	ldr	r7, .L538+16
	.loc 1 1992 0
	ldr	r6, .L538+20
	.loc 1 1993 0
	ldr	r5, .L538+24
	.loc 1 1994 0
	ldr	r4, .L538+28
	.loc 1 1997 0
	ldr	lr, .L538+32
	.loc 1 1998 0
	ldr	ip, .L538+36
	.loc 1 2001 0
	ldr	r1, .L538+40
	.loc 1 2004 0
	cmp	r0, #6
	.loc 1 1990 0
	str	r2, [r8]
	.loc 1 1991 0
	str	r3, [r7]
	.loc 1 1992 0
	str	r3, [r6]
	.loc 1 1993 0
	str	r3, [r5]
	.loc 1 1994 0
	str	r3, [r4]
	.loc 1 1997 0
	str	r3, [lr]
	.loc 1 1998 0
	str	r3, [ip]
	.loc 1 2001 0
	str	r3, [r1]
	.loc 1 2004 0
	ldmhifd	sp!, {r4, r5, r6, r7, r8, pc}
.LBB93:
	.loc 1 2005 0
	ldr	r4, .L538+44
	.loc 1 2006 0
	ldr	lr, .L538+48
	.loc 1 2007 0
	ldr	ip, .L538+52
	.loc 1 2008 0
	ldr	r0, .L538+56
	.loc 1 2009 0
	ldr	r1, .L538+60
	.loc 1 2005 0
	str	r3, [r4]
	.loc 1 2006 0
	str	r3, [lr]
	.loc 1 2007 0
	str	r3, [ip]
	.loc 1 2008 0
	str	r3, [r0]
	.loc 1 2009 0
	str	r2, [r1]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L539:
	.align	2
.L538:
	.word	.LANCHOR2
	.word	compatibility_level
	.word	comp
	.word	monster_infighting
	.word	monster_backing
	.word	monster_avoid_hazards
	.word	monster_friction
	.word	help_friends
	.word	dogs
	.word	dog_jumping
	.word	monkeys
	.word	allow_pushers
	.word	variable_friction
	.word	monsters_remember
	.word	weapon_recoil
	.word	player_bobbing
.LBE93:
	.cfi_endproc
.LFE35:
	.size	G_Compatibility, .-G_Compatibility
	.align	2
	.global	G_ReloadDefaults
	.type	G_ReloadDefaults, %function
G_ReloadDefaults:
.LFB37:
	.loc 1 2029 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 2048 0
	ldr	r4, .L557
	.loc 1 2034 0
	ldr	lr, .L557+4
	.loc 1 2036 0
	ldr	ip, .L557+8
	.loc 1 2039 0
	ldr	r0, .L557+12
	.loc 1 2040 0
	ldr	r1, .L557+16
	.loc 1 2043 0
	ldr	r2, .L557+20
	.loc 1 2045 0
	ldr	r3, .L557+24
	.loc 1 2048 0
	ldr	r10, [r4]
	.loc 1 2036 0
	ldr	r7, [ip]
	.loc 1 2034 0
	ldr	r9, [lr]
	.loc 1 2039 0
	ldr	r5, [r0]
	.loc 1 2040 0
	ldr	lr, [r1]
	.loc 1 2043 0
	ldr	r0, [r2]
	.loc 1 2034 0
	ldr	r8, .L557+28
	.loc 1 2045 0
	ldr	r2, [r3]
	.loc 1 2036 0
	ldr	r6, .L557+32
	.loc 1 2039 0
	ldr	r4, .L557+36
	.loc 1 2040 0
	ldr	ip, .L557+40
	.loc 1 2043 0
	ldr	r1, .L557+44
	.loc 1 2045 0
	ldr	r3, .L557+48
	.loc 1 2048 0
	cmp	r10, #0
	.loc 1 2043 0
	str	r0, [r1]
	.loc 1 2034 0
	str	r9, [r8]
	.loc 1 2036 0
	str	r7, [r6]
	.loc 1 2039 0
	str	r5, [r4]
	.loc 1 2040 0
	str	lr, [ip]
	.loc 1 2045 0
	str	r2, [r3]
	.loc 1 2048 0
	movne	r0, #0
	beq	.L554
.L541:
	.loc 1 2072 0 discriminator 4
	ldr	r3, .L557+52
	.loc 1 2052 0 discriminator 4
	ldr	r9, .L557+56
	.loc 1 2072 0 discriminator 4
	ldrsb	r2, [r3]
	.loc 1 2052 0 discriminator 4
	ldr	r9, [r9]
	.loc 1 2072 0 discriminator 4
	cmn	r2, #1
	.loc 1 2058 0 discriminator 4
	ldr	r10, .L557+60
	.loc 1 2052 0 discriminator 4
	ldr	r2, .L557+64
	.loc 1 2058 0 discriminator 4
	ldr	fp, [r10]
	.loc 1 2052 0 discriminator 4
	str	r9, [r2]
	.loc 1 2058 0 discriminator 4
	ldr	r2, .L557+68
	.loc 1 2060 0 discriminator 4
	ldr	r8, .L557+72
	.loc 1 2058 0 discriminator 4
	str	fp, [r2]
	.loc 1 2048 0 discriminator 4
	ldr	r2, .L557+76
	.loc 1 2062 0 discriminator 4
	ldr	r6, .L557+80
	.loc 1 2048 0 discriminator 4
	str	r0, [r2]
	.loc 1 2073 0 discriminator 4
	ldreq	r2, .L557+84
	.loc 1 2066 0 discriminator 4
	ldr	r4, .L557+88
	.loc 1 2073 0 discriminator 4
	ldreq	r2, [r2]
	.loc 1 2067 0 discriminator 4
	ldr	ip, .L557+92
	.loc 1 2073 0 discriminator 4
	subeq	r2, r2, #1
	streqb	r2, [r3]
	.loc 1 2075 0 discriminator 4
	mov	r3, #0
	.loc 1 2068 0 discriminator 4
	ldr	r1, .L557+96
	.loc 1 2049 0 discriminator 4
	ldr	r5, .L557+100
	.loc 1 2060 0 discriminator 4
	ldr	r10, [r8]
	.loc 1 2049 0 discriminator 4
	ldr	r5, [r5]
	.loc 1 2062 0 discriminator 4
	ldr	r8, [r6]
	.loc 1 2056 0 discriminator 4
	ldr	lr, .L557+104
	.loc 1 2066 0 discriminator 4
	ldr	r6, [r4]
	.loc 1 2067 0 discriminator 4
	ldr	r4, [ip]
	.loc 1 2068 0 discriminator 4
	ldr	ip, [r1]
	.loc 1 2049 0 discriminator 4
	ldr	r1, .L557+108
	.loc 1 2056 0 discriminator 4
	ldr	lr, [lr]
	.loc 1 2049 0 discriminator 4
	str	r5, [r1]
	.loc 1 2054 0 discriminator 4
	ldr	r7, .L557+112
	.loc 1 2056 0 discriminator 4
	ldr	r1, .L557+116
	.loc 1 2054 0 discriminator 4
	ldr	r7, [r7]
	.loc 1 2056 0 discriminator 4
	str	lr, [r1]
	.loc 1 2054 0 discriminator 4
	ldr	r5, .L557+120
	.loc 1 2068 0 discriminator 4
	ldr	r1, .L557+124
	.loc 1 2054 0 discriminator 4
	str	r7, [r5]
	.loc 1 2068 0 discriminator 4
	str	ip, [r1]
	.loc 1 2062 0 discriminator 4
	ldr	r7, .L557+128
	.loc 1 2066 0 discriminator 4
	ldr	r5, .L557+132
	.loc 1 2067 0 discriminator 4
	ldr	lr, .L557+136
	.loc 1 2084 0 discriminator 4
	ldr	r1, .L557+140
	.loc 1 2080 0 discriminator 4
	ldr	r2, .L557+144
	.loc 1 2066 0 discriminator 4
	str	r6, [r5]
	.loc 1 2067 0 discriminator 4
	str	r4, [lr]
	.loc 1 2062 0 discriminator 4
	str	r8, [r7]
	.loc 1 2076 0 discriminator 4
	ldr	lr, .L557+148
	.loc 1 2084 0 discriminator 4
	ldrb	r7, [r1]	@ zero_extendqisi2
	.loc 1 2077 0 discriminator 4
	ldr	ip, .L557+152
	.loc 1 2082 0 discriminator 4
	ldr	r1, .L557+156
	.loc 1 2060 0 discriminator 4
	ldr	r9, .L557+160
	.loc 1 2084 0 discriminator 4
	ldr	r4, .L557+164
	.loc 1 2075 0 discriminator 4
	ldr	r5, .L557+168
.LBB98:
	.loc 1 2086 0 discriminator 4
	ldr	r0, .L557+172
.LBE98:
	.loc 1 2080 0 discriminator 4
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #4]
	.loc 1 2060 0 discriminator 4
	str	r10, [r9]
	.loc 1 2080 0 discriminator 4
	add	r6, r2, #8
	.loc 1 2084 0 discriminator 4
	strb	r7, [r4]
	.loc 1 2075 0 discriminator 4
	str	r3, [r5]
	.loc 1 2076 0 discriminator 4
	str	r3, [lr]
	.loc 1 2077 0 discriminator 4
	str	r3, [ip, #2288]
	.loc 1 2082 0 discriminator 4
	str	r3, [r1]
.LBB100:
	.loc 1 2086 0 discriminator 4
	bl	M_CheckParm
.LVL284:
	.loc 1 2087 0 discriminator 4
	cmp	r0, #0
	beq	.L553
	.loc 1 2087 0 is_stmt 0 discriminator 1
	ldr	r3, .L557+176
	add	r0, r0, #1
.LVL285:
	ldr	r3, [r3]
	cmp	r0, r3
	blt	.L555
.LVL286:
.L553:
	ldrb	r0, [r4]	@ zero_extendqisi2
.L546:
.LBE100:
	.loc 1 2095 0 is_stmt 1
	cmp	r0, #10
	bls	.L549
	.loc 1 2096 0
	ldr	r0, .L557+180
	ldr	r1, .L557+184
	mov	r2, #128
	bl	memcpy
.LVL287:
.L549:
	.loc 1 2097 0
	bl	G_Compatibility
.LVL288:
	.loc 1 2100 0
	ldr	r3, .L557+188
	ldr	r2, .L557+192
	ldr	r3, [r3]
	sub	r3, r3, #1
	clz	r3, r3
	mov	r3, r3, lsr #5
	str	r3, [r2]
	.loc 1 2102 0
	bl	I_GetRandomTimeSeed
.LVL289:
	ldr	r2, .L557+196
	ldr	r3, .L557+200
	ldr	r1, [r2]
	ldr	r3, [r3]
	add	r3, r3, r1
	add	r0, r3, r0
	str	r0, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L554:
.LBB101:
.LBB102:
	.loc 1 2017 0
	ldr	r0, .L557+204
	bl	M_CheckParm
.LVL290:
	.loc 1 2019 0
	cmp	r0, #0
	beq	.L556
.L542:
	.loc 1 2021 0
	ldr	r3, .L557+176
	add	r0, r0, #1
.LVL291:
	ldr	r3, [r3]
	cmp	r0, r3
	movge	r0, #1
.LVL292:
	bge	.L541
	ldr	r3, .L557+208
	ldr	r3, [r3]
	ldr	r0, [r3, r0, asl #2]
	bl	atoi
.LVL293:
	b	.L541
.LVL294:
.L555:
.LBE102:
.LBE101:
.LBB104:
.LBB99:
	.loc 1 2088 0
	ldr	r3, .L557+208
	ldr	r3, [r3]
	ldr	r0, [r3, r0, asl #2]
.LVL295:
	bl	atoi
.LVL296:
	.loc 1 2089 0
	cmn	r0, #1
	uxtbge	r0, r0
.LVL297:
	strgeb	r0, [r4]
	bge	.L546
	b	.L553
.LVL298:
.L556:
.LBE99:
.LBE104:
.LBB105:
.LBB103:
	.loc 1 2020 0
	ldr	r0, .L557+212
.LVL299:
	bl	M_CheckParm
.LVL300:
	.loc 1 2021 0
	cmp	r0, #0
	bne	.L542
	ldr	r3, .L557+216
	ldr	r0, [r3]
.LVL301:
	b	.L541
.L558:
	.align	2
.L557:
	.word	netgame
	.word	default_weapon_recoil
	.word	default_player_bobbing
	.word	default_variable_friction
	.word	default_allow_pushers
	.word	default_monsters_remember
	.word	default_monster_infighting
	.word	weapon_recoil
	.word	player_bobbing
	.word	variable_friction
	.word	allow_pushers
	.word	monsters_remember
	.word	monster_infighting
	.word	startskill
	.word	default_distfriend
	.word	default_monster_friction
	.word	distfriend
	.word	monster_friction
	.word	default_help_friends
	.word	dogs
	.word	default_monkeys
	.word	defaultskill
	.word	clrespawnparm
	.word	clfastparm
	.word	clnomonsters
	.word	default_dog_jumping
	.word	default_monster_avoid_hazards
	.word	dog_jumping
	.word	default_monster_backing
	.word	monster_avoid_hazards
	.word	monster_backing
	.word	nomonsters
	.word	monkeys
	.word	respawnparm
	.word	fastparm
	.word	default_compatibility_level
	.word	playeringame+4
	.word	singledemo
	.word	.LANCHOR0
	.word	consoleplayer
	.word	help_friends
	.word	compatibility_level
	.word	demoplayback
	.word	.LC16
	.word	myargc
	.word	comp
	.word	default_comp
	.word	default_demo_insurance
	.word	demo_insurance
	.word	rngseed
	.word	gametic
	.word	.LC14
	.word	myargv
	.word	.LC15
	.word	default_dogs
.LBE103:
.LBE105:
	.cfi_endproc
.LFE37:
	.size	G_ReloadDefaults, .-G_ReloadDefaults
	.align	2
	.global	G_SetFastParms
	.type	G_SetFastParms, %function
G_SetFastParms:
.LFB39:
	.loc 1 2121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL302:
	.loc 1 2124 0
	ldr	r3, .L570
	ldr	r2, [r3, #2292]
	cmp	r2, r0
	bxeq	lr
	.loc 1 2125 0
	cmp	r0, #0
	str	r0, [r3, #2292]
	beq	.L565
.LBB108:
.LBB109:
	.loc 1 2128 0
	ldr	r3, .L570+4
	mov	r0, #0
.LVL303:
	ldr	r1, .L570+8
	ldrb	ip, [r3]	@ zero_extendqisi2
	b	.L564
.LVL304:
.L562:
	.loc 1 2129 0
	mov	r2, r2, asr #1
	.loc 1 2127 0
	cmp	r0, #364
	.loc 1 2129 0
	str	r2, [r3]
	.loc 1 2127 0
	beq	.L569
.L564:
	add	r3, r0, #13312
	add	r3, r3, #52
	.loc 1 2128 0
	ldr	r2, [r1, r3]
	add	r0, r0, #28
	cmp	r2, #1
	add	r3, r1, r3
	bne	.L562
	cmp	ip, #6
	bls	.L562
	.loc 1 2127 0
	cmp	r0, #364
	bne	.L564
.L569:
	.loc 1 2130 0
	mov	r2, #1310720
	ldr	r3, .L570+12
	str	r2, [r3, #1724]
	.loc 1 2131 0
	str	r2, [r3, #3388]
	.loc 1 2132 0
	str	r2, [r3, #3284]
	bx	lr
.LVL305:
.L565:
	ldr	r1, .L570+8
.LVL306:
.L561:
	add	r3, r0, #13312
	add	r3, r3, #52
.LBE109:
.LBE108:
	.loc 1 2137 0 discriminator 3
	ldr	r2, [r1, r3]
	add	r0, r0, #28
	mov	r2, r2, asl #1
	.loc 1 2136 0 discriminator 3
	cmp	r0, #364
	.loc 1 2137 0 discriminator 3
	str	r2, [r1, r3]
.LVL307:
	.loc 1 2136 0 discriminator 3
	bne	.L561
	.loc 1 2139 0
	mov	r2, #655360
	.loc 1 2138 0
	mov	r1, #983040
	ldr	r3, .L570+12
	str	r1, [r3, #1724]
	.loc 1 2139 0
	str	r2, [r3, #3388]
	.loc 1 2140 0
	str	r2, [r3, #3284]
	bx	lr
.L571:
	.align	2
.L570:
	.word	.LANCHOR0
	.word	compatibility_level
	.word	states
	.word	mobjinfo
	.cfi_endproc
.LFE39:
	.size	G_SetFastParms, .-G_SetFastParms
	.align	2
	.global	G_InitNew
	.type	G_InitNew, %function
G_InitNew:
.LFB40:
	.loc 1 2152 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL308:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 2155 0
	ldr	r7, .L600
	.loc 1 2152 0
	mov	r4, r0
	.loc 1 2155 0
	ldr	r3, [r7]
	.loc 1 2152 0
	mov	r6, r1
	.loc 1 2155 0
	cmp	r3, #0
	.loc 1 2152 0
	mov	r5, r2
	.loc 1 2155 0
	bne	.L596
.LVL309:
.L573:
	cmp	r4, #4
	.loc 1 2167 0
	ldr	r3, .L600+4
	movge	r4, #4
.LVL310:
	.loc 1 2164 0
	cmp	r6, #0
	.loc 1 2167 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2164 0
	ble	.L574
	.loc 1 2167 0
	cmp	r3, #3
	beq	.L597
.LVL311:
.L575:
	.loc 1 2173 0
	cmp	r3, #0
	.loc 1 2176 0
	moveq	r6, #1
	.loc 1 2173 0
	bne	.L598
.L576:
.LVL312:
	.loc 1 2182 0
	cmp	r5, #0
	.loc 1 2183 0
	movle	r5, #1
.LVL313:
	.loc 1 2182 0
	ble	.L577
.LVL314:
	.loc 1 2185 0
	cmp	r3, #2
	cmpne	r5, #9
	movgt	r5, #9
.LVL315:
.L577:
	.loc 1 2187 0
	ldr	r3, .L600+8
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L578
	.loc 1 2187 0 is_stmt 0 discriminator 2
	cmp	r4, #4
	beq	.L599
	.loc 1 2187 0
	bl	G_SetFastParms
.LVL316:
	.loc 1 2189 0 is_stmt 1
	bl	M_ClearRandom
.LVL317:
.L583:
	.loc 1 2191 0 discriminator 2
	ldr	r3, .L600+12
	ldr	r0, [r3]
	adds	r0, r0, #0
	movne	r0, #1
.L581:
	.loc 1 2195 0 discriminator 6
	mov	r2, #2
	.loc 1 2198 0 discriminator 6
	mov	ip, #0
	.loc 1 2197 0 discriminator 6
	mov	fp, #1
	.loc 1 2199 0 discriminator 6
	ldr	lr, .L600+16
	.loc 1 2195 0 discriminator 6
	ldr	r3, .L600+20
	.loc 1 2199 0 discriminator 6
	ldrb	r1, [lr]	@ zero_extendqisi2
	.loc 1 2197 0 discriminator 6
	ldr	r10, .L600+24
	.loc 1 2199 0 discriminator 6
	bic	r1, r1, #1
	strb	r1, [lr]
	.loc 1 2204 0 discriminator 6
	ldr	r9, .L600+28
	.loc 1 2200 0 discriminator 6
	ldr	lr, .L600+32
	.loc 1 2191 0 discriminator 6
	ldr	r8, .L600+36
	.loc 1 2201 0 discriminator 6
	ldr	r1, .L600+40
	.loc 1 2195 0 discriminator 6
	strb	r2, [r3, #4]
	strb	r2, [r3, #288]
	strb	r2, [r3, #572]
	strb	r2, [r3, #856]
	.loc 1 2202 0 discriminator 6
	ldr	r3, .L600+44
	.loc 1 2197 0 discriminator 6
	str	fp, [r10]
	.loc 1 2198 0 discriminator 6
	str	ip, [r7]
	.loc 1 2204 0 discriminator 6
	str	ip, [r9]
	.loc 1 2191 0 discriminator 6
	str	r0, [r8]
.LVL318:
	.loc 1 2200 0 discriminator 6
	str	r6, [lr]
	.loc 1 2201 0 discriminator 6
	str	r5, [r1]
	.loc 1 2202 0 discriminator 6
	strb	r4, [r3]
	.loc 1 2207 0 discriminator 6
	bl	AM_clearMarks
.LVL319:
	.loc 1 2210 0 discriminator 6
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL320:
	.loc 1 2209 0 discriminator 6
	b	G_DoLoadLevel
.LVL321:
.L578:
	.cfi_restore_state
	.loc 1 2187 0 discriminator 6
	mov	r0, #1
	bl	G_SetFastParms
.LVL322:
	.loc 1 2189 0 discriminator 6
	bl	M_ClearRandom
.LVL323:
	.loc 1 2191 0 discriminator 6
	cmp	r4, #4
	moveq	r0, #1
	bne	.L583
	b	.L581
.LVL324:
.L598:
	cmp	r6, #3
	movge	r6, #3
	b	.L576
.LVL325:
.L596:
	.loc 1 2157 0
	mov	r3, #0
	str	r3, [r7]
	.loc 1 2158 0
	bl	S_ResumeSound
.LVL326:
	b	.L573
.LVL327:
.L597:
	.loc 1 2169 0
	cmp	r6, #4
	.loc 1 2170 0
	movgt	r6, #4
.LVL328:
	.loc 1 2169 0
	bgt	.L576
.LVL329:
.L582:
	.loc 1 2176 0
	mov	r3, #3
	b	.L576
.LVL330:
.L574:
	.loc 1 2167 0
	cmp	r3, #3
	.loc 1 2165 0
	mov	r6, #1
	.loc 1 2167 0
	bne	.L575
	b	.L582
.LVL331:
.L599:
	.loc 1 2187 0
	mov	r0, #1
	bl	G_SetFastParms
.LVL332:
	.loc 1 2189 0
	bl	M_ClearRandom
.LVL333:
	.loc 1 2191 0
	mov	r0, #1
	b	.L581
.L601:
	.align	2
.L600:
	.word	paused
	.word	gamemode
	.word	fastparm
	.word	respawnparm
	.word	automapmode
	.word	players
	.word	usergame
	.word	totalleveltimes
	.word	gameepisode
	.word	respawnmonsters
	.word	gamemap
	.word	gameskill
	.cfi_endproc
.LFE40:
	.size	G_InitNew, .-G_InitNew
	.align	2
	.global	G_DoNewGame
	.type	G_DoNewGame, %function
G_DoNewGame:
.LFB38:
	.loc 1 2106 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2108 0
	mov	r4, #0
	.loc 1 2107 0
	bl	G_ReloadDefaults
.LVL334:
	.loc 1 2110 0
	ldr	r3, .L604
	.loc 1 2108 0
	ldr	lr, .L604+4
	.loc 1 2110 0
	add	r2, r3, #2272
	.loc 1 2109 0
	ldr	ip, .L604+8
	.loc 1 2110 0
	ldrsb	r0, [r2, #5]
	ldr	r1, [r3, #2280]
	ldr	r2, [r3, #2284]
	.loc 1 2108 0
	str	r4, [lr]
	.loc 1 2109 0
	str	r4, [ip]
	.loc 1 2110 0
	bl	G_InitNew
.LVL335:
	.loc 1 2111 0
	ldr	r3, .L604+12
	strb	r4, [r3]
	.loc 1 2115 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 2114 0
	b	ST_Start
.LVL336:
.L605:
	.align	2
.L604:
	.word	.LANCHOR0
	.word	netgame
	.word	deathmatch
	.word	gameaction
	.cfi_endproc
.LFE38:
	.size	G_DoNewGame, .-G_DoNewGame
	.align	2
	.global	G_WriteOptions
	.type	G_WriteOptions, %function
G_WriteOptions:
.LFB44:
	.loc 1 2347 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL337:
	.loc 1 2358 0
	mov	r1, #0
	.loc 1 2405 0
	mov	r2, r0
	.loc 1 2347 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 2350 0
	ldr	r3, .L616
	.loc 1 2352 0
	ldr	ip, .L616+4
	.loc 1 2350 0
	ldr	lr, [r3]
	.loc 1 2354 0
	ldr	r3, .L616+8
	.loc 1 2350 0
	strb	lr, [r0]
	.loc 1 2352 0
	ldr	lr, [ip]
	.loc 1 2356 0
	ldr	ip, .L616+12
	.loc 1 2352 0
	strb	lr, [r0, #1]
	.loc 1 2354 0
	ldr	lr, [r3]
	.loc 1 2367 0
	ldr	r9, .L616+16
	.loc 1 2354 0
	strb	lr, [r0, #2]
	.loc 1 2356 0
	ldr	lr, [ip]
	.loc 1 2370 0
	ldr	r3, .L616+20
	.loc 1 2356 0
	strb	lr, [r0, #3]
	.loc 1 2360 0
	ldr	r6, .L616+24
	.loc 1 2363 0
	ldr	r5, .L616+28
	.loc 1 2364 0
	ldr	r4, .L616+32
	.loc 1 2365 0
	ldr	lr, .L616+36
	.loc 1 2370 0
	ldr	r3, [r3]
	.loc 1 2367 0
	ldr	fp, [r9]
	.loc 1 2388 0
	ldr	ip, .L616+40
	.loc 1 2360 0
	ldr	r6, [r6]
	.loc 1 2363 0
	ldr	r5, [r5]
	.loc 1 2364 0
	ldr	r4, [r4]
	.loc 1 2365 0
	ldr	lr, [lr]
	.loc 1 2377 0
	ldr	r8, .L616+44
	.loc 1 2380 0
	ldr	r7, .L616+48
	.loc 1 2388 0
	ldr	ip, [ip]
	.loc 1 2367 0
	strb	fp, [r0, #9]
	.loc 1 2370 0
	mov	fp, r3, lsr #24
	.loc 1 2377 0
	ldr	r10, [r8]
	.loc 1 2380 0
	ldr	r9, [r7]
	.loc 1 2360 0
	strb	r6, [r0, #5]
	.loc 1 2363 0
	strb	r5, [r0, #6]
	.loc 1 2364 0
	strb	r4, [r0, #7]
	.loc 1 2365 0
	strb	lr, [r0, #8]
	.loc 1 2400 0
	ldr	r4, .L616+52
	.loc 1 2370 0
	strb	fp, [r0, #10]
	.loc 1 2391 0
	ldr	r8, .L616+56
	.loc 1 2371 0
	mov	fp, r3, lsr #16
	.loc 1 2393 0
	ldr	r7, .L616+60
	.loc 1 2395 0
	ldr	r6, .L616+64
	.loc 1 2397 0
	ldr	r5, .L616+68
	.loc 1 2405 0
	ldr	lr, .L616+72
	.loc 1 2373 0
	strb	r3, [r0, #13]
	.loc 1 2371 0
	strb	fp, [r0, #11]
	.loc 1 2372 0
	mov	r3, r3, lsr #8
	.loc 1 2388 0
	mov	fp, ip, asr #8
	.loc 1 2372 0
	strb	r3, [r0, #12]
	.loc 1 2389 0
	strb	ip, [r0, #19]
	.loc 1 2358 0
	strb	r1, [r0, #4]
	.loc 1 2385 0
	strb	r1, [r0, #16]
	.loc 1 2377 0
	strb	r10, [r0, #14]
	.loc 1 2380 0
	strb	r9, [r0, #15]
	.loc 1 2388 0
	strb	fp, [r0, #18]
	.loc 1 2386 0
	strb	r1, [r0, #17]
	.loc 1 2400 0
	ldr	ip, [r4]
	.loc 1 2391 0
	ldr	r8, [r8]
	.loc 1 2393 0
	ldr	r7, [r7]
	.loc 1 2395 0
	ldr	r6, [r6]
	.loc 1 2397 0
	ldr	r5, [r5]
	.loc 1 2405 0
	ldr	r3, [lr]
	ldr	r1, .L616+76
	.loc 1 2400 0
	strb	ip, [r0, #24]
	.loc 1 2391 0
	strb	r8, [r0, #20]
	.loc 1 2393 0
	strb	r7, [r0, #21]
	.loc 1 2395 0
	strb	r6, [r0, #22]
	.loc 1 2397 0
	strb	r5, [r0, #23]
	.loc 1 2348 0
	add	r4, r0, #64
.LVL338:
	.loc 1 2405 0
	strb	r3, [r2, #25]!
.LVL339:
	add	ip, r0, #57
.LVL340:
.L607:
.LBB110:
	.loc 1 2410 0 discriminator 3
	ldr	r3, [r1, #4]!
	adds	r3, r3, #0
	movne	r3, #1
	strb	r3, [r2, #1]!
.LVL341:
	.loc 1 2409 0 discriminator 3
	cmp	r2, ip
	bne	.L607
.LBE110:
	.loc 1 2413 0
	ldr	r2, .L616+80
.LVL342:
	add	r3, r0, #58
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	ip, r0, #59
.LVL343:
	cmp	r2, #12
	movls	r2, #0
	bls	.L608
	.loc 1 2413 0 is_stmt 0 discriminator 1
	ldr	r2, .L616+84
	ldr	r2, [r2]
	adds	r2, r2, #0
	movne	r2, #1
.L608:
	.loc 1 2418 0 is_stmt 1 discriminator 6
	cmp	r4, ip
	.loc 1 2413 0 discriminator 6
	strb	r2, [r0, #58]
	.loc 1 2418 0 discriminator 6
	bls	.L609
	.loc 1 2418 0 is_stmt 0
	mov	r2, ip
	.loc 1 2419 0 is_stmt 1
	mov	r1, #0
.LVL344:
.L610:
	strb	r1, [r2], #1
.LVL345:
	.loc 1 2418 0
	cmp	r4, r2
	bne	.L610
	rsb	r3, r3, #63
	add	r3, r0, r3
	add	ip, ip, r3
.LVL346:
.L609:
	.loc 1 2421 0
	cmp	ip, r4
	beq	.L611
	.loc 1 2422 0
	ldr	r0, .L616+88
	bl	I_Error
.LVL347:
.L611:
	.loc 1 2425 0
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L617:
	.align	2
.L616:
	.word	monsters_remember
	.word	variable_friction
	.word	weapon_recoil
	.word	allow_pushers
	.word	demo_insurance
	.word	rngseed
	.word	player_bobbing
	.word	respawnparm
	.word	fastparm
	.word	nomonsters
	.word	distfriend
	.word	monster_infighting
	.word	dogs
	.word	dog_jumping
	.word	monster_backing
	.word	monster_avoid_hazards
	.word	monster_friction
	.word	help_friends
	.word	monkeys
	.word	comp-4
	.word	compatibility_level
	.word	forceOldBsp
	.word	.LC17
	.cfi_endproc
.LFE44:
	.size	G_WriteOptions, .-G_WriteOptions
	.align	2
	.global	G_ReadOptions
	.type	G_ReadOptions, %function
G_ReadOptions:
.LFB45:
	.loc 1 2432 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL348:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 2435 0
	ldr	r2, .L623
	ldrb	r1, [r0]	@ zero_extendqisi2
	.loc 1 2437 0
	ldr	r3, .L623+4
	.loc 1 2435 0
	str	r1, [r2]
	.loc 1 2437 0
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	.loc 1 2440 0
	ldr	lr, .L623+8
	.loc 1 2437 0
	str	r2, [r3]
	.loc 1 2440 0
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	.loc 1 2460 0
	ldrb	ip, [r0, #10]	@ zero_extendqisi2
	.loc 1 2469 0
	ldr	r1, .L623+12
	.loc 1 2462 0
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
	.loc 1 2440 0
	str	r4, [lr]
	.loc 1 2464 0
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	.loc 1 2443 0
	ldrb	r9, [r0, #3]	@ zero_extendqisi2
	.loc 1 2469 0
	ldrb	r10, [r1]	@ zero_extendqisi2
	.loc 1 2462 0
	add	r3, r3, ip, asl #8
	.loc 1 2466 0
	ldrb	fp, [r0, #13]	@ zero_extendqisi2
	.loc 1 2443 0
	ldr	r8, .L623+16
	.loc 1 2464 0
	add	r3, r2, r3, asl #8
	.loc 1 2452 0
	ldrb	r4, [r0, #6]	@ zero_extendqisi2
	.loc 1 2466 0
	add	r3, fp, r3, asl #8
	.loc 1 2443 0
	str	r9, [r8]
	.loc 1 2466 0
	ldr	r7, .L623+20
	.loc 1 2448 0
	ldrb	r6, [r0, #5]	@ zero_extendqisi2
	ldr	r5, .L623+24
	.loc 1 2452 0
	ldr	lr, .L623+28
	.loc 1 2453 0
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
	ldr	r1, .L623+32
	.loc 1 2454 0
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	ldr	fp, .L623+36
	.loc 1 2469 0
	cmp	r10, #10
	.loc 1 2456 0
	ldr	r8, .L623+40
	ldrb	r10, [r0, #9]	@ zero_extendqisi2
	.loc 1 2452 0
	str	r4, [lr]
	.loc 1 2466 0
	str	r3, [r7]
	.loc 1 2448 0
	str	r6, [r5]
	.loc 1 2453 0
	str	ip, [r1]
	.loc 1 2454 0
	str	r2, [fp]
	.loc 1 2456 0
	str	r10, [r8]
	.loc 1 2433 0
	add	r4, r0, #64
.LVL349:
	.loc 1 2469 0
	bls	.L619
.LVL350:
	.loc 1 2498 0
	mov	r2, r0
	.loc 1 2481 0
	ldrb	r7, [r0, #18]	@ zero_extendqisi2
	.loc 1 2482 0
	ldrb	ip, [r0, #19]	@ zero_extendqisi2
	.loc 1 2498 0
	ldrb	r8, [r2, #25]!	@ zero_extendqisi2
	ldr	r5, .L623+44
	.loc 1 2482 0
	ldr	r6, .L623+48
	.loc 1 2471 0
	ldr	r1, .L623+52
	ldrb	lr, [r0, #14]	@ zero_extendqisi2
	.loc 1 2474 0
	ldr	r3, .L623+56
	ldrb	fp, [r0, #15]	@ zero_extendqisi2
	.loc 1 2482 0
	add	ip, ip, r7, asl #8
	.loc 1 2498 0
	str	r8, [r5]
	.loc 1 2471 0
	str	lr, [r1]
.LVL351:
	.loc 1 2482 0
	str	ip, [r6]
	.loc 1 2474 0
	str	fp, [r3]
.LVL352:
	.loc 1 2490 0
	ldr	ip, .L623+60
	.loc 1 2484 0
	ldr	r9, .L623+64
	ldrb	r10, [r0, #20]	@ zero_extendqisi2
	.loc 1 2486 0
	ldr	r7, .L623+68
	ldrb	r8, [r0, #21]	@ zero_extendqisi2
	.loc 1 2488 0
	ldr	r5, .L623+72
	ldrb	r6, [r0, #22]	@ zero_extendqisi2
	.loc 1 2490 0
	ldrb	lr, [r0, #23]	@ zero_extendqisi2
	.loc 1 2493 0
	ldr	r1, .L623+76
	ldrb	fp, [r0, #24]	@ zero_extendqisi2
	ldr	r3, .L623+80
	.loc 1 2490 0
	str	lr, [ip]
	.loc 1 2484 0
	str	r10, [r9]
.LVL353:
	.loc 1 2486 0
	str	r8, [r7]
.LVL354:
	.loc 1 2488 0
	str	r6, [r5]
.LVL355:
	.loc 1 2493 0
	str	fp, [r1]
.LVL356:
	add	ip, r3, #128
.LVL357:
.L620:
.LBB111:
	.loc 1 2503 0 discriminator 3
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
.LVL358:
	str	r1, [r3, #4]!
.LVL359:
	.loc 1 2502 0 discriminator 3
	cmp	r3, ip
	bne	.L620
.LVL360:
.LBE111:
	.loc 1 2506 0
	ldrb	r2, [r0, #58]	@ zero_extendqisi2
.LVL361:
	ldr	r3, .L623+84
	str	r2, [r3]
.LVL362:
.L619:
	.loc 1 2513 0
	bl	G_Compatibility
.LVL363:
	.loc 1 2515 0
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L624:
	.align	2
.L623:
	.word	monsters_remember
	.word	variable_friction
	.word	weapon_recoil
	.word	compatibility_level
	.word	allow_pushers
	.word	rngseed
	.word	player_bobbing
	.word	respawnparm
	.word	fastparm
	.word	nomonsters
	.word	demo_insurance
	.word	monkeys
	.word	distfriend
	.word	monster_infighting
	.word	dogs
	.word	help_friends
	.word	monster_backing
	.word	monster_avoid_hazards
	.word	monster_friction
	.word	dog_jumping
	.word	comp-4
	.word	forceOldBsp
	.cfi_endproc
.LFE45:
	.size	G_ReadOptions, .-G_ReadOptions
	.align	2
	.type	G_ReadDemoHeader, %function
G_ReadDemoHeader:
.LFB50:
	.loc 1 2677 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL364:
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
	.loc 1 2688 0
	ldr	ip, .L705
	ldr	r3, .L705+4
	ldr	ip, [ip]
.LBB133:
.LBB134:
	.loc 1 2666 0
	subs	r6, r1, #0
.LBE134:
.LBE133:
	.loc 1 2677 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 2677 0
	mov	r4, r0
.LVL365:
	mov	r7, r2
	.loc 1 2688 0
	str	ip, [r3]
.LVL366:
.LBB137:
.LBB135:
	.loc 1 2666 0
	beq	.L626
.LVL367:
.L629:
.LBE135:
.LBE137:
	.loc 1 2698 0
	ldrb	r5, [r4]	@ zero_extendqisi2
	.loc 1 2699 0
	mov	r2, #0
	.loc 1 2706 0
	sub	r3, r5, #104
	cmp	r5, #4
	cmphi	r3, #7
	.loc 1 2699 0
	ldr	r8, .L705+8
	.loc 1 2698 0
	ldr	r3, .L705+12
	.loc 1 2699 0
	str	r2, [r8]
	.loc 1 2698 0
	str	r5, [r3]
	.loc 1 2706 0
	bls	.L628
	.loc 1 2708 0 discriminator 1
	sub	r2, r5, #200
	.loc 1 2706 0 discriminator 1
	cmp	r2, #14
	bhi	.L699
.L628:
	.loc 1 2713 0
	cmp	r5, #199
	bgt	.L631
.L704:
	.loc 1 2715 0
	cmp	r5, #110
	movgt	r2, #1
	strgt	r2, [r8]
	.loc 1 2719 0
	mov	r2, #0
	.loc 1 2725 0
	mov	r0, #1
	.loc 1 2719 0
	ldr	r10, .L705+16
	.loc 1 2721 0
	ldr	r9, .L705+20
	.loc 1 2723 0
	ldr	lr, .L705+24
	.loc 1 2728 0
	ldr	ip, .L705+28
	.loc 1 2729 0
	ldr	r1, .L705+32
	.loc 1 2743 0
	uxtb	r8, r5
.LVL368:
	sxtb	fp, r8
	.loc 1 2719 0
	str	r2, [r10]
	.loc 1 2721 0
	str	r2, [r9]
	.loc 1 2723 0
	str	r2, [lr]
	.loc 1 2728 0
	str	r2, [ip]
	.loc 1 2729 0
	str	r2, [r1]
	.loc 1 2743 0
	cmp	fp, #99
	.loc 1 2734 0
	ldr	r10, .L705+36
	.loc 1 2732 0
	ldr	fp, .L705+40
	.loc 1 2736 0
	ldr	r9, .L705+44
	.loc 1 2737 0
	ldr	lr, .L705+48
	.loc 1 2738 0
	ldr	ip, .L705+52
	.loc 1 2725 0
	ldr	r1, .L705+56
	.loc 1 2732 0
	str	r2, [fp]
	.loc 1 2734 0
	str	r2, [r10]
	.loc 1 2736 0
	str	r2, [r9]
	.loc 1 2737 0
	str	r2, [lr]
	.loc 1 2738 0
	str	r2, [ip]
	.loc 1 2725 0
	str	r0, [r1]
	.loc 1 2743 0
	ble	.L633
.LVL369:
.LBB138:
.LBB139:
	.loc 1 2666 0
	cmp	r6, #8
	bls	.L700
.L634:
.LVL370:
.LBE139:
.LBE138:
.LBB141:
.LBB142:
.LBB143:
	.loc 1 2648 0
	ldr	r0, .L705+60
	bl	M_CheckParm
.LVL371:
	.loc 1 2649 0
	cmp	r0, #0
	beq	.L639
	ldr	r3, .L705+64
	add	r0, r0, #1
.LVL372:
	ldr	r3, [r3]
	cmp	r0, r3
	blt	.L701
.LVL373:
.L639:
.LBE143:
	.loc 1 2656 0
	cmp	r5, #106
	ble	.L702
	.loc 1 2657 0
	ldr	r3, .L705+68
	ldrb	r8, [r3]	@ zero_extendqisi2
	cmp	r8, #3
	beq	.L637
	.loc 1 2658 0
	ldr	r3, .L705+72
	ldrb	r8, [r3]	@ zero_extendqisi2
	cmp	r8, #1
	movhi	r8, #4
	movls	r8, #2
.L637:
.LBE142:
.LBE141:
	.loc 1 2753 0
	ldr	lr, .L705+76
	ldrb	fp, [r4, #4]	@ zero_extendqisi2
	.loc 1 2754 0
	ldr	r0, .L705+80
	.loc 1 2755 0
	ldr	r2, .L705+84
	.loc 1 2749 0
	ldr	r5, .L705+88
.LVL374:
	.loc 1 2754 0
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	.loc 1 2755 0
	ldrb	r1, [r4, #6]	@ zero_extendqisi2
	.loc 1 2751 0
	ldrb	r10, [r4, #2]	@ zero_extendqisi2
	.loc 1 2752 0
	ldrb	r9, [r4, #3]	@ zero_extendqisi2
	.loc 1 2756 0
	ldrb	r3, [r4, #7]	@ zero_extendqisi2
	.loc 1 2749 0
	strb	r8, [r5]
.LVL375:
	.loc 1 2750 0
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
.LVL376:
	.loc 1 2753 0
	str	fp, [lr]
.LVL377:
	.loc 1 2755 0
	str	r1, [r2]
	.loc 1 2757 0
	ldr	lr, .L705+92
	.loc 1 2754 0
	str	ip, [r0]
.LVL378:
	.loc 1 2756 0
	ldr	r2, .L705+96
	.loc 1 2757 0
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	.loc 1 2756 0
	str	r3, [r2]
	.loc 1 2757 0
	str	r0, [lr]
	add	fp, r4, #9
.LVL379:
	b	.L640
.LVL380:
.L631:
	.loc 1 2776 0
	sub	r5, r5, #200
	.loc 1 2775 0
	add	r9, r4, #7
.LVL381:
	.loc 1 2776 0
	cmp	r5, #14
	ldrls	pc, [pc, r5, asl #2]
	b	.L644
.L646:
	.word	.L645
	.word	.L645
	.word	.L647
	.word	.L648
	.word	.L644
	.word	.L644
	.word	.L644
	.word	.L644
	.word	.L644
	.word	.L644
	.word	.L649
	.word	.L650
	.word	.L651
	.word	.L652
	.word	.L653
.L647:
.LVL382:
.LBB148:
.LBB149:
	.loc 1 2666 0
	cmp	r6, #8
	bcc	.L658
.L661:
.LVL383:
.LBE149:
.LBE148:
	.loc 1 2793 0
	ldrb	r2, [r4, #7]	@ zero_extendqisi2
	add	r9, r4, #8
.LVL384:
	cmp	r2, #0
	bne	.L695
	.loc 1 2794 0
	mov	r2, #9
	ldr	r5, .L705+88
	strb	r2, [r5]
.LVL385:
.L644:
.LBB151:
.LBB152:
	.loc 1 2665 0
	rsb	r2, r4, r9
	.loc 1 2666 0
	add	r2, r2, #5
	cmp	r6, r2
	bcc	.L664
.L667:
.LVL386:
.LBE152:
.LBE151:
	.loc 1 2842 0
	add	r5, r9, #5
.LBB154:
.LBB155:
	.loc 1 2665 0
	rsb	r2, r4, r5
.LBE155:
.LBE154:
	.loc 1 2841 0
	ldrb	lr, [r9, #3]	@ zero_extendqisi2
	.loc 1 2842 0
	ldrb	r0, [r9, #4]	@ zero_extendqisi2
.LBB160:
.LBB156:
	.loc 1 2666 0
	add	r2, r2, #64
.LBE156:
.LBE160:
	.loc 1 2841 0
	ldr	ip, .L705+76
	.loc 1 2842 0
	ldr	r1, .L705+92
.LBB161:
.LBB157:
	.loc 1 2666 0
	cmp	r6, r2
.LBE157:
.LBE161:
	.loc 1 2838 0
	ldrb	r8, [r9]	@ zero_extendqisi2
.LVL387:
	.loc 1 2839 0
	ldrb	r10, [r9, #1]	@ zero_extendqisi2
.LVL388:
	.loc 1 2840 0
	ldrb	r9, [r9, #2]	@ zero_extendqisi2
.LVL389:
	.loc 1 2841 0
	str	lr, [ip]
	.loc 1 2842 0
	str	r0, [r1]
.LVL390:
.LBB162:
.LBB158:
	.loc 1 2666 0
	bcc	.L703
.LVL391:
.L666:
.LBE158:
.LBE162:
	.loc 1 2852 0
	mov	r0, r5
	str	r3, [sp, #4]
	bl	G_ReadOptions
.LVL392:
	.loc 1 2854 0
	ldr	r3, [sp, #4]
	ldr	r5, .L705+88
.LVL393:
	ldr	r3, [r3]
	.loc 1 2852 0
	mov	fp, r0
.LVL394:
	.loc 1 2854 0
	cmp	r3, #200
	.loc 1 2855 0
	addeq	fp, r0, #192
.LVL395:
.L643:
	.loc 1 2860 0
	ldrb	r2, [r5]	@ zero_extendqisi2
	ldr	r3, .L705+100
	mov	r0, #1
	add	r3, r3, r2, asl #2
	ldr	r2, [r3, #320]
	ldr	r1, .L705+104
	bl	lprintf
.LVL396:
	.loc 1 2863 0
	ldrb	r3, [r5]	@ zero_extendqisi2
.LBB163:
.LBB164:
	.loc 1 2665 0
	rsb	r4, r4, fp
.LVL397:
.LBE164:
.LBE163:
	.loc 1 2863 0
	cmp	r3, #6
.LBB168:
.LBB165:
	.loc 1 2666 0
	add	r4, r4, #4
.LBE165:
.LBE168:
	.loc 1 2863 0
	bhi	.L669
.LVL398:
.LBB169:
.LBB166:
	.loc 1 2666 0
	cmp	r6, r4
	bcc	.L670
.L672:
.LVL399:
	ldr	r0, .L705+108
	add	r4, fp, #4
.LVL400:
	mov	r3, r0
.LVL401:
.L671:
.LBE166:
.LBE169:
	.loc 1 2870 0 discriminator 3
	ldrb	r2, [fp], #1	@ zero_extendqisi2
.LVL402:
	.loc 1 2869 0 discriminator 3
	cmp	fp, r4
	.loc 1 2870 0 discriminator 3
	str	r2, [r3], #4
.LVL403:
	.loc 1 2869 0 discriminator 3
	bne	.L671
.LVL404:
.L673:
	.loc 1 2885 0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	.loc 1 2887 0
	movne	r3, #1
	ldrne	r1, .L705+112
	.loc 1 2888 0
	ldrne	r2, .L705+116
	.loc 1 2887 0
	strne	r3, [r1]
	.loc 1 2888 0
	strne	r3, [r2, #2288]
	.loc 1 2891 0
	ldr	r3, .L705+120
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L678
	.loc 1 2892 0
	sxtb	r0, r8
	mov	r1, r10
	mov	r2, r9
	bl	G_InitNew
.LVL405:
.L678:
	.loc 1 2896 0 discriminator 1
	mov	r2, #0
	.loc 1 2898 0 discriminator 1
	mov	r0, r4
	.loc 1 2896 0 discriminator 1
	ldr	r3, .L705+124
	str	r2, [r3, #200]
.LVL406:
	str	r2, [r3, #484]
.LVL407:
	str	r2, [r3, #768]
.LVL408:
	str	r2, [r3, #1052]
.LVL409:
	.loc 1 2899 0 discriminator 1
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL410:
.L669:
	.cfi_restore_state
.LBB170:
.LBB171:
	.loc 1 2666 0
	cmp	r6, r4
	bcc	.L674
.L676:
.LVL411:
	ldr	r0, .L705+108
.LBE171:
.LBE170:
.LBB173:
.LBB145:
	.loc 1 2658 0
	mov	r3, fp
	mov	r2, r0
	add	ip, fp, #4
.LVL412:
.L675:
.LBE145:
.LBE173:
	.loc 1 2881 0 discriminator 3
	ldrb	r1, [r3], #1	@ zero_extendqisi2
.LVL413:
	.loc 1 2880 0 discriminator 3
	cmp	r3, ip
	.loc 1 2881 0 discriminator 3
	str	r1, [r2], #4
.LVL414:
	.loc 1 2880 0 discriminator 3
	bne	.L675
	.loc 1 2882 0
	add	r4, fp, #32
.LVL415:
	b	.L673
.LVL416:
.L626:
.LBB174:
.LBB136:
	mov	r0, r2
.LVL417:
	bl	CheckForOverrun.part.0
.LVL418:
.LBE136:
.LBE174:
	.loc 1 2695 0
	cmp	r0, #0
	beq	.L629
.LVL419:
.L635:
	.loc 1 2696 0
	mov	r0, #0
	.loc 1 2899 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL420:
.L633:
	.cfi_restore_state
.LBB175:
.LBB176:
	.loc 1 2666 0
	cmp	r6, #2
	bls	.L641
.L642:
.LBE176:
.LBE175:
	.loc 1 2765 0
	mov	r3, #0
	.loc 1 2769 0
	ldr	lr, .L705+92
	ldr	ip, .L705+96
	.loc 1 2768 0
	ldr	r0, .L705+84
	ldr	r1, .L705+80
	ldr	r2, .L705+76
	.loc 1 2765 0
	ldr	r5, .L705+88
	.loc 1 2766 0
	ldrb	r10, [r4, #1]	@ zero_extendqisi2
	.loc 1 2767 0
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	.loc 1 2765 0
	strb	r3, [r5]
.LVL421:
	.loc 1 2769 0
	str	r3, [lr]
	str	r3, [ip]
	.loc 1 2768 0
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	.loc 1 2767 0
	add	fp, r4, #3
.LVL422:
.L640:
	.loc 1 2771 0
	bl	G_Compatibility
.LVL423:
	b	.L643
.LVL424:
.L699:
	.loc 1 2710 0
	mov	r1, r5
	ldr	r0, .L705+128
	str	r3, [sp, #4]
	bl	I_Error
.LVL425:
	ldr	r3, [sp, #4]
	ldr	r5, [r3]
	.loc 1 2713 0
	cmp	r5, #199
	bgt	.L631
	b	.L704
.LVL426:
.L641:
.LBB178:
.LBB177:
	mov	r0, r7
	bl	CheckForOverrun.part.0
.LVL427:
.LBE177:
.LBE178:
	.loc 1 2762 0
	cmp	r0, #0
	beq	.L642
	b	.L635
.LVL428:
.L700:
.LBB179:
.LBB140:
	mov	r0, r7
	str	r3, [sp, #4]
	bl	CheckForOverrun.part.0
.LVL429:
.LBE140:
.LBE179:
	.loc 1 2746 0
	cmp	r0, #0
	ldr	r3, [sp, #4]
	bne	.L635
	ldr	r5, [r3]
	b	.L634
.LVL430:
.L645:
.LBB180:
.LBB181:
	.loc 1 2666 0
	cmp	r6, #8
	bcc	.L654
.L657:
.LVL431:
.LBE181:
.LBE180:
	.loc 1 2783 0
	ldrb	r2, [r4, #7]	@ zero_extendqisi2
	add	r9, r4, #8
.LVL432:
	cmp	r2, #0
	bne	.L695
	.loc 1 2784 0
	mov	r2, #8
	ldr	r5, .L705+88
	strb	r2, [r5]
	b	.L644
.LVL433:
.L653:
	.loc 1 2829 0
	mov	r2, #17
	.loc 1 2830 0
	mov	r1, #1
	.loc 1 2829 0
	ldr	r5, .L705+88
	.loc 1 2830 0
	str	r1, [r8]
.LVL434:
	.loc 1 2829 0
	strb	r2, [r5]
	.loc 1 2831 0
	add	r9, r4, #8
.LVL435:
	.loc 1 2832 0
	b	.L644
.L652:
	.loc 1 2825 0
	mov	r2, #16
	ldr	r5, .L705+88
	.loc 1 2826 0
	add	r9, r4, #8
.LVL436:
	.loc 1 2825 0
	strb	r2, [r5]
.LVL437:
	.loc 1 2827 0
	b	.L644
.L651:
	.loc 1 2821 0
	mov	r2, #15
	ldr	r5, .L705+88
	.loc 1 2822 0
	add	r9, r4, #8
.LVL438:
	.loc 1 2821 0
	strb	r2, [r5]
.LVL439:
	.loc 1 2823 0
	b	.L644
.L650:
	.loc 1 2817 0
	mov	r2, #14
	ldr	r5, .L705+88
	.loc 1 2818 0
	add	r9, r4, #8
.LVL440:
	.loc 1 2817 0
	strb	r2, [r5]
.LVL441:
	.loc 1 2819 0
	b	.L644
.L649:
	.loc 1 2813 0
	mov	r2, #13
	ldr	r5, .L705+88
	.loc 1 2814 0
	add	r9, r4, #8
.LVL442:
	.loc 1 2813 0
	strb	r2, [r5]
.LVL443:
	.loc 1 2815 0
	b	.L644
.L648:
	.loc 1 2801 0
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	cmp	r2, #66
	beq	.L662
	cmp	r2, #77
	.loc 1 2807 0
	moveq	r2, #11
	ldreq	r5, .L705+88
	.loc 1 2808 0
	addeq	r9, r4, #8
.LVL444:
	.loc 1 2807 0
	streqb	r2, [r5]
.LVL445:
	.loc 1 2809 0
	b	.L644
.LVL446:
.L664:
.LBB183:
.LBB153:
	mov	r0, r7
	str	r3, [sp, #4]
	bl	CheckForOverrun.part.0
.LVL447:
.LBE153:
.LBE183:
	.loc 1 2835 0
	cmp	r0, #0
	ldr	r3, [sp, #4]
	beq	.L667
	b	.L635
.LVL448:
.L703:
.LBB184:
.LBB159:
	mov	r0, r7
	str	r3, [sp, #4]
	bl	CheckForOverrun.part.0
.LVL449:
.LBE159:
.LBE184:
	.loc 1 2849 0
	cmp	r0, #0
	ldr	r3, [sp, #4]
	bne	.L635
	b	.L666
.LVL450:
.L670:
.LBB185:
.LBB167:
	mov	r0, r7
	bl	CheckForOverrun.part.0
.LVL451:
.LBE167:
.LBE185:
	.loc 1 2866 0
	cmp	r0, #0
	beq	.L672
	b	.L635
.LVL452:
.L674:
.LBB186:
.LBB172:
	mov	r0, r7
	bl	CheckForOverrun.part.0
.LVL453:
.LBE172:
.LBE186:
	.loc 1 2877 0
	cmp	r0, #0
	beq	.L676
	b	.L635
.LVL454:
.L702:
.LBB187:
.LBB146:
	.loc 1 2656 0
	mov	r8, #1
	b	.L637
.LVL455:
.L662:
.LBE146:
.LBE187:
	.loc 1 2804 0
	mov	r2, #10
	ldr	r5, .L705+88
	strb	r2, [r5]
	.loc 1 2805 0
	b	.L644
.LVL456:
.L654:
.LBB188:
.LBB182:
	mov	r0, r7
	str	r3, [sp, #4]
	bl	CheckForOverrun.part.0
.LVL457:
.LBE182:
.LBE188:
	.loc 1 2780 0
	cmp	r0, #0
	ldr	r3, [sp, #4]
	beq	.L657
	b	.L635
.LVL458:
.L658:
.LBB189:
.LBB150:
	mov	r0, r7
	str	r3, [sp, #4]
	bl	CheckForOverrun.part.0
.LVL459:
.LBE150:
.LBE189:
	.loc 1 2790 0
	cmp	r0, #0
	ldr	r3, [sp, #4]
	beq	.L661
	b	.L635
.LVL460:
.L695:
	.loc 1 2796 0
	mov	r2, #7
	ldr	r5, .L705+88
	strb	r2, [r5]
	b	.L644
.LVL461:
.L701:
.LBB190:
.LBB147:
.LBB144:
	.loc 1 2651 0
	ldr	r3, .L705+132
	ldr	r3, [r3]
	ldr	r0, [r3, r0, asl #2]
.LVL462:
	bl	atoi
.LVL463:
	.loc 1 2652 0
	cmp	r0, #0
	uxtbge	r8, r0
.LVL464:
	bge	.L637
	b	.L639
.L706:
	.align	2
.L705:
	.word	gametic
	.word	basetic
	.word	longtics
	.word	demover
	.word	variable_friction
	.word	weapon_recoil
	.word	allow_pushers
	.word	dogs
	.word	dog_jumping
	.word	monster_avoid_hazards
	.word	monster_backing
	.word	monster_friction
	.word	help_friends
	.word	monkeys
	.word	monster_infighting
	.word	.LC16
	.word	myargc
	.word	gamemode
	.word	gamemission
	.word	deathmatch
	.word	respawnparm
	.word	fastparm
	.word	compatibility_level
	.word	consoleplayer
	.word	nomonsters
	.word	.LANCHOR1
	.word	.LC19
	.word	playeringame
	.word	netgame
	.word	.LANCHOR0
	.word	gameaction
	.word	players
	.word	.LC18
	.word	myargv
.LBE144:
.LBE147:
.LBE190:
	.cfi_endproc
.LFE50:
	.size	G_ReadDemoHeader, .-G_ReadDemoHeader
	.align	2
	.global	G_RecordDemo
	.type	G_RecordDemo, %function
G_RecordDemo:
.LFB43:
	.loc 1 2283 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL465:
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
	.loc 1 2285 0
	mov	r4, #0
	ldr	r3, .L734
	.loc 1 2283 0
	sub	sp, sp, #204
	.cfi_def_cfa_offset 240
	.loc 1 2285 0
	str	r4, [r3]
	.loc 1 2283 0
	mov	r10, r0
	.loc 1 2286 0
	bl	strlen
.LVL466:
	mov	r2, r4
	mov	r1, #1
	add	r0, r0, #5
	bl	Z_Malloc
.LVL467:
	mov	r6, r0
.LVL468:
	.loc 1 2288 0
	mov	r8, #1
	.loc 1 2287 0
	mov	r1, r10
	bl	strcpy
.LVL469:
	ldr	r1, .L734+4
	bl	AddDefaultExtension
.LVL470:
	.loc 1 2288 0
	ldr	r3, .L734+8
	.loc 1 2292 0
	mov	r1, r4
	mov	r0, r6
	.loc 1 2288 0
	str	r8, [r3]
	.loc 1 2292 0
	bl	access
.LVL471:
	subs	r7, r0, #0
	.loc 1 2293 0
	mov	r0, r6
	.loc 1 2292 0
	beq	.L708
	.loc 1 2293 0
	ldr	r1, .L734+12
	bl	fopen
.LVL472:
	ldr	r3, .L734+16
	str	r0, [r3, #2296]
.L709:
	.loc 1 2332 0
	cmp	r0, #0
	beq	.L720
	.loc 1 2333 0
	mov	r0, r6
	bl	Z_Free
.LVL473:
	.loc 1 2334 0
	add	sp, sp, #204
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL474:
.L708:
	.cfi_restore_state
	.loc 1 2295 0
	ldr	r1, .L734+20
	bl	fopen
.LVL475:
	ldr	r4, .L734+16
	.loc 1 2296 0
	cmp	r0, #0
	.loc 1 2295 0
	str	r0, [r4, #2296]
	.loc 1 2296 0
	beq	.L720
.LVL476:
.LBB191:
.LBB192:
	.loc 1 2304 0
	mov	r3, r0
	mov	r1, r8
	mov	r2, #200
	mov	r0, sp
	bl	fread
.LVL477:
	.loc 1 2305 0
	mov	r2, r7
	.loc 1 2304 0
	mov	r1, r0
.LVL478:
	.loc 1 2305 0
	mov	r0, sp
.LVL479:
	bl	G_ReadDemoHeader
.LVL480:
	.loc 1 2306 0
	cmp	r0, #0
	.loc 1 2304 0
	mov	r5, sp
	.loc 1 2306 0
	beq	.L721
	.loc 1 2308 0
	mov	r2, r7
	rsb	r1, r5, r0
	ldr	r0, [r4, #2296]
.LVL481:
	bl	fseek
.LVL482:
.LBE192:
	.loc 1 2311 0
	ldr	r3, .L734+24
	mvn	fp, #0
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r7, #5
	moveq	r7, #4
.LBB193:
	.loc 1 2319 0
	add	r3, sp, #200
.LBE193:
	.loc 1 2311 0
	mov	r8, r7
.LVL483:
.LBB194:
	.loc 1 2319 0
	add	r9, r3, r7
	b	.L716
.LVL484:
.L715:
.LBE194:
	.loc 1 2322 0
	cmp	r8, r0
	bne	.L717
.LVL485:
.L716:
.LBB195:
	.loc 1 2317 0
	ldr	r3, [r4, #2296]
	mov	r0, r5
	mov	r1, #1
	mov	r2, r7
	bl	fread
.LVL486:
	.loc 1 2318 0
	ldrb	r3, [sp]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L717
	.loc 1 2319 0
	ldrb	r3, [r9, #-201]	@ zero_extendqisi2
	tst	r3, #128
	beq	.L715
	.loc 1 2320 0
	and	r2, r3, #3
	cmp	r2, #2
	.loc 1 2321 0
	andeq	fp, r3, #28
	moveq	fp, fp, asr #2
.LVL487:
.LBE195:
	.loc 1 2322 0
	cmp	r8, r0
	beq	.L716
.LVL488:
.L717:
	.loc 1 2324 0
	cmn	fp, #1
	rsb	r7, r0, #0
.LVL489:
	beq	.L721
.LVL490:
.L719:
	.loc 1 2327 0
	mov	r2, #1
	mov	r1, r7
	ldr	r0, [r4, #2296]
	bl	fseek
.LVL491:
	.loc 1 2328 0
	mov	r0, fp
	mov	r1, #0
	bl	G_LoadGame
.LVL492:
	.loc 1 2329 0
	mov	r2, #0
	ldr	r3, .L734+28
	ldr	r0, [r4, #2296]
	str	r2, [r3]
	b	.L709
.L720:
.LBE191:
	.loc 1 2332 0
	mov	r1, r10
	ldr	r0, .L734+32
	bl	I_Error
.LVL493:
	.loc 1 2333 0
	mov	r0, r6
	bl	Z_Free
.LVL494:
	.loc 1 2334 0
	add	sp, sp, #204
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL495:
.L721:
	.cfi_restore_state
.LBB196:
	.loc 1 2324 0 discriminator 1
	ldr	r0, .L734+36
	bl	I_Error
.LVL496:
	mvn	fp, #0
	b	.L719
.L735:
	.align	2
.L734:
	.word	usergame
	.word	.LC20
	.word	demorecording
	.word	.LC21
	.word	.LANCHOR0
	.word	.LC22
	.word	longtics
	.word	autostart
	.word	.LC23
	.word	.LC24
.LBE196:
	.cfi_endproc
.LFE43:
	.size	G_RecordDemo, .-G_RecordDemo
	.align	2
	.global	G_BeginRecording
	.type	G_BeginRecording, %function
G_BeginRecording:
.LFB46:
	.loc 1 2518 0
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
	.loc 1 2522 0
	mov	r4, #0
	.loc 1 2521 0
	mov	r0, #1000
	mov	r1, #1
	mov	r2, r4
	bl	Z_Malloc
.LVL497:
	.loc 1 2525 0
	ldr	r3, .L769
	.loc 1 2522 0
	ldr	r6, .L769+4
	.loc 1 2525 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2521 0
	mov	r5, r0
.LVL498:
	.loc 1 2525 0
	cmp	r3, #10
	.loc 1 2522 0
	str	r4, [r6]
	.loc 1 2525 0
	bls	.L737
.LVL499:
.LBB197:
	.loc 1 2528 0
	sub	r3, r3, #11
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L758
.L740:
	.word	.L739
	.word	.L758
	.word	.L741
	.word	.L742
	.word	.L743
	.word	.L744
	.word	.L745
.LVL500:
.L737:
.LBE197:
	.loc 1 2572 0
	cmp	r3, #7
	bls	.L749
.LVL501:
.LBB198:
	.loc 1 2574 0
	cmp	r3, #8
	.loc 1 2576 0
	moveq	r4, #201
	.loc 1 2574 0
	beq	.L751
	cmp	r3, #9
	.loc 1 2577 0
	moveq	r4, #202
	.loc 1 2574 0
	bne	.L768
.LVL502:
.L751:
	.loc 1 2585 0
	mov	r3, #111
	.loc 1 2583 0
	mov	r10, #29
	.loc 1 2584 0
	mov	r9, #66
	.loc 1 2591 0
	mov	r2, #0
	.loc 1 2587 0
	mov	r0, #109
	.loc 1 2588 0
	mvn	r1, #25
	.loc 1 2594 0
	ldr	r7, .L769+8
	.loc 1 2595 0
	ldr	r6, .L769+12
	.loc 1 2596 0
	ldr	r8, .L769+16
	.loc 1 2597 0
	ldr	lr, .L769+20
	.loc 1 2593 0
	ldr	ip, .L769+24
	.loc 1 2580 0
	strb	r4, [r5]
.LVL503:
	.loc 1 2585 0
	strb	r3, [r5, #3]
	.loc 1 2583 0
	strb	r10, [r5, #1]
.LVL504:
	.loc 1 2584 0
	strb	r9, [r5, #2]
.LVL505:
	.loc 1 2593 0
	ldrb	ip, [ip]	@ zero_extendqisi2
	.loc 1 2594 0
	ldr	r7, [r7]
	.loc 1 2595 0
	ldr	r6, [r6]
	.loc 1 2596 0
	ldr	r4, [r8]
.LVL506:
	.loc 1 2597 0
	ldr	lr, [lr]
	.loc 1 2586 0
	strb	r3, [r5, #4]
.LVL507:
	.loc 1 2593 0
	strb	ip, [r5, #8]
	.loc 1 2587 0
	strb	r0, [r5, #5]
.LVL508:
	.loc 1 2591 0
	strb	r2, [r5, #7]
	.loc 1 2594 0
	strb	r7, [r5, #9]
	.loc 1 2595 0
	strb	r6, [r5, #10]
	.loc 1 2596 0
	strb	r4, [r5, #11]
	.loc 1 2597 0
	strb	lr, [r5, #12]
	.loc 1 2588 0
	strb	r1, [r5, #6]
.LVL509:
	.loc 1 2599 0
	add	r0, r5, #13
.LVL510:
	bl	G_WriteOptions
.LVL511:
	ldr	r2, .L769+28
	sub	r3, r0, #1
	add	ip, r0, #3
.LVL512:
.L753:
	.loc 1 2602 0 discriminator 3
	ldr	r1, [r2], #4
	strb	r1, [r3, #1]!
.LVL513:
	.loc 1 2601 0 discriminator 3
	cmp	r3, ip
	bne	.L753
	.loc 1 2609 0
	mov	r2, #0
	add	r3, r0, #4
.LVL514:
	add	r0, r0, #32
.L754:
.LVL515:
	.loc 1 2609 0 is_stmt 0 discriminator 2
	strb	r2, [r3], #1
.LVL516:
	.loc 1 2608 0 is_stmt 1 discriminator 2
	cmp	r3, r0
	bne	.L754
.LVL517:
.L748:
.LBE198:
	.loc 1 2625 0
	ldr	r1, .L769+32
	rsb	r4, r5, r3
	mov	r2, r4
	ldr	r3, [r1, #2296]
.LVL518:
	mov	r0, r5
	mov	r1, #1
	bl	fwrite
.LVL519:
	cmp	r4, r0
	beq	.L757
	.loc 1 2626 0
	ldr	r0, .L769+36
	bl	I_Error
.LVL520:
.L757:
	.loc 1 2627 0
	mov	r0, r5
	.loc 1 2628 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL521:
	.loc 1 2627 0
	b	Z_Free
.LVL522:
.L749:
	.cfi_restore_state
	.loc 1 2611 0
	ldr	r0, .L769+40
.LVL523:
	bl	M_CheckParm
.LVL524:
	.loc 1 2612 0
	cmp	r0, #0
	movne	r1, #111
	moveq	r1, #109
	.loc 1 2620 0
	mov	r3, r5
	.loc 1 2613 0
	ldr	r2, .L769+24
	.loc 1 2611 0
	str	r0, [r6]
.LVL525:
	.loc 1 2612 0
	strb	r1, [r5]
.LVL526:
	.loc 1 2613 0
	ldrb	r1, [r2]	@ zero_extendqisi2
	.loc 1 2614 0
	ldr	r2, .L769+8
	.loc 1 2613 0
	strb	r1, [r5, #1]
.LVL527:
	.loc 1 2614 0
	ldr	r1, [r2]
	.loc 1 2615 0
	ldr	r2, .L769+12
	.loc 1 2614 0
	strb	r1, [r5, #2]
.LVL528:
	.loc 1 2615 0
	ldr	r4, [r2]
	.loc 1 2616 0
	ldr	lr, .L769+16
	.loc 1 2617 0
	ldr	ip, .L769+44
	.loc 1 2618 0
	ldr	r0, .L769+48
	.loc 1 2619 0
	ldr	r1, .L769+52
	.loc 1 2620 0
	ldr	r2, .L769+20
	.loc 1 2615 0
	strb	r4, [r5, #3]
.LVL529:
	.loc 1 2616 0
	ldr	r4, [lr]
	.loc 1 2617 0
	ldr	lr, [ip]
	.loc 1 2618 0
	ldr	ip, [r0]
	.loc 1 2619 0
	ldr	r0, [r1]
	.loc 1 2620 0
	ldr	r1, [r2]
	ldr	r2, .L769+28
	.loc 1 2619 0
	strb	r0, [r5, #7]
	.loc 1 2616 0
	strb	r4, [r5, #4]
.LVL530:
	.loc 1 2617 0
	strb	lr, [r5, #5]
.LVL531:
	.loc 1 2618 0
	strb	ip, [r5, #6]
.LVL532:
	add	r0, r5, #12
	.loc 1 2620 0
	strb	r1, [r3, #8]!
.LVL533:
.L756:
	.loc 1 2622 0 discriminator 3
	ldr	r1, [r2], #4
	strb	r1, [r3, #1]!
.LVL534:
	.loc 1 2621 0 discriminator 3
	cmp	r3, r0
	bne	.L756
	add	r3, r5, #13
.LVL535:
	b	.L748
.LVL536:
.L768:
.LBB199:
	.loc 1 2578 0
	ldr	r0, .L769+56
.LVL537:
	bl	I_Error
.LVL538:
	b	.L751
.LVL539:
.L742:
.LBE199:
.LBB200:
	.loc 1 2531 0
	mov	r10, #211
.LVL540:
.L738:
.LBE200:
	.loc 1 2543 0
	mov	r9, #29
	.loc 1 2544 0
	mov	r8, #77
	.loc 1 2545 0
	mov	r7, #66
	.loc 1 2548 0
	mov	r3, #0
	.loc 1 2547 0
	mvn	r2, #25
	.loc 1 2546 0
	mov	r1, #70
	.loc 1 2555 0
	ldr	r6, .L769+8
	.loc 1 2556 0
	ldr	r4, .L769+12
	.loc 1 2557 0
	ldr	lr, .L769+16
	.loc 1 2558 0
	ldr	ip, .L769+20
	.loc 1 2554 0
	ldr	r0, .L769+24
.LVL541:
.LBB201:
	.loc 1 2539 0
	strb	r10, [r5]
.LVL542:
.LBE201:
	.loc 1 2543 0
	strb	r9, [r5, #1]
.LVL543:
	.loc 1 2544 0
	strb	r8, [r5, #2]
.LVL544:
	.loc 1 2545 0
	strb	r7, [r5, #3]
.LVL545:
	.loc 1 2558 0
	ldr	ip, [ip]
	.loc 1 2554 0
	ldrb	r0, [r0]	@ zero_extendqisi2
	.loc 1 2555 0
	ldr	r6, [r6]
	.loc 1 2556 0
	ldr	r4, [r4]
	.loc 1 2557 0
	ldr	lr, [lr]
	.loc 1 2558 0
	strb	ip, [r5, #12]
	.loc 1 2554 0
	strb	r0, [r5, #8]
	.loc 1 2547 0
	strb	r2, [r5, #5]
	.loc 1 2548 0
	strb	r3, [r5, #6]
	.loc 1 2552 0
	strb	r3, [r5, #7]
	.loc 1 2555 0
	strb	r6, [r5, #9]
	.loc 1 2556 0
	strb	r4, [r5, #10]
	.loc 1 2557 0
	strb	lr, [r5, #11]
	.loc 1 2546 0
	strb	r1, [r5, #4]
.LVL546:
	.loc 1 2560 0
	add	r0, r5, #13
.LVL547:
	bl	G_WriteOptions
.LVL548:
	ldr	r2, .L769+28
	sub	r3, r0, #1
	add	ip, r0, #3
.LVL549:
.L746:
	.loc 1 2563 0 discriminator 3
	ldr	r1, [r2], #4
	strb	r1, [r3, #1]!
.LVL550:
	.loc 1 2562 0 discriminator 3
	cmp	r3, ip
	bne	.L746
	.loc 1 2570 0
	mov	r2, #0
	add	r3, r0, #4
.LVL551:
	add	r0, r0, #32
.L747:
.LVL552:
	.loc 1 2570 0 is_stmt 0 discriminator 2
	strb	r2, [r3], #1
.LVL553:
	.loc 1 2569 0 is_stmt 1 discriminator 2
	cmp	r3, r0
	bne	.L747
	b	.L748
.LVL554:
.L743:
.LBB202:
	.loc 1 2532 0
	mov	r10, #212
	b	.L738
.LVL555:
.L744:
	.loc 1 2533 0
	mov	r10, #213
	b	.L738
.LVL556:
.L745:
	.loc 1 2536 0
	mov	r3, #1
	.loc 1 2535 0
	mov	r10, #214
	.loc 1 2536 0
	str	r3, [r6]
	.loc 1 2537 0
	b	.L738
.LVL557:
.L739:
	.loc 1 2529 0
	mov	r10, #203
	b	.L738
.L741:
.LVL558:
	.loc 1 2530 0
	mov	r10, #210
	b	.L738
.LVL559:
.L758:
	.loc 1 2527 0
	mov	r10, #0
	b	.L738
.L770:
	.align	2
.L769:
	.word	compatibility_level
	.word	longtics
	.word	gameepisode
	.word	gamemap
	.word	deathmatch
	.word	consoleplayer
	.word	gameskill
	.word	playeringame
	.word	.LANCHOR0
	.word	.LC27
	.word	.LC26
	.word	respawnparm
	.word	fastparm
	.word	nomonsters
	.word	.LC25
.LBE202:
	.cfi_endproc
.LFE46:
	.size	G_BeginRecording, .-G_BeginRecording
	.align	2
	.global	G_DeferedPlayDemo
	.type	G_DeferedPlayDemo, %function
G_DeferedPlayDemo:
.LFB47:
	.loc 1 2637 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL560:
	.loc 1 2639 0
	mov	r1, #5
	ldr	r2, .L772
	.loc 1 2638 0
	ldr	r3, .L772+4
	.loc 1 2639 0
	strb	r1, [r2]
	.loc 1 2638 0
	str	r0, [r3, #2300]
	bx	lr
.L773:
	.align	2
.L772:
	.word	gameaction
	.word	.LANCHOR0
	.cfi_endproc
.LFE47:
	.size	G_DeferedPlayDemo, .-G_DeferedPlayDemo
	.align	2
	.global	G_DoPlayDemo
	.type	G_DoPlayDemo, %function
G_DoPlayDemo:
.LFB51:
	.loc 1 2902 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 2906 0
	mov	r5, #0
	.loc 1 2905 0
	ldr	r4, .L776
	.loc 1 2902 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 1 2905 0
	add	r1, sp, #4
	ldr	r0, [r4, #2300]
	bl	ExtractFileBase
.LVL561:
	.loc 1 2909 0
	add	r0, sp, #4
	.loc 1 2906 0
	strb	r5, [sp, #12]
	.loc 1 2909 0
	bl	W_GetNumForName
.LVL562:
	ldr	r6, .L776+4
	str	r0, [r6, #392]
	.loc 1 2910 0
	bl	W_CacheLumpNum
.LVL563:
	str	r0, [r4, #2304]
	.loc 1 2911 0
	ldr	r0, [r6, #392]
	bl	W_LumpLength
.LVL564:
	mov	r3, r0
	.loc 1 2913 0
	mov	r1, r0
	mov	r2, #1
	ldr	r0, [r4, #2304]
	.loc 1 2911 0
	str	r3, [r4, #2308]
	.loc 1 2913 0
	bl	G_ReadDemoHeader
.LVL565:
	.loc 1 2918 0
	mov	r2, #1
	.loc 1 2915 0
	ldr	ip, .L776+8
	.loc 1 2916 0
	ldr	r1, .L776+12
	.loc 1 2918 0
	ldr	r3, .L776+16
	.loc 1 2913 0
	str	r0, [r4, #2312]
	.loc 1 2919 0
	mov	r0, r5
	.loc 1 2918 0
	str	r2, [r3]
	.loc 1 2915 0
	strb	r5, [ip]
	.loc 1 2916 0
	str	r5, [r1]
	.loc 1 2919 0
	bl	R_SmoothPlaying_Reset
.LVL566:
	.loc 1 2921 0
	bl	I_GetTime_RealTime
.LVL567:
	ldr	r3, .L776+20
	str	r0, [r3]
	.loc 1 2922 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L777:
	.align	2
.L776:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	gameaction
	.word	usergame
	.word	demoplayback
	.word	starttime
	.cfi_endproc
.LFE51:
	.size	G_DoPlayDemo, .-G_DoPlayDemo
	.align	2
	.global	G_DoLoadGame
	.type	G_DoLoadGame, %function
G_DoLoadGame:
.LFB29:
	.loc 1 1568 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL568:
	.loc 1 1574 0
	mov	r0, #0
	.loc 1 1568 0
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
	.loc 1 1574 0
	ldr	r8, .L830
	ldr	r4, .L830+4
	.loc 1 1568 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 48
	.loc 1 1574 0
	ldr	r3, [r4]
	mov	r1, r0
	ldrb	r2, [r8, #2276]	@ zero_extendqisi2
	bl	G_SaveGameName
.LVL569:
	.loc 1 1575 0
	add	r6, r0, #1
	mov	r1, #1
	mov	r2, #0
	mov	r0, r6
.LVL570:
	bl	Z_Malloc
.LVL571:
	.loc 1 1576 0
	mov	r1, r6
	.loc 1 1575 0
	mov	r5, r0
.LVL572:
	.loc 1 1576 0
	ldr	r3, [r4]
	ldrb	r2, [r8, #2276]	@ zero_extendqisi2
	bl	G_SaveGameName
.LVL573:
	.loc 1 1578 0
	mov	r3, #0
	ldr	r9, .L830+8
	.loc 1 1580 0
	mov	r0, r5
	add	r1, r8, #2128
	.loc 1 1578 0
	strb	r3, [r9]
	.loc 1 1580 0
	bl	M_ReadFile
.LVL574:
	.loc 1 1581 0
	cmp	r0, #0
	ble	.L823
.LVL575:
.L779:
	.loc 1 1587 0
	mov	r4, #0
	.loc 1 1583 0
	mov	r0, r5
	bl	Z_Free
.LVL576:
	.loc 1 1584 0
	ldr	r3, [r8, #2128]
	ldr	r6, .L830+12
	add	r3, r3, #24
	ldr	r5, .L830+16
.LVL577:
	str	r3, [r6]
.LVL578:
.L783:
.LBB203:
	.loc 1 1590 0
	ldmib	r5, {r1, r2}
	mov	r0, sp
	bl	sprintf
.LVL579:
	.loc 1 1592 0
	ldr	r7, [r6]
	mov	r1, sp
	mov	r0, r7
	mov	r2, #16
	bl	strncmp
.LVL580:
	cmp	r0, #0
	bne	.L780
	.loc 1 1593 0
	ldr	r3, .L830+20
	add	r4, r4, r4, asl #1
.LVL581:
	add	r4, r3, r4, asl #2
	ldr	r4, [r4, #52]
.LVL582:
.LBE203:
	.loc 1 1597 0
	cmn	r4, #1
	bne	.L782
.LVL583:
.L781:
	.loc 1 1598 0
	ldr	r3, [r8, #2272]
	cmp	r3, #0
	.loc 1 1599 0
	movne	r4, #17
	.loc 1 1598 0
	beq	.L824
.LVL584:
.L782:
	.loc 1 1606 0
	add	r7, r7, #16
	str	r7, [r6]
.LBB204:
	.loc 1 1613 0
	bl	G_Signature
.LVL585:
	.loc 1 1615 0
	ldr	r5, [r6]
	.loc 1 1613 0
	strd	r0, [sp]
	.loc 1 1615 0
	mov	r2, #8
	mov	r0, sp
	mov	r1, r5
	bl	memcmp
.LVL586:
	cmp	r0, #0
.LBE204:
	.loc 1 1606 0
	ldr	r7, .L830+12
.LBB207:
	.loc 1 1615 0
	beq	.L786
	.loc 1 1616 0
	ldr	r10, [r8, #2272]
	cmp	r10, #0
	bne	.L787
.LBB205:
	.loc 1 1617 0
	add	r0, r5, #8
	bl	strlen
.LVL587:
	mov	r2, r10
	mov	r1, #1
	add	r0, r0, #128
	bl	Z_Malloc
.LVL588:
	mov	r4, r0
.LVL589:
	.loc 1 1618 0
	ldr	ip, .L830+24
	ldmia	ip!, {r0, r1, r2, r3}
.LVL590:
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	ldmia	ip!, {r0, r1}
	ldrh	ip, [ip]	@ unaligned
	.loc 1 1619 0
	ldr	r5, [r7]
	.loc 1 1618 0
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	str	r0, [r4, #16]	@ unaligned
	strh	ip, [r4, #24]	@ unaligned
	str	r1, [r4, #20]	@ unaligned
	.loc 1 1619 0
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L825
.L788:
	.loc 1 1621 0
	mov	r0, r4
	bl	strlen
.LVL591:
	mov	lr, r0
	ldr	r3, .L830+28
	add	ip, r4, r0
	ldmia	r3!, {r0, r1, r2}
	ldrh	r5, [r3]	@ unaligned
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	str	r0, [r4, lr]	@ unaligned
	.loc 1 1622 0
	mov	r0, r4
	.loc 1 1621 0
	str	r1, [ip, #4]	@ unaligned
	str	r2, [ip, #8]	@ unaligned
	strh	r5, [ip, #12]	@ unaligned
	strb	r3, [ip, #14]
	.loc 1 1622 0
	bl	G_LoadGameErr
.LVL592:
	.loc 1 1623 0
	mov	r0, r4
	bl	Z_Free
.LVL593:
.L778:
.LBE205:
.LBE207:
	.loc 1 1706 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL594:
.L787:
	.cfi_restore_state
.LBB208:
	.loc 1 1626 0
	mov	r0, #4
	ldr	r1, .L830+32
	bl	lprintf
.LVL595:
	ldr	r5, [r7]
.L786:
	.loc 1 1628 0
	add	r5, r5, #8
.LBE208:
	.loc 1 1631 0
	mov	r0, r5
.LBB209:
	.loc 1 1628 0
	str	r5, [r6]
.LBE209:
	.loc 1 1631 0
	bl	strlen
.LVL596:
	add	r0, r0, #1
	add	r2, r5, r0
	.loc 1 1633 0
	cmp	r4, #14
	.loc 1 1631 0
	str	r2, [r6]
	.loc 1 1633 0
	bgt	.L826
	ldr	r5, .L830+36
	.loc 1 1633 0 is_stmt 0 discriminator 2
	uxtb	r1, r4
.L790:
	.loc 1 1635 0 is_stmt 1
	ldr	r3, .L830+20
	add	r3, r3, r1
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	strb	r3, [r5]
.L791:
	.loc 1 1638 0
	add	r3, r2, #2
	str	r3, [r6]
	.loc 1 1639 0
	add	r3, r2, #3
	.loc 1 1638 0
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	.loc 1 1639 0
	str	r3, [r6]
	ldrb	r1, [r2, #2]	@ zero_extendqisi2
	ldr	r10, .L830+40
	.loc 1 1640 0
	add	r3, r2, #4
	.loc 1 1639 0
	str	r1, [r10]
	.loc 1 1640 0
	str	r3, [r6]
	.loc 1 1638 0
	ldr	r4, .L830+44
.LVL597:
	.loc 1 1640 0
	ldrb	r0, [r2, #3]	@ zero_extendqisi2
	ldr	r7, .L830+48
	ldr	r1, .L830+52
	.loc 1 1638 0
	strb	ip, [r4]
	.loc 1 1640 0
	str	r0, [r7]
.LVL598:
	add	lr, r2, #8
.LVL599:
.L792:
	.loc 1 1643 0 discriminator 3
	add	r3, r3, #1
	str	r3, [r6]
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	.loc 1 1642 0 discriminator 3
	cmp	r3, lr
	.loc 1 1643 0 discriminator 3
	str	r0, [r1], #4
	ldr	ip, .L830+12
	.loc 1 1642 0 discriminator 3
	bne	.L792
	.loc 1 1646 0
	ldrb	r3, [r2, #36]	@ zero_extendqisi2
	add	r0, r2, #37
	.loc 1 1647 0
	cmp	r3, #255
	mvneq	r2, #0
	.loc 1 1646 0
	ldrne	r2, .L830+56
	.loc 1 1647 0
	ldreq	r3, .L830+56
	.loc 1 1646 0
	strne	r3, [r2]
	.loc 1 1647 0
	streq	r2, [r3]
	.loc 1 1646 0
	str	r0, [ip]
	.loc 1 1654 0
	bl	G_ReadOptions
.LVL600:
	.loc 1 1657 0
	ldr	r1, [r10]
	.loc 1 1654 0
	str	r0, [r6]
	.loc 1 1657 0
	ldr	r2, [r7]
	ldrsb	r0, [r4]
	bl	G_InitNew
.LVL601:
	.loc 1 1660 0
	ldr	r2, [r6]
	.loc 1 1664 0
	ldrb	ip, [r5]	@ zero_extendqisi2
	.loc 1 1660 0
	mov	r3, r2
	ldr	r1, .L830+60
	ldr	r0, [r3], #4	@ unaligned
	.loc 1 1664 0
	cmp	ip, #12
	.loc 1 1660 0
	str	r0, [r1]	@ unaligned
	.loc 1 1668 0
	movls	r1, #0
	.loc 1 1661 0
	str	r3, [r6]
	.loc 1 1665 0
	ldrhi	r0, [r3]	@ unaligned
	ldrhi	r1, .L830+64
	.loc 1 1668 0
	ldrls	r2, .L830+64
	.loc 1 1666 0
	addhi	r3, r2, #8
	.loc 1 1668 0
	strls	r1, [r2]
	.loc 1 1665 0
	strhi	r0, [r1]	@ unaligned
	.loc 1 1671 0
	ldr	r2, .L830+68
	add	r1, r3, #1
	str	r1, [r6]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r2]
	ldr	r2, .L830+72
	rsb	r3, r1, r3
	str	r3, [r2]
	.loc 1 1674 0
	bl	P_MapStart
.LVL602:
	.loc 1 1675 0
	bl	P_UnArchivePlayers
.LVL603:
	.loc 1 1676 0
	bl	P_UnArchiveWorld
.LVL604:
	.loc 1 1677 0
	bl	P_UnArchiveThinkers
.LVL605:
	.loc 1 1678 0
	bl	P_UnArchiveSpecials
.LVL606:
	.loc 1 1679 0
	bl	P_UnArchiveRNG
.LVL607:
	.loc 1 1680 0
	bl	P_UnArchiveMap
.LVL608:
	.loc 1 1681 0
	bl	P_MapEnd
.LVL609:
	.loc 1 1682 0
	mov	r0, #0
	bl	R_SmoothPlaying_Reset
.LVL610:
	.loc 1 1684 0
	ldr	r3, [r6]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #230
	beq	.L797
	.loc 1 1685 0
	ldr	r0, .L830+76
	bl	I_Error
.LVL611:
.L797:
	.loc 1 1688 0
	ldr	r0, [r8, #2128]
	bl	Z_Free
.LVL612:
	.loc 1 1690 0
	ldr	r3, .L830+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L827
.L798:
	.loc 1 1694 0
	bl	R_FillBackScreen
.LVL613:
	.loc 1 1697 0
	ldr	r3, [r8, #2132]
	cmp	r3, #0
	beq	.L828
	.loc 1 1700 0
	ldr	r3, .L830+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L829
	.loc 1 1704 0
	ldr	r3, .L830+88
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L778
	.loc 1 1705 0
	bl	G_BeginRecording
.LVL614:
	.loc 1 1706 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL615:
.L780:
	.cfi_restore_state
	.loc 1 1587 0 discriminator 2
	add	r4, r4, #1
.LVL616:
	cmp	r4, #3
	add	r5, r5, #12
	bne	.L783
	b	.L781
.LVL617:
.L826:
	.loc 1 1633 0 discriminator 1
	ldrb	r1, [r5, r0]	@ zero_extendqisi2
	ldr	r5, .L830+36
	.loc 1 1634 0 discriminator 1
	cmp	r4, #16
	.loc 1 1633 0 discriminator 1
	strb	r1, [r5]
	.loc 1 1634 0 discriminator 1
	bgt	.L791
	b	.L790
.LVL618:
.L828:
	.loc 1 1698 0
	ldr	r2, .L830+84
	str	r3, [r2]
	.loc 1 1706 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL619:
.L824:
	.cfi_restore_state
	.loc 1 1601 0
	ldr	r0, .L830+92
	bl	G_LoadGameErr
.LVL620:
	.loc 1 1706 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL621:
.L825:
	.cfi_restore_state
.LBB210:
.LBB206:
	.loc 1 1620 0
	ldr	ip, .L830+96
	add	lr, r4, #25
	ldmia	ip!, {r0, r1, r2, r3}
	ldrb	ip, [ip]	@ zero_extendqisi2
	str	r0, [r4, #25]	@ unaligned
	str	r1, [lr, #4]	@ unaligned
	strb	ip, [lr, #16]
	str	r2, [lr, #8]	@ unaligned
	str	r3, [lr, #12]	@ unaligned
	add	r1, r5, #8
	add	r0, r4, #41
	bl	strcpy
.LVL622:
	b	.L788
.LVL623:
.L827:
.LBE206:
.LBE210:
	.loc 1 1691 0
	bl	R_ExecuteSetViewSize
.LVL624:
	b	.L798
.LVL625:
.L823:
	.loc 1 1582 0
	ldr	r0, .L830+100
.LVL626:
	mov	r1, r5
	ldr	r2, .L830+104
	bl	I_Error
.LVL627:
	b	.L779
.LVL628:
.L829:
	.loc 1 1701 0
	mov	r3, #3
	strb	r3, [r9]
	.loc 1 1702 0
	bl	G_DoPlayDemo
.LVL629:
	b	.L778
.L831:
	.align	2
.L830:
	.word	.LANCHOR0
	.word	demoplayback
	.word	gameaction
	.word	save_p
	.word	.LANCHOR2+52
	.word	.LANCHOR2
	.word	.LC31
	.word	.LC33
	.word	.LC34
	.word	compatibility_level
	.word	gameepisode
	.word	gameskill
	.word	gamemap
	.word	playeringame
	.word	idmusnum
	.word	leveltime
	.word	totalleveltimes
	.word	gametic
	.word	basetic
	.word	.LC35
	.word	setsizeneeded
	.word	singledemo
	.word	demorecording
	.word	.LC30
	.word	.LC32
	.word	.LC28
	.word	.LC29
	.cfi_endproc
.LFE29:
	.size	G_DoLoadGame, .-G_DoLoadGame
	.global	__aeabi_ui2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.align	2
	.global	G_CheckDemoStatus
	.type	G_CheckDemoStatus, %function
G_CheckDemoStatus:
.LFB52:
	.loc 1 2930 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 2931 0
	bl	P_ChecksumFinal
.LVL630:
	.loc 1 2933 0
	ldr	r3, .L851
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L848
	.loc 1 2941 0
	ldr	r3, .L851+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L849
.L835:
	.loc 1 2951 0
	ldr	r3, .L851+8
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L834
.LBB215:
.LBB216:
	.loc 1 2953 0
	ldr	r3, .L851+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L850
	.loc 1 2956 0
	ldr	r4, .L851+16
	ldr	r0, [r4, #392]
	cmn	r0, #1
	beq	.L837
	.loc 1 2958 0
	bl	W_UnlockLumpNum
.LVL631:
	.loc 1 2959 0
	mvn	r3, #0
	str	r3, [r4, #392]
.L837:
	.loc 1 2961 0
	bl	G_ReloadDefaults
.LVL632:
	.loc 1 2962 0
	mov	r3, #0
	ldr	r1, .L851+20
	.loc 1 2963 0
	ldr	r2, .L851+24
	.loc 1 2962 0
	str	r3, [r1]
	.loc 1 2963 0
	str	r3, [r2]
	.loc 1 2964 0
	bl	D_AdvanceDemo
.LVL633:
	mov	r0, #1
.L834:
.LBE216:
.LBE215:
	.loc 1 2968 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L849:
	.cfi_restore_state
.LBB218:
	.loc 1 2943 0
	bl	I_GetTime_RealTime
.LVL634:
	.loc 1 2945 0
	ldr	r2, .L851+28
	.loc 1 2948 0
	ldr	r3, .L851+32
	.loc 1 2945 0
	ldr	r4, [r2]
	.loc 1 2948 0
	ldr	r5, [r3]
	.loc 1 2945 0
	rsb	r4, r4, r0
.LVL635:
	.loc 1 2948 0
	mov	r0, r5
.LVL636:
	bl	__aeabi_ui2d
.LVL637:
	mov	r2, #0
	ldr	r3, .L851+36
	bl	__aeabi_dmul
.LVL638:
	mov	r6, r0
	.loc 1 2946 0
	mov	r0, r4
	.loc 1 2948 0
	mov	r7, r1
	.loc 1 2946 0
	bl	__aeabi_ui2d
.LVL639:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
.LVL640:
	mov	r2, r4
	strd	r0, [sp]
	mov	r1, r5
	ldr	r0, .L851+40
	bl	I_Error
.LVL641:
	b	.L835
.LVL642:
.L848:
.LBE218:
	.loc 1 2935 0
	mov	r4, #0
	.loc 1 2936 0
	ldr	r2, .L851+44
	mov	r0, #128
	ldr	r1, [r2, #2296]
	.loc 1 2935 0
	str	r4, [r3]
	.loc 1 2936 0
	bl	fputc
.LVL643:
	.loc 1 2937 0
	ldr	r0, .L851+48
	bl	I_Error
.LVL644:
	.loc 1 2938 0
	mov	r0, r4
	.loc 1 2968 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L850:
	.cfi_restore_state
.LBB219:
.LBB217:
	.loc 1 2954 0
	mov	r0, #0
	bl	exit
.LVL645:
.L852:
	.align	2
.L851:
	.word	demorecording
	.word	timingdemo
	.word	demoplayback
	.word	singledemo
	.word	.LANCHOR1
	.word	netgame
	.word	deathmatch
	.word	starttime
	.word	gametic
	.word	1078034432
	.word	.LC37
	.word	.LANCHOR0
	.word	.LC36
.LBE217:
.LBE219:
	.cfi_endproc
.LFE52:
	.size	G_CheckDemoStatus, .-G_CheckDemoStatus
	.align	2
	.global	G_ReadDemoTiccmd
	.type	G_ReadDemoTiccmd, %function
G_ReadDemoTiccmd:
.LFB41:
	.loc 1 2219 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL646:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2222 0
	ldr	r2, .L865
	ldr	r3, [r2, #2312]
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r1, #128
	beq	.L863
	.loc 1 2224 0
	ldr	ip, .L865+4
	ldr	ip, [ip]
	cmp	ip, #0
	ldr	ip, .L865+8
	bne	.L864
	ldr	ip, [ip]
.L857:
	.loc 1 2231 0
	strb	r1, [r0]
	.loc 1 2232 0
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
	.loc 1 2233 0
	cmp	ip, #0
	.loc 1 2232 0
	add	r1, r3, #2
	strb	lr, [r0, #1]
.LBB220:
	.loc 1 2237 0
	ldrneb	ip, [r3, #3]	@ zero_extendqisi2
.LBE220:
	.loc 1 2232 0
	str	r1, [r2, #2312]
.LBB221:
	.loc 1 2237 0
	ldrneb	r1, [r3, #2]	@ zero_extendqisi2
.LBE221:
	.loc 1 2234 0
	ldreqb	lr, [r3, #2]	@ zero_extendqisi2
.LVL647:
.LBB222:
	.loc 1 2237 0
	addne	r1, r1, ip, asl #8
.LBE222:
	.loc 1 2241 0
	ldr	ip, .L865+12
	.loc 1 2234 0
	moveq	r1, lr, asl #8
	addeq	r3, r3, #3
.LVL648:
.LBB223:
	.loc 1 2237 0
	addne	r3, r3, #4
.LVL649:
	strh	r1, [r0, #2]	@ movhi
.LVL650:
.LBE223:
	.loc 1 2241 0
	ldrb	ip, [ip]	@ zero_extendqisi2
	.loc 1 2239 0
	ldrb	r1, [r3]	@ zero_extendqisi2
	.loc 1 2220 0
	movne	lr, #0
.LVL651:
	.loc 1 2239 0
	add	r3, r3, #1
	.loc 1 2241 0
	cmp	ip, #6
	.loc 1 2239 0
	strb	r1, [r0, #7]
	str	r3, [r2, #2312]
	.loc 1 2241 0
	ldmnefd	sp!, {r3, r4, r5, pc}
.LBB224:
	.loc 1 2243 0
	ldrb	r2, [r0]	@ zero_extendqisi2
.LVL652:
	.loc 1 2244 0
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	.loc 1 2246 0
	mov	r1, r1, asl #8
	strh	r1, [r0, #2]	@ movhi
	.loc 1 2247 0
	strb	r2, [r0, #7]
	.loc 1 2244 0
	strb	r3, [r0]
	.loc 1 2245 0
	strb	lr, [r0, #1]
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL653:
.L864:
.LBE224:
	.loc 1 2224 0 discriminator 1
	ldr	ip, [ip]
	ldr	lr, [r2, #2304]
	cmp	ip, #0
	moveq	r4, #4
	movne	r4, #5
	ldr	r5, [r2, #2308]
	add	r4, r3, r4
	add	lr, lr, r5
	cmp	r4, lr
	bls	.L857
	.loc 1 2226 0
	mov	r0, #4
.LVL654:
	ldr	r1, .L865+16
	bl	lprintf
.LVL655:
.L863:
	.loc 1 2250 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 2227 0
	b	G_CheckDemoStatus
.LVL656:
.L866:
	.align	2
.L865:
	.word	.LANCHOR0
	.word	demoplayback
	.word	longtics
	.word	compatibility_level
	.word	.LC38
	.cfi_endproc
.LFE41:
	.size	G_ReadDemoTiccmd, .-G_ReadDemoTiccmd
	.align	2
	.global	G_WriteDemoTiccmd
	.type	G_WriteDemoTiccmd, %function
G_WriteDemoTiccmd:
.LFB42:
	.loc 1 2256 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL657:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
.LVL658:
	.loc 1 2270 0
	mov	r5, sp
	.loc 1 2262 0
	ldr	r3, .L875
	.loc 1 2260 0
	ldrb	r2, [r0]	@ zero_extendqisi2
	.loc 1 2262 0
	ldr	r1, [r3]
	.loc 1 2261 0
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	.loc 1 2262 0
	cmp	r1, #0
	.loc 1 2261 0
	strb	r3, [sp, #1]
	.loc 1 2263 0
	ldreqsh	r3, [r0, #2]
.LBB225:
	.loc 1 2265 0
	ldrneh	r3, [r0, #2]
.LBE225:
	.loc 1 2263 0
	addeq	r3, r3, #128
	moveq	r3, r3, asr #8
	.loc 1 2260 0
	strb	r2, [sp]
.LVL659:
	.loc 1 2263 0
	streqb	r3, [sp, #2]
.LBB226:
	.loc 1 2267 0
	movne	r2, r3, lsr #8
	.loc 1 2266 0
	strneb	r3, [sp, #2]
.LVL660:
.LBE226:
	.loc 1 2269 0
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
.LVL661:
	.loc 1 2263 0
	addeq	r1, sp, #3
.LBB227:
	.loc 1 2267 0
	addne	r1, sp, #4
.LVL662:
.LBE227:
	.loc 1 2270 0
	ldr	r6, .L875+4
.LBB228:
	.loc 1 2267 0
	strneb	r2, [sp, #3]
.LBE228:
	.loc 1 2269 0
	strb	r3, [r1], #1
.LVL663:
	.loc 1 2256 0
	mov	r4, r0
	.loc 1 2270 0
	rsb	r1, r5, r1
.LVL664:
	mov	r0, sp
.LVL665:
	ldr	r3, [r6, #2296]
	mov	r2, #1
	bl	fwrite
.LVL666:
	cmp	r0, #1
	beq	.L870
	.loc 1 2271 0
	ldr	r0, .L875+8
	bl	I_Error
.LVL667:
.L870:
	.loc 1 2275 0
	mov	r0, r4
	.loc 1 2274 0
	str	r5, [r6, #2312]
	.loc 1 2275 0
	bl	G_ReadDemoTiccmd
.LVL668:
	.loc 1 2276 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL669:
.L876:
	.align	2
.L875:
	.word	longtics
	.word	.LANCHOR0
	.word	.LC39
	.cfi_endproc
.LFE42:
	.size	G_WriteDemoTiccmd, .-G_WriteDemoTiccmd
	.align	2
	.global	doom_printf
	.type	doom_printf, %function
doom_printf:
.LFB53:
	.loc 1 2980 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL670:
	stmfd	sp!, {r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 14, -20
	.loc 1 2984 0
	ldr	r4, .L879
	.loc 1 2980 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 2983 0
	add	ip, sp, #20
	.loc 1 2984 0
	mov	r3, ip
	ldr	r2, [sp, #16]
	mov	r0, r4
	mov	r1, #1024
	.loc 1 2983 0
	str	ip, [sp, #4]
	.loc 1 2984 0
	bl	doom_vsnprintf
.LVL671:
	.loc 1 2986 0
	mov	r1, #284
	ldr	r2, .L879+4
	ldr	r3, .L879+8
	ldr	r2, [r2]
	mla	r3, r1, r2, r3
	str	r4, [r3, #220]
	.loc 1 2987 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.L880:
	.align	2
.L879:
	.word	.LANCHOR0+2316
	.word	consoleplayer
	.word	players
	.cfi_endproc
.LFE53:
	.size	doom_printf, .-doom_printf
	.align	2
	.type	G_DoSaveGame, %function
G_DoSaveGame:
.LFB33:
	.loc 1 1768 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL672:
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
	.loc 1 1777 0
	clz	r4, r0
	.loc 1 1774 0
	mov	r5, #0
	.loc 1 1777 0
	ldr	r7, .L897
	ldr	r2, .L897+4
	ldr	r3, [r7]
	.loc 1 1774 0
	ldr	ip, .L897+8
	.loc 1 1777 0
	mov	r4, r4, lsr #5
	.loc 1 1768 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 1777 0
	cmp	r3, r5
	moveq	r3, #0
	andne	r3, r4, #1
	mov	r1, r5
	ldrb	r2, [r2, #2276]	@ zero_extendqisi2
	mov	r0, r5
.LVL673:
	.loc 1 1774 0
	strb	r5, [ip]
	.loc 1 1777 0
	bl	G_SaveGameName
.LVL674:
	.loc 1 1778 0
	add	r6, r0, #1
	mov	r2, r5
	mov	r1, #1
	mov	r0, r6
.LVL675:
	bl	Z_Malloc
.LVL676:
	.loc 1 1779 0
	ldr	r3, [r7]
	ldr	r2, .L897+4
	cmp	r3, r5
	moveq	r3, #0
	andne	r3, r4, #1
	mov	r1, r6
	ldrb	r2, [r2, #2276]	@ zero_extendqisi2
	.loc 1 1778 0
	str	r0, [sp, #4]
.LVL677:
	.loc 1 1779 0
	bl	G_SaveGameName
.LVL678:
	.loc 1 1783 0
	ldr	r3, .L897+12
	mov	r2, r5
	ldr	r0, [r3, #316]
	mov	r1, #1
	bl	Z_Malloc
.LVL679:
	mov	r3, r0
	ldr	r4, .L897+16
	ldr	ip, .L897+4
	.loc 1 1785 0
	mov	r0, #48
	ldr	r1, .L897+20
	ldr	r2, .L897+24
	.loc 1 1783 0
	str	r3, [ip, #2128]
	str	r3, [r4]
	.loc 1 1785 0
	bl	CheckSaveGame
.LVL680:
	.loc 1 1786 0
	ldr	r2, .L897+28
	ldr	r0, .L897+28
	ldr	r3, [r4]
	ldr	r1, [r2]	@ unaligned
	ldr	r2, [r2, #4]	@ unaligned
	ldr	ip, [r0, #8]	@ unaligned
	ldr	r0, [r0, #12]	@ unaligned
	str	r2, [r3, #4]	@ unaligned
	ldr	r2, .L897+28
	str	r1, [r3]	@ unaligned
	str	ip, [r3, #8]	@ unaligned
	str	r0, [r3, #12]	@ unaligned
	ldr	r1, [r2, #16]	@ unaligned
	.loc 1 1787 0
	ldr	ip, [r4]
	.loc 1 1786 0
	ldr	r2, [r2, #20]	@ unaligned
	.loc 1 1787 0
	add	ip, ip, #24
	.loc 1 1786 0
	str	r1, [r3, #16]	@ unaligned
	str	r2, [r3, #20]	@ unaligned
	.loc 1 1794 0
	ldr	r1, .L897+32
	mov	r2, #212
	add	r0, sp, #16
	.loc 1 1787 0
	str	ip, [r4]
	.loc 1 1788 0
	str	r5, [sp, #16]
	str	r5, [sp, #20]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
.LVL681:
	.loc 1 1794 0
	bl	sprintf
.LVL682:
	.loc 1 1795 0
	ldr	lr, [r4]
	add	ip, sp, #16
	ldmia	ip!, {r0, r1, r2, r3}
	str	r0, [lr]	@ unaligned
	.loc 1 1799 0
	ldr	r0, [r4]
	.loc 1 1795 0
	str	r2, [lr, #8]	@ unaligned
	.loc 1 1799 0
	add	r0, r0, #16
	.loc 1 1795 0
	str	r1, [lr, #4]	@ unaligned
	str	r3, [lr, #12]	@ unaligned
.LVL683:
	.loc 1 1799 0
	str	r0, [r4]
.LBB229:
	.loc 1 1802 0
	bl	G_Signature
.LVL684:
	add	r2, sp, #32
	strd	r0, [r2, #-24]!
	.loc 1 1803 0
	ldr	ip, [r4]
.LBE229:
.LBB230:
	.loc 1 1811 0
	ldr	r9, .L897+36
.LBE230:
.LBB234:
	.loc 1 1803 0
	ldmia	r2!, {r0, r1}
	str	r0, [ip]	@ unaligned
	.loc 1 1804 0
	ldr	r2, [r4]
.LBE234:
.LBB235:
	.loc 1 1811 0
	ldr	r0, [r9]
.LBE235:
.LBB236:
	.loc 1 1804 0
	add	r2, r2, #8
.LBE236:
.LBB237:
	.loc 1 1811 0
	cmp	r0, r5
.LBE237:
.LBB238:
	.loc 1 1803 0
	str	r1, [ip, #4]	@ unaligned
	.loc 1 1804 0
	str	r2, [r4]
.LVL685:
.LBE238:
.LBB239:
	.loc 1 1811 0
	beq	.L882
.LBB231:
	.loc 1 1817 0
	mov	r8, #10
.LBE231:
	.loc 1 1811 0
	mov	r6, r5
.LVL686:
	ldr	fp, .L897+40
.LVL687:
.L883:
.LBB232:
	.loc 1 1813 0 discriminator 3
	ldr	r2, [fp]
.LBE232:
	.loc 1 1811 0 discriminator 3
	add	r6, r6, #1
.LVL688:
.LBB233:
	.loc 1 1813 0 discriminator 3
	ldr	r7, [r2, r5]
.LVL689:
	add	r5, r5, #12
	.loc 1 1814 0 discriminator 3
	mov	r0, r7
	bl	strlen
.LVL690:
	ldr	r2, .L897+44
	ldr	r1, .L897+20
	add	r0, r0, #2
	bl	CheckSaveGame
.LVL691:
	.loc 1 1815 0 discriminator 3
	mov	r1, r7
	ldr	r0, [r4]
	bl	strcpy
.LVL692:
	.loc 1 1816 0 discriminator 3
	ldr	r10, [r4]
	.loc 1 1815 0 discriminator 3
	ldr	r7, .L897+16
.LVL693:
	.loc 1 1816 0 discriminator 3
	mov	r0, r10
	bl	strlen
.LVL694:
	add	r1, r10, r0
	.loc 1 1817 0 discriminator 3
	add	r1, r1, #1
	str	r1, [r4]
	strb	r8, [r10, r0]
.LBE233:
	.loc 1 1811 0 discriminator 3
	ldr	r2, [r9]
	cmp	r2, r6
	bhi	.L883
	ldr	r2, [r7]
.LVL695:
.L882:
	.loc 1 1819 0
	mov	r3, #0
	add	r1, r2, #1
	str	r1, [r4]
.LBE239:
	.loc 1 1822 0
	mov	r0, #110
.LBB240:
	.loc 1 1819 0
	strb	r3, [r2]
.LBE240:
	.loc 1 1822 0
	ldr	r1, .L897+20
	ldr	r2, .L897+48
	.loc 1 1824 0
	ldr	r6, .L897+52
	.loc 1 1822 0
	bl	CheckSaveGame
.LVL696:
	.loc 1 1824 0
	ldr	r3, [r4]
	ldrb	r1, [r6]	@ zero_extendqisi2
	add	r2, r3, #1
	str	r2, [r4]
	strb	r1, [r3]
	.loc 1 1826 0
	ldr	r2, .L897+56
	ldr	r3, [r4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	add	r2, r3, #1
	str	r2, [r4]
	strb	r1, [r3]
	.loc 1 1827 0
	ldr	r2, .L897+60
	ldr	r3, [r4]
	ldr	r2, [r2]
	add	r1, r3, #1
	str	r1, [r4]
	strb	r2, [r3]
	.loc 1 1828 0
	ldr	r1, .L897+64
	ldr	r2, [r4]
	ldr	r1, [r1]
	ldr	r3, .L897+68
	add	r0, r2, #1
	str	r0, [r4]
	add	ip, r3, #16
	strb	r1, [r2]
.LVL697:
.L884:
	.loc 1 1831 0 discriminator 3
	ldr	r2, [r4]
	ldr	r1, [r3], #4
	add	r0, r2, #1
	.loc 1 1830 0 discriminator 3
	cmp	r3, ip
	.loc 1 1831 0 discriminator 3
	str	r0, [r4]
	strb	r1, [r2]
	.loc 1 1830 0 discriminator 3
	bne	.L884
	mov	r5, #28
	.loc 1 1834 0
	mov	r1, #0
.L885:
.LVL698:
	.loc 1 1834 0 is_stmt 0 discriminator 2
	ldr	r3, [r4]
	.loc 1 1833 0 is_stmt 1 discriminator 2
	subs	r5, r5, #1
.LVL699:
	.loc 1 1834 0 discriminator 2
	add	r2, r3, #1
	str	r2, [r4]
	ldr	r7, .L897+16
	strb	r1, [r3]
.LVL700:
	.loc 1 1833 0 discriminator 2
	bne	.L885
	.loc 1 1836 0
	ldr	r2, .L897+72
	ldr	r3, [r7]
	ldr	r2, [r2]
	add	r1, r3, #1
	str	r1, [r7]
	strb	r2, [r3]
	.loc 1 1838 0
	ldr	r0, [r7]
	bl	G_WriteOptions
.LVL701:
	mov	r3, r0
	.loc 1 1842 0
	ldr	r2, .L897+76
	.loc 1 1838 0
	str	r0, [r7]
	.loc 1 1842 0
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	.loc 1 1846 0
	ldrb	r2, [r6]	@ zero_extendqisi2
	.loc 1 1843 0
	ldr	r3, [r7]
	.loc 1 1846 0
	cmp	r2, #12
	.loc 1 1847 0
	ldrhi	r1, .L897+80
	.loc 1 1843 0
	add	r2, r3, #4
	.loc 1 1847 0
	ldrhi	r0, [r1]	@ unaligned
	.loc 1 1850 0
	ldrls	r3, .L897+80
	.loc 1 1848 0
	addhi	r2, r3, #8
	.loc 1 1847 0
	strhi	r0, [r3, #4]	@ unaligned
	.loc 1 1850 0
	strls	r5, [r3]
	.loc 1 1853 0
	ldr	r1, .L897+84
	ldr	r3, .L897+88
	ldr	r0, [r1]
	ldr	r3, [r3]
	add	r1, r2, #1
	rsb	r3, r0, r3
	str	r1, [r4]
	strb	r3, [r2]
	.loc 1 1856 0
	bl	Z_CheckHeap
.LVL702:
	.loc 1 1857 0
	bl	P_ArchivePlayers
.LVL703:
	.loc 1 1858 0
	bl	Z_CheckHeap
.LVL704:
	.loc 1 1864 0
	bl	P_ThinkerToIndex
.LVL705:
	.loc 1 1866 0
	bl	P_ArchiveWorld
.LVL706:
	.loc 1 1867 0
	bl	Z_CheckHeap
.LVL707:
	.loc 1 1868 0
	bl	P_ArchiveThinkers
.LVL708:
	.loc 1 1873 0
	bl	P_IndexToThinker
.LVL709:
	.loc 1 1875 0
	bl	Z_CheckHeap
.LVL710:
	.loc 1 1876 0
	bl	P_ArchiveSpecials
.LVL711:
	.loc 1 1877 0
	bl	P_ArchiveRNG
.LVL712:
	.loc 1 1878 0
	bl	Z_CheckHeap
.LVL713:
	.loc 1 1879 0
	bl	P_ArchiveMap
.LVL714:
	.loc 1 1881 0
	mvn	r2, #25
	ldr	r3, [r4]
	add	r1, r3, #1
	str	r1, [r4]
	strb	r2, [r3]
	.loc 1 1883 0
	ldr	r2, .L897+4
	ldr	r3, [r4]
	ldr	r5, [r2, #2128]
	rsb	r5, r5, r3
.LVL715:
	.loc 1 1885 0
	bl	Z_CheckHeap
.LVL716:
	.loc 1 1886 0
	ldr	r3, .L897+4
	mov	r2, r5
	ldr	r1, [r3, #2128]
	ldr	r0, [sp, #4]
	bl	M_WriteFile
.LVL717:
	cmp	r0, #0
	ldrne	r3, .L897+92
	ldreq	r1, .L897+96
	ldrne	r1, [r3]
	ldr	r0, .L897+100
	bl	doom_printf
.LVL718:
	.loc 1 1890 0
	ldr	r3, .L897+4
	ldr	r0, [r3, #2128]
	bl	Z_Free
.LVL719:
	.loc 1 1891 0
	mov	r3, #0
	ldr	r2, .L897+4
	.loc 1 1894 0
	ldr	r0, [sp, #4]
	.loc 1 1891 0
	str	r3, [r2, #2128]
	.loc 1 1893 0
	ldr	r2, .L897+28
	.loc 1 1891 0
	str	r3, [r4]
	.loc 1 1893 0
	strb	r3, [r2]
	.loc 1 1894 0
	bl	Z_Free
.LVL720:
	.loc 1 1895 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL721:
.L898:
	.align	2
.L897:
	.word	demoplayback
	.word	.LANCHOR0
	.word	gameaction
	.word	.LANCHOR1
	.word	save_p
	.word	.LC41
	.word	1785
	.word	savedescription
	.word	.LC42
	.word	numwadfiles
	.word	wadfiles
	.word	1814
	.word	1822
	.word	compatibility_level
	.word	gameskill
	.word	gameepisode
	.word	gamemap
	.word	playeringame
	.word	idmusnum
	.word	leveltime
	.word	totalleveltimes
	.word	basetic
	.word	gametic
	.word	s_GGSAVED
	.word	.LC40
	.word	.LC43
	.cfi_endproc
.LFE33:
	.size	G_DoSaveGame, .-G_DoSaveGame
	.align	2
	.global	G_SaveGame
	.type	G_SaveGame, %function
G_SaveGame:
.LFB30:
	.loc 1 1715 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL722:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 1715 0
	mov	r4, r0
	.loc 1 1716 0
	ldr	r0, .L905
.LVL723:
	bl	strcpy
.LVL724:
	.loc 1 1717 0
	ldr	r3, .L905+4
	.loc 1 1721 0
	ldr	r5, .L905+8
	.loc 1 1717 0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L900
	.loc 1 1722 0
	mov	r0, #1
	.loc 1 1721 0
	strb	r4, [r5, #2276]
	.loc 1 1722 0
	bl	G_DoSaveGame
.LVL725:
.L900:
	.loc 1 1726 0
	mov	r0, r4, asl #2
	.loc 1 1725 0
	and	r0, r0, #28
	mvn	r0, r0
	and	r0, r0, #125
	mvn	r0, r0
	strb	r0, [r5, #2064]
	ldmfd	sp!, {r3, r4, r5, pc}
.L906:
	.align	2
.L905:
	.word	savedescription
	.word	demoplayback
	.word	.LANCHOR0
	.cfi_endproc
.LFE30:
	.size	G_SaveGame, .-G_SaveGame
	.global	__aeabi_idiv
	.align	2
	.global	G_Ticker
	.type	G_Ticker, %function
G_Ticker:
.LFB12:
	.loc 1 766 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
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
	.loc 1 771 0
	ldr	r8, .L1006
	.loc 1 766 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 771 0
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L908
	.loc 1 771 0 is_stmt 0 discriminator 1
	ldr	r2, .L1006+4
	ldr	r3, .L1006+8
	ldr	r0, [r2]
	ldr	r2, .L1006+12
	ldr	r3, [r3, r0, asl #2]
	ldr	r1, [r2]
	cmp	r3, r1
	beq	.L908
.LVL726:
.LBB241:
.LBB242:
.LBB243:
	.loc 1 995 0 is_stmt 1
	ldr	r3, .L1006+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L995
.LVL727:
.L908:
	ldr	r5, .L1006+20
.LBE243:
.LBE242:
.LBE241:
	.loc 1 779 0
	bl	P_MapStart
.LVL728:
	mov	r9, r5
	mov	r6, r5
	.loc 1 781 0
	mov	r4, #0
	ldr	r7, .L1006+24
.LVL729:
.L910:
	.loc 1 782 0
	ldr	r3, [r7, r4, asl #2]
	cmp	r3, #0
	beq	.L909
	.loc 1 782 0 is_stmt 0 discriminator 1
	ldrb	r3, [r6, #4]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L996
.L909:
	.loc 1 781 0 is_stmt 1 discriminator 2
	add	r4, r4, #1
.LVL730:
	cmp	r4, #4
	add	r6, r6, #284
	bne	.L910
	.loc 1 784 0
	bl	P_MapEnd
.LVL731:
	.loc 1 794 0
	mov	r6, #2
	ldr	r4, .L1006+28
.LVL732:
.L911:
	ldrb	r2, [r4]	@ zero_extendqisi2
	.loc 1 789 0
	sub	r3, r2, #1
.L912:
	.loc 1 787 0
	cmp	r2, #0
	beq	.L997
	.loc 1 789 0
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L912
.L914:
	.word	.L913
	.word	.L915
	.word	.L916
	.word	.L917
	.word	.L918
	.word	.L919
	.word	.L920
	.word	.L921
.L920:
	.loc 1 813 0
	bl	F_StartFinale
.LVL733:
	.loc 1 814 0
	b	.L911
.L919:
	.loc 1 810 0
	bl	G_DoCompleted
.LVL734:
	.loc 1 811 0
	b	.L911
.L918:
	.loc 1 807 0
	bl	G_DoPlayDemo
.LVL735:
	.loc 1 808 0
	b	.L911
.L917:
	.loc 1 804 0
	mov	r0, #0
	bl	G_DoSaveGame
.LVL736:
	.loc 1 805 0
	b	.L911
.L916:
	.loc 1 801 0
	bl	G_DoLoadGame
.LVL737:
	.loc 1 802 0
	b	.L911
.L915:
	.loc 1 798 0
	bl	G_DoNewGame
.LVL738:
	.loc 1 799 0
	b	.L911
.L913:
.LVL739:
	.loc 1 794 0 discriminator 1
	strb	r6, [r9, #4]
.LVL740:
	strb	r6, [r9, #288]
.LVL741:
	strb	r6, [r9, #572]
.LVL742:
	strb	r6, [r9, #856]
.LVL743:
	.loc 1 795 0 discriminator 1
	bl	G_DoLoadLevel
.LVL744:
	.loc 1 796 0 discriminator 1
	b	.L911
.LVL745:
.L921:
	.loc 1 816 0
	bl	G_DoWorldDone
.LVL746:
	.loc 1 817 0
	b	.L911
.L997:
	.loc 1 823 0
	ldr	r3, .L1006+32
	ldr	r3, [r3]
	tst	r3, #2
	bne	.L924
	.loc 1 823 0 is_stmt 0 discriminator 1
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L998
.L925:
.LVL747:
.LBB246:
	.loc 1 827 0 is_stmt 1
	ldr	r3, .L1006+36
.LVL748:
	.loc 1 829 0
	mov	r6, #0
	.loc 1 827 0
	ldr	r0, [r3]
	ldr	r3, .L1006+40
.LVL749:
	ldr	fp, .L1006+44
	ldr	r1, [r3]
	bl	__aeabi_idiv
.LVL750:
	ldr	ip, .L1006+48
	str	r5, [sp, #4]
	mov	r5, ip
	ldr	r2, .L1006+52
	mov	r3, r0, asr #31
	smull	r1, r2, r2, r0
	rsb	r2, r3, r2, asr #1
	add	r2, r2, r2, asl #1
	ldr	r9, .L1006+56
	sub	r2, r0, r2, asl #2
	ldr	r10, .L1006+20
.LBB247:
	.loc 1 838 0
	ldr	r3, .L1006+60
	add	fp, fp, r2, asl #1
	add	r9, r9, r2, asl #3
.LVL751:
.L937:
.LBE247:
	.loc 1 830 0
	ldr	r2, [r7, r6, asl #2]
	cmp	r2, #0
	bne	.L999
.L928:
	.loc 1 829 0 discriminator 2
	add	r6, r6, #1
.LVL752:
	cmp	r6, #4
	add	fp, fp, #24
	add	r10, r10, #284
	add	r9, r9, #96
	bne	.L937
	.loc 1 906 0
	mov	r10, #0
	mov	ip, r5
	ldr	r7, .L1006+24
	ldr	r5, [sp, #4]
	ldr	r9, .L1006+64
	.loc 1 883 0
	ldr	fp, .L1006+68
	.loc 1 895 0
	ldr	r2, .L1006+16
.LVL753:
.L946:
	.loc 1 868 0
	ldr	r3, [r7], #4
	cmp	r3, #0
	beq	.L938
	.loc 1 870 0
	ldrb	r3, [r5, #13]	@ zero_extendqisi2
	tst	r3, #128
	bne	.L1000
.L938:
	add	r5, r5, #284
	.loc 1 867 0 discriminator 2
	cmp	r5, r9
	bne	.L946
	b	.L926
.L998:
.LBE246:
	.loc 1 823 0 discriminator 2
	ldr	r3, .L1006+72
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L925
	.loc 1 823 0 is_stmt 0 discriminator 3
	ldr	r3, .L1006+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L925
.L924:
	.loc 1 824 0 is_stmt 1
	ldr	r2, .L1006+76
	ldr	ip, .L1006+48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
.L926:
	.loc 1 913 0
	ldr	r4, .L1006+80
	ldrb	r2, [ip, #3340]	@ zero_extendqisi2
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L947
	.loc 1 914 0
	cmp	r2, #1
	beq	.L1001
.L948:
	.loc 1 929 0
	strb	r3, [ip, #3340]
.L947:
	.loc 1 935 0
	ldr	r2, .L1006+32
	ldr	r2, [r2]
	tst	r2, #2
	beq	.L950
	.loc 1 935 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L907
.L952:
	.loc 1 942 0 is_stmt 1
	bl	P_Ticker
.LVL754:
	.loc 1 943 0
	bl	ST_Ticker
.LVL755:
	.loc 1 944 0
	bl	AM_Ticker
.LVL756:
	.loc 1 960 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 945 0
	b	HU_Ticker
.LVL757:
.L950:
	.cfi_restore_state
	.loc 1 939 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L907
.L953:
	.word	.L952
	.word	.L954
	.word	.L955
	.word	.L956
.L1001:
	str	ip, [sp, #4]
	.loc 1 925 0
	bl	WI_End
.LVL758:
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	ip, [sp, #4]
	b	.L948
.L907:
	.loc 1 960 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL759:
.L999:
	.cfi_restore_state
.LBB253:
.LBB249:
	.loc 1 836 0
	ldr	r2, [r8]
	.loc 1 834 0
	ldr	r0, [r9]	@ unaligned
	ldr	r1, [r9, #4]	@ unaligned
	.loc 1 836 0
	cmp	r2, #0
	add	r2, r10, #6
.LVL760:
	.loc 1 834 0
	str	r0, [r10, #6]	@ unaligned
	str	r1, [r2, #4]	@ unaligned
	.loc 1 836 0
	bne	.L1002
.LVL761:
.L929:
	.loc 1 838 0
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.L1003
.L930:
	.loc 1 844 0
	ldr	r2, .L1006+16
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L931
	.loc 1 844 0 is_stmt 0 discriminator 2
	ldr	r1, [r8]
	cmp	r1, #0
	beq	.L928
	.loc 1 844 0
	ldrsb	r1, [r10, #6]
	cmp	r1, #50
	ble	.L928
	.loc 1 845 0 is_stmt 1
	ldr	r1, .L1006+36
	ldr	r1, [r1]
	.loc 1 844 0
	tst	r1, #31
	beq	.L960
	b	.L928
.LVL762:
.L996:
.LBE249:
.LBE253:
	.loc 1 783 0
	mov	r0, r4
	bl	G_DoReborn
.LVL763:
	b	.L909
.LVL764:
.L931:
.LBB254:
.LBB250:
	.loc 1 844 0
	ldrsb	r1, [r10, #6]
	cmp	r1, #50
	ble	.L958
	.loc 1 845 0
	ldr	r1, .L1006+36
	ldr	r1, [r1]
	.loc 1 844 0
	tst	r1, #31
	bne	.L958
.L960:
	.loc 1 845 0
	mov	r1, r1, asr #5
	and	r1, r1, #3
	cmp	r1, r6
	beq	.L1004
.L934:
	.loc 1 852 0
	cmp	r2, #0
	beq	.L928
.L958:
	ldr	r2, [r5, #2288]
	cmp	r2, #0
	bne	.L928
	str	r3, [sp, #12]
	.loc 1 852 0 is_stmt 0 discriminator 2
	ldr	r3, .L1006+36
	ldr	r2, [r3]
	ldr	r3, .L1006+40
	mov	r0, r2
	ldr	r1, [r3]
	str	r2, [sp, #8]
	bl	__aeabi_idivmod
.LVL765:
	cmp	r1, #0
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	bne	.L928
	.loc 1 854 0 is_stmt 1
	cmp	r2, #12
	ble	.L935
	.loc 1 855 0
	ldrsh	r2, [fp]
	ldrsh	r1, [r10, #10]
	cmp	r2, r1
	beq	.L935
	.loc 1 856 0
	ldr	r0, .L1006+84
	str	r3, [sp, #8]
	bl	I_Error
.LVL766:
	ldr	r3, [sp, #8]
.L935:
	.loc 1 858 0
	ldr	r2, [r10]
	cmp	r2, #0
	.loc 1 859 0
	ldrne	r2, [r2, #24]
	.loc 1 861 0
	strh	r2, [fp]	@ movhi
	b	.L928
.LVL767:
.L1000:
.LBE250:
	.loc 1 872 0
	and	r1, r3, #3
	cmp	r1, #2
	beq	.L940
	cmp	r1, #3
	beq	.L941
	cmp	r1, #1
	beq	.L1005
	.loc 1 894 0
	mov	r1, #3
	.loc 1 893 0
	and	r3, r3, #28
	mov	r3, r3, asr #2
	.loc 1 892 0
	strb	r3, [ip, #2276]
	.loc 1 895 0
	ldr	r3, [r2]
	.loc 1 896 0
	str	r10, [ip, #2132]
	.loc 1 894 0
	strb	r1, [r4]
	.loc 1 895 0
	str	r3, [ip, #2272]
.L944:
	.loc 1 906 0
	strb	r10, [r5, #13]
	b	.L938
.L954:
.LBE254:
	.loc 1 960 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 949 0
	b	WI_Ticker
.LVL768:
.L955:
	.cfi_restore_state
	.loc 1 960 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 953 0
	b	F_Ticker
.LVL769:
.L956:
	.cfi_restore_state
	.loc 1 960 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 957 0
	b	D_PageTicker
.LVL770:
.L995:
	.cfi_restore_state
.LBB255:
.LBB245:
.LBB244:
	bl	G_ChangedPlayerColour.part.1
.LVL771:
	b	.L908
.LVL772:
.L1003:
.LBE244:
.LBE245:
.LBE255:
.LBB256:
.LBB251:
	.loc 1 839 0
	mov	r0, r2
	str	r3, [sp, #8]
	bl	G_WriteDemoTiccmd
.LVL773:
	ldr	r3, [sp, #8]
	b	.L930
.LVL774:
.L1002:
	.loc 1 837 0
	mov	r0, r2
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	bl	G_ReadDemoTiccmd
.LVL775:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	b	.L929
.LVL776:
.L940:
.LBE251:
	.loc 1 883 0
	ldrb	r1, [fp]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L945
	.loc 1 884 0
	ldr	lr, .L1006+88
	ldmia	lr!, {r0, r1}
	ldrb	lr, [lr]	@ zero_extendqisi2
	str	r0, [fp]	@ unaligned
	strb	lr, [fp, #8]
	str	r1, [fp, #4]	@ unaligned
.L945:
	.loc 1 886 0
	and	r3, r3, #28
	mov	r3, r3, asr #2
	.loc 1 885 0
	strb	r3, [ip, #2276]
	.loc 1 887 0
	strb	r6, [r4]
	.loc 1 888 0
	b	.L944
.L941:
	.loc 1 901 0
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L944
	.loc 1 901 0 is_stmt 0 discriminator 1
	ldr	r3, .L1006+92
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	.loc 1 903 0 is_stmt 1 discriminator 1
	movhi	r3, #1
	strhib	r3, [r4]
	.loc 1 904 0 discriminator 1
	b	.L944
.L1005:
	.loc 1 875 0
	ldr	r3, .L1006+32
	ldr	r1, .L1006+32
	ldr	r3, [r3]
	stmib	sp, {r2, ip}
	eor	r3, r3, #1
	.loc 1 876 0
	cmp	r3, #0
	.loc 1 875 0
	str	r3, [r1]
	.loc 1 876 0
	beq	.L943
	.loc 1 877 0
	bl	S_PauseSound
.LVL777:
	ldmib	sp, {r2, ip}
	b	.L944
.L943:
	.loc 1 879 0
	bl	S_ResumeSound
.LVL778:
	ldmib	sp, {r2, ip}
	b	.L944
.LVL779:
.L1004:
	str	r3, [sp, #8]
.LBB252:
.LBB248:
	.loc 1 849 0
	ldr	r3, .L1006+96
	ldr	r0, .L1006+100
	ldr	r1, [r3, r6, asl #2]
	bl	doom_printf
.LVL780:
	ldr	r3, .L1006+16
	ldr	r2, [r3]
	ldr	r3, [sp, #8]
	b	.L934
.L1007:
	.align	2
.L1006:
	.word	demoplayback
	.word	consoleplayer
	.word	mapcolor_plyr
	.word	mapcolor_me
	.word	netgame
	.word	players
	.word	playeringame
	.word	gameaction
	.word	paused
	.word	gametic
	.word	ticdup
	.word	.LANCHOR0+2136
	.word	.LANCHOR0
	.word	715827883
	.word	netcmds
	.word	demorecording
	.word	players+1136
	.word	savedescription
	.word	menuactive
	.word	basetic
	.word	gamestate
	.word	.LC45
	.word	.LC46
	.word	compatibility_level
	.word	player_names
	.word	.LC44
.LBE248:
.LBE252:
.LBE256:
	.cfi_endproc
.LFE12:
	.size	G_Ticker, .-G_Ticker
	.global	comp_lev_str
	.global	cpars
	.global	pars
	.global	bodyque
	.comm	bodyquesize,4,4
	.comm	bodyqueslot,4,4
	.comm	defaultskill,4,4
	.comm	savedescription,32,4
	.global	angleturn
	.global	sidemove
	.global	forwardmove
	.comm	joybspeed,4,4
	.comm	joybuse,4,4
	.comm	joybstrafe,4,4
	.comm	joybfire,4,4
	.comm	mouse_double_click_use,4,4
	.comm	mousebuse,4,4
	.comm	mousebbackward,4,4
	.comm	mousebforward,4,4
	.comm	mousebstrafe,4,4
	.comm	mousebfire,4,4
	.comm	key_screenshot,4,4
	.comm	key_weapon9,4,4
	.comm	key_weapon8,4,4
	.comm	key_weapon7,4,4
	.comm	key_weapon6,4,4
	.comm	key_weapon5,4,4
	.comm	key_weapon4,4,4
	.comm	key_weapon3,4,4
	.comm	key_weapon2,4,4
	.comm	key_weapon1,4,4
	.comm	key_weapontoggle,4,4
	.comm	destination_keys,16,4
	.comm	key_setup,4,4
	.comm	key_pause,4,4
	.comm	key_spy,4,4
	.comm	key_gamma,4,4
	.comm	key_quit,4,4
	.comm	key_quickload,4,4
	.comm	key_messages,4,4
	.comm	key_endgame,4,4
	.comm	key_quicksave,4,4
	.comm	key_hud,4,4
	.comm	key_soundvolume,4,4
	.global	key_help
	.comm	key_map_rotate,4,4
	.comm	key_map_overlay,4,4
	.comm	key_map_grid,4,4
	.comm	key_map_clear,4,4
	.comm	key_map_mark,4,4
	.comm	key_map_follow,4,4
	.comm	key_map_gobig,4,4
	.comm	key_map,4,4
	.comm	key_map_zoomout,4,4
	.comm	key_map_zoomin,4,4
	.comm	key_map_down,4,4
	.comm	key_map_up,4,4
	.comm	key_map_left,4,4
	.comm	key_map_right,4,4
	.comm	key_enter,4,4
	.comm	key_backspace,4,4
	.comm	key_chat,4,4
	.comm	key_zoomout,4,4
	.comm	key_zoomin,4,4
	.comm	key_reverse,4,4
	.comm	key_autorun,4,4
	.comm	key_loadgame,4,4
	.comm	key_savegame,4,4
	.global	key_escape
	.comm	key_speed,4,4
	.comm	key_strafe,4,4
	.comm	key_use,4,4
	.comm	key_fire,4,4
	.comm	key_straferight,4,4
	.comm	key_strafeleft,4,4
	.comm	key_menu_enter,4,4
	.comm	key_menu_escape,4,4
	.comm	key_menu_backspace,4,4
	.comm	key_menu_down,4,4
	.comm	key_menu_up,4,4
	.comm	key_menu_left,4,4
	.comm	key_menu_right,4,4
	.comm	key_down,4,4
	.comm	key_up,4,4
	.comm	key_left,4,4
	.comm	key_right,4,4
	.comm	longtics,4,4
	.comm	totalleveltimes,4,4
	.global	autorun
	.global	haswolflevels
	.comm	wminfo,204,4
	.comm	singledemo,4,4
	.comm	demover,4,4
	.comm	demoplayback,4,4
	.comm	demorecording,4,4
	.comm	totalsecret,4,4
	.comm	totalitems,4,4
	.comm	totallive,4,4
	.comm	totalkills,4,4
	.comm	basetic,4,4
	.comm	gametic,4,4
	.comm	displayplayer,4,4
	.comm	consoleplayer,4,4
	.comm	players,1136,4
	.comm	playeringame,16,4
	.comm	netgame,4,4
	.comm	deathmatch,4,4
	.comm	starttime,4,4
	.comm	noblit,4,4
	.comm	nodrawers,4,4
	.comm	fastdemo,4,4
	.comm	timingdemo,4,4
	.comm	usergame,4,4
	.comm	paused,4,4
	.comm	gamemap,4,4
	.comm	gameepisode,4,4
	.comm	respawnmonsters,4,4
	.comm	gameskill,1,1
	.comm	gamestate,1,1
	.comm	gameaction,1,1
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	levels.10557, %object
	.size	levels.10557, 50
levels.10557:
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	8
	.byte	11
	.byte	8
	.byte	11
	.byte	8
	.byte	11
	.byte	8
	.byte	11
	.byte	8
	.byte	11
	.byte	8
	.byte	11
	.byte	8
	.byte	11
	.byte	11
	.byte	11
	.byte	7
	.byte	11
	.byte	8
	.byte	11
	.byte	11
	.byte	11
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	10
	.byte	11
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	13
	.byte	13
	.byte	7
	.byte	14
	.byte	3
	.byte	15
	.byte	15
	.byte	15
	.byte	1
	.byte	15
	.space	2
	.type	version_headers, %object
	.size	version_headers, 36
version_headers:
	.word	14
	.word	.LC42
	.word	210
	.word	16
	.word	.LC42
	.word	211
	.word	17
	.word	.LC42
	.word	212
	.type	map_old_comp_levels, %object
	.size	map_old_comp_levels, 15
map_old_comp_levels:
	.byte	0
	.byte	1
	.byte	2
	.byte	4
	.byte	5
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
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	angleturn, %object
	.size	angleturn, 12
angleturn:
	.word	640
	.word	1280
	.word	320
	.type	forwardmove, %object
	.size	forwardmove, 8
forwardmove:
	.word	25
	.word	50
	.type	sidemove, %object
	.size	sidemove, 8
sidemove:
	.word	24
	.word	40
	.type	cpars, %object
	.size	cpars, 128
cpars:
	.word	30
	.word	90
	.word	120
	.word	120
	.word	90
	.word	150
	.word	120
	.word	120
	.word	270
	.word	90
	.word	210
	.word	150
	.word	150
	.word	150
	.word	210
	.word	150
	.word	420
	.word	150
	.word	210
	.word	150
	.word	240
	.word	150
	.word	180
	.word	150
	.word	150
	.word	300
	.word	330
	.word	420
	.word	300
	.word	180
	.word	120
	.word	30
	.type	pars, %object
	.size	pars, 160
pars:
	.word	0
	.space	36
	.word	0
	.word	30
	.word	75
	.word	120
	.word	90
	.word	165
	.word	180
	.word	180
	.word	30
	.word	165
	.word	0
	.word	90
	.word	90
	.word	90
	.word	120
	.word	90
	.word	360
	.word	240
	.word	30
	.word	170
	.word	0
	.word	90
	.word	45
	.word	90
	.word	150
	.word	90
	.word	90
	.word	165
	.word	30
	.word	135
	.type	savegamesize, %object
	.size	savegamesize, 4
savegamesize:
	.word	131072
	.type	comp_lev_str, %object
	.size	comp_lev_str, 72
comp_lev_str:
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.type	demolumpnum, %object
	.size	demolumpnum, 4
demolumpnum:
	.word	-1
	.type	key_help, %object
	.size	key_help, 4
key_help:
	.word	187
	.type	key_escape, %object
	.size	key_escape, 4
key_escape:
	.word	27
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"F_SKY1\000"
	.space	1
.LC1:
	.ascii	"SKY3\000"
	.space	3
.LC2:
	.ascii	"SKY1\000"
	.space	3
.LC3:
	.ascii	"SKY2\000"
	.space	3
.LC4:
	.ascii	"SKY4\000"
	.space	3
.LC5:
	.ascii	"map%02d\000"
.LC6:
	.ascii	"E%dM%d\000"
	.space	1
.LC7:
	.ascii	"G_CheckSpot: unexpected angle %d\012\000"
	.space	2
.LC8:
	.ascii	"G_ReadDemoHeader: wrong demo header\012\000"
	.space	3
.LC9:
	.ascii	"G_DeathMatchSpawnPlayer: Only %i deathmatch spots, "
	.ascii	"%d required\000"
	.space	1
.LC10:
	.ascii	"FINISHED: MAP%02d\012\000"
	.space	1
.LC11:
	.ascii	"FINISHED: E%dM%d\012\000"
	.space	2
.LC12:
	.ascii	"demosav\000"
.LC13:
	.ascii	"%s/%s%d.dsg\000"
.LC14:
	.ascii	"-dog\000"
	.space	3
.LC15:
	.ascii	"-dogs\000"
	.space	2
.LC16:
	.ascii	"-complevel\000"
	.space	1
.LC17:
	.ascii	"G_WriteOptions: GAME_OPTION_SIZE is too small\000"
	.space	2
.LC18:
	.ascii	"G_ReadDemoHeader: Unknown demo format %d.\000"
	.space	2
.LC19:
	.ascii	"G_DoPlayDemo: playing demo with %s compatibility\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	".lmp\000"
	.space	3
.LC21:
	.ascii	"wb\000"
	.space	1
.LC22:
	.ascii	"r+\000"
	.space	1
.LC23:
	.ascii	"G_RecordDemo: failed to open %s\000"
.LC24:
	.ascii	"G_RecordDemo: No save in demo, can't continue\000"
	.space	2
.LC25:
	.ascii	"G_BeginRecording: Boom compatibility level unrecogn"
	.ascii	"ised?\000"
	.space	3
.LC26:
	.ascii	"-longtics\000"
	.space	2
.LC27:
	.ascii	"G_BeginRecording: Error writing demo header\000"
.LC28:
	.ascii	"Couldn't read file %s: %s\000"
	.space	2
.LC29:
	.ascii	"(Unknown Error)\000"
.LC30:
	.ascii	"Unrecognised savegame version!\012Are you sure? (y/"
	.ascii	"n) \000"
.LC31:
	.ascii	"Incompatible Savegame!!!\012\000"
	.space	2
.LC32:
	.ascii	"Wads expected:\012\012\000"
	.space	3
.LC33:
	.ascii	"\012Are you sure?\000"
	.space	1
.LC34:
	.ascii	"G_DoLoadGame: Incompatible savegame\012\000"
	.space	3
.LC35:
	.ascii	"G_DoLoadGame: Bad savegame\000"
	.space	1
.LC36:
	.ascii	"G_CheckDemoStatus: Demo recorded\000"
	.space	3
.LC37:
	.ascii	"Timed %u gametics in %u realtics = %-.1f frames per"
	.ascii	" second\000"
	.space	1
.LC38:
	.ascii	"G_ReadDemoTiccmd: missing DEMOMARKER\012\000"
	.space	2
.LC39:
	.ascii	"G_WriteDemoTiccmd: error writing demo\000"
	.space	2
.LC40:
	.ascii	"Game save failed!\000"
	.space	2
.LC41:
	.ascii	"c:/devl/prboom3ds/src/g_game.c\000"
	.space	1
.LC42:
	.ascii	"PrBoom %d\000"
	.space	2
.LC43:
	.ascii	"%s\000"
	.space	1
.LC44:
	.ascii	"%s is turbo!\000"
	.space	3
.LC45:
	.ascii	"G_Ticker: Consistency failure (%i should be %i)\000"
.LC46:
	.ascii	"NET GAME\000"
	.space	3
.LC47:
	.ascii	"doom v1.2\000"
	.space	2
.LC48:
	.ascii	"doom v1.666\000"
.LC49:
	.ascii	"doom/doom2 v1.9\000"
.LC50:
	.ascii	"ultimate doom\000"
	.space	2
.LC51:
	.ascii	"final doom\000"
	.space	1
.LC52:
	.ascii	"dosdoom compatibility\000"
	.space	2
.LC53:
	.ascii	"tasdoom compatibility\000"
	.space	2
.LC54:
	.ascii	"\"boom compatibility\"\000"
	.space	3
.LC55:
	.ascii	"boom v2.01\000"
	.space	1
.LC56:
	.ascii	"boom v2.02\000"
	.space	1
.LC57:
	.ascii	"lxdoom v1.3.2+\000"
	.space	1
.LC58:
	.ascii	"MBF\000"
.LC59:
	.ascii	"PrBoom 2.03beta\000"
.LC60:
	.ascii	"PrBoom v2.1.0-2.1.1\000"
.LC61:
	.ascii	"PrBoom v2.1.2-v2.2.6\000"
	.space	3
.LC62:
	.ascii	"PrBoom v2.3.x\000"
	.space	2
.LC63:
	.ascii	"PrBoom 2.4.0\000"
	.space	3
.LC64:
	.ascii	"Current PrBoom\000"
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	gamekeydown, %object
	.size	gamekeydown, 2048
gamekeydown:
	.space	2048
	.type	joyymove, %object
	.size	joyymove, 4
joyymove:
	.space	4
	.type	joyxmove, %object
	.size	joyxmove, 4
joyxmove:
	.space	4
	.type	mousey, %object
	.size	mousey, 4
mousey:
	.space	4
	.type	mousex, %object
	.size	mousex, 4
mousex:
	.space	4
	.type	special_event, %object
	.size	special_event, 1
special_event:
	.space	1
	.space	3
	.type	mousearray, %object
	.size	mousearray, 16
mousearray:
	.space	16
	.type	joyarray, %object
	.size	joyarray, 20
joyarray:
	.space	20
	.type	computed.10456, %object
	.size	computed.10456, 4
computed.10456:
	.space	4
	.type	haswolflevels, %object
	.size	haswolflevels, 4
haswolflevels:
	.space	4
	.type	s.10455, %object
	.size	s.10455, 8
s.10455:
	.space	8
	.type	queuesize.10357, %object
	.size	queuesize.10357, 4
queuesize.10357:
	.space	4
	.type	bodyque, %object
	.size	bodyque, 4
bodyque:
	.space	4
	.type	savebuffer, %object
	.size	savebuffer, 4
savebuffer:
	.space	4
	.type	command_loadgame, %object
	.size	command_loadgame, 4
command_loadgame:
	.space	4
	.type	consistancy, %object
	.size	consistancy, 96
consistancy:
	.space	96
	.type	autorun, %object
	.size	autorun, 4
autorun:
	.space	4
	.type	turnheld, %object
	.size	turnheld, 4
turnheld:
	.space	4
	.type	dclicks, %object
	.size	dclicks, 4
dclicks:
	.space	4
	.type	dclickstate, %object
	.size	dclickstate, 4
dclickstate:
	.space	4
	.type	dclicktime, %object
	.size	dclicktime, 4
dclicktime:
	.space	4
	.type	dclickstate2, %object
	.size	dclickstate2, 4
dclickstate2:
	.space	4
	.type	dclicktime2, %object
	.size	dclicktime2, 4
dclicktime2:
	.space	4
	.type	dclicks2, %object
	.size	dclicks2, 4
dclicks2:
	.space	4
	.type	c.10214, %object
	.size	c.10214, 4
c.10214:
	.space	4
	.type	secretexit, %object
	.size	secretexit, 4
secretexit:
	.space	4
	.type	forced_loadgame, %object
	.size	forced_loadgame, 4
forced_loadgame:
	.space	4
	.type	savegameslot, %object
	.size	savegameslot, 1
savegameslot:
	.space	1
	.type	d_skill, %object
	.size	d_skill, 1
d_skill:
	.space	1
	.space	2
	.type	d_episode, %object
	.size	d_episode, 4
d_episode:
	.space	4
	.type	d_map, %object
	.size	d_map, 4
d_map:
	.space	4
	.type	netdemo, %object
	.size	netdemo, 4
netdemo:
	.space	4
	.type	fast.10577, %object
	.size	fast.10577, 4
fast.10577:
	.space	4
	.type	demofp, %object
	.size	demofp, 4
demofp:
	.space	4
	.type	defdemoname, %object
	.size	defdemoname, 4
defdemoname:
	.space	4
	.type	demobuffer, %object
	.size	demobuffer, 4
demobuffer:
	.space	4
	.type	demolength, %object
	.size	demolength, 4
demolength:
	.space	4
	.type	demo_p, %object
	.size	demo_p, 4
demo_p:
	.space	4
	.type	msg.10741, %object
	.size	msg.10741, 1024
msg.10741:
	.space	1024
	.type	prevgamestate.10276, %object
	.size	prevgamestate.10276, 1
prevgamestate.10276:
	.space	1
	.text
.Letext0:
	.file 3 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 4 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stdarg.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 7 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 "<built-in>"
	.file 9 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.file 10 "c:/devl/prboom3ds/src/z_zone.h"
	.file 11 "c:/devl/prboom3ds/src/doomdef.h"
	.file 12 "c:/devl/prboom3ds/src/doomtype.h"
	.file 13 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 14 "c:/devl/prboom3ds/src/tables.h"
	.file 15 "c:/devl/prboom3ds/src/d_think.h"
	.file 16 "c:/devl/prboom3ds/src/info.h"
	.file 17 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 18 "c:/devl/prboom3ds/src/doomdata.h"
	.file 19 "c:/devl/prboom3ds/src/p_mobj.h"
	.file 20 "c:/devl/prboom3ds/src/r_defs.h"
	.file 21 "c:/devl/prboom3ds/src/d_player.h"
	.file 22 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 23 "c:/devl/prboom3ds/src/doomstat.h"
	.file 24 "c:/devl/prboom3ds/src/d_event.h"
	.file 25 "c:/devl/prboom3ds/src/m_random.h"
	.file 26 "c:/devl/prboom3ds/src/sounds.h"
	.file 27 "c:/devl/prboom3ds/src/lprintf.h"
	.file 28 "c:/devl/prboom3ds/src/z_bmalloc.h"
	.file 29 "c:/devl/prboom3ds/src/m_argv.h"
	.file 30 "c:/devl/prboom3ds/src/p_saveg.h"
	.file 31 "c:/devl/prboom3ds/src/d_main.h"
	.file 32 "c:/devl/prboom3ds/src/am_map.h"
	.file 33 "c:/devl/prboom3ds/src/r_draw.h"
	.file 34 "c:/devl/prboom3ds/src/s_sound.h"
	.file 35 "c:/devl/prboom3ds/src/r_sky.h"
	.file 36 "c:/devl/prboom3ds/src/d_deh.h"
	.file 37 "c:/devl/prboom3ds/src/p_inter.h"
	.file 38 "c:/devl/prboom3ds/src/r_data.h"
	.file 39 "c:/devl/prboom3ds/src/p_setup.h"
	.file 40 "c:/devl/prboom3ds/src/st_stuff.h"
	.file 41 "c:/devl/prboom3ds/src/hu_stuff.h"
	.file 42 "c:/devl/prboom3ds/src/p_map.h"
	.file 43 "c:/devl/prboom3ds/src/r_main.h"
	.file 44 "c:/devl/prboom3ds/src/m_menu.h"
	.file 45 "c:/devl/prboom3ds/src/r_fps.h"
	.file 46 "c:/devl/prboom3ds/src/r_demo.h"
	.file 47 "c:/devl/prboom3ds/src/f_finale.h"
	.file 48 "c:/devl/prboom3ds/src/wi_stuff.h"
	.file 49 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 50 "c:/devl/prboom3ds/src/i_system.h"
	.file 51 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 52 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\unistd.h"
	.file 53 "c:/devl/prboom3ds/src/m_misc.h"
	.file 54 "c:/devl/prboom3ds/src/p_checksum.h"
	.file 55 "c:/devl/prboom3ds/src/p_tick.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x8342
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2476
	.byte	0x1
	.4byte	.LASF2477
	.4byte	.LASF2478
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0xd4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x28
	.4byte	0x49
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x8
	.byte	0
	.4byte	0x60
	.uleb128 0x5
	.4byte	.LASF15
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
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
	.byte	0x5
	.byte	0x7
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x6
	.byte	0x10
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x6
	.byte	0x27
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x161
	.4byte	0x37
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x4a
	.4byte	0xe6
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x6
	.byte	0x4c
	.4byte	0xbb
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x4d
	.4byte	0xe6
	.byte	0
	.uleb128 0xb
	.4byte	0x70
	.4byte	0xf6
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x11e
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x6
	.byte	0x49
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x6
	.byte	0x4e
	.4byte	0xc7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x4f
	.4byte	0xfd
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x53
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x192
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2f
	.4byte	0x192
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x7
	.byte	0x30
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x7
	.byte	0x30
	.4byte	0x62
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x7
	.byte	0x30
	.4byte	0x62
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x7
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
	.byte	0x7
	.byte	0x35
	.4byte	0x221
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x7
	.byte	0x37
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x7
	.byte	0x38
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.4byte	0x62
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3b
	.4byte	0x62
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3c
	.4byte	0x62
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3d
	.4byte	0x62
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.4byte	0x62
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.4byte	0x62
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x261
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0x49
	.4byte	0x261
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4a
	.4byte	0x261
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4c
	.4byte	0x134
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4f
	.4byte	0x134
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x60
	.4byte	0x271
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.2byte	0x190
	.byte	0x7
	.byte	0x5b
	.4byte	0x2af
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x7
	.byte	0x5c
	.4byte	0x2af
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0x5d
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0x5f
	.4byte	0x2b5
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x7
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
	.byte	0x7
	.byte	0x73
	.4byte	0x2f1
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x7
	.byte	0x74
	.4byte	0x2f1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x75
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x421
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb4
	.4byte	0x2f1
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x7
	.byte	0xb5
	.4byte	0x62
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x7
	.byte	0xb6
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0xb7
	.4byte	0x77
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0xb8
	.4byte	0x77
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xb9
	.4byte	0x2cc
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x7
	.byte	0xba
	.4byte	0x62
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0xc1
	.4byte	0x60
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc3
	.4byte	0x584
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0xc5
	.4byte	0x5b3
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0xc8
	.4byte	0x5d7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x7
	.byte	0xc9
	.4byte	0x5f1
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xcc
	.4byte	0x2cc
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcd
	.4byte	0x2f1
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x62
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.byte	0xd1
	.4byte	0x5f7
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x7
	.byte	0xd2
	.4byte	0x607
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd5
	.4byte	0x2cc
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x7
	.byte	0xd8
	.4byte	0x62
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x7
	.byte	0xd9
	.4byte	0xa5
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x7
	.byte	0xdc
	.4byte	0x43f
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x7
	.byte	0xe0
	.4byte	0x129
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x7
	.byte	0xe2
	.4byte	0x11e
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x7
	.byte	0xe3
	.4byte	0x62
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.4byte	0x62
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x445
	.uleb128 0x16
	.4byte	.LASF68
	.2byte	0x428
	.byte	0x7
	.2byte	0x239
	.4byte	0x577
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x23b
	.4byte	0x62
	.byte	0
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x240
	.4byte	0x65e
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x240
	.4byte	0x65e
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x240
	.4byte	0x65e
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x242
	.4byte	0x62
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x243
	.4byte	0x840
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x245
	.4byte	0x62
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x246
	.4byte	0x5a8
	.byte	0x34
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x248
	.4byte	0x62
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x24a
	.4byte	0x85b
	.byte	0x3c
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x24d
	.4byte	0x192
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x24e
	.4byte	0x62
	.byte	0x44
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x24f
	.4byte	0x192
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x250
	.4byte	0x861
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x253
	.4byte	0x62
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x254
	.4byte	0x577
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x277
	.4byte	0x81e
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x27b
	.4byte	0x2af
	.2byte	0x148
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x27c
	.4byte	0x271
	.2byte	0x14c
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x280
	.4byte	0x872
	.2byte	0x2dc
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x285
	.4byte	0x623
	.2byte	0x2e0
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x286
	.4byte	0x87e
	.2byte	0x2ec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.uleb128 0x10
	.byte	0x4
	.4byte	0x421
	.uleb128 0x14
	.4byte	0x62
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x62
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
	.4byte	0x60
	.uleb128 0x15
	.4byte	0xb0
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x14
	.4byte	0x62
	.4byte	0x5f1
	.uleb128 0x15
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5dd
	.uleb128 0xb
	.4byte	0x70
	.4byte	0x607
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x70
	.4byte	0x617
	.uleb128 0xc
	.4byte	0xf6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x11d
	.4byte	0x2f7
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x658
	.uleb128 0x17
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x123
	.4byte	0x658
	.byte	0
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x124
	.4byte	0x62
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x7
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
	.byte	0x7
	.2byte	0x13d
	.4byte	0x699
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x13e
	.4byte	0x699
	.byte	0
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x13f
	.4byte	0x699
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x140
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x6a9
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x7
	.2byte	0x258
	.4byte	0x7aa
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x25a
	.4byte	0x37
	.byte	0
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x25b
	.4byte	0x577
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x25c
	.4byte	0x7aa
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x25d
	.4byte	0x1a8
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x25e
	.4byte	0x62
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x25f
	.4byte	0x25
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x260
	.4byte	0x664
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x261
	.4byte	0x11e
	.byte	0x68
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x262
	.4byte	0x11e
	.byte	0x70
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x263
	.4byte	0x11e
	.byte	0x78
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x264
	.4byte	0x7ba
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x265
	.4byte	0x7ca
	.byte	0x88
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x266
	.4byte	0x62
	.byte	0xa0
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x267
	.4byte	0x11e
	.byte	0xa4
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x268
	.4byte	0x11e
	.byte	0xac
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x269
	.4byte	0x11e
	.byte	0xb4
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x26a
	.4byte	0x11e
	.byte	0xbc
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x26b
	.4byte	0x11e
	.byte	0xc4
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x26c
	.4byte	0x62
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
	.byte	0x7
	.2byte	0x271
	.4byte	0x7fe
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x274
	.4byte	0x7fe
	.byte	0
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x7
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
	.4byte	0x37
	.4byte	0x81e
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x7
	.2byte	0x256
	.4byte	0x840
	.uleb128 0x1d
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x26d
	.4byte	0x6a9
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x7
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
	.4byte	0x62
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
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x9
	.byte	0x33
	.4byte	0x617
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x4
	.byte	0x62
	.4byte	0x3e
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8aa
	.uleb128 0x1f
	.uleb128 0x20
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.4byte	0x8ea
	.uleb128 0x21
	.4byte	.LASF123
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF124
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF125
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF126
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF127
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF128
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF129
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF130
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF131
	.sleb128 8
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0x43
	.4byte	0x911
	.uleb128 0x21
	.4byte	.LASF132
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF133
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF134
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF135
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF136
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xb
	.byte	0x49
	.4byte	0x8ea
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0x4c
	.4byte	0x943
	.uleb128 0x21
	.4byte	.LASF138
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF139
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF140
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF141
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF142
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xb
	.byte	0x52
	.4byte	0x91c
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0x95
	.4byte	0x96f
	.uleb128 0x21
	.4byte	.LASF144
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF145
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF146
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF147
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xb
	.byte	0x9a
	.4byte	0x94e
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0xaf
	.4byte	0x9a7
	.uleb128 0x21
	.4byte	.LASF149
	.sleb128 -1
	.uleb128 0x21
	.4byte	.LASF150
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF151
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF152
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF153
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF154
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xb
	.byte	0xb6
	.4byte	0x97a
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0xbc
	.4byte	0x9e5
	.uleb128 0x21
	.4byte	.LASF156
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF157
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF158
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF159
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF160
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF161
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF162
	.sleb128 6
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0xc8
	.4byte	0xa30
	.uleb128 0x21
	.4byte	.LASF163
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF164
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF165
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF166
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF167
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF168
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF169
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF170
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF171
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF172
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF173
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0xb
	.byte	0xd5
	.4byte	0x9e5
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0xd8
	.4byte	0xa68
	.uleb128 0x21
	.4byte	.LASF175
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF176
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF177
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF178
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF179
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF180
	.sleb128 5
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0xb
	.byte	0xe2
	.4byte	0xa9b
	.uleb128 0x21
	.4byte	.LASF181
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF182
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF183
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF184
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF185
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF186
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF187
	.sleb128 6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF188
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0xc
	.byte	0x42
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0xc
	.byte	0x4c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0xc
	.byte	0x5c
	.4byte	0x25
	.uleb128 0x20
	.byte	0x1
	.byte	0xc
	.byte	0x77
	.4byte	0xb4a
	.uleb128 0x21
	.4byte	.LASF192
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF193
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF194
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF195
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF196
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF197
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF198
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF199
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF200
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF201
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF202
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF203
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF204
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF205
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF206
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF207
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF208
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF209
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF210
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF211
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF212
	.sleb128 17
	.byte	0
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0xc
	.byte	0x8e
	.4byte	0xac3
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0xd
	.byte	0x2f
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0xe
	.byte	0x47
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0xf
	.byte	0x32
	.4byte	0xb76
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb7c
	.uleb128 0x22
	.4byte	0xb83
	.uleb128 0x23
	.byte	0
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0xf
	.byte	0x48
	.4byte	0xb6b
	.uleb128 0x4
	.4byte	.LASF218
	.byte	0x18
	.byte	0xf
	.byte	0x4c
	.4byte	0xbe3
	.uleb128 0xe
	.4byte	.LASF219
	.byte	0xf
	.byte	0x4e
	.4byte	0xbe3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF220
	.byte	0xf
	.byte	0x4f
	.4byte	0xbe3
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF221
	.byte	0xf
	.byte	0x50
	.4byte	0xb83
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF222
	.byte	0xf
	.byte	0x56
	.4byte	0xbe3
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF223
	.byte	0xf
	.byte	0x56
	.4byte	0xbe3
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF224
	.byte	0xf
	.byte	0x5b
	.4byte	0x37
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb8e
	.uleb128 0x3
	.4byte	.LASF225
	.byte	0xf
	.byte	0x5c
	.4byte	0xb8e
	.uleb128 0x20
	.byte	0x1
	.byte	0x10
	.byte	0x2e
	.4byte	0xf98
	.uleb128 0x21
	.4byte	.LASF226
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF227
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF228
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF229
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF230
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF231
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF232
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF233
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF234
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF235
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF236
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF237
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF238
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF239
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF240
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF241
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF242
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF243
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF244
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF245
	.sleb128 19
	.uleb128 0x21
	.4byte	.LASF246
	.sleb128 20
	.uleb128 0x21
	.4byte	.LASF247
	.sleb128 21
	.uleb128 0x21
	.4byte	.LASF248
	.sleb128 22
	.uleb128 0x21
	.4byte	.LASF249
	.sleb128 23
	.uleb128 0x21
	.4byte	.LASF250
	.sleb128 24
	.uleb128 0x21
	.4byte	.LASF251
	.sleb128 25
	.uleb128 0x21
	.4byte	.LASF252
	.sleb128 26
	.uleb128 0x21
	.4byte	.LASF253
	.sleb128 27
	.uleb128 0x21
	.4byte	.LASF254
	.sleb128 28
	.uleb128 0x21
	.4byte	.LASF255
	.sleb128 29
	.uleb128 0x21
	.4byte	.LASF256
	.sleb128 30
	.uleb128 0x21
	.4byte	.LASF257
	.sleb128 31
	.uleb128 0x21
	.4byte	.LASF258
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF259
	.sleb128 33
	.uleb128 0x21
	.4byte	.LASF260
	.sleb128 34
	.uleb128 0x21
	.4byte	.LASF261
	.sleb128 35
	.uleb128 0x21
	.4byte	.LASF262
	.sleb128 36
	.uleb128 0x21
	.4byte	.LASF263
	.sleb128 37
	.uleb128 0x21
	.4byte	.LASF264
	.sleb128 38
	.uleb128 0x21
	.4byte	.LASF265
	.sleb128 39
	.uleb128 0x21
	.4byte	.LASF266
	.sleb128 40
	.uleb128 0x21
	.4byte	.LASF267
	.sleb128 41
	.uleb128 0x21
	.4byte	.LASF268
	.sleb128 42
	.uleb128 0x21
	.4byte	.LASF269
	.sleb128 43
	.uleb128 0x21
	.4byte	.LASF270
	.sleb128 44
	.uleb128 0x21
	.4byte	.LASF271
	.sleb128 45
	.uleb128 0x21
	.4byte	.LASF272
	.sleb128 46
	.uleb128 0x21
	.4byte	.LASF273
	.sleb128 47
	.uleb128 0x21
	.4byte	.LASF274
	.sleb128 48
	.uleb128 0x21
	.4byte	.LASF275
	.sleb128 49
	.uleb128 0x21
	.4byte	.LASF276
	.sleb128 50
	.uleb128 0x21
	.4byte	.LASF277
	.sleb128 51
	.uleb128 0x21
	.4byte	.LASF278
	.sleb128 52
	.uleb128 0x21
	.4byte	.LASF279
	.sleb128 53
	.uleb128 0x21
	.4byte	.LASF280
	.sleb128 54
	.uleb128 0x21
	.4byte	.LASF281
	.sleb128 55
	.uleb128 0x21
	.4byte	.LASF282
	.sleb128 56
	.uleb128 0x21
	.4byte	.LASF283
	.sleb128 57
	.uleb128 0x21
	.4byte	.LASF284
	.sleb128 58
	.uleb128 0x21
	.4byte	.LASF285
	.sleb128 59
	.uleb128 0x21
	.4byte	.LASF286
	.sleb128 60
	.uleb128 0x21
	.4byte	.LASF287
	.sleb128 61
	.uleb128 0x21
	.4byte	.LASF288
	.sleb128 62
	.uleb128 0x21
	.4byte	.LASF289
	.sleb128 63
	.uleb128 0x21
	.4byte	.LASF290
	.sleb128 64
	.uleb128 0x21
	.4byte	.LASF291
	.sleb128 65
	.uleb128 0x21
	.4byte	.LASF292
	.sleb128 66
	.uleb128 0x21
	.4byte	.LASF293
	.sleb128 67
	.uleb128 0x21
	.4byte	.LASF294
	.sleb128 68
	.uleb128 0x21
	.4byte	.LASF295
	.sleb128 69
	.uleb128 0x21
	.4byte	.LASF296
	.sleb128 70
	.uleb128 0x21
	.4byte	.LASF297
	.sleb128 71
	.uleb128 0x21
	.4byte	.LASF298
	.sleb128 72
	.uleb128 0x21
	.4byte	.LASF299
	.sleb128 73
	.uleb128 0x21
	.4byte	.LASF300
	.sleb128 74
	.uleb128 0x21
	.4byte	.LASF301
	.sleb128 75
	.uleb128 0x21
	.4byte	.LASF302
	.sleb128 76
	.uleb128 0x21
	.4byte	.LASF303
	.sleb128 77
	.uleb128 0x21
	.4byte	.LASF304
	.sleb128 78
	.uleb128 0x21
	.4byte	.LASF305
	.sleb128 79
	.uleb128 0x21
	.4byte	.LASF306
	.sleb128 80
	.uleb128 0x21
	.4byte	.LASF307
	.sleb128 81
	.uleb128 0x21
	.4byte	.LASF308
	.sleb128 82
	.uleb128 0x21
	.4byte	.LASF309
	.sleb128 83
	.uleb128 0x21
	.4byte	.LASF310
	.sleb128 84
	.uleb128 0x21
	.4byte	.LASF311
	.sleb128 85
	.uleb128 0x21
	.4byte	.LASF312
	.sleb128 86
	.uleb128 0x21
	.4byte	.LASF313
	.sleb128 87
	.uleb128 0x21
	.4byte	.LASF314
	.sleb128 88
	.uleb128 0x21
	.4byte	.LASF315
	.sleb128 89
	.uleb128 0x21
	.4byte	.LASF316
	.sleb128 90
	.uleb128 0x21
	.4byte	.LASF317
	.sleb128 91
	.uleb128 0x21
	.4byte	.LASF318
	.sleb128 92
	.uleb128 0x21
	.4byte	.LASF319
	.sleb128 93
	.uleb128 0x21
	.4byte	.LASF320
	.sleb128 94
	.uleb128 0x21
	.4byte	.LASF321
	.sleb128 95
	.uleb128 0x21
	.4byte	.LASF322
	.sleb128 96
	.uleb128 0x21
	.4byte	.LASF323
	.sleb128 97
	.uleb128 0x21
	.4byte	.LASF324
	.sleb128 98
	.uleb128 0x21
	.4byte	.LASF325
	.sleb128 99
	.uleb128 0x21
	.4byte	.LASF326
	.sleb128 100
	.uleb128 0x21
	.4byte	.LASF327
	.sleb128 101
	.uleb128 0x21
	.4byte	.LASF328
	.sleb128 102
	.uleb128 0x21
	.4byte	.LASF329
	.sleb128 103
	.uleb128 0x21
	.4byte	.LASF330
	.sleb128 104
	.uleb128 0x21
	.4byte	.LASF331
	.sleb128 105
	.uleb128 0x21
	.4byte	.LASF332
	.sleb128 106
	.uleb128 0x21
	.4byte	.LASF333
	.sleb128 107
	.uleb128 0x21
	.4byte	.LASF334
	.sleb128 108
	.uleb128 0x21
	.4byte	.LASF335
	.sleb128 109
	.uleb128 0x21
	.4byte	.LASF336
	.sleb128 110
	.uleb128 0x21
	.4byte	.LASF337
	.sleb128 111
	.uleb128 0x21
	.4byte	.LASF338
	.sleb128 112
	.uleb128 0x21
	.4byte	.LASF339
	.sleb128 113
	.uleb128 0x21
	.4byte	.LASF340
	.sleb128 114
	.uleb128 0x21
	.4byte	.LASF341
	.sleb128 115
	.uleb128 0x21
	.4byte	.LASF342
	.sleb128 116
	.uleb128 0x21
	.4byte	.LASF343
	.sleb128 117
	.uleb128 0x21
	.4byte	.LASF344
	.sleb128 118
	.uleb128 0x21
	.4byte	.LASF345
	.sleb128 119
	.uleb128 0x21
	.4byte	.LASF346
	.sleb128 120
	.uleb128 0x21
	.4byte	.LASF347
	.sleb128 121
	.uleb128 0x21
	.4byte	.LASF348
	.sleb128 122
	.uleb128 0x21
	.4byte	.LASF349
	.sleb128 123
	.uleb128 0x21
	.4byte	.LASF350
	.sleb128 124
	.uleb128 0x21
	.4byte	.LASF351
	.sleb128 125
	.uleb128 0x21
	.4byte	.LASF352
	.sleb128 126
	.uleb128 0x21
	.4byte	.LASF353
	.sleb128 127
	.uleb128 0x21
	.4byte	.LASF354
	.sleb128 128
	.uleb128 0x21
	.4byte	.LASF355
	.sleb128 129
	.uleb128 0x21
	.4byte	.LASF356
	.sleb128 130
	.uleb128 0x21
	.4byte	.LASF357
	.sleb128 131
	.uleb128 0x21
	.4byte	.LASF358
	.sleb128 132
	.uleb128 0x21
	.4byte	.LASF359
	.sleb128 133
	.uleb128 0x21
	.4byte	.LASF360
	.sleb128 134
	.uleb128 0x21
	.4byte	.LASF361
	.sleb128 135
	.uleb128 0x21
	.4byte	.LASF362
	.sleb128 136
	.uleb128 0x21
	.4byte	.LASF363
	.sleb128 137
	.uleb128 0x21
	.4byte	.LASF364
	.sleb128 138
	.uleb128 0x21
	.4byte	.LASF365
	.sleb128 139
	.uleb128 0x21
	.4byte	.LASF366
	.sleb128 140
	.byte	0
	.uleb128 0x3
	.4byte	.LASF367
	.byte	0x10
	.byte	0xc1
	.4byte	0xbf4
	.uleb128 0x20
	.byte	0x2
	.byte	0x10
	.byte	0xc8
	.4byte	0x2bc7
	.uleb128 0x21
	.4byte	.LASF368
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF369
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF370
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF371
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF372
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF373
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF374
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF375
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF376
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF377
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF378
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF379
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF380
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF381
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF382
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF383
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF384
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF385
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF386
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF387
	.sleb128 19
	.uleb128 0x21
	.4byte	.LASF388
	.sleb128 20
	.uleb128 0x21
	.4byte	.LASF389
	.sleb128 21
	.uleb128 0x21
	.4byte	.LASF390
	.sleb128 22
	.uleb128 0x21
	.4byte	.LASF391
	.sleb128 23
	.uleb128 0x21
	.4byte	.LASF392
	.sleb128 24
	.uleb128 0x21
	.4byte	.LASF393
	.sleb128 25
	.uleb128 0x21
	.4byte	.LASF394
	.sleb128 26
	.uleb128 0x21
	.4byte	.LASF395
	.sleb128 27
	.uleb128 0x21
	.4byte	.LASF396
	.sleb128 28
	.uleb128 0x21
	.4byte	.LASF397
	.sleb128 29
	.uleb128 0x21
	.4byte	.LASF398
	.sleb128 30
	.uleb128 0x21
	.4byte	.LASF399
	.sleb128 31
	.uleb128 0x21
	.4byte	.LASF400
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF401
	.sleb128 33
	.uleb128 0x21
	.4byte	.LASF402
	.sleb128 34
	.uleb128 0x21
	.4byte	.LASF403
	.sleb128 35
	.uleb128 0x21
	.4byte	.LASF404
	.sleb128 36
	.uleb128 0x21
	.4byte	.LASF405
	.sleb128 37
	.uleb128 0x21
	.4byte	.LASF406
	.sleb128 38
	.uleb128 0x21
	.4byte	.LASF407
	.sleb128 39
	.uleb128 0x21
	.4byte	.LASF408
	.sleb128 40
	.uleb128 0x21
	.4byte	.LASF409
	.sleb128 41
	.uleb128 0x21
	.4byte	.LASF410
	.sleb128 42
	.uleb128 0x21
	.4byte	.LASF411
	.sleb128 43
	.uleb128 0x21
	.4byte	.LASF412
	.sleb128 44
	.uleb128 0x21
	.4byte	.LASF413
	.sleb128 45
	.uleb128 0x21
	.4byte	.LASF414
	.sleb128 46
	.uleb128 0x21
	.4byte	.LASF415
	.sleb128 47
	.uleb128 0x21
	.4byte	.LASF416
	.sleb128 48
	.uleb128 0x21
	.4byte	.LASF417
	.sleb128 49
	.uleb128 0x21
	.4byte	.LASF418
	.sleb128 50
	.uleb128 0x21
	.4byte	.LASF419
	.sleb128 51
	.uleb128 0x21
	.4byte	.LASF420
	.sleb128 52
	.uleb128 0x21
	.4byte	.LASF421
	.sleb128 53
	.uleb128 0x21
	.4byte	.LASF422
	.sleb128 54
	.uleb128 0x21
	.4byte	.LASF423
	.sleb128 55
	.uleb128 0x21
	.4byte	.LASF424
	.sleb128 56
	.uleb128 0x21
	.4byte	.LASF425
	.sleb128 57
	.uleb128 0x21
	.4byte	.LASF426
	.sleb128 58
	.uleb128 0x21
	.4byte	.LASF427
	.sleb128 59
	.uleb128 0x21
	.4byte	.LASF428
	.sleb128 60
	.uleb128 0x21
	.4byte	.LASF429
	.sleb128 61
	.uleb128 0x21
	.4byte	.LASF430
	.sleb128 62
	.uleb128 0x21
	.4byte	.LASF431
	.sleb128 63
	.uleb128 0x21
	.4byte	.LASF432
	.sleb128 64
	.uleb128 0x21
	.4byte	.LASF433
	.sleb128 65
	.uleb128 0x21
	.4byte	.LASF434
	.sleb128 66
	.uleb128 0x21
	.4byte	.LASF435
	.sleb128 67
	.uleb128 0x21
	.4byte	.LASF436
	.sleb128 68
	.uleb128 0x21
	.4byte	.LASF437
	.sleb128 69
	.uleb128 0x21
	.4byte	.LASF438
	.sleb128 70
	.uleb128 0x21
	.4byte	.LASF439
	.sleb128 71
	.uleb128 0x21
	.4byte	.LASF440
	.sleb128 72
	.uleb128 0x21
	.4byte	.LASF441
	.sleb128 73
	.uleb128 0x21
	.4byte	.LASF442
	.sleb128 74
	.uleb128 0x21
	.4byte	.LASF443
	.sleb128 75
	.uleb128 0x21
	.4byte	.LASF444
	.sleb128 76
	.uleb128 0x21
	.4byte	.LASF445
	.sleb128 77
	.uleb128 0x21
	.4byte	.LASF446
	.sleb128 78
	.uleb128 0x21
	.4byte	.LASF447
	.sleb128 79
	.uleb128 0x21
	.4byte	.LASF448
	.sleb128 80
	.uleb128 0x21
	.4byte	.LASF449
	.sleb128 81
	.uleb128 0x21
	.4byte	.LASF450
	.sleb128 82
	.uleb128 0x21
	.4byte	.LASF451
	.sleb128 83
	.uleb128 0x21
	.4byte	.LASF452
	.sleb128 84
	.uleb128 0x21
	.4byte	.LASF453
	.sleb128 85
	.uleb128 0x21
	.4byte	.LASF454
	.sleb128 86
	.uleb128 0x21
	.4byte	.LASF455
	.sleb128 87
	.uleb128 0x21
	.4byte	.LASF456
	.sleb128 88
	.uleb128 0x21
	.4byte	.LASF457
	.sleb128 89
	.uleb128 0x21
	.4byte	.LASF458
	.sleb128 90
	.uleb128 0x21
	.4byte	.LASF459
	.sleb128 91
	.uleb128 0x21
	.4byte	.LASF460
	.sleb128 92
	.uleb128 0x21
	.4byte	.LASF461
	.sleb128 93
	.uleb128 0x21
	.4byte	.LASF462
	.sleb128 94
	.uleb128 0x21
	.4byte	.LASF463
	.sleb128 95
	.uleb128 0x21
	.4byte	.LASF464
	.sleb128 96
	.uleb128 0x21
	.4byte	.LASF465
	.sleb128 97
	.uleb128 0x21
	.4byte	.LASF466
	.sleb128 98
	.uleb128 0x21
	.4byte	.LASF467
	.sleb128 99
	.uleb128 0x21
	.4byte	.LASF468
	.sleb128 100
	.uleb128 0x21
	.4byte	.LASF469
	.sleb128 101
	.uleb128 0x21
	.4byte	.LASF470
	.sleb128 102
	.uleb128 0x21
	.4byte	.LASF471
	.sleb128 103
	.uleb128 0x21
	.4byte	.LASF472
	.sleb128 104
	.uleb128 0x21
	.4byte	.LASF473
	.sleb128 105
	.uleb128 0x21
	.4byte	.LASF474
	.sleb128 106
	.uleb128 0x21
	.4byte	.LASF475
	.sleb128 107
	.uleb128 0x21
	.4byte	.LASF476
	.sleb128 108
	.uleb128 0x21
	.4byte	.LASF477
	.sleb128 109
	.uleb128 0x21
	.4byte	.LASF478
	.sleb128 110
	.uleb128 0x21
	.4byte	.LASF479
	.sleb128 111
	.uleb128 0x21
	.4byte	.LASF480
	.sleb128 112
	.uleb128 0x21
	.4byte	.LASF481
	.sleb128 113
	.uleb128 0x21
	.4byte	.LASF482
	.sleb128 114
	.uleb128 0x21
	.4byte	.LASF483
	.sleb128 115
	.uleb128 0x21
	.4byte	.LASF484
	.sleb128 116
	.uleb128 0x21
	.4byte	.LASF485
	.sleb128 117
	.uleb128 0x21
	.4byte	.LASF486
	.sleb128 118
	.uleb128 0x21
	.4byte	.LASF487
	.sleb128 119
	.uleb128 0x21
	.4byte	.LASF488
	.sleb128 120
	.uleb128 0x21
	.4byte	.LASF489
	.sleb128 121
	.uleb128 0x21
	.4byte	.LASF490
	.sleb128 122
	.uleb128 0x21
	.4byte	.LASF491
	.sleb128 123
	.uleb128 0x21
	.4byte	.LASF492
	.sleb128 124
	.uleb128 0x21
	.4byte	.LASF493
	.sleb128 125
	.uleb128 0x21
	.4byte	.LASF494
	.sleb128 126
	.uleb128 0x21
	.4byte	.LASF495
	.sleb128 127
	.uleb128 0x21
	.4byte	.LASF496
	.sleb128 128
	.uleb128 0x21
	.4byte	.LASF497
	.sleb128 129
	.uleb128 0x21
	.4byte	.LASF498
	.sleb128 130
	.uleb128 0x21
	.4byte	.LASF499
	.sleb128 131
	.uleb128 0x21
	.4byte	.LASF500
	.sleb128 132
	.uleb128 0x21
	.4byte	.LASF501
	.sleb128 133
	.uleb128 0x21
	.4byte	.LASF502
	.sleb128 134
	.uleb128 0x21
	.4byte	.LASF503
	.sleb128 135
	.uleb128 0x21
	.4byte	.LASF504
	.sleb128 136
	.uleb128 0x21
	.4byte	.LASF505
	.sleb128 137
	.uleb128 0x21
	.4byte	.LASF506
	.sleb128 138
	.uleb128 0x21
	.4byte	.LASF507
	.sleb128 139
	.uleb128 0x21
	.4byte	.LASF508
	.sleb128 140
	.uleb128 0x21
	.4byte	.LASF509
	.sleb128 141
	.uleb128 0x21
	.4byte	.LASF510
	.sleb128 142
	.uleb128 0x21
	.4byte	.LASF511
	.sleb128 143
	.uleb128 0x21
	.4byte	.LASF512
	.sleb128 144
	.uleb128 0x21
	.4byte	.LASF513
	.sleb128 145
	.uleb128 0x21
	.4byte	.LASF514
	.sleb128 146
	.uleb128 0x21
	.4byte	.LASF515
	.sleb128 147
	.uleb128 0x21
	.4byte	.LASF516
	.sleb128 148
	.uleb128 0x21
	.4byte	.LASF517
	.sleb128 149
	.uleb128 0x21
	.4byte	.LASF518
	.sleb128 150
	.uleb128 0x21
	.4byte	.LASF519
	.sleb128 151
	.uleb128 0x21
	.4byte	.LASF520
	.sleb128 152
	.uleb128 0x21
	.4byte	.LASF521
	.sleb128 153
	.uleb128 0x21
	.4byte	.LASF522
	.sleb128 154
	.uleb128 0x21
	.4byte	.LASF523
	.sleb128 155
	.uleb128 0x21
	.4byte	.LASF524
	.sleb128 156
	.uleb128 0x21
	.4byte	.LASF525
	.sleb128 157
	.uleb128 0x21
	.4byte	.LASF526
	.sleb128 158
	.uleb128 0x21
	.4byte	.LASF527
	.sleb128 159
	.uleb128 0x21
	.4byte	.LASF528
	.sleb128 160
	.uleb128 0x21
	.4byte	.LASF529
	.sleb128 161
	.uleb128 0x21
	.4byte	.LASF530
	.sleb128 162
	.uleb128 0x21
	.4byte	.LASF531
	.sleb128 163
	.uleb128 0x21
	.4byte	.LASF532
	.sleb128 164
	.uleb128 0x21
	.4byte	.LASF533
	.sleb128 165
	.uleb128 0x21
	.4byte	.LASF534
	.sleb128 166
	.uleb128 0x21
	.4byte	.LASF535
	.sleb128 167
	.uleb128 0x21
	.4byte	.LASF536
	.sleb128 168
	.uleb128 0x21
	.4byte	.LASF537
	.sleb128 169
	.uleb128 0x21
	.4byte	.LASF538
	.sleb128 170
	.uleb128 0x21
	.4byte	.LASF539
	.sleb128 171
	.uleb128 0x21
	.4byte	.LASF540
	.sleb128 172
	.uleb128 0x21
	.4byte	.LASF541
	.sleb128 173
	.uleb128 0x21
	.4byte	.LASF542
	.sleb128 174
	.uleb128 0x21
	.4byte	.LASF543
	.sleb128 175
	.uleb128 0x21
	.4byte	.LASF544
	.sleb128 176
	.uleb128 0x21
	.4byte	.LASF545
	.sleb128 177
	.uleb128 0x21
	.4byte	.LASF546
	.sleb128 178
	.uleb128 0x21
	.4byte	.LASF547
	.sleb128 179
	.uleb128 0x21
	.4byte	.LASF548
	.sleb128 180
	.uleb128 0x21
	.4byte	.LASF549
	.sleb128 181
	.uleb128 0x21
	.4byte	.LASF550
	.sleb128 182
	.uleb128 0x21
	.4byte	.LASF551
	.sleb128 183
	.uleb128 0x21
	.4byte	.LASF552
	.sleb128 184
	.uleb128 0x21
	.4byte	.LASF553
	.sleb128 185
	.uleb128 0x21
	.4byte	.LASF554
	.sleb128 186
	.uleb128 0x21
	.4byte	.LASF555
	.sleb128 187
	.uleb128 0x21
	.4byte	.LASF556
	.sleb128 188
	.uleb128 0x21
	.4byte	.LASF557
	.sleb128 189
	.uleb128 0x21
	.4byte	.LASF558
	.sleb128 190
	.uleb128 0x21
	.4byte	.LASF559
	.sleb128 191
	.uleb128 0x21
	.4byte	.LASF560
	.sleb128 192
	.uleb128 0x21
	.4byte	.LASF561
	.sleb128 193
	.uleb128 0x21
	.4byte	.LASF562
	.sleb128 194
	.uleb128 0x21
	.4byte	.LASF563
	.sleb128 195
	.uleb128 0x21
	.4byte	.LASF564
	.sleb128 196
	.uleb128 0x21
	.4byte	.LASF565
	.sleb128 197
	.uleb128 0x21
	.4byte	.LASF566
	.sleb128 198
	.uleb128 0x21
	.4byte	.LASF567
	.sleb128 199
	.uleb128 0x21
	.4byte	.LASF568
	.sleb128 200
	.uleb128 0x21
	.4byte	.LASF569
	.sleb128 201
	.uleb128 0x21
	.4byte	.LASF570
	.sleb128 202
	.uleb128 0x21
	.4byte	.LASF571
	.sleb128 203
	.uleb128 0x21
	.4byte	.LASF572
	.sleb128 204
	.uleb128 0x21
	.4byte	.LASF573
	.sleb128 205
	.uleb128 0x21
	.4byte	.LASF574
	.sleb128 206
	.uleb128 0x21
	.4byte	.LASF575
	.sleb128 207
	.uleb128 0x21
	.4byte	.LASF576
	.sleb128 208
	.uleb128 0x21
	.4byte	.LASF577
	.sleb128 209
	.uleb128 0x21
	.4byte	.LASF578
	.sleb128 210
	.uleb128 0x21
	.4byte	.LASF579
	.sleb128 211
	.uleb128 0x21
	.4byte	.LASF580
	.sleb128 212
	.uleb128 0x21
	.4byte	.LASF581
	.sleb128 213
	.uleb128 0x21
	.4byte	.LASF582
	.sleb128 214
	.uleb128 0x21
	.4byte	.LASF583
	.sleb128 215
	.uleb128 0x21
	.4byte	.LASF584
	.sleb128 216
	.uleb128 0x21
	.4byte	.LASF585
	.sleb128 217
	.uleb128 0x21
	.4byte	.LASF586
	.sleb128 218
	.uleb128 0x21
	.4byte	.LASF587
	.sleb128 219
	.uleb128 0x21
	.4byte	.LASF588
	.sleb128 220
	.uleb128 0x21
	.4byte	.LASF589
	.sleb128 221
	.uleb128 0x21
	.4byte	.LASF590
	.sleb128 222
	.uleb128 0x21
	.4byte	.LASF591
	.sleb128 223
	.uleb128 0x21
	.4byte	.LASF592
	.sleb128 224
	.uleb128 0x21
	.4byte	.LASF593
	.sleb128 225
	.uleb128 0x21
	.4byte	.LASF594
	.sleb128 226
	.uleb128 0x21
	.4byte	.LASF595
	.sleb128 227
	.uleb128 0x21
	.4byte	.LASF596
	.sleb128 228
	.uleb128 0x21
	.4byte	.LASF597
	.sleb128 229
	.uleb128 0x21
	.4byte	.LASF598
	.sleb128 230
	.uleb128 0x21
	.4byte	.LASF599
	.sleb128 231
	.uleb128 0x21
	.4byte	.LASF600
	.sleb128 232
	.uleb128 0x21
	.4byte	.LASF601
	.sleb128 233
	.uleb128 0x21
	.4byte	.LASF602
	.sleb128 234
	.uleb128 0x21
	.4byte	.LASF603
	.sleb128 235
	.uleb128 0x21
	.4byte	.LASF604
	.sleb128 236
	.uleb128 0x21
	.4byte	.LASF605
	.sleb128 237
	.uleb128 0x21
	.4byte	.LASF606
	.sleb128 238
	.uleb128 0x21
	.4byte	.LASF607
	.sleb128 239
	.uleb128 0x21
	.4byte	.LASF608
	.sleb128 240
	.uleb128 0x21
	.4byte	.LASF609
	.sleb128 241
	.uleb128 0x21
	.4byte	.LASF610
	.sleb128 242
	.uleb128 0x21
	.4byte	.LASF611
	.sleb128 243
	.uleb128 0x21
	.4byte	.LASF612
	.sleb128 244
	.uleb128 0x21
	.4byte	.LASF613
	.sleb128 245
	.uleb128 0x21
	.4byte	.LASF614
	.sleb128 246
	.uleb128 0x21
	.4byte	.LASF615
	.sleb128 247
	.uleb128 0x21
	.4byte	.LASF616
	.sleb128 248
	.uleb128 0x21
	.4byte	.LASF617
	.sleb128 249
	.uleb128 0x21
	.4byte	.LASF618
	.sleb128 250
	.uleb128 0x21
	.4byte	.LASF619
	.sleb128 251
	.uleb128 0x21
	.4byte	.LASF620
	.sleb128 252
	.uleb128 0x21
	.4byte	.LASF621
	.sleb128 253
	.uleb128 0x21
	.4byte	.LASF622
	.sleb128 254
	.uleb128 0x21
	.4byte	.LASF623
	.sleb128 255
	.uleb128 0x21
	.4byte	.LASF624
	.sleb128 256
	.uleb128 0x21
	.4byte	.LASF625
	.sleb128 257
	.uleb128 0x21
	.4byte	.LASF626
	.sleb128 258
	.uleb128 0x21
	.4byte	.LASF627
	.sleb128 259
	.uleb128 0x21
	.4byte	.LASF628
	.sleb128 260
	.uleb128 0x21
	.4byte	.LASF629
	.sleb128 261
	.uleb128 0x21
	.4byte	.LASF630
	.sleb128 262
	.uleb128 0x21
	.4byte	.LASF631
	.sleb128 263
	.uleb128 0x21
	.4byte	.LASF632
	.sleb128 264
	.uleb128 0x21
	.4byte	.LASF633
	.sleb128 265
	.uleb128 0x21
	.4byte	.LASF634
	.sleb128 266
	.uleb128 0x21
	.4byte	.LASF635
	.sleb128 267
	.uleb128 0x21
	.4byte	.LASF636
	.sleb128 268
	.uleb128 0x21
	.4byte	.LASF637
	.sleb128 269
	.uleb128 0x21
	.4byte	.LASF638
	.sleb128 270
	.uleb128 0x21
	.4byte	.LASF639
	.sleb128 271
	.uleb128 0x21
	.4byte	.LASF640
	.sleb128 272
	.uleb128 0x21
	.4byte	.LASF641
	.sleb128 273
	.uleb128 0x21
	.4byte	.LASF642
	.sleb128 274
	.uleb128 0x21
	.4byte	.LASF643
	.sleb128 275
	.uleb128 0x21
	.4byte	.LASF644
	.sleb128 276
	.uleb128 0x21
	.4byte	.LASF645
	.sleb128 277
	.uleb128 0x21
	.4byte	.LASF646
	.sleb128 278
	.uleb128 0x21
	.4byte	.LASF647
	.sleb128 279
	.uleb128 0x21
	.4byte	.LASF648
	.sleb128 280
	.uleb128 0x21
	.4byte	.LASF649
	.sleb128 281
	.uleb128 0x21
	.4byte	.LASF650
	.sleb128 282
	.uleb128 0x21
	.4byte	.LASF651
	.sleb128 283
	.uleb128 0x21
	.4byte	.LASF652
	.sleb128 284
	.uleb128 0x21
	.4byte	.LASF653
	.sleb128 285
	.uleb128 0x21
	.4byte	.LASF654
	.sleb128 286
	.uleb128 0x21
	.4byte	.LASF655
	.sleb128 287
	.uleb128 0x21
	.4byte	.LASF656
	.sleb128 288
	.uleb128 0x21
	.4byte	.LASF657
	.sleb128 289
	.uleb128 0x21
	.4byte	.LASF658
	.sleb128 290
	.uleb128 0x21
	.4byte	.LASF659
	.sleb128 291
	.uleb128 0x21
	.4byte	.LASF660
	.sleb128 292
	.uleb128 0x21
	.4byte	.LASF661
	.sleb128 293
	.uleb128 0x21
	.4byte	.LASF662
	.sleb128 294
	.uleb128 0x21
	.4byte	.LASF663
	.sleb128 295
	.uleb128 0x21
	.4byte	.LASF664
	.sleb128 296
	.uleb128 0x21
	.4byte	.LASF665
	.sleb128 297
	.uleb128 0x21
	.4byte	.LASF666
	.sleb128 298
	.uleb128 0x21
	.4byte	.LASF667
	.sleb128 299
	.uleb128 0x21
	.4byte	.LASF668
	.sleb128 300
	.uleb128 0x21
	.4byte	.LASF669
	.sleb128 301
	.uleb128 0x21
	.4byte	.LASF670
	.sleb128 302
	.uleb128 0x21
	.4byte	.LASF671
	.sleb128 303
	.uleb128 0x21
	.4byte	.LASF672
	.sleb128 304
	.uleb128 0x21
	.4byte	.LASF673
	.sleb128 305
	.uleb128 0x21
	.4byte	.LASF674
	.sleb128 306
	.uleb128 0x21
	.4byte	.LASF675
	.sleb128 307
	.uleb128 0x21
	.4byte	.LASF676
	.sleb128 308
	.uleb128 0x21
	.4byte	.LASF677
	.sleb128 309
	.uleb128 0x21
	.4byte	.LASF678
	.sleb128 310
	.uleb128 0x21
	.4byte	.LASF679
	.sleb128 311
	.uleb128 0x21
	.4byte	.LASF680
	.sleb128 312
	.uleb128 0x21
	.4byte	.LASF681
	.sleb128 313
	.uleb128 0x21
	.4byte	.LASF682
	.sleb128 314
	.uleb128 0x21
	.4byte	.LASF683
	.sleb128 315
	.uleb128 0x21
	.4byte	.LASF684
	.sleb128 316
	.uleb128 0x21
	.4byte	.LASF685
	.sleb128 317
	.uleb128 0x21
	.4byte	.LASF686
	.sleb128 318
	.uleb128 0x21
	.4byte	.LASF687
	.sleb128 319
	.uleb128 0x21
	.4byte	.LASF688
	.sleb128 320
	.uleb128 0x21
	.4byte	.LASF689
	.sleb128 321
	.uleb128 0x21
	.4byte	.LASF690
	.sleb128 322
	.uleb128 0x21
	.4byte	.LASF691
	.sleb128 323
	.uleb128 0x21
	.4byte	.LASF692
	.sleb128 324
	.uleb128 0x21
	.4byte	.LASF693
	.sleb128 325
	.uleb128 0x21
	.4byte	.LASF694
	.sleb128 326
	.uleb128 0x21
	.4byte	.LASF695
	.sleb128 327
	.uleb128 0x21
	.4byte	.LASF696
	.sleb128 328
	.uleb128 0x21
	.4byte	.LASF697
	.sleb128 329
	.uleb128 0x21
	.4byte	.LASF698
	.sleb128 330
	.uleb128 0x21
	.4byte	.LASF699
	.sleb128 331
	.uleb128 0x21
	.4byte	.LASF700
	.sleb128 332
	.uleb128 0x21
	.4byte	.LASF701
	.sleb128 333
	.uleb128 0x21
	.4byte	.LASF702
	.sleb128 334
	.uleb128 0x21
	.4byte	.LASF703
	.sleb128 335
	.uleb128 0x21
	.4byte	.LASF704
	.sleb128 336
	.uleb128 0x21
	.4byte	.LASF705
	.sleb128 337
	.uleb128 0x21
	.4byte	.LASF706
	.sleb128 338
	.uleb128 0x21
	.4byte	.LASF707
	.sleb128 339
	.uleb128 0x21
	.4byte	.LASF708
	.sleb128 340
	.uleb128 0x21
	.4byte	.LASF709
	.sleb128 341
	.uleb128 0x21
	.4byte	.LASF710
	.sleb128 342
	.uleb128 0x21
	.4byte	.LASF711
	.sleb128 343
	.uleb128 0x21
	.4byte	.LASF712
	.sleb128 344
	.uleb128 0x21
	.4byte	.LASF713
	.sleb128 345
	.uleb128 0x21
	.4byte	.LASF714
	.sleb128 346
	.uleb128 0x21
	.4byte	.LASF715
	.sleb128 347
	.uleb128 0x21
	.4byte	.LASF716
	.sleb128 348
	.uleb128 0x21
	.4byte	.LASF717
	.sleb128 349
	.uleb128 0x21
	.4byte	.LASF718
	.sleb128 350
	.uleb128 0x21
	.4byte	.LASF719
	.sleb128 351
	.uleb128 0x21
	.4byte	.LASF720
	.sleb128 352
	.uleb128 0x21
	.4byte	.LASF721
	.sleb128 353
	.uleb128 0x21
	.4byte	.LASF722
	.sleb128 354
	.uleb128 0x21
	.4byte	.LASF723
	.sleb128 355
	.uleb128 0x21
	.4byte	.LASF724
	.sleb128 356
	.uleb128 0x21
	.4byte	.LASF725
	.sleb128 357
	.uleb128 0x21
	.4byte	.LASF726
	.sleb128 358
	.uleb128 0x21
	.4byte	.LASF727
	.sleb128 359
	.uleb128 0x21
	.4byte	.LASF728
	.sleb128 360
	.uleb128 0x21
	.4byte	.LASF729
	.sleb128 361
	.uleb128 0x21
	.4byte	.LASF730
	.sleb128 362
	.uleb128 0x21
	.4byte	.LASF731
	.sleb128 363
	.uleb128 0x21
	.4byte	.LASF732
	.sleb128 364
	.uleb128 0x21
	.4byte	.LASF733
	.sleb128 365
	.uleb128 0x21
	.4byte	.LASF734
	.sleb128 366
	.uleb128 0x21
	.4byte	.LASF735
	.sleb128 367
	.uleb128 0x21
	.4byte	.LASF736
	.sleb128 368
	.uleb128 0x21
	.4byte	.LASF737
	.sleb128 369
	.uleb128 0x21
	.4byte	.LASF738
	.sleb128 370
	.uleb128 0x21
	.4byte	.LASF739
	.sleb128 371
	.uleb128 0x21
	.4byte	.LASF740
	.sleb128 372
	.uleb128 0x21
	.4byte	.LASF741
	.sleb128 373
	.uleb128 0x21
	.4byte	.LASF742
	.sleb128 374
	.uleb128 0x21
	.4byte	.LASF743
	.sleb128 375
	.uleb128 0x21
	.4byte	.LASF744
	.sleb128 376
	.uleb128 0x21
	.4byte	.LASF745
	.sleb128 377
	.uleb128 0x21
	.4byte	.LASF746
	.sleb128 378
	.uleb128 0x21
	.4byte	.LASF747
	.sleb128 379
	.uleb128 0x21
	.4byte	.LASF748
	.sleb128 380
	.uleb128 0x21
	.4byte	.LASF749
	.sleb128 381
	.uleb128 0x21
	.4byte	.LASF750
	.sleb128 382
	.uleb128 0x21
	.4byte	.LASF751
	.sleb128 383
	.uleb128 0x21
	.4byte	.LASF752
	.sleb128 384
	.uleb128 0x21
	.4byte	.LASF753
	.sleb128 385
	.uleb128 0x21
	.4byte	.LASF754
	.sleb128 386
	.uleb128 0x21
	.4byte	.LASF755
	.sleb128 387
	.uleb128 0x21
	.4byte	.LASF756
	.sleb128 388
	.uleb128 0x21
	.4byte	.LASF757
	.sleb128 389
	.uleb128 0x21
	.4byte	.LASF758
	.sleb128 390
	.uleb128 0x21
	.4byte	.LASF759
	.sleb128 391
	.uleb128 0x21
	.4byte	.LASF760
	.sleb128 392
	.uleb128 0x21
	.4byte	.LASF761
	.sleb128 393
	.uleb128 0x21
	.4byte	.LASF762
	.sleb128 394
	.uleb128 0x21
	.4byte	.LASF763
	.sleb128 395
	.uleb128 0x21
	.4byte	.LASF764
	.sleb128 396
	.uleb128 0x21
	.4byte	.LASF765
	.sleb128 397
	.uleb128 0x21
	.4byte	.LASF766
	.sleb128 398
	.uleb128 0x21
	.4byte	.LASF767
	.sleb128 399
	.uleb128 0x21
	.4byte	.LASF768
	.sleb128 400
	.uleb128 0x21
	.4byte	.LASF769
	.sleb128 401
	.uleb128 0x21
	.4byte	.LASF770
	.sleb128 402
	.uleb128 0x21
	.4byte	.LASF771
	.sleb128 403
	.uleb128 0x21
	.4byte	.LASF772
	.sleb128 404
	.uleb128 0x21
	.4byte	.LASF773
	.sleb128 405
	.uleb128 0x21
	.4byte	.LASF774
	.sleb128 406
	.uleb128 0x21
	.4byte	.LASF775
	.sleb128 407
	.uleb128 0x21
	.4byte	.LASF776
	.sleb128 408
	.uleb128 0x21
	.4byte	.LASF777
	.sleb128 409
	.uleb128 0x21
	.4byte	.LASF778
	.sleb128 410
	.uleb128 0x21
	.4byte	.LASF779
	.sleb128 411
	.uleb128 0x21
	.4byte	.LASF780
	.sleb128 412
	.uleb128 0x21
	.4byte	.LASF781
	.sleb128 413
	.uleb128 0x21
	.4byte	.LASF782
	.sleb128 414
	.uleb128 0x21
	.4byte	.LASF783
	.sleb128 415
	.uleb128 0x21
	.4byte	.LASF784
	.sleb128 416
	.uleb128 0x21
	.4byte	.LASF785
	.sleb128 417
	.uleb128 0x21
	.4byte	.LASF786
	.sleb128 418
	.uleb128 0x21
	.4byte	.LASF787
	.sleb128 419
	.uleb128 0x21
	.4byte	.LASF788
	.sleb128 420
	.uleb128 0x21
	.4byte	.LASF789
	.sleb128 421
	.uleb128 0x21
	.4byte	.LASF790
	.sleb128 422
	.uleb128 0x21
	.4byte	.LASF791
	.sleb128 423
	.uleb128 0x21
	.4byte	.LASF792
	.sleb128 424
	.uleb128 0x21
	.4byte	.LASF793
	.sleb128 425
	.uleb128 0x21
	.4byte	.LASF794
	.sleb128 426
	.uleb128 0x21
	.4byte	.LASF795
	.sleb128 427
	.uleb128 0x21
	.4byte	.LASF796
	.sleb128 428
	.uleb128 0x21
	.4byte	.LASF797
	.sleb128 429
	.uleb128 0x21
	.4byte	.LASF798
	.sleb128 430
	.uleb128 0x21
	.4byte	.LASF799
	.sleb128 431
	.uleb128 0x21
	.4byte	.LASF800
	.sleb128 432
	.uleb128 0x21
	.4byte	.LASF801
	.sleb128 433
	.uleb128 0x21
	.4byte	.LASF802
	.sleb128 434
	.uleb128 0x21
	.4byte	.LASF803
	.sleb128 435
	.uleb128 0x21
	.4byte	.LASF804
	.sleb128 436
	.uleb128 0x21
	.4byte	.LASF805
	.sleb128 437
	.uleb128 0x21
	.4byte	.LASF806
	.sleb128 438
	.uleb128 0x21
	.4byte	.LASF807
	.sleb128 439
	.uleb128 0x21
	.4byte	.LASF808
	.sleb128 440
	.uleb128 0x21
	.4byte	.LASF809
	.sleb128 441
	.uleb128 0x21
	.4byte	.LASF810
	.sleb128 442
	.uleb128 0x21
	.4byte	.LASF811
	.sleb128 443
	.uleb128 0x21
	.4byte	.LASF812
	.sleb128 444
	.uleb128 0x21
	.4byte	.LASF813
	.sleb128 445
	.uleb128 0x21
	.4byte	.LASF814
	.sleb128 446
	.uleb128 0x21
	.4byte	.LASF815
	.sleb128 447
	.uleb128 0x21
	.4byte	.LASF816
	.sleb128 448
	.uleb128 0x21
	.4byte	.LASF817
	.sleb128 449
	.uleb128 0x21
	.4byte	.LASF818
	.sleb128 450
	.uleb128 0x21
	.4byte	.LASF819
	.sleb128 451
	.uleb128 0x21
	.4byte	.LASF820
	.sleb128 452
	.uleb128 0x21
	.4byte	.LASF821
	.sleb128 453
	.uleb128 0x21
	.4byte	.LASF822
	.sleb128 454
	.uleb128 0x21
	.4byte	.LASF823
	.sleb128 455
	.uleb128 0x21
	.4byte	.LASF824
	.sleb128 456
	.uleb128 0x21
	.4byte	.LASF825
	.sleb128 457
	.uleb128 0x21
	.4byte	.LASF826
	.sleb128 458
	.uleb128 0x21
	.4byte	.LASF827
	.sleb128 459
	.uleb128 0x21
	.4byte	.LASF828
	.sleb128 460
	.uleb128 0x21
	.4byte	.LASF829
	.sleb128 461
	.uleb128 0x21
	.4byte	.LASF830
	.sleb128 462
	.uleb128 0x21
	.4byte	.LASF831
	.sleb128 463
	.uleb128 0x21
	.4byte	.LASF832
	.sleb128 464
	.uleb128 0x21
	.4byte	.LASF833
	.sleb128 465
	.uleb128 0x21
	.4byte	.LASF834
	.sleb128 466
	.uleb128 0x21
	.4byte	.LASF835
	.sleb128 467
	.uleb128 0x21
	.4byte	.LASF836
	.sleb128 468
	.uleb128 0x21
	.4byte	.LASF837
	.sleb128 469
	.uleb128 0x21
	.4byte	.LASF838
	.sleb128 470
	.uleb128 0x21
	.4byte	.LASF839
	.sleb128 471
	.uleb128 0x21
	.4byte	.LASF840
	.sleb128 472
	.uleb128 0x21
	.4byte	.LASF841
	.sleb128 473
	.uleb128 0x21
	.4byte	.LASF842
	.sleb128 474
	.uleb128 0x21
	.4byte	.LASF843
	.sleb128 475
	.uleb128 0x21
	.4byte	.LASF844
	.sleb128 476
	.uleb128 0x21
	.4byte	.LASF845
	.sleb128 477
	.uleb128 0x21
	.4byte	.LASF846
	.sleb128 478
	.uleb128 0x21
	.4byte	.LASF847
	.sleb128 479
	.uleb128 0x21
	.4byte	.LASF848
	.sleb128 480
	.uleb128 0x21
	.4byte	.LASF849
	.sleb128 481
	.uleb128 0x21
	.4byte	.LASF850
	.sleb128 482
	.uleb128 0x21
	.4byte	.LASF851
	.sleb128 483
	.uleb128 0x21
	.4byte	.LASF852
	.sleb128 484
	.uleb128 0x21
	.4byte	.LASF853
	.sleb128 485
	.uleb128 0x21
	.4byte	.LASF854
	.sleb128 486
	.uleb128 0x21
	.4byte	.LASF855
	.sleb128 487
	.uleb128 0x21
	.4byte	.LASF856
	.sleb128 488
	.uleb128 0x21
	.4byte	.LASF857
	.sleb128 489
	.uleb128 0x21
	.4byte	.LASF858
	.sleb128 490
	.uleb128 0x21
	.4byte	.LASF859
	.sleb128 491
	.uleb128 0x21
	.4byte	.LASF860
	.sleb128 492
	.uleb128 0x21
	.4byte	.LASF861
	.sleb128 493
	.uleb128 0x21
	.4byte	.LASF862
	.sleb128 494
	.uleb128 0x21
	.4byte	.LASF863
	.sleb128 495
	.uleb128 0x21
	.4byte	.LASF864
	.sleb128 496
	.uleb128 0x21
	.4byte	.LASF865
	.sleb128 497
	.uleb128 0x21
	.4byte	.LASF866
	.sleb128 498
	.uleb128 0x21
	.4byte	.LASF867
	.sleb128 499
	.uleb128 0x21
	.4byte	.LASF868
	.sleb128 500
	.uleb128 0x21
	.4byte	.LASF869
	.sleb128 501
	.uleb128 0x21
	.4byte	.LASF870
	.sleb128 502
	.uleb128 0x21
	.4byte	.LASF871
	.sleb128 503
	.uleb128 0x21
	.4byte	.LASF872
	.sleb128 504
	.uleb128 0x21
	.4byte	.LASF873
	.sleb128 505
	.uleb128 0x21
	.4byte	.LASF874
	.sleb128 506
	.uleb128 0x21
	.4byte	.LASF875
	.sleb128 507
	.uleb128 0x21
	.4byte	.LASF876
	.sleb128 508
	.uleb128 0x21
	.4byte	.LASF877
	.sleb128 509
	.uleb128 0x21
	.4byte	.LASF878
	.sleb128 510
	.uleb128 0x21
	.4byte	.LASF879
	.sleb128 511
	.uleb128 0x21
	.4byte	.LASF880
	.sleb128 512
	.uleb128 0x21
	.4byte	.LASF881
	.sleb128 513
	.uleb128 0x21
	.4byte	.LASF882
	.sleb128 514
	.uleb128 0x21
	.4byte	.LASF883
	.sleb128 515
	.uleb128 0x21
	.4byte	.LASF884
	.sleb128 516
	.uleb128 0x21
	.4byte	.LASF885
	.sleb128 517
	.uleb128 0x21
	.4byte	.LASF886
	.sleb128 518
	.uleb128 0x21
	.4byte	.LASF887
	.sleb128 519
	.uleb128 0x21
	.4byte	.LASF888
	.sleb128 520
	.uleb128 0x21
	.4byte	.LASF889
	.sleb128 521
	.uleb128 0x21
	.4byte	.LASF890
	.sleb128 522
	.uleb128 0x21
	.4byte	.LASF891
	.sleb128 523
	.uleb128 0x21
	.4byte	.LASF892
	.sleb128 524
	.uleb128 0x21
	.4byte	.LASF893
	.sleb128 525
	.uleb128 0x21
	.4byte	.LASF894
	.sleb128 526
	.uleb128 0x21
	.4byte	.LASF895
	.sleb128 527
	.uleb128 0x21
	.4byte	.LASF896
	.sleb128 528
	.uleb128 0x21
	.4byte	.LASF897
	.sleb128 529
	.uleb128 0x21
	.4byte	.LASF898
	.sleb128 530
	.uleb128 0x21
	.4byte	.LASF899
	.sleb128 531
	.uleb128 0x21
	.4byte	.LASF900
	.sleb128 532
	.uleb128 0x21
	.4byte	.LASF901
	.sleb128 533
	.uleb128 0x21
	.4byte	.LASF902
	.sleb128 534
	.uleb128 0x21
	.4byte	.LASF903
	.sleb128 535
	.uleb128 0x21
	.4byte	.LASF904
	.sleb128 536
	.uleb128 0x21
	.4byte	.LASF905
	.sleb128 537
	.uleb128 0x21
	.4byte	.LASF906
	.sleb128 538
	.uleb128 0x21
	.4byte	.LASF907
	.sleb128 539
	.uleb128 0x21
	.4byte	.LASF908
	.sleb128 540
	.uleb128 0x21
	.4byte	.LASF909
	.sleb128 541
	.uleb128 0x21
	.4byte	.LASF910
	.sleb128 542
	.uleb128 0x21
	.4byte	.LASF911
	.sleb128 543
	.uleb128 0x21
	.4byte	.LASF912
	.sleb128 544
	.uleb128 0x21
	.4byte	.LASF913
	.sleb128 545
	.uleb128 0x21
	.4byte	.LASF914
	.sleb128 546
	.uleb128 0x21
	.4byte	.LASF915
	.sleb128 547
	.uleb128 0x21
	.4byte	.LASF916
	.sleb128 548
	.uleb128 0x21
	.4byte	.LASF917
	.sleb128 549
	.uleb128 0x21
	.4byte	.LASF918
	.sleb128 550
	.uleb128 0x21
	.4byte	.LASF919
	.sleb128 551
	.uleb128 0x21
	.4byte	.LASF920
	.sleb128 552
	.uleb128 0x21
	.4byte	.LASF921
	.sleb128 553
	.uleb128 0x21
	.4byte	.LASF922
	.sleb128 554
	.uleb128 0x21
	.4byte	.LASF923
	.sleb128 555
	.uleb128 0x21
	.4byte	.LASF924
	.sleb128 556
	.uleb128 0x21
	.4byte	.LASF925
	.sleb128 557
	.uleb128 0x21
	.4byte	.LASF926
	.sleb128 558
	.uleb128 0x21
	.4byte	.LASF927
	.sleb128 559
	.uleb128 0x21
	.4byte	.LASF928
	.sleb128 560
	.uleb128 0x21
	.4byte	.LASF929
	.sleb128 561
	.uleb128 0x21
	.4byte	.LASF930
	.sleb128 562
	.uleb128 0x21
	.4byte	.LASF931
	.sleb128 563
	.uleb128 0x21
	.4byte	.LASF932
	.sleb128 564
	.uleb128 0x21
	.4byte	.LASF933
	.sleb128 565
	.uleb128 0x21
	.4byte	.LASF934
	.sleb128 566
	.uleb128 0x21
	.4byte	.LASF935
	.sleb128 567
	.uleb128 0x21
	.4byte	.LASF936
	.sleb128 568
	.uleb128 0x21
	.4byte	.LASF937
	.sleb128 569
	.uleb128 0x21
	.4byte	.LASF938
	.sleb128 570
	.uleb128 0x21
	.4byte	.LASF939
	.sleb128 571
	.uleb128 0x21
	.4byte	.LASF940
	.sleb128 572
	.uleb128 0x21
	.4byte	.LASF941
	.sleb128 573
	.uleb128 0x21
	.4byte	.LASF942
	.sleb128 574
	.uleb128 0x21
	.4byte	.LASF943
	.sleb128 575
	.uleb128 0x21
	.4byte	.LASF944
	.sleb128 576
	.uleb128 0x21
	.4byte	.LASF945
	.sleb128 577
	.uleb128 0x21
	.4byte	.LASF946
	.sleb128 578
	.uleb128 0x21
	.4byte	.LASF947
	.sleb128 579
	.uleb128 0x21
	.4byte	.LASF948
	.sleb128 580
	.uleb128 0x21
	.4byte	.LASF949
	.sleb128 581
	.uleb128 0x21
	.4byte	.LASF950
	.sleb128 582
	.uleb128 0x21
	.4byte	.LASF951
	.sleb128 583
	.uleb128 0x21
	.4byte	.LASF952
	.sleb128 584
	.uleb128 0x21
	.4byte	.LASF953
	.sleb128 585
	.uleb128 0x21
	.4byte	.LASF954
	.sleb128 586
	.uleb128 0x21
	.4byte	.LASF955
	.sleb128 587
	.uleb128 0x21
	.4byte	.LASF956
	.sleb128 588
	.uleb128 0x21
	.4byte	.LASF957
	.sleb128 589
	.uleb128 0x21
	.4byte	.LASF958
	.sleb128 590
	.uleb128 0x21
	.4byte	.LASF959
	.sleb128 591
	.uleb128 0x21
	.4byte	.LASF960
	.sleb128 592
	.uleb128 0x21
	.4byte	.LASF961
	.sleb128 593
	.uleb128 0x21
	.4byte	.LASF962
	.sleb128 594
	.uleb128 0x21
	.4byte	.LASF963
	.sleb128 595
	.uleb128 0x21
	.4byte	.LASF964
	.sleb128 596
	.uleb128 0x21
	.4byte	.LASF965
	.sleb128 597
	.uleb128 0x21
	.4byte	.LASF966
	.sleb128 598
	.uleb128 0x21
	.4byte	.LASF967
	.sleb128 599
	.uleb128 0x21
	.4byte	.LASF968
	.sleb128 600
	.uleb128 0x21
	.4byte	.LASF969
	.sleb128 601
	.uleb128 0x21
	.4byte	.LASF970
	.sleb128 602
	.uleb128 0x21
	.4byte	.LASF971
	.sleb128 603
	.uleb128 0x21
	.4byte	.LASF972
	.sleb128 604
	.uleb128 0x21
	.4byte	.LASF973
	.sleb128 605
	.uleb128 0x21
	.4byte	.LASF974
	.sleb128 606
	.uleb128 0x21
	.4byte	.LASF975
	.sleb128 607
	.uleb128 0x21
	.4byte	.LASF976
	.sleb128 608
	.uleb128 0x21
	.4byte	.LASF977
	.sleb128 609
	.uleb128 0x21
	.4byte	.LASF978
	.sleb128 610
	.uleb128 0x21
	.4byte	.LASF979
	.sleb128 611
	.uleb128 0x21
	.4byte	.LASF980
	.sleb128 612
	.uleb128 0x21
	.4byte	.LASF981
	.sleb128 613
	.uleb128 0x21
	.4byte	.LASF982
	.sleb128 614
	.uleb128 0x21
	.4byte	.LASF983
	.sleb128 615
	.uleb128 0x21
	.4byte	.LASF984
	.sleb128 616
	.uleb128 0x21
	.4byte	.LASF985
	.sleb128 617
	.uleb128 0x21
	.4byte	.LASF986
	.sleb128 618
	.uleb128 0x21
	.4byte	.LASF987
	.sleb128 619
	.uleb128 0x21
	.4byte	.LASF988
	.sleb128 620
	.uleb128 0x21
	.4byte	.LASF989
	.sleb128 621
	.uleb128 0x21
	.4byte	.LASF990
	.sleb128 622
	.uleb128 0x21
	.4byte	.LASF991
	.sleb128 623
	.uleb128 0x21
	.4byte	.LASF992
	.sleb128 624
	.uleb128 0x21
	.4byte	.LASF993
	.sleb128 625
	.uleb128 0x21
	.4byte	.LASF994
	.sleb128 626
	.uleb128 0x21
	.4byte	.LASF995
	.sleb128 627
	.uleb128 0x21
	.4byte	.LASF996
	.sleb128 628
	.uleb128 0x21
	.4byte	.LASF997
	.sleb128 629
	.uleb128 0x21
	.4byte	.LASF998
	.sleb128 630
	.uleb128 0x21
	.4byte	.LASF999
	.sleb128 631
	.uleb128 0x21
	.4byte	.LASF1000
	.sleb128 632
	.uleb128 0x21
	.4byte	.LASF1001
	.sleb128 633
	.uleb128 0x21
	.4byte	.LASF1002
	.sleb128 634
	.uleb128 0x21
	.4byte	.LASF1003
	.sleb128 635
	.uleb128 0x21
	.4byte	.LASF1004
	.sleb128 636
	.uleb128 0x21
	.4byte	.LASF1005
	.sleb128 637
	.uleb128 0x21
	.4byte	.LASF1006
	.sleb128 638
	.uleb128 0x21
	.4byte	.LASF1007
	.sleb128 639
	.uleb128 0x21
	.4byte	.LASF1008
	.sleb128 640
	.uleb128 0x21
	.4byte	.LASF1009
	.sleb128 641
	.uleb128 0x21
	.4byte	.LASF1010
	.sleb128 642
	.uleb128 0x21
	.4byte	.LASF1011
	.sleb128 643
	.uleb128 0x21
	.4byte	.LASF1012
	.sleb128 644
	.uleb128 0x21
	.4byte	.LASF1013
	.sleb128 645
	.uleb128 0x21
	.4byte	.LASF1014
	.sleb128 646
	.uleb128 0x21
	.4byte	.LASF1015
	.sleb128 647
	.uleb128 0x21
	.4byte	.LASF1016
	.sleb128 648
	.uleb128 0x21
	.4byte	.LASF1017
	.sleb128 649
	.uleb128 0x21
	.4byte	.LASF1018
	.sleb128 650
	.uleb128 0x21
	.4byte	.LASF1019
	.sleb128 651
	.uleb128 0x21
	.4byte	.LASF1020
	.sleb128 652
	.uleb128 0x21
	.4byte	.LASF1021
	.sleb128 653
	.uleb128 0x21
	.4byte	.LASF1022
	.sleb128 654
	.uleb128 0x21
	.4byte	.LASF1023
	.sleb128 655
	.uleb128 0x21
	.4byte	.LASF1024
	.sleb128 656
	.uleb128 0x21
	.4byte	.LASF1025
	.sleb128 657
	.uleb128 0x21
	.4byte	.LASF1026
	.sleb128 658
	.uleb128 0x21
	.4byte	.LASF1027
	.sleb128 659
	.uleb128 0x21
	.4byte	.LASF1028
	.sleb128 660
	.uleb128 0x21
	.4byte	.LASF1029
	.sleb128 661
	.uleb128 0x21
	.4byte	.LASF1030
	.sleb128 662
	.uleb128 0x21
	.4byte	.LASF1031
	.sleb128 663
	.uleb128 0x21
	.4byte	.LASF1032
	.sleb128 664
	.uleb128 0x21
	.4byte	.LASF1033
	.sleb128 665
	.uleb128 0x21
	.4byte	.LASF1034
	.sleb128 666
	.uleb128 0x21
	.4byte	.LASF1035
	.sleb128 667
	.uleb128 0x21
	.4byte	.LASF1036
	.sleb128 668
	.uleb128 0x21
	.4byte	.LASF1037
	.sleb128 669
	.uleb128 0x21
	.4byte	.LASF1038
	.sleb128 670
	.uleb128 0x21
	.4byte	.LASF1039
	.sleb128 671
	.uleb128 0x21
	.4byte	.LASF1040
	.sleb128 672
	.uleb128 0x21
	.4byte	.LASF1041
	.sleb128 673
	.uleb128 0x21
	.4byte	.LASF1042
	.sleb128 674
	.uleb128 0x21
	.4byte	.LASF1043
	.sleb128 675
	.uleb128 0x21
	.4byte	.LASF1044
	.sleb128 676
	.uleb128 0x21
	.4byte	.LASF1045
	.sleb128 677
	.uleb128 0x21
	.4byte	.LASF1046
	.sleb128 678
	.uleb128 0x21
	.4byte	.LASF1047
	.sleb128 679
	.uleb128 0x21
	.4byte	.LASF1048
	.sleb128 680
	.uleb128 0x21
	.4byte	.LASF1049
	.sleb128 681
	.uleb128 0x21
	.4byte	.LASF1050
	.sleb128 682
	.uleb128 0x21
	.4byte	.LASF1051
	.sleb128 683
	.uleb128 0x21
	.4byte	.LASF1052
	.sleb128 684
	.uleb128 0x21
	.4byte	.LASF1053
	.sleb128 685
	.uleb128 0x21
	.4byte	.LASF1054
	.sleb128 686
	.uleb128 0x21
	.4byte	.LASF1055
	.sleb128 687
	.uleb128 0x21
	.4byte	.LASF1056
	.sleb128 688
	.uleb128 0x21
	.4byte	.LASF1057
	.sleb128 689
	.uleb128 0x21
	.4byte	.LASF1058
	.sleb128 690
	.uleb128 0x21
	.4byte	.LASF1059
	.sleb128 691
	.uleb128 0x21
	.4byte	.LASF1060
	.sleb128 692
	.uleb128 0x21
	.4byte	.LASF1061
	.sleb128 693
	.uleb128 0x21
	.4byte	.LASF1062
	.sleb128 694
	.uleb128 0x21
	.4byte	.LASF1063
	.sleb128 695
	.uleb128 0x21
	.4byte	.LASF1064
	.sleb128 696
	.uleb128 0x21
	.4byte	.LASF1065
	.sleb128 697
	.uleb128 0x21
	.4byte	.LASF1066
	.sleb128 698
	.uleb128 0x21
	.4byte	.LASF1067
	.sleb128 699
	.uleb128 0x21
	.4byte	.LASF1068
	.sleb128 700
	.uleb128 0x21
	.4byte	.LASF1069
	.sleb128 701
	.uleb128 0x21
	.4byte	.LASF1070
	.sleb128 702
	.uleb128 0x21
	.4byte	.LASF1071
	.sleb128 703
	.uleb128 0x21
	.4byte	.LASF1072
	.sleb128 704
	.uleb128 0x21
	.4byte	.LASF1073
	.sleb128 705
	.uleb128 0x21
	.4byte	.LASF1074
	.sleb128 706
	.uleb128 0x21
	.4byte	.LASF1075
	.sleb128 707
	.uleb128 0x21
	.4byte	.LASF1076
	.sleb128 708
	.uleb128 0x21
	.4byte	.LASF1077
	.sleb128 709
	.uleb128 0x21
	.4byte	.LASF1078
	.sleb128 710
	.uleb128 0x21
	.4byte	.LASF1079
	.sleb128 711
	.uleb128 0x21
	.4byte	.LASF1080
	.sleb128 712
	.uleb128 0x21
	.4byte	.LASF1081
	.sleb128 713
	.uleb128 0x21
	.4byte	.LASF1082
	.sleb128 714
	.uleb128 0x21
	.4byte	.LASF1083
	.sleb128 715
	.uleb128 0x21
	.4byte	.LASF1084
	.sleb128 716
	.uleb128 0x21
	.4byte	.LASF1085
	.sleb128 717
	.uleb128 0x21
	.4byte	.LASF1086
	.sleb128 718
	.uleb128 0x21
	.4byte	.LASF1087
	.sleb128 719
	.uleb128 0x21
	.4byte	.LASF1088
	.sleb128 720
	.uleb128 0x21
	.4byte	.LASF1089
	.sleb128 721
	.uleb128 0x21
	.4byte	.LASF1090
	.sleb128 722
	.uleb128 0x21
	.4byte	.LASF1091
	.sleb128 723
	.uleb128 0x21
	.4byte	.LASF1092
	.sleb128 724
	.uleb128 0x21
	.4byte	.LASF1093
	.sleb128 725
	.uleb128 0x21
	.4byte	.LASF1094
	.sleb128 726
	.uleb128 0x21
	.4byte	.LASF1095
	.sleb128 727
	.uleb128 0x21
	.4byte	.LASF1096
	.sleb128 728
	.uleb128 0x21
	.4byte	.LASF1097
	.sleb128 729
	.uleb128 0x21
	.4byte	.LASF1098
	.sleb128 730
	.uleb128 0x21
	.4byte	.LASF1099
	.sleb128 731
	.uleb128 0x21
	.4byte	.LASF1100
	.sleb128 732
	.uleb128 0x21
	.4byte	.LASF1101
	.sleb128 733
	.uleb128 0x21
	.4byte	.LASF1102
	.sleb128 734
	.uleb128 0x21
	.4byte	.LASF1103
	.sleb128 735
	.uleb128 0x21
	.4byte	.LASF1104
	.sleb128 736
	.uleb128 0x21
	.4byte	.LASF1105
	.sleb128 737
	.uleb128 0x21
	.4byte	.LASF1106
	.sleb128 738
	.uleb128 0x21
	.4byte	.LASF1107
	.sleb128 739
	.uleb128 0x21
	.4byte	.LASF1108
	.sleb128 740
	.uleb128 0x21
	.4byte	.LASF1109
	.sleb128 741
	.uleb128 0x21
	.4byte	.LASF1110
	.sleb128 742
	.uleb128 0x21
	.4byte	.LASF1111
	.sleb128 743
	.uleb128 0x21
	.4byte	.LASF1112
	.sleb128 744
	.uleb128 0x21
	.4byte	.LASF1113
	.sleb128 745
	.uleb128 0x21
	.4byte	.LASF1114
	.sleb128 746
	.uleb128 0x21
	.4byte	.LASF1115
	.sleb128 747
	.uleb128 0x21
	.4byte	.LASF1116
	.sleb128 748
	.uleb128 0x21
	.4byte	.LASF1117
	.sleb128 749
	.uleb128 0x21
	.4byte	.LASF1118
	.sleb128 750
	.uleb128 0x21
	.4byte	.LASF1119
	.sleb128 751
	.uleb128 0x21
	.4byte	.LASF1120
	.sleb128 752
	.uleb128 0x21
	.4byte	.LASF1121
	.sleb128 753
	.uleb128 0x21
	.4byte	.LASF1122
	.sleb128 754
	.uleb128 0x21
	.4byte	.LASF1123
	.sleb128 755
	.uleb128 0x21
	.4byte	.LASF1124
	.sleb128 756
	.uleb128 0x21
	.4byte	.LASF1125
	.sleb128 757
	.uleb128 0x21
	.4byte	.LASF1126
	.sleb128 758
	.uleb128 0x21
	.4byte	.LASF1127
	.sleb128 759
	.uleb128 0x21
	.4byte	.LASF1128
	.sleb128 760
	.uleb128 0x21
	.4byte	.LASF1129
	.sleb128 761
	.uleb128 0x21
	.4byte	.LASF1130
	.sleb128 762
	.uleb128 0x21
	.4byte	.LASF1131
	.sleb128 763
	.uleb128 0x21
	.4byte	.LASF1132
	.sleb128 764
	.uleb128 0x21
	.4byte	.LASF1133
	.sleb128 765
	.uleb128 0x21
	.4byte	.LASF1134
	.sleb128 766
	.uleb128 0x21
	.4byte	.LASF1135
	.sleb128 767
	.uleb128 0x21
	.4byte	.LASF1136
	.sleb128 768
	.uleb128 0x21
	.4byte	.LASF1137
	.sleb128 769
	.uleb128 0x21
	.4byte	.LASF1138
	.sleb128 770
	.uleb128 0x21
	.4byte	.LASF1139
	.sleb128 771
	.uleb128 0x21
	.4byte	.LASF1140
	.sleb128 772
	.uleb128 0x21
	.4byte	.LASF1141
	.sleb128 773
	.uleb128 0x21
	.4byte	.LASF1142
	.sleb128 774
	.uleb128 0x21
	.4byte	.LASF1143
	.sleb128 775
	.uleb128 0x21
	.4byte	.LASF1144
	.sleb128 776
	.uleb128 0x21
	.4byte	.LASF1145
	.sleb128 777
	.uleb128 0x21
	.4byte	.LASF1146
	.sleb128 778
	.uleb128 0x21
	.4byte	.LASF1147
	.sleb128 779
	.uleb128 0x21
	.4byte	.LASF1148
	.sleb128 780
	.uleb128 0x21
	.4byte	.LASF1149
	.sleb128 781
	.uleb128 0x21
	.4byte	.LASF1150
	.sleb128 782
	.uleb128 0x21
	.4byte	.LASF1151
	.sleb128 783
	.uleb128 0x21
	.4byte	.LASF1152
	.sleb128 784
	.uleb128 0x21
	.4byte	.LASF1153
	.sleb128 785
	.uleb128 0x21
	.4byte	.LASF1154
	.sleb128 786
	.uleb128 0x21
	.4byte	.LASF1155
	.sleb128 787
	.uleb128 0x21
	.4byte	.LASF1156
	.sleb128 788
	.uleb128 0x21
	.4byte	.LASF1157
	.sleb128 789
	.uleb128 0x21
	.4byte	.LASF1158
	.sleb128 790
	.uleb128 0x21
	.4byte	.LASF1159
	.sleb128 791
	.uleb128 0x21
	.4byte	.LASF1160
	.sleb128 792
	.uleb128 0x21
	.4byte	.LASF1161
	.sleb128 793
	.uleb128 0x21
	.4byte	.LASF1162
	.sleb128 794
	.uleb128 0x21
	.4byte	.LASF1163
	.sleb128 795
	.uleb128 0x21
	.4byte	.LASF1164
	.sleb128 796
	.uleb128 0x21
	.4byte	.LASF1165
	.sleb128 797
	.uleb128 0x21
	.4byte	.LASF1166
	.sleb128 798
	.uleb128 0x21
	.4byte	.LASF1167
	.sleb128 799
	.uleb128 0x21
	.4byte	.LASF1168
	.sleb128 800
	.uleb128 0x21
	.4byte	.LASF1169
	.sleb128 801
	.uleb128 0x21
	.4byte	.LASF1170
	.sleb128 802
	.uleb128 0x21
	.4byte	.LASF1171
	.sleb128 803
	.uleb128 0x21
	.4byte	.LASF1172
	.sleb128 804
	.uleb128 0x21
	.4byte	.LASF1173
	.sleb128 805
	.uleb128 0x21
	.4byte	.LASF1174
	.sleb128 806
	.uleb128 0x21
	.4byte	.LASF1175
	.sleb128 807
	.uleb128 0x21
	.4byte	.LASF1176
	.sleb128 808
	.uleb128 0x21
	.4byte	.LASF1177
	.sleb128 809
	.uleb128 0x21
	.4byte	.LASF1178
	.sleb128 810
	.uleb128 0x21
	.4byte	.LASF1179
	.sleb128 811
	.uleb128 0x21
	.4byte	.LASF1180
	.sleb128 812
	.uleb128 0x21
	.4byte	.LASF1181
	.sleb128 813
	.uleb128 0x21
	.4byte	.LASF1182
	.sleb128 814
	.uleb128 0x21
	.4byte	.LASF1183
	.sleb128 815
	.uleb128 0x21
	.4byte	.LASF1184
	.sleb128 816
	.uleb128 0x21
	.4byte	.LASF1185
	.sleb128 817
	.uleb128 0x21
	.4byte	.LASF1186
	.sleb128 818
	.uleb128 0x21
	.4byte	.LASF1187
	.sleb128 819
	.uleb128 0x21
	.4byte	.LASF1188
	.sleb128 820
	.uleb128 0x21
	.4byte	.LASF1189
	.sleb128 821
	.uleb128 0x21
	.4byte	.LASF1190
	.sleb128 822
	.uleb128 0x21
	.4byte	.LASF1191
	.sleb128 823
	.uleb128 0x21
	.4byte	.LASF1192
	.sleb128 824
	.uleb128 0x21
	.4byte	.LASF1193
	.sleb128 825
	.uleb128 0x21
	.4byte	.LASF1194
	.sleb128 826
	.uleb128 0x21
	.4byte	.LASF1195
	.sleb128 827
	.uleb128 0x21
	.4byte	.LASF1196
	.sleb128 828
	.uleb128 0x21
	.4byte	.LASF1197
	.sleb128 829
	.uleb128 0x21
	.4byte	.LASF1198
	.sleb128 830
	.uleb128 0x21
	.4byte	.LASF1199
	.sleb128 831
	.uleb128 0x21
	.4byte	.LASF1200
	.sleb128 832
	.uleb128 0x21
	.4byte	.LASF1201
	.sleb128 833
	.uleb128 0x21
	.4byte	.LASF1202
	.sleb128 834
	.uleb128 0x21
	.4byte	.LASF1203
	.sleb128 835
	.uleb128 0x21
	.4byte	.LASF1204
	.sleb128 836
	.uleb128 0x21
	.4byte	.LASF1205
	.sleb128 837
	.uleb128 0x21
	.4byte	.LASF1206
	.sleb128 838
	.uleb128 0x21
	.4byte	.LASF1207
	.sleb128 839
	.uleb128 0x21
	.4byte	.LASF1208
	.sleb128 840
	.uleb128 0x21
	.4byte	.LASF1209
	.sleb128 841
	.uleb128 0x21
	.4byte	.LASF1210
	.sleb128 842
	.uleb128 0x21
	.4byte	.LASF1211
	.sleb128 843
	.uleb128 0x21
	.4byte	.LASF1212
	.sleb128 844
	.uleb128 0x21
	.4byte	.LASF1213
	.sleb128 845
	.uleb128 0x21
	.4byte	.LASF1214
	.sleb128 846
	.uleb128 0x21
	.4byte	.LASF1215
	.sleb128 847
	.uleb128 0x21
	.4byte	.LASF1216
	.sleb128 848
	.uleb128 0x21
	.4byte	.LASF1217
	.sleb128 849
	.uleb128 0x21
	.4byte	.LASF1218
	.sleb128 850
	.uleb128 0x21
	.4byte	.LASF1219
	.sleb128 851
	.uleb128 0x21
	.4byte	.LASF1220
	.sleb128 852
	.uleb128 0x21
	.4byte	.LASF1221
	.sleb128 853
	.uleb128 0x21
	.4byte	.LASF1222
	.sleb128 854
	.uleb128 0x21
	.4byte	.LASF1223
	.sleb128 855
	.uleb128 0x21
	.4byte	.LASF1224
	.sleb128 856
	.uleb128 0x21
	.4byte	.LASF1225
	.sleb128 857
	.uleb128 0x21
	.4byte	.LASF1226
	.sleb128 858
	.uleb128 0x21
	.4byte	.LASF1227
	.sleb128 859
	.uleb128 0x21
	.4byte	.LASF1228
	.sleb128 860
	.uleb128 0x21
	.4byte	.LASF1229
	.sleb128 861
	.uleb128 0x21
	.4byte	.LASF1230
	.sleb128 862
	.uleb128 0x21
	.4byte	.LASF1231
	.sleb128 863
	.uleb128 0x21
	.4byte	.LASF1232
	.sleb128 864
	.uleb128 0x21
	.4byte	.LASF1233
	.sleb128 865
	.uleb128 0x21
	.4byte	.LASF1234
	.sleb128 866
	.uleb128 0x21
	.4byte	.LASF1235
	.sleb128 867
	.uleb128 0x21
	.4byte	.LASF1236
	.sleb128 868
	.uleb128 0x21
	.4byte	.LASF1237
	.sleb128 869
	.uleb128 0x21
	.4byte	.LASF1238
	.sleb128 870
	.uleb128 0x21
	.4byte	.LASF1239
	.sleb128 871
	.uleb128 0x21
	.4byte	.LASF1240
	.sleb128 872
	.uleb128 0x21
	.4byte	.LASF1241
	.sleb128 873
	.uleb128 0x21
	.4byte	.LASF1242
	.sleb128 874
	.uleb128 0x21
	.4byte	.LASF1243
	.sleb128 875
	.uleb128 0x21
	.4byte	.LASF1244
	.sleb128 876
	.uleb128 0x21
	.4byte	.LASF1245
	.sleb128 877
	.uleb128 0x21
	.4byte	.LASF1246
	.sleb128 878
	.uleb128 0x21
	.4byte	.LASF1247
	.sleb128 879
	.uleb128 0x21
	.4byte	.LASF1248
	.sleb128 880
	.uleb128 0x21
	.4byte	.LASF1249
	.sleb128 881
	.uleb128 0x21
	.4byte	.LASF1250
	.sleb128 882
	.uleb128 0x21
	.4byte	.LASF1251
	.sleb128 883
	.uleb128 0x21
	.4byte	.LASF1252
	.sleb128 884
	.uleb128 0x21
	.4byte	.LASF1253
	.sleb128 885
	.uleb128 0x21
	.4byte	.LASF1254
	.sleb128 886
	.uleb128 0x21
	.4byte	.LASF1255
	.sleb128 887
	.uleb128 0x21
	.4byte	.LASF1256
	.sleb128 888
	.uleb128 0x21
	.4byte	.LASF1257
	.sleb128 889
	.uleb128 0x21
	.4byte	.LASF1258
	.sleb128 890
	.uleb128 0x21
	.4byte	.LASF1259
	.sleb128 891
	.uleb128 0x21
	.4byte	.LASF1260
	.sleb128 892
	.uleb128 0x21
	.4byte	.LASF1261
	.sleb128 893
	.uleb128 0x21
	.4byte	.LASF1262
	.sleb128 894
	.uleb128 0x21
	.4byte	.LASF1263
	.sleb128 895
	.uleb128 0x21
	.4byte	.LASF1264
	.sleb128 896
	.uleb128 0x21
	.4byte	.LASF1265
	.sleb128 897
	.uleb128 0x21
	.4byte	.LASF1266
	.sleb128 898
	.uleb128 0x21
	.4byte	.LASF1267
	.sleb128 899
	.uleb128 0x21
	.4byte	.LASF1268
	.sleb128 900
	.uleb128 0x21
	.4byte	.LASF1269
	.sleb128 901
	.uleb128 0x21
	.4byte	.LASF1270
	.sleb128 902
	.uleb128 0x21
	.4byte	.LASF1271
	.sleb128 903
	.uleb128 0x21
	.4byte	.LASF1272
	.sleb128 904
	.uleb128 0x21
	.4byte	.LASF1273
	.sleb128 905
	.uleb128 0x21
	.4byte	.LASF1274
	.sleb128 906
	.uleb128 0x21
	.4byte	.LASF1275
	.sleb128 907
	.uleb128 0x21
	.4byte	.LASF1276
	.sleb128 908
	.uleb128 0x21
	.4byte	.LASF1277
	.sleb128 909
	.uleb128 0x21
	.4byte	.LASF1278
	.sleb128 910
	.uleb128 0x21
	.4byte	.LASF1279
	.sleb128 911
	.uleb128 0x21
	.4byte	.LASF1280
	.sleb128 912
	.uleb128 0x21
	.4byte	.LASF1281
	.sleb128 913
	.uleb128 0x21
	.4byte	.LASF1282
	.sleb128 914
	.uleb128 0x21
	.4byte	.LASF1283
	.sleb128 915
	.uleb128 0x21
	.4byte	.LASF1284
	.sleb128 916
	.uleb128 0x21
	.4byte	.LASF1285
	.sleb128 917
	.uleb128 0x21
	.4byte	.LASF1286
	.sleb128 918
	.uleb128 0x21
	.4byte	.LASF1287
	.sleb128 919
	.uleb128 0x21
	.4byte	.LASF1288
	.sleb128 920
	.uleb128 0x21
	.4byte	.LASF1289
	.sleb128 921
	.uleb128 0x21
	.4byte	.LASF1290
	.sleb128 922
	.uleb128 0x21
	.4byte	.LASF1291
	.sleb128 923
	.uleb128 0x21
	.4byte	.LASF1292
	.sleb128 924
	.uleb128 0x21
	.4byte	.LASF1293
	.sleb128 925
	.uleb128 0x21
	.4byte	.LASF1294
	.sleb128 926
	.uleb128 0x21
	.4byte	.LASF1295
	.sleb128 927
	.uleb128 0x21
	.4byte	.LASF1296
	.sleb128 928
	.uleb128 0x21
	.4byte	.LASF1297
	.sleb128 929
	.uleb128 0x21
	.4byte	.LASF1298
	.sleb128 930
	.uleb128 0x21
	.4byte	.LASF1299
	.sleb128 931
	.uleb128 0x21
	.4byte	.LASF1300
	.sleb128 932
	.uleb128 0x21
	.4byte	.LASF1301
	.sleb128 933
	.uleb128 0x21
	.4byte	.LASF1302
	.sleb128 934
	.uleb128 0x21
	.4byte	.LASF1303
	.sleb128 935
	.uleb128 0x21
	.4byte	.LASF1304
	.sleb128 936
	.uleb128 0x21
	.4byte	.LASF1305
	.sleb128 937
	.uleb128 0x21
	.4byte	.LASF1306
	.sleb128 938
	.uleb128 0x21
	.4byte	.LASF1307
	.sleb128 939
	.uleb128 0x21
	.4byte	.LASF1308
	.sleb128 940
	.uleb128 0x21
	.4byte	.LASF1309
	.sleb128 941
	.uleb128 0x21
	.4byte	.LASF1310
	.sleb128 942
	.uleb128 0x21
	.4byte	.LASF1311
	.sleb128 943
	.uleb128 0x21
	.4byte	.LASF1312
	.sleb128 944
	.uleb128 0x21
	.4byte	.LASF1313
	.sleb128 945
	.uleb128 0x21
	.4byte	.LASF1314
	.sleb128 946
	.uleb128 0x21
	.4byte	.LASF1315
	.sleb128 947
	.uleb128 0x21
	.4byte	.LASF1316
	.sleb128 948
	.uleb128 0x21
	.4byte	.LASF1317
	.sleb128 949
	.uleb128 0x21
	.4byte	.LASF1318
	.sleb128 950
	.uleb128 0x21
	.4byte	.LASF1319
	.sleb128 951
	.uleb128 0x21
	.4byte	.LASF1320
	.sleb128 952
	.uleb128 0x21
	.4byte	.LASF1321
	.sleb128 953
	.uleb128 0x21
	.4byte	.LASF1322
	.sleb128 954
	.uleb128 0x21
	.4byte	.LASF1323
	.sleb128 955
	.uleb128 0x21
	.4byte	.LASF1324
	.sleb128 956
	.uleb128 0x21
	.4byte	.LASF1325
	.sleb128 957
	.uleb128 0x21
	.4byte	.LASF1326
	.sleb128 958
	.uleb128 0x21
	.4byte	.LASF1327
	.sleb128 959
	.uleb128 0x21
	.4byte	.LASF1328
	.sleb128 960
	.uleb128 0x21
	.4byte	.LASF1329
	.sleb128 961
	.uleb128 0x21
	.4byte	.LASF1330
	.sleb128 962
	.uleb128 0x21
	.4byte	.LASF1331
	.sleb128 963
	.uleb128 0x21
	.4byte	.LASF1332
	.sleb128 964
	.uleb128 0x21
	.4byte	.LASF1333
	.sleb128 965
	.uleb128 0x21
	.4byte	.LASF1334
	.sleb128 966
	.uleb128 0x21
	.4byte	.LASF1335
	.sleb128 967
	.uleb128 0x21
	.4byte	.LASF1336
	.sleb128 968
	.uleb128 0x21
	.4byte	.LASF1337
	.sleb128 969
	.uleb128 0x21
	.4byte	.LASF1338
	.sleb128 970
	.uleb128 0x21
	.4byte	.LASF1339
	.sleb128 971
	.uleb128 0x21
	.4byte	.LASF1340
	.sleb128 972
	.uleb128 0x21
	.4byte	.LASF1341
	.sleb128 973
	.uleb128 0x21
	.4byte	.LASF1342
	.sleb128 974
	.uleb128 0x21
	.4byte	.LASF1343
	.sleb128 975
	.uleb128 0x21
	.4byte	.LASF1344
	.sleb128 976
	.uleb128 0x21
	.4byte	.LASF1345
	.sleb128 977
	.uleb128 0x21
	.4byte	.LASF1346
	.sleb128 978
	.uleb128 0x21
	.4byte	.LASF1347
	.sleb128 979
	.uleb128 0x21
	.4byte	.LASF1348
	.sleb128 980
	.uleb128 0x21
	.4byte	.LASF1349
	.sleb128 981
	.uleb128 0x21
	.4byte	.LASF1350
	.sleb128 982
	.uleb128 0x21
	.4byte	.LASF1351
	.sleb128 983
	.uleb128 0x21
	.4byte	.LASF1352
	.sleb128 984
	.uleb128 0x21
	.4byte	.LASF1353
	.sleb128 985
	.uleb128 0x21
	.4byte	.LASF1354
	.sleb128 986
	.uleb128 0x21
	.4byte	.LASF1355
	.sleb128 987
	.uleb128 0x21
	.4byte	.LASF1356
	.sleb128 988
	.uleb128 0x21
	.4byte	.LASF1357
	.sleb128 989
	.uleb128 0x21
	.4byte	.LASF1358
	.sleb128 990
	.uleb128 0x21
	.4byte	.LASF1359
	.sleb128 991
	.uleb128 0x21
	.4byte	.LASF1360
	.sleb128 992
	.uleb128 0x21
	.4byte	.LASF1361
	.sleb128 993
	.uleb128 0x21
	.4byte	.LASF1362
	.sleb128 994
	.uleb128 0x21
	.4byte	.LASF1363
	.sleb128 995
	.uleb128 0x21
	.4byte	.LASF1364
	.sleb128 996
	.uleb128 0x21
	.4byte	.LASF1365
	.sleb128 997
	.uleb128 0x21
	.4byte	.LASF1366
	.sleb128 998
	.uleb128 0x21
	.4byte	.LASF1367
	.sleb128 999
	.uleb128 0x21
	.4byte	.LASF1368
	.sleb128 1040
	.uleb128 0x21
	.4byte	.LASF1369
	.sleb128 1041
	.uleb128 0x21
	.4byte	.LASF1370
	.sleb128 1042
	.uleb128 0x21
	.4byte	.LASF1371
	.sleb128 1043
	.uleb128 0x21
	.4byte	.LASF1372
	.sleb128 1044
	.uleb128 0x21
	.4byte	.LASF1373
	.sleb128 1045
	.uleb128 0x21
	.4byte	.LASF1374
	.sleb128 1046
	.uleb128 0x21
	.4byte	.LASF1375
	.sleb128 1047
	.uleb128 0x21
	.4byte	.LASF1376
	.sleb128 1048
	.uleb128 0x21
	.4byte	.LASF1377
	.sleb128 1049
	.uleb128 0x21
	.4byte	.LASF1378
	.sleb128 1050
	.uleb128 0x21
	.4byte	.LASF1379
	.sleb128 1051
	.uleb128 0x21
	.4byte	.LASF1380
	.sleb128 1052
	.uleb128 0x21
	.4byte	.LASF1381
	.sleb128 1053
	.uleb128 0x21
	.4byte	.LASF1382
	.sleb128 1054
	.uleb128 0x21
	.4byte	.LASF1383
	.sleb128 1055
	.uleb128 0x21
	.4byte	.LASF1384
	.sleb128 1056
	.uleb128 0x21
	.4byte	.LASF1385
	.sleb128 1057
	.uleb128 0x21
	.4byte	.LASF1386
	.sleb128 1058
	.uleb128 0x21
	.4byte	.LASF1387
	.sleb128 1059
	.uleb128 0x21
	.4byte	.LASF1388
	.sleb128 1060
	.uleb128 0x21
	.4byte	.LASF1389
	.sleb128 1061
	.uleb128 0x21
	.4byte	.LASF1390
	.sleb128 1062
	.uleb128 0x21
	.4byte	.LASF1391
	.sleb128 1063
	.uleb128 0x21
	.4byte	.LASF1392
	.sleb128 1064
	.uleb128 0x21
	.4byte	.LASF1393
	.sleb128 1065
	.uleb128 0x21
	.4byte	.LASF1394
	.sleb128 1066
	.uleb128 0x21
	.4byte	.LASF1395
	.sleb128 1067
	.uleb128 0x21
	.4byte	.LASF1396
	.sleb128 1068
	.uleb128 0x21
	.4byte	.LASF1397
	.sleb128 1069
	.uleb128 0x21
	.4byte	.LASF1398
	.sleb128 1070
	.uleb128 0x21
	.4byte	.LASF1399
	.sleb128 1071
	.uleb128 0x21
	.4byte	.LASF1400
	.sleb128 1072
	.uleb128 0x21
	.4byte	.LASF1401
	.sleb128 1073
	.uleb128 0x21
	.4byte	.LASF1402
	.sleb128 1074
	.uleb128 0x21
	.4byte	.LASF1403
	.sleb128 1075
	.uleb128 0x21
	.4byte	.LASF1404
	.sleb128 1076
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1405
	.byte	0x10
	.2byte	0x4e3
	.4byte	0xfa3
	.uleb128 0x1b
	.byte	0x1c
	.byte	0x10
	.2byte	0x4e9
	.4byte	0x2c38
	.uleb128 0x17
	.4byte	.LASF1406
	.byte	0x10
	.2byte	0x4eb
	.4byte	0xf98
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1407
	.byte	0x10
	.2byte	0x4ec
	.4byte	0x85
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF1408
	.byte	0x10
	.2byte	0x4ed
	.4byte	0x85
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF1409
	.byte	0x10
	.2byte	0x4ee
	.4byte	0xb6b
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF1410
	.byte	0x10
	.2byte	0x4ef
	.4byte	0x2bc7
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF1411
	.byte	0x10
	.2byte	0x4f0
	.4byte	0x85
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF1412
	.byte	0x10
	.2byte	0x4f0
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1413
	.byte	0x10
	.2byte	0x4f1
	.4byte	0x2bd3
	.uleb128 0x24
	.byte	0x1
	.byte	0x10
	.2byte	0x4fd
	.4byte	0x303d
	.uleb128 0x21
	.4byte	.LASF1414
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1415
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1416
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1417
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1418
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1419
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF1420
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF1421
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF1422
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF1423
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF1424
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF1425
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF1426
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF1427
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF1428
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF1429
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF1430
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF1431
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF1432
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF1433
	.sleb128 19
	.uleb128 0x21
	.4byte	.LASF1434
	.sleb128 20
	.uleb128 0x21
	.4byte	.LASF1435
	.sleb128 21
	.uleb128 0x21
	.4byte	.LASF1436
	.sleb128 22
	.uleb128 0x21
	.4byte	.LASF1437
	.sleb128 23
	.uleb128 0x21
	.4byte	.LASF1438
	.sleb128 24
	.uleb128 0x21
	.4byte	.LASF1439
	.sleb128 25
	.uleb128 0x21
	.4byte	.LASF1440
	.sleb128 26
	.uleb128 0x21
	.4byte	.LASF1441
	.sleb128 27
	.uleb128 0x21
	.4byte	.LASF1442
	.sleb128 28
	.uleb128 0x21
	.4byte	.LASF1443
	.sleb128 29
	.uleb128 0x21
	.4byte	.LASF1444
	.sleb128 30
	.uleb128 0x21
	.4byte	.LASF1445
	.sleb128 31
	.uleb128 0x21
	.4byte	.LASF1446
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF1447
	.sleb128 33
	.uleb128 0x21
	.4byte	.LASF1448
	.sleb128 34
	.uleb128 0x21
	.4byte	.LASF1449
	.sleb128 35
	.uleb128 0x21
	.4byte	.LASF1450
	.sleb128 36
	.uleb128 0x21
	.4byte	.LASF1451
	.sleb128 37
	.uleb128 0x21
	.4byte	.LASF1452
	.sleb128 38
	.uleb128 0x21
	.4byte	.LASF1453
	.sleb128 39
	.uleb128 0x21
	.4byte	.LASF1454
	.sleb128 40
	.uleb128 0x21
	.4byte	.LASF1455
	.sleb128 41
	.uleb128 0x21
	.4byte	.LASF1456
	.sleb128 42
	.uleb128 0x21
	.4byte	.LASF1457
	.sleb128 43
	.uleb128 0x21
	.4byte	.LASF1458
	.sleb128 44
	.uleb128 0x21
	.4byte	.LASF1459
	.sleb128 45
	.uleb128 0x21
	.4byte	.LASF1460
	.sleb128 46
	.uleb128 0x21
	.4byte	.LASF1461
	.sleb128 47
	.uleb128 0x21
	.4byte	.LASF1462
	.sleb128 48
	.uleb128 0x21
	.4byte	.LASF1463
	.sleb128 49
	.uleb128 0x21
	.4byte	.LASF1464
	.sleb128 50
	.uleb128 0x21
	.4byte	.LASF1465
	.sleb128 51
	.uleb128 0x21
	.4byte	.LASF1466
	.sleb128 52
	.uleb128 0x21
	.4byte	.LASF1467
	.sleb128 53
	.uleb128 0x21
	.4byte	.LASF1468
	.sleb128 54
	.uleb128 0x21
	.4byte	.LASF1469
	.sleb128 55
	.uleb128 0x21
	.4byte	.LASF1470
	.sleb128 56
	.uleb128 0x21
	.4byte	.LASF1471
	.sleb128 57
	.uleb128 0x21
	.4byte	.LASF1472
	.sleb128 58
	.uleb128 0x21
	.4byte	.LASF1473
	.sleb128 59
	.uleb128 0x21
	.4byte	.LASF1474
	.sleb128 60
	.uleb128 0x21
	.4byte	.LASF1475
	.sleb128 61
	.uleb128 0x21
	.4byte	.LASF1476
	.sleb128 62
	.uleb128 0x21
	.4byte	.LASF1477
	.sleb128 63
	.uleb128 0x21
	.4byte	.LASF1478
	.sleb128 64
	.uleb128 0x21
	.4byte	.LASF1479
	.sleb128 65
	.uleb128 0x21
	.4byte	.LASF1480
	.sleb128 66
	.uleb128 0x21
	.4byte	.LASF1481
	.sleb128 67
	.uleb128 0x21
	.4byte	.LASF1482
	.sleb128 68
	.uleb128 0x21
	.4byte	.LASF1483
	.sleb128 69
	.uleb128 0x21
	.4byte	.LASF1484
	.sleb128 70
	.uleb128 0x21
	.4byte	.LASF1485
	.sleb128 71
	.uleb128 0x21
	.4byte	.LASF1486
	.sleb128 72
	.uleb128 0x21
	.4byte	.LASF1487
	.sleb128 73
	.uleb128 0x21
	.4byte	.LASF1488
	.sleb128 74
	.uleb128 0x21
	.4byte	.LASF1489
	.sleb128 75
	.uleb128 0x21
	.4byte	.LASF1490
	.sleb128 76
	.uleb128 0x21
	.4byte	.LASF1491
	.sleb128 77
	.uleb128 0x21
	.4byte	.LASF1492
	.sleb128 78
	.uleb128 0x21
	.4byte	.LASF1493
	.sleb128 79
	.uleb128 0x21
	.4byte	.LASF1494
	.sleb128 80
	.uleb128 0x21
	.4byte	.LASF1495
	.sleb128 81
	.uleb128 0x21
	.4byte	.LASF1496
	.sleb128 82
	.uleb128 0x21
	.4byte	.LASF1497
	.sleb128 83
	.uleb128 0x21
	.4byte	.LASF1498
	.sleb128 84
	.uleb128 0x21
	.4byte	.LASF1499
	.sleb128 85
	.uleb128 0x21
	.4byte	.LASF1500
	.sleb128 86
	.uleb128 0x21
	.4byte	.LASF1501
	.sleb128 87
	.uleb128 0x21
	.4byte	.LASF1502
	.sleb128 88
	.uleb128 0x21
	.4byte	.LASF1503
	.sleb128 89
	.uleb128 0x21
	.4byte	.LASF1504
	.sleb128 90
	.uleb128 0x21
	.4byte	.LASF1505
	.sleb128 91
	.uleb128 0x21
	.4byte	.LASF1506
	.sleb128 92
	.uleb128 0x21
	.4byte	.LASF1507
	.sleb128 93
	.uleb128 0x21
	.4byte	.LASF1508
	.sleb128 94
	.uleb128 0x21
	.4byte	.LASF1509
	.sleb128 95
	.uleb128 0x21
	.4byte	.LASF1510
	.sleb128 96
	.uleb128 0x21
	.4byte	.LASF1511
	.sleb128 97
	.uleb128 0x21
	.4byte	.LASF1512
	.sleb128 98
	.uleb128 0x21
	.4byte	.LASF1513
	.sleb128 99
	.uleb128 0x21
	.4byte	.LASF1514
	.sleb128 100
	.uleb128 0x21
	.4byte	.LASF1515
	.sleb128 101
	.uleb128 0x21
	.4byte	.LASF1516
	.sleb128 102
	.uleb128 0x21
	.4byte	.LASF1517
	.sleb128 103
	.uleb128 0x21
	.4byte	.LASF1518
	.sleb128 104
	.uleb128 0x21
	.4byte	.LASF1519
	.sleb128 105
	.uleb128 0x21
	.4byte	.LASF1520
	.sleb128 106
	.uleb128 0x21
	.4byte	.LASF1521
	.sleb128 107
	.uleb128 0x21
	.4byte	.LASF1522
	.sleb128 108
	.uleb128 0x21
	.4byte	.LASF1523
	.sleb128 109
	.uleb128 0x21
	.4byte	.LASF1524
	.sleb128 110
	.uleb128 0x21
	.4byte	.LASF1525
	.sleb128 111
	.uleb128 0x21
	.4byte	.LASF1526
	.sleb128 112
	.uleb128 0x21
	.4byte	.LASF1527
	.sleb128 113
	.uleb128 0x21
	.4byte	.LASF1528
	.sleb128 114
	.uleb128 0x21
	.4byte	.LASF1529
	.sleb128 115
	.uleb128 0x21
	.4byte	.LASF1530
	.sleb128 116
	.uleb128 0x21
	.4byte	.LASF1531
	.sleb128 117
	.uleb128 0x21
	.4byte	.LASF1532
	.sleb128 118
	.uleb128 0x21
	.4byte	.LASF1533
	.sleb128 119
	.uleb128 0x21
	.4byte	.LASF1534
	.sleb128 120
	.uleb128 0x21
	.4byte	.LASF1535
	.sleb128 121
	.uleb128 0x21
	.4byte	.LASF1536
	.sleb128 122
	.uleb128 0x21
	.4byte	.LASF1537
	.sleb128 123
	.uleb128 0x21
	.4byte	.LASF1538
	.sleb128 124
	.uleb128 0x21
	.4byte	.LASF1539
	.sleb128 125
	.uleb128 0x21
	.4byte	.LASF1540
	.sleb128 126
	.uleb128 0x21
	.4byte	.LASF1541
	.sleb128 127
	.uleb128 0x21
	.4byte	.LASF1542
	.sleb128 128
	.uleb128 0x21
	.4byte	.LASF1543
	.sleb128 129
	.uleb128 0x21
	.4byte	.LASF1544
	.sleb128 130
	.uleb128 0x21
	.4byte	.LASF1545
	.sleb128 131
	.uleb128 0x21
	.4byte	.LASF1546
	.sleb128 132
	.uleb128 0x21
	.4byte	.LASF1547
	.sleb128 133
	.uleb128 0x21
	.4byte	.LASF1548
	.sleb128 134
	.uleb128 0x21
	.4byte	.LASF1549
	.sleb128 135
	.uleb128 0x21
	.4byte	.LASF1550
	.sleb128 136
	.uleb128 0x21
	.4byte	.LASF1551
	.sleb128 137
	.uleb128 0x21
	.4byte	.LASF1552
	.sleb128 138
	.uleb128 0x21
	.4byte	.LASF1553
	.sleb128 139
	.uleb128 0x21
	.4byte	.LASF1554
	.sleb128 140
	.uleb128 0x21
	.4byte	.LASF1555
	.sleb128 141
	.uleb128 0x21
	.4byte	.LASF1556
	.sleb128 142
	.uleb128 0x21
	.4byte	.LASF1557
	.sleb128 143
	.uleb128 0x21
	.4byte	.LASF1558
	.sleb128 144
	.uleb128 0x21
	.4byte	.LASF1559
	.sleb128 145
	.uleb128 0x21
	.4byte	.LASF1560
	.sleb128 146
	.uleb128 0x21
	.4byte	.LASF1561
	.sleb128 147
	.uleb128 0x21
	.4byte	.LASF1562
	.sleb128 148
	.uleb128 0x21
	.4byte	.LASF1563
	.sleb128 149
	.uleb128 0x21
	.4byte	.LASF1564
	.sleb128 150
	.uleb128 0x21
	.4byte	.LASF1565
	.sleb128 151
	.uleb128 0x21
	.4byte	.LASF1566
	.sleb128 152
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1567
	.byte	0x10
	.2byte	0x59e
	.4byte	0x2c44
	.uleb128 0x1b
	.byte	0x68
	.byte	0x10
	.2byte	0x5a8
	.4byte	0x317e
	.uleb128 0x17
	.4byte	.LASF1568
	.byte	0x10
	.2byte	0x5aa
	.4byte	0x62
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1569
	.byte	0x10
	.2byte	0x5ac
	.4byte	0x62
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF1570
	.byte	0x10
	.2byte	0x5ae
	.4byte	0x62
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF1571
	.byte	0x10
	.2byte	0x5af
	.4byte	0x62
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF1572
	.byte	0x10
	.2byte	0x5b0
	.4byte	0x62
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF1573
	.byte	0x10
	.2byte	0x5b1
	.4byte	0x62
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF1574
	.byte	0x10
	.2byte	0x5b4
	.4byte	0x62
	.byte	0x18
	.uleb128 0x17
	.4byte	.LASF1575
	.byte	0x10
	.2byte	0x5b5
	.4byte	0x62
	.byte	0x1c
	.uleb128 0x17
	.4byte	.LASF1576
	.byte	0x10
	.2byte	0x5b6
	.4byte	0x62
	.byte	0x20
	.uleb128 0x17
	.4byte	.LASF1577
	.byte	0x10
	.2byte	0x5bc
	.4byte	0x62
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF1578
	.byte	0x10
	.2byte	0x5bd
	.4byte	0x62
	.byte	0x28
	.uleb128 0x17
	.4byte	.LASF1579
	.byte	0x10
	.2byte	0x5be
	.4byte	0x62
	.byte	0x2c
	.uleb128 0x17
	.4byte	.LASF1580
	.byte	0x10
	.2byte	0x5c0
	.4byte	0x62
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF1581
	.byte	0x10
	.2byte	0x5c1
	.4byte	0x62
	.byte	0x34
	.uleb128 0x17
	.4byte	.LASF1582
	.byte	0x10
	.2byte	0x5c3
	.4byte	0x62
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF1583
	.byte	0x10
	.2byte	0x5c6
	.4byte	0x62
	.byte	0x3c
	.uleb128 0x17
	.4byte	.LASF1584
	.byte	0x10
	.2byte	0x5c8
	.4byte	0x62
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF1585
	.byte	0x10
	.2byte	0x5c9
	.4byte	0x62
	.byte	0x44
	.uleb128 0x17
	.4byte	.LASF1586
	.byte	0x10
	.2byte	0x5cb
	.4byte	0x62
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF1587
	.byte	0x10
	.2byte	0x5ce
	.4byte	0x62
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF1588
	.byte	0x10
	.2byte	0x5cf
	.4byte	0x62
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF1589
	.byte	0x10
	.2byte	0x5d1
	.4byte	0xab8
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF1590
	.byte	0x10
	.2byte	0x5d2
	.4byte	0x62
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1591
	.byte	0x10
	.2byte	0x5d5
	.4byte	0x3049
	.uleb128 0x20
	.byte	0x1
	.byte	0x11
	.byte	0x47
	.4byte	0x31a5
	.uleb128 0x21
	.4byte	.LASF1592
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1593
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1594
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x11
	.byte	0x4d
	.4byte	0x31dc
	.uleb128 0xe
	.4byte	.LASF1595
	.byte	0x11
	.byte	0x4f
	.4byte	0x31dc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1408
	.byte	0x11
	.byte	0x50
	.4byte	0x62
	.byte	0x4
	.uleb128 0xf
	.ascii	"sx\000"
	.byte	0x11
	.byte	0x51
	.4byte	0xb55
	.byte	0x8
	.uleb128 0xf
	.ascii	"sy\000"
	.byte	0x11
	.byte	0x52
	.4byte	0xb55
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c38
	.uleb128 0x3
	.4byte	.LASF1596
	.byte	0x11
	.byte	0x53
	.4byte	0x31a5
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x31fd
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0xa
	.byte	0x12
	.byte	0xc0
	.4byte	0x323e
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x12
	.byte	0xc1
	.4byte	0x77
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x12
	.byte	0xc2
	.4byte	0x77
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF1597
	.byte	0x12
	.byte	0xc3
	.4byte	0x77
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1598
	.byte	0x12
	.byte	0xc4
	.4byte	0x77
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF1599
	.byte	0x12
	.byte	0xc5
	.4byte	0x77
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1600
	.byte	0x12
	.byte	0xc6
	.4byte	0x31fd
	.uleb128 0x4
	.4byte	.LASF1601
	.byte	0xd0
	.byte	0x13
	.byte	0xf8
	.4byte	0x34bd
	.uleb128 0xe
	.4byte	.LASF1602
	.byte	0x13
	.byte	0xfb
	.4byte	0xbe9
	.byte	0
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x13
	.byte	0xfe
	.4byte	0xb55
	.byte	0x18
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x13
	.byte	0xff
	.4byte	0xb55
	.byte	0x1c
	.uleb128 0x25
	.ascii	"z\000"
	.byte	0x13
	.2byte	0x100
	.4byte	0xb55
	.byte	0x20
	.uleb128 0x17
	.4byte	.LASF1603
	.byte	0x13
	.2byte	0x103
	.4byte	0x34bd
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF1604
	.byte	0x13
	.2byte	0x104
	.4byte	0x34c3
	.byte	0x28
	.uleb128 0x17
	.4byte	.LASF1597
	.byte	0x13
	.2byte	0x107
	.4byte	0xb60
	.byte	0x2c
	.uleb128 0x17
	.4byte	.LASF1406
	.byte	0x13
	.2byte	0x108
	.4byte	0xf98
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF1407
	.byte	0x13
	.2byte	0x109
	.4byte	0x62
	.byte	0x34
	.uleb128 0x17
	.4byte	.LASF1605
	.byte	0x13
	.2byte	0x10d
	.4byte	0x34bd
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF1606
	.byte	0x13
	.2byte	0x10e
	.4byte	0x34c3
	.byte	0x3c
	.uleb128 0x17
	.4byte	.LASF1607
	.byte	0x13
	.2byte	0x110
	.4byte	0x34fe
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF1608
	.byte	0x13
	.2byte	0x113
	.4byte	0xb55
	.byte	0x44
	.uleb128 0x17
	.4byte	.LASF1609
	.byte	0x13
	.2byte	0x114
	.4byte	0xb55
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF1610
	.byte	0x13
	.2byte	0x117
	.4byte	0xb55
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF1584
	.byte	0x13
	.2byte	0x11a
	.4byte	0xb55
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF1585
	.byte	0x13
	.2byte	0x11b
	.4byte	0xb55
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF1611
	.byte	0x13
	.2byte	0x11e
	.4byte	0xb55
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF1612
	.byte	0x13
	.2byte	0x11f
	.4byte	0xb55
	.byte	0x5c
	.uleb128 0x17
	.4byte	.LASF1613
	.byte	0x13
	.2byte	0x120
	.4byte	0xb55
	.byte	0x60
	.uleb128 0x17
	.4byte	.LASF1614
	.byte	0x13
	.2byte	0x123
	.4byte	0x62
	.byte	0x64
	.uleb128 0x17
	.4byte	.LASF1598
	.byte	0x13
	.2byte	0x125
	.4byte	0x303d
	.byte	0x68
	.uleb128 0x17
	.4byte	.LASF1615
	.byte	0x13
	.2byte	0x126
	.4byte	0x3504
	.byte	0x6c
	.uleb128 0x17
	.4byte	.LASF1408
	.byte	0x13
	.2byte	0x128
	.4byte	0x62
	.byte	0x70
	.uleb128 0x17
	.4byte	.LASF1595
	.byte	0x13
	.2byte	0x129
	.4byte	0x31dc
	.byte	0x74
	.uleb128 0x17
	.4byte	.LASF1589
	.byte	0x13
	.2byte	0x12a
	.4byte	0xab8
	.byte	0x78
	.uleb128 0x17
	.4byte	.LASF1616
	.byte	0x13
	.2byte	0x12b
	.4byte	0x62
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF1617
	.byte	0x13
	.2byte	0x12c
	.4byte	0x62
	.byte	0x84
	.uleb128 0x17
	.4byte	.LASF1618
	.byte	0x13
	.2byte	0x12f
	.4byte	0x77
	.byte	0x88
	.uleb128 0x17
	.4byte	.LASF1619
	.byte	0x13
	.2byte	0x130
	.4byte	0x77
	.byte	0x8a
	.uleb128 0x17
	.4byte	.LASF1620
	.byte	0x13
	.2byte	0x131
	.4byte	0x77
	.byte	0x8c
	.uleb128 0x17
	.4byte	.LASF1621
	.byte	0x13
	.2byte	0x135
	.4byte	0x34bd
	.byte	0x90
	.uleb128 0x17
	.4byte	.LASF1573
	.byte	0x13
	.2byte	0x139
	.4byte	0x77
	.byte	0x94
	.uleb128 0x17
	.4byte	.LASF1622
	.byte	0x13
	.2byte	0x13d
	.4byte	0x77
	.byte	0x96
	.uleb128 0x17
	.4byte	.LASF1623
	.byte	0x13
	.2byte	0x140
	.4byte	0x77
	.byte	0x98
	.uleb128 0x17
	.4byte	.LASF1624
	.byte	0x13
	.2byte	0x142
	.4byte	0x77
	.byte	0x9a
	.uleb128 0x17
	.4byte	.LASF1625
	.byte	0x13
	.2byte	0x146
	.4byte	0x36d4
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF1626
	.byte	0x13
	.2byte	0x149
	.4byte	0x77
	.byte	0xa0
	.uleb128 0x17
	.4byte	.LASF1627
	.byte	0x13
	.2byte	0x14c
	.4byte	0x323e
	.byte	0xa2
	.uleb128 0x17
	.4byte	.LASF1628
	.byte	0x13
	.2byte	0x14f
	.4byte	0x34bd
	.byte	0xac
	.uleb128 0x17
	.4byte	.LASF1629
	.byte	0x13
	.2byte	0x152
	.4byte	0x34bd
	.byte	0xb0
	.uleb128 0x17
	.4byte	.LASF1630
	.byte	0x13
	.2byte	0x158
	.4byte	0x62
	.byte	0xb4
	.uleb128 0x17
	.4byte	.LASF1631
	.byte	0x13
	.2byte	0x159
	.4byte	0x62
	.byte	0xb8
	.uleb128 0x17
	.4byte	.LASF1632
	.byte	0x13
	.2byte	0x15c
	.4byte	0x373b
	.byte	0xbc
	.uleb128 0x17
	.4byte	.LASF1633
	.byte	0x13
	.2byte	0x15e
	.4byte	0xb55
	.byte	0xc0
	.uleb128 0x17
	.4byte	.LASF1634
	.byte	0x13
	.2byte	0x15f
	.4byte	0xb55
	.byte	0xc4
	.uleb128 0x17
	.4byte	.LASF1635
	.byte	0x13
	.2byte	0x160
	.4byte	0xb55
	.byte	0xc8
	.uleb128 0x25
	.ascii	"pad\000"
	.byte	0x13
	.2byte	0x162
	.4byte	0xb55
	.byte	0xcc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3249
	.uleb128 0x10
	.byte	0x4
	.4byte	0x34bd
	.uleb128 0x1a
	.4byte	.LASF1636
	.byte	0xc
	.byte	0x14
	.2byte	0x123
	.4byte	0x34fe
	.uleb128 0x17
	.4byte	.LASF1637
	.byte	0x14
	.2byte	0x125
	.4byte	0x4102
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1638
	.byte	0x14
	.2byte	0x126
	.4byte	0x62
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF1639
	.byte	0x14
	.2byte	0x126
	.4byte	0x62
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x34c9
	.uleb128 0x10
	.byte	0x4
	.4byte	0x317e
	.uleb128 0x11
	.4byte	.LASF1640
	.2byte	0x11c
	.byte	0x15
	.byte	0x5d
	.4byte	0x36d4
	.uleb128 0xf
	.ascii	"mo\000"
	.byte	0x15
	.byte	0x5f
	.4byte	0x37cf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1641
	.byte	0x15
	.byte	0x60
	.4byte	0x37c4
	.byte	0x4
	.uleb128 0xf
	.ascii	"cmd\000"
	.byte	0x15
	.byte	0x61
	.4byte	0x379e
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF1642
	.byte	0x15
	.byte	0x66
	.4byte	0xb55
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF1643
	.byte	0x15
	.byte	0x68
	.4byte	0xb55
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF1644
	.byte	0x15
	.byte	0x6a
	.4byte	0xb55
	.byte	0x18
	.uleb128 0xf
	.ascii	"bob\000"
	.byte	0x15
	.byte	0x6c
	.4byte	0xb55
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF1611
	.byte	0x15
	.byte	0x73
	.4byte	0xb55
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF1612
	.byte	0x15
	.byte	0x73
	.4byte	0xb55
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF1617
	.byte	0x15
	.byte	0x77
	.4byte	0x62
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF1645
	.byte	0x15
	.byte	0x78
	.4byte	0x62
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF1646
	.byte	0x15
	.byte	0x7a
	.4byte	0x62
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF1647
	.byte	0x15
	.byte	0x7d
	.4byte	0x37d5
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF1648
	.byte	0x15
	.byte	0x7e
	.4byte	0x37e5
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF1649
	.byte	0x15
	.byte	0x7f
	.4byte	0xaa2
	.byte	0x64
	.uleb128 0xe
	.4byte	.LASF1650
	.byte	0x15
	.byte	0x82
	.4byte	0x37f5
	.byte	0x68
	.uleb128 0xe
	.4byte	.LASF1651
	.byte	0x15
	.byte	0x83
	.4byte	0xa30
	.byte	0x78
	.uleb128 0xe
	.4byte	.LASF1652
	.byte	0x15
	.byte	0x86
	.4byte	0xa30
	.byte	0x79
	.uleb128 0xe
	.4byte	.LASF1653
	.byte	0x15
	.byte	0x88
	.4byte	0x3805
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF1654
	.byte	0x15
	.byte	0x89
	.4byte	0x37f5
	.byte	0xa0
	.uleb128 0xe
	.4byte	.LASF1655
	.byte	0x15
	.byte	0x8a
	.4byte	0x37f5
	.byte	0xb0
	.uleb128 0xe
	.4byte	.LASF1656
	.byte	0x15
	.byte	0x8d
	.4byte	0x62
	.byte	0xc0
	.uleb128 0xe
	.4byte	.LASF1657
	.byte	0x15
	.byte	0x8e
	.4byte	0x62
	.byte	0xc4
	.uleb128 0xe
	.4byte	.LASF1658
	.byte	0x15
	.byte	0x92
	.4byte	0x62
	.byte	0xc8
	.uleb128 0xe
	.4byte	.LASF1659
	.byte	0x15
	.byte	0x95
	.4byte	0x62
	.byte	0xcc
	.uleb128 0xe
	.4byte	.LASF1660
	.byte	0x15
	.byte	0x98
	.4byte	0x62
	.byte	0xd0
	.uleb128 0xe
	.4byte	.LASF1661
	.byte	0x15
	.byte	0x99
	.4byte	0x62
	.byte	0xd4
	.uleb128 0xe
	.4byte	.LASF1662
	.byte	0x15
	.byte	0x9a
	.4byte	0x62
	.byte	0xd8
	.uleb128 0xe
	.4byte	.LASF1663
	.byte	0x15
	.byte	0x9d
	.4byte	0x5a8
	.byte	0xdc
	.uleb128 0xe
	.4byte	.LASF1664
	.byte	0x15
	.byte	0xa0
	.4byte	0x62
	.byte	0xe0
	.uleb128 0xe
	.4byte	.LASF1665
	.byte	0x15
	.byte	0xa1
	.4byte	0x62
	.byte	0xe4
	.uleb128 0xe
	.4byte	.LASF1666
	.byte	0x15
	.byte	0xa4
	.4byte	0x37cf
	.byte	0xe8
	.uleb128 0xe
	.4byte	.LASF1667
	.byte	0x15
	.byte	0xa7
	.4byte	0x62
	.byte	0xec
	.uleb128 0xe
	.4byte	.LASF1668
	.byte	0x15
	.byte	0xab
	.4byte	0x62
	.byte	0xf0
	.uleb128 0xe
	.4byte	.LASF1669
	.byte	0x15
	.byte	0xaf
	.4byte	0x62
	.byte	0xf4
	.uleb128 0xe
	.4byte	.LASF1670
	.byte	0x15
	.byte	0xb2
	.4byte	0x3815
	.byte	0xf8
	.uleb128 0x12
	.4byte	.LASF1671
	.byte	0x15
	.byte	0xb5
	.4byte	0xaa2
	.2byte	0x118
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x350a
	.uleb128 0x4
	.4byte	.LASF1672
	.byte	0x1c
	.byte	0x14
	.byte	0xde
	.4byte	0x373b
	.uleb128 0xe
	.4byte	.LASF1673
	.byte	0x14
	.byte	0xe0
	.4byte	0x4102
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1674
	.byte	0x14
	.byte	0xe1
	.4byte	0x34bd
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1675
	.byte	0x14
	.byte	0xe2
	.4byte	0x373b
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF1676
	.byte	0x14
	.byte	0xe3
	.4byte	0x373b
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF1677
	.byte	0x14
	.byte	0xe4
	.4byte	0x373b
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF1678
	.byte	0x14
	.byte	0xe5
	.4byte	0x373b
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF1679
	.byte	0x14
	.byte	0xe6
	.4byte	0xaa2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x36da
	.uleb128 0x8
	.4byte	.LASF1680
	.byte	0x13
	.2byte	0x165
	.4byte	0x3249
	.uleb128 0xd
	.byte	0x8
	.byte	0x16
	.byte	0x31
	.4byte	0x379e
	.uleb128 0xe
	.4byte	.LASF1681
	.byte	0x16
	.byte	0x33
	.4byte	0x69
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1682
	.byte	0x16
	.byte	0x34
	.4byte	0x69
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF1683
	.byte	0x16
	.byte	0x35
	.4byte	0x77
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF1684
	.byte	0x16
	.byte	0x36
	.4byte	0x77
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1685
	.byte	0x16
	.byte	0x37
	.4byte	0xaad
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF1686
	.byte	0x16
	.byte	0x38
	.4byte	0xaad
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1687
	.byte	0x16
	.byte	0x39
	.4byte	0x374d
	.uleb128 0x20
	.byte	0x1
	.byte	0x15
	.byte	0x40
	.4byte	0x37c4
	.uleb128 0x21
	.4byte	.LASF1688
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1689
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1690
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1691
	.byte	0x15
	.byte	0x48
	.4byte	0x37a9
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3741
	.uleb128 0xb
	.4byte	0x62
	.4byte	0x37e5
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xaa2
	.4byte	0x37f5
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0x62
	.4byte	0x3805
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0xaa2
	.4byte	0x3815
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x31e2
	.4byte	0x3825
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1692
	.byte	0x15
	.byte	0xb7
	.4byte	0x350a
	.uleb128 0xd
	.byte	0x28
	.byte	0x15
	.byte	0xbe
	.4byte	0x388c
	.uleb128 0xf
	.ascii	"in\000"
	.byte	0x15
	.byte	0xc0
	.4byte	0xaa2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1693
	.byte	0x15
	.byte	0xc3
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1694
	.byte	0x15
	.byte	0xc4
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF1695
	.byte	0x15
	.byte	0xc5
	.4byte	0x62
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF1696
	.byte	0x15
	.byte	0xc6
	.4byte	0x62
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF1650
	.byte	0x15
	.byte	0xc7
	.4byte	0x37f5
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF1697
	.byte	0x15
	.byte	0xc8
	.4byte	0x62
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1698
	.byte	0x15
	.byte	0xca
	.4byte	0x3830
	.uleb128 0xd
	.byte	0xcc
	.byte	0x15
	.byte	0xcc
	.4byte	0x3930
	.uleb128 0xe
	.4byte	.LASF1699
	.byte	0x15
	.byte	0xce
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1671
	.byte	0x15
	.byte	0xd1
	.4byte	0xaa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1700
	.byte	0x15
	.byte	0xd4
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF220
	.byte	0x15
	.byte	0xd5
	.4byte	0x62
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF1701
	.byte	0x15
	.byte	0xd7
	.4byte	0x62
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF1702
	.byte	0x15
	.byte	0xd8
	.4byte	0x62
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF1703
	.byte	0x15
	.byte	0xd9
	.4byte	0x62
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF1704
	.byte	0x15
	.byte	0xda
	.4byte	0x62
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF1705
	.byte	0x15
	.byte	0xdd
	.4byte	0x62
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF1706
	.byte	0x15
	.byte	0xe0
	.4byte	0x62
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF1707
	.byte	0x15
	.byte	0xe2
	.4byte	0x3930
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF1708
	.byte	0x15
	.byte	0xe5
	.4byte	0x62
	.byte	0xc8
	.byte	0
	.uleb128 0xb
	.4byte	0x388c
	.4byte	0x3940
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1709
	.byte	0x15
	.byte	0xe7
	.4byte	0x3897
	.uleb128 0x20
	.byte	0x1
	.byte	0x17
	.byte	0x57
	.4byte	0x39f6
	.uleb128 0x21
	.4byte	.LASF1710
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1711
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1712
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1713
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1714
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1715
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF1716
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF1717
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF1718
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF1719
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF1720
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF1721
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF1722
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF1723
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF1724
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF1725
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF1726
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF1727
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF1728
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF1729
	.sleb128 19
	.uleb128 0x21
	.4byte	.LASF1730
	.sleb128 20
	.uleb128 0x21
	.4byte	.LASF1731
	.sleb128 21
	.uleb128 0x21
	.4byte	.LASF1732
	.sleb128 22
	.uleb128 0x21
	.4byte	.LASF1733
	.sleb128 23
	.uleb128 0x21
	.4byte	.LASF1734
	.sleb128 24
	.uleb128 0x21
	.4byte	.LASF1735
	.sleb128 25
	.uleb128 0x21
	.4byte	.LASF1736
	.sleb128 32
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1742
	.byte	0x1
	.byte	0x17
	.byte	0xaa
	.4byte	0x3a21
	.uleb128 0x21
	.4byte	.LASF1737
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1738
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1739
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1740
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF1741
	.sleb128 16
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1743
	.byte	0x1
	.byte	0x17
	.byte	0xb3
	.4byte	0x3a40
	.uleb128 0x21
	.4byte	.LASF1744
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1745
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1746
	.sleb128 2
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0x18
	.byte	0x30
	.4byte	0x3a61
	.uleb128 0x21
	.4byte	.LASF1747
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1748
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1749
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1750
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1751
	.byte	0x18
	.byte	0x35
	.4byte	0x3a40
	.uleb128 0xd
	.byte	0x10
	.byte	0x18
	.byte	0x38
	.4byte	0x3aa5
	.uleb128 0xe
	.4byte	.LASF1598
	.byte	0x18
	.byte	0x3a
	.4byte	0x3a61
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1752
	.byte	0x18
	.byte	0x3b
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1753
	.byte	0x18
	.byte	0x3c
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF1754
	.byte	0x18
	.byte	0x3d
	.4byte	0x62
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1755
	.byte	0x18
	.byte	0x3e
	.4byte	0x3a6c
	.uleb128 0x20
	.byte	0x1
	.byte	0x18
	.byte	0x42
	.4byte	0x3aef
	.uleb128 0x21
	.4byte	.LASF1756
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1757
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1758
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1759
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1760
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1761
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF1762
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF1763
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF1764
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1765
	.byte	0x18
	.byte	0x4c
	.4byte	0x3ab0
	.uleb128 0x20
	.byte	0x1
	.byte	0x18
	.byte	0x54
	.4byte	0x3b53
	.uleb128 0x21
	.4byte	.LASF1766
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1767
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1768
	.sleb128 128
	.uleb128 0x21
	.4byte	.LASF1769
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1770
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1771
	.sleb128 120
	.uleb128 0x21
	.4byte	.LASF1772
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1773
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1774
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1775
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1776
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1777
	.sleb128 28
	.uleb128 0x21
	.4byte	.LASF1778
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1779
	.byte	0x18
	.byte	0x74
	.4byte	0x3afa
	.uleb128 0x20
	.byte	0x1
	.byte	0x19
	.byte	0x3e
	.4byte	0x3ce1
	.uleb128 0x21
	.4byte	.LASF1780
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1781
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1782
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1783
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1784
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1785
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF1786
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF1787
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF1788
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF1789
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF1790
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF1791
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF1792
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF1793
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF1794
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF1795
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF1796
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF1797
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF1798
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF1799
	.sleb128 19
	.uleb128 0x21
	.4byte	.LASF1800
	.sleb128 20
	.uleb128 0x21
	.4byte	.LASF1801
	.sleb128 21
	.uleb128 0x21
	.4byte	.LASF1802
	.sleb128 22
	.uleb128 0x21
	.4byte	.LASF1803
	.sleb128 23
	.uleb128 0x21
	.4byte	.LASF1804
	.sleb128 24
	.uleb128 0x21
	.4byte	.LASF1805
	.sleb128 25
	.uleb128 0x21
	.4byte	.LASF1806
	.sleb128 26
	.uleb128 0x21
	.4byte	.LASF1807
	.sleb128 27
	.uleb128 0x21
	.4byte	.LASF1808
	.sleb128 28
	.uleb128 0x21
	.4byte	.LASF1809
	.sleb128 29
	.uleb128 0x21
	.4byte	.LASF1810
	.sleb128 30
	.uleb128 0x21
	.4byte	.LASF1811
	.sleb128 31
	.uleb128 0x21
	.4byte	.LASF1812
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF1813
	.sleb128 33
	.uleb128 0x21
	.4byte	.LASF1814
	.sleb128 34
	.uleb128 0x21
	.4byte	.LASF1815
	.sleb128 35
	.uleb128 0x21
	.4byte	.LASF1816
	.sleb128 36
	.uleb128 0x21
	.4byte	.LASF1817
	.sleb128 37
	.uleb128 0x21
	.4byte	.LASF1818
	.sleb128 38
	.uleb128 0x21
	.4byte	.LASF1819
	.sleb128 39
	.uleb128 0x21
	.4byte	.LASF1820
	.sleb128 40
	.uleb128 0x21
	.4byte	.LASF1821
	.sleb128 41
	.uleb128 0x21
	.4byte	.LASF1822
	.sleb128 42
	.uleb128 0x21
	.4byte	.LASF1823
	.sleb128 43
	.uleb128 0x21
	.4byte	.LASF1824
	.sleb128 44
	.uleb128 0x21
	.4byte	.LASF1825
	.sleb128 45
	.uleb128 0x21
	.4byte	.LASF1826
	.sleb128 46
	.uleb128 0x21
	.4byte	.LASF1827
	.sleb128 47
	.uleb128 0x21
	.4byte	.LASF1828
	.sleb128 48
	.uleb128 0x21
	.4byte	.LASF1829
	.sleb128 49
	.uleb128 0x21
	.4byte	.LASF1830
	.sleb128 50
	.uleb128 0x21
	.4byte	.LASF1831
	.sleb128 51
	.uleb128 0x21
	.4byte	.LASF1832
	.sleb128 52
	.uleb128 0x21
	.4byte	.LASF1833
	.sleb128 53
	.uleb128 0x21
	.4byte	.LASF1834
	.sleb128 54
	.uleb128 0x21
	.4byte	.LASF1835
	.sleb128 55
	.uleb128 0x21
	.4byte	.LASF1836
	.sleb128 56
	.uleb128 0x21
	.4byte	.LASF1837
	.sleb128 57
	.uleb128 0x21
	.4byte	.LASF1838
	.sleb128 58
	.uleb128 0x21
	.4byte	.LASF1839
	.sleb128 59
	.uleb128 0x21
	.4byte	.LASF1840
	.sleb128 60
	.uleb128 0x21
	.4byte	.LASF1841
	.sleb128 61
	.uleb128 0x21
	.4byte	.LASF1842
	.sleb128 62
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1843
	.byte	0x19
	.byte	0x81
	.4byte	0x3b5e
	.uleb128 0xd
	.byte	0x8
	.byte	0x14
	.byte	0x4d
	.4byte	0x3d09
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x14
	.byte	0x4e
	.4byte	0xb55
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x14
	.byte	0x4e
	.4byte	0xb55
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x14
	.byte	0x4c
	.4byte	0x3d20
	.uleb128 0x27
	.4byte	0x3cec
	.uleb128 0x28
	.ascii	"v\000"
	.byte	0x14
	.byte	0x50
	.4byte	0x3d20
	.byte	0
	.uleb128 0xb
	.4byte	0xb55
	.4byte	0x3d30
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x14
	.byte	0x4a
	.4byte	0x3d3f
	.uleb128 0x29
	.4byte	0x3d09
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1844
	.byte	0x14
	.byte	0x52
	.4byte	0x3d30
	.uleb128 0xd
	.byte	0x24
	.byte	0x14
	.byte	0x55
	.4byte	0x3d7d
	.uleb128 0xe
	.4byte	.LASF1602
	.byte	0x14
	.byte	0x57
	.4byte	0xbe9
	.byte	0
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x14
	.byte	0x58
	.4byte	0xb55
	.byte	0x18
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x14
	.byte	0x58
	.4byte	0xb55
	.byte	0x1c
	.uleb128 0xf
	.ascii	"z\000"
	.byte	0x14
	.byte	0x58
	.4byte	0xb55
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1845
	.byte	0x14
	.byte	0x59
	.4byte	0x3d4a
	.uleb128 0xd
	.byte	0xc4
	.byte	0x14
	.byte	0x60
	.4byte	0x3f7d
	.uleb128 0xe
	.4byte	.LASF1846
	.byte	0x14
	.byte	0x62
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1847
	.byte	0x14
	.byte	0x63
	.4byte	0xaa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1848
	.byte	0x14
	.byte	0x64
	.4byte	0xaa2
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF1849
	.byte	0x14
	.byte	0x65
	.4byte	0xb55
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF1850
	.byte	0x14
	.byte	0x66
	.4byte	0xb55
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF1851
	.byte	0x14
	.byte	0x67
	.4byte	0x62
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF1852
	.byte	0x14
	.byte	0x67
	.4byte	0x62
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF1853
	.byte	0x14
	.byte	0x68
	.4byte	0x62
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF1854
	.byte	0x14
	.byte	0x69
	.4byte	0x37cf
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF1855
	.byte	0x14
	.byte	0x6a
	.4byte	0x37f5
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF1856
	.byte	0x14
	.byte	0x6b
	.4byte	0x3d7d
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF1614
	.byte	0x14
	.byte	0x6c
	.4byte	0x62
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF1857
	.byte	0x14
	.byte	0x6d
	.4byte	0x37cf
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF1630
	.byte	0x14
	.byte	0x73
	.4byte	0x62
	.byte	0x60
	.uleb128 0xe
	.4byte	.LASF1631
	.byte	0x14
	.byte	0x73
	.4byte	0x62
	.byte	0x64
	.uleb128 0xe
	.4byte	.LASF1858
	.byte	0x14
	.byte	0x76
	.4byte	0x60
	.byte	0x68
	.uleb128 0xe
	.4byte	.LASF1859
	.byte	0x14
	.byte	0x77
	.4byte	0x60
	.byte	0x6c
	.uleb128 0xe
	.4byte	.LASF1860
	.byte	0x14
	.byte	0x78
	.4byte	0x60
	.byte	0x70
	.uleb128 0xe
	.4byte	.LASF1861
	.byte	0x14
	.byte	0x7b
	.4byte	0x62
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF1862
	.byte	0x14
	.byte	0x7c
	.4byte	0x62
	.byte	0x78
	.uleb128 0xe
	.4byte	.LASF1863
	.byte	0x14
	.byte	0x7d
	.4byte	0x62
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF1864
	.byte	0x14
	.byte	0x80
	.4byte	0x62
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF1865
	.byte	0x14
	.byte	0x82
	.4byte	0x62
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF1866
	.byte	0x14
	.byte	0x82
	.4byte	0x62
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF1867
	.byte	0x14
	.byte	0x82
	.4byte	0x62
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF1868
	.byte	0x14
	.byte	0x86
	.4byte	0x373b
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF1869
	.byte	0x14
	.byte	0x88
	.4byte	0x62
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF1870
	.byte	0x14
	.byte	0x89
	.4byte	0x4082
	.byte	0x98
	.uleb128 0xf
	.ascii	"sky\000"
	.byte	0x14
	.byte	0x92
	.4byte	0x62
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF1871
	.byte	0x14
	.byte	0x95
	.4byte	0xb55
	.byte	0xa0
	.uleb128 0xe
	.4byte	.LASF1872
	.byte	0x14
	.byte	0x95
	.4byte	0xb55
	.byte	0xa4
	.uleb128 0xe
	.4byte	.LASF1873
	.byte	0x14
	.byte	0x96
	.4byte	0xb55
	.byte	0xa8
	.uleb128 0xe
	.4byte	.LASF1874
	.byte	0x14
	.byte	0x96
	.4byte	0xb55
	.byte	0xac
	.uleb128 0xe
	.4byte	.LASF1875
	.byte	0x14
	.byte	0x99
	.4byte	0x62
	.byte	0xb0
	.uleb128 0xe
	.4byte	.LASF1876
	.byte	0x14
	.byte	0x99
	.4byte	0x62
	.byte	0xb4
	.uleb128 0xe
	.4byte	.LASF1877
	.byte	0x14
	.byte	0x9b
	.4byte	0x77
	.byte	0xb8
	.uleb128 0xe
	.4byte	.LASF1878
	.byte	0x14
	.byte	0x9c
	.4byte	0x77
	.byte	0xba
	.uleb128 0xe
	.4byte	.LASF1879
	.byte	0x14
	.byte	0x9d
	.4byte	0x77
	.byte	0xbc
	.uleb128 0xe
	.4byte	.LASF1880
	.byte	0x14
	.byte	0x9e
	.4byte	0x77
	.byte	0xbe
	.uleb128 0xe
	.4byte	.LASF1881
	.byte	0x14
	.byte	0x9f
	.4byte	0x77
	.byte	0xc0
	.uleb128 0xf
	.ascii	"tag\000"
	.byte	0x14
	.byte	0xa0
	.4byte	0x77
	.byte	0xc2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1882
	.byte	0x7c
	.byte	0x14
	.byte	0xb1
	.4byte	0x4082
	.uleb128 0xe
	.4byte	.LASF1883
	.byte	0x14
	.byte	0xb3
	.4byte	0x62
	.byte	0
	.uleb128 0xf
	.ascii	"v1\000"
	.byte	0x14
	.byte	0xb4
	.4byte	0x40ec
	.byte	0x4
	.uleb128 0xf
	.ascii	"v2\000"
	.byte	0x14
	.byte	0xb4
	.4byte	0x40ec
	.byte	0x8
	.uleb128 0xf
	.ascii	"dx\000"
	.byte	0x14
	.byte	0xb5
	.4byte	0xb55
	.byte	0xc
	.uleb128 0xf
	.ascii	"dy\000"
	.byte	0x14
	.byte	0xb5
	.4byte	0xb55
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF1589
	.byte	0x14
	.byte	0xb6
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF1880
	.byte	0x14
	.byte	0xb7
	.4byte	0x77
	.byte	0x16
	.uleb128 0xf
	.ascii	"tag\000"
	.byte	0x14
	.byte	0xb8
	.4byte	0x77
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF1884
	.byte	0x14
	.byte	0xb9
	.4byte	0x31ed
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF1885
	.byte	0x14
	.byte	0xba
	.4byte	0x40f2
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF1886
	.byte	0x14
	.byte	0xbb
	.4byte	0x40ba
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF1887
	.byte	0x14
	.byte	0xbc
	.4byte	0x4102
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF1888
	.byte	0x14
	.byte	0xbd
	.4byte	0x4102
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF1614
	.byte	0x14
	.byte	0xbe
	.4byte	0x62
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF1889
	.byte	0x14
	.byte	0xbf
	.4byte	0x60
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF1890
	.byte	0x14
	.byte	0xc0
	.4byte	0x62
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF1852
	.byte	0x14
	.byte	0xc1
	.4byte	0x62
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF1851
	.byte	0x14
	.byte	0xc1
	.4byte	0x62
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF1891
	.byte	0x14
	.byte	0xc2
	.4byte	0x62
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF1892
	.byte	0x14
	.byte	0xc9
	.4byte	0x40c5
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF1856
	.byte	0x14
	.byte	0xca
	.4byte	0x3d7d
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x4088
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3f7d
	.uleb128 0x3
	.4byte	.LASF1893
	.byte	0x14
	.byte	0xa4
	.4byte	0x3d88
	.uleb128 0x20
	.byte	0x1
	.byte	0x14
	.byte	0xaa
	.4byte	0x40ba
	.uleb128 0x21
	.4byte	.LASF1894
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1895
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1896
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1897
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1898
	.byte	0x14
	.byte	0xaf
	.4byte	0x4099
	.uleb128 0x20
	.byte	0x1
	.byte	0x14
	.byte	0xc3
	.4byte	0x40ec
	.uleb128 0x21
	.4byte	.LASF1899
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1900
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1901
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1902
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF1903
	.sleb128 16
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3d3f
	.uleb128 0xb
	.4byte	0xb55
	.4byte	0x4102
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x408e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1904
	.uleb128 0x8
	.4byte	.LASF1905
	.byte	0x14
	.2byte	0x127
	.4byte	0x34c9
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.byte	0x43
	.4byte	0x4148
	.uleb128 0x21
	.4byte	.LASF1906
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1907
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1908
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1909
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1910
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1911
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1912
	.byte	0x2
	.byte	0x4b
	.4byte	0x411b
	.uleb128 0xd
	.byte	0xc
	.byte	0x2
	.byte	0x50
	.4byte	0x4180
	.uleb128 0xe
	.4byte	.LASF1913
	.byte	0x2
	.byte	0x51
	.4byte	0x5a8
	.byte	0
	.uleb128 0xf
	.ascii	"src\000"
	.byte	0x2
	.byte	0x52
	.4byte	0x4148
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF1914
	.byte	0x2
	.byte	0x53
	.4byte	0x4180
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x88e
	.uleb128 0x3
	.4byte	.LASF1915
	.byte	0x2
	.byte	0x54
	.4byte	0x4153
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.byte	0x6a
	.4byte	0x41be
	.uleb128 0x21
	.4byte	.LASF1916
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1917
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1918
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1919
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1920
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1921
	.sleb128 5
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x41ce
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x4186
	.uleb128 0x10
	.byte	0x4
	.4byte	0x41da
	.uleb128 0x19
	.4byte	0xaad
	.uleb128 0x10
	.byte	0x4
	.4byte	0xaad
	.uleb128 0x20
	.byte	0x1
	.byte	0x1a
	.byte	0xb6
	.4byte	0x44d3
	.uleb128 0x21
	.4byte	.LASF1922
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF1923
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF1924
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF1925
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF1926
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF1927
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF1928
	.sleb128 6
	.uleb128 0x21
	.4byte	.LASF1929
	.sleb128 7
	.uleb128 0x21
	.4byte	.LASF1930
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF1931
	.sleb128 9
	.uleb128 0x21
	.4byte	.LASF1932
	.sleb128 10
	.uleb128 0x21
	.4byte	.LASF1933
	.sleb128 11
	.uleb128 0x21
	.4byte	.LASF1934
	.sleb128 12
	.uleb128 0x21
	.4byte	.LASF1935
	.sleb128 13
	.uleb128 0x21
	.4byte	.LASF1936
	.sleb128 14
	.uleb128 0x21
	.4byte	.LASF1937
	.sleb128 15
	.uleb128 0x21
	.4byte	.LASF1938
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF1939
	.sleb128 17
	.uleb128 0x21
	.4byte	.LASF1940
	.sleb128 18
	.uleb128 0x21
	.4byte	.LASF1941
	.sleb128 19
	.uleb128 0x21
	.4byte	.LASF1942
	.sleb128 20
	.uleb128 0x21
	.4byte	.LASF1943
	.sleb128 21
	.uleb128 0x21
	.4byte	.LASF1944
	.sleb128 22
	.uleb128 0x21
	.4byte	.LASF1945
	.sleb128 23
	.uleb128 0x21
	.4byte	.LASF1946
	.sleb128 24
	.uleb128 0x21
	.4byte	.LASF1947
	.sleb128 25
	.uleb128 0x21
	.4byte	.LASF1948
	.sleb128 26
	.uleb128 0x21
	.4byte	.LASF1949
	.sleb128 27
	.uleb128 0x21
	.4byte	.LASF1950
	.sleb128 28
	.uleb128 0x21
	.4byte	.LASF1951
	.sleb128 29
	.uleb128 0x21
	.4byte	.LASF1952
	.sleb128 30
	.uleb128 0x21
	.4byte	.LASF1953
	.sleb128 31
	.uleb128 0x21
	.4byte	.LASF1954
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF1955
	.sleb128 33
	.uleb128 0x21
	.4byte	.LASF1956
	.sleb128 34
	.uleb128 0x21
	.4byte	.LASF1957
	.sleb128 35
	.uleb128 0x21
	.4byte	.LASF1958
	.sleb128 36
	.uleb128 0x21
	.4byte	.LASF1959
	.sleb128 37
	.uleb128 0x21
	.4byte	.LASF1960
	.sleb128 38
	.uleb128 0x21
	.4byte	.LASF1961
	.sleb128 39
	.uleb128 0x21
	.4byte	.LASF1962
	.sleb128 40
	.uleb128 0x21
	.4byte	.LASF1963
	.sleb128 41
	.uleb128 0x21
	.4byte	.LASF1964
	.sleb128 42
	.uleb128 0x21
	.4byte	.LASF1965
	.sleb128 43
	.uleb128 0x21
	.4byte	.LASF1966
	.sleb128 44
	.uleb128 0x21
	.4byte	.LASF1967
	.sleb128 45
	.uleb128 0x21
	.4byte	.LASF1968
	.sleb128 46
	.uleb128 0x21
	.4byte	.LASF1969
	.sleb128 47
	.uleb128 0x21
	.4byte	.LASF1970
	.sleb128 48
	.uleb128 0x21
	.4byte	.LASF1971
	.sleb128 49
	.uleb128 0x21
	.4byte	.LASF1972
	.sleb128 50
	.uleb128 0x21
	.4byte	.LASF1973
	.sleb128 51
	.uleb128 0x21
	.4byte	.LASF1974
	.sleb128 52
	.uleb128 0x21
	.4byte	.LASF1975
	.sleb128 53
	.uleb128 0x21
	.4byte	.LASF1976
	.sleb128 54
	.uleb128 0x21
	.4byte	.LASF1977
	.sleb128 55
	.uleb128 0x21
	.4byte	.LASF1978
	.sleb128 56
	.uleb128 0x21
	.4byte	.LASF1979
	.sleb128 57
	.uleb128 0x21
	.4byte	.LASF1980
	.sleb128 58
	.uleb128 0x21
	.4byte	.LASF1981
	.sleb128 59
	.uleb128 0x21
	.4byte	.LASF1982
	.sleb128 60
	.uleb128 0x21
	.4byte	.LASF1983
	.sleb128 61
	.uleb128 0x21
	.4byte	.LASF1984
	.sleb128 62
	.uleb128 0x21
	.4byte	.LASF1985
	.sleb128 63
	.uleb128 0x21
	.4byte	.LASF1986
	.sleb128 64
	.uleb128 0x21
	.4byte	.LASF1987
	.sleb128 65
	.uleb128 0x21
	.4byte	.LASF1988
	.sleb128 66
	.uleb128 0x21
	.4byte	.LASF1989
	.sleb128 67
	.uleb128 0x21
	.4byte	.LASF1990
	.sleb128 68
	.uleb128 0x21
	.4byte	.LASF1991
	.sleb128 69
	.uleb128 0x21
	.4byte	.LASF1992
	.sleb128 70
	.uleb128 0x21
	.4byte	.LASF1993
	.sleb128 71
	.uleb128 0x21
	.4byte	.LASF1994
	.sleb128 72
	.uleb128 0x21
	.4byte	.LASF1995
	.sleb128 73
	.uleb128 0x21
	.4byte	.LASF1996
	.sleb128 74
	.uleb128 0x21
	.4byte	.LASF1997
	.sleb128 75
	.uleb128 0x21
	.4byte	.LASF1998
	.sleb128 76
	.uleb128 0x21
	.4byte	.LASF1999
	.sleb128 77
	.uleb128 0x21
	.4byte	.LASF2000
	.sleb128 78
	.uleb128 0x21
	.4byte	.LASF2001
	.sleb128 79
	.uleb128 0x21
	.4byte	.LASF2002
	.sleb128 80
	.uleb128 0x21
	.4byte	.LASF2003
	.sleb128 81
	.uleb128 0x21
	.4byte	.LASF2004
	.sleb128 82
	.uleb128 0x21
	.4byte	.LASF2005
	.sleb128 83
	.uleb128 0x21
	.4byte	.LASF2006
	.sleb128 84
	.uleb128 0x21
	.4byte	.LASF2007
	.sleb128 85
	.uleb128 0x21
	.4byte	.LASF2008
	.sleb128 86
	.uleb128 0x21
	.4byte	.LASF2009
	.sleb128 87
	.uleb128 0x21
	.4byte	.LASF2010
	.sleb128 88
	.uleb128 0x21
	.4byte	.LASF2011
	.sleb128 89
	.uleb128 0x21
	.4byte	.LASF2012
	.sleb128 90
	.uleb128 0x21
	.4byte	.LASF2013
	.sleb128 91
	.uleb128 0x21
	.4byte	.LASF2014
	.sleb128 92
	.uleb128 0x21
	.4byte	.LASF2015
	.sleb128 93
	.uleb128 0x21
	.4byte	.LASF2016
	.sleb128 94
	.uleb128 0x21
	.4byte	.LASF2017
	.sleb128 95
	.uleb128 0x21
	.4byte	.LASF2018
	.sleb128 96
	.uleb128 0x21
	.4byte	.LASF2019
	.sleb128 97
	.uleb128 0x21
	.4byte	.LASF2020
	.sleb128 98
	.uleb128 0x21
	.4byte	.LASF2021
	.sleb128 99
	.uleb128 0x21
	.4byte	.LASF2022
	.sleb128 100
	.uleb128 0x21
	.4byte	.LASF2023
	.sleb128 101
	.uleb128 0x21
	.4byte	.LASF2024
	.sleb128 102
	.uleb128 0x21
	.4byte	.LASF2025
	.sleb128 103
	.uleb128 0x21
	.4byte	.LASF2026
	.sleb128 104
	.uleb128 0x21
	.4byte	.LASF2027
	.sleb128 105
	.uleb128 0x21
	.4byte	.LASF2028
	.sleb128 106
	.uleb128 0x21
	.4byte	.LASF2029
	.sleb128 107
	.uleb128 0x21
	.4byte	.LASF2030
	.sleb128 108
	.uleb128 0x21
	.4byte	.LASF2031
	.sleb128 109
	.uleb128 0x21
	.4byte	.LASF2032
	.sleb128 110
	.uleb128 0x21
	.4byte	.LASF2033
	.sleb128 111
	.uleb128 0x21
	.4byte	.LASF2034
	.sleb128 112
	.uleb128 0x21
	.4byte	.LASF2035
	.sleb128 113
	.uleb128 0x21
	.4byte	.LASF2036
	.sleb128 114
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0x1b
	.byte	0x28
	.4byte	0x4507
	.uleb128 0x21
	.4byte	.LASF2037
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF2038
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF2039
	.sleb128 4
	.uleb128 0x21
	.4byte	.LASF2040
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF2041
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF2042
	.sleb128 32
	.uleb128 0x21
	.4byte	.LASF2043
	.sleb128 64
	.byte	0
	.uleb128 0x3
	.4byte	.LASF2044
	.byte	0x1b
	.byte	0x30
	.4byte	0x44d3
	.uleb128 0x4
	.4byte	.LASF2045
	.byte	0x14
	.byte	0x1c
	.byte	0x22
	.4byte	0x455b
	.uleb128 0xe
	.4byte	.LASF2046
	.byte	0x1c
	.byte	0x23
	.4byte	0x60
	.byte	0
	.uleb128 0xe
	.4byte	.LASF2047
	.byte	0x1c
	.byte	0x24
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF2048
	.byte	0x1c
	.byte	0x25
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xf
	.ascii	"tag\000"
	.byte	0x1c
	.byte	0x26
	.4byte	0x62
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF2049
	.byte	0x1c
	.byte	0x27
	.4byte	0x5a8
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.byte	0xc
	.byte	0x1
	.2byte	0x611
	.4byte	0x458c
	.uleb128 0x17
	.4byte	.LASF2050
	.byte	0x1
	.2byte	0x612
	.4byte	0x62
	.byte	0
	.uleb128 0x17
	.4byte	.LASF2051
	.byte	0x1
	.2byte	0x613
	.4byte	0x5a8
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF2052
	.byte	0x1
	.2byte	0x614
	.4byte	0x62
	.byte	0x8
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF2057
	.byte	0x1
	.2byte	0xa67
	.4byte	0xaa2
	.byte	0x1
	.4byte	0x45e6
	.uleb128 0x2b
	.4byte	.LASF2053
	.byte	0x1
	.2byte	0xa67
	.4byte	0x41d4
	.uleb128 0x2b
	.4byte	.LASF2054
	.byte	0x1
	.2byte	0xa67
	.4byte	0x41d4
	.uleb128 0x2b
	.4byte	.LASF2055
	.byte	0x1
	.2byte	0xa67
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF2047
	.byte	0x1
	.2byte	0xa67
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF2056
	.byte	0x1
	.2byte	0xa67
	.4byte	0xaa2
	.uleb128 0x2c
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0xa69
	.4byte	0x2c
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF2058
	.byte	0x2
	.byte	0x83
	.4byte	0x62
	.byte	0x3
	.4byte	0x460c
	.uleb128 0x2e
	.4byte	.LASF1913
	.byte	0x2
	.byte	0x83
	.4byte	0x5a8
	.uleb128 0x2f
	.ascii	"ns\000"
	.byte	0x2
	.byte	0x83
	.4byte	0x62
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF2059
	.byte	0x1
	.2byte	0x11a
	.4byte	0x77
	.byte	0x3
	.4byte	0x4628
	.uleb128 0x30
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x77
	.byte	0
	.uleb128 0x31
	.4byte	.LASF2060
	.byte	0x1
	.2byte	0x3df
	.byte	0x1
	.4byte	0x4656
	.uleb128 0x30
	.ascii	"pn\000"
	.byte	0x1
	.2byte	0x3df
	.4byte	0x62
	.uleb128 0x30
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0x3df
	.4byte	0x62
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x3e1
	.4byte	0x62
	.byte	0
	.uleb128 0x31
	.4byte	.LASF2061
	.byte	0x1
	.2byte	0x4aa
	.byte	0x1
	.4byte	0x467c
	.uleb128 0x2b
	.4byte	.LASF2062
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x62
	.uleb128 0x32
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x4b0
	.4byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF2063
	.byte	0x1
	.2byte	0x781
	.byte	0x1
	.4byte	0x46f7
	.uleb128 0x1b
	.byte	0x2
	.byte	0x1
	.2byte	0x783
	.4byte	0x46ad
	.uleb128 0x25
	.ascii	"fix\000"
	.byte	0x1
	.2byte	0x784
	.4byte	0xb4a
	.byte	0
	.uleb128 0x25
	.ascii	"opt\000"
	.byte	0x1
	.2byte	0x785
	.4byte	0xb4a
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.4byte	.LASF2069
	.byte	0x1
	.2byte	0x786
	.4byte	0x4707
	.byte	0x32
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x7
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x9
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.byte	0xb
	.byte	0x9
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x8
	.byte	0xb
	.byte	0xa
	.byte	0xd
	.byte	0xd
	.byte	0xd
	.byte	0x7
	.byte	0xe
	.byte	0x3
	.byte	0xf
	.byte	0xf
	.byte	0xf
	.byte	0x1
	.byte	0xf
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x7bc
	.4byte	0x62
	.byte	0
	.uleb128 0xb
	.4byte	0x4689
	.4byte	0x4707
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.4byte	0x46f7
	.uleb128 0x31
	.4byte	.LASF2064
	.byte	0x1
	.2byte	0x848
	.byte	0x1
	.4byte	0x473c
	.uleb128 0x2b
	.4byte	.LASF2065
	.byte	0x1
	.2byte	0x848
	.4byte	0x62
	.uleb128 0x34
	.4byte	.LASF2066
	.byte	0x1
	.2byte	0x84a
	.4byte	0x62
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x84b
	.4byte	0x62
	.byte	0
	.uleb128 0x35
	.4byte	.LASF2379
	.byte	0x1
	.2byte	0xb71
	.4byte	0xaa2
	.byte	0x1
	.4byte	0x4768
	.uleb128 0x32
	.uleb128 0x34
	.4byte	.LASF2067
	.byte	0x1
	.2byte	0xb7f
	.4byte	0x62
	.uleb128 0x34
	.4byte	.LASF2068
	.byte	0x1
	.2byte	0xb81
	.4byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF2078
	.byte	0x1
	.2byte	0x229
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4877
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x22b
	.4byte	0x62
	.4byte	.LLST0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0
	.4byte	0x47a2
	.uleb128 0x39
	.4byte	.LASF2145
	.byte	0x1
	.2byte	0x26a
	.4byte	0x4512
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL0
	.4byte	0x7cbd
	.4byte	0x47b9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL1
	.4byte	0x7cd2
	.4byte	0x47d0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL2
	.4byte	0x7cd2
	.4byte	0x47e7
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL5
	.4byte	0x7ce7
	.4byte	0x4807
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL6
	.4byte	0x7d07
	.uleb128 0x3a
	.4byte	.LVL7
	.4byte	0x7d14
	.4byte	0x4831
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL8
	.4byte	0x7d31
	.uleb128 0x3d
	.4byte	.LVL9
	.4byte	0x7d38
	.uleb128 0x3c
	.4byte	.LVL10
	.4byte	0x7cd2
	.uleb128 0x3a
	.4byte	.LVL11
	.4byte	0x7cd2
	.4byte	0x4863
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL12
	.4byte	0x7cd2
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2071
	.byte	0x1
	.2byte	0x5ab
	.4byte	0xab8
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4966
	.uleb128 0x40
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0xab8
	.4byte	.LLST1
	.uleb128 0x41
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x5a8
	.4byte	.LLST2
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x5ad
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x34
	.4byte	.LASF2070
	.byte	0x1
	.2byte	0x5ad
	.4byte	0x62
	.uleb128 0x42
	.4byte	0x45e6
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x5ad
	.4byte	0x4909
	.uleb128 0x43
	.4byte	0x4601
	.byte	0
	.uleb128 0x44
	.4byte	0x45f6
	.4byte	.LLST2
	.uleb128 0x3e
	.4byte	.LVL16
	.4byte	0x7d3f
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x46
	.4byte	.LASF2047
	.byte	0x1
	.2byte	0x5b1
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x37
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x5b2
	.4byte	0x41d4
	.4byte	.LLST6
	.uleb128 0x3a
	.4byte	.LVL19
	.4byte	0x7d5e
	.4byte	0x4940
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL22
	.4byte	0x7d73
	.4byte	0x4954
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL31
	.4byte	0x7d88
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2072
	.byte	0x1
	.2byte	0x5bb
	.4byte	0xab8
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a42
	.uleb128 0x47
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x5bd
	.4byte	0xab8
	.uleb128 0x5
	.byte	0x3
	.4byte	s.10455
	.uleb128 0x48
	.4byte	.LASF2073
	.byte	0x1
	.2byte	0x5be
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	computed.10456
	.uleb128 0x48
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x5bf
	.4byte	0x41be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x46
	.4byte	.LASF2074
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x37
	.ascii	"map\000"
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x3a
	.4byte	.LVL36
	.4byte	0x7d99
	.4byte	0x49fa
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL37
	.4byte	0x4877
	.4byte	0x4a0e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL43
	.4byte	0x7d99
	.4byte	0x4a31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL44
	.4byte	0x4877
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF2075
	.byte	0x1
	.2byte	0x427
	.4byte	0xaa2
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4be0
	.uleb128 0x41
	.4byte	.LASF2062
	.byte	0x1
	.2byte	0x427
	.4byte	0x62
	.4byte	.LLST9
	.uleb128 0x41
	.4byte	.LASF2076
	.byte	0x1
	.2byte	0x427
	.4byte	0x4be0
	.4byte	.LLST10
	.uleb128 0x37
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x429
	.4byte	0xb55
	.4byte	.LLST11
	.uleb128 0x37
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x429
	.4byte	0xb55
	.4byte	.LLST12
	.uleb128 0x37
	.ascii	"ss\000"
	.byte	0x1
	.2byte	0x42a
	.4byte	0x4be6
	.4byte	.LLST13
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x42b
	.4byte	0x62
	.4byte	.LLST14
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x4b01
	.uleb128 0x48
	.4byte	.LASF2077
	.byte	0x1
	.2byte	0x44d
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	queuesize.10357
	.uleb128 0x3c
	.4byte	.LVL75
	.4byte	0x7db4
	.uleb128 0x3a
	.4byte	.LVL78
	.4byte	0x7dc6
	.4byte	0x4af1
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL79
	.4byte	0x7d14
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x4ba2
	.uleb128 0x37
	.ascii	"xa\000"
	.byte	0x1
	.2byte	0x460
	.4byte	0xb55
	.4byte	.LLST15
	.uleb128 0x37
	.ascii	"ya\000"
	.byte	0x1
	.2byte	0x460
	.4byte	0xb55
	.4byte	.LLST16
	.uleb128 0x37
	.ascii	"an\000"
	.byte	0x1
	.2byte	0x461
	.4byte	0x62
	.4byte	.LLST17
	.uleb128 0x37
	.ascii	"mo\000"
	.byte	0x1
	.2byte	0x462
	.4byte	0x37cf
	.4byte	.LLST18
	.uleb128 0x3a
	.4byte	.LVL64
	.4byte	0x7df0
	.4byte	0x4b7a
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xc
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL65
	.4byte	0x7e15
	.4byte	0x4b8e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL81
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL52
	.4byte	0x7e3d
	.4byte	0x4bbc
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL56
	.4byte	0x7e5c
	.4byte	0x4bd6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL73
	.4byte	0x7db4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x323e
	.uleb128 0x10
	.byte	0x4
	.4byte	0x410f
	.uleb128 0x36
	.4byte	.LASF2079
	.byte	0x1
	.2byte	0x5f8
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c39
	.uleb128 0x40
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0x5f8
	.4byte	0x5a8
	.4byte	.LLST19
	.uleb128 0x3c
	.4byte	.LVL91
	.4byte	0x7e76
	.uleb128 0x3a
	.4byte	.LVL92
	.4byte	0x7e87
	.4byte	0x4c2f
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL93
	.4byte	0x7e98
	.byte	0
	.uleb128 0x4a
	.4byte	0x458c
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c9e
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST20
	.uleb128 0x4b
	.4byte	0x45d9
	.uleb128 0x4c
	.4byte	0x45c1
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x45c1
	.byte	0x9f
	.uleb128 0x4c
	.4byte	0x45b5
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x45b5
	.byte	0x9f
	.uleb128 0x4c
	.4byte	0x45a9
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x45a9
	.byte	0x9f
	.uleb128 0x4c
	.4byte	0x459d
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x459d
	.byte	0x9f
	.uleb128 0x3e
	.4byte	.LVL98
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	0x4628
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cd6
	.uleb128 0x44
	.4byte	0x4635
	.4byte	.LLST21
	.uleb128 0x44
	.4byte	0x4640
	.4byte	.LLST22
	.uleb128 0x4d
	.4byte	0x464b
	.4byte	.LLST23
	.uleb128 0x3c
	.4byte	.LVL100
	.4byte	0x7e9f
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF2080
	.byte	0x1
	.2byte	0x111
	.4byte	0x69
	.byte	0x3
	.4byte	0x4cfc
	.uleb128 0x30
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x111
	.4byte	0x69
	.uleb128 0x2c
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x62
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2087
	.byte	0x1
	.2byte	0x122
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e3d
	.uleb128 0x40
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x122
	.4byte	0x4e3d
	.4byte	.LLST24
	.uleb128 0x4f
	.4byte	.LASF2081
	.byte	0x1
	.2byte	0x124
	.4byte	0xaa2
	.byte	0
	.uleb128 0x46
	.4byte	.LASF2082
	.byte	0x1
	.2byte	0x125
	.4byte	0xaa2
	.4byte	.LLST25
	.uleb128 0x46
	.4byte	.LASF1583
	.byte	0x1
	.2byte	0x126
	.4byte	0x62
	.4byte	.LLST26
	.uleb128 0x46
	.4byte	.LASF2083
	.byte	0x1
	.2byte	0x127
	.4byte	0x62
	.4byte	.LLST27
	.uleb128 0x46
	.4byte	.LASF2084
	.byte	0x1
	.2byte	0x128
	.4byte	0x62
	.4byte	.LLST28
	.uleb128 0x46
	.4byte	.LASF2085
	.byte	0x1
	.2byte	0x129
	.4byte	0x62
	.4byte	.LLST29
	.uleb128 0x46
	.4byte	.LASF2086
	.byte	0x1
	.2byte	0x12a
	.4byte	0x62
	.4byte	.LLST30
	.uleb128 0x50
	.4byte	0x4cd6
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.2byte	0x210
	.4byte	0x4dc2
	.uleb128 0x44
	.4byte	0x4ce7
	.4byte	.LLST31
	.uleb128 0x51
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x52
	.4byte	0x4cf1
	.uleb128 0x5
	.byte	0x3
	.4byte	c.10214
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x460c
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x212
	.4byte	0x4de0
	.uleb128 0x44
	.4byte	0x461d
	.4byte	.LLST32
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x4e21
	.uleb128 0x46
	.4byte	.LASF1625
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x4e43
	.4byte	.LLST33
	.uleb128 0x3a
	.4byte	.LVL166
	.4byte	0x7ea6
	.4byte	0x4e0c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL170
	.4byte	0x7ea6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL115
	.4byte	0x7ec0
	.uleb128 0x3c
	.4byte	.LVL116
	.4byte	0x7ecb
	.uleb128 0x3c
	.4byte	.LVL154
	.4byte	0x7ee0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x379e
	.uleb128 0x10
	.byte	0x4
	.4byte	0x4e49
	.uleb128 0x19
	.4byte	0x3825
	.uleb128 0x53
	.4byte	.LASF2091
	.byte	0x1
	.2byte	0x21f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x54
	.4byte	.LASF2104
	.byte	0x1
	.2byte	0x289
	.4byte	0xaa2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ef0
	.uleb128 0x40
	.ascii	"ev\000"
	.byte	0x1
	.2byte	0x289
	.4byte	0x4ef0
	.4byte	.LLST34
	.uleb128 0x3c
	.4byte	.LVL175
	.4byte	0x7ef5
	.uleb128 0x3c
	.4byte	.LVL181
	.4byte	0x7d31
	.uleb128 0x3c
	.4byte	.LVL182
	.4byte	0x7d38
	.uleb128 0x3c
	.4byte	.LVL183
	.4byte	0x7efc
	.uleb128 0x3c
	.4byte	.LVL184
	.4byte	0x7f0d
	.uleb128 0x3a
	.4byte	.LVL185
	.4byte	0x7f1a
	.4byte	0x4ec9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL191
	.4byte	0x7f2b
	.4byte	0x4edd
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL193
	.4byte	0x7f40
	.uleb128 0x3c
	.4byte	.LVL197
	.4byte	0x7f47
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3aa5
	.uleb128 0x4a
	.4byte	0x4628
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f39
	.uleb128 0x44
	.4byte	0x4635
	.4byte	.LLST35
	.uleb128 0x44
	.4byte	0x4640
	.4byte	.LLST36
	.uleb128 0x4b
	.4byte	0x464b
	.uleb128 0x55
	.4byte	.LVL201
	.4byte	0x4c9e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2088
	.byte	0x1
	.2byte	0x3f8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ff8
	.uleb128 0x41
	.4byte	.LASF1625
	.byte	0x1
	.2byte	0x3f8
	.4byte	0x62
	.4byte	.LLST37
	.uleb128 0x47
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x3fa
	.4byte	0x4ff8
	.uleb128 0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players
	.byte	0x22
	.byte	0x9f
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x3fb
	.4byte	0x62
	.4byte	.LLST38
	.uleb128 0x48
	.4byte	.LASF1650
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x37f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x46
	.4byte	.LASF1660
	.byte	0x1
	.2byte	0x3fd
	.4byte	0x62
	.4byte	.LLST39
	.uleb128 0x46
	.4byte	.LASF1661
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x62
	.4byte	.LLST40
	.uleb128 0x46
	.4byte	.LASF1662
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x62
	.4byte	.LLST41
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x46
	.4byte	.LASF1658
	.byte	0x1
	.2byte	0x40a
	.4byte	0x62
	.4byte	.LLST42
	.uleb128 0x3e
	.4byte	.LVL207
	.4byte	0x7d14
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3825
	.uleb128 0x56
	.4byte	.LASF2089
	.byte	0x1
	.2byte	0x48f
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50c6
	.uleb128 0x41
	.4byte	.LASF2062
	.byte	0x1
	.2byte	0x48f
	.4byte	0x62
	.4byte	.LLST43
	.uleb128 0x37
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x491
	.4byte	0x62
	.4byte	.LLST44
	.uleb128 0x46
	.4byte	.LASF2090
	.byte	0x1
	.2byte	0x491
	.4byte	0x62
	.4byte	.LLST45
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0x5092
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x499
	.4byte	0x62
	.4byte	.LLST46
	.uleb128 0x3a
	.4byte	.LVL218
	.4byte	0x7f4e
	.4byte	0x506c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL220
	.4byte	0x4a42
	.4byte	0x5080
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x55
	.4byte	.LVL225
	.4byte	0x7f63
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x57
	.4byte	.LVL223
	.4byte	0x7f63
	.4byte	0x50a7
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL227
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	0x4656
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x516f
	.uleb128 0x44
	.4byte	0x4663
	.4byte	.LLST47
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x108
	.4byte	0x50fa
	.uleb128 0x4b
	.4byte	0x4670
	.uleb128 0x3d
	.4byte	.LVL234
	.4byte	0x4ffe
	.byte	0
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x128
	.uleb128 0x44
	.4byte	0x4663
	.4byte	.LLST48
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x128
	.uleb128 0x4b
	.4byte	0x4670
	.uleb128 0x3a
	.4byte	.LVL230
	.4byte	0x4a42
	.4byte	0x512c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL231
	.4byte	0x4a42
	.4byte	0x5146
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x57
	.4byte	.LVL233
	.4byte	0x7f63
	.4byte	0x515b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x55
	.4byte	.LVL237
	.4byte	0x7f63
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF2092
	.byte	0x1
	.2byte	0x4e2
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x53
	.4byte	.LASF2093
	.byte	0x1
	.2byte	0x4eb
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x58
	.4byte	.LASF2479
	.byte	0x1
	.2byte	0x3cc
	.byte	0x1
	.4byte	0x51b7
	.uleb128 0x2b
	.4byte	.LASF1625
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x62
	.uleb128 0x2c
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x4ff8
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2094
	.byte	0x1
	.2byte	0x4f8
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5282
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x4fa
	.4byte	0x62
	.4byte	.LLST49
	.uleb128 0x42
	.4byte	0x5193
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0x150
	.byte	0x1
	.2byte	0x500
	.4byte	0x521b
	.uleb128 0x59
	.4byte	0x51a0
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x4b
	.4byte	0x51ac
	.uleb128 0x3e
	.4byte	.LVL250
	.4byte	0x7d14
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL248
	.4byte	0x7f85
	.4byte	0x5243
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x57
	.4byte	.LVL249
	.4byte	0x7fa0
	.4byte	0x525a
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	wminfo
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL251
	.4byte	0x7fb7
	.uleb128 0x3e
	.4byte	.LVL254
	.4byte	0x7f85
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2095
	.byte	0x1
	.2byte	0x575
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52a2
	.uleb128 0x3d
	.4byte	.LVL257
	.4byte	0x7fbe
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2096
	.byte	0x1
	.2byte	0x590
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52cb
	.uleb128 0x3c
	.4byte	.LVL258
	.4byte	0x4768
	.uleb128 0x3d
	.4byte	.LVL259
	.4byte	0x7fc5
	.byte	0
	.uleb128 0x53
	.4byte	.LASF2097
	.byte	0x1
	.2byte	0x5d4
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4e
	.4byte	.LASF2098
	.byte	0x1
	.2byte	0x5de
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5336
	.uleb128 0x41
	.4byte	.LASF2099
	.byte	0x1
	.2byte	0x5de
	.4byte	0x62
	.4byte	.LLST50
	.uleb128 0x41
	.4byte	.LASF2100
	.byte	0x1
	.2byte	0x5de
	.4byte	0xaa2
	.4byte	.LLST51
	.uleb128 0x57
	.4byte	.LVL262
	.4byte	0x7f1a
	.4byte	0x5326
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x55
	.4byte	.LVL264
	.4byte	0x7f1a
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2101
	.byte	0x1
	.2byte	0x6c5
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53a1
	.uleb128 0x41
	.4byte	.LASF2047
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x2c
	.4byte	.LLST52
	.uleb128 0x41
	.4byte	.LASF2102
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x5a8
	.4byte	.LLST53
	.uleb128 0x41
	.4byte	.LASF2103
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x62
	.4byte	.LLST54
	.uleb128 0x37
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x6c7
	.4byte	0x2c
	.4byte	.LLST55
	.uleb128 0x3e
	.4byte	.LVL272
	.4byte	0x7dc6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF2105
	.byte	0x1
	.2byte	0x6e1
	.4byte	0x62
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5435
	.uleb128 0x41
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x6e1
	.4byte	0x577
	.4byte	.LLST56
	.uleb128 0x41
	.4byte	.LASF2047
	.byte	0x1
	.2byte	0x6e1
	.4byte	0x2c
	.4byte	.LLST57
	.uleb128 0x41
	.4byte	.LASF2099
	.byte	0x1
	.2byte	0x6e1
	.4byte	0x62
	.4byte	.LLST58
	.uleb128 0x41
	.4byte	.LASF2106
	.byte	0x1
	.2byte	0x6e1
	.4byte	0xaa2
	.4byte	.LLST59
	.uleb128 0x37
	.ascii	"sgn\000"
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x5a8
	.4byte	.LLST60
	.uleb128 0x3e
	.4byte	.LVL278
	.4byte	0x7fcc
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2107
	.byte	0x1
	.2byte	0x76d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5476
	.uleb128 0x5a
	.4byte	.LASF2108
	.byte	0x1
	.2byte	0x76d
	.4byte	0x9a7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5a
	.4byte	.LASF2074
	.byte	0x1
	.2byte	0x76d
	.4byte	0x62
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5b
	.ascii	"map\000"
	.byte	0x1
	.2byte	0x76d
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4a
	.4byte	0x467c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54b8
	.uleb128 0x52
	.4byte	0x46ad
	.uleb128 0x5
	.byte	0x3
	.4byte	levels.10557
	.uleb128 0x4d
	.4byte	0x46ec
	.4byte	.LLST61
	.uleb128 0x51
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.uleb128 0x4b
	.4byte	0x46ec
	.uleb128 0x52
	.4byte	0x46ad
	.uleb128 0x5
	.byte	0x3
	.4byte	levels.10557
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF2109
	.byte	0x1
	.2byte	0x7df
	.4byte	0x62
	.byte	0x1
	.4byte	0x54d4
	.uleb128 0x2c
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x7e1
	.4byte	0x62
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2110
	.byte	0x1
	.2byte	0x7ec
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55b8
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x168
	.4byte	0x553a
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x826
	.4byte	0x62
	.4byte	.LLST62
	.uleb128 0x5c
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.4byte	0x5526
	.uleb128 0x37
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x828
	.4byte	0x62
	.4byte	.LLST63
	.uleb128 0x3c
	.4byte	.LVL296
	.4byte	0x7fec
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL284
	.4byte	0x8001
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x54b8
	.4byte	.LBB101
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.2byte	0x800
	.4byte	0x5591
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x188
	.uleb128 0x4d
	.4byte	0x54c9
	.4byte	.LLST64
	.uleb128 0x3a
	.4byte	.LVL290
	.4byte	0x8001
	.4byte	0x5573
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL293
	.4byte	0x7fec
	.uleb128 0x3e
	.4byte	.LVL300
	.4byte	0x8001
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL287
	.4byte	0x8016
	.4byte	0x55a5
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL288
	.4byte	0x467c
	.uleb128 0x3c
	.4byte	.LVL289
	.4byte	0x8033
	.byte	0
	.uleb128 0x4a
	.4byte	0x470c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x560e
	.uleb128 0x44
	.4byte	0x4719
	.4byte	.LLST65
	.uleb128 0x52
	.4byte	0x4725
	.uleb128 0x5
	.byte	0x3
	.4byte	fast.10577
	.uleb128 0x4b
	.4byte	0x4731
	.uleb128 0x51
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.uleb128 0x59
	.4byte	0x4719
	.uleb128 0x51
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.uleb128 0x4b
	.4byte	0x4731
	.uleb128 0x52
	.4byte	0x4725
	.uleb128 0x5
	.byte	0x3
	.4byte	fast.10577
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2111
	.byte	0x1
	.2byte	0x867
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56c8
	.uleb128 0x41
	.4byte	.LASF2108
	.byte	0x1
	.2byte	0x867
	.4byte	0x9a7
	.4byte	.LLST66
	.uleb128 0x41
	.4byte	.LASF2074
	.byte	0x1
	.2byte	0x867
	.4byte	0x62
	.4byte	.LLST67
	.uleb128 0x40
	.ascii	"map\000"
	.byte	0x1
	.2byte	0x867
	.4byte	0x62
	.4byte	.LLST68
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x869
	.4byte	0x62
	.4byte	.LLST69
	.uleb128 0x3c
	.4byte	.LVL316
	.4byte	0x470c
	.uleb128 0x3c
	.4byte	.LVL317
	.4byte	0x803e
	.uleb128 0x3c
	.4byte	.LVL319
	.4byte	0x7fc5
	.uleb128 0x3d
	.4byte	.LVL321
	.4byte	0x4768
	.uleb128 0x3a
	.4byte	.LVL322
	.4byte	0x470c
	.4byte	0x5699
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL323
	.4byte	0x803e
	.uleb128 0x3c
	.4byte	.LVL326
	.4byte	0x7f47
	.uleb128 0x3a
	.4byte	.LVL332
	.4byte	0x470c
	.4byte	0x56be
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL333
	.4byte	0x803e
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2112
	.byte	0x1
	.2byte	0x839
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56fa
	.uleb128 0x3c
	.4byte	.LVL334
	.4byte	0x54d4
	.uleb128 0x3c
	.4byte	.LVL335
	.4byte	0x560e
	.uleb128 0x3d
	.4byte	.LVL336
	.4byte	0x7d31
	.byte	0
	.uleb128 0x54
	.4byte	.LASF2113
	.byte	0x1
	.2byte	0x92a
	.4byte	0x41df
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5762
	.uleb128 0x41
	.4byte	.LASF2114
	.byte	0x1
	.2byte	0x92a
	.4byte	0x41df
	.4byte	.LLST70
	.uleb128 0x48
	.4byte	.LASF1621
	.byte	0x1
	.2byte	0x92c
	.4byte	0x41df
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5c
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.4byte	0x574e
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x968
	.4byte	0x62
	.4byte	.LLST71
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL347
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF2115
	.byte	0x1
	.2byte	0x97f
	.4byte	0x41d4
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57c0
	.uleb128 0x41
	.4byte	.LASF2114
	.byte	0x1
	.2byte	0x97f
	.4byte	0x41d4
	.4byte	.LLST72
	.uleb128 0x48
	.4byte	.LASF1621
	.byte	0x1
	.2byte	0x981
	.4byte	0x41d4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5c
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.4byte	0x57b6
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x9c5
	.4byte	0x62
	.4byte	.LLST73
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL363
	.4byte	0x467c
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF2116
	.byte	0x1
	.2byte	0xa54
	.4byte	0x62
	.byte	0x1
	.4byte	0x57f6
	.uleb128 0x30
	.ascii	"ver\000"
	.byte	0x1
	.2byte	0xa54
	.4byte	0x62
	.uleb128 0x32
	.uleb128 0x2c
	.ascii	"lev\000"
	.byte	0x1
	.2byte	0xa57
	.4byte	0x62
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xa58
	.4byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2117
	.byte	0x1
	.2byte	0xa74
	.4byte	0x41d4
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dde
	.uleb128 0x41
	.4byte	.LASF2114
	.byte	0x1
	.2byte	0xa74
	.4byte	0x41d4
	.4byte	.LLST74
	.uleb128 0x41
	.4byte	.LASF2047
	.byte	0x1
	.2byte	0xa74
	.4byte	0x2c
	.4byte	.LLST75
	.uleb128 0x41
	.4byte	.LASF2056
	.byte	0x1
	.2byte	0xa74
	.4byte	0xaa2
	.4byte	.LLST76
	.uleb128 0x46
	.4byte	.LASF2108
	.byte	0x1
	.2byte	0xa76
	.4byte	0x9a7
	.4byte	.LLST77
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xa77
	.4byte	0x62
	.4byte	.LLST78
	.uleb128 0x46
	.4byte	.LASF2074
	.byte	0x1
	.2byte	0xa77
	.4byte	0x62
	.4byte	.LLST79
	.uleb128 0x37
	.ascii	"map\000"
	.byte	0x1
	.2byte	0xa77
	.4byte	0x62
	.4byte	.LLST80
	.uleb128 0x46
	.4byte	.LASF2118
	.byte	0x1
	.2byte	0xa7c
	.4byte	0x41d4
	.4byte	.LLST81
	.uleb128 0x4f
	.4byte	.LASF2119
	.byte	0x1
	.2byte	0xa7e
	.4byte	0x41d4
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB133
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.2byte	0xa87
	.4byte	0x5914
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST82
	.uleb128 0x43
	.4byte	0x45c1
	.byte	0x1
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST83
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST84
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST84
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x1a0
	.uleb128 0x5d
	.4byte	0x45d9
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL418
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB138
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0xaba
	.4byte	0x5994
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST86
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST87
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST88
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST89
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST90
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x1c0
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST91
	.uleb128 0x3e
	.4byte	.LVL429
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x57c0
	.4byte	.LBB141
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.2byte	0xabd
	.4byte	0x59e8
	.uleb128 0x44
	.4byte	0x57d1
	.4byte	.LLST92
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x200
	.uleb128 0x52
	.4byte	0x57de
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4d
	.4byte	0x57ea
	.4byte	.LLST93
	.uleb128 0x3a
	.4byte	.LVL371
	.4byte	0x8001
	.4byte	0x59dd
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL463
	.4byte	0x7fec
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB148
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.2byte	0xae6
	.4byte	0x5a68
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST94
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST95
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST96
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST97
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST98
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x218
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST99
	.uleb128 0x3e
	.4byte	.LVL459
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB151
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.2byte	0xb13
	.4byte	0x5ae8
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST100
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST101
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST102
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST103
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST104
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x230
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST105
	.uleb128 0x3e
	.4byte	.LVL447
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB154
	.4byte	.Ldebug_ranges0+0x248
	.byte	0x1
	.2byte	0xb21
	.4byte	0x5b69
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST106
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST107
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST108
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST109
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST110
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x248
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST111
	.uleb128 0x3e
	.4byte	.LVL449
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB163
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x1
	.2byte	0xb32
	.4byte	0x5bea
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST112
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST113
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST114
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST115
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST116
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x278
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST117
	.uleb128 0x3e
	.4byte	.LVL451
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB170
	.4byte	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.2byte	0xb3d
	.4byte	0x5c6b
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST118
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST119
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST120
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST121
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST122
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x2a0
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST123
	.uleb128 0x3e
	.4byte	.LVL453
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB175
	.4byte	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.2byte	0xaca
	.4byte	0x5ceb
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST124
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST125
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST126
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST127
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST128
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x2b8
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST129
	.uleb128 0x3e
	.4byte	.LVL427
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x458c
	.4byte	.LBB180
	.4byte	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.2byte	0xadc
	.4byte	0x5d6b
	.uleb128 0x44
	.4byte	0x45cd
	.4byte	.LLST130
	.uleb128 0x44
	.4byte	0x45c1
	.4byte	.LLST131
	.uleb128 0x44
	.4byte	0x45b5
	.4byte	.LLST132
	.uleb128 0x44
	.4byte	0x45a9
	.4byte	.LLST133
	.uleb128 0x44
	.4byte	0x459d
	.4byte	.LLST134
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x2d0
	.uleb128 0x4d
	.4byte	0x45d9
	.4byte	.LLST135
	.uleb128 0x3e
	.4byte	.LVL457
	.4byte	0x4c39
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x459d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45a9
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45b5
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5e
	.4byte	0x45c1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL392
	.4byte	0x5762
	.4byte	0x5d7f
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL396
	.4byte	0x7f85
	.4byte	0x5d9b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL405
	.4byte	0x560e
	.4byte	0x5dbb
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL423
	.4byte	0x467c
	.uleb128 0x3e
	.4byte	.LVL425
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2120
	.byte	0x1
	.2byte	0x8ea
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x603d
	.uleb128 0x41
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x8ea
	.4byte	0x5a8
	.4byte	.LLST136
	.uleb128 0x46
	.4byte	.LASF2121
	.byte	0x1
	.2byte	0x8ec
	.4byte	0x577
	.4byte	.LLST137
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x2e8
	.4byte	0x5f4f
	.uleb128 0x46
	.4byte	.LASF2099
	.byte	0x1
	.2byte	0x8f9
	.4byte	0x62
	.4byte	.LLST138
	.uleb128 0x37
	.ascii	"rc\000"
	.byte	0x1
	.2byte	0x8fa
	.4byte	0x62
	.4byte	.LLST139
	.uleb128 0x46
	.4byte	.LASF2122
	.byte	0x1
	.2byte	0x8fb
	.4byte	0x62
	.4byte	.LLST140
	.uleb128 0x37
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x8fc
	.4byte	0x41d4
	.4byte	.LLST141
	.uleb128 0x5c
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.4byte	0x5ed4
	.uleb128 0x47
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x8ff
	.4byte	0x603d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x37
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x900
	.4byte	0x2c
	.4byte	.LLST142
	.uleb128 0x3a
	.4byte	.LVL477
	.4byte	0x8045
	.4byte	0x5ea9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL480
	.4byte	0x57f6
	.4byte	0x5ec3
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL482
	.4byte	0x8069
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x300
	.4byte	0x5f09
	.uleb128 0x47
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x90b
	.4byte	0x604d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3e
	.4byte	.LVL486
	.4byte	0x8045
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL491
	.4byte	0x8069
	.4byte	0x5f22
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL492
	.4byte	0x52dd
	.4byte	0x5f3b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL496
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL466
	.4byte	0x8088
	.4byte	0x5f63
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL467
	.4byte	0x809d
	.4byte	0x5f7c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL469
	.4byte	0x80bc
	.4byte	0x5f96
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL470
	.4byte	0x80d6
	.4byte	0x5fad
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL471
	.4byte	0x80f0
	.4byte	0x5fc7
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL472
	.4byte	0x810a
	.4byte	0x5fe4
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL473
	.4byte	0x7e76
	.4byte	0x5ff8
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL475
	.4byte	0x810a
	.4byte	0x600f
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL493
	.4byte	0x7e2b
	.4byte	0x602c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL494
	.4byte	0x7e76
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xaad
	.4byte	0x604d
	.uleb128 0xc
	.4byte	0xf6
	.byte	0xc7
	.byte	0
	.uleb128 0xb
	.4byte	0xaad
	.4byte	0x605d
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x4
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2123
	.byte	0x1
	.2byte	0x9d5
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x618d
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x9d7
	.4byte	0x62
	.4byte	.LLST143
	.uleb128 0x46
	.4byte	.LASF2124
	.byte	0x1
	.2byte	0x9d8
	.4byte	0x41df
	.4byte	.LLST144
	.uleb128 0x46
	.4byte	.LASF2114
	.byte	0x1
	.2byte	0x9d8
	.4byte	0x41df
	.4byte	.LLST145
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x320
	.4byte	0x60b9
	.uleb128 0x37
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x9df
	.4byte	0x70
	.4byte	.LLST146
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x348
	.4byte	0x6106
	.uleb128 0x37
	.ascii	"v\000"
	.byte	0x1
	.2byte	0xa0d
	.4byte	0xaad
	.4byte	.LLST147
	.uleb128 0x37
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xa0d
	.4byte	0xaad
	.4byte	.LLST148
	.uleb128 0x3a
	.4byte	.LVL511
	.4byte	0x56fa
	.4byte	0x60f2
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 13
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL538
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL497
	.4byte	0x809d
	.4byte	0x6126
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL519
	.4byte	0x8124
	.4byte	0x6145
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL520
	.4byte	0x7e2b
	.4byte	0x615c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL522
	.4byte	0x7e76
	.uleb128 0x3a
	.4byte	.LVL524
	.4byte	0x8001
	.4byte	0x617c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL548
	.4byte	0x56fa
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2125
	.byte	0x1
	.2byte	0xa4c
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61b2
	.uleb128 0x5a
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0xa4c
	.4byte	0x5a8
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2126
	.byte	0x1
	.2byte	0xb55
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6242
	.uleb128 0x48
	.4byte	.LASF2127
	.byte	0x1
	.2byte	0xb57
	.4byte	0x41be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.4byte	.LVL561
	.4byte	0x8148
	.4byte	0x61eb
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL562
	.4byte	0x815e
	.4byte	0x61ff
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL563
	.4byte	0x7d73
	.uleb128 0x3c
	.4byte	.LVL564
	.4byte	0x7d5e
	.uleb128 0x3a
	.4byte	.LVL565
	.4byte	0x57f6
	.4byte	0x6224
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL566
	.4byte	0x7f1a
	.4byte	0x6238
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL567
	.4byte	0x8173
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2128
	.byte	0x1
	.2byte	0x61f
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6556
	.uleb128 0x46
	.4byte	.LASF2129
	.byte	0x1
	.2byte	0x621
	.4byte	0x62
	.4byte	.LLST149
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x621
	.4byte	0x62
	.4byte	.LLST150
	.uleb128 0x46
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x623
	.4byte	0x577
	.4byte	.LLST151
	.uleb128 0x46
	.4byte	.LASF2130
	.byte	0x1
	.2byte	0x624
	.4byte	0x62
	.4byte	.LLST152
	.uleb128 0x5c
	.4byte	.LBB203
	.4byte	.LBE203-.LBB203
	.4byte	0x62e2
	.uleb128 0x48
	.4byte	.LASF2131
	.byte	0x1
	.2byte	0x634
	.4byte	0x6556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.4byte	.LVL579
	.4byte	0x7d99
	.4byte	0x62c6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL580
	.4byte	0x817e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x360
	.4byte	0x63d4
	.uleb128 0x48
	.4byte	.LASF2132
	.byte	0x1
	.2byte	0x64b
	.4byte	0xab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x390
	.4byte	0x6393
	.uleb128 0x37
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0x651
	.4byte	0x577
	.4byte	.LLST153
	.uleb128 0x3a
	.4byte	.LVL587
	.4byte	0x8088
	.4byte	0x6327
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL588
	.4byte	0x809d
	.4byte	0x6340
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL591
	.4byte	0x819d
	.4byte	0x6354
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL592
	.4byte	0x4bec
	.4byte	0x6368
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL593
	.4byte	0x7e76
	.4byte	0x637c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL622
	.4byte	0x81b6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 41
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL585
	.4byte	0x4966
	.uleb128 0x3a
	.4byte	.LVL586
	.4byte	0x81d4
	.4byte	0x63bb
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL595
	.4byte	0x7f85
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL569
	.4byte	0x53a1
	.4byte	0x63ec
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL571
	.4byte	0x809d
	.4byte	0x640a
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL573
	.4byte	0x53a1
	.4byte	0x6424
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL574
	.4byte	0x81f3
	.4byte	0x643f
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x78
	.sleb128 2128
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL576
	.4byte	0x7e76
	.4byte	0x6453
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL596
	.4byte	0x8088
	.4byte	0x6467
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL600
	.4byte	0x5762
	.uleb128 0x3c
	.4byte	.LVL601
	.4byte	0x560e
	.uleb128 0x3c
	.4byte	.LVL602
	.4byte	0x8213
	.uleb128 0x3c
	.4byte	.LVL603
	.4byte	0x821a
	.uleb128 0x3c
	.4byte	.LVL604
	.4byte	0x8221
	.uleb128 0x3c
	.4byte	.LVL605
	.4byte	0x8228
	.uleb128 0x3c
	.4byte	.LVL606
	.4byte	0x822f
	.uleb128 0x3c
	.4byte	.LVL607
	.4byte	0x8236
	.uleb128 0x3c
	.4byte	.LVL608
	.4byte	0x823d
	.uleb128 0x3c
	.4byte	.LVL609
	.4byte	0x8244
	.uleb128 0x3a
	.4byte	.LVL610
	.4byte	0x7f1a
	.4byte	0x64d4
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL611
	.4byte	0x7e2b
	.4byte	0x64eb
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL612
	.4byte	0x7e76
	.uleb128 0x3c
	.4byte	.LVL613
	.4byte	0x824b
	.uleb128 0x3c
	.4byte	.LVL614
	.4byte	0x605d
	.uleb128 0x3a
	.4byte	.LVL620
	.4byte	0x4bec
	.4byte	0x651d
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL624
	.4byte	0x8252
	.uleb128 0x3a
	.4byte	.LVL627
	.4byte	0x7e2b
	.4byte	0x654c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL629
	.4byte	0x61b2
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x6566
	.uleb128 0xc
	.4byte	0xf6
	.byte	0xf
	.byte	0
	.uleb128 0x5f
	.4byte	0x473c
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6620
	.uleb128 0x5c
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.4byte	0x65c1
	.uleb128 0x4d
	.4byte	0x474e
	.4byte	.LLST154
	.uleb128 0x4d
	.4byte	0x475a
	.4byte	.LLST155
	.uleb128 0x3c
	.4byte	.LVL634
	.4byte	0x8173
	.uleb128 0x3e
	.4byte	.LVL641
	.4byte	0x7e2b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL630
	.4byte	0x8259
	.uleb128 0x3c
	.4byte	.LVL631
	.4byte	0x7d88
	.uleb128 0x3c
	.4byte	.LVL632
	.4byte	0x54d4
	.uleb128 0x3c
	.4byte	.LVL633
	.4byte	0x8260
	.uleb128 0x3a
	.4byte	.LVL643
	.4byte	0x8267
	.4byte	0x65f9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL644
	.4byte	0x7e2b
	.4byte	0x6610
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL645
	.4byte	0x8281
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2133
	.byte	0x1
	.2byte	0x8aa
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66b1
	.uleb128 0x40
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x8aa
	.4byte	0x4e3d
	.4byte	.LLST156
	.uleb128 0x37
	.ascii	"at\000"
	.byte	0x1
	.2byte	0x8ac
	.4byte	0x70
	.4byte	.LLST157
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x3a8
	.4byte	0x666f
	.uleb128 0x46
	.4byte	.LASF2134
	.byte	0x1
	.2byte	0x8bc
	.4byte	0x37
	.4byte	.LLST158
	.byte	0
	.uleb128 0x5c
	.4byte	.LBB224
	.4byte	.LBE224-.LBB224
	.4byte	0x668b
	.uleb128 0x37
	.ascii	"k\000"
	.byte	0x1
	.2byte	0x8c3
	.4byte	0x69
	.4byte	.LLST159
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL655
	.4byte	0x7f85
	.4byte	0x66a7
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL656
	.4byte	0x473c
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2135
	.byte	0x1
	.2byte	0x8cf
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x674d
	.uleb128 0x40
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x8cf
	.4byte	0x4e3d
	.4byte	.LLST160
	.uleb128 0x47
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x8d1
	.4byte	0x674d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x8d2
	.4byte	0x577
	.4byte	.LLST161
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x3d0
	.4byte	0x670c
	.uleb128 0x37
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x8d9
	.4byte	0x77
	.4byte	.LLST162
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL666
	.4byte	0x8124
	.4byte	0x6725
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL667
	.4byte	0x7e2b
	.4byte	0x673c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL668
	.4byte	0x6620
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x675d
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x4
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF2136
	.byte	0x1
	.2byte	0xba3
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67c5
	.uleb128 0x5b
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xba3
	.4byte	0x5a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.uleb128 0x47
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0xba5
	.4byte	0x67c5
	.uleb128 0x5
	.byte	0x3
	.4byte	msg.10741
	.uleb128 0x47
	.ascii	"v\000"
	.byte	0x1
	.2byte	0xba6
	.4byte	0x899
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3e
	.4byte	.LVL671
	.4byte	0x8292
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x67d6
	.uleb128 0x60
	.4byte	0xf6
	.2byte	0x3ff
	.byte	0
	.uleb128 0x36
	.4byte	.LASF2137
	.byte	0x1
	.2byte	0x6e7
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a9f
	.uleb128 0x41
	.4byte	.LASF2138
	.byte	0x1
	.2byte	0x6e7
	.4byte	0xaa2
	.4byte	.LLST163
	.uleb128 0x46
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x6e9
	.4byte	0x577
	.4byte	.LLST164
	.uleb128 0x48
	.4byte	.LASF2139
	.byte	0x1
	.2byte	0x6ea
	.4byte	0x6556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x48
	.4byte	.LASF2140
	.byte	0x1
	.2byte	0x6eb
	.4byte	0x577
	.uleb128 0x6
	.byte	0x3
	.4byte	savedescription
	.byte	0x9f
	.uleb128 0x46
	.4byte	.LASF2129
	.byte	0x1
	.2byte	0x6ec
	.4byte	0x62
	.4byte	.LLST165
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x6ec
	.4byte	0x62
	.4byte	.LLST166
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x3f8
	.4byte	0x686e
	.uleb128 0x48
	.4byte	.LASF2132
	.byte	0x1
	.2byte	0x70a
	.4byte	0xab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.4byte	.LVL684
	.4byte	0x4966
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x420
	.4byte	0x68f0
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x712
	.4byte	0x2c
	.4byte	.LLST167
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x450
	.uleb128 0x37
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x715
	.4byte	0x6a9f
	.4byte	.LLST168
	.uleb128 0x3a
	.4byte	.LVL690
	.4byte	0x8088
	.4byte	0x68ac
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL691
	.4byte	0x5336
	.4byte	0x68ca
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x716
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL692
	.4byte	0x80bc
	.4byte	0x68de
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL694
	.4byte	0x8088
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL674
	.4byte	0x53a1
	.4byte	0x690a
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL676
	.4byte	0x809d
	.4byte	0x6929
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL678
	.4byte	0x53a1
	.4byte	0x6945
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL679
	.4byte	0x809d
	.4byte	0x695e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL680
	.4byte	0x5336
	.4byte	0x6982
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x6f9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL682
	.4byte	0x7d99
	.4byte	0x69a5
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xd4
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL696
	.4byte	0x5336
	.4byte	0x69c9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x71e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL701
	.4byte	0x56fa
	.uleb128 0x3c
	.4byte	.LVL702
	.4byte	0x7d07
	.uleb128 0x3c
	.4byte	.LVL703
	.4byte	0x82b6
	.uleb128 0x3c
	.4byte	.LVL704
	.4byte	0x7d07
	.uleb128 0x3c
	.4byte	.LVL705
	.4byte	0x82bd
	.uleb128 0x3c
	.4byte	.LVL706
	.4byte	0x82c4
	.uleb128 0x3c
	.4byte	.LVL707
	.4byte	0x7d07
	.uleb128 0x3c
	.4byte	.LVL708
	.4byte	0x82cb
	.uleb128 0x3c
	.4byte	.LVL709
	.4byte	0x82d2
	.uleb128 0x3c
	.4byte	.LVL710
	.4byte	0x7d07
	.uleb128 0x3c
	.4byte	.LVL711
	.4byte	0x82d9
	.uleb128 0x3c
	.4byte	.LVL712
	.4byte	0x82e0
	.uleb128 0x3c
	.4byte	.LVL713
	.4byte	0x7d07
	.uleb128 0x3c
	.4byte	.LVL714
	.4byte	0x82e7
	.uleb128 0x3c
	.4byte	.LVL716
	.4byte	0x7d07
	.uleb128 0x3a
	.4byte	.LVL717
	.4byte	0x82ee
	.4byte	0x6a6c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL718
	.4byte	0x675d
	.4byte	0x6a83
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL719
	.4byte	0x7e76
	.uleb128 0x3e
	.4byte	.LVL720
	.4byte	0x7e76
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x5a8
	.uleb128 0x4e
	.4byte	.LASF2141
	.byte	0x1
	.2byte	0x6b2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b08
	.uleb128 0x41
	.4byte	.LASF2099
	.byte	0x1
	.2byte	0x6b2
	.4byte	0x62
	.4byte	.LLST169
	.uleb128 0x41
	.4byte	.LASF2140
	.byte	0x1
	.2byte	0x6b2
	.4byte	0x577
	.4byte	.LLST170
	.uleb128 0x3a
	.4byte	.LVL724
	.4byte	0x80bc
	.4byte	0x6af8
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	savedescription
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL725
	.4byte	0x67d6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x56
	.4byte	.LASF2142
	.byte	0x1
	.2byte	0x2fd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cf4
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x62
	.4byte	.LLST171
	.uleb128 0x48
	.4byte	.LASF2143
	.byte	0x1
	.2byte	0x300
	.4byte	0x96f
	.uleb128 0x5
	.byte	0x3
	.4byte	prevgamestate.10276
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x470
	.4byte	0x6b8f
	.uleb128 0x46
	.4byte	.LASF2144
	.byte	0x1
	.2byte	0x305
	.4byte	0x62
	.4byte	.LLST172
	.uleb128 0x61
	.4byte	0x4628
	.4byte	.LBB242
	.4byte	.Ldebug_ranges0+0x470
	.byte	0x1
	.2byte	0x309
	.uleb128 0x44
	.4byte	0x4640
	.4byte	.LLST172
	.uleb128 0x44
	.4byte	0x4635
	.4byte	.LLST174
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x470
	.uleb128 0x4b
	.4byte	0x464b
	.uleb128 0x3c
	.4byte	.LVL771
	.4byte	0x4c9e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x488
	.4byte	0x6c33
	.uleb128 0x37
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x33b
	.4byte	0x62
	.4byte	.LLST175
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x4b0
	.4byte	0x6c20
	.uleb128 0x37
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x340
	.4byte	0x4e3d
	.4byte	.LLST176
	.uleb128 0x5c
	.4byte	.LBB248
	.4byte	.LBE248-.LBB248
	.4byte	0x6bee
	.uleb128 0x39
	.4byte	.LASF2146
	.byte	0x1
	.2byte	0x34f
	.4byte	0x6cf4
	.uleb128 0x3e
	.4byte	.LVL780
	.4byte	0x675d
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL766
	.4byte	0x7e2b
	.4byte	0x6c05
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL773
	.4byte	0x66b1
	.uleb128 0x3e
	.4byte	.LVL775
	.4byte	0x6620
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL777
	.4byte	0x7f40
	.uleb128 0x3c
	.4byte	.LVL778
	.4byte	0x7f47
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL728
	.4byte	0x8213
	.uleb128 0x3c
	.4byte	.LVL731
	.4byte	0x8244
	.uleb128 0x3c
	.4byte	.LVL733
	.4byte	0x7fbe
	.uleb128 0x3c
	.4byte	.LVL734
	.4byte	0x51b7
	.uleb128 0x3c
	.4byte	.LVL735
	.4byte	0x61b2
	.uleb128 0x3a
	.4byte	.LVL736
	.4byte	0x67d6
	.4byte	0x6c73
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL737
	.4byte	0x6242
	.uleb128 0x3c
	.4byte	.LVL738
	.4byte	0x56c8
	.uleb128 0x3c
	.4byte	.LVL744
	.4byte	0x4768
	.uleb128 0x3c
	.4byte	.LVL746
	.4byte	0x52a2
	.uleb128 0x3c
	.4byte	.LVL754
	.4byte	0x830d
	.uleb128 0x3c
	.4byte	.LVL755
	.4byte	0x8314
	.uleb128 0x3c
	.4byte	.LVL756
	.4byte	0x831b
	.uleb128 0x3d
	.4byte	.LVL757
	.4byte	0x8322
	.uleb128 0x3c
	.4byte	.LVL758
	.4byte	0x8329
	.uleb128 0x3a
	.4byte	.LVL763
	.4byte	0x4656
	.4byte	0x6cd8
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL768
	.4byte	0x8330
	.uleb128 0x3d
	.4byte	.LVL769
	.4byte	0x8337
	.uleb128 0x3d
	.4byte	.LVL770
	.4byte	0x833e
	.byte	0
	.uleb128 0xb
	.4byte	0x577
	.4byte	0x6cff
	.uleb128 0x62
	.byte	0
	.uleb128 0x63
	.4byte	.LASF2147
	.byte	0xe
	.byte	0x50
	.4byte	0x6d0a
	.uleb128 0x19
	.4byte	0x6d0f
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb55
	.uleb128 0x64
	.4byte	.LASF2148
	.byte	0x1
	.byte	0x5d
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	savegamesize
	.uleb128 0x64
	.4byte	.LASF2149
	.byte	0x1
	.byte	0x5e
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	netdemo
	.uleb128 0x64
	.4byte	.LASF2150
	.byte	0x1
	.byte	0x5f
	.4byte	0x41d4
	.uleb128 0x5
	.byte	0x3
	.4byte	demobuffer
	.uleb128 0x64
	.4byte	.LASF2151
	.byte	0x1
	.byte	0x60
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	demolength
	.uleb128 0x64
	.4byte	.LASF2152
	.byte	0x1
	.byte	0x61
	.4byte	0x4180
	.uleb128 0x5
	.byte	0x3
	.4byte	demofp
	.uleb128 0x64
	.4byte	.LASF2114
	.byte	0x1
	.byte	0x62
	.4byte	0x41d4
	.uleb128 0x5
	.byte	0x3
	.4byte	demo_p
	.uleb128 0xb
	.4byte	0x77
	.4byte	0x6d91
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.uleb128 0xc
	.4byte	0xf6
	.byte	0xb
	.byte	0
	.uleb128 0x64
	.4byte	.LASF1684
	.byte	0x1
	.byte	0x63
	.4byte	0x6d7b
	.uleb128 0x5
	.byte	0x3
	.4byte	consistancy
	.uleb128 0x64
	.4byte	.LASF2153
	.byte	0x1
	.byte	0x6d
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	forced_loadgame
	.uleb128 0x64
	.4byte	.LASF2154
	.byte	0x1
	.byte	0x6e
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	command_loadgame
	.uleb128 0x64
	.4byte	.LASF2155
	.byte	0x1
	.byte	0x85
	.4byte	0x41df
	.uleb128 0x5
	.byte	0x3
	.4byte	savebuffer
	.uleb128 0xb
	.4byte	0xaa2
	.4byte	0x6de6
	.uleb128 0x60
	.4byte	0xf6
	.2byte	0x1ff
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2156
	.byte	0x1
	.byte	0xe6
	.4byte	0x6dd5
	.uleb128 0x5
	.byte	0x3
	.4byte	gamekeydown
	.uleb128 0x64
	.4byte	.LASF2157
	.byte	0x1
	.byte	0xe7
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	turnheld
	.uleb128 0xb
	.4byte	0xaa2
	.4byte	0x6e18
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2158
	.byte	0x1
	.byte	0xe9
	.4byte	0x6e08
	.uleb128 0x5
	.byte	0x3
	.4byte	mousearray
	.uleb128 0x64
	.4byte	.LASF2159
	.byte	0x1
	.byte	0xea
	.4byte	0x6e3b
	.uleb128 0x6
	.byte	0x3
	.4byte	mousearray+4
	.byte	0x9f
	.uleb128 0x19
	.4byte	0x6e40
	.uleb128 0x10
	.byte	0x4
	.4byte	0xaa2
	.uleb128 0x64
	.4byte	.LASF2160
	.byte	0x1
	.byte	0xed
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousex
	.uleb128 0x64
	.4byte	.LASF2161
	.byte	0x1
	.byte	0xee
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousey
	.uleb128 0x64
	.4byte	.LASF2162
	.byte	0x1
	.byte	0xef
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	dclicktime
	.uleb128 0x64
	.4byte	.LASF2163
	.byte	0x1
	.byte	0xf0
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	dclickstate
	.uleb128 0x64
	.4byte	.LASF2164
	.byte	0x1
	.byte	0xf1
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	dclicks
	.uleb128 0x64
	.4byte	.LASF2165
	.byte	0x1
	.byte	0xf2
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	dclicktime2
	.uleb128 0x64
	.4byte	.LASF2166
	.byte	0x1
	.byte	0xf3
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	dclickstate2
	.uleb128 0x64
	.4byte	.LASF2167
	.byte	0x1
	.byte	0xf4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	dclicks2
	.uleb128 0x64
	.4byte	.LASF2168
	.byte	0x1
	.byte	0xf7
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	joyxmove
	.uleb128 0x64
	.4byte	.LASF2169
	.byte	0x1
	.byte	0xf8
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	joyymove
	.uleb128 0xb
	.4byte	0xaa2
	.4byte	0x6f00
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x4
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2170
	.byte	0x1
	.byte	0xf9
	.4byte	0x6ef0
	.uleb128 0x5
	.byte	0x3
	.4byte	joyarray
	.uleb128 0x64
	.4byte	.LASF2171
	.byte	0x1
	.byte	0xfa
	.4byte	0x6f23
	.uleb128 0x6
	.byte	0x3
	.4byte	joyarray+4
	.byte	0x9f
	.uleb128 0x19
	.4byte	0x6e40
	.uleb128 0x64
	.4byte	.LASF2172
	.byte	0x1
	.byte	0xfd
	.4byte	0x3b53
	.uleb128 0x5
	.byte	0x3
	.4byte	special_event
	.uleb128 0x64
	.4byte	.LASF2173
	.byte	0x1
	.byte	0xfe
	.4byte	0xaad
	.uleb128 0x5
	.byte	0x3
	.4byte	savegameslot
	.uleb128 0x48
	.4byte	.LASF2174
	.byte	0x1
	.2byte	0x4e0
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	secretexit
	.uleb128 0xb
	.4byte	0xaad
	.4byte	0x6f6c
	.uleb128 0xc
	.4byte	0xf6
	.byte	0xe
	.byte	0
	.uleb128 0x48
	.4byte	.LASF2175
	.byte	0x1
	.2byte	0x60e
	.4byte	0x6f7e
	.uleb128 0x5
	.byte	0x3
	.4byte	map_old_comp_levels
	.uleb128 0x19
	.4byte	0x6f5c
	.uleb128 0xb
	.4byte	0x455b
	.4byte	0x6f93
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0x48
	.4byte	.LASF2176
	.byte	0x1
	.2byte	0x615
	.4byte	0x6fa5
	.uleb128 0x5
	.byte	0x3
	.4byte	version_headers
	.uleb128 0x19
	.4byte	0x6f83
	.uleb128 0x4f
	.4byte	.LASF2177
	.byte	0x1
	.2byte	0x61d
	.4byte	0x6fb7
	.byte	0x3
	.uleb128 0x19
	.4byte	0x2c
	.uleb128 0x48
	.4byte	.LASF2178
	.byte	0x1
	.2byte	0x769
	.4byte	0x9a7
	.uleb128 0x5
	.byte	0x3
	.4byte	d_skill
	.uleb128 0x48
	.4byte	.LASF2179
	.byte	0x1
	.2byte	0x76a
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	d_episode
	.uleb128 0x48
	.4byte	.LASF2180
	.byte	0x1
	.2byte	0x76b
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	d_map
	.uleb128 0x48
	.4byte	.LASF2181
	.byte	0x1
	.2byte	0xa4a
	.4byte	0x5a8
	.uleb128 0x5
	.byte	0x3
	.4byte	defdemoname
	.uleb128 0x48
	.4byte	.LASF2182
	.byte	0x1
	.2byte	0xa52
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	demolumpnum
	.uleb128 0xb
	.4byte	0xb55
	.4byte	0x7027
	.uleb128 0x60
	.4byte	0xf6
	.2byte	0x27ff
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2183
	.byte	0xe
	.byte	0x4d
	.4byte	0x7016
	.uleb128 0xb
	.4byte	0xb55
	.4byte	0x7043
	.uleb128 0x60
	.4byte	0xf6
	.2byte	0xfff
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2184
	.byte	0xe
	.byte	0x53
	.4byte	0x7032
	.uleb128 0xb
	.4byte	0x2c38
	.4byte	0x705f
	.uleb128 0x60
	.4byte	0xf6
	.2byte	0x433
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2185
	.byte	0x10
	.2byte	0x4f4
	.4byte	0x704e
	.uleb128 0xb
	.4byte	0x317e
	.4byte	0x707b
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x97
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2186
	.byte	0x10
	.2byte	0x5d8
	.4byte	0x706b
	.uleb128 0x65
	.4byte	.LASF2187
	.byte	0x17
	.byte	0x35
	.4byte	0xaa2
	.uleb128 0x65
	.4byte	.LASF2188
	.byte	0x17
	.byte	0x36
	.4byte	0xaa2
	.uleb128 0x65
	.4byte	.LASF2189
	.byte	0x17
	.byte	0x37
	.4byte	0xaa2
	.uleb128 0x65
	.4byte	.LASF2190
	.byte	0x17
	.byte	0x3e
	.4byte	0x911
	.uleb128 0x65
	.4byte	.LASF2191
	.byte	0x17
	.byte	0x3f
	.4byte	0x943
	.uleb128 0x65
	.4byte	.LASF2192
	.byte	0x17
	.byte	0x45
	.4byte	0xb4a
	.uleb128 0x65
	.4byte	.LASF2193
	.byte	0x17
	.byte	0x45
	.4byte	0xb4a
	.uleb128 0x65
	.4byte	.LASF2194
	.byte	0x17
	.byte	0x52
	.4byte	0x62
	.uleb128 0x65
	.4byte	.LASF2195
	.byte	0x17
	.byte	0x52
	.4byte	0x62
	.uleb128 0xb
	.4byte	0x62
	.4byte	0x70fa
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1f
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2196
	.byte	0x17
	.byte	0x75
	.4byte	0x70ea
	.uleb128 0x65
	.4byte	.LASF2197
	.byte	0x17
	.byte	0x75
	.4byte	0x70ea
	.uleb128 0x65
	.4byte	.LASF2198
	.byte	0x17
	.byte	0x80
	.4byte	0x9a7
	.uleb128 0x65
	.4byte	.LASF2199
	.byte	0x17
	.byte	0x84
	.4byte	0xaa2
	.uleb128 0x66
	.4byte	.LASF2200
	.byte	0x1
	.byte	0x67
	.4byte	0x9a7
	.uleb128 0x5
	.byte	0x3
	.4byte	gameskill
	.uleb128 0x66
	.4byte	.LASF2201
	.byte	0x1
	.byte	0x69
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	gameepisode
	.uleb128 0x66
	.4byte	.LASF2202
	.byte	0x1
	.byte	0x6a
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	gamemap
	.uleb128 0x66
	.4byte	.LASF2203
	.byte	0x1
	.byte	0x68
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	respawnmonsters
	.uleb128 0x66
	.4byte	.LASF2204
	.byte	0x1
	.byte	0x77
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	netgame
	.uleb128 0x66
	.4byte	.LASF2205
	.byte	0x1
	.byte	0x76
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	deathmatch
	.uleb128 0x65
	.4byte	.LASF2206
	.byte	0x17
	.byte	0xb1
	.4byte	0x39f6
	.uleb128 0x65
	.4byte	.LASF2207
	.byte	0x17
	.byte	0xb8
	.4byte	0x3a21
	.uleb128 0x66
	.4byte	.LASF2208
	.byte	0x1
	.byte	0x6b
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	paused
	.uleb128 0x66
	.4byte	.LASF2209
	.byte	0x1
	.byte	0x73
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	nodrawers
	.uleb128 0x66
	.4byte	.LASF2210
	.byte	0x1
	.byte	0x74
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	noblit
	.uleb128 0x66
	.4byte	.LASF2211
	.byte	0x1
	.byte	0x7a
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	consoleplayer
	.uleb128 0x66
	.4byte	.LASF2212
	.byte	0x1
	.byte	0x7b
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	displayplayer
	.uleb128 0x66
	.4byte	.LASF2213
	.byte	0x1
	.byte	0x7e
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	totalkills
	.uleb128 0x66
	.4byte	.LASF2214
	.byte	0x1
	.byte	0x7e
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	totallive
	.uleb128 0x66
	.4byte	.LASF2215
	.byte	0x1
	.byte	0x7e
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	totalitems
	.uleb128 0x66
	.4byte	.LASF2216
	.byte	0x1
	.byte	0x7e
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	totalsecret
	.uleb128 0x66
	.4byte	.LASF2217
	.byte	0x1
	.byte	0x7d
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	basetic
	.uleb128 0x65
	.4byte	.LASF2218
	.byte	0x17
	.byte	0xd0
	.4byte	0x62
	.uleb128 0x66
	.4byte	.LASF2219
	.byte	0x1
	.byte	0x70
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	usergame
	.uleb128 0x66
	.4byte	.LASF2106
	.byte	0x1
	.byte	0x80
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	demoplayback
	.uleb128 0x66
	.4byte	.LASF2220
	.byte	0x1
	.byte	0x7f
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	demorecording
	.uleb128 0x66
	.4byte	.LASF2221
	.byte	0x1
	.byte	0x81
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	demover
	.uleb128 0x66
	.4byte	.LASF2222
	.byte	0x1
	.byte	0x82
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	singledemo
	.uleb128 0x66
	.4byte	.LASF2223
	.byte	0x1
	.byte	0x71
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	timingdemo
	.uleb128 0x66
	.4byte	.LASF2224
	.byte	0x1
	.byte	0x72
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	fastdemo
	.uleb128 0x66
	.4byte	.LASF2225
	.byte	0x1
	.byte	0x66
	.4byte	0x96f
	.uleb128 0x5
	.byte	0x3
	.4byte	gamestate
	.uleb128 0x66
	.4byte	.LASF2226
	.byte	0x1
	.byte	0x7c
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	gametic
	.uleb128 0xb
	.4byte	0x3825
	.4byte	0x7300
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2227
	.byte	0x1
	.byte	0x79
	.4byte	0x72f0
	.uleb128 0x5
	.byte	0x3
	.4byte	players
	.uleb128 0x66
	.4byte	.LASF2228
	.byte	0x1
	.byte	0x78
	.4byte	0x6e08
	.uleb128 0x5
	.byte	0x3
	.4byte	playeringame
	.uleb128 0x65
	.4byte	.LASF2229
	.byte	0x17
	.byte	0xf3
	.4byte	0x4be0
	.uleb128 0x65
	.4byte	.LASF2230
	.byte	0x17
	.byte	0xf6
	.4byte	0x4be0
	.uleb128 0xb
	.4byte	0x323e
	.4byte	0x7343
	.uleb128 0x62
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2231
	.byte	0x17
	.byte	0xf9
	.4byte	0x7338
	.uleb128 0x66
	.4byte	.LASF2232
	.byte	0x1
	.byte	0x83
	.4byte	0x3940
	.uleb128 0x5
	.byte	0x3
	.4byte	wminfo
	.uleb128 0x39
	.4byte	.LASF2233
	.byte	0x17
	.2byte	0x10b
	.4byte	0x96f
	.uleb128 0x39
	.4byte	.LASF2234
	.byte	0x17
	.2byte	0x10d
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2235
	.byte	0x17
	.2byte	0x10e
	.4byte	0x62
	.uleb128 0x67
	.4byte	.LASF2236
	.byte	0x1
	.2byte	0x105
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	bodyqueslot
	.uleb128 0x39
	.4byte	.LASF2237
	.byte	0x17
	.2byte	0x118
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2238
	.byte	0x17
	.2byte	0x11a
	.4byte	0x62
	.uleb128 0xb
	.4byte	0x379e
	.4byte	0x73be
	.uleb128 0x62
	.uleb128 0xc
	.4byte	0xf6
	.byte	0xb
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2239
	.byte	0x17
	.2byte	0x11f
	.4byte	0x73ad
	.uleb128 0x39
	.4byte	.LASF2240
	.byte	0x17
	.2byte	0x120
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2241
	.byte	0x17
	.2byte	0x124
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2242
	.byte	0x17
	.2byte	0x125
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2243
	.byte	0x17
	.2byte	0x127
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2244
	.byte	0x17
	.2byte	0x128
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2245
	.byte	0x17
	.2byte	0x12a
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2246
	.byte	0x17
	.2byte	0x12b
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2247
	.byte	0x17
	.2byte	0x12d
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2248
	.byte	0x17
	.2byte	0x12e
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2249
	.byte	0x17
	.2byte	0x130
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2250
	.byte	0x17
	.2byte	0x131
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2251
	.byte	0x17
	.2byte	0x134
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2252
	.byte	0x17
	.2byte	0x134
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2253
	.byte	0x17
	.2byte	0x135
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2254
	.byte	0x17
	.2byte	0x135
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2255
	.byte	0x17
	.2byte	0x139
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2256
	.byte	0x17
	.2byte	0x139
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2257
	.byte	0x17
	.2byte	0x13c
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2258
	.byte	0x17
	.2byte	0x13c
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2259
	.byte	0x17
	.2byte	0x13f
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2260
	.byte	0x17
	.2byte	0x13f
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2261
	.byte	0x17
	.2byte	0x142
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2262
	.byte	0x17
	.2byte	0x142
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2263
	.byte	0x17
	.2byte	0x145
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2264
	.byte	0x17
	.2byte	0x145
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2265
	.byte	0x17
	.2byte	0x14c
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2266
	.byte	0x17
	.2byte	0x14c
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2267
	.byte	0x17
	.2byte	0x14e
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2268
	.byte	0x17
	.2byte	0x14e
	.4byte	0x62
	.uleb128 0x66
	.4byte	.LASF2269
	.byte	0x1
	.byte	0x65
	.4byte	0x3aef
	.uleb128 0x5
	.byte	0x3
	.4byte	gameaction
	.uleb128 0x65
	.4byte	.LASF2270
	.byte	0x1d
	.byte	0x29
	.4byte	0x62
	.uleb128 0x65
	.4byte	.LASF2271
	.byte	0x1d
	.byte	0x2a
	.4byte	0x754d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6a9f
	.uleb128 0x65
	.4byte	.LASF2272
	.byte	0x19
	.byte	0x8b
	.4byte	0x8c
	.uleb128 0x65
	.4byte	.LASF2273
	.byte	0x1e
	.byte	0x3e
	.4byte	0x41df
	.uleb128 0x65
	.4byte	.LASF2274
	.byte	0x2
	.byte	0x56
	.4byte	0x41ce
	.uleb128 0x65
	.4byte	.LASF2275
	.byte	0x2
	.byte	0x58
	.4byte	0x2c
	.uleb128 0x65
	.4byte	.LASF2276
	.byte	0x2
	.byte	0x79
	.4byte	0x62
	.uleb128 0x65
	.4byte	.LASF2277
	.byte	0x1f
	.byte	0x2e
	.4byte	0x577
	.uleb128 0x65
	.4byte	.LASF2278
	.byte	0x1f
	.byte	0x31
	.4byte	0xaa2
	.uleb128 0x65
	.4byte	.LASF2279
	.byte	0x1f
	.byte	0x32
	.4byte	0xaa2
	.uleb128 0x65
	.4byte	.LASF2280
	.byte	0x1f
	.byte	0x33
	.4byte	0xaa2
	.uleb128 0x65
	.4byte	.LASF2281
	.byte	0x20
	.byte	0x6a
	.4byte	0x37f5
	.uleb128 0x65
	.4byte	.LASF2282
	.byte	0x20
	.byte	0x6b
	.4byte	0x62
	.uleb128 0xb
	.4byte	0xaad
	.4byte	0x75dc
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2283
	.byte	0x21
	.byte	0x88
	.4byte	0x75cc
	.uleb128 0x65
	.4byte	.LASF2284
	.byte	0x22
	.byte	0x62
	.4byte	0x62
	.uleb128 0x65
	.4byte	.LASF2285
	.byte	0x23
	.byte	0x31
	.4byte	0x62
	.uleb128 0x39
	.4byte	.LASF2286
	.byte	0x24
	.2byte	0x109
	.4byte	0x5a8
	.uleb128 0x39
	.4byte	.LASF2287
	.byte	0x24
	.2byte	0x45d
	.4byte	0x5a8
	.uleb128 0x65
	.4byte	.LASF2288
	.byte	0x25
	.byte	0x3e
	.4byte	0x62
	.uleb128 0x65
	.4byte	.LASF2289
	.byte	0x25
	.byte	0x3f
	.4byte	0x62
	.uleb128 0xb
	.4byte	0x62
	.4byte	0x7636
	.uleb128 0x62
	.byte	0
	.uleb128 0x65
	.4byte	.LASF1655
	.byte	0x25
	.byte	0x49
	.4byte	0x762b
	.uleb128 0x66
	.4byte	.LASF2290
	.byte	0x1
	.byte	0x8e
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_right
	.uleb128 0x66
	.4byte	.LASF2291
	.byte	0x1
	.byte	0x8f
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_left
	.uleb128 0x66
	.4byte	.LASF2292
	.byte	0x1
	.byte	0x90
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_up
	.uleb128 0x66
	.4byte	.LASF2293
	.byte	0x1
	.byte	0x91
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_down
	.uleb128 0x66
	.4byte	.LASF2294
	.byte	0x1
	.byte	0x92
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_right
	.uleb128 0x66
	.4byte	.LASF2295
	.byte	0x1
	.byte	0x93
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_left
	.uleb128 0x66
	.4byte	.LASF2296
	.byte	0x1
	.byte	0x94
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_up
	.uleb128 0x66
	.4byte	.LASF2297
	.byte	0x1
	.byte	0x95
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_down
	.uleb128 0x66
	.4byte	.LASF2298
	.byte	0x1
	.byte	0x96
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_backspace
	.uleb128 0x66
	.4byte	.LASF2299
	.byte	0x1
	.byte	0x97
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_escape
	.uleb128 0x66
	.4byte	.LASF2300
	.byte	0x1
	.byte	0x98
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_menu_enter
	.uleb128 0x66
	.4byte	.LASF2301
	.byte	0x1
	.byte	0x99
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_strafeleft
	.uleb128 0x66
	.4byte	.LASF2302
	.byte	0x1
	.byte	0x9a
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_straferight
	.uleb128 0x66
	.4byte	.LASF2303
	.byte	0x1
	.byte	0x9b
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_fire
	.uleb128 0x66
	.4byte	.LASF2304
	.byte	0x1
	.byte	0x9c
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_use
	.uleb128 0x66
	.4byte	.LASF2305
	.byte	0x1
	.byte	0x9d
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_strafe
	.uleb128 0x66
	.4byte	.LASF2306
	.byte	0x1
	.byte	0x9e
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_speed
	.uleb128 0x66
	.4byte	.LASF2307
	.byte	0x1
	.byte	0x9f
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_escape
	.uleb128 0x66
	.4byte	.LASF2308
	.byte	0x1
	.byte	0xa0
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_savegame
	.uleb128 0x66
	.4byte	.LASF2309
	.byte	0x1
	.byte	0xa1
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_loadgame
	.uleb128 0x66
	.4byte	.LASF2310
	.byte	0x1
	.byte	0xa2
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_autorun
	.uleb128 0x66
	.4byte	.LASF2311
	.byte	0x1
	.byte	0xa3
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_reverse
	.uleb128 0x66
	.4byte	.LASF2312
	.byte	0x1
	.byte	0xa4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_zoomin
	.uleb128 0x66
	.4byte	.LASF2313
	.byte	0x1
	.byte	0xa5
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_zoomout
	.uleb128 0x66
	.4byte	.LASF2314
	.byte	0x1
	.byte	0xa6
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_chat
	.uleb128 0x66
	.4byte	.LASF2315
	.byte	0x1
	.byte	0xa7
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_backspace
	.uleb128 0x66
	.4byte	.LASF2316
	.byte	0x1
	.byte	0xa8
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_enter
	.uleb128 0x66
	.4byte	.LASF2317
	.byte	0x1
	.byte	0xb7
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_help
	.uleb128 0x66
	.4byte	.LASF2318
	.byte	0x1
	.byte	0xb8
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_soundvolume
	.uleb128 0x66
	.4byte	.LASF2319
	.byte	0x1
	.byte	0xb9
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_hud
	.uleb128 0x66
	.4byte	.LASF2320
	.byte	0x1
	.byte	0xba
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_quicksave
	.uleb128 0x66
	.4byte	.LASF2321
	.byte	0x1
	.byte	0xbb
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_endgame
	.uleb128 0x66
	.4byte	.LASF2322
	.byte	0x1
	.byte	0xbc
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_messages
	.uleb128 0x66
	.4byte	.LASF2323
	.byte	0x1
	.byte	0xbd
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_quickload
	.uleb128 0x66
	.4byte	.LASF2324
	.byte	0x1
	.byte	0xbe
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_quit
	.uleb128 0x66
	.4byte	.LASF2325
	.byte	0x1
	.byte	0xbf
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_gamma
	.uleb128 0x66
	.4byte	.LASF2326
	.byte	0x1
	.byte	0xc0
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_spy
	.uleb128 0x66
	.4byte	.LASF2327
	.byte	0x1
	.byte	0xc1
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_pause
	.uleb128 0x66
	.4byte	.LASF2328
	.byte	0x1
	.byte	0xc2
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_setup
	.uleb128 0x66
	.4byte	.LASF2329
	.byte	0x1
	.byte	0xc4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapontoggle
	.uleb128 0x66
	.4byte	.LASF2330
	.byte	0x1
	.byte	0xc5
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon1
	.uleb128 0x66
	.4byte	.LASF2331
	.byte	0x1
	.byte	0xc6
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon2
	.uleb128 0x66
	.4byte	.LASF2332
	.byte	0x1
	.byte	0xc7
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon3
	.uleb128 0x66
	.4byte	.LASF2333
	.byte	0x1
	.byte	0xc8
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon4
	.uleb128 0x66
	.4byte	.LASF2334
	.byte	0x1
	.byte	0xc9
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon5
	.uleb128 0x66
	.4byte	.LASF2335
	.byte	0x1
	.byte	0xca
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon6
	.uleb128 0x66
	.4byte	.LASF2336
	.byte	0x1
	.byte	0xcb
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon7
	.uleb128 0x66
	.4byte	.LASF2337
	.byte	0x1
	.byte	0xcc
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon8
	.uleb128 0x66
	.4byte	.LASF2338
	.byte	0x1
	.byte	0xcd
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_weapon9
	.uleb128 0x66
	.4byte	.LASF2339
	.byte	0x1
	.byte	0xc3
	.4byte	0x37f5
	.uleb128 0x5
	.byte	0x3
	.4byte	destination_keys
	.uleb128 0x66
	.4byte	.LASF2340
	.byte	0x1
	.byte	0xa9
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_right
	.uleb128 0x66
	.4byte	.LASF2341
	.byte	0x1
	.byte	0xaa
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_left
	.uleb128 0x66
	.4byte	.LASF2342
	.byte	0x1
	.byte	0xab
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_up
	.uleb128 0x66
	.4byte	.LASF2343
	.byte	0x1
	.byte	0xac
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_down
	.uleb128 0x66
	.4byte	.LASF2344
	.byte	0x1
	.byte	0xad
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_zoomin
	.uleb128 0x66
	.4byte	.LASF2345
	.byte	0x1
	.byte	0xae
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_zoomout
	.uleb128 0x66
	.4byte	.LASF2346
	.byte	0x1
	.byte	0xaf
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map
	.uleb128 0x66
	.4byte	.LASF2347
	.byte	0x1
	.byte	0xb0
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_gobig
	.uleb128 0x66
	.4byte	.LASF2348
	.byte	0x1
	.byte	0xb1
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_follow
	.uleb128 0x66
	.4byte	.LASF2349
	.byte	0x1
	.byte	0xb2
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_mark
	.uleb128 0x66
	.4byte	.LASF2350
	.byte	0x1
	.byte	0xb3
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_clear
	.uleb128 0x66
	.4byte	.LASF2351
	.byte	0x1
	.byte	0xb4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_grid
	.uleb128 0x66
	.4byte	.LASF2352
	.byte	0x1
	.byte	0xb6
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_rotate
	.uleb128 0x66
	.4byte	.LASF2353
	.byte	0x1
	.byte	0xb5
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_map_overlay
	.uleb128 0x66
	.4byte	.LASF2354
	.byte	0x1
	.byte	0xcf
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	key_screenshot
	.uleb128 0x66
	.4byte	.LASF2355
	.byte	0x1
	.byte	0x86
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	autorun
	.uleb128 0x66
	.4byte	.LASF2356
	.byte	0x1
	.byte	0xd0
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousebfire
	.uleb128 0x66
	.4byte	.LASF2357
	.byte	0x1
	.byte	0xd1
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousebstrafe
	.uleb128 0x66
	.4byte	.LASF2358
	.byte	0x1
	.byte	0xd2
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousebforward
	.uleb128 0x66
	.4byte	.LASF2359
	.byte	0x1
	.byte	0xd3
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousebbackward
	.uleb128 0x66
	.4byte	.LASF2360
	.byte	0x1
	.byte	0xd4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mousebuse
	.uleb128 0x66
	.4byte	.LASF2361
	.byte	0x1
	.byte	0xd5
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	mouse_double_click_use
	.uleb128 0x66
	.4byte	.LASF2362
	.byte	0x1
	.byte	0xd6
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	joybfire
	.uleb128 0x66
	.4byte	.LASF2363
	.byte	0x1
	.byte	0xd7
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	joybstrafe
	.uleb128 0x66
	.4byte	.LASF2364
	.byte	0x1
	.byte	0xd8
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	joybuse
	.uleb128 0x66
	.4byte	.LASF2365
	.byte	0x1
	.byte	0xd9
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	joybspeed
	.uleb128 0x67
	.4byte	.LASF2366
	.byte	0x1
	.2byte	0x102
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	defaultskill
	.uleb128 0x66
	.4byte	.LASF2367
	.byte	0x1
	.byte	0x84
	.4byte	0xaa2
	.uleb128 0x5
	.byte	0x3
	.4byte	haswolflevels
	.uleb128 0x67
	.4byte	.LASF2368
	.byte	0x1
	.2byte	0x105
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	bodyquesize
	.uleb128 0xb
	.4byte	0x62
	.4byte	0x7b98
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x3
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x9
	.byte	0
	.uleb128 0x67
	.4byte	.LASF2369
	.byte	0x1
	.2byte	0x4d1
	.4byte	0x7b82
	.uleb128 0x5
	.byte	0x3
	.4byte	pars
	.uleb128 0x67
	.4byte	.LASF2370
	.byte	0x1
	.2byte	0x4d9
	.4byte	0x70ea
	.uleb128 0x5
	.byte	0x3
	.4byte	cpars
	.uleb128 0xb
	.4byte	0x57d
	.4byte	0x7bcc
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x1f
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2371
	.byte	0x1
	.byte	0xff
	.4byte	0x7bbc
	.uleb128 0x5
	.byte	0x3
	.4byte	savedescription
	.uleb128 0xb
	.4byte	0x5a8
	.4byte	0x7bed
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x11
	.byte	0
	.uleb128 0x67
	.4byte	.LASF2372
	.byte	0x1
	.2byte	0x606
	.4byte	0x7bdd
	.uleb128 0x5
	.byte	0x3
	.4byte	comp_lev_str
	.uleb128 0x66
	.4byte	.LASF2373
	.byte	0x1
	.byte	0x75
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	starttime
	.uleb128 0x66
	.4byte	.LASF2374
	.byte	0x1
	.byte	0x87
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	totalleveltimes
	.uleb128 0x66
	.4byte	.LASF2375
	.byte	0x1
	.byte	0x88
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	longtics
	.uleb128 0x66
	.4byte	.LASF1681
	.byte	0x1
	.byte	0xe1
	.4byte	0x3d20
	.uleb128 0x5
	.byte	0x3
	.4byte	forwardmove
	.uleb128 0x66
	.4byte	.LASF1682
	.byte	0x1
	.byte	0xe2
	.4byte	0x3d20
	.uleb128 0x5
	.byte	0x3
	.4byte	sidemove
	.uleb128 0xb
	.4byte	0xb55
	.4byte	0x7c64
	.uleb128 0xc
	.4byte	0xf6
	.byte	0x2
	.byte	0
	.uleb128 0x66
	.4byte	.LASF1683
	.byte	0x1
	.byte	0xe3
	.4byte	0x7c54
	.uleb128 0x5
	.byte	0x3
	.4byte	angleturn
	.uleb128 0x67
	.4byte	.LASF2376
	.byte	0x1
	.2byte	0x106
	.4byte	0x7c87
	.uleb128 0x5
	.byte	0x3
	.4byte	bodyque
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37cf
	.uleb128 0x39
	.4byte	.LASF2145
	.byte	0x1
	.2byte	0x26a
	.4byte	0x4512
	.uleb128 0x39
	.4byte	.LASF2146
	.byte	0x1
	.2byte	0x34f
	.4byte	0x6cf4
	.uleb128 0x39
	.4byte	.LASF2377
	.byte	0x1
	.2byte	0x5a1
	.4byte	0xaa2
	.uleb128 0x39
	.4byte	.LASF2378
	.byte	0x1
	.2byte	0x928
	.4byte	0x62
	.uleb128 0x68
	.4byte	.LASF2380
	.byte	0x26
	.byte	0x58
	.4byte	0x62
	.4byte	0x7cd2
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2381
	.byte	0x26
	.byte	0x5f
	.4byte	0x62
	.4byte	0x7ce7
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2382
	.byte	0x27
	.byte	0x2b
	.4byte	0x7d07
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x9a7
	.byte	0
	.uleb128 0x6a
	.4byte	.LASF2407
	.byte	0xa
	.byte	0x52
	.4byte	0x7d14
	.uleb128 0x23
	.byte	0
	.uleb128 0x6b
	.4byte	.LASF2383
	.4byte	0x60
	.4byte	0x7d31
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0xf6
	.byte	0
	.uleb128 0x6c
	.4byte	.LASF2384
	.byte	0x28
	.byte	0x43
	.uleb128 0x6c
	.4byte	.LASF2385
	.byte	0x29
	.byte	0x3d
	.uleb128 0x68
	.4byte	.LASF2386
	.byte	0x2
	.byte	0x7f
	.4byte	0x62
	.4byte	0x7d5e
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2387
	.byte	0x2
	.byte	0x86
	.4byte	0x62
	.4byte	0x7d73
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2388
	.byte	0x2
	.byte	0x89
	.4byte	0x8a4
	.4byte	0x7d88
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2389
	.byte	0x2
	.byte	0x8b
	.4byte	0x7d99
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2390
	.byte	0x9
	.byte	0xd9
	.4byte	0x62
	.4byte	0x7db4
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x23
	.byte	0
	.uleb128 0x6d
	.4byte	.LASF2391
	.byte	0x13
	.2byte	0x186
	.4byte	0x7dc6
	.uleb128 0x15
	.4byte	0x37cf
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2392
	.byte	0xa
	.byte	0x50
	.4byte	0x60
	.4byte	0x7dea
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x7dea
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x60
	.uleb128 0x6e
	.4byte	.LASF2393
	.byte	0x13
	.2byte	0x185
	.4byte	0x37cf
	.4byte	0x7e15
	.uleb128 0x15
	.4byte	0xb55
	.uleb128 0x15
	.4byte	0xb55
	.uleb128 0x15
	.4byte	0xb55
	.uleb128 0x15
	.4byte	0x303d
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2394
	.byte	0x22
	.byte	0x3e
	.4byte	0x7e2b
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2395
	.byte	0x1b
	.byte	0x3d
	.4byte	0x7e3d
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x23
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2396
	.byte	0x2a
	.byte	0x3f
	.4byte	0xaa2
	.4byte	0x7e5c
	.uleb128 0x15
	.4byte	0x37cf
	.uleb128 0x15
	.4byte	0xb55
	.uleb128 0x15
	.4byte	0xb55
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2397
	.byte	0x2b
	.byte	0x6d
	.4byte	0x4be6
	.4byte	0x7e76
	.uleb128 0x15
	.4byte	0xb55
	.uleb128 0x15
	.4byte	0xb55
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2398
	.byte	0xa
	.byte	0x4a
	.4byte	0x7e87
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2399
	.byte	0x2c
	.byte	0x46
	.4byte	0x7e98
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x6c
	.4byte	.LASF2400
	.byte	0x1f
	.byte	0x48
	.uleb128 0x6c
	.4byte	.LASF2401
	.byte	0x21
	.byte	0x99
	.uleb128 0x68
	.4byte	.LASF2402
	.byte	0x11
	.byte	0x56
	.4byte	0x62
	.4byte	0x7ec0
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2424
	.byte	0x29
	.byte	0x43
	.4byte	0x57d
	.uleb128 0x68
	.4byte	.LASF2403
	.byte	0x11
	.byte	0x59
	.4byte	0x62
	.4byte	0x7ee0
	.uleb128 0x15
	.4byte	0x36d4
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2404
	.byte	0x11
	.byte	0x5b
	.4byte	0xaa2
	.4byte	0x7ef5
	.uleb128 0x15
	.4byte	0x36d4
	.byte	0
	.uleb128 0x6c
	.4byte	.LASF2405
	.byte	0x2c
	.byte	0x44
	.uleb128 0x69
	.4byte	.LASF2406
	.byte	0x22
	.byte	0x59
	.4byte	0x7f0d
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x6a
	.4byte	.LASF2408
	.byte	0x2d
	.byte	0x48
	.4byte	0x7f1a
	.uleb128 0x23
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2409
	.byte	0x2e
	.byte	0x2a
	.4byte	0x7f2b
	.uleb128 0x15
	.4byte	0x4ff8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2410
	.byte	0x2f
	.byte	0x2e
	.4byte	0xaa2
	.4byte	0x7f40
	.uleb128 0x15
	.4byte	0x4ef0
	.byte	0
	.uleb128 0x6c
	.4byte	.LASF2411
	.byte	0x22
	.byte	0x53
	.uleb128 0x6c
	.4byte	.LASF2412
	.byte	0x22
	.byte	0x54
	.uleb128 0x68
	.4byte	.LASF2413
	.byte	0x19
	.byte	0x8e
	.4byte	0x62
	.4byte	0x7f63
	.uleb128 0x15
	.4byte	0x3ce1
	.byte	0
	.uleb128 0x6d
	.4byte	.LASF2414
	.byte	0x13
	.2byte	0x18f
	.4byte	0x7f7a
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x7f7a
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7f80
	.uleb128 0x19
	.4byte	0x323e
	.uleb128 0x68
	.4byte	.LASF2415
	.byte	0x1b
	.byte	0x36
	.4byte	0x62
	.4byte	0x7fa0
	.uleb128 0x15
	.4byte	0x4507
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x23
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2416
	.byte	0x30
	.byte	0x3b
	.4byte	0x7fb1
	.uleb128 0x15
	.4byte	0x7fb1
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3940
	.uleb128 0x6c
	.4byte	.LASF2417
	.byte	0x20
	.byte	0x3b
	.uleb128 0x6c
	.4byte	.LASF2418
	.byte	0x2f
	.byte	0x36
	.uleb128 0x6c
	.4byte	.LASF2419
	.byte	0x20
	.byte	0x43
	.uleb128 0x68
	.4byte	.LASF2420
	.byte	0x1b
	.byte	0x47
	.4byte	0x62
	.4byte	0x7fec
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x23
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2421
	.byte	0x31
	.byte	0x49
	.4byte	0x62
	.4byte	0x8001
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2422
	.byte	0x1d
	.byte	0x2d
	.4byte	0x62
	.4byte	0x8016
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x6b
	.4byte	.LASF2423
	.4byte	0x60
	.4byte	0x8033
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x8a4
	.uleb128 0x15
	.4byte	0xf6
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2425
	.byte	0x32
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x6c
	.4byte	.LASF2426
	.byte	0x19
	.byte	0x98
	.uleb128 0x68
	.4byte	.LASF2427
	.byte	0x9
	.byte	0xc4
	.4byte	0x2c
	.4byte	0x8069
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x4180
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2428
	.byte	0x9
	.byte	0xcb
	.4byte	0x62
	.4byte	0x8088
	.uleb128 0x15
	.4byte	0x4180
	.uleb128 0x15
	.4byte	0x85
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2429
	.byte	0x33
	.byte	0x21
	.4byte	0x2c
	.4byte	0x809d
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2430
	.byte	0xa
	.byte	0x49
	.4byte	0x60
	.4byte	0x80bc
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x7dea
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2431
	.byte	0x33
	.byte	0x1e
	.4byte	0x577
	.4byte	0x80d6
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2432
	.byte	0x2
	.byte	0x95
	.4byte	0x577
	.4byte	0x80f0
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2433
	.byte	0x34
	.byte	0x13
	.4byte	0x62
	.4byte	0x810a
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2434
	.byte	0x9
	.byte	0xd8
	.4byte	0x4180
	.4byte	0x8124
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2435
	.byte	0x9
	.byte	0xc5
	.4byte	0x2c
	.4byte	0x8148
	.uleb128 0x15
	.4byte	0x8a4
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x4180
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2436
	.byte	0x2
	.byte	0x96
	.4byte	0x815e
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x577
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2437
	.byte	0x2
	.byte	0x85
	.4byte	0x62
	.4byte	0x8173
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2438
	.byte	0x32
	.byte	0x2d
	.4byte	0x62
	.uleb128 0x68
	.4byte	.LASF2439
	.byte	0x33
	.byte	0x23
	.4byte	0x62
	.4byte	0x819d
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x2c
	.byte	0
	.uleb128 0x70
	.4byte	.LASF2440
	.byte	0x8
	.byte	0
	.4byte	.LASF2429
	.4byte	0x37
	.4byte	0x81b6
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x70
	.4byte	.LASF2441
	.byte	0x8
	.byte	0
	.4byte	.LASF2431
	.4byte	0x577
	.4byte	0x81d4
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x5a8
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2442
	.byte	0x33
	.byte	0x16
	.4byte	0x62
	.4byte	0x81f3
	.uleb128 0x15
	.4byte	0x8a4
	.uleb128 0x15
	.4byte	0x8a4
	.uleb128 0x15
	.4byte	0x2c
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2443
	.byte	0x35
	.byte	0x2f
	.4byte	0x62
	.4byte	0x820d
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x820d
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x41df
	.uleb128 0x6c
	.4byte	.LASF2444
	.byte	0x2a
	.byte	0x4d
	.uleb128 0x6c
	.4byte	.LASF2445
	.byte	0x1e
	.byte	0x2c
	.uleb128 0x6c
	.4byte	.LASF2446
	.byte	0x1e
	.byte	0x2e
	.uleb128 0x6c
	.4byte	.LASF2447
	.byte	0x1e
	.byte	0x30
	.uleb128 0x6c
	.4byte	.LASF2448
	.byte	0x1e
	.byte	0x32
	.uleb128 0x6c
	.4byte	.LASF2449
	.byte	0x1e
	.byte	0x38
	.uleb128 0x6c
	.4byte	.LASF2450
	.byte	0x1e
	.byte	0x3c
	.uleb128 0x6c
	.4byte	.LASF2451
	.byte	0x2a
	.byte	0x4e
	.uleb128 0x6c
	.4byte	.LASF2452
	.byte	0x21
	.byte	0x9c
	.uleb128 0x6c
	.4byte	.LASF2453
	.byte	0x2b
	.byte	0x76
	.uleb128 0x6c
	.4byte	.LASF2454
	.byte	0x36
	.byte	0x2
	.uleb128 0x6c
	.4byte	.LASF2455
	.byte	0x1f
	.byte	0x3f
	.uleb128 0x68
	.4byte	.LASF2456
	.byte	0x9
	.byte	0xbb
	.4byte	0x62
	.4byte	0x8281
	.uleb128 0x15
	.4byte	0x62
	.uleb128 0x15
	.4byte	0x4180
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2457
	.byte	0x31
	.byte	0x54
	.4byte	0x8292
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2458
	.byte	0x1b
	.byte	0x46
	.4byte	0x62
	.4byte	0x82b6
	.uleb128 0x15
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x899
	.byte	0
	.uleb128 0x6c
	.4byte	.LASF2459
	.byte	0x1e
	.byte	0x2b
	.uleb128 0x6c
	.4byte	.LASF2460
	.byte	0x1e
	.byte	0x33
	.uleb128 0x6c
	.4byte	.LASF2461
	.byte	0x1e
	.byte	0x2d
	.uleb128 0x6c
	.4byte	.LASF2462
	.byte	0x1e
	.byte	0x2f
	.uleb128 0x6c
	.4byte	.LASF2463
	.byte	0x1e
	.byte	0x34
	.uleb128 0x6c
	.4byte	.LASF2464
	.byte	0x1e
	.byte	0x31
	.uleb128 0x6c
	.4byte	.LASF2465
	.byte	0x1e
	.byte	0x37
	.uleb128 0x6c
	.4byte	.LASF2466
	.byte	0x1e
	.byte	0x3b
	.uleb128 0x68
	.4byte	.LASF2467
	.byte	0x35
	.byte	0x2d
	.4byte	0xaa2
	.4byte	0x830d
	.uleb128 0x15
	.4byte	0x5a8
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x62
	.byte	0
	.uleb128 0x6c
	.4byte	.LASF2468
	.byte	0x37
	.byte	0x2d
	.uleb128 0x6c
	.4byte	.LASF2469
	.byte	0x28
	.byte	0x3d
	.uleb128 0x6c
	.4byte	.LASF2470
	.byte	0x20
	.byte	0x33
	.uleb128 0x6c
	.4byte	.LASF2471
	.byte	0x29
	.byte	0x41
	.uleb128 0x6c
	.4byte	.LASF2472
	.byte	0x30
	.byte	0x3e
	.uleb128 0x6c
	.4byte	.LASF2473
	.byte	0x30
	.byte	0x34
	.uleb128 0x6c
	.4byte	.LASF2474
	.byte	0x2f
	.byte	0x31
	.uleb128 0x6c
	.4byte	.LASF2475
	.byte	0x1f
	.byte	0x47
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x60
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x63
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
	.uleb128 0x64
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
	.uleb128 0x65
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
	.uleb128 0x66
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
	.uleb128 0x67
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x68
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
	.uleb128 0x69
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
	.uleb128 0x6a
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
	.uleb128 0x6b
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
	.uleb128 0x6c
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
	.uleb128 0x6d
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6e
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
	.uleb128 0x6f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x70
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-1-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-1-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL97-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	dclickstate2
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	mousey
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-1-.Ltext0
	.2byte	0x11
	.byte	0x3
	.4byte	consoleplayer
	.byte	0x6
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL175-1-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL193-1-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL197-1-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL199-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL212-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL213-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players+208
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL213-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players+212
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL213-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players+216
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL213-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x11c
	.byte	0x1e
	.byte	0x3
	.4byte	players+200
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL223-1-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL225-1-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL226-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x5
	.byte	0x44
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x5
	.byte	0x45
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x5
	.byte	0x44
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x5
	.byte	0x45
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL225-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-1-.Ltext0
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL230-1-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL233-1-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL234-1-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL237-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL230-1-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL233-1-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL237-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL263-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL262-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL262-1-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL264-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL264-1-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 1024
	.byte	0x9f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 1024
	.byte	0x9f
	.4byte	.LVL270-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x400
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL271-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL266-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL278-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL278-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL278-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	fast.10577
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL306-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	fast.10577
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL326-1-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL326-1-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL331-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL326-1-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 26
	.byte	0x9f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x49
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 21
	.byte	0x9f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 22
	.byte	0x9f
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 23
	.byte	0x9f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 25
	.byte	0x9f
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 26
	.byte	0x9f
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 59
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x49
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x4a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x49
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL434-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL435-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL418-1-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL418-1-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL418-1-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL418-1-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x35
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x35
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL449-1-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL449-1-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL466-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL466-1-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL469-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL469-1-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL475-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL475-1-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL495-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL483-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL489-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL479-.Ltext0
	.4byte	.LVL480-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL551-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL552-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL522-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL536-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL541-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL554-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL503-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL507-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL509-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 13
	.byte	0x9f
	.4byte	.LVL510-.Ltext0
	.4byte	.LVL511-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL511-1-.Ltext0
	.4byte	.LVL511-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 13
	.byte	0x9f
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL527-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL528-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL528-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL529-.Ltext0
	.4byte	.LVL530-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL530-.Ltext0
	.4byte	.LVL531-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL531-.Ltext0
	.4byte	.LVL532-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL534-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL534-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL541-.Ltext0
	.4byte	.LVL542-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL542-.Ltext0
	.4byte	.LVL543-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL544-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL544-.Ltext0
	.4byte	.LVL545-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 13
	.byte	0x9f
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL548-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL548-1-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 13
	.byte	0x9f
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL550-.Ltext0
	.4byte	.LVL551-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL552-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL554-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xd3
	.byte	0x9f
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL555-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xd4
	.byte	0x9f
	.4byte	.LVL555-.Ltext0
	.4byte	.LVL556-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xd5
	.byte	0x9f
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xd6
	.byte	0x9f
	.4byte	.LVL557-.Ltext0
	.4byte	.LVL558-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL558-.Ltext0
	.4byte	.LVL559-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xd2
	.byte	0x9f
	.4byte	.LVL559-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL511-1-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL569-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL571-1-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL571-1-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL575-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL625-.Ltext0
	.4byte	.LVL626-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL598-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL618-.Ltext0
	.4byte	.LVL619-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL628-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL573-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL573-1-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL625-.Ltext0
	.4byte	.LVL628-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL583-.Ltext0
	.4byte	.LVL584-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL589-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL594-.Ltext0
	.4byte	.LVL597-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL621-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL625-.Ltext0
	.4byte	.LVL628-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL589-.Ltext0
	.4byte	.LVL590-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL590-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL621-.Ltext0
	.4byte	.LVL623-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL634-.Ltext0
	.4byte	.LVL636-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL635-.Ltext0
	.4byte	.LVL642-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL654-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL654-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL647-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL647-.Ltext0
	.4byte	.LVL653-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL653-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL648-.Ltext0
	.4byte	.LVL649-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL652-.Ltext0
	.4byte	.LVL653-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL657-.Ltext0
	.4byte	.LVL665-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL665-.Ltext0
	.4byte	.LVL669-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL669-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL658-.Ltext0
	.4byte	.LVL659-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -31
	.byte	0x9f
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL660-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -29
	.byte	0x9f
	.4byte	.LVL660-.Ltext0
	.4byte	.LVL662-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL662-.Ltext0
	.4byte	.LVL663-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL663-.Ltext0
	.4byte	.LVL664-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL661-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL672-.Ltext0
	.4byte	.LVL673-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL673-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL678-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL678-1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL675-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL675-.Ltext0
	.4byte	.LVL676-1-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL676-1-.Ltext0
	.4byte	.LVL686-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL715-.Ltext0
	.4byte	.LVL721-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL681-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL699-.Ltext0
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL699-.Ltext0
	.4byte	.LVL700-.Ltext0
	.2byte	0x5
	.byte	0x4f
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL685-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL687-.Ltext0
	.4byte	.LVL688-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL688-.Ltext0
	.4byte	.LVL694-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL695-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL689-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL723-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL723-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL724-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL724-1-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL728-.Ltext0
	.4byte	.LVL729-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL729-.Ltext0
	.4byte	.LVL732-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL739-.Ltext0
	.4byte	.LVL740-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL741-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL741-.Ltext0
	.4byte	.LVL742-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL742-.Ltext0
	.4byte	.LVL743-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL743-.Ltext0
	.4byte	.LVL745-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL747-.Ltext0
	.4byte	.LVL751-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL751-.Ltext0
	.4byte	.LVL753-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL762-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL762-.Ltext0
	.4byte	.LVL764-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL764-.Ltext0
	.4byte	.LVL767-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL772-.Ltext0
	.4byte	.LVL776-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL779-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL726-.Ltext0
	.4byte	.LVL727-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL770-.Ltext0
	.4byte	.LVL771-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL726-.Ltext0
	.4byte	.LVL727-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL770-.Ltext0
	.4byte	.LVL771-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL750-1-.Ltext0
	.2byte	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x1b
	.byte	0x3c
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL760-.Ltext0
	.4byte	.LVL761-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL761-.Ltext0
	.4byte	.LVL762-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL764-.Ltext0
	.4byte	.LVL767-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL772-.Ltext0
	.4byte	.LVL774-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL774-.Ltext0
	.4byte	.LVL775-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL775-1-.Ltext0
	.4byte	.LVL776-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL779-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
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
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB179-.Ltext0
	.4byte	.LBE179-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB173-.Ltext0
	.4byte	.LBE173-.Ltext0
	.4byte	.LBB187-.Ltext0
	.4byte	.LBE187-.Ltext0
	.4byte	.LBB190-.Ltext0
	.4byte	.LBE190-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	.LBB161-.Ltext0
	.4byte	.LBE161-.Ltext0
	.4byte	.LBB162-.Ltext0
	.4byte	.LBE162-.Ltext0
	.4byte	.LBB184-.Ltext0
	.4byte	.LBE184-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	.LBB185-.Ltext0
	.4byte	.LBE185-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	.LBB178-.Ltext0
	.4byte	.LBE178-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB180-.Ltext0
	.4byte	.LBE180-.Ltext0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB191-.Ltext0
	.4byte	.LBE191-.Ltext0
	.4byte	.LBB196-.Ltext0
	.4byte	.LBE196-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB193-.Ltext0
	.4byte	.LBE193-.Ltext0
	.4byte	.LBB194-.Ltext0
	.4byte	.LBE194-.Ltext0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB197-.Ltext0
	.4byte	.LBE197-.Ltext0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	.LBB201-.Ltext0
	.4byte	.LBE201-.Ltext0
	.4byte	.LBB202-.Ltext0
	.4byte	.LBE202-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB198-.Ltext0
	.4byte	.LBE198-.Ltext0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB204-.Ltext0
	.4byte	.LBE204-.Ltext0
	.4byte	.LBB207-.Ltext0
	.4byte	.LBE207-.Ltext0
	.4byte	.LBB208-.Ltext0
	.4byte	.LBE208-.Ltext0
	.4byte	.LBB209-.Ltext0
	.4byte	.LBE209-.Ltext0
	.4byte	.LBB210-.Ltext0
	.4byte	.LBE210-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB205-.Ltext0
	.4byte	.LBE205-.Ltext0
	.4byte	.LBB206-.Ltext0
	.4byte	.LBE206-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB220-.Ltext0
	.4byte	.LBE220-.Ltext0
	.4byte	.LBB221-.Ltext0
	.4byte	.LBE221-.Ltext0
	.4byte	.LBB222-.Ltext0
	.4byte	.LBE222-.Ltext0
	.4byte	.LBB223-.Ltext0
	.4byte	.LBE223-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB225-.Ltext0
	.4byte	.LBE225-.Ltext0
	.4byte	.LBB226-.Ltext0
	.4byte	.LBE226-.Ltext0
	.4byte	.LBB227-.Ltext0
	.4byte	.LBE227-.Ltext0
	.4byte	.LBB228-.Ltext0
	.4byte	.LBE228-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB229-.Ltext0
	.4byte	.LBE229-.Ltext0
	.4byte	.LBB234-.Ltext0
	.4byte	.LBE234-.Ltext0
	.4byte	.LBB236-.Ltext0
	.4byte	.LBE236-.Ltext0
	.4byte	.LBB238-.Ltext0
	.4byte	.LBE238-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB230-.Ltext0
	.4byte	.LBE230-.Ltext0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	.LBB237-.Ltext0
	.4byte	.LBE237-.Ltext0
	.4byte	.LBB239-.Ltext0
	.4byte	.LBE239-.Ltext0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB231-.Ltext0
	.4byte	.LBE231-.Ltext0
	.4byte	.LBB232-.Ltext0
	.4byte	.LBE232-.Ltext0
	.4byte	.LBB233-.Ltext0
	.4byte	.LBE233-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB241-.Ltext0
	.4byte	.LBE241-.Ltext0
	.4byte	.LBB255-.Ltext0
	.4byte	.LBE255-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	.LBB253-.Ltext0
	.4byte	.LBE253-.Ltext0
	.4byte	.LBB254-.Ltext0
	.4byte	.LBE254-.Ltext0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB247-.Ltext0
	.4byte	.LBE247-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	.LBB251-.Ltext0
	.4byte	.LBE251-.Ltext0
	.4byte	.LBB252-.Ltext0
	.4byte	.LBE252-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1695:
	.ascii	"ssecret\000"
.LASF2215:
	.ascii	"totalitems\000"
.LASF2118:
	.ascii	"header_p\000"
.LASF10:
	.ascii	"long long int\000"
.LASF1732:
	.ascii	"comp_666\000"
.LASF316:
	.ascii	"SPR_LAUN\000"
.LASF946:
	.ascii	"S_BOS2_RAISE1\000"
.LASF947:
	.ascii	"S_BOS2_RAISE2\000"
.LASF948:
	.ascii	"S_BOS2_RAISE3\000"
.LASF949:
	.ascii	"S_BOS2_RAISE4\000"
.LASF950:
	.ascii	"S_BOS2_RAISE5\000"
.LASF951:
	.ascii	"S_BOS2_RAISE6\000"
.LASF952:
	.ascii	"S_BOS2_RAISE7\000"
.LASF1701:
	.ascii	"maxkills\000"
.LASF1611:
	.ascii	"momx\000"
.LASF1612:
	.ascii	"momy\000"
.LASF1613:
	.ascii	"momz\000"
.LASF2464:
	.ascii	"P_ArchiveSpecials\000"
.LASF2294:
	.ascii	"key_menu_right\000"
.LASF1562:
	.ascii	"MT_STEALTHFATSO\000"
.LASF2249:
	.ascii	"player_bobbing\000"
.LASF265:
	.ascii	"SPR_SARG\000"
.LASF1958:
	.ascii	"sfx_posit1\000"
.LASF1959:
	.ascii	"sfx_posit2\000"
.LASF1960:
	.ascii	"sfx_posit3\000"
.LASF1795:
	.ascii	"pr_shadow\000"
.LASF314:
	.ascii	"SPR_MGUN\000"
.LASF2417:
	.ascii	"AM_Stop\000"
.LASF711:
	.ascii	"S_SKEL_PAIN\000"
.LASF1752:
	.ascii	"data1\000"
.LASF1632:
	.ascii	"touching_sectorlist\000"
.LASF1754:
	.ascii	"data3\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF1353:
	.ascii	"S_DOGS_PAIN\000"
.LASF1340:
	.ascii	"S_DOGS_STND\000"
.LASF1557:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1420:
	.ascii	"MT_TRACER\000"
.LASF1477:
	.ascii	"MT_CLIP\000"
.LASF82:
	.ascii	"_freelist\000"
.LASF1000:
	.ascii	"S_BSPI_STND\000"
.LASF348:
	.ascii	"SPR_TGRN\000"
.LASF414:
	.ascii	"S_DSNR2\000"
.LASF1610:
	.ascii	"dropoffz\000"
.LASF2119:
	.ascii	"option_p\000"
.LASF1321:
	.ascii	"S_HANGTSKULL\000"
.LASF47:
	.ascii	"_fns\000"
.LASF2206:
	.ascii	"automapmode\000"
.LASF1072:
	.ascii	"S_PAIN_RUN3\000"
.LASF2403:
	.ascii	"P_SwitchWeapon\000"
.LASF412:
	.ascii	"S_DSGUN10\000"
.LASF2149:
	.ascii	"netdemo\000"
.LASF1171:
	.ascii	"S_ARM1A\000"
.LASF226:
	.ascii	"SPR_TROO\000"
.LASF125:
	.ascii	"PU_SOUND\000"
.LASF2052:
	.ascii	"version\000"
.LASF2285:
	.ascii	"skytexture\000"
.LASF2460:
	.ascii	"P_ThinkerToIndex\000"
.LASF111:
	.ascii	"_getdate_err\000"
.LASF1236:
	.ascii	"S_PVIS\000"
.LASF1736:
	.ascii	"COMP_TOTAL\000"
.LASF1605:
	.ascii	"bnext\000"
.LASF443:
	.ascii	"S_PLASMADOWN\000"
.LASF2103:
	.ascii	"line\000"
.LASF1230:
	.ascii	"S_PMAP\000"
.LASF425:
	.ascii	"S_MISSILE\000"
.LASF2084:
	.ascii	"forward\000"
.LASF2317:
	.ascii	"key_help\000"
.LASF445:
	.ascii	"S_PLASMA1\000"
.LASF446:
	.ascii	"S_PLASMA2\000"
.LASF1790:
	.ascii	"pr_lastlook\000"
.LASF845:
	.ascii	"S_SARG_RUN1\000"
.LASF846:
	.ascii	"S_SARG_RUN2\000"
.LASF847:
	.ascii	"S_SARG_RUN3\000"
.LASF848:
	.ascii	"S_SARG_RUN4\000"
.LASF849:
	.ascii	"S_SARG_RUN5\000"
.LASF850:
	.ascii	"S_SARG_RUN6\000"
.LASF851:
	.ascii	"S_SARG_RUN7\000"
.LASF852:
	.ascii	"S_SARG_RUN8\000"
.LASF1906:
	.ascii	"source_iwad\000"
.LASF1686:
	.ascii	"buttons\000"
.LASF81:
	.ascii	"_p5s\000"
.LASF2282:
	.ascii	"mapcolor_me\000"
.LASF284:
	.ascii	"SPR_BEXP\000"
.LASF195:
	.ascii	"ultdoom_compatibility\000"
.LASF427:
	.ascii	"S_MISSILEUP\000"
.LASF1935:
	.ascii	"sfx_sawhit\000"
.LASF810:
	.ascii	"S_TROO_STND\000"
.LASF2273:
	.ascii	"save_p\000"
.LASF2413:
	.ascii	"P_Random\000"
.LASF1934:
	.ascii	"sfx_sawful\000"
.LASF803:
	.ascii	"S_CPOS_RAISE1\000"
.LASF804:
	.ascii	"S_CPOS_RAISE2\000"
.LASF805:
	.ascii	"S_CPOS_RAISE3\000"
.LASF806:
	.ascii	"S_CPOS_RAISE4\000"
.LASF807:
	.ascii	"S_CPOS_RAISE5\000"
.LASF808:
	.ascii	"S_CPOS_RAISE6\000"
.LASF809:
	.ascii	"S_CPOS_RAISE7\000"
.LASF2110:
	.ascii	"G_ReloadDefaults\000"
.LASF1930:
	.ascii	"sfx_plasma\000"
.LASF1604:
	.ascii	"sprev\000"
.LASF25:
	.ascii	"_Bigint\000"
.LASF1651:
	.ascii	"readyweapon\000"
.LASF1417:
	.ascii	"MT_VILE\000"
.LASF1585:
	.ascii	"height\000"
.LASF1204:
	.ascii	"S_RSKULL\000"
.LASF2018:
	.ascii	"sfx_bossit\000"
.LASF1853:
	.ascii	"soundtraversed\000"
.LASF2455:
	.ascii	"D_AdvanceDemo\000"
.LASF2030:
	.ascii	"sfx_radio\000"
.LASF700:
	.ascii	"S_SKEL_RUN10\000"
.LASF1802:
	.ascii	"pr_misfire\000"
.LASF1311:
	.ascii	"S_GTORCHSHRT2\000"
.LASF27:
	.ascii	"_maxwds\000"
.LASF1313:
	.ascii	"S_GTORCHSHRT4\000"
.LASF1306:
	.ascii	"S_BTORCHSHRT\000"
.LASF1569:
	.ascii	"spawnstate\000"
.LASF1696:
	.ascii	"stime\000"
.LASF501:
	.ascii	"S_TFOG2\000"
.LASF2133:
	.ascii	"G_ReadDemoTiccmd\000"
.LASF1202:
	.ascii	"S_BSKULL\000"
.LASF1936:
	.ascii	"sfx_rlaunc\000"
.LASF1335:
	.ascii	"S_TNT1\000"
.LASF1913:
	.ascii	"name\000"
.LASF1812:
	.ascii	"pr_facetarget\000"
.LASF1872:
	.ascii	"floor_yoffs\000"
.LASF2169:
	.ascii	"joyymove\000"
.LASF258:
	.ascii	"SPR_FIRE\000"
.LASF237:
	.ascii	"SPR_SAWG\000"
.LASF123:
	.ascii	"PU_FREE\000"
.LASF1015:
	.ascii	"S_BSPI_ATK1\000"
.LASF1016:
	.ascii	"S_BSPI_ATK2\000"
.LASF1017:
	.ascii	"S_BSPI_ATK3\000"
.LASF1018:
	.ascii	"S_BSPI_ATK4\000"
.LASF189:
	.ascii	"boolean\000"
.LASF2414:
	.ascii	"P_SpawnPlayer\000"
.LASF2296:
	.ascii	"key_menu_up\000"
.LASF2153:
	.ascii	"forced_loadgame\000"
.LASF1082:
	.ascii	"S_PAIN_DIE1\000"
.LASF1083:
	.ascii	"S_PAIN_DIE2\000"
.LASF1084:
	.ascii	"S_PAIN_DIE3\000"
.LASF1085:
	.ascii	"S_PAIN_DIE4\000"
.LASF1086:
	.ascii	"S_PAIN_DIE5\000"
.LASF1087:
	.ascii	"S_PAIN_DIE6\000"
.LASF2358:
	.ascii	"mousebforward\000"
.LASF322:
	.ascii	"SPR_GOR1\000"
.LASF329:
	.ascii	"SPR_GOR2\000"
.LASF330:
	.ascii	"SPR_GOR3\000"
.LASF331:
	.ascii	"SPR_GOR4\000"
.LASF332:
	.ascii	"SPR_GOR5\000"
.LASF1147:
	.ascii	"S_BRAIN_PAIN\000"
.LASF1974:
	.ascii	"sfx_sgtatk\000"
.LASF432:
	.ascii	"S_MISSILEFLASH2\000"
.LASF386:
	.ascii	"S_SGUN\000"
.LASF1664:
	.ascii	"damagecount\000"
.LASF339:
	.ascii	"SPR_CBRA\000"
.LASF2439:
	.ascii	"strncmp\000"
.LASF1811:
	.ascii	"pr_see\000"
.LASF1058:
	.ascii	"S_CYBER_PAIN\000"
.LASF1145:
	.ascii	"S_KEENPAIN2\000"
.LASF368:
	.ascii	"S_NULL\000"
.LASF1909:
	.ascii	"source_pwad\000"
.LASF1427:
	.ascii	"MT_SHADOWS\000"
.LASF2305:
	.ascii	"key_strafe\000"
.LASF1742:
	.ascii	"automapmode_e\000"
.LASF2352:
	.ascii	"key_map_rotate\000"
.LASF1384:
	.ascii	"S_BSKUL_STND\000"
.LASF2178:
	.ascii	"d_skill\000"
.LASF442:
	.ascii	"S_PLASMA\000"
.LASF1807:
	.ascii	"pr_missrange\000"
.LASF1667:
	.ascii	"extralight\000"
.LASF1415:
	.ascii	"MT_POSSESSED\000"
.LASF1153:
	.ascii	"S_BRAINEYESEE\000"
.LASF2211:
	.ascii	"consoleplayer\000"
.LASF1748:
	.ascii	"ev_keyup\000"
.LASF2465:
	.ascii	"P_ArchiveRNG\000"
.LASF917:
	.ascii	"S_BOSS_RAISE1\000"
.LASF918:
	.ascii	"S_BOSS_RAISE2\000"
.LASF919:
	.ascii	"S_BOSS_RAISE3\000"
.LASF920:
	.ascii	"S_BOSS_RAISE4\000"
.LASF921:
	.ascii	"S_BOSS_RAISE5\000"
.LASF922:
	.ascii	"S_BOSS_RAISE6\000"
.LASF923:
	.ascii	"S_BOSS_RAISE7\000"
.LASF2127:
	.ascii	"basename\000"
.LASF2438:
	.ascii	"I_GetTime_RealTime\000"
.LASF55:
	.ascii	"_cookie\000"
.LASF820:
	.ascii	"S_TROO_ATK1\000"
.LASF821:
	.ascii	"S_TROO_ATK2\000"
.LASF822:
	.ascii	"S_TROO_ATK3\000"
.LASF40:
	.ascii	"_on_exit_args\000"
.LASF2329:
	.ascii	"key_weapontoggle\000"
.LASF1956:
	.ascii	"sfx_oof\000"
.LASF15:
	.ascii	"__ap\000"
.LASF2143:
	.ascii	"prevgamestate\000"
.LASF2428:
	.ascii	"fseek\000"
.LASF2286:
	.ascii	"s_GGSAVED\000"
.LASF1856:
	.ascii	"soundorg\000"
.LASF172:
	.ascii	"NUMWEAPONS\000"
.LASF2099:
	.ascii	"slot\000"
.LASF1170:
	.ascii	"S_ARM1\000"
.LASF1172:
	.ascii	"S_ARM2\000"
.LASF1625:
	.ascii	"player\000"
.LASF1923:
	.ascii	"sfx_pistol\000"
.LASF2350:
	.ascii	"key_map_clear\000"
.LASF1993:
	.ascii	"sfx_vildth\000"
.LASF1208:
	.ascii	"S_STIM\000"
.LASF1829:
	.ascii	"pr_all_in_one\000"
.LASF307:
	.ascii	"SPR_BROK\000"
.LASF2387:
	.ascii	"W_LumpLength\000"
.LASF1928:
	.ascii	"sfx_dbcls\000"
.LASF1197:
	.ascii	"S_BKEY2\000"
.LASF595:
	.ascii	"S_SPOS_XDIE1\000"
.LASF596:
	.ascii	"S_SPOS_XDIE2\000"
.LASF597:
	.ascii	"S_SPOS_XDIE3\000"
.LASF598:
	.ascii	"S_SPOS_XDIE4\000"
.LASF599:
	.ascii	"S_SPOS_XDIE5\000"
.LASF600:
	.ascii	"S_SPOS_XDIE6\000"
.LASF601:
	.ascii	"S_SPOS_XDIE7\000"
.LASF602:
	.ascii	"S_SPOS_XDIE8\000"
.LASF603:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1755:
	.ascii	"event_t\000"
.LASF1907:
	.ascii	"source_pre\000"
.LASF2407:
	.ascii	"Z_CheckHeap\000"
.LASF1260:
	.ascii	"S_DEADTORSO\000"
.LASF236:
	.ascii	"SPR_MISF\000"
.LASF235:
	.ascii	"SPR_MISG\000"
.LASF248:
	.ascii	"SPR_MISL\000"
.LASF2106:
	.ascii	"demoplayback\000"
.LASF1154:
	.ascii	"S_BRAINEYE1\000"
.LASF51:
	.ascii	"__sFILE\000"
.LASF2173:
	.ascii	"savegameslot\000"
.LASF1653:
	.ascii	"weaponowned\000"
.LASF1648:
	.ascii	"cards\000"
.LASF1847:
	.ascii	"no_toptextures\000"
.LASF2182:
	.ascii	"demolumpnum\000"
.LASF1884:
	.ascii	"sidenum\000"
.LASF292:
	.ascii	"SPR_RSKU\000"
.LASF1902:
	.ascii	"RF_IGNORE\000"
.LASF2024:
	.ascii	"sfx_ssdth\000"
.LASF2107:
	.ascii	"G_DeferedInitNew\000"
.LASF2036:
	.ascii	"NUMSFX\000"
.LASF2363:
	.ascii	"joybstrafe\000"
.LASF2049:
	.ascii	"desc\000"
.LASF185:
	.ascii	"pw_allmap\000"
.LASF2444:
	.ascii	"P_MapStart\000"
.LASF1270:
	.ascii	"S_MEAT2\000"
.LASF1271:
	.ascii	"S_MEAT3\000"
.LASF1272:
	.ascii	"S_MEAT4\000"
.LASF1273:
	.ascii	"S_MEAT5\000"
.LASF2284:
	.ascii	"idmusnum\000"
.LASF444:
	.ascii	"S_PLASMAUP\000"
.LASF2058:
	.ascii	"W_CheckNumForName\000"
.LASF1631:
	.ascii	"movefactor\000"
.LASF378:
	.ascii	"S_PISTOL\000"
.LASF1285:
	.ascii	"S_EVILEYE\000"
.LASF1633:
	.ascii	"PrevX\000"
.LASF1634:
	.ascii	"PrevY\000"
.LASF366:
	.ascii	"NUMSPRITES\000"
.LASF522:
	.ascii	"S_PLAY_ATK1\000"
.LASF523:
	.ascii	"S_PLAY_ATK2\000"
.LASF2459:
	.ascii	"P_ArchivePlayers\000"
.LASF2321:
	.ascii	"key_endgame\000"
.LASF1845:
	.ascii	"degenmobj_t\000"
.LASF178:
	.ascii	"am_misl\000"
.LASF2167:
	.ascii	"dclicks2\000"
.LASF2055:
	.ascii	"maxsize\000"
.LASF1177:
	.ascii	"S_BEXP2\000"
.LASF1178:
	.ascii	"S_BEXP3\000"
.LASF1179:
	.ascii	"S_BEXP4\000"
.LASF1180:
	.ascii	"S_BEXP5\000"
.LASF80:
	.ascii	"_result_k\000"
.LASF1274:
	.ascii	"S_STALAGTITE\000"
.LASF361:
	.ascii	"SPR_BRS1\000"
.LASF105:
	.ascii	"_r48\000"
.LASF1624:
	.ascii	"gear\000"
.LASF217:
	.ascii	"think_t\000"
.LASF1568:
	.ascii	"doomednum\000"
.LASF1645:
	.ascii	"armorpoints\000"
.LASF2259:
	.ascii	"monster_avoid_hazards\000"
.LASF2408:
	.ascii	"R_ActivateSectorInterpolations\000"
.LASF387:
	.ascii	"S_SGUNDOWN\000"
.LASF1775:
	.ascii	"BTS_SAVEGAME\000"
.LASF1656:
	.ascii	"attackdown\000"
.LASF1464:
	.ascii	"MT_MISC7\000"
.LASF1465:
	.ascii	"MT_MISC8\000"
.LASF1466:
	.ascii	"MT_MISC9\000"
.LASF2054:
	.ascii	"current_p\000"
.LASF2425:
	.ascii	"I_GetRandomTimeSeed\000"
.LASF2047:
	.ascii	"size\000"
.LASF1813:
	.ascii	"pr_posattack\000"
.LASF475:
	.ascii	"S_PLASBALL\000"
.LASF1833:
	.ascii	"pr_threshold\000"
.LASF1617:
	.ascii	"health\000"
.LASF2290:
	.ascii	"key_right\000"
.LASF148:
	.ascii	"gamestate_t\000"
.LASF2256:
	.ascii	"default_distfriend\000"
.LASF1647:
	.ascii	"powers\000"
.LASF1021:
	.ascii	"S_BSPI_DIE1\000"
.LASF1022:
	.ascii	"S_BSPI_DIE2\000"
.LASF334:
	.ascii	"SPR_COL1\000"
.LASF293:
	.ascii	"SPR_YSKU\000"
.LASF336:
	.ascii	"SPR_COL3\000"
.LASF337:
	.ascii	"SPR_COL4\000"
.LASF346:
	.ascii	"SPR_COL5\000"
.LASF340:
	.ascii	"SPR_COL6\000"
.LASF1601:
	.ascii	"mobj_s\000"
.LASF2281:
	.ascii	"mapcolor_plyr\000"
.LASF1680:
	.ascii	"mobj_t\000"
.LASF1276:
	.ascii	"S_SHRTGRNCOL\000"
.LASF2299:
	.ascii	"key_menu_escape\000"
.LASF1753:
	.ascii	"data2\000"
.LASF320:
	.ascii	"SPR_COLU\000"
.LASF1981:
	.ascii	"sfx_podth1\000"
.LASF39:
	.ascii	"__tm_isdst\000"
.LASF2421:
	.ascii	"atoi\000"
.LASF2175:
	.ascii	"map_old_comp_levels\000"
.LASF1898:
	.ascii	"slopetype_t\000"
.LASF2185:
	.ascii	"states\000"
.LASF2269:
	.ascii	"gameaction\000"
.LASF163:
	.ascii	"wp_fist\000"
.LASF482:
	.ascii	"S_ROCKET\000"
.LASF1644:
	.ascii	"deltaviewheight\000"
.LASF1368:
	.ascii	"S_OLDBFG42\000"
.LASF1369:
	.ascii	"S_OLDBFG43\000"
.LASF1848:
	.ascii	"no_bottomtextures\000"
.LASF1862:
	.ascii	"prevsec\000"
.LASF969:
	.ascii	"S_SPID_STND\000"
.LASF2:
	.ascii	"size_t\000"
.LASF1723:
	.ascii	"comp_doorstuck\000"
.LASF207:
	.ascii	"prboom_4_compatibility\000"
.LASF727:
	.ascii	"S_FATSHOTX1\000"
.LASF728:
	.ascii	"S_FATSHOTX2\000"
.LASF729:
	.ascii	"S_FATSHOTX3\000"
.LASF184:
	.ascii	"pw_ironfeet\000"
.LASF2220:
	.ascii	"demorecording\000"
.LASF1257:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF64:
	.ascii	"_data\000"
.LASF2197:
	.ascii	"default_comp\000"
.LASF1984:
	.ascii	"sfx_bgdth1\000"
.LASF1985:
	.ascii	"sfx_bgdth2\000"
.LASF204:
	.ascii	"prboom_1_compatibility\000"
.LASF825:
	.ascii	"S_TROO_DIE1\000"
.LASF826:
	.ascii	"S_TROO_DIE2\000"
.LASF827:
	.ascii	"S_TROO_DIE3\000"
.LASF828:
	.ascii	"S_TROO_DIE4\000"
.LASF829:
	.ascii	"S_TROO_DIE5\000"
.LASF2365:
	.ascii	"joybspeed\000"
.LASF2177:
	.ascii	"num_version_headers\000"
.LASF1597:
	.ascii	"angle\000"
.LASF2116:
	.ascii	"G_GetOriginalDoomCompatLevel\000"
.LASF1264:
	.ascii	"S_HEADONASTICK\000"
.LASF577:
	.ascii	"S_SPOS_RUN1\000"
.LASF578:
	.ascii	"S_SPOS_RUN2\000"
.LASF579:
	.ascii	"S_SPOS_RUN3\000"
.LASF580:
	.ascii	"S_SPOS_RUN4\000"
.LASF581:
	.ascii	"S_SPOS_RUN5\000"
.LASF582:
	.ascii	"S_SPOS_RUN6\000"
.LASF583:
	.ascii	"S_SPOS_RUN7\000"
.LASF584:
	.ascii	"S_SPOS_RUN8\000"
.LASF271:
	.ascii	"SPR_SPID\000"
.LASF1152:
	.ascii	"S_BRAINEYE\000"
.LASF266:
	.ascii	"SPR_HEAD\000"
.LASF955:
	.ascii	"S_SKULL_RUN1\000"
.LASF956:
	.ascii	"S_SKULL_RUN2\000"
.LASF1697:
	.ascii	"score\000"
.LASF2362:
	.ascii	"joybfire\000"
.LASF213:
	.ascii	"complevel_t\000"
.LASF118:
	.ascii	"_nextf\000"
.LASF2326:
	.ascii	"key_spy\000"
.LASF196:
	.ascii	"finaldoom_compatibility\000"
.LASF925:
	.ascii	"S_BOS2_STND2\000"
.LASF45:
	.ascii	"_atexit\000"
.LASF1982:
	.ascii	"sfx_podth2\000"
.LASF1983:
	.ascii	"sfx_podth3\000"
.LASF717:
	.ascii	"S_SKEL_DIE5\000"
.LASF2288:
	.ascii	"initial_health\000"
.LASF1745:
	.ascii	"mnact_float\000"
.LASF638:
	.ascii	"S_VILE_PAIN2\000"
.LASF1142:
	.ascii	"S_COMMKEEN11\000"
.LASF1143:
	.ascii	"S_COMMKEEN12\000"
.LASF1184:
	.ascii	"S_BON1\000"
.LASF1190:
	.ascii	"S_BON2\000"
.LASF1382:
	.ascii	"S_BON3\000"
.LASF1383:
	.ascii	"S_BON4\000"
.LASF1646:
	.ascii	"armortype\000"
.LASF2378:
	.ascii	"forceOldBsp\000"
.LASF789:
	.ascii	"S_CPOS_PAIN2\000"
.LASF1602:
	.ascii	"thinker\000"
.LASF274:
	.ascii	"SPR_APBX\000"
.LASF187:
	.ascii	"NUMPOWERS\000"
.LASF2228:
	.ascii	"playeringame\000"
.LASF1781:
	.ascii	"pr_damage\000"
.LASF2056:
	.ascii	"failonerror\000"
.LASF288:
	.ascii	"SPR_BKEY\000"
.LASF1566:
	.ascii	"NUMMOBJTYPES\000"
.LASF2063:
	.ascii	"G_Compatibility\000"
.LASF157:
	.ascii	"it_yellowcard\000"
.LASF1372:
	.ascii	"S_PLS1EXP\000"
.LASF1640:
	.ascii	"player_s\000"
.LASF1692:
	.ascii	"player_t\000"
.LASF1262:
	.ascii	"S_HEADSONSTICK\000"
.LASF452:
	.ascii	"S_BFG1\000"
.LASF453:
	.ascii	"S_BFG2\000"
.LASF454:
	.ascii	"S_BFG3\000"
.LASF455:
	.ascii	"S_BFG4\000"
.LASF415:
	.ascii	"S_DSGUNFLASH1\000"
.LASF416:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1324:
	.ascii	"S_COLONGIBS\000"
.LASF2430:
	.ascii	"Z_Malloc\000"
.LASF467:
	.ascii	"S_TBALLX1\000"
.LASF468:
	.ascii	"S_TBALLX2\000"
.LASF469:
	.ascii	"S_TBALLX3\000"
.LASF1693:
	.ascii	"skills\000"
.LASF1979:
	.ascii	"sfx_pldeth\000"
.LASF498:
	.ascii	"S_TFOG\000"
.LASF17:
	.ascii	"__wchb\000"
.LASF428:
	.ascii	"S_MISSILE1\000"
.LASF429:
	.ascii	"S_MISSILE2\000"
.LASF430:
	.ascii	"S_MISSILE3\000"
.LASF222:
	.ascii	"cnext\000"
.LASF2441:
	.ascii	"__builtin_strcpy\000"
.LASF1991:
	.ascii	"sfx_spidth\000"
.LASF1765:
	.ascii	"gameaction_t\000"
.LASF908:
	.ascii	"S_BOSS_PAIN\000"
.LASF86:
	.ascii	"_atexit0\000"
.LASF370:
	.ascii	"S_PUNCH\000"
.LASF970:
	.ascii	"S_SPID_STND2\000"
.LASF2420:
	.ascii	"doom_snprintf\000"
.LASF1659:
	.ascii	"refire\000"
.LASF1883:
	.ascii	"iLineID\000"
.LASF1679:
	.ascii	"visited\000"
.LASF2015:
	.ascii	"sfx_getpow\000"
.LASF1299:
	.ascii	"S_GREENTORCH2\000"
.LASF2394:
	.ascii	"S_StartSound\000"
.LASF754:
	.ascii	"S_FATT_PAIN\000"
.LASF101:
	.ascii	"_asctime_buf\000"
.LASF527:
	.ascii	"S_PLAY_DIE2\000"
.LASF528:
	.ascii	"S_PLAY_DIE3\000"
.LASF529:
	.ascii	"S_PLAY_DIE4\000"
.LASF530:
	.ascii	"S_PLAY_DIE5\000"
.LASF531:
	.ascii	"S_PLAY_DIE6\000"
.LASF532:
	.ascii	"S_PLAY_DIE7\000"
.LASF2012:
	.ascii	"sfx_itmbk\000"
.LASF77:
	.ascii	"__sdidinit\000"
.LASF1436:
	.ascii	"MT_PAIN\000"
.LASF2432:
	.ascii	"AddDefaultExtension\000"
.LASF1779:
	.ascii	"buttoncode_t\000"
.LASF1778:
	.ascii	"BTS_SAVESHIFT\000"
.LASF179:
	.ascii	"NUMAMMO\000"
.LASF227:
	.ascii	"SPR_SHTG\000"
.LASF168:
	.ascii	"wp_plasma\000"
.LASF1661:
	.ascii	"itemcount\000"
.LASF1916:
	.ascii	"ns_global\000"
.LASF983:
	.ascii	"S_SPID_ATK1\000"
.LASF984:
	.ascii	"S_SPID_ATK2\000"
.LASF985:
	.ascii	"S_SPID_ATK3\000"
.LASF986:
	.ascii	"S_SPID_ATK4\000"
.LASF1843:
	.ascii	"pr_class_t\000"
.LASF2257:
	.ascii	"monster_backing\000"
.LASF98:
	.ascii	"_add\000"
.LASF2045:
	.ascii	"block_memory_alloc_s\000"
.LASF2112:
	.ascii	"G_DoNewGame\000"
.LASF2068:
	.ascii	"realtics\000"
.LASF398:
	.ascii	"S_SGUNFLASH1\000"
.LASF399:
	.ascii	"S_SGUNFLASH2\000"
.LASF120:
	.ascii	"_unused\000"
.LASF1670:
	.ascii	"psprites\000"
.LASF2292:
	.ascii	"key_up\000"
.LASF2234:
	.ascii	"mouseSensitivity_horiz\000"
.LASF1238:
	.ascii	"S_CLIP\000"
.LASF2226:
	.ascii	"gametic\000"
.LASF1998:
	.ascii	"sfx_bgact\000"
.LASF1450:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1378:
	.ascii	"S_PLS2BALL2\000"
.LASF1943:
	.ascii	"sfx_dorcls\000"
.LASF843:
	.ascii	"S_SARG_STND\000"
.LASF755:
	.ascii	"S_FATT_PAIN2\000"
.LASF511:
	.ascii	"S_IFOG01\000"
.LASF512:
	.ascii	"S_IFOG02\000"
.LASF2277:
	.ascii	"basesavegame\000"
.LASF2433:
	.ascii	"access\000"
.LASF1816:
	.ascii	"pr_spidrefire\000"
.LASF299:
	.ascii	"SPR_PINS\000"
.LASF2410:
	.ascii	"F_Responder\000"
.LASF297:
	.ascii	"SPR_PINV\000"
.LASF256:
	.ascii	"SPR_SPOS\000"
.LASF1389:
	.ascii	"S_BSKUL_ATK1\000"
.LASF1390:
	.ascii	"S_BSKUL_ATK2\000"
.LASF1391:
	.ascii	"S_BSKUL_ATK3\000"
.LASF28:
	.ascii	"_sign\000"
.LASF2437:
	.ascii	"W_GetNumForName\000"
.LASF400:
	.ascii	"S_DSGUN\000"
.LASF2051:
	.ascii	"ver_printf\000"
.LASF824:
	.ascii	"S_TROO_PAIN2\000"
.LASF1792:
	.ascii	"pr_spawnpuff\000"
.LASF1789:
	.ascii	"pr_respawn\000"
.LASF1734:
	.ascii	"comp_maskedanim\000"
.LASF2109:
	.ascii	"G_GetHelpers\000"
.LASF1836:
	.ascii	"pr_avoidcrush\000"
.LASF1167:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF2422:
	.ascii	"M_CheckParm\000"
.LASF1168:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1169:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF996:
	.ascii	"S_SPID_DIE8\000"
.LASF1989:
	.ascii	"sfx_brsdth\000"
.LASF2278:
	.ascii	"clnomonsters\000"
.LASF1444:
	.ascii	"MT_BARREL\000"
.LASF1468:
	.ascii	"MT_MISC11\000"
.LASF1469:
	.ascii	"MT_MISC12\000"
.LASF1471:
	.ascii	"MT_MISC13\000"
.LASF1473:
	.ascii	"MT_MISC14\000"
.LASF1474:
	.ascii	"MT_MISC15\000"
.LASF1475:
	.ascii	"MT_MISC16\000"
.LASF1478:
	.ascii	"MT_MISC17\000"
.LASF1479:
	.ascii	"MT_MISC18\000"
.LASF1480:
	.ascii	"MT_MISC19\000"
.LASF1176:
	.ascii	"S_BEXP\000"
.LASF89:
	.ascii	"__sf\000"
.LASF2157:
	.ascii	"turnheld\000"
.LASF71:
	.ascii	"_stdout\000"
.LASF1020:
	.ascii	"S_BSPI_PAIN2\000"
.LASF2355:
	.ascii	"autorun\000"
.LASF649:
	.ascii	"S_FIRE1\000"
.LASF650:
	.ascii	"S_FIRE2\000"
.LASF651:
	.ascii	"S_FIRE3\000"
.LASF652:
	.ascii	"S_FIRE4\000"
.LASF653:
	.ascii	"S_FIRE5\000"
.LASF654:
	.ascii	"S_FIRE6\000"
.LASF655:
	.ascii	"S_FIRE7\000"
.LASF656:
	.ascii	"S_FIRE8\000"
.LASF657:
	.ascii	"S_FIRE9\000"
.LASF2353:
	.ascii	"key_map_overlay\000"
.LASF1819:
	.ascii	"pr_headattack\000"
.LASF160:
	.ascii	"it_yellowskull\000"
.LASF2131:
	.ascii	"vcheck\000"
.LASF1452:
	.ascii	"MT_BLOOD\000"
.LASF1619:
	.ascii	"movecount\000"
.LASF1481:
	.ascii	"MT_MISC20\000"
.LASF1482:
	.ascii	"MT_MISC21\000"
.LASF1483:
	.ascii	"MT_MISC22\000"
.LASF1484:
	.ascii	"MT_MISC23\000"
.LASF1485:
	.ascii	"MT_MISC24\000"
.LASF1486:
	.ascii	"MT_MISC25\000"
.LASF1488:
	.ascii	"MT_MISC26\000"
.LASF347:
	.ascii	"SPR_TBLU\000"
.LASF1206:
	.ascii	"S_YSKULL\000"
.LASF437:
	.ascii	"S_SAWDOWN\000"
.LASF134:
	.ascii	"commercial\000"
.LASF1096:
	.ascii	"S_SSWV_RUN1\000"
.LASF1097:
	.ascii	"S_SSWV_RUN2\000"
.LASF1098:
	.ascii	"S_SSWV_RUN3\000"
.LASF1099:
	.ascii	"S_SSWV_RUN4\000"
.LASF1100:
	.ascii	"S_SSWV_RUN5\000"
.LASF30:
	.ascii	"__tm\000"
.LASF1102:
	.ascii	"S_SSWV_RUN7\000"
.LASF1103:
	.ascii	"S_SSWV_RUN8\000"
.LASF2213:
	.ascii	"totalkills\000"
.LASF164:
	.ascii	"wp_pistol\000"
.LASF127:
	.ascii	"PU_LEVEL\000"
.LASF533:
	.ascii	"S_PLAY_XDIE1\000"
.LASF534:
	.ascii	"S_PLAY_XDIE2\000"
.LASF535:
	.ascii	"S_PLAY_XDIE3\000"
.LASF536:
	.ascii	"S_PLAY_XDIE4\000"
.LASF537:
	.ascii	"S_PLAY_XDIE5\000"
.LASF538:
	.ascii	"S_PLAY_XDIE6\000"
.LASF539:
	.ascii	"S_PLAY_XDIE7\000"
.LASF540:
	.ascii	"S_PLAY_XDIE8\000"
.LASF541:
	.ascii	"S_PLAY_XDIE9\000"
.LASF1821:
	.ascii	"pr_tracer\000"
.LASF1472:
	.ascii	"MT_INS\000"
.LASF1470:
	.ascii	"MT_INV\000"
.LASF2473:
	.ascii	"WI_Ticker\000"
.LASF447:
	.ascii	"S_PLASMAFLASH1\000"
.LASF448:
	.ascii	"S_PLASMAFLASH2\000"
.LASF1496:
	.ascii	"MT_MISC32\000"
.LASF1497:
	.ascii	"MT_MISC33\000"
.LASF1498:
	.ascii	"MT_MISC34\000"
.LASF1499:
	.ascii	"MT_MISC35\000"
.LASF1500:
	.ascii	"MT_MISC36\000"
.LASF1501:
	.ascii	"MT_MISC37\000"
.LASF1502:
	.ascii	"MT_MISC38\000"
.LASF1503:
	.ascii	"MT_MISC39\000"
.LASF315:
	.ascii	"SPR_CSAW\000"
.LASF853:
	.ascii	"S_SARG_ATK1\000"
.LASF854:
	.ascii	"S_SARG_ATK2\000"
.LASF855:
	.ascii	"S_SARG_ATK3\000"
.LASF54:
	.ascii	"_lbfsize\000"
.LASF1727:
	.ascii	"comp_infcheat\000"
.LASF1211:
	.ascii	"S_SOUL2\000"
.LASF1212:
	.ascii	"S_SOUL3\000"
.LASF1213:
	.ascii	"S_SOUL4\000"
.LASF1214:
	.ascii	"S_SOUL5\000"
.LASF1215:
	.ascii	"S_SOUL6\000"
.LASF1844:
	.ascii	"vertex_t\000"
.LASF621:
	.ascii	"S_VILE_RUN11\000"
.LASF2044:
	.ascii	"OutputLevels\000"
.LASF182:
	.ascii	"pw_strength\000"
.LASF1576:
	.ascii	"painchance\000"
.LASF1253:
	.ascii	"S_SHOT2\000"
.LASF2145:
	.ascii	"secnodezone\000"
.LASF1504:
	.ascii	"MT_MISC40\000"
.LASF1505:
	.ascii	"MT_MISC41\000"
.LASF1506:
	.ascii	"MT_MISC42\000"
.LASF1507:
	.ascii	"MT_MISC43\000"
.LASF1508:
	.ascii	"MT_MISC44\000"
.LASF216:
	.ascii	"actionf_t\000"
.LASF1510:
	.ascii	"MT_MISC46\000"
.LASF1511:
	.ascii	"MT_MISC47\000"
.LASF1512:
	.ascii	"MT_MISC48\000"
.LASF1513:
	.ascii	"MT_MISC49\000"
.LASF273:
	.ascii	"SPR_APLS\000"
.LASF230:
	.ascii	"SPR_PISF\000"
.LASF229:
	.ascii	"SPR_PISG\000"
.LASF155:
	.ascii	"skill_t\000"
.LASF2227:
	.ascii	"players\000"
.LASF56:
	.ascii	"_read\000"
.LASF52:
	.ascii	"_flags\000"
.LASF2405:
	.ascii	"M_StartControlPanel\000"
.LASF74:
	.ascii	"_emergency\000"
.LASF1371:
	.ascii	"S_PLS1BALL2\000"
.LASF1793:
	.ascii	"pr_spawnblood\000"
.LASF1028:
	.ascii	"S_BSPI_RAISE1\000"
.LASF1029:
	.ascii	"S_BSPI_RAISE2\000"
.LASF1030:
	.ascii	"S_BSPI_RAISE3\000"
.LASF1031:
	.ascii	"S_BSPI_RAISE4\000"
.LASF1032:
	.ascii	"S_BSPI_RAISE5\000"
.LASF1033:
	.ascii	"S_BSPI_RAISE6\000"
.LASF1034:
	.ascii	"S_BSPI_RAISE7\000"
.LASF1121:
	.ascii	"S_SSWV_XDIE5\000"
.LASF1122:
	.ascii	"S_SSWV_XDIE6\000"
.LASF1123:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1124:
	.ascii	"S_SSWV_XDIE8\000"
.LASF1125:
	.ascii	"S_SSWV_XDIE9\000"
.LASF2072:
	.ascii	"G_Signature\000"
.LASF119:
	.ascii	"_nmalloc\000"
.LASF1672:
	.ascii	"msecnode_s\000"
.LASF1449:
	.ascii	"MT_BFG\000"
.LASF1735:
	.ascii	"COMP_NUM\000"
.LASF1514:
	.ascii	"MT_MISC50\000"
.LASF1515:
	.ascii	"MT_MISC51\000"
.LASF1516:
	.ascii	"MT_MISC52\000"
.LASF1517:
	.ascii	"MT_MISC53\000"
.LASF1518:
	.ascii	"MT_MISC54\000"
.LASF1519:
	.ascii	"MT_MISC55\000"
.LASF1520:
	.ascii	"MT_MISC56\000"
.LASF1521:
	.ascii	"MT_MISC57\000"
.LASF1522:
	.ascii	"MT_MISC58\000"
.LASF1429:
	.ascii	"MT_BRUISER\000"
.LASF29:
	.ascii	"_wds\000"
.LASF133:
	.ascii	"registered\000"
.LASF2400:
	.ascii	"D_StartTitle\000"
.LASF2082:
	.ascii	"bstrafe\000"
.LASF234:
	.ascii	"SPR_CHGF\000"
.LASF233:
	.ascii	"SPR_CHGG\000"
.LASF147:
	.ascii	"GS_DEMOSCREEN\000"
.LASF1851:
	.ascii	"nexttag\000"
.LASF1093:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1744:
	.ascii	"mnact_inactive\000"
.LASF83:
	.ascii	"_cvtlen\000"
.LASF1814:
	.ascii	"pr_sposattack\000"
.LASF1441:
	.ascii	"MT_BOSSTARGET\000"
.LASF1525:
	.ascii	"MT_MISC61\000"
.LASF1526:
	.ascii	"MT_MISC62\000"
.LASF1527:
	.ascii	"MT_MISC63\000"
.LASF1528:
	.ascii	"MT_MISC64\000"
.LASF1529:
	.ascii	"MT_MISC65\000"
.LASF1530:
	.ascii	"MT_MISC66\000"
.LASF1531:
	.ascii	"MT_MISC67\000"
.LASF1532:
	.ascii	"MT_MISC68\000"
.LASF1533:
	.ascii	"MT_MISC69\000"
.LASF2043:
	.ascii	"LO_ALWAYS\000"
.LASF1924:
	.ascii	"sfx_shotgn\000"
.LASF319:
	.ascii	"SPR_SGN2\000"
.LASF2343:
	.ascii	"key_map_down\000"
.LASF2059:
	.ascii	"fudgea\000"
.LASF1443:
	.ascii	"MT_SPAWNFIRE\000"
.LASF2080:
	.ascii	"fudgef\000"
.LASF2479:
	.ascii	"G_PlayerFinishLevel\000"
.LASF260:
	.ascii	"SPR_FBXP\000"
.LASF2457:
	.ascii	"exit\000"
.LASF2097:
	.ascii	"G_ForcedLoadGame\000"
.LASF108:
	.ascii	"_wctomb_state\000"
.LASF1245:
	.ascii	"S_SBOX\000"
.LASF1534:
	.ascii	"MT_MISC70\000"
.LASF1535:
	.ascii	"MT_MISC71\000"
.LASF94:
	.ascii	"_iobs\000"
.LASF1537:
	.ascii	"MT_MISC73\000"
.LASF1538:
	.ascii	"MT_MISC74\000"
.LASF1539:
	.ascii	"MT_MISC75\000"
.LASF1540:
	.ascii	"MT_MISC76\000"
.LASF1440:
	.ascii	"MT_BOSSSPIT\000"
.LASF1542:
	.ascii	"MT_MISC78\000"
.LASF1543:
	.ascii	"MT_MISC79\000"
.LASF2382:
	.ascii	"P_SetupLevel\000"
.LASF2174:
	.ascii	"secretexit\000"
.LASF1685:
	.ascii	"chatchar\000"
.LASF510:
	.ascii	"S_IFOG\000"
.LASF989:
	.ascii	"S_SPID_DIE1\000"
.LASF990:
	.ascii	"S_SPID_DIE2\000"
.LASF991:
	.ascii	"S_SPID_DIE3\000"
.LASF992:
	.ascii	"S_SPID_DIE4\000"
.LASF993:
	.ascii	"S_SPID_DIE5\000"
.LASF994:
	.ascii	"S_SPID_DIE6\000"
.LASF995:
	.ascii	"S_SPID_DIE7\000"
.LASF126:
	.ascii	"PU_MUSIC\000"
.LASF997:
	.ascii	"S_SPID_DIE9\000"
.LASF2347:
	.ascii	"key_map_gobig\000"
.LASF87:
	.ascii	"_sig_func\000"
.LASF2231:
	.ascii	"playerstarts\000"
.LASF1662:
	.ascii	"secretcount\000"
.LASF2304:
	.ascii	"key_use\000"
.LASF2381:
	.ascii	"R_TextureNumForName\000"
.LASF1841:
	.ascii	"pr_defect\000"
.LASF1544:
	.ascii	"MT_MISC80\000"
.LASF1545:
	.ascii	"MT_MISC81\000"
.LASF1546:
	.ascii	"MT_MISC82\000"
.LASF1547:
	.ascii	"MT_MISC83\000"
.LASF1548:
	.ascii	"MT_MISC84\000"
.LASF1549:
	.ascii	"MT_MISC85\000"
.LASF1550:
	.ascii	"MT_MISC86\000"
.LASF1428:
	.ascii	"MT_HEAD\000"
.LASF2275:
	.ascii	"numwadfiles\000"
.LASF1944:
	.ascii	"sfx_stnmov\000"
.LASF2359:
	.ascii	"mousebbackward\000"
.LASF2395:
	.ascii	"I_Error\000"
.LASF401:
	.ascii	"S_DSGUNDOWN\000"
.LASF1994:
	.ascii	"sfx_kntdth\000"
.LASF1654:
	.ascii	"ammo\000"
.LASF1803:
	.ascii	"pr_shotgun\000"
.LASF1068:
	.ascii	"S_CYBER_DIE10\000"
.LASF844:
	.ascii	"S_SARG_STND2\000"
.LASF1395:
	.ascii	"S_BSKUL_DIE1\000"
.LASF1396:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1397:
	.ascii	"S_BSKUL_DIE3\000"
.LASF1398:
	.ascii	"S_BSKUL_DIE4\000"
.LASF1399:
	.ascii	"S_BSKUL_DIE5\000"
.LASF1400:
	.ascii	"S_BSKUL_DIE6\000"
.LASF1401:
	.ascii	"S_BSKUL_DIE7\000"
.LASF1402:
	.ascii	"S_BSKUL_DIE8\000"
.LASF2399:
	.ascii	"M_ForcedLoadGame\000"
.LASF2212:
	.ascii	"displayplayer\000"
.LASF1237:
	.ascii	"S_PVIS2\000"
.LASF1410:
	.ascii	"nextstate\000"
.LASF1247:
	.ascii	"S_BFUG\000"
.LASF303:
	.ascii	"SPR_PVIS\000"
.LASF2034:
	.ascii	"sfx_dgdth\000"
.LASF183:
	.ascii	"pw_invisibility\000"
.LASF2100:
	.ascii	"command\000"
.LASF302:
	.ascii	"SPR_PMAP\000"
.LASF2075:
	.ascii	"G_CheckSpot\000"
.LASF1636:
	.ascii	"subsector_s\000"
.LASF1905:
	.ascii	"subsector_t\000"
.LASF2385:
	.ascii	"HU_Start\000"
.LASF1002:
	.ascii	"S_BSPI_SIGHT\000"
.LASF2003:
	.ascii	"sfx_noway\000"
.LASF2320:
	.ascii	"key_quicksave\000"
.LASF2064:
	.ascii	"G_SetFastParms\000"
.LASF1951:
	.ascii	"sfx_mnpain\000"
.LASF1921:
	.ascii	"ns_prboom\000"
.LASF1694:
	.ascii	"sitems\000"
.LASF1623:
	.ascii	"pursuecount\000"
.LASF725:
	.ascii	"S_FATSHOT1\000"
.LASF726:
	.ascii	"S_FATSHOT2\000"
.LASF1831:
	.ascii	"pr_targetsearch\000"
.LASF1892:
	.ascii	"r_flags\000"
.LASF2184:
	.ascii	"finetangent\000"
.LASF2202:
	.ascii	"gamemap\000"
.LASF1255:
	.ascii	"S_STALAG\000"
.LASF2195:
	.ascii	"default_demo_insurance\000"
.LASF470:
	.ascii	"S_RBALL1\000"
.LASF471:
	.ascii	"S_RBALL2\000"
.LASF1319:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF181:
	.ascii	"pw_invulnerability\000"
.LASF2390:
	.ascii	"sprintf\000"
.LASF1373:
	.ascii	"S_PLS1EXP2\000"
.LASF1374:
	.ascii	"S_PLS1EXP3\000"
.LASF1375:
	.ascii	"S_PLS1EXP4\000"
.LASF1376:
	.ascii	"S_PLS1EXP5\000"
.LASF221:
	.ascii	"function\000"
.LASF2331:
	.ascii	"key_weapon2\000"
.LASF1491:
	.ascii	"MT_SHOTGUN\000"
.LASF2463:
	.ascii	"P_IndexToThinker\000"
.LASF1801:
	.ascii	"pr_gunshot\000"
.LASF1416:
	.ascii	"MT_SHOTGUY\000"
.LASF1760:
	.ascii	"ga_savegame\000"
.LASF2411:
	.ascii	"S_PauseSound\000"
.LASF2162:
	.ascii	"dclicktime\000"
.LASF1425:
	.ascii	"MT_TROOP\000"
.LASF1967:
	.ascii	"sfx_spisit\000"
.LASF926:
	.ascii	"S_BOS2_RUN1\000"
.LASF927:
	.ascii	"S_BOS2_RUN2\000"
.LASF928:
	.ascii	"S_BOS2_RUN3\000"
.LASF929:
	.ascii	"S_BOS2_RUN4\000"
.LASF930:
	.ascii	"S_BOS2_RUN5\000"
.LASF931:
	.ascii	"S_BOS2_RUN6\000"
.LASF932:
	.ascii	"S_BOS2_RUN7\000"
.LASF933:
	.ascii	"S_BOS2_RUN8\000"
.LASF145:
	.ascii	"GS_INTERMISSION\000"
.LASF68:
	.ascii	"_reent\000"
.LASF199:
	.ascii	"boom_compatibility_compatibility\000"
.LASF2172:
	.ascii	"special_event\000"
.LASF2323:
	.ascii	"key_quickload\000"
.LASF63:
	.ascii	"_offset\000"
.LASF858:
	.ascii	"S_SARG_DIE1\000"
.LASF859:
	.ascii	"S_SARG_DIE2\000"
.LASF860:
	.ascii	"S_SARG_DIE3\000"
.LASF861:
	.ascii	"S_SARG_DIE4\000"
.LASF862:
	.ascii	"S_SARG_DIE5\000"
.LASF863:
	.ascii	"S_SARG_DIE6\000"
.LASF544:
	.ascii	"S_POSS_RUN1\000"
.LASF545:
	.ascii	"S_POSS_RUN2\000"
.LASF546:
	.ascii	"S_POSS_RUN3\000"
.LASF547:
	.ascii	"S_POSS_RUN4\000"
.LASF548:
	.ascii	"S_POSS_RUN5\000"
.LASF549:
	.ascii	"S_POSS_RUN6\000"
.LASF550:
	.ascii	"S_POSS_RUN7\000"
.LASF551:
	.ascii	"S_POSS_RUN8\000"
.LASF402:
	.ascii	"S_DSGUNUP\000"
.LASF114:
	.ascii	"_mbsrtowcs_state\000"
.LASF1059:
	.ascii	"S_CYBER_DIE1\000"
.LASF2328:
	.ascii	"key_setup\000"
.LASF1759:
	.ascii	"ga_loadgame\000"
.LASF158:
	.ascii	"it_redcard\000"
.LASF1284:
	.ascii	"S_TECHPILLAR\000"
.LASF2205:
	.ascii	"deathmatch\000"
.LASF2160:
	.ascii	"mousex\000"
.LASF2161:
	.ascii	"mousey\000"
.LASF2086:
	.ascii	"newweapon\000"
.LASF2427:
	.ascii	"fread\000"
.LASF2379:
	.ascii	"G_CheckDemoStatus\000"
.LASF34:
	.ascii	"__tm_mday\000"
.LASF1639:
	.ascii	"firstline\000"
.LASF166:
	.ascii	"wp_chaingun\000"
.LASF2396:
	.ascii	"P_CheckPosition\000"
.LASF1970:
	.ascii	"sfx_vilsit\000"
.LASF141:
	.ascii	"pack_plut\000"
.LASF1627:
	.ascii	"spawnpoint\000"
.LASF575:
	.ascii	"S_SPOS_STND\000"
.LASF1269:
	.ascii	"S_LIVESTICK2\000"
.LASF703:
	.ascii	"S_SKEL_FIST1\000"
.LASF704:
	.ascii	"S_SKEL_FIST2\000"
.LASF705:
	.ascii	"S_SKEL_FIST3\000"
.LASF706:
	.ascii	"S_SKEL_FIST4\000"
.LASF1638:
	.ascii	"numlines\000"
.LASF953:
	.ascii	"S_SKULL_STND\000"
.LASF85:
	.ascii	"_new\000"
.LASF2442:
	.ascii	"memcmp\000"
.LASF1080:
	.ascii	"S_PAIN_PAIN\000"
.LASF1725:
	.ascii	"comp_zombie\000"
.LASF131:
	.ascii	"PU_MAX\000"
.LASF1882:
	.ascii	"line_s\000"
.LASF2253:
	.ascii	"dog_jumping\000"
.LASF2248:
	.ascii	"default_weapon_recoil\000"
.LASF2246:
	.ascii	"default_monsters_remember\000"
.LASF220:
	.ascii	"next\000"
.LASF88:
	.ascii	"__sglue\000"
.LASF1767:
	.ascii	"BT_USE\000"
.LASF2366:
	.ascii	"defaultskill\000"
.LASF1948:
	.ascii	"sfx_dmpain\000"
.LASF1950:
	.ascii	"sfx_vipain\000"
.LASF2057:
	.ascii	"CheckForOverrun\000"
.LASF611:
	.ascii	"S_VILE_RUN1\000"
.LASF612:
	.ascii	"S_VILE_RUN2\000"
.LASF613:
	.ascii	"S_VILE_RUN3\000"
.LASF614:
	.ascii	"S_VILE_RUN4\000"
.LASF615:
	.ascii	"S_VILE_RUN5\000"
.LASF616:
	.ascii	"S_VILE_RUN6\000"
.LASF617:
	.ascii	"S_VILE_RUN7\000"
.LASF618:
	.ascii	"S_VILE_RUN8\000"
.LASF619:
	.ascii	"S_VILE_RUN9\000"
.LASF2115:
	.ascii	"G_ReadOptions\000"
.LASF449:
	.ascii	"S_BFG\000"
.LASF1541:
	.ascii	"MT_MISC77\000"
.LASF1794:
	.ascii	"pr_missile\000"
.LASF896:
	.ascii	"S_BOSS_STND2\000"
.LASF2122:
	.ascii	"bytes_per_tic\000"
.LASF279:
	.ascii	"SPR_BBRN\000"
.LASF870:
	.ascii	"S_HEAD_STND\000"
.LASF1268:
	.ascii	"S_LIVESTICK\000"
.LASF2076:
	.ascii	"mthing\000"
.LASF92:
	.ascii	"_glue\000"
.LASF2371:
	.ascii	"savedescription\000"
.LASF1408:
	.ascii	"tics\000"
.LASF1722:
	.ascii	"comp_pursuit\000"
.LASF2130:
	.ascii	"savegame_compatibility\000"
.LASF2388:
	.ascii	"W_CacheLumpNum\000"
.LASF1239:
	.ascii	"S_AMMO\000"
.LASF2244:
	.ascii	"default_variable_friction\000"
.LASF1739:
	.ascii	"am_rotate\000"
.LASF188:
	.ascii	"_Bool\000"
.LASF281:
	.ascii	"SPR_ARM1\000"
.LASF282:
	.ascii	"SPR_ARM2\000"
.LASF620:
	.ascii	"S_VILE_RUN10\000"
.LASF278:
	.ascii	"SPR_KEEN\000"
.LASF622:
	.ascii	"S_VILE_RUN12\000"
.LASF1392:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1393:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1159:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1160:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1161:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1162:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1163:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1164:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1165:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1166:
	.ascii	"S_SPAWNFIRE8\000"
.LASF1637:
	.ascii	"sector\000"
.LASF294:
	.ascii	"SPR_STIM\000"
.LASF1809:
	.ascii	"pr_newchase\000"
.LASF438:
	.ascii	"S_SAWUP\000"
.LASF2066:
	.ascii	"fast\000"
.LASF2062:
	.ascii	"playernum\000"
.LASF472:
	.ascii	"S_RBALLX1\000"
.LASF473:
	.ascii	"S_RBALLX2\000"
.LASF474:
	.ascii	"S_RBALLX3\000"
.LASF2219:
	.ascii	"usergame\000"
.LASF218:
	.ascii	"thinker_s\000"
.LASF225:
	.ascii	"thinker_t\000"
.LASF1852:
	.ascii	"firsttag\000"
.LASF2134:
	.ascii	"lowbyte\000"
.LASF1439:
	.ascii	"MT_BOSSBRAIN\000"
.LASF2423:
	.ascii	"memcpy\000"
.LASF2475:
	.ascii	"D_PageTicker\000"
.LASF2023:
	.ascii	"sfx_sssit\000"
.LASF2087:
	.ascii	"G_BuildTiccmd\000"
.LASF1337:
	.ascii	"S_DETONATE\000"
.LASF1918:
	.ascii	"ns_flats\000"
.LASF1649:
	.ascii	"backpack\000"
.LASF1678:
	.ascii	"m_snext\000"
.LASF864:
	.ascii	"S_SARG_RAISE1\000"
.LASF198:
	.ascii	"tasdoom_compatibility\000"
.LASF11:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF2187:
	.ascii	"nomonsters\000"
.LASF1555:
	.ascii	"MT_STEALTHVILE\000"
.LASF1887:
	.ascii	"frontsector\000"
.LASF2155:
	.ascii	"savebuffer\000"
.LASF2147:
	.ascii	"finecosine\000"
.LASF1894:
	.ascii	"ST_HORIZONTAL\000"
.LASF1445:
	.ascii	"MT_TROOPSHOT\000"
.LASF50:
	.ascii	"_size\000"
.LASF585:
	.ascii	"S_SPOS_ATK1\000"
.LASF586:
	.ascii	"S_SPOS_ATK2\000"
.LASF587:
	.ascii	"S_SPOS_ATK3\000"
.LASF690:
	.ascii	"S_SKEL_STND2\000"
.LASF1226:
	.ascii	"S_MEGA2\000"
.LASF1227:
	.ascii	"S_MEGA3\000"
.LASF1228:
	.ascii	"S_MEGA4\000"
.LASF492:
	.ascii	"S_BFGEXP2\000"
.LASF493:
	.ascii	"S_BFGEXP3\000"
.LASF494:
	.ascii	"S_BFGEXP4\000"
.LASF633:
	.ascii	"S_VILE_ATK11\000"
.LASF960:
	.ascii	"S_SKULL_ATK4\000"
.LASF1181:
	.ascii	"S_BBAR1\000"
.LASF1182:
	.ascii	"S_BBAR2\000"
.LASF1183:
	.ascii	"S_BBAR3\000"
.LASF67:
	.ascii	"_flags2\000"
.LASF1810:
	.ascii	"pr_newchasedir\000"
.LASF2264:
	.ascii	"default_help_friends\000"
.LASF1035:
	.ascii	"S_ARACH_PLAZ\000"
.LASF2017:
	.ascii	"sfx_boscub\000"
.LASF1992:
	.ascii	"sfx_bspdth\000"
.LASF1925:
	.ascii	"sfx_sgcock\000"
.LASF102:
	.ascii	"_localtime_buf\000"
.LASF543:
	.ascii	"S_POSS_STND2\000"
.LASF571:
	.ascii	"S_POSS_RAISE1\000"
.LASF572:
	.ascii	"S_POSS_RAISE2\000"
.LASF573:
	.ascii	"S_POSS_RAISE3\000"
.LASF574:
	.ascii	"S_POSS_RAISE4\000"
.LASF1263:
	.ascii	"S_GIBS\000"
.LASF1626:
	.ascii	"lastlook\000"
.LASF2370:
	.ascii	"cpars\000"
.LASF1864:
	.ascii	"heightsec\000"
.LASF1666:
	.ascii	"attacker\000"
.LASF1565:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF2186:
	.ascii	"mobjinfo\000"
.LASF2330:
	.ascii	"key_weapon1\000"
.LASF872:
	.ascii	"S_HEAD_ATK1\000"
.LASF873:
	.ascii	"S_HEAD_ATK2\000"
.LASF874:
	.ascii	"S_HEAD_ATK3\000"
.LASF2142:
	.ascii	"G_Ticker\000"
.LASF2313:
	.ascii	"key_zoomout\000"
.LASF2335:
	.ascii	"key_weapon6\000"
.LASF2351:
	.ascii	"key_map_grid\000"
.LASF1955:
	.ascii	"sfx_wpnup\000"
.LASF1900:
	.ascii	"RF_MID_TILE\000"
.LASF1590:
	.ascii	"raisestate\000"
.LASF2453:
	.ascii	"R_ExecuteSetViewSize\000"
.LASF1295:
	.ascii	"S_BLUETORCH2\000"
.LASF1296:
	.ascii	"S_BLUETORCH3\000"
.LASF1297:
	.ascii	"S_BLUETORCH4\000"
.LASF2105:
	.ascii	"G_SaveGameName\000"
.LASF560:
	.ascii	"S_POSS_DIE4\000"
.LASF1586:
	.ascii	"mass\000"
.LASF1717:
	.ascii	"comp_model\000"
.LASF2322:
	.ascii	"key_messages\000"
.LASF2238:
	.ascii	"maketic\000"
.LASF1278:
	.ascii	"S_SHRTREDCOL\000"
.LASF2247:
	.ascii	"weapon_recoil\000"
.LASF1733:
	.ascii	"comp_soul\000"
.LASF938:
	.ascii	"S_BOS2_PAIN2\000"
.LASF2093:
	.ascii	"G_SecretExitLevel\000"
.LASF261:
	.ascii	"SPR_SKEL\000"
.LASF1828:
	.ascii	"pr_misc\000"
.LASF1770:
	.ascii	"BT_CHANGE\000"
.LASF1949:
	.ascii	"sfx_popain\000"
.LASF1839:
	.ascii	"pr_dropoff\000"
.LASF741:
	.ascii	"S_FATT_RUN10\000"
.LASF742:
	.ascii	"S_FATT_RUN11\000"
.LASF743:
	.ascii	"S_FATT_RUN12\000"
.LASF1243:
	.ascii	"S_CELP\000"
.LASF2340:
	.ascii	"key_map_right\000"
.LASF1432:
	.ascii	"MT_SKULL\000"
.LASF842:
	.ascii	"S_TROO_RAISE5\000"
.LASF359:
	.ascii	"SPR_POB1\000"
.LASF360:
	.ascii	"SPR_POB2\000"
.LASF2144:
	.ascii	"net_cl\000"
.LASF413:
	.ascii	"S_DSNR1\000"
.LASF2038:
	.ascii	"LO_CONFIRM\000"
.LASF1426:
	.ascii	"MT_SERGEANT\000"
.LASF202:
	.ascii	"lxdoom_1_compatibility\000"
.LASF476:
	.ascii	"S_PLASBALL2\000"
.LASF1904:
	.ascii	"float\000"
.LASF1326:
	.ascii	"S_BRAINSTEM\000"
.LASF1846:
	.ascii	"iSectorID\000"
.LASF707:
	.ascii	"S_SKEL_MISS1\000"
.LASF708:
	.ascii	"S_SKEL_MISS2\000"
.LASF709:
	.ascii	"S_SKEL_MISS3\000"
.LASF710:
	.ascii	"S_SKEL_MISS4\000"
.LASF2016:
	.ascii	"sfx_bospit\000"
.LASF1560:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF1198:
	.ascii	"S_RKEY\000"
.LASF439:
	.ascii	"S_SAW1\000"
.LASF684:
	.ascii	"S_TRACER\000"
.LASF2171:
	.ascii	"joybuttons\000"
.LASF1682:
	.ascii	"sidemove\000"
.LASF1037:
	.ascii	"S_ARACH_PLEX\000"
.LASF2384:
	.ascii	"ST_Start\000"
.LASF1094:
	.ascii	"S_SSWV_STND\000"
.LASF634:
	.ascii	"S_VILE_HEAL1\000"
.LASF635:
	.ascii	"S_VILE_HEAL2\000"
.LASF128:
	.ascii	"PU_LEVSPEC\000"
.LASF1995:
	.ascii	"sfx_pedth\000"
.LASF78:
	.ascii	"__cleanup\000"
.LASF171:
	.ascii	"wp_supershotgun\000"
.LASF110:
	.ascii	"_signal_buf\000"
.LASF1914:
	.ascii	"handle\000"
.LASF2199:
	.ascii	"autostart\000"
.LASF1019:
	.ascii	"S_BSPI_PAIN\000"
.LASF1591:
	.ascii	"mobjinfo_t\000"
.LASF753:
	.ascii	"S_FATT_ATK10\000"
.LASF988:
	.ascii	"S_SPID_PAIN2\000"
.LASF2071:
	.ascii	"G_UpdateSignature\000"
.LASF159:
	.ascii	"it_blueskull\000"
.LASF1012:
	.ascii	"S_BSPI_RUN10\000"
.LASF1013:
	.ascii	"S_BSPI_RUN11\000"
.LASF1014:
	.ascii	"S_BSPI_RUN12\000"
.LASF2309:
	.ascii	"key_loadgame\000"
.LASF2035:
	.ascii	"sfx_dgpain\000"
.LASF1231:
	.ascii	"S_PMAP2\000"
.LASF1232:
	.ascii	"S_PMAP3\000"
.LASF1233:
	.ascii	"S_PMAP4\000"
.LASF1234:
	.ascii	"S_PMAP5\000"
.LASF1235:
	.ascii	"S_PMAP6\000"
.LASF2306:
	.ascii	"key_speed\000"
.LASF1961:
	.ascii	"sfx_bgsit1\000"
.LASF1962:
	.ascii	"sfx_bgsit2\000"
.LASF1880:
	.ascii	"special\000"
.LASF1896:
	.ascii	"ST_POSITIVE\000"
.LASF2311:
	.ascii	"key_reverse\000"
.LASF174:
	.ascii	"weapontype_t\000"
.LASF2367:
	.ascii	"haswolflevels\000"
.LASF1969:
	.ascii	"sfx_kntsit\000"
.LASF1413:
	.ascii	"state_t\000"
.LASF2374:
	.ascii	"totalleveltimes\000"
.LASF2471:
	.ascii	"HU_Ticker\000"
.LASF1643:
	.ascii	"viewheight\000"
.LASF2469:
	.ascii	"ST_Ticker\000"
.LASF2325:
	.ascii	"key_gamma\000"
.LASF2141:
	.ascii	"G_SaveGame\000"
.LASF106:
	.ascii	"_mblen_state\000"
.LASF2031:
	.ascii	"sfx_dgsit\000"
.LASF250:
	.ascii	"SPR_BFE1\000"
.LASF251:
	.ascii	"SPR_BFE2\000"
.LASF2210:
	.ascii	"noblit\000"
.LASF1652:
	.ascii	"pendingweapon\000"
.LASF2170:
	.ascii	"joyarray\000"
.LASF1315:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1316:
	.ascii	"S_RTORCHSHRT3\000"
.LASF1317:
	.ascii	"S_RTORCHSHRT4\000"
.LASF1761:
	.ascii	"ga_playdemo\000"
.LASF419:
	.ascii	"S_CHAINUP\000"
.LASF823:
	.ascii	"S_TROO_PAIN\000"
.LASF2418:
	.ascii	"F_StartFinale\000"
.LASF1889:
	.ascii	"specialdata\000"
.LASF286:
	.ascii	"SPR_BON1\000"
.LASF287:
	.ascii	"SPR_BON2\000"
.LASF526:
	.ascii	"S_PLAY_DIE1\000"
.LASF2287:
	.ascii	"savegamename\000"
.LASF1437:
	.ascii	"MT_WOLFSS\000"
.LASF1606:
	.ascii	"bprev\000"
.LASF1200:
	.ascii	"S_YKEY\000"
.LASF2368:
	.ascii	"bodyquesize\000"
.LASF65:
	.ascii	"_lock\000"
.LASF139:
	.ascii	"doom2\000"
.LASF1111:
	.ascii	"S_SSWV_PAIN2\000"
.LASF2267:
	.ascii	"monkeys\000"
.LASF1987:
	.ascii	"sfx_cacdth\000"
.LASF1292:
	.ascii	"S_HEARTCOL\000"
.LASF1708:
	.ascii	"totaltimes\000"
.LASF1788:
	.ascii	"pr_explode\000"
.LASF2079:
	.ascii	"G_LoadGameErr\000"
.LASF1609:
	.ascii	"ceilingz\000"
.LASF1104:
	.ascii	"S_SSWV_ATK1\000"
.LASF1105:
	.ascii	"S_SSWV_ATK2\000"
.LASF1106:
	.ascii	"S_SSWV_ATK3\000"
.LASF1107:
	.ascii	"S_SSWV_ATK4\000"
.LASF1108:
	.ascii	"S_SSWV_ATK5\000"
.LASF1109:
	.ascii	"S_SSWV_ATK6\000"
.LASF66:
	.ascii	"_mbstate\000"
.LASF2416:
	.ascii	"WI_Start\000"
.LASF1334:
	.ascii	"S_TECH2LAMP4\000"
.LASF1210:
	.ascii	"S_SOUL\000"
.LASF2376:
	.ascii	"bodyque\000"
.LASF241:
	.ascii	"SPR_BFGF\000"
.LASF240:
	.ascii	"SPR_BFGG\000"
.LASF590:
	.ascii	"S_SPOS_DIE1\000"
.LASF591:
	.ascii	"S_SPOS_DIE2\000"
.LASF592:
	.ascii	"S_SPOS_DIE3\000"
.LASF593:
	.ascii	"S_SPOS_DIE4\000"
.LASF594:
	.ascii	"S_SPOS_DIE5\000"
.LASF252:
	.ascii	"SPR_TFOG\000"
.LASF963:
	.ascii	"S_SKULL_DIE1\000"
.LASF964:
	.ascii	"S_SKULL_DIE2\000"
.LASF965:
	.ascii	"S_SKULL_DIE3\000"
.LASF966:
	.ascii	"S_SKULL_DIE4\000"
.LASF967:
	.ascii	"S_SKULL_DIE5\000"
.LASF968:
	.ascii	"S_SKULL_DIE6\000"
.LASF2332:
	.ascii	"key_weapon3\000"
.LASF2333:
	.ascii	"key_weapon4\000"
.LASF2334:
	.ascii	"key_weapon5\000"
.LASF1912:
	.ascii	"wad_source_t\000"
.LASF2336:
	.ascii	"key_weapon7\000"
.LASF2337:
	.ascii	"key_weapon8\000"
.LASF2338:
	.ascii	"key_weapon9\000"
.LASF1596:
	.ascii	"pspdef_t\000"
.LASF691:
	.ascii	"S_SKEL_RUN1\000"
.LASF692:
	.ascii	"S_SKEL_RUN2\000"
.LASF693:
	.ascii	"S_SKEL_RUN3\000"
.LASF694:
	.ascii	"S_SKEL_RUN4\000"
.LASF695:
	.ascii	"S_SKEL_RUN5\000"
.LASF696:
	.ascii	"S_SKEL_RUN6\000"
.LASF697:
	.ascii	"S_SKEL_RUN7\000"
.LASF698:
	.ascii	"S_SKEL_RUN8\000"
.LASF699:
	.ascii	"S_SKEL_RUN9\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF1342:
	.ascii	"S_DOGS_RUN1\000"
.LASF1343:
	.ascii	"S_DOGS_RUN2\000"
.LASF1344:
	.ascii	"S_DOGS_RUN3\000"
.LASF1345:
	.ascii	"S_DOGS_RUN4\000"
.LASF1346:
	.ascii	"S_DOGS_RUN5\000"
.LASF1347:
	.ascii	"S_DOGS_RUN6\000"
.LASF1348:
	.ascii	"S_DOGS_RUN7\000"
.LASF1349:
	.ascii	"S_DOGS_RUN8\000"
.LASF683:
	.ascii	"S_SMOKE5\000"
.LASF1786:
	.ascii	"pr_painchance\000"
.LASF1766:
	.ascii	"BT_ATTACK\000"
.LASF2148:
	.ascii	"savegamesize\000"
.LASF878:
	.ascii	"S_HEAD_DIE1\000"
.LASF879:
	.ascii	"S_HEAD_DIE2\000"
.LASF880:
	.ascii	"S_HEAD_DIE3\000"
.LASF881:
	.ascii	"S_HEAD_DIE4\000"
.LASF882:
	.ascii	"S_HEAD_DIE5\000"
.LASF883:
	.ascii	"S_HEAD_DIE6\000"
.LASF1713:
	.ascii	"comp_pain\000"
.LASF350:
	.ascii	"SPR_SMBT\000"
.LASF2318:
	.ascii	"key_soundvolume\000"
.LASF2207:
	.ascii	"menuactive\000"
.LASF1635:
	.ascii	"PrevZ\000"
.LASF2006:
	.ascii	"sfx_hoof\000"
.LASF2123:
	.ascii	"G_BeginRecording\000"
.LASF2344:
	.ascii	"key_map_zoomin\000"
.LASF2404:
	.ascii	"P_CheckAmmo\000"
.LASF2218:
	.ascii	"leveltime\000"
.LASF1023:
	.ascii	"S_BSPI_DIE3\000"
.LASF1024:
	.ascii	"S_BSPI_DIE4\000"
.LASF1025:
	.ascii	"S_BSPI_DIE5\000"
.LASF524:
	.ascii	"S_PLAY_PAIN\000"
.LASF1026:
	.ascii	"S_BSPI_DIE6\000"
.LASF1267:
	.ascii	"S_DEADSTICK\000"
.LASF161:
	.ascii	"it_redskull\000"
.LASF304:
	.ascii	"SPR_CLIP\000"
.LASF1683:
	.ascii	"angleturn\000"
.LASF13:
	.ascii	"_fpos_t\000"
.LASF404:
	.ascii	"S_DSGUN2\000"
.LASF1394:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF2026:
	.ascii	"sfx_keendt\000"
.LASF1438:
	.ascii	"MT_KEEN\000"
.LASF269:
	.ascii	"SPR_BOS2\000"
.LASF1133:
	.ascii	"S_COMMKEEN2\000"
.LASF1134:
	.ascii	"S_COMMKEEN3\000"
.LASF1135:
	.ascii	"S_COMMKEEN4\000"
.LASF1136:
	.ascii	"S_COMMKEEN5\000"
.LASF1137:
	.ascii	"S_COMMKEEN6\000"
.LASF1138:
	.ascii	"S_COMMKEEN7\000"
.LASF1139:
	.ascii	"S_COMMKEEN8\000"
.LASF1140:
	.ascii	"S_COMMKEEN9\000"
.LASF1379:
	.ascii	"S_PLS2BALLX1\000"
.LASF1380:
	.ascii	"S_PLS2BALLX2\000"
.LASF1381:
	.ascii	"S_PLS2BALLX3\000"
.LASF209:
	.ascii	"prboom_6_compatibility\000"
.LASF280:
	.ascii	"SPR_BOSF\000"
.LASF16:
	.ascii	"__wch\000"
.LASF2165:
	.ascii	"dclicktime2\000"
.LASF1957:
	.ascii	"sfx_telept\000"
.LASF268:
	.ascii	"SPR_BOSS\000"
.LASF1244:
	.ascii	"S_SHEL\000"
.LASF2419:
	.ascii	"AM_clearMarks\000"
.LASF327:
	.ascii	"SPR_POL1\000"
.LASF323:
	.ascii	"SPR_POL2\000"
.LASF326:
	.ascii	"SPR_POL3\000"
.LASF325:
	.ascii	"SPR_POL4\000"
.LASF324:
	.ascii	"SPR_POL5\000"
.LASF328:
	.ascii	"SPR_POL6\000"
.LASF345:
	.ascii	"SPR_FSKU\000"
.LASF2339:
	.ascii	"destination_keys\000"
.LASF338:
	.ascii	"SPR_CAND\000"
.LASF206:
	.ascii	"prboom_3_compatibility\000"
.LASF1405:
	.ascii	"statenum_t\000"
.LASF797:
	.ascii	"S_CPOS_XDIE1\000"
.LASF798:
	.ascii	"S_CPOS_XDIE2\000"
.LASF799:
	.ascii	"S_CPOS_XDIE3\000"
.LASF169:
	.ascii	"wp_bfg\000"
.LASF801:
	.ascii	"S_CPOS_XDIE5\000"
.LASF802:
	.ascii	"S_CPOS_XDIE6\000"
.LASF1131:
	.ascii	"S_KEENSTND\000"
.LASF517:
	.ascii	"S_PLAY\000"
.LASF91:
	.ascii	"__FILE\000"
.LASF1355:
	.ascii	"S_DOGS_DIE1\000"
.LASF760:
	.ascii	"S_FATT_DIE5\000"
.LASF761:
	.ascii	"S_FATT_DIE6\000"
.LASF1917:
	.ascii	"ns_sprites\000"
.LASF762:
	.ascii	"S_FATT_DIE7\000"
.LASF763:
	.ascii	"S_FATT_DIE8\000"
.LASF107:
	.ascii	"_mbtowc_state\000"
.LASF2443:
	.ascii	"M_ReadFile\000"
.LASF1777:
	.ascii	"BTS_SAVEMASK\000"
.LASF2179:
	.ascii	"d_episode\000"
.LASF1310:
	.ascii	"S_GTORCHSHRT\000"
.LASF20:
	.ascii	"__value\000"
.LASF924:
	.ascii	"S_BOS2_STND\000"
.LASF140:
	.ascii	"pack_tnt\000"
.LASF175:
	.ascii	"am_clip\000"
.LASF2389:
	.ascii	"W_UnlockLumpNum\000"
.LASF2004:
	.ascii	"sfx_barexp\000"
.LASF2251:
	.ascii	"dogs\000"
.LASF458:
	.ascii	"S_BLOOD1\000"
.LASF459:
	.ascii	"S_BLOOD2\000"
.LASF460:
	.ascii	"S_BLOOD3\000"
.LASF2013:
	.ascii	"sfx_flame\000"
.LASF2466:
	.ascii	"P_ArchiveMap\000"
.LASF542:
	.ascii	"S_POSS_STND\000"
.LASF1941:
	.ascii	"sfx_pstop\000"
.LASF2181:
	.ascii	"defdemoname\000"
.LASF2020:
	.ascii	"sfx_bosdth\000"
.LASF1265:
	.ascii	"S_HEADCANDLES\000"
.LASF2089:
	.ascii	"G_DeathMatchSpawnPlayer\000"
.LASF1868:
	.ascii	"touching_thinglist\000"
.LASF113:
	.ascii	"_mbrtowc_state\000"
.LASF2250:
	.ascii	"default_player_bobbing\000"
.LASF1642:
	.ascii	"viewz\000"
.LASF2298:
	.ascii	"key_menu_backspace\000"
.LASF1997:
	.ascii	"sfx_posact\000"
.LASF1718:
	.ascii	"comp_god\000"
.LASF1044:
	.ascii	"S_CYBER_RUN1\000"
.LASF1045:
	.ascii	"S_CYBER_RUN2\000"
.LASF1046:
	.ascii	"S_CYBER_RUN3\000"
.LASF1047:
	.ascii	"S_CYBER_RUN4\000"
.LASF1048:
	.ascii	"S_CYBER_RUN5\000"
.LASF1049:
	.ascii	"S_CYBER_RUN6\000"
.LASF203:
	.ascii	"mbf_compatibility\000"
.LASF1051:
	.ascii	"S_CYBER_RUN8\000"
.LASF2042:
	.ascii	"LO_DEBUG\000"
.LASF36:
	.ascii	"__tm_year\000"
.LASF19:
	.ascii	"__count\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF2046:
	.ascii	"firstpool\000"
.LASF351:
	.ascii	"SPR_SMGT\000"
.LASF1663:
	.ascii	"message\000"
.LASF2452:
	.ascii	"R_FillBackScreen\000"
.LASF2412:
	.ascii	"S_ResumeSound\000"
.LASF2324:
	.ascii	"key_quit\000"
.LASF1290:
	.ascii	"S_FLOATSKULL2\000"
.LASF1291:
	.ascii	"S_FLOATSKULL3\000"
.LASF1559:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF2037:
	.ascii	"LO_INFO\000"
.LASF257:
	.ascii	"SPR_VILE\000"
.LASF1711:
	.ascii	"comp_dropoff\000"
.LASF491:
	.ascii	"S_BFGEXP\000"
.LASF1307:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1308:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1309:
	.ascii	"S_BTORCHSHRT4\000"
.LASF1968:
	.ascii	"sfx_bspsit\000"
.LASF2316:
	.ascii	"key_enter\000"
.LASF2401:
	.ascii	"R_InitTranslationTables\000"
.LASF1965:
	.ascii	"sfx_brssit\000"
.LASF389:
	.ascii	"S_SGUN1\000"
.LASF390:
	.ascii	"S_SGUN2\000"
.LASF391:
	.ascii	"S_SGUN3\000"
.LASF392:
	.ascii	"S_SGUN4\000"
.LASF393:
	.ascii	"S_SGUN5\000"
.LASF394:
	.ascii	"S_SGUN6\000"
.LASF395:
	.ascii	"S_SGUN7\000"
.LASF396:
	.ascii	"S_SGUN8\000"
.LASF397:
	.ascii	"S_SGUN9\000"
.LASF2164:
	.ascii	"dclicks\000"
.LASF1873:
	.ascii	"ceiling_xoffs\000"
.LASF2008:
	.ascii	"sfx_chgun\000"
.LASF1946:
	.ascii	"sfx_swtchx\000"
.LASF1209:
	.ascii	"S_MEDI\000"
.LASF857:
	.ascii	"S_SARG_PAIN2\000"
.LASF609:
	.ascii	"S_VILE_STND\000"
.LASF1837:
	.ascii	"pr_stayonlift\000"
.LASF1750:
	.ascii	"ev_joystick\000"
.LASF1676:
	.ascii	"m_tnext\000"
.LASF1879:
	.ascii	"lightlevel\000"
.LASF2409:
	.ascii	"R_SmoothPlaying_Reset\000"
.LASF37:
	.ascii	"__tm_wday\000"
.LASF1446:
	.ascii	"MT_HEADSHOT\000"
.LASF2354:
	.ascii	"key_screenshot\000"
.LASF2194:
	.ascii	"demo_insurance\000"
.LASF1698:
	.ascii	"wbplayerstruct_t\000"
.LASF333:
	.ascii	"SPR_SMIT\000"
.LASF97:
	.ascii	"_mult\000"
.LASF1281:
	.ascii	"S_SKULLCOL\000"
.LASF270:
	.ascii	"SPR_SKUL\000"
.LASF1556:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF2297:
	.ascii	"key_menu_down\000"
.LASF1657:
	.ascii	"usedown\000"
.LASF150:
	.ascii	"sk_baby\000"
.LASF1370:
	.ascii	"S_PLS1BALL\000"
.LASF1945:
	.ascii	"sfx_swtchn\000"
.LASF1112:
	.ascii	"S_SSWV_DIE1\000"
.LASF1113:
	.ascii	"S_SSWV_DIE2\000"
.LASF1114:
	.ascii	"S_SSWV_DIE3\000"
.LASF1115:
	.ascii	"S_SSWV_DIE4\000"
.LASF1116:
	.ascii	"S_SSWV_DIE5\000"
.LASF2002:
	.ascii	"sfx_vilact\000"
.LASF231:
	.ascii	"SPR_SHTF\000"
.LASF934:
	.ascii	"S_BOS2_ATK1\000"
.LASF935:
	.ascii	"S_BOS2_ATK2\000"
.LASF936:
	.ascii	"S_BOS2_ATK3\000"
.LASF1554:
	.ascii	"MT_STEALTHBABY\000"
.LASF719:
	.ascii	"S_SKEL_RAISE1\000"
.LASF720:
	.ascii	"S_SKEL_RAISE2\000"
.LASF721:
	.ascii	"S_SKEL_RAISE3\000"
.LASF722:
	.ascii	"S_SKEL_RAISE4\000"
.LASF723:
	.ascii	"S_SKEL_RAISE5\000"
.LASF724:
	.ascii	"S_SKEL_RAISE6\000"
.LASF2136:
	.ascii	"doom_printf\000"
.LASF895:
	.ascii	"S_BOSS_STND\000"
.LASF1175:
	.ascii	"S_BAR2\000"
.LASF1787:
	.ascii	"pr_lights\000"
.LASF1865:
	.ascii	"bottommap\000"
.LASF2373:
	.ascii	"starttime\000"
.LASF1615:
	.ascii	"info\000"
.LASF1815:
	.ascii	"pr_cposattack\000"
.LASF1074:
	.ascii	"S_PAIN_RUN5\000"
.LASF552:
	.ascii	"S_POSS_ATK1\000"
.LASF553:
	.ascii	"S_POSS_ATK2\000"
.LASF554:
	.ascii	"S_POSS_ATK3\000"
.LASF830:
	.ascii	"S_TROO_XDIE1\000"
.LASF831:
	.ascii	"S_TROO_XDIE2\000"
.LASF832:
	.ascii	"S_TROO_XDIE3\000"
.LASF833:
	.ascii	"S_TROO_XDIE4\000"
.LASF834:
	.ascii	"S_TROO_XDIE5\000"
.LASF835:
	.ascii	"S_TROO_XDIE6\000"
.LASF836:
	.ascii	"S_TROO_XDIE7\000"
.LASF837:
	.ascii	"S_TROO_XDIE8\000"
.LASF1782:
	.ascii	"pr_crush\000"
.LASF2369:
	.ascii	"pars\000"
.LASF1421:
	.ascii	"MT_SMOKE\000"
.LASF2302:
	.ascii	"key_straferight\000"
.LASF1772:
	.ascii	"BT_WEAPONSHIFT\000"
.LASF2449:
	.ascii	"P_UnArchiveRNG\000"
.LASF1598:
	.ascii	"type\000"
.LASF1225:
	.ascii	"S_MEGA\000"
.LASF1796:
	.ascii	"pr_plats\000"
.LASF2341:
	.ascii	"key_map_left\000"
.LASF2138:
	.ascii	"menu\000"
.LASF275:
	.ascii	"SPR_CYBR\000"
.LASF1899:
	.ascii	"RF_TOP_TILE\000"
.LASF1996:
	.ascii	"sfx_skedth\000"
.LASF311:
	.ascii	"SPR_SBOX\000"
.LASF255:
	.ascii	"SPR_POSS\000"
.LASF2039:
	.ascii	"LO_WARN\000"
.LASF2140:
	.ascii	"description\000"
.LASF249:
	.ascii	"SPR_BFS1\000"
.LASF253:
	.ascii	"SPR_IFOG\000"
.LASF1258:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1259:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF1764:
	.ascii	"ga_worlddone\000"
.LASF1990:
	.ascii	"sfx_cybdth\000"
.LASF2120:
	.ascii	"G_RecordDemo\000"
.LASF1607:
	.ascii	"subsector\000"
.LASF2005:
	.ascii	"sfx_punch\000"
.LASF1842:
	.ascii	"NUMPRCLASS\000"
.LASF1933:
	.ascii	"sfx_sawidl\000"
.LASF1838:
	.ascii	"pr_helpfriend\000"
.LASF2126:
	.ascii	"G_DoPlayDemo\000"
.LASF1703:
	.ascii	"maxsecret\000"
.LASF167:
	.ascii	"wp_missile\000"
.LASF623:
	.ascii	"S_VILE_ATK1\000"
.LASF624:
	.ascii	"S_VILE_ATK2\000"
.LASF625:
	.ascii	"S_VILE_ATK3\000"
.LASF626:
	.ascii	"S_VILE_ATK4\000"
.LASF627:
	.ascii	"S_VILE_ATK5\000"
.LASF628:
	.ascii	"S_VILE_ATK6\000"
.LASF629:
	.ascii	"S_VILE_ATK7\000"
.LASF630:
	.ascii	"S_VILE_ATK8\000"
.LASF631:
	.ascii	"S_VILE_ATK9\000"
.LASF576:
	.ascii	"S_SPOS_STND2\000"
.LASF1199:
	.ascii	"S_RKEY2\000"
.LASF2217:
	.ascii	"basetic\000"
.LASF1826:
	.ascii	"pr_brainexp\000"
.LASF987:
	.ascii	"S_SPID_PAIN\000"
.LASF2445:
	.ascii	"P_UnArchivePlayers\000"
.LASF1878:
	.ascii	"ceilingpic\000"
.LASF2033:
	.ascii	"sfx_dgact\000"
.LASF1751:
	.ascii	"evtype_t\000"
.LASF176:
	.ascii	"am_shell\000"
.LASF2283:
	.ascii	"playernumtotrans\000"
.LASF138:
	.ascii	"doom\000"
.LASF1242:
	.ascii	"S_CELL\000"
.LASF1738:
	.ascii	"am_overlay\000"
.LASF1571:
	.ascii	"seestate\000"
.LASF59:
	.ascii	"_close\000"
.LASF1422:
	.ascii	"MT_FATSO\000"
.LASF1758:
	.ascii	"ga_newgame\000"
.LASF1731:
	.ascii	"comp_sound\000"
.LASF313:
	.ascii	"SPR_BFUG\000"
.LASF1252:
	.ascii	"S_SHOT\000"
.LASF1424:
	.ascii	"MT_CHAINGUY\000"
.LASF1431:
	.ascii	"MT_KNIGHT\000"
.LASF451:
	.ascii	"S_BFGUP\000"
.LASF2402:
	.ascii	"P_WeaponPreferred\000"
.LASF2240:
	.ascii	"ticdup\000"
.LASF876:
	.ascii	"S_HEAD_PAIN2\000"
.LASF877:
	.ascii	"S_HEAD_PAIN3\000"
.LASF2446:
	.ascii	"P_UnArchiveWorld\000"
.LASF2348:
	.ascii	"key_map_follow\000"
.LASF2434:
	.ascii	"fopen\000"
.LASF26:
	.ascii	"_next\000"
.LASF865:
	.ascii	"S_SARG_RAISE2\000"
.LASF866:
	.ascii	"S_SARG_RAISE3\000"
.LASF867:
	.ascii	"S_SARG_RAISE4\000"
.LASF868:
	.ascii	"S_SARG_RAISE5\000"
.LASF869:
	.ascii	"S_SARG_RAISE6\000"
.LASF1205:
	.ascii	"S_RSKULL2\000"
.LASF909:
	.ascii	"S_BOSS_PAIN2\000"
.LASF2090:
	.ascii	"selections\000"
.LASF1920:
	.ascii	"ns_hires\000"
.LASF2096:
	.ascii	"G_DoWorldDone\000"
.LASF1150:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1988:
	.ascii	"sfx_skldth\000"
.LASF1101:
	.ascii	"S_SSWV_RUN6\000"
.LASF2025:
	.ascii	"sfx_keenpn\000"
.LASF1185:
	.ascii	"S_BON1A\000"
.LASF1186:
	.ascii	"S_BON1B\000"
.LASF1187:
	.ascii	"S_BON1C\000"
.LASF1188:
	.ascii	"S_BON1D\000"
.LASF1189:
	.ascii	"S_BON1E\000"
.LASF2073:
	.ascii	"computed\000"
.LASF2108:
	.ascii	"skill\000"
.LASF1574:
	.ascii	"attacksound\000"
.LASF24:
	.ascii	"__va_list\000"
.LASF2203:
	.ascii	"respawnmonsters\000"
.LASF2069:
	.ascii	"levels\000"
.LASF1563:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF2190:
	.ascii	"gamemode\000"
.LASF1854:
	.ascii	"soundtarget\000"
.LASF2070:
	.ascii	"lump\000"
.LASF1191:
	.ascii	"S_BON2A\000"
.LASF1192:
	.ascii	"S_BON2B\000"
.LASF1193:
	.ascii	"S_BON2C\000"
.LASF1194:
	.ascii	"S_BON2D\000"
.LASF1195:
	.ascii	"S_BON2E\000"
.LASF215:
	.ascii	"angle_t\000"
.LASF2104:
	.ascii	"G_Responder\000"
.LASF2272:
	.ascii	"rngseed\000"
.LASF1367:
	.ascii	"S_OLDBFG1\000"
.LASF1081:
	.ascii	"S_PAIN_PAIN2\000"
.LASF1834:
	.ascii	"pr_skiptarget\000"
.LASF371:
	.ascii	"S_PUNCHDOWN\000"
.LASF104:
	.ascii	"_rand_next\000"
.LASF1876:
	.ascii	"ceilinglightsec\000"
.LASF884:
	.ascii	"S_HEAD_RAISE1\000"
.LASF885:
	.ascii	"S_HEAD_RAISE2\000"
.LASF886:
	.ascii	"S_HEAD_RAISE3\000"
.LASF887:
	.ascii	"S_HEAD_RAISE4\000"
.LASF888:
	.ascii	"S_HEAD_RAISE5\000"
.LASF889:
	.ascii	"S_HEAD_RAISE6\000"
.LASF129:
	.ascii	"PU_CACHE\000"
.LASF1877:
	.ascii	"floorpic\000"
.LASF2431:
	.ascii	"strcpy\000"
.LASF223:
	.ascii	"cprev\000"
.LASF1771:
	.ascii	"BT_WEAPONMASK\000"
.LASF335:
	.ascii	"SPR_COL2\000"
.LASF2462:
	.ascii	"P_ArchiveThinkers\000"
.LASF1578:
	.ascii	"meleestate\000"
.LASF1712:
	.ascii	"comp_vile\000"
.LASF431:
	.ascii	"S_MISSILEFLASH1\000"
.LASF352:
	.ascii	"SPR_SMRT\000"
.LASF433:
	.ascii	"S_MISSILEFLASH3\000"
.LASF434:
	.ascii	"S_MISSILEFLASH4\000"
.LASF1043:
	.ascii	"S_CYBER_STND2\000"
.LASF712:
	.ascii	"S_SKEL_PAIN2\000"
.LASF136:
	.ascii	"indetermined\000"
.LASF1953:
	.ascii	"sfx_slop\000"
.LASF369:
	.ascii	"S_LIGHTDONE\000"
.LASF2022:
	.ascii	"sfx_mandth\000"
.LASF173:
	.ascii	"wp_nochange\000"
.LASF980:
	.ascii	"S_SPID_RUN10\000"
.LASF981:
	.ascii	"S_SPID_RUN11\000"
.LASF982:
	.ascii	"S_SPID_RUN12\000"
.LASF856:
	.ascii	"S_SARG_PAIN\000"
.LASF79:
	.ascii	"_result\000"
.LASF1455:
	.ascii	"MT_TELEPORTMAN\000"
.LASF1453:
	.ascii	"MT_TFOG\000"
.LASF2098:
	.ascii	"G_LoadGame\000"
.LASF197:
	.ascii	"dosdoom_compatibility\000"
.LASF502:
	.ascii	"S_TFOG3\000"
.LASF503:
	.ascii	"S_TFOG4\000"
.LASF504:
	.ascii	"S_TFOG5\000"
.LASF505:
	.ascii	"S_TFOG6\000"
.LASF506:
	.ascii	"S_TFOG7\000"
.LASF507:
	.ascii	"S_TFOG8\000"
.LASF508:
	.ascii	"S_TFOG9\000"
.LASF556:
	.ascii	"S_POSS_PAIN2\000"
.LASF385:
	.ascii	"S_PISTOLFLASH\000"
.LASF2377:
	.ascii	"setsizeneeded\000"
.LASF2398:
	.ascii	"Z_Free\000"
.LASF1674:
	.ascii	"m_thing\000"
.LASF1804:
	.ascii	"pr_bfg\000"
.LASF939:
	.ascii	"S_BOS2_DIE1\000"
.LASF940:
	.ascii	"S_BOS2_DIE2\000"
.LASF941:
	.ascii	"S_BOS2_DIE3\000"
.LASF321:
	.ascii	"SPR_SMT2\000"
.LASF943:
	.ascii	"S_BOS2_DIE5\000"
.LASF945:
	.ascii	"S_BOS2_DIE7\000"
.LASF291:
	.ascii	"SPR_BSKU\000"
.LASF211:
	.ascii	"boom_compatibility\000"
.LASF1784:
	.ascii	"pr_killtics\000"
.LASF95:
	.ascii	"_rand48\000"
.LASF1303:
	.ascii	"S_REDTORCH2\000"
.LASF1304:
	.ascii	"S_REDTORCH3\000"
.LASF1305:
	.ascii	"S_REDTORCH4\000"
.LASF1275:
	.ascii	"S_TALLGRNCOL\000"
.LASF456:
	.ascii	"S_BFGFLASH1\000"
.LASF2393:
	.ascii	"P_SpawnMobj\000"
.LASF162:
	.ascii	"NUMCARDS\000"
.LASF1173:
	.ascii	"S_ARM2A\000"
.LASF117:
	.ascii	"_h_errno\000"
.LASF557:
	.ascii	"S_POSS_DIE1\000"
.LASF558:
	.ascii	"S_POSS_DIE2\000"
.LASF559:
	.ascii	"S_POSS_DIE3\000"
.LASF380:
	.ascii	"S_PISTOLUP\000"
.LASF561:
	.ascii	"S_POSS_DIE5\000"
.LASF1246:
	.ascii	"S_BPAK\000"
.LASF1715:
	.ascii	"comp_blazing\000"
.LASF1875:
	.ascii	"floorlightsec\000"
.LASF305:
	.ascii	"SPR_AMMO\000"
.LASF2154:
	.ascii	"command_loadgame\000"
.LASF2461:
	.ascii	"P_ArchiveWorld\000"
.LASF632:
	.ascii	"S_VILE_ATK10\000"
.LASF367:
	.ascii	"spritenum_t\000"
.LASF495:
	.ascii	"S_EXPLODE1\000"
.LASF496:
	.ascii	"S_EXPLODE2\000"
.LASF497:
	.ascii	"S_EXPLODE3\000"
.LASF192:
	.ascii	"doom_12_compatibility\000"
.LASF2239:
	.ascii	"netcmds\000"
.LASF1409:
	.ascii	"action\000"
.LASF41:
	.ascii	"_fnargs\000"
.LASF353:
	.ascii	"SPR_HDB1\000"
.LASF354:
	.ascii	"SPR_HDB2\000"
.LASF355:
	.ascii	"SPR_HDB3\000"
.LASF356:
	.ascii	"SPR_HDB4\000"
.LASF357:
	.ascii	"SPR_HDB5\000"
.LASF358:
	.ascii	"SPR_HDB6\000"
.LASF1707:
	.ascii	"plyr\000"
.LASF897:
	.ascii	"S_BOSS_RUN1\000"
.LASF898:
	.ascii	"S_BOSS_RUN2\000"
.LASF899:
	.ascii	"S_BOSS_RUN3\000"
.LASF900:
	.ascii	"S_BOSS_RUN4\000"
.LASF435:
	.ascii	"S_SAW\000"
.LASF902:
	.ascii	"S_BOSS_RUN6\000"
.LASF903:
	.ascii	"S_BOSS_RUN7\000"
.LASF904:
	.ascii	"S_BOSS_RUN8\000"
.LASF1282:
	.ascii	"S_TORCHTREE\000"
.LASF1329:
	.ascii	"S_TECHLAMP3\000"
.LASF1330:
	.ascii	"S_TECHLAMP4\000"
.LASF1561:
	.ascii	"MT_STEALTHIMP\000"
.LASF1897:
	.ascii	"ST_NEGATIVE\000"
.LASF99:
	.ascii	"_unused_rand\000"
.LASF2315:
	.ascii	"key_backspace\000"
.LASF2380:
	.ascii	"R_FlatNumForName\000"
.LASF892:
	.ascii	"S_BRBALLX1\000"
.LASF893:
	.ascii	"S_BRBALLX2\000"
.LASF894:
	.ascii	"S_BRBALLX3\000"
.LASF689:
	.ascii	"S_SKEL_STND\000"
.LASF1622:
	.ascii	"threshold\000"
.LASF1621:
	.ascii	"target\000"
.LASF1341:
	.ascii	"S_DOGS_STND2\000"
.LASF732:
	.ascii	"S_FATT_RUN1\000"
.LASF733:
	.ascii	"S_FATT_RUN2\000"
.LASF734:
	.ascii	"S_FATT_RUN3\000"
.LASF735:
	.ascii	"S_FATT_RUN4\000"
.LASF736:
	.ascii	"S_FATT_RUN5\000"
.LASF737:
	.ascii	"S_FATT_RUN6\000"
.LASF738:
	.ascii	"S_FATT_RUN7\000"
.LASF739:
	.ascii	"S_FATT_RUN8\000"
.LASF740:
	.ascii	"S_FATT_RUN9\000"
.LASF285:
	.ascii	"SPR_FCAN\000"
.LASF2356:
	.ascii	"mousebfire\000"
.LASF639:
	.ascii	"S_VILE_DIE1\000"
.LASF640:
	.ascii	"S_VILE_DIE2\000"
.LASF641:
	.ascii	"S_VILE_DIE3\000"
.LASF642:
	.ascii	"S_VILE_DIE4\000"
.LASF643:
	.ascii	"S_VILE_DIE5\000"
.LASF644:
	.ascii	"S_VILE_DIE6\000"
.LASF645:
	.ascii	"S_VILE_DIE7\000"
.LASF646:
	.ascii	"S_VILE_DIE8\000"
.LASF647:
	.ascii	"S_VILE_DIE9\000"
.LASF418:
	.ascii	"S_CHAINDOWN\000"
.LASF1201:
	.ascii	"S_YKEY2\000"
.LASF43:
	.ascii	"_fntypes\000"
.LASF1580:
	.ascii	"deathstate\000"
.LASF1901:
	.ascii	"RF_BOT_TILE\000"
.LASF1709:
	.ascii	"wbstartstruct_t\000"
.LASF1871:
	.ascii	"floor_xoffs\000"
.LASF686:
	.ascii	"S_TRACEEXP1\000"
.LASF687:
	.ascii	"S_TRACEEXP2\000"
.LASF688:
	.ascii	"S_TRACEEXP3\000"
.LASF214:
	.ascii	"fixed_t\000"
.LASF1893:
	.ascii	"sector_t\000"
.LASF1229:
	.ascii	"S_SUIT\000"
.LASF212:
	.ascii	"best_compatibility\000"
.LASF1551:
	.ascii	"MT_PUSH\000"
.LASF1922:
	.ascii	"sfx_None\000"
.LASF1603:
	.ascii	"snext\000"
.LASF2159:
	.ascii	"mousebuttons\000"
.LASF648:
	.ascii	"S_VILE_DIE10\000"
.LASF22:
	.ascii	"_flock_t\000"
.LASF1704:
	.ascii	"maxfrags\000"
.LASF190:
	.ascii	"byte\000"
.LASF1938:
	.ascii	"sfx_firsht\000"
.LASF1999:
	.ascii	"sfx_dmact\000"
.LASF2415:
	.ascii	"lprintf\000"
.LASF776:
	.ascii	"S_CPOS_RUN1\000"
.LASF777:
	.ascii	"S_CPOS_RUN2\000"
.LASF778:
	.ascii	"S_CPOS_RUN3\000"
.LASF779:
	.ascii	"S_CPOS_RUN4\000"
.LASF780:
	.ascii	"S_CPOS_RUN5\000"
.LASF781:
	.ascii	"S_CPOS_RUN6\000"
.LASF782:
	.ascii	"S_CPOS_RUN7\000"
.LASF783:
	.ascii	"S_CPOS_RUN8\000"
.LASF2364:
	.ascii	"joybuse\000"
.LASF272:
	.ascii	"SPR_BSPI\000"
.LASF499:
	.ascii	"S_TFOG01\000"
.LASF500:
	.ascii	"S_TFOG02\000"
.LASF1769:
	.ascii	"BT_SPECIALMASK\000"
.LASF130:
	.ascii	"PU_NEWBLOCK\000"
.LASF1730:
	.ascii	"comp_respawn\000"
.LASF1850:
	.ascii	"ceilingheight\000"
.LASF2263:
	.ascii	"help_friends\000"
.LASF2440:
	.ascii	"__builtin_strlen\000"
.LASF1919:
	.ascii	"ns_colormaps\000"
.LASF1279:
	.ascii	"S_CANDLESTIK\000"
.LASF2032:
	.ascii	"sfx_dgatk\000"
.LASF2095:
	.ascii	"G_WorldDone\000"
.LASF2295:
	.ascii	"key_menu_left\000"
.LASF954:
	.ascii	"S_SKULL_STND2\000"
.LASF1741:
	.ascii	"am_grid\000"
.LASF509:
	.ascii	"S_TFOG10\000"
.LASF1820:
	.ascii	"pr_bruisattack\000"
.LASF1817:
	.ascii	"pr_troopattack\000"
.LASF2451:
	.ascii	"P_MapEnd\000"
.LASF1592:
	.ascii	"ps_weapon\000"
.LASF1763:
	.ascii	"ga_victory\000"
.LASF2477:
	.ascii	"c:/devl/prboom3ds/src/g_game.c\000"
.LASF154:
	.ascii	"sk_nightmare\000"
.LASF1720:
	.ascii	"comp_floors\000"
.LASF1314:
	.ascii	"S_RTORCHSHRT\000"
.LASF308:
	.ascii	"SPR_CELL\000"
.LASF309:
	.ascii	"SPR_CELP\000"
.LASF2111:
	.ascii	"G_InitNew\000"
.LASF483:
	.ascii	"S_BFGSHOT\000"
.LASF2472:
	.ascii	"WI_End\000"
.LASF2009:
	.ascii	"sfx_tink\000"
.LASF201:
	.ascii	"boom_202_compatibility\000"
.LASF2260:
	.ascii	"default_monster_avoid_hazards\000"
.LASF2255:
	.ascii	"distfriend\000"
.LASF70:
	.ascii	"_stdin\000"
.LASF1350:
	.ascii	"S_DOGS_ATK1\000"
.LASF1351:
	.ascii	"S_DOGS_ATK2\000"
.LASF1352:
	.ascii	"S_DOGS_ATK3\000"
.LASF1454:
	.ascii	"MT_IFOG\000"
.LASF73:
	.ascii	"_inc\000"
.LASF46:
	.ascii	"_ind\000"
.LASF2308:
	.ascii	"key_savegame\000"
.LASF1874:
	.ascii	"ceiling_yoffs\000"
.LASF1403:
	.ascii	"S_MUSHROOM\000"
.LASF1700:
	.ascii	"last\000"
.LASF1558:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF1910:
	.ascii	"source_lmp\000"
.LASF2406:
	.ascii	"S_UpdateSounds\000"
.LASF2048:
	.ascii	"perpool\000"
.LASF6:
	.ascii	"short int\000"
.LASF262:
	.ascii	"SPR_MANF\000"
.LASF1294:
	.ascii	"S_BLUETORCH\000"
.LASF1714:
	.ascii	"comp_skull\000"
.LASF57:
	.ascii	"_write\000"
.LASF2300:
	.ascii	"key_menu_enter\000"
.LASF2289:
	.ascii	"initial_bullets\000"
.LASF1041:
	.ascii	"S_ARACH_PLEX5\000"
.LASF2028:
	.ascii	"sfx_skesit\000"
.LASF289:
	.ascii	"SPR_RKEY\000"
.LASF1575:
	.ascii	"painstate\000"
.LASF1042:
	.ascii	"S_CYBER_STND\000"
.LASF1774:
	.ascii	"BTS_PAUSE\000"
.LASF1377:
	.ascii	"S_PLS2BALL\000"
.LASF1966:
	.ascii	"sfx_cybsit\000"
.LASF1110:
	.ascii	"S_SSWV_PAIN\000"
.LASF1824:
	.ascii	"pr_brainscream\000"
.LASF177:
	.ascii	"am_cell\000"
.LASF1618:
	.ascii	"movedir\000"
.LASF765:
	.ascii	"S_FATT_DIE10\000"
.LASF2271:
	.ascii	"myargv\000"
.LASF2102:
	.ascii	"file\000"
.LASF1780:
	.ascii	"pr_skullfly\000"
.LASF1724:
	.ascii	"comp_staylift\000"
.LASF1579:
	.ascii	"missilestate\000"
.LASF1706:
	.ascii	"pnum\000"
.LASF1931:
	.ascii	"sfx_bfg\000"
.LASF1448:
	.ascii	"MT_PLASMA\000"
.LASF2014:
	.ascii	"sfx_flamst\000"
.LASF259:
	.ascii	"SPR_FATB\000"
.LASF2274:
	.ascii	"wadfiles\000"
.LASF263:
	.ascii	"SPR_FATT\000"
.LASF1719:
	.ascii	"comp_falloff\000"
.LASF1762:
	.ascii	"ga_completed\000"
.LASF1222:
	.ascii	"S_PINS2\000"
.LASF1223:
	.ascii	"S_PINS3\000"
.LASF1224:
	.ascii	"S_PINS4\000"
.LASF2201:
	.ascii	"gameepisode\000"
.LASF2360:
	.ascii	"mousebuse\000"
.LASF75:
	.ascii	"_current_category\000"
.LASF2188:
	.ascii	"respawnparm\000"
.LASF2261:
	.ascii	"monster_friction\000"
.LASF1835:
	.ascii	"pr_enemystrafe\000"
.LASF2361:
	.ascii	"mouse_double_click_use\000"
.LASF1927:
	.ascii	"sfx_dbopn\000"
.LASF1320:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1964:
	.ascii	"sfx_cacsit\000"
.LASF137:
	.ascii	"GameMode_t\000"
.LASF2327:
	.ascii	"key_pause\000"
.LASF1404:
	.ascii	"NUMSTATES\000"
.LASF1036:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF290:
	.ascii	"SPR_YKEY\000"
.LASF1433:
	.ascii	"MT_SPIDER\000"
.LASF2200:
	.ascii	"gameskill\000"
.LASF1325:
	.ascii	"S_SMALLPOOL\000"
.LASF1599:
	.ascii	"options\000"
.LASF8:
	.ascii	"long int\000"
.LASF1280:
	.ascii	"S_CANDELABRA\000"
.LASF2242:
	.ascii	"default_allow_pushers\000"
.LASF1312:
	.ascii	"S_GTORCHSHRT3\000"
.LASF49:
	.ascii	"_base\000"
.LASF1825:
	.ascii	"pr_cposrefire\000"
.LASF1467:
	.ascii	"MT_MISC10\000"
.LASF1052:
	.ascii	"S_CYBER_ATK1\000"
.LASF1053:
	.ascii	"S_CYBER_ATK2\000"
.LASF1054:
	.ascii	"S_CYBER_ATK3\000"
.LASF1055:
	.ascii	"S_CYBER_ATK4\000"
.LASF1056:
	.ascii	"S_CYBER_ATK5\000"
.LASF1057:
	.ascii	"S_CYBER_ATK6\000"
.LASF1655:
	.ascii	"maxammo\000"
.LASF1283:
	.ascii	"S_BIGTREE\000"
.LASF296:
	.ascii	"SPR_SOUL\000"
.LASF264:
	.ascii	"SPR_CPOS\000"
.LASF1798:
	.ascii	"pr_punchangle\000"
.LASF1217:
	.ascii	"S_PINV2\000"
.LASF1218:
	.ascii	"S_PINV3\000"
.LASF1219:
	.ascii	"S_PINV4\000"
.LASF2094:
	.ascii	"G_DoCompleted\000"
.LASF426:
	.ascii	"S_MISSILEDOWN\000"
.LASF109:
	.ascii	"_l64a_buf\000"
.LASF1095:
	.ascii	"S_SSWV_STND2\000"
.LASF1729:
	.ascii	"comp_moveblock\000"
.LASF2279:
	.ascii	"clrespawnparm\000"
.LASF243:
	.ascii	"SPR_PUFF\000"
.LASF362:
	.ascii	"SPR_TLMP\000"
.LASF1289:
	.ascii	"S_FLOATSKULL\000"
.LASF1668:
	.ascii	"fixedcolormap\000"
.LASF72:
	.ascii	"_stderr\000"
.LASF2001:
	.ascii	"sfx_bspwlk\000"
.LASF1595:
	.ascii	"state\000"
.LASF588:
	.ascii	"S_SPOS_PAIN\000"
.LASF2041:
	.ascii	"LO_FATAL\000"
.LASF484:
	.ascii	"S_BFGSHOT2\000"
.LASF2214:
	.ascii	"totallive\000"
.LASF961:
	.ascii	"S_SKULL_PAIN\000"
.LASF2293:
	.ascii	"key_down\000"
.LASF1318:
	.ascii	"S_HANGNOGUTS\000"
.LASF1489:
	.ascii	"MT_MISC27\000"
.LASF1490:
	.ascii	"MT_MISC28\000"
.LASF1493:
	.ascii	"MT_MISC29\000"
.LASF2074:
	.ascii	"episode\000"
.LASF1629:
	.ascii	"lastenemy\000"
.LASF1971:
	.ascii	"sfx_mansit\000"
.LASF1757:
	.ascii	"ga_loadlevel\000"
.LASF32:
	.ascii	"__tm_min\000"
.LASF1567:
	.ascii	"mobjtype_t\000"
.LASF1690:
	.ascii	"PST_REBORN\000"
.LASF2397:
	.ascii	"R_PointInSubsector\000"
.LASF1859:
	.ascii	"ceilingdata\000"
.LASF132:
	.ascii	"shareware\000"
.LASF2225:
	.ascii	"gamestate\000"
.LASF116:
	.ascii	"_wcsrtombs_state\000"
.LASF1127:
	.ascii	"S_SSWV_RAISE2\000"
.LASF1132:
	.ascii	"S_COMMKEEN\000"
.LASF142:
	.ascii	"none\000"
.LASF1174:
	.ascii	"S_BAR1\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF1747:
	.ascii	"ev_keydown\000"
.LASF875:
	.ascii	"S_HEAD_PAIN\000"
.LASF1435:
	.ascii	"MT_CYBORG\000"
.LASF2011:
	.ascii	"sfx_bdcls\000"
.LASF2117:
	.ascii	"G_ReadDemoHeader\000"
.LASF713:
	.ascii	"S_SKEL_DIE1\000"
.LASF714:
	.ascii	"S_SKEL_DIE2\000"
.LASF715:
	.ascii	"S_SKEL_DIE3\000"
.LASF716:
	.ascii	"S_SKEL_DIE4\000"
.LASF298:
	.ascii	"SPR_PSTR\000"
.LASF718:
	.ascii	"S_SKEL_DIE6\000"
.LASF2301:
	.ascii	"key_strafeleft\000"
.LASF1494:
	.ascii	"MT_MISC30\000"
.LASF1495:
	.ascii	"MT_MISC31\000"
.LASF1250:
	.ascii	"S_LAUN\000"
.LASF363:
	.ascii	"SPR_TLP2\000"
.LASF1356:
	.ascii	"S_DOGS_DIE2\000"
.LASF1357:
	.ascii	"S_DOGS_DIE3\000"
.LASF1358:
	.ascii	"S_DOGS_DIE4\000"
.LASF1359:
	.ascii	"S_DOGS_DIE5\000"
.LASF1360:
	.ascii	"S_DOGS_DIE6\000"
.LASF1954:
	.ascii	"sfx_itemup\000"
.LASF170:
	.ascii	"wp_chainsaw\000"
.LASF244:
	.ascii	"SPR_BAL1\000"
.LASF245:
	.ascii	"SPR_BAL2\000"
.LASF310:
	.ascii	"SPR_SHEL\000"
.LASF219:
	.ascii	"prev\000"
.LASF1863:
	.ascii	"nextsec\000"
.LASF2067:
	.ascii	"endtime\000"
.LASF1716:
	.ascii	"comp_doorlight\000"
.LASF2241:
	.ascii	"allow_pushers\000"
.LASF838:
	.ascii	"S_TROO_RAISE1\000"
.LASF839:
	.ascii	"S_TROO_RAISE2\000"
.LASF840:
	.ascii	"S_TROO_RAISE3\000"
.LASF841:
	.ascii	"S_TROO_RAISE4\000"
.LASF317:
	.ascii	"SPR_PLAS\000"
.LASF1248:
	.ascii	"S_MGUN\000"
.LASF254:
	.ascii	"SPR_PLAY\000"
.LASF2346:
	.ascii	"key_map\000"
.LASF1888:
	.ascii	"backsector\000"
.LASF2468:
	.ascii	"P_Ticker\000"
.LASF1797:
	.ascii	"pr_punch\000"
.LASF1870:
	.ascii	"lines\000"
.LASF2180:
	.ascii	"d_map\000"
.LASF1867:
	.ascii	"topmap\000"
.LASF210:
	.ascii	"MAX_COMPATIBILITY_LEVEL\000"
.LASF2139:
	.ascii	"name2\000"
.LASF2137:
	.ascii	"G_DoSaveGame\000"
.LASF2276:
	.ascii	"numlumps\000"
.LASF1487:
	.ascii	"MT_CHAINGUN\000"
.LASF2265:
	.ascii	"monster_infighting\000"
.LASF2065:
	.ascii	"fast_pending\000"
.LASF1220:
	.ascii	"S_PSTR\000"
.LASF2027:
	.ascii	"sfx_skeact\000"
.LASF1447:
	.ascii	"MT_ROCKET\000"
.LASF1293:
	.ascii	"S_HEARTCOL2\000"
.LASF1509:
	.ascii	"MT_MISC45\000"
.LASF1614:
	.ascii	"validcount\000"
.LASF636:
	.ascii	"S_VILE_HEAL3\000"
.LASF1783:
	.ascii	"pr_genlift\000"
.LASF2230:
	.ascii	"deathmatch_p\000"
.LASF344:
	.ascii	"SPR_CEYE\000"
.LASF1587:
	.ascii	"damage\000"
.LASF2208:
	.ascii	"paused\000"
.LASF2176:
	.ascii	"version_headers\000"
.LASF417:
	.ascii	"S_CHAIN\000"
.LASF1858:
	.ascii	"floordata\000"
.LASF1677:
	.ascii	"m_sprev\000"
.LASF1388:
	.ascii	"S_BSKUL_RUN4\000"
.LASF1332:
	.ascii	"S_TECH2LAMP2\000"
.LASF1333:
	.ascii	"S_TECH2LAMP3\000"
.LASF1070:
	.ascii	"S_PAIN_RUN1\000"
.LASF1071:
	.ascii	"S_PAIN_RUN2\000"
.LASF756:
	.ascii	"S_FATT_DIE1\000"
.LASF1073:
	.ascii	"S_PAIN_RUN4\000"
.LASF757:
	.ascii	"S_FATT_DIE2\000"
.LASF1075:
	.ascii	"S_PAIN_RUN6\000"
.LASF758:
	.ascii	"S_FATT_DIE3\000"
.LASF759:
	.ascii	"S_FATT_DIE4\000"
.LASF679:
	.ascii	"S_SMOKE1\000"
.LASF680:
	.ascii	"S_SMOKE2\000"
.LASF681:
	.ascii	"S_SMOKE3\000"
.LASF682:
	.ascii	"S_SMOKE4\000"
.LASF381:
	.ascii	"S_PISTOL1\000"
.LASF382:
	.ascii	"S_PISTOL2\000"
.LASF383:
	.ascii	"S_PISTOL3\000"
.LASF384:
	.ascii	"S_PISTOL4\000"
.LASF2237:
	.ascii	"skyflatnum\000"
.LASF1251:
	.ascii	"S_PLAS\000"
.LASF2223:
	.ascii	"timingdemo\000"
.LASF2216:
	.ascii	"totalsecret\000"
.LASF589:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1523:
	.ascii	"MT_MISC59\000"
.LASF372:
	.ascii	"S_PUNCHUP\000"
.LASF1849:
	.ascii	"floorheight\000"
.LASF35:
	.ascii	"__tm_mon\000"
.LASF701:
	.ascii	"S_SKEL_RUN11\000"
.LASF702:
	.ascii	"S_SKEL_RUN12\000"
.LASF2050:
	.ascii	"comp_level\000"
.LASF1573:
	.ascii	"reactiontime\000"
.LASF295:
	.ascii	"SPR_MEDI\000"
.LASF1702:
	.ascii	"maxitems\000"
.LASF450:
	.ascii	"S_BFGDOWN\000"
.LASF2392:
	.ascii	"Z_Realloc\000"
.LASF2163:
	.ascii	"dclickstate\000"
.LASF485:
	.ascii	"S_BFGLAND\000"
.LASF1148:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1149:
	.ascii	"S_BRAIN_DIE2\000"
.LASF69:
	.ascii	"_errno\000"
.LASF1151:
	.ascii	"S_BRAIN_DIE4\000"
.LASF1978:
	.ascii	"sfx_skeswg\000"
.LASF2224:
	.ascii	"fastdemo\000"
.LASF276:
	.ascii	"SPR_PAIN\000"
.LASF2232:
	.ascii	"wminfo\000"
.LASF228:
	.ascii	"SPR_PUNG\000"
.LASF440:
	.ascii	"S_SAW2\000"
.LASF441:
	.ascii	"S_SAW3\000"
.LASF1266:
	.ascii	"S_HEADCANDLES2\000"
.LASF1492:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF3:
	.ascii	"__gnuc_va_list\000"
.LASF1581:
	.ascii	"xdeathstate\000"
.LASF436:
	.ascii	"S_SAWB\000"
.LASF1060:
	.ascii	"S_CYBER_DIE2\000"
.LASF1061:
	.ascii	"S_CYBER_DIE3\000"
.LASF1062:
	.ascii	"S_CYBER_DIE4\000"
.LASF1063:
	.ascii	"S_CYBER_DIE5\000"
.LASF1064:
	.ascii	"S_CYBER_DIE6\000"
.LASF1065:
	.ascii	"S_CYBER_DIE7\000"
.LASF1066:
	.ascii	"S_CYBER_DIE8\000"
.LASF1067:
	.ascii	"S_CYBER_DIE9\000"
.LASF1423:
	.ascii	"MT_FATSHOT\000"
.LASF1434:
	.ascii	"MT_BABY\000"
.LASF1524:
	.ascii	"MT_MISC60\000"
.LASF2125:
	.ascii	"G_DeferedPlayDemo\000"
.LASF283:
	.ascii	"SPR_BAR1\000"
.LASF135:
	.ascii	"retail\000"
.LASF1298:
	.ascii	"S_GREENTORCH\000"
.LASF1673:
	.ascii	"m_sector\000"
.LASF1671:
	.ascii	"didsecret\000"
.LASF2245:
	.ascii	"monsters_remember\000"
.LASF2436:
	.ascii	"ExtractFileBase\000"
.LASF267:
	.ascii	"SPR_BAL7\000"
.LASF2243:
	.ascii	"variable_friction\000"
.LASF1442:
	.ascii	"MT_SPAWNSHOT\000"
.LASF4:
	.ascii	"signed char\000"
.LASF1976:
	.ascii	"sfx_vilatk\000"
.LASF112:
	.ascii	"_mbrlen_state\000"
.LASF1361:
	.ascii	"S_DOGS_RAISE1\000"
.LASF971:
	.ascii	"S_SPID_RUN1\000"
.LASF1363:
	.ascii	"S_DOGS_RAISE3\000"
.LASF972:
	.ascii	"S_SPID_RUN2\000"
.LASF730:
	.ascii	"S_FATT_STND\000"
.LASF1366:
	.ascii	"S_DOGS_RAISE6\000"
.LASF1146:
	.ascii	"S_BRAIN\000"
.LASF658:
	.ascii	"S_FIRE10\000"
.LASF659:
	.ascii	"S_FIRE11\000"
.LASF660:
	.ascii	"S_FIRE12\000"
.LASF661:
	.ascii	"S_FIRE13\000"
.LASF662:
	.ascii	"S_FIRE14\000"
.LASF663:
	.ascii	"S_FIRE15\000"
.LASF664:
	.ascii	"S_FIRE16\000"
.LASF665:
	.ascii	"S_FIRE17\000"
.LASF666:
	.ascii	"S_FIRE18\000"
.LASF667:
	.ascii	"S_FIRE19\000"
.LASF1027:
	.ascii	"S_BSPI_DIE7\000"
.LASF44:
	.ascii	"_is_cxa\000"
.LASF1805:
	.ascii	"pr_slimehurt\000"
.LASF300:
	.ascii	"SPR_MEGA\000"
.LASF1937:
	.ascii	"sfx_rxplod\000"
.LASF2236:
	.ascii	"bodyqueslot\000"
.LASF901:
	.ascii	"S_BOSS_RUN5\000"
.LASF942:
	.ascii	"S_BOS2_DIE4\000"
.LASF165:
	.ascii	"wp_shotgun\000"
.LASF1660:
	.ascii	"killcount\000"
.LASF944:
	.ascii	"S_BOS2_DIE6\000"
.LASF1536:
	.ascii	"MT_MISC72\000"
.LASF2040:
	.ascii	"LO_ERROR\000"
.LASF1903:
	.ascii	"RF_CLOSED\000"
.LASF208:
	.ascii	"prboom_5_compatibility\000"
.LASF21:
	.ascii	"_mbstate_t\000"
.LASF668:
	.ascii	"S_FIRE20\000"
.LASF669:
	.ascii	"S_FIRE21\000"
.LASF670:
	.ascii	"S_FIRE22\000"
.LASF671:
	.ascii	"S_FIRE23\000"
.LASF672:
	.ascii	"S_FIRE24\000"
.LASF673:
	.ascii	"S_FIRE25\000"
.LASF674:
	.ascii	"S_FIRE26\000"
.LASF675:
	.ascii	"S_FIRE27\000"
.LASF676:
	.ascii	"S_FIRE28\000"
.LASF677:
	.ascii	"S_FIRE29\000"
.LASF2166:
	.ascii	"dclickstate2\000"
.LASF403:
	.ascii	"S_DSGUN1\000"
.LASF115:
	.ascii	"_wcrtomb_state\000"
.LASF405:
	.ascii	"S_DSGUN3\000"
.LASF406:
	.ascii	"S_DSGUN4\000"
.LASF407:
	.ascii	"S_DSGUN5\000"
.LASF408:
	.ascii	"S_DSGUN6\000"
.LASF409:
	.ascii	"S_DSGUN7\000"
.LASF410:
	.ascii	"S_DSGUN8\000"
.LASF411:
	.ascii	"S_DSGUN9\000"
.LASF205:
	.ascii	"prboom_2_compatibility\000"
.LASF1942:
	.ascii	"sfx_doropn\000"
.LASF2266:
	.ascii	"default_monster_infighting\000"
.LASF2456:
	.ascii	"fputc\000"
.LASF774:
	.ascii	"S_CPOS_STND\000"
.LASF151:
	.ascii	"sk_easy\000"
.LASF365:
	.ascii	"SPR_DOGS\000"
.LASF678:
	.ascii	"S_FIRE30\000"
.LASF1749:
	.ascii	"ev_mouse\000"
.LASF2152:
	.ascii	"demofp\000"
.LASF1768:
	.ascii	"BT_SPECIAL\000"
.LASF1986:
	.ascii	"sfx_sgtdth\000"
.LASF685:
	.ascii	"S_TRACER2\000"
.LASF1155:
	.ascii	"S_SPAWN1\000"
.LASF1156:
	.ascii	"S_SPAWN2\000"
.LASF1157:
	.ascii	"S_SPAWN3\000"
.LASF1158:
	.ascii	"S_SPAWN4\000"
.LASF2196:
	.ascii	"comp\000"
.LASF1241:
	.ascii	"S_BROK\000"
.LASF2478:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF2252:
	.ascii	"default_dogs\000"
.LASF1129:
	.ascii	"S_SSWV_RAISE4\000"
.LASF461:
	.ascii	"S_PUFF1\000"
.LASF462:
	.ascii	"S_PUFF2\000"
.LASF463:
	.ascii	"S_PUFF3\000"
.LASF464:
	.ascii	"S_PUFF4\000"
.LASF1411:
	.ascii	"misc1\000"
.LASF1412:
	.ascii	"misc2\000"
.LASF2077:
	.ascii	"queuesize\000"
.LASF1689:
	.ascii	"PST_DEAD\000"
.LASF2010:
	.ascii	"sfx_bdopn\000"
.LASF318:
	.ascii	"SPR_SHOT\000"
.LASF457:
	.ascii	"S_BFGFLASH2\000"
.LASF186:
	.ascii	"pw_infrared\000"
.LASF2088:
	.ascii	"G_PlayerReborn\000"
.LASF1832:
	.ascii	"pr_friends\000"
.LASF905:
	.ascii	"S_BOSS_ATK1\000"
.LASF906:
	.ascii	"S_BOSS_ATK2\000"
.LASF907:
	.ascii	"S_BOSS_ATK3\000"
.LASF1650:
	.ascii	"frags\000"
.LASF1362:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1364:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1365:
	.ascii	"S_DOGS_RAISE5\000"
.LASF2357:
	.ascii	"mousebstrafe\000"
.LASF1628:
	.ascii	"tracer\000"
.LASF2303:
	.ascii	"key_fire\000"
.LASF2078:
	.ascii	"G_DoLoadLevel\000"
.LASF2198:
	.ascii	"startskill\000"
.LASF1963:
	.ascii	"sfx_sgtsit\000"
.LASF744:
	.ascii	"S_FATT_ATK1\000"
.LASF745:
	.ascii	"S_FATT_ATK2\000"
.LASF746:
	.ascii	"S_FATT_ATK3\000"
.LASF747:
	.ascii	"S_FATT_ATK4\000"
.LASF748:
	.ascii	"S_FATT_ATK5\000"
.LASF749:
	.ascii	"S_FATT_ATK6\000"
.LASF750:
	.ascii	"S_FATT_ATK7\000"
.LASF751:
	.ascii	"S_FATT_ATK8\000"
.LASF752:
	.ascii	"S_FATT_ATK9\000"
.LASF1406:
	.ascii	"sprite\000"
.LASF2091:
	.ascii	"G_RestartLevel\000"
.LASF1728:
	.ascii	"comp_zerotags\000"
.LASF1322:
	.ascii	"S_HANGTLOOKUP\000"
.LASF477:
	.ascii	"S_PLASEXP\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF2124:
	.ascii	"demostart\000"
.LASF2262:
	.ascii	"default_monster_friction\000"
.LASF2476:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF958:
	.ascii	"S_SKULL_ATK2\000"
.LASF1737:
	.ascii	"am_active\000"
.LASF1451:
	.ascii	"MT_PUFF\000"
.LASF1584:
	.ascii	"radius\000"
.LASF1939:
	.ascii	"sfx_firxpl\000"
.LASF1740:
	.ascii	"am_follow\000"
.LASF1687:
	.ascii	"ticcmd_t\000"
.LASF1746:
	.ascii	"mnact_full\000"
.LASF306:
	.ascii	"SPR_ROCK\000"
.LASF2092:
	.ascii	"G_ExitLevel\000"
.LASF1003:
	.ascii	"S_BSPI_RUN1\000"
.LASF1004:
	.ascii	"S_BSPI_RUN2\000"
.LASF1005:
	.ascii	"S_BSPI_RUN3\000"
.LASF1006:
	.ascii	"S_BSPI_RUN4\000"
.LASF1007:
	.ascii	"S_BSPI_RUN5\000"
.LASF1008:
	.ascii	"S_BSPI_RUN6\000"
.LASF1009:
	.ascii	"S_BSPI_RUN7\000"
.LASF1010:
	.ascii	"S_BSPI_RUN8\000"
.LASF1011:
	.ascii	"S_BSPI_RUN9\000"
.LASF242:
	.ascii	"SPR_BLUD\000"
.LASF1430:
	.ascii	"MT_BRUISERSHOT\000"
.LASF100:
	.ascii	"_strtok_last\000"
.LASF1980:
	.ascii	"sfx_pdiehi\000"
.LASF2132:
	.ascii	"checksum\000"
.LASF1354:
	.ascii	"S_DOGS_PAIN2\000"
.LASF1570:
	.ascii	"spawnhealth\000"
.LASF2307:
	.ascii	"key_escape\000"
.LASF1336:
	.ascii	"S_GRENADE\000"
.LASF1952:
	.ascii	"sfx_pepain\000"
.LASF146:
	.ascii	"GS_FINALE\000"
.LASF784:
	.ascii	"S_CPOS_ATK1\000"
.LASF785:
	.ascii	"S_CPOS_ATK2\000"
.LASF786:
	.ascii	"S_CPOS_ATK3\000"
.LASF787:
	.ascii	"S_CPOS_ATK4\000"
.LASF1681:
	.ascii	"forwardmove\000"
.LASF122:
	.ascii	"va_list\000"
.LASF2345:
	.ascii	"key_map_zoomout\000"
.LASF1456:
	.ascii	"MT_EXTRABFG\000"
.LASF1256:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1791:
	.ascii	"pr_spawnthing\000"
.LASF1699:
	.ascii	"epsd\000"
.LASF2349:
	.ascii	"key_map_mark\000"
.LASF1773:
	.ascii	"BTS_LOADGAME\000"
.LASF1890:
	.ascii	"tranlump\000"
.LASF2007:
	.ascii	"sfx_metal\000"
.LASF2435:
	.ascii	"fwrite\000"
.LASF2291:
	.ascii	"key_left\000"
.LASF1277:
	.ascii	"S_TALLREDCOL\000"
.LASF1869:
	.ascii	"linecount\000"
.LASF124:
	.ascii	"PU_STATIC\000"
.LASF76:
	.ascii	"_current_locale\000"
.LASF1457:
	.ascii	"MT_MISC0\000"
.LASF1458:
	.ascii	"MT_MISC1\000"
.LASF1459:
	.ascii	"MT_MISC2\000"
.LASF1460:
	.ascii	"MT_MISC3\000"
.LASF1461:
	.ascii	"MT_MISC4\000"
.LASF1462:
	.ascii	"MT_MISC5\000"
.LASF1463:
	.ascii	"MT_MISC6\000"
.LASF957:
	.ascii	"S_SKULL_ATK1\000"
.LASF890:
	.ascii	"S_BRBALL1\000"
.LASF891:
	.ascii	"S_BRBALL2\000"
.LASF959:
	.ascii	"S_SKULL_ATK3\000"
.LASF1669:
	.ascii	"colormap\000"
.LASF2083:
	.ascii	"tspeed\000"
.LASF2342:
	.ascii	"key_map_up\000"
.LASF2000:
	.ascii	"sfx_bspact\000"
.LASF232:
	.ascii	"SPR_SHT2\000"
.LASF1866:
	.ascii	"midmap\000"
.LASF48:
	.ascii	"__sbuf\000"
.LASF1419:
	.ascii	"MT_UNDEAD\000"
.LASF812:
	.ascii	"S_TROO_RUN1\000"
.LASF813:
	.ascii	"S_TROO_RUN2\000"
.LASF814:
	.ascii	"S_TROO_RUN3\000"
.LASF815:
	.ascii	"S_TROO_RUN4\000"
.LASF816:
	.ascii	"S_TROO_RUN5\000"
.LASF817:
	.ascii	"S_TROO_RUN6\000"
.LASF818:
	.ascii	"S_TROO_RUN7\000"
.LASF819:
	.ascii	"S_TROO_RUN8\000"
.LASF2386:
	.ascii	"W_FindNumFromName\000"
.LASF1616:
	.ascii	"intflags\000"
.LASF1891:
	.ascii	"r_validcount\000"
.LASF1861:
	.ascii	"stairlock\000"
.LASF364:
	.ascii	"SPR_TNT1\000"
.LASF1860:
	.ascii	"lightingdata\000"
.LASF1254:
	.ascii	"S_COLU\000"
.LASF343:
	.ascii	"SPR_ELEC\000"
.LASF1144:
	.ascii	"S_KEENPAIN\000"
.LASF1818:
	.ascii	"pr_sargattack\000"
.LASF1589:
	.ascii	"flags\000"
.LASF2467:
	.ascii	"M_WriteFile\000"
.LASF962:
	.ascii	"S_SKULL_PAIN2\000"
.LASF1572:
	.ascii	"seesound\000"
.LASF312:
	.ascii	"SPR_BPAK\000"
.LASF1050:
	.ascii	"S_CYBER_RUN7\000"
.LASF1038:
	.ascii	"S_ARACH_PLEX2\000"
.LASF1039:
	.ascii	"S_ARACH_PLEX3\000"
.LASF1040:
	.ascii	"S_ARACH_PLEX4\000"
.LASF121:
	.ascii	"FILE\000"
.LASF2183:
	.ascii	"finesine\000"
.LASF2151:
	.ascii	"demolength\000"
.LASF1141:
	.ascii	"S_COMMKEEN10\000"
.LASF937:
	.ascii	"S_BOS2_PAIN\000"
.LASF1799:
	.ascii	"pr_saw\000"
.LASF191:
	.ascii	"uint_64_t\000"
.LASF1756:
	.ascii	"ga_nothing\000"
.LASF1721:
	.ascii	"comp_skymap\000"
.LASF998:
	.ascii	"S_SPID_DIE10\000"
.LASF999:
	.ascii	"S_SPID_DIE11\000"
.LASF2150:
	.ascii	"demobuffer\000"
.LASF2146:
	.ascii	"player_names\000"
.LASF1658:
	.ascii	"cheats\000"
.LASF555:
	.ascii	"S_POSS_PAIN\000"
.LASF90:
	.ascii	"char\000"
.LASF1300:
	.ascii	"S_GREENTORCH3\000"
.LASF1301:
	.ascii	"S_GREENTORCH4\000"
.LASF2454:
	.ascii	"P_ChecksumFinal\000"
.LASF1785:
	.ascii	"pr_damagemobj\000"
.LASF2280:
	.ascii	"clfastparm\000"
.LASF1911:
	.ascii	"source_net\000"
.LASF2191:
	.ascii	"gamemission\000"
.LASF2060:
	.ascii	"G_ChangedPlayerColour\000"
.LASF1552:
	.ascii	"MT_PULL\000"
.LASF1338:
	.ascii	"S_DETONATE2\000"
.LASF1339:
	.ascii	"S_DETONATE3\000"
.LASF247:
	.ascii	"SPR_PLSE\000"
.LASF239:
	.ascii	"SPR_PLSF\000"
.LASF238:
	.ascii	"SPR_PLSG\000"
.LASF2158:
	.ascii	"mousearray\000"
.LASF2029:
	.ascii	"sfx_skeatk\000"
.LASF1823:
	.ascii	"pr_scream\000"
.LASF194:
	.ascii	"doom2_19_compatibility\000"
.LASF246:
	.ascii	"SPR_PLSS\000"
.LASF1800:
	.ascii	"pr_plasma\000"
.LASF1675:
	.ascii	"m_tprev\000"
.LASF61:
	.ascii	"_nbuf\000"
.LASF2268:
	.ascii	"default_monkeys\000"
.LASF1840:
	.ascii	"pr_randomjump\000"
.LASF1117:
	.ascii	"S_SSWV_XDIE1\000"
.LASF1118:
	.ascii	"S_SSWV_XDIE2\000"
.LASF1119:
	.ascii	"S_SSWV_XDIE3\000"
.LASF1120:
	.ascii	"S_SSWV_XDIE4\000"
.LASF2168:
	.ascii	"joyxmove\000"
.LASF1088:
	.ascii	"S_PAIN_RAISE1\000"
.LASF1089:
	.ascii	"S_PAIN_RAISE2\000"
.LASF1090:
	.ascii	"S_PAIN_RAISE3\000"
.LASF1091:
	.ascii	"S_PAIN_RAISE4\000"
.LASF1092:
	.ascii	"S_PAIN_RAISE5\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF1261:
	.ascii	"S_DEADBOTTOM\000"
.LASF301:
	.ascii	"SPR_SUIT\000"
.LASF1593:
	.ascii	"ps_flash\000"
.LASF518:
	.ascii	"S_PLAY_RUN1\000"
.LASF519:
	.ascii	"S_PLAY_RUN2\000"
.LASF520:
	.ascii	"S_PLAY_RUN3\000"
.LASF521:
	.ascii	"S_PLAY_RUN4\000"
.LASF637:
	.ascii	"S_VILE_PAIN\000"
.LASF2113:
	.ascii	"G_WriteOptions\000"
.LASF1196:
	.ascii	"S_BKEY\000"
.LASF1830:
	.ascii	"pr_opendoor\000"
.LASF513:
	.ascii	"S_IFOG2\000"
.LASF514:
	.ascii	"S_IFOG3\000"
.LASF515:
	.ascii	"S_IFOG4\000"
.LASF516:
	.ascii	"S_IFOG5\000"
.LASF1665:
	.ascii	"bonuscount\000"
.LASF910:
	.ascii	"S_BOSS_DIE1\000"
.LASF911:
	.ascii	"S_BOSS_DIE2\000"
.LASF912:
	.ascii	"S_BOSS_DIE3\000"
.LASF913:
	.ascii	"S_BOSS_DIE4\000"
.LASF914:
	.ascii	"S_BOSS_DIE5\000"
.LASF915:
	.ascii	"S_BOSS_DIE6\000"
.LASF916:
	.ascii	"S_BOSS_DIE7\000"
.LASF2101:
	.ascii	"CheckSaveGame\000"
.LASF53:
	.ascii	"_file\000"
.LASF1926:
	.ascii	"sfx_dshtgn\000"
.LASF1414:
	.ascii	"MT_PLAYER\000"
.LASF193:
	.ascii	"doom_1666_compatibility\000"
.LASF871:
	.ascii	"S_HEAD_RUN1\000"
.LASF800:
	.ascii	"S_CPOS_XDIE4\000"
.LASF1126:
	.ascii	"S_SSWV_RAISE1\000"
.LASF84:
	.ascii	"_cvtbuf\000"
.LASF1128:
	.ascii	"S_SSWV_RAISE3\000"
.LASF149:
	.ascii	"sk_none\000"
.LASF1130:
	.ascii	"S_SSWV_RAISE5\000"
.LASF1776:
	.ascii	"BTS_RESTARTLEVEL\000"
.LASF1881:
	.ascii	"oldspecial\000"
.LASF1908:
	.ascii	"source_auto_load\000"
.LASF562:
	.ascii	"S_POSS_XDIE1\000"
.LASF563:
	.ascii	"S_POSS_XDIE2\000"
.LASF564:
	.ascii	"S_POSS_XDIE3\000"
.LASF565:
	.ascii	"S_POSS_XDIE4\000"
.LASF566:
	.ascii	"S_POSS_XDIE5\000"
.LASF567:
	.ascii	"S_POSS_XDIE6\000"
.LASF568:
	.ascii	"S_POSS_XDIE7\000"
.LASF569:
	.ascii	"S_POSS_XDIE8\000"
.LASF570:
	.ascii	"S_POSS_XDIE9\000"
.LASF764:
	.ascii	"S_FATT_DIE9\000"
.LASF2458:
	.ascii	"doom_vsnprintf\000"
.LASF2193:
	.ascii	"default_compatibility_level\000"
.LASF1806:
	.ascii	"pr_dmspawn\000"
.LASF1932:
	.ascii	"sfx_sawup\000"
.LASF1583:
	.ascii	"speed\000"
.LASF1323:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF143:
	.ascii	"GameMission_t\000"
.LASF2128:
	.ascii	"G_DoLoadGame\000"
.LASF277:
	.ascii	"SPR_SSWV\000"
.LASF478:
	.ascii	"S_PLASEXP2\000"
.LASF479:
	.ascii	"S_PLASEXP3\000"
.LASF480:
	.ascii	"S_PLASEXP4\000"
.LASF481:
	.ascii	"S_PLASEXP5\000"
.LASF420:
	.ascii	"S_CHAIN1\000"
.LASF421:
	.ascii	"S_CHAIN2\000"
.LASF422:
	.ascii	"S_CHAIN3\000"
.LASF525:
	.ascii	"S_PLAY_PAIN2\000"
.LASF2383:
	.ascii	"memset\000"
.LASF2019:
	.ascii	"sfx_bospn\000"
.LASF152:
	.ascii	"sk_medium\000"
.LASF1407:
	.ascii	"frame\000"
.LASF1476:
	.ascii	"MT_MEGA\000"
.LASF1973:
	.ascii	"sfx_sklatk\000"
.LASF2372:
	.ascii	"comp_lev_str\000"
.LASF1594:
	.ascii	"NUMPSPRITES\000"
.LASF33:
	.ascii	"__tm_hour\000"
.LASF60:
	.ascii	"_ubuf\000"
.LASF2448:
	.ascii	"P_UnArchiveSpecials\000"
.LASF1286:
	.ascii	"S_EVILEYE2\000"
.LASF1287:
	.ascii	"S_EVILEYE3\000"
.LASF1288:
	.ascii	"S_EVILEYE4\000"
.LASF2135:
	.ascii	"G_WriteDemoTiccmd\000"
.LASF790:
	.ascii	"S_CPOS_DIE1\000"
.LASF791:
	.ascii	"S_CPOS_DIE2\000"
.LASF42:
	.ascii	"_dso_handle\000"
.LASF793:
	.ascii	"S_CPOS_DIE4\000"
.LASF794:
	.ascii	"S_CPOS_DIE5\000"
.LASF792:
	.ascii	"S_CPOS_DIE3\000"
.LASF796:
	.ascii	"S_CPOS_DIE7\000"
.LASF795:
	.ascii	"S_CPOS_DIE6\000"
.LASF2312:
	.ascii	"key_zoomin\000"
.LASF1822:
	.ascii	"pr_skelfist\000"
.LASF2258:
	.ascii	"default_monster_backing\000"
.LASF144:
	.ascii	"GS_LEVEL\000"
.LASF1331:
	.ascii	"S_TECH2LAMP\000"
.LASF1203:
	.ascii	"S_BSKULL2\000"
.LASF1895:
	.ascii	"ST_VERTICAL\000"
.LASF465:
	.ascii	"S_TBALL1\000"
.LASF466:
	.ascii	"S_TBALL2\000"
.LASF486:
	.ascii	"S_BFGLAND2\000"
.LASF487:
	.ascii	"S_BFGLAND3\000"
.LASF488:
	.ascii	"S_BFGLAND4\000"
.LASF489:
	.ascii	"S_BFGLAND5\000"
.LASF490:
	.ascii	"S_BFGLAND6\000"
.LASF388:
	.ascii	"S_SGUNUP\000"
.LASF1688:
	.ascii	"PST_LIVE\000"
.LASF2209:
	.ascii	"nodrawers\000"
.LASF1553:
	.ascii	"MT_DOGS\000"
.LASF341:
	.ascii	"SPR_TRE1\000"
.LASF342:
	.ascii	"SPR_TRE2\000"
.LASF1328:
	.ascii	"S_TECHLAMP2\000"
.LASF1588:
	.ascii	"activesound\000"
.LASF610:
	.ascii	"S_VILE_STND2\000"
.LASF1564:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF349:
	.ascii	"SPR_TRED\000"
.LASF2235:
	.ascii	"mouseSensitivity_vert\000"
.LASF1691:
	.ascii	"playerstate_t\000"
.LASF1069:
	.ascii	"S_PAIN_STND\000"
.LASF775:
	.ascii	"S_CPOS_STND2\000"
.LASF1221:
	.ascii	"S_PINS\000"
.LASF1216:
	.ascii	"S_PINV\000"
.LASF2121:
	.ascii	"demoname\000"
.LASF1915:
	.ascii	"wadfile_info_t\000"
.LASF2254:
	.ascii	"default_dog_jumping\000"
.LASF103:
	.ascii	"_gamma_signgam\000"
.LASF224:
	.ascii	"references\000"
.LASF2192:
	.ascii	"compatibility_level\000"
.LASF766:
	.ascii	"S_FATT_RAISE1\000"
.LASF767:
	.ascii	"S_FATT_RAISE2\000"
.LASF768:
	.ascii	"S_FATT_RAISE3\000"
.LASF769:
	.ascii	"S_FATT_RAISE4\000"
.LASF770:
	.ascii	"S_FATT_RAISE5\000"
.LASF771:
	.ascii	"S_FATT_RAISE6\000"
.LASF772:
	.ascii	"S_FATT_RAISE7\000"
.LASF773:
	.ascii	"S_FATT_RAISE8\000"
.LASF2085:
	.ascii	"side\000"
.LASF1582:
	.ascii	"deathsound\000"
.LASF2021:
	.ascii	"sfx_manatk\000"
.LASF38:
	.ascii	"__tm_yday\000"
.LASF2081:
	.ascii	"strafe\000"
.LASF2450:
	.ascii	"P_UnArchiveMap\000"
.LASF1620:
	.ascii	"strafecount\000"
.LASF1940:
	.ascii	"sfx_pstart\000"
.LASF1972:
	.ascii	"sfx_pesit\000"
.LASF93:
	.ascii	"_niobs\000"
.LASF2270:
	.ascii	"myargc\000"
.LASF2189:
	.ascii	"fastparm\000"
.LASF1327:
	.ascii	"S_TECHLAMP\000"
.LASF423:
	.ascii	"S_CHAINFLASH1\000"
.LASF424:
	.ascii	"S_CHAINFLASH2\000"
.LASF1302:
	.ascii	"S_REDTORCH\000"
.LASF153:
	.ascii	"sk_hard\000"
.LASF2221:
	.ascii	"demover\000"
.LASF180:
	.ascii	"am_noammo\000"
.LASF1684:
	.ascii	"consistancy\000"
.LASF156:
	.ascii	"it_bluecard\000"
.LASF1608:
	.ascii	"floorz\000"
.LASF604:
	.ascii	"S_SPOS_RAISE1\000"
.LASF605:
	.ascii	"S_SPOS_RAISE2\000"
.LASF606:
	.ascii	"S_SPOS_RAISE3\000"
.LASF607:
	.ascii	"S_SPOS_RAISE4\000"
.LASF608:
	.ascii	"S_SPOS_RAISE5\000"
.LASF1726:
	.ascii	"comp_stairs\000"
.LASF2053:
	.ascii	"start_p\000"
.LASF2426:
	.ascii	"M_ClearRandom\000"
.LASF1808:
	.ascii	"pr_trywalk\000"
.LASF1207:
	.ascii	"S_YSKULL2\000"
.LASF788:
	.ascii	"S_CPOS_PAIN\000"
.LASF1947:
	.ascii	"sfx_plpain\000"
.LASF2319:
	.ascii	"key_hud\000"
.LASF1249:
	.ascii	"S_CSAW\000"
.LASF2447:
	.ascii	"P_UnArchiveThinkers\000"
.LASF2429:
	.ascii	"strlen\000"
.LASF1975:
	.ascii	"sfx_skepch\000"
.LASF1710:
	.ascii	"comp_telefrag\000"
.LASF1076:
	.ascii	"S_PAIN_ATK1\000"
.LASF1077:
	.ascii	"S_PAIN_ATK2\000"
.LASF1078:
	.ascii	"S_PAIN_ATK3\000"
.LASF1079:
	.ascii	"S_PAIN_ATK4\000"
.LASF1977:
	.ascii	"sfx_claw\000"
.LASF731:
	.ascii	"S_FATT_STND2\000"
.LASF379:
	.ascii	"S_PISTOLDOWN\000"
.LASF31:
	.ascii	"__tm_sec\000"
.LASF2470:
	.ascii	"AM_Ticker\000"
.LASF1600:
	.ascii	"mapthing_t\000"
.LASF62:
	.ascii	"_blksize\000"
.LASF1240:
	.ascii	"S_ROCK\000"
.LASF1855:
	.ascii	"blockbox\000"
.LASF2375:
	.ascii	"longtics\000"
.LASF2129:
	.ascii	"length\000"
.LASF2204:
	.ascii	"netgame\000"
.LASF2061:
	.ascii	"G_DoReborn\000"
.LASF2114:
	.ascii	"demo_p\000"
.LASF373:
	.ascii	"S_PUNCH1\000"
.LASF374:
	.ascii	"S_PUNCH2\000"
.LASF375:
	.ascii	"S_PUNCH3\000"
.LASF376:
	.ascii	"S_PUNCH4\000"
.LASF377:
	.ascii	"S_PUNCH5\000"
.LASF973:
	.ascii	"S_SPID_RUN3\000"
.LASF974:
	.ascii	"S_SPID_RUN4\000"
.LASF975:
	.ascii	"S_SPID_RUN5\000"
.LASF976:
	.ascii	"S_SPID_RUN6\000"
.LASF977:
	.ascii	"S_SPID_RUN7\000"
.LASF978:
	.ascii	"S_SPID_RUN8\000"
.LASF979:
	.ascii	"S_SPID_RUN9\000"
.LASF2391:
	.ascii	"P_RemoveMobj\000"
.LASF1577:
	.ascii	"painsound\000"
.LASF2314:
	.ascii	"key_chat\000"
.LASF2424:
	.ascii	"HU_dequeueChatChar\000"
.LASF811:
	.ascii	"S_TROO_STND2\000"
.LASF2233:
	.ascii	"wipegamestate\000"
.LASF200:
	.ascii	"boom_201_compatibility\000"
.LASF14:
	.ascii	"wint_t\000"
.LASF1705:
	.ascii	"partime\000"
.LASF2222:
	.ascii	"singledemo\000"
.LASF2310:
	.ascii	"key_autorun\000"
.LASF1886:
	.ascii	"slopetype\000"
.LASF1885:
	.ascii	"bbox\000"
.LASF1929:
	.ascii	"sfx_dbload\000"
.LASF1641:
	.ascii	"playerstate\000"
.LASF1743:
	.ascii	"menuactive_e\000"
.LASF12:
	.ascii	"_off_t\000"
.LASF1827:
	.ascii	"pr_spawnfly\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF1418:
	.ascii	"MT_FIRE\000"
.LASF1630:
	.ascii	"friction\000"
.LASF2474:
	.ascii	"F_Ticker\000"
.LASF1385:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1386:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1387:
	.ascii	"S_BSKUL_RUN3\000"
.LASF96:
	.ascii	"_seed\000"
.LASF1001:
	.ascii	"S_BSPI_STND2\000"
.LASF58:
	.ascii	"_seek\000"
.LASF2229:
	.ascii	"deathmatchstarts\000"
.LASF1857:
	.ascii	"thinglist\000"
.LASF2156:
	.ascii	"gamekeydown\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
