	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"d_deh.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	deh_procError, %function
deh_procError:
.LFB24:
	.file 1 "c:/devl/prboom3ds/src/d_deh.c"
	.loc 1 2603 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r1
	sub	sp, sp, #1024
	.cfi_def_cfa_offset 1032
	.loc 1 2606 0
	mov	r1, r2
.LVL1:
	mov	r0, sp
.LVL2:
	mov	r2, #1024
.LVL3:
	bl	strncpy
.LVL4:
	.loc 1 2607 0
	cmp	r4, #0
	beq	.L1
	.loc 1 2607 0 is_stmt 0 discriminator 1
	mov	r0, r4
	mov	r2, sp
	ldr	r1, .L8
	bl	fprintf
.LVL5:
.L1:
	.loc 1 2609 0 is_stmt 1
	add	sp, sp, #1024
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL6:
.L9:
	.align	2
.L8:
	.word	.LC0
	.cfi_endproc
.LFE24:
	.size	deh_procError, .-deh_procError
	.align	2
	.type	dehfgets, %function
dehfgets:
.LFB5:
	.loc 1 84 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL7:
	.loc 1 85 0
	ldr	r3, [r2, #4]
	cmp	r3, #0
	beq	.L29
	.loc 1 87 0
	cmp	r1, #0
	.loc 1 84 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	lr, r1
	.loc 1 87 0
	beq	.L17
	.loc 1 87 0 is_stmt 0 discriminator 1
	ldr	ip, [r2]
	mov	r5, r0
	ldrb	r0, [ip]	@ zero_extendqisi2
.LVL8:
	cmp	r0, #0
	ldmeqfd	sp!, {r4, r5, pc}
	.loc 1 87 0 discriminator 2
	ldr	r3, [r2, #8]
	cmp	r3, #0
	ble	.L19
	.loc 1 89 0 is_stmt 1
	cmp	r1, #1
	movne	r1, r5
.LVL9:
	bne	.L15
	b	.L30
.LVL10:
.L31:
.LBB31:
	.loc 1 94 0 discriminator 1
	ldr	ip, [r2]
	ldrb	r3, [ip]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r2, #8]
	.loc 1 94 0 is_stmt 0
	cmp	r3, #0
	beq	.L14
.LVL11:
.L15:
	.loc 1 95 0 is_stmt 1 discriminator 3
	sub	r3, r3, #1
	add	r4, ip, #1
	str	r3, [r2, #8]
	str	r4, [r2]
	ldrb	r3, [ip]	@ zero_extendqisi2
	sub	lr, lr, #1
.LVL12:
	.loc 1 94 0 discriminator 3
	cmp	r3, #10
	.loc 1 95 0 discriminator 3
	strb	r3, [r1], #1
.LVL13:
	.loc 1 94 0 discriminator 3
	beq	.L14
	.loc 1 94 0 is_stmt 0 discriminator 4
	cmp	lr, #1
	bne	.L31
.L14:
	.loc 1 97 0 is_stmt 1
	mov	r3, #0
	mov	r0, r5
	strb	r3, [r1]
	ldmfd	sp!, {r4, r5, pc}
.LVL14:
.L30:
.LBE31:
	.loc 1 90 0
	sub	r3, r3, #1
	add	r1, ip, #1
	str	r3, [r2, #8]
	str	r1, [r2]
	ldrb	r3, [ip]	@ zero_extendqisi2
	mov	r0, r5
	strb	r3, [r5]
	ldmfd	sp!, {r4, r5, pc}
.LVL15:
.L17:
	.loc 1 88 0
	mov	r0, r1
.LVL16:
	ldmfd	sp!, {r4, r5, pc}
.LVL17:
.L29:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 1 86 0
	ldr	r2, [r2, #12]
.LVL18:
	b	fgets
.LVL19:
.L19:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 88 0
	mov	r0, #0
	.loc 1 100 0
	ldmfd	sp!, {r4, r5, pc}
	.cfi_endproc
.LFE5:
	.size	dehfgets, .-dehfgets
	.align	2
	.type	dehfeof, %function
dehfeof:
.LFB6:
	.loc 1 103 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL20:
	.loc 1 104 0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L36
	.loc 1 104 0 is_stmt 0 discriminator 2
	ldr	r3, [r0]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L37
	.loc 1 104 0
	mov	r0, #1
.LVL21:
	.loc 1 105 0 is_stmt 1
	bx	lr
.LVL22:
.L37:
	.loc 1 104 0 discriminator 5
	ldr	r0, [r0, #8]
.LVL23:
	cmp	r0, #0
	movgt	r0, #0
	movle	r0, #1
	bx	lr
.LVL24:
.L36:
.LBB34:
.LBB35:
	.loc 1 104 0 is_stmt 0
	ldr	r3, [r0, #12]
	ldrh	r0, [r3, #12]
.LVL25:
	mov	r0, r0, lsr #5
	and	r0, r0, #1
	bx	lr
.LBE35:
.LBE34:
	.cfi_endproc
.LFE6:
	.size	dehfeof, .-dehfeof
	.align	2
	.global	D_BuildBEXTables
	.type	D_BuildBEXTables, %function
D_BuildBEXTables:
.LFB8:
	.loc 1 1367 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 1370 0
	ldr	r0, .L50
	bl	puts
.LVL26:
	ldr	r2, .L50+4
	ldr	r3, .L50+8
	ldr	r0, .L50+12
.LVL27:
.L39:
	.loc 1 1373 0 discriminator 3
	ldr	r1, [r2, #12]
	add	r2, r2, #28
	str	r1, [r3, #4]!
	.loc 1 1372 0 discriminator 3
	cmp	r3, r0
	bne	.L39
	.loc 1 1375 0
	ldr	r0, .L50+16
	bl	puts
.LVL28:
	ldr	r4, .L50+20
	ldr	r5, .L50+24
	add	r6, r4, #560
.LVL29:
.L40:
	.loc 1 1377 0 discriminator 3
	ldr	r0, [r4, #4]!
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL30:
	.loc 1 1376 0 discriminator 3
	cmp	r4, r6
	.loc 1 1377 0 discriminator 3
	str	r0, [r5, #4]!
	.loc 1 1376 0 discriminator 3
	bne	.L40
	.loc 1 1378 0
	mov	r2, #0
	ldr	r3, .L50+28
	ldr	r7, .L50+32
	.loc 1 1380 0
	ldr	r0, .L50+36
	.loc 1 1378 0
	str	r2, [r3, #560]
	mov	r4, r7
	.loc 1 1380 0
	bl	puts
.LVL31:
	ldr	r5, .L50+40
	add	r6, r7, #268
.LVL32:
.L41:
	.loc 1 1382 0 discriminator 3
	ldr	r0, [r5, #16]!
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL33:
	str	r0, [r4, #4]!
	.loc 1 1381 0 discriminator 3
	cmp	r4, r6
	bne	.L41
	.loc 1 1383 0
	mov	r3, #0
	.loc 1 1385 0
	ldr	r0, .L50+44
	mov	r1, #114
	.loc 1 1383 0
	str	r3, [r7, #272]
	str	r3, [r7]
	.loc 1 1386 0
	mov	r5, #1
	.loc 1 1385 0
	bl	printf
.LVL34:
	ldr	r4, .L50+48
	ldr	r6, .L50+52
.LVL35:
.L44:
	.loc 1 1387 0
	ldr	r0, .L50+56
	mov	r1, r5
	ldr	r2, [r4, #36]
	bl	printf
.LVL36:
	.loc 1 1388 0
	ldr	r0, [r4, #36]
	cmp	r0, #0
	.loc 1 1391 0
	streq	r0, [r6]
	.loc 1 1388 0
	beq	.L43
	.loc 1 1389 0
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL37:
	str	r0, [r6]
.L43:
	.loc 1 1386 0 discriminator 2
	add	r5, r5, #1
.LVL38:
	cmp	r5, #114
	add	r4, r4, #36
	add	r6, r6, #4
	bne	.L44
	.loc 1 1393 0
	mov	r2, #0
	ldr	r3, .L50+60
	.loc 1 1395 0
	ldr	r0, .L50+64
	.loc 1 1393 0
	str	r2, [r3, #456]
	str	r2, [r3]
	.loc 1 1396 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL39:
	.loc 1 1395 0
	b	puts
.LVL40:
.L51:
	.align	2
.L50:
	.word	.LC1
	.word	states
	.word	.LANCHOR0-4
	.word	.LANCHOR0+4300
	.word	.LC2
	.word	sprnames-4
	.word	deh_spritenames-4
	.word	deh_spritenames
	.word	deh_musicnames
	.word	.LC3
	.word	S_music
	.word	.LC4
	.word	S_sfx
	.word	deh_soundnames+4
	.word	.LC5
	.word	deh_soundnames
	.word	.LC6
	.cfi_endproc
.LFE8:
	.size	D_BuildBEXTables, .-D_BuildBEXTables
	.align	2
	.global	deh_procStringSub
	.type	deh_procStringSub, %function
deh_procStringSub:
.LFB26:
	.loc 1 2700 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL41:
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
	ldr	r10, .L92
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 2700 0
	mov	r8, r0
	mov	r6, r1
	mov	r9, r2
	mov	fp, r3
	mov	r4, r10
	.loc 1 2705 0
	mov	r5, #0
	ldr	r7, .L92+4
	b	.L70
.LVL42:
.L56:
	.loc 1 2705 0 is_stmt 0 discriminator 2
	cmp	r4, r7
	add	r5, r5, #1
.LVL43:
	beq	.L91
.LVL44:
.L70:
	.loc 1 2707 0 is_stmt 1
	ldr	r3, [r4, #8]
	add	r4, r4, #12
	cmp	r3, #0
	.loc 1 2708 0
	ldreq	r3, [r4, #-12]
	ldreq	r3, [r3]
	streq	r3, [r4, #-4]
	.loc 1 2711 0
	cmp	r6, #0
	ldrne	r0, [r4, #-4]
	.loc 1 2712 0
	ldreq	r0, [r4, #-8]
	.loc 1 2711 0
	movne	r1, r6
	.loc 1 2712 0
	moveq	r1, r8
	bl	strcasecmp
.LVL45:
	clz	r3, r0
	mov	r3, r3, lsr #5
.LVL46:
	.loc 1 2714 0
	cmp	r3, #0
	beq	.L56
.LBB36:
	.loc 1 2717 0
	mov	r4, r5, asl #1
	add	r7, r4, r5
	mov	r7, r7, asl #2
	ldr	r3, [r10, r7]
.LVL47:
	mov	r1, #1
	mov	r0, r9
.LVL48:
	mov	r2, #0
	str	r3, [sp, #20]
	bl	Z_Strdup
.LVL49:
	ldr	r3, [sp, #20]
	str	r0, [r3]
.LVL50:
.LBB37:
	.loc 1 2722 0
	ldr	r3, [r10, r7]
	ldr	r1, [r3]
.LVL51:
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	.loc 1 2725 0
	mov	lr, #10
	b	.L60
.LVL52:
.L58:
	.loc 1 2727 0
	mov	r2, r1
	strb	r3, [r0]
.L59:
.LVL53:
	.loc 1 2722 0 discriminator 2
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	add	r0, r0, #1
.LVL54:
	cmp	r3, #0
	add	r1, r2, #1
.LVL55:
	beq	.L57
.L60:
	.loc 1 2724 0
	cmp	r3, #92
	bne	.L58
	.loc 1 2724 0 is_stmt 0 discriminator 1
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	.loc 1 2725 0 is_stmt 1 discriminator 1
	add	r2, r1, #1
.LVL56:
	.loc 1 2724 0 discriminator 1
	and	ip, ip, #223
	cmp	ip, #78
	.loc 1 2725 0 discriminator 1
	streqb	lr, [r0]
	.loc 1 2724 0 discriminator 1
	beq	.L59
	b	.L58
.LVL57:
.L91:
.LBE37:
.LBE36:
	.loc 1 2753 0
	cmp	fp, #0
	beq	.L88
	.loc 1 2753 0 is_stmt 0 discriminator 1
	cmp	r8, #0
	mov	r0, fp
	movne	r2, r8
	moveq	r2, r6
	ldr	r1, .L92+8
	str	r3, [sp, #20]
	bl	fprintf
.LVL58:
	ldr	r3, [sp, #20]
.L88:
	.loc 1 2757 0 is_stmt 1
	mov	r0, r3
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL59:
.L57:
	.cfi_restore_state
.LBB44:
.LBB38:
	.loc 1 2729 0
	mov	r3, #0
.LBE38:
	.loc 1 2732 0
	cmp	r8, r3
.LBB39:
	.loc 1 2729 0
	strb	r3, [r0]
.LBE39:
	.loc 1 2732 0
	beq	.L61
	.loc 1 2733 0
	cmp	fp, r3
	beq	.L69
	.loc 1 2733 0 is_stmt 0 discriminator 1
	mov	r0, fp
.LVL60:
	mov	r2, r8
	mov	r3, r9
	ldr	r1, .L92+12
.LVL61:
	bl	fprintf
.LVL62:
.L69:
.LBE44:
	.loc 1 2753 0 is_stmt 1
	mov	r3, #1
	.loc 1 2757 0
	mov	r0, r3
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL63:
.L61:
	.cfi_restore_state
.LBB45:
	.loc 1 2737 0
	cmp	fp, #0
	beq	.L69
	.loc 1 2739 0 discriminator 1
	mov	r0, r6
.LVL64:
	bl	strlen
.LVL65:
	.loc 1 2737 0 discriminator 1
	ldr	r7, .L92+16
	ldr	r8, .L92+20
.LVL66:
	cmp	r0, #12
	movhi	r3, r7
	movls	r3, r8
	.loc 1 2740 0 discriminator 1
	mov	r0, r9
	.loc 1 2737 0 discriminator 1
	str	r3, [sp, #20]
	.loc 1 2740 0 discriminator 1
	bl	strlen
.LVL67:
	.loc 1 2737 0 discriminator 1
	cmp	r0, #12
	movhi	r0, r7
	movls	r0, r8
	add	r4, r4, r5
	add	r10, r10, r4, asl #2
	ldr	r1, [r10, #4]
	ldr	r3, [sp, #20]
	str	r0, [sp, #4]
	mov	r2, r6
	str	r1, [sp, #8]
	str	r9, [sp]
	ldr	r1, .L92+24
	mov	r0, fp
	bl	fprintf
.LVL68:
	.loc 1 2744 0 discriminator 1
	ldr	r2, [r10, #4]
.LVL69:
.LBB40:
.LBB41:
	.loc 1 2997 0 discriminator 1
	ldr	lr, .L92+28
	.loc 1 3003 0 discriminator 1
	mov	r3, #92
	mov	r1, #110
	b	.L65
.LVL70:
.L68:
	.loc 1 3002 0
	cmp	ip, #10
	.loc 1 3003 0
	streqb	r3, [lr]
.LVL71:
	streqb	r1, [lr, #1]
.LVL72:
	streqb	r3, [lr, #2]
	streqb	ip, [lr, #3]
	.loc 1 3005 0
	strneb	ip, [lr]
	.loc 1 3003 0
	addeq	lr, lr, #4
.LVL73:
	.loc 1 3005 0
	addne	lr, lr, #1
.L65:
.LVL74:
	.loc 1 3000 0
	ldrb	ip, [r9], #1	@ zero_extendqisi2
.LVL75:
	cmp	ip, #0
	bne	.L68
.LBE41:
.LBE40:
	.loc 1 2744 0
	mov	r0, fp
	ldr	r1, .L92+32
	ldr	r3, .L92+28
.LBB43:
.LBB42:
	.loc 1 3007 0
	strb	ip, [lr]
.LBE42:
.LBE43:
	.loc 1 2744 0
	bl	fprintf
.LVL76:
	b	.L69
.L93:
	.align	2
.L92:
	.word	.LANCHOR2
	.word	.LANCHOR2+3672
	.word	.LC12
	.word	.LC9
	.word	.LC7
	.word	.LC8
	.word	.LC10
	.word	.LANCHOR1-3880
	.word	.LC11
.LBE45:
	.cfi_endproc
.LFE26:
	.size	deh_procStringSub, .-deh_procStringSub
	.align	2
	.type	deh_procText, %function
deh_procText:
.LFB23:
	.loc 1 2454 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 2096
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL77:
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
	.loc 1 2474 0
	ldr	r9, .L166
	.loc 1 2454 0
	sub	sp, sp, #2096
	.cfi_def_cfa_offset 2132
	.loc 1 2474 0
	ldr	r3, [r9, #-2856]
	.loc 1 2454 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 2144
	.loc 1 2474 0
	cmp	r3, #0
	.loc 1 2454 0
	mov	r4, r0
	mov	r8, r1
	mov	r6, r2
	.loc 1 2474 0
	beq	.L95
	.loc 1 2476 0
	cmp	r1, #0
	beq	.L96
	.loc 1 2476 0 is_stmt 0 discriminator 1
	mov	r3, r1
	ldr	r0, .L166+4
.LVL78:
	mov	r1, #1
.LVL79:
	mov	r2, #47
.LVL80:
	bl	fwrite
.LVL81:
.L96:
	.loc 1 2478 0 is_stmt 1
	add	r5, sp, #56
	mov	r1, r6
	mov	r0, r5
	bl	strcpy
.LVL82:
	.loc 1 2479 0
	b	.L97
.L157:
	.loc 1 2479 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L94
	.loc 1 2480 0 is_stmt 1
	mov	r0, r5
	mov	r1, #2048
	mov	r2, r4
	bl	dehfgets
.LVL83:
.L97:
	.loc 1 2479 0
	mov	r0, r4
	bl	dehfeof
.LVL84:
	cmp	r0, #0
	beq	.L157
.L94:
	.loc 1 2600 0
	add	sp, sp, #2096
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL85:
.L95:
	.cfi_restore_state
.LBB52:
.LBB53:
	.loc 1 2486 0
	add	r3, sp, #20
	mov	r0, r2
.LVL86:
	add	r2, sp, #24
.LVL87:
	str	r3, [sp]
	ldr	r1, .L166+8
.LVL88:
	sub	r3, r2, #8
	bl	sscanf
.LVL89:
	.loc 1 2487 0
	cmp	r8, #0
	beq	.L100
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #16]
	str	r1, [sp]
	add	r2, sp, #24
	mov	r0, r8
	ldr	r1, .L166+12
	bl	fprintf
.LVL90:
.L100:
	add	r5, sp, #56
.LBE53:
.LBE52:
	.loc 1 2454 0
	mov	r10, r5
	ldr	r6, [sp, #16]
.LVL91:
	ldr	r1, [sp, #20]
	add	r1, r1, r6
.L101:
	rsb	r7, r5, r10
	b	.L102
.LVL92:
.L160:
.LBB66:
.LBB64:
.LBB54:
.LBB55:
.LBB56:
	.loc 1 110 0
	ldr	r3, [r4]
	str	r2, [r4, #8]
	add	r2, r3, #1
	str	r2, [r4]
	ldrb	r0, [r3]	@ zero_extendqisi2
.LBE56:
.LBE55:
	.loc 1 2495 0
	cmp	r0, #13
	bne	.L158
.LVL93:
.L102:
	.loc 1 2494 0
	cmp	r1, r7
	ble	.L103
.LBB59:
.LBB57:
	.loc 1 109 0
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L159
	ldr	r3, [r4, #8]
	.loc 1 110 0
	cmp	r3, #0
	sub	r2, r3, #1
	bgt	.L160
.L103:
.LBE57:
.LBE59:
	.loc 1 2497 0
	mov	r4, #0
.LVL94:
	add	r3, sp, #2096
	add	r3, r3, #8
	add	r7, r3, r7
.LVL95:
.LBE54:
	.loc 1 2504 0
	cmp	r6, #4
.LBB61:
	.loc 1 2497 0
	strb	r4, [r7, #-2048]
.LBE61:
	.loc 1 2504 0
	beq	.L161
	.loc 1 2535 0
	cmp	r6, #6
	ble	.L162
.LVL96:
.L109:
	.loc 1 2589 0
	cmp	r8, #0
	beq	.L125
	mov	r0, r5
	bl	strlen
.LVL97:
	ldr	r2, [sp, #20]
	ldr	r1, .L166+16
	cmp	r0, #12
	ldr	r3, .L166+20
	str	r6, [sp]
	movls	r3, r1
	str	r2, [sp, #4]
	mov	r0, r8
	ldr	r1, .L166+24
	mov	r2, r5
	bl	fprintf
.LVL98:
	ldr	r6, [sp, #16]
.L125:
	.loc 1 2590 0
	mov	r0, r5
	bl	strlen
.LVL99:
	cmp	r6, r0
	.loc 1 2461 0
	movhi	r4, #0
	.loc 1 2590 0
	bls	.L163
.L122:
.LVL100:
	.loc 1 2596 0
	mov	r1, r5
	mov	r3, r8
	mov	r0, #0
	mov	r2, r4
	bl	deh_procStringSub
.LVL101:
.L123:
	.loc 1 2598 0
	mov	r0, r4
	bl	Z_Free
.LVL102:
.LBE64:
.LBE66:
	.loc 1 2600 0
	add	sp, sp, #2096
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL103:
.L159:
	.cfi_restore_state
.LBB67:
.LBB65:
.LBB62:
.LBB60:
.LBB58:
	.loc 1 109 0
	ldr	r0, [r4, #12]
	bl	fgetc
.LVL104:
.LBE58:
.LBE60:
	.loc 1 2494 0
	cmn	r0, #1
	ldr	r6, [sp, #16]
	beq	.L103
	ldr	r1, [sp, #20]
	.loc 1 2495 0
	cmp	r0, #13
	add	r1, r1, r6
	beq	.L102
.L158:
.LVL105:
	.loc 1 2496 0
	strb	r0, [r10], #1
.LVL106:
	b	.L101
.LVL107:
.L162:
	ldr	r3, [sp, #20]
.L108:
.LBE62:
	.loc 1 2535 0
	cmp	r3, #6
	bgt	.L109
	.loc 1 2537 0
	cmp	r3, r6
	movlt	r2, r3
	movge	r2, r6
	.loc 1 2539 0
	adds	r1, r8, #0
	movne	r1, #1
	cmp	r6, r3
	cmpne	r8, #0
	.loc 1 2537 0
	str	r2, [sp, #12]
.LVL108:
	.loc 1 2539 0
	str	r1, [sp, #8]
	beq	.L114
	str	r2, [sp]
	mov	r0, r8
	mov	r2, r6
.LVL109:
	ldr	r1, .L166+28
	bl	fprintf
.LVL110:
	ldr	r6, [sp, #16]
.L114:
.LVL111:
	.loc 1 2507 0
	mov	r4, #1
	ldr	fp, .L166+32
	.loc 1 2547 0
	ldr	r10, .L166+36
.LVL112:
	b	.L117
.LVL113:
.L115:
	.loc 1 2543 0
	add	r4, r4, #1
.LVL114:
	cmp	r4, #114
	beq	.L164
.LVL115:
.L117:
	.loc 1 2546 0
	ldr	r7, [fp, #36]
	add	fp, fp, #36
	mov	r0, r7
	bl	strlen
.LVL116:
	cmp	r0, r6
	bne	.L115
	.loc 1 2547 0
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	strncasecmp
.LVL117:
	cmp	r0, #0
	bne	.L115
	ldr	r3, [r10, r4, asl #2]
	mov	ip, r4, asl #2
	cmp	r3, #0
	bne	.L115
	.loc 1 2549 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L116
	add	r6, r5, r6
	str	r6, [sp]
	mov	r0, r8
	mov	r2, r7
	ldr	r3, [sp, #12]
	ldr	r1, .L166+40
	str	ip, [sp, #8]
	bl	fprintf
.LVL118:
	ldr	r6, [sp, #16]
	ldr	ip, [sp, #8]
.L116:
	.loc 1 2553 0
	mov	r2, #0
	add	r0, r5, r6
	mov	r1, #1
	str	ip, [sp, #8]
	bl	Z_Strdup
.LVL119:
	.loc 1 2556 0
	mov	r3, #1
	ldr	ip, [sp, #8]
	.loc 1 2553 0
	ldr	r2, .L166+32
	add	r4, r4, r4, asl #3
.LVL120:
	.loc 1 2556 0
	add	ip, r9, ip
	.loc 1 2553 0
	str	r0, [r2, r4, asl #2]
	.loc 1 2556 0
	str	r3, [ip, #-2288]
.LVL121:
.L112:
	.loc 1 2461 0
	mov	r4, #0
	b	.L123
.LVL122:
.L161:
	.loc 1 2504 0
	ldr	r3, [sp, #20]
	cmp	r3, #4
	bne	.L108
.LVL123:
	.loc 1 2507 0
	ldr	r7, .L166+44
	ldr	r10, [r7]
.LVL124:
	cmp	r10, r4
	beq	.L109
	mov	r6, r7
	.loc 1 2509 0
	ldr	fp, .L166+48
.LVL125:
.L113:
	mov	r0, r10
	mov	r1, r5
	mov	r2, #4
	bl	strncasecmp
.LVL126:
	cmp	r0, #0
	bne	.L110
	ldr	r3, [fp, r4, asl #2]
	mov	ip, r4, asl #2
	cmp	r3, #0
	beq	.L165
.L110:
	.loc 1 2507 0
	ldr	r10, [r6, #4]!
	.loc 1 2531 0
	add	r4, r4, #1
.LVL127:
	.loc 1 2507 0
	cmp	r10, #0
	bne	.L113
	mov	r6, #4
	b	.L109
.LVL128:
.L163:
	.loc 1 2592 0
	mov	r1, #1
	mov	r2, #0
	add	r0, r5, r6
	bl	Z_Strdup
.LVL129:
	.loc 1 2593 0
	mov	r2, #0
	ldr	r3, [sp, #16]
	add	r1, sp, #2096
	add	r1, r1, #8
	add	r3, r1, r3
	.loc 1 2592 0
	mov	r4, r0
.LVL130:
	.loc 1 2593 0
	strb	r2, [r3, #-2048]
	b	.L122
.LVL131:
.L164:
	.loc 1 2543 0
	mov	r4, #1
.LVL132:
	ldr	r10, .L166+52
	.loc 1 2569 0
	ldr	fp, .L166+56
	b	.L120
.LVL133:
.L118:
	.loc 1 2565 0
	add	r4, r4, #1
.LVL134:
	cmp	r4, #68
	beq	.L109
.LVL135:
.L120:
	.loc 1 2568 0
	ldr	r7, [r10, r4, asl #4]
	mov	r0, r7
	bl	strlen
.LVL136:
	cmp	r0, r6
	bne	.L118
	.loc 1 2569 0
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	strncasecmp
.LVL137:
	cmp	r0, #0
	bne	.L118
	ldr	r3, [fp, r4, asl #2]
	mov	ip, r4, asl #2
	cmp	r3, #0
	bne	.L118
	.loc 1 2571 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L119
	add	r6, r5, r6
	str	r6, [sp]
	mov	r0, r8
	mov	r2, r7
	ldr	r3, [sp, #12]
	ldr	r1, .L166+60
	str	ip, [sp, #8]
	bl	fprintf
.LVL138:
	ldr	r6, [sp, #16]
	ldr	ip, [sp, #8]
.L119:
	.loc 1 2575 0
	add	r0, r5, r6
	mov	r1, #1
	mov	r2, #0
	str	ip, [sp, #8]
	bl	Z_Strdup
.LVL139:
	.loc 1 2578 0
	mov	r3, #1
	ldr	ip, [sp, #8]
	.loc 1 2575 0
	str	r0, [r10, r4, asl #4]
	.loc 1 2578 0
	add	ip, r9, ip
	str	r3, [ip, #-1832]
.LVL140:
	b	.L112
.LVL141:
.L165:
	.loc 1 2511 0
	cmp	r8, #0
	beq	.L111
	mov	r1, #4
	add	r2, r5, r1
	stmia	sp, {r1, r2}
	mov	r0, r8
	mov	r3, r10
	ldr	r1, .L166+64
	mov	r2, r4
	str	ip, [sp, #8]
	bl	fprintf
.LVL142:
	ldr	ip, [sp, #8]
.L111:
.LBB63:
	.loc 1 2521 0
	ldr	r0, [r7, r4, asl #2]
	mov	r1, #1
	mov	r2, #0
	str	ip, [sp, #8]
	bl	Z_Strdup
.LVL143:
	.loc 1 2524 0
	mov	r3, #1
	.loc 1 2526 0
	ldr	r1, [sp, #16]
	.loc 1 2524 0
	ldr	ip, [sp, #8]
	.loc 1 2526 0
	add	r1, r5, r1
	.loc 1 2524 0
	add	ip, r9, ip
	.loc 1 2526 0
	ldr	r2, [sp, #20]
	.loc 1 2521 0
	str	r0, [r7, r4, asl #2]
	.loc 1 2524 0
	str	r3, [ip, #-2852]
	.loc 1 2526 0
	bl	strncpy
.LVL144:
	b	.L112
.L167:
	.align	2
.L166:
	.word	.LANCHOR1
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC8
	.word	.LC7
	.word	.LC20
	.word	.LC17
	.word	S_sfx
	.word	.LANCHOR1-2288
	.word	.LC18
	.word	sprnames
	.word	.LANCHOR1-2852
	.word	S_music
	.word	.LANCHOR1-1832
	.word	.LC19
	.word	.LC16
.LBE63:
.LBE65:
.LBE67:
	.cfi_endproc
.LFE23:
	.size	deh_procText, .-deh_procText
	.align	2
	.global	dehReformatStr
	.type	dehReformatStr, %function
dehReformatStr:
.LFB31:
	.loc 1 2991 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL145:
	.loc 1 2997 0
	ldr	r2, .L173
	.loc 1 3003 0
	mov	r1, #92
	mov	ip, #110
	.loc 1 3000 0
	b	.L169
.LVL146:
.L172:
	.loc 1 3002 0
	cmp	r3, #10
	.loc 1 3003 0
	streqb	r1, [r2]
.LVL147:
	streqb	ip, [r2, #1]
.LVL148:
	streqb	r1, [r2, #2]
	streqb	r3, [r2, #3]
	.loc 1 3005 0
	strneb	r3, [r2]
	.loc 1 3003 0
	addeq	r2, r2, #4
.LVL149:
	.loc 1 3005 0
	addne	r2, r2, #1
.LVL150:
.L169:
	.loc 1 3000 0
	ldrb	r3, [r0], #1	@ zero_extendqisi2
.LVL151:
	cmp	r3, #0
	bne	.L172
	.loc 1 3007 0
	strb	r3, [r2]
	.loc 1 3009 0
	ldr	r0, .L173
.LVL152:
	bx	lr
.L174:
	.align	2
.L173:
	.word	.LANCHOR1-3880
	.cfi_endproc
.LFE31:
	.size	dehReformatStr, .-dehReformatStr
	.align	2
	.global	lfstrip
	.type	lfstrip, %function
lfstrip:
.LFB32:
	.loc 1 3020 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL153:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 3020 0
	mov	r4, r0
	.loc 1 3021 0
	bl	strlen
.LVL154:
	add	r0, r4, r0
.LVL155:
	.loc 1 3022 0
	cmp	r4, r0
	ldmcsfd	sp!, {r4, pc}
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	sub	r3, r0, #1
.LVL156:
	cmp	r2, #10
	cmpne	r2, #13
	ldmnefd	sp!, {r4, pc}
	.loc 1 3023 0
	mov	r1, #0
.LVL157:
.L178:
	.loc 1 3022 0
	cmp	r3, r4
	.loc 1 3023 0
	strb	r1, [r3]
	.loc 1 3022 0
	ldmeqfd	sp!, {r4, pc}
	.loc 1 3022 0 is_stmt 0 discriminator 1
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2
.LVL158:
	cmp	r2, #10
	cmpne	r2, #13
	beq	.L178
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE32:
	.size	lfstrip, .-lfstrip
	.align	2
	.type	deh_procPars, %function
deh_procPars:
.LFB20:
	.loc 1 2200 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL159:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r1
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1096
	sub	sp, sp, #8
	.cfi_def_cfa_offset 1104
	.loc 1 2217 0
	mov	r1, r2
.LVL160:
	.loc 1 2200 0
	mov	r5, r0
	.loc 1 2217 0
	mov	r2, #1024
.LVL161:
	add	r0, sp, #56
.LVL162:
	bl	strncpy
.LVL163:
	.loc 1 2220 0
	add	r0, sp, #56
	add	r2, sp, #24
	ldr	r1, .L221
	add	r3, sp, #8
	bl	sscanf
.LVL164:
	.loc 1 2221 0
	cmp	r6, #0
	beq	.L186
	.loc 1 2221 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L221+4
	ldr	r2, [sp, #8]
	add	r3, sp, #24
	bl	fprintf
.LVL165:
.L186:
	.loc 1 2265 0 is_stmt 1
	ldr	r7, .L221+8
	.loc 1 2270 0
	ldr	r8, .L221+12
.L187:
	.loc 1 2224 0
	mov	r0, r5
	bl	dehfeof
.LVL166:
	cmp	r0, #0
	bne	.L185
.L220:
	.loc 1 2224 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L185
	.loc 1 2226 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r5
	bl	dehfgets
.LVL167:
	cmp	r0, #0
	beq	.L185
	.loc 1 2227 0
	add	r0, sp, #56
	bl	strlwr
.LVL168:
	bl	lfstrip
.LVL169:
	.loc 1 2228 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L185
	.loc 1 2229 0
	add	r4, sp, #20
	add	r3, sp, #16
	str	r4, [sp]
	add	r0, sp, #56
	ldr	r1, .L221+16
	add	r2, sp, #12
	bl	sscanf
.LVL170:
	cmp	r0, #3
	beq	.L190
	.loc 1 2231 0
	add	r2, sp, #16
	mov	r3, r4
	add	r0, sp, #56
	ldr	r1, .L221+20
	bl	sscanf
.LVL171:
	cmp	r0, #2
	beq	.L191
	.loc 1 2233 0
	cmp	r6, #0
	beq	.L187
	.loc 1 2233 0 is_stmt 0 discriminator 1
	ldr	r1, .L221+24
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL172:
	.loc 1 2224 0 is_stmt 1 discriminator 1
	mov	r0, r5
	bl	dehfeof
.LVL173:
	cmp	r0, #0
	beq	.L220
.L185:
	.loc 1 2275 0
	add	sp, sp, #1072
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL174:
.L190:
	.cfi_restore_state
	.loc 1 2258 0
	ldr	r2, [sp, #12]
	sub	r3, r2, #1
	cmp	r3, #2
	bhi	.L197
	.loc 1 2258 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #16]
	sub	r1, r3, #1
	cmp	r1, #8
	bhi	.L197
	.loc 1 2265 0 is_stmt 1
	add	r1, r2, r2, asl #2
	.loc 1 2266 0
	ldr	r0, [sp, #20]
	.loc 1 2265 0
	add	r1, r3, r1, asl #1
	.loc 1 2267 0
	cmp	r6, #0
	.loc 1 2265 0
	ldr	ip, [r7, r1, asl #2]
.LVL175:
	.loc 1 2266 0
	str	r0, [r7, r1, asl #2]
	.loc 1 2267 0
	beq	.L199
	.loc 1 2267 0 is_stmt 0 discriminator 1
	str	r0, [sp, #4]
	str	ip, [sp]
	mov	r0, r6
	ldr	r1, .L221+28
	bl	fprintf
.LVL176:
.L199:
	.loc 1 2270 0 is_stmt 1
	mov	r3, #1
	str	r3, [r8, #-1560]
	b	.L187
.L197:
	.loc 1 2260 0
	cmp	r6, #0
	beq	.L187
	.loc 1 2260 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L221+32
	ldr	r3, [sp, #16]
	bl	fprintf
.LVL177:
	b	.L187
.L191:
	.loc 1 2238 0 is_stmt 1
	ldr	r2, [sp, #16]
	sub	r1, r2, #1
	cmp	r1, #31
	bls	.L194
	.loc 1 2240 0
	cmp	r6, #0
	beq	.L187
	.loc 1 2240 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L221+36
	bl	fprintf
.LVL178:
	b	.L187
.L194:
	.loc 1 2244 0 is_stmt 1
	ldr	r4, .L221+40
	.loc 1 2245 0
	cmp	r6, #0
	.loc 1 2244 0
	ldr	r3, [r4, r1, asl #2]
.LVL179:
	.loc 1 2245 0
	beq	.L196
	.loc 1 2245 0 is_stmt 0 discriminator 1
	ldr	r1, [sp, #20]
	mov	r0, r6
	str	r1, [sp]
	ldr	r1, .L221+44
	bl	fprintf
.LVL180:
	ldr	r1, [sp, #16]
	sub	r1, r1, #1
.L196:
	.loc 1 2247 0 is_stmt 1
	mov	r2, #1
	.loc 1 2246 0
	ldr	r3, [sp, #20]
	.loc 1 2247 0
	str	r2, [r8, #-1560]
	.loc 1 2246 0
	str	r3, [r4, r1, asl #2]
	b	.L187
.L222:
	.align	2
.L221:
	.word	.LC21
	.word	.LC22
	.word	pars
	.word	.LANCHOR1
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC29
	.word	.LC28
	.word	.LC26
	.word	cpars
	.word	.LC27
	.cfi_endproc
.LFE20:
	.size	deh_procPars, .-deh_procPars
	.align	2
	.type	deh_procSprite, %function
deh_procSprite:
.LFB19:
	.loc 1 2166 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1064
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL181:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r1
	sub	sp, sp, #1056
	.cfi_def_cfa_offset 1068
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1080
	.loc 1 2174 0
	mov	r1, r2
.LVL182:
	.loc 1 2166 0
	mov	r4, r0
	.loc 1 2174 0
	mov	r2, #1024
.LVL183:
	add	r0, sp, #40
.LVL184:
	bl	strncpy
.LVL185:
	.loc 1 2177 0
	add	r2, sp, #8
	add	r0, sp, #40
	sub	r3, r2, #4
	ldr	r1, .L241
	bl	sscanf
.LVL186:
	.loc 1 2178 0
	cmp	r5, #0
	beq	.L228
	.loc 1 2178 0 is_stmt 0 discriminator 1
	add	r3, sp, #8
	mov	r0, r5
	ldr	r1, .L241+4
	ldr	r2, [sp, #4]
	bl	fprintf
.LVL187:
	b	.L228
.L240:
	.loc 1 2180 0 is_stmt 1 discriminator 1
	ldrb	r3, [sp, #40]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L223
	.loc 1 2182 0
	add	r0, sp, #40
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL188:
	cmp	r0, #0
	beq	.L223
	.loc 1 2183 0
	add	r0, sp, #40
	bl	lfstrip
.LVL189:
	.loc 1 2184 0
	ldrb	r3, [sp, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L223
	.loc 1 2186 0
	cmp	r5, #0
	bne	.L239
.L228:
	.loc 1 2180 0
	mov	r0, r4
	bl	dehfeof
.LVL190:
	cmp	r0, #0
	beq	.L240
.L223:
	.loc 1 2189 0
	add	sp, sp, #1056
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.LVL191:
.L239:
	.cfi_restore_state
	.loc 1 2186 0 discriminator 1
	mov	r0, r5
	ldr	r1, .L241+8
	add	r2, sp, #40
	bl	fprintf
.LVL192:
	b	.L228
.L242:
	.align	2
.L241:
	.word	.LC21
	.word	.LC30
	.word	.LC31
	.cfi_endproc
.LFE19:
	.size	deh_procSprite, .-deh_procSprite
	.align	2
	.global	ProcessDehFile
	.type	ProcessDehFile, %function
ProcessDehFile:
.LFB9:
	.loc 1 1409 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1048
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL193:
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
	sub	sp, sp, #1040
	.cfi_def_cfa_offset 1076
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1088
.LVL194:
	.loc 1 1416 0
	subs	r10, r1, #0
	.loc 1 1409 0
	mov	r8, r0
	str	r2, [sp, #4]
	.loc 1 1416 0
	beq	.L244
	.loc 1 1416 0 is_stmt 0 discriminator 1
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L308
.LVL195:
.L244:
	.loc 1 1433 0 is_stmt 1
	cmp	r8, #0
	beq	.L248
	.loc 1 1435 0
	mov	r0, r8
	ldr	r1, .L314
	bl	fopen
.LVL196:
	cmp	r0, #0
	str	r0, [sp, #20]
	beq	.L309
	.loc 1 1440 0
	mov	r3, #0
	.loc 1 1441 0
	ldr	r4, .L314+4
	.loc 1 1440 0
	str	r3, [sp, #12]
.LVL197:
.L251:
	.loc 1 1452 0
	ldr	r7, .L314+8
	.loc 1 1451 0
	mov	r0, #1
	ldr	r1, .L314+12
	mov	r2, r4
	mov	r3, r8
	bl	lprintf
.LVL198:
	.loc 1 1452 0
	ldr	r0, [r7, #-1556]
	cmp	r0, #0
	beq	.L252
	.loc 1 1452 0 is_stmt 0 discriminator 1
	mov	r2, r4
	ldr	r1, .L314+16
	mov	r3, r8
	bl	fprintf
.LVL199:
.L252:
	ldr	r6, .L314+20
.LBB68:
	.loc 1 1514 0 is_stmt 1
	ldr	r9, .L314+8
.LVL200:
.L253:
.LBE68:
	.loc 1 1458 0
	add	r0, sp, #24
	mov	r1, #1024
	add	r2, sp, #8
.LVL201:
	bl	dehfgets
.LVL202:
	cmp	r0, #0
	beq	.L310
.LBB79:
	.loc 1 1462 0
	add	r0, sp, #24
	bl	lfstrip
.LVL203:
	.loc 1 1463 0
	ldr	r0, [r7, #-1556]
	cmp	r0, #0
	beq	.L254
	.loc 1 1463 0 is_stmt 0 discriminator 1
	ldr	r1, .L314+24
	add	r2, sp, #24
	bl	fprintf
.LVL204:
.L254:
	.loc 1 1464 0 is_stmt 1
	ldrb	r4, [sp, #24]	@ zero_extendqisi2
	tst	r4, #223
	moveq	r3, #1
	movne	r3, #0
	cmp	r4, #35
	movne	r4, r3
	orreq	r4, r3, #1
	cmp	r4, #0
	bne	.L253
	.loc 1 1473 0
	add	r0, sp, #24
	ldr	r1, .L314+28
	mov	r2, #7
	bl	strncasecmp
.LVL205:
	cmp	r0, #0
	bne	.L274
.LBB69:
	.loc 1 1484 0
	ldr	r3, [sp, #12]
	.loc 1 1479 0
	ldr	fp, [r7, #-2856]
.LVL206:
	.loc 1 1484 0
	cmp	r3, #0
	beq	.L311
	.loc 1 1486 0
	ldr	r0, [r9, #-1556]
	cmp	r0, #0
	beq	.L253
	.loc 1 1487 0
	ldr	r1, .L314+32
	add	r2, sp, #24
	bl	fprintf
.LVL207:
	b	.L253
.LVL208:
.L274:
.LBE69:
	mov	fp, r4
	b	.L257
.LVL209:
.L266:
	.loc 1 1511 0 discriminator 2
	add	fp, fp, #1
.LVL210:
	cmp	fp, #18
	beq	.L253
.LVL211:
.L257:
	.loc 1 1512 0
	ldr	r4, [r6, fp, asl #3]
	mov	r5, fp, asl #3
	mov	r0, r4
	bl	strlen
.LVL212:
	mov	r1, r4
	mov	r2, r0
	add	r0, sp, #24
	bl	strncasecmp
.LVL213:
	cmp	r0, #0
	bne	.L266
	.loc 1 1514 0
	ldr	r1, [r7, #-1556]
	cmp	r1, #0
	beq	.L267
	.loc 1 1515 0
	mov	r0, r1
	mov	r2, fp
	ldr	r1, .L314+36
	mov	r3, r4
	bl	fprintf
.LVL214:
	ldr	r1, [r9, #-1556]
.L267:
	.loc 1 1517 0
	add	r5, r6, r5
	ldr	r3, [r5, #4]
	add	r0, sp, #8
.LVL215:
	add	r2, sp, #24
	blx	r3
.LVL216:
	.loc 1 1518 0
	b	.L253
.LVL217:
.L310:
.LBE79:
	.loc 1 1522 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L269
	.loc 1 1523 0
	ldr	r0, [sp, #4]
	bl	W_UnlockLumpNum
.LVL218:
.L270:
	.loc 1 1527 0
	cmp	r10, #0
	beq	.L243
	.loc 1 1529 0
	ldr	r3, .L314+40
	ldr	r0, [r7, #-1556]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, r0
	beq	.L272
	.loc 1 1530 0
	bl	fclose
.LVL219:
.L272:
	.loc 1 1531 0
	mov	r3, #0
	str	r3, [r7, #-1556]
.L243:
	.loc 1 1533 0
	add	sp, sp, #1040
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL220:
.L308:
	.cfi_restore_state
	.loc 1 1416 0 discriminator 2
	ldr	r7, .L314+8
	ldr	r3, [r7, #-1556]
	cmp	r3, #0
	bne	.L244
.LBB80:
	.loc 1 1419 0
	mov	r0, r10
.LVL221:
	ldr	r1, .L314+44
.LVL222:
	bl	strcmp
.LVL223:
	cmp	r0, #0
	beq	.L312
	.loc 1 1422 0
	ldr	r4, .L314+48
	ldr	r2, .L314+52
	ldr	r1, [r4, #3672]
	ldr	r3, .L314+56
	cmp	r1, #0
	movne	r1, r2
	moveq	r1, r3
	mov	r0, r10
	bl	fopen
.LVL224:
	cmp	r0, #0
	str	r0, [r7, #-1556]
	beq	.L313
.L246:
	.loc 1 1428 0
	mov	r3, #0
	str	r3, [r4, #3672]
	b	.L244
.LVL225:
.L311:
.LBE80:
.LBB81:
.LBB78:
.LBB70:
.LBB71:
	.loc 1 3048 0
	ldr	r2, .L314+60
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	ldr	r5, [r2]
	add	r4, sp, #31
.LVL226:
	add	r3, r5, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	beq	.L260
.LVL227:
.L259:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
.LVL228:
	add	r3, r5, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L259
.LVL229:
.L260:
.LBE71:
.LBE70:
	.loc 1 1495 0
	mov	r0, r4
	ldr	r1, .L314+64
	mov	r2, #6
	bl	strncasecmp
.LVL230:
	cmp	r0, #0
	bne	.L262
	.loc 1 1496 0
	mov	r2, #1
.LBB72:
.LBB73:
	.loc 1 3048 0
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
.LBE73:
.LBE72:
	.loc 1 1496 0
	str	r2, [r7, #-2856]
.LBB76:
.LBB74:
	.loc 1 3048 0
	add	r3, r5, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
.LBE74:
.LBE76:
	.loc 1 1496 0
	add	r4, r4, #6
.LVL231:
.LBB77:
.LBB75:
	.loc 1 3048 0
	tst	r3, #8
	beq	.L262
.LVL232:
.L264:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
.LVL233:
	add	r3, r5, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L264
.LVL234:
.L262:
.LBE75:
.LBE77:
	.loc 1 1498 0
	ldr	r0, [r7, #-1556]
	cmp	r0, #0
	beq	.L265
	.loc 1 1499 0
	ldr	r1, .L314+68
	mov	r2, r4
	bl	fprintf
.LVL235:
.L265:
	.loc 1 1504 0
	mov	r1, #0
	mov	r0, r4
	mov	r2, r1
	bl	ProcessDehFile
.LVL236:
	.loc 1 1507 0
	ldr	r0, [r7, #-1556]
	.loc 1 1506 0
	str	fp, [r7, #-2856]
	.loc 1 1507 0
	cmp	r0, #0
	beq	.L253
	.loc 1 1507 0 is_stmt 0 discriminator 1
	ldr	r1, .L314+72
	mov	r2, r8
	bl	fprintf
.LVL237:
	b	.L253
.LVL238:
.L248:
.LBE78:
.LBE81:
	.loc 1 1445 0 is_stmt 1
	ldr	r4, [sp, #4]
	mov	r0, r4
	bl	W_LumpLength
.LVL239:
	str	r0, [sp, #16]
	.loc 1 1446 0
	mov	r0, r4
	bl	W_CacheLumpNum
.LVL240:
	.loc 1 1447 0
	ldr	r2, .L314+76
	add	r3, r4, r4, asl #2
	ldr	r2, [r2]
	.loc 1 1448 0
	ldr	r4, .L314+80
	.loc 1 1447 0
	add	r3, r2, r3, asl #3
	ldr	r3, [r3, #28]
	.loc 1 1446 0
	str	r0, [sp, #12]
	.loc 1 1447 0
	ldr	r8, [r3]
.LVL241:
	.loc 1 1446 0
	str	r0, [sp, #8]
	b	.L251
.LVL242:
.L269:
	.loc 1 1525 0
	ldr	r0, [sp, #20]
	bl	fclose
.LVL243:
	b	.L270
.L312:
.LBB82:
	.loc 1 1420 0
	ldr	r3, .L314+40
	ldr	r4, .L314+48
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #-1556]
	b	.L246
.L309:
.LBE82:
	.loc 1 1437 0
	mov	r2, r8
	ldr	r1, .L314+84
	mov	r0, #4
	bl	lprintf
.LVL244:
	b	.L243
.L313:
.LBB83:
	.loc 1 1424 0
	mov	r0, #4
	ldr	r1, .L314+88
	mov	r2, r10
	bl	lprintf
.LVL245:
	.loc 1 1426 0
	ldr	r3, .L314+40
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #-1556]
	b	.L246
.L315:
	.align	2
.L314:
	.word	.LC38
	.word	.LC34
	.word	.LANCHOR1
	.word	.LC40
	.word	.LC41
	.word	.LANCHOR3
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC48
	.word	_impure_ptr
	.word	.LC36
	.word	.LANCHOR2
	.word	.LC32
	.word	.LC33
	.word	__ctype_ptr__
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	lumpinfo
	.word	.LC35
	.word	.LC39
	.word	.LC37
.LBE83:
	.cfi_endproc
.LFE9:
	.size	ProcessDehFile, .-ProcessDehFile
	.align	2
	.type	deh_procBexCodePointers, %function
deh_procBexCodePointers:
.LFB10:
	.loc 1 1544 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1096
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL246:
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
	sub	sp, sp, #1104
	.cfi_def_cfa_offset 1140
	sub	sp, sp, #4
	.cfi_def_cfa_offset 1144
	.loc 1 1544 0
	mov	r6, r1
	mov	r8, r0
	.loc 1 1553 0
	mov	r1, r2
.LVL247:
	add	r0, sp, #80
.LVL248:
	mov	r2, #1024
.LVL249:
	bl	strncpy
.LVL250:
	ldr	r4, .L358
.L317:
	.loc 1 1556 0
	mov	r0, r8
	bl	dehfeof
.LVL251:
	cmp	r0, #0
	bne	.L316
.L357:
	.loc 1 1556 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L316
	.loc 1 1558 0 is_stmt 1
	add	r0, sp, #80
	mov	r1, #1024
	mov	r2, r8
	bl	dehfgets
.LVL252:
	cmp	r0, #0
	beq	.L316
	.loc 1 1559 0
	add	r0, sp, #80
	bl	lfstrip
.LVL253:
	.loc 1 1560 0
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L316
	.loc 1 1563 0
	add	r2, sp, #16
	add	r7, sp, #48
	sub	r3, r2, #4
	str	r7, [sp]
	add	r0, sp, #80
	ldr	r1, .L358+4
	bl	sscanf
.LVL254:
	cmp	r0, #3
	bne	.L321
	.loc 1 1564 0
	add	r0, sp, #16
	ldr	r1, .L358+8
	bl	strcasecmp
.LVL255:
	cmp	r0, #0
	bne	.L321
	.loc 1 1572 0
	cmp	r6, #0
	beq	.L323
	.loc 1 1572 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L358+12
	ldr	r2, [sp, #12]
	mov	r3, r7
	bl	fprintf
.LVL256:
.L323:
	.loc 1 1574 0 is_stmt 1
	ldr	r5, [sp, #12]
	ldr	r3, .L358+16
	cmp	r5, r3
	bhi	.L355
	.loc 1 1580 0
	ldr	r3, .L358+20
	ldr	r1, [r3]
.LBB84:
.LBB85:
	.loc 1 3048 0
	ldr	r3, .L358+24
.LBE85:
.LBE84:
	.loc 1 1580 0
	mov	r0, r1, lsr #16
.LBB88:
.LBB86:
	.loc 1 3048 0
	ldr	r2, [r3]
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
.LBE86:
.LBE88:
	.loc 1 1580 0
	strh	r1, [sp, #16]	@ movhi
	strb	r0, [sp, #18]
.LVL257:
.LBB89:
.LBB87:
	.loc 1 3048 0
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r7
	tst	r3, #8
	beq	.L325
.LVL258:
.L326:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
.LVL259:
	add	ip, r2, ip
	ldrb	r3, [ip, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L326
.LVL260:
.L325:
.LBE87:
.LBE89:
	.loc 1 1581 0
	add	r0, sp, #18
	bl	strcpy
.LVL261:
	.loc 1 1584 0
	mvn	fp, #0
	ldr	r10, .L358
	b	.L329
.LVL262:
.L327:
	.loc 1 1596 0 discriminator 1
	ldr	r2, [r4, fp, asl #3]
	add	r10, r10, #8
	cmp	r2, #0
	beq	.L356
.LVL263:
.L329:
	.loc 1 1588 0
	ldr	r9, [r10, #4]
	add	r0, sp, #16
	mov	r1, r9
	bl	strcasecmp
.LVL264:
	cmp	r0, #0
	.loc 1 1587 0
	add	fp, fp, #1
.LVL265:
	.loc 1 1588 0
	bne	.L327
	.loc 1 1590 0
	ldr	r3, .L358+28
	ldr	r1, .L358+32
	add	r3, r3, fp, asl #3
	ldr	r0, [r3, #144]
	rsb	r3, r5, r5, asl #3
	add	r3, r1, r3, asl #2
	.loc 1 1591 0
	cmp	r6, #0
	.loc 1 1590 0
	str	r0, [r3, #12]
	.loc 1 1591 0
	beq	.L317
	.loc 1 1591 0 is_stmt 0 discriminator 1
	mov	r2, r9
	mov	r3, fp
	ldr	r1, .L358+36
	str	r5, [sp]
	mov	r0, r6
	bl	fprintf
.LVL266:
	.loc 1 1556 0 is_stmt 1 discriminator 1
	mov	r0, r8
	bl	dehfeof
.LVL267:
	cmp	r0, #0
	beq	.L357
.LVL268:
.L316:
	.loc 1 1604 0
	add	sp, sp, #1104
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL269:
.L356:
	.cfi_restore_state
	.loc 1 1599 0
	cmp	r6, #0
	beq	.L317
	.loc 1 1599 0 is_stmt 0 discriminator 1
	mov	r2, r7
	mov	r3, r5
	mov	r0, r6
	ldr	r1, .L358+40
	bl	fprintf
.LVL270:
	b	.L317
.LVL271:
.L321:
	.loc 1 1566 0 is_stmt 1
	cmp	r6, #0
	beq	.L316
	.loc 1 1566 0 is_stmt 0 discriminator 1
	mov	r0, r6
	add	r2, sp, #80
	ldr	r1, .L358+44
	bl	fprintf
.LVL272:
	.loc 1 1604 0 is_stmt 1 discriminator 1
	add	sp, sp, #1104
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL273:
.L355:
	.cfi_restore_state
	.loc 1 1576 0
	cmp	r6, #0
	beq	.L316
	.loc 1 1576 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r2, r5
	ldr	r1, .L358+48
	add	r3, r3, #1
	bl	fprintf
.LVL274:
	b	.L316
.L359:
	.align	2
.L358:
	.word	.LANCHOR3+144
	.word	.LC49
	.word	.LC50
	.word	.LC52
	.word	1075
	.word	.LC54
	.word	__ctype_ptr__
	.word	.LANCHOR3
	.word	states
	.word	.LC55
	.word	.LC56
	.word	.LC51
	.word	.LC53
	.cfi_endproc
.LFE10:
	.size	deh_procBexCodePointers, .-deh_procBexCodePointers
	.align	2
	.global	rstrip
	.type	rstrip, %function
rstrip:
.LFB33:
	.loc 1 3033 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL275:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 3033 0
	mov	r4, r0
	.loc 1 3034 0
	bl	strlen
.LVL276:
	add	r3, r4, r0
.LVL277:
	.loc 1 3035 0
	cmp	r4, r3
	ldmcsfd	sp!, {r4, pc}
	ldr	r0, .L370
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2
	ldr	r2, [r0]
	sub	r3, r3, #1
.LVL278:
	add	r2, r2, r1
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	tst	r2, #8
	ldmeqfd	sp!, {r4, pc}
	.loc 1 3036 0
	mov	ip, #0
.LVL279:
.L363:
	.loc 1 3035 0
	cmp	r3, r4
	.loc 1 3036 0
	strb	ip, [r3]
	.loc 1 3035 0
	ldmeqfd	sp!, {r4, pc}
	.loc 1 3035 0 is_stmt 0 discriminator 1
	ldrb	r1, [r3, #-1]!	@ zero_extendqisi2
.LVL280:
	ldr	r2, [r0]
	add	r2, r2, r1
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	tst	r2, #8
	bne	.L363
	ldmfd	sp!, {r4, pc}
.L371:
	.align	2
.L370:
	.word	__ctype_ptr__
	.cfi_endproc
.LFE33:
	.size	rstrip, .-rstrip
	.align	2
	.global	ptr_lstrip
	.type	ptr_lstrip, %function
ptr_lstrip:
.LFB34:
	.loc 1 3047 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL281:
	.loc 1 3048 0
	ldr	r2, .L379
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldr	r2, [r2]
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	bxeq	lr
.LVL282:
.L374:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
.LVL283:
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L374
	.loc 1 3051 0
	bx	lr
.L380:
	.align	2
.L379:
	.word	__ctype_ptr__
	.cfi_endproc
.LFE34:
	.size	ptr_lstrip, .-ptr_lstrip
	.align	2
	.global	deh_GetData
	.type	deh_GetData, %function
deh_GetData:
.LFB36:
	.loc 1 3081 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL284:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 3090 0
	mov	lr, #0
	.loc 1 3092 0
	ldrb	ip, [r0]	@ zero_extendqisi2
	.loc 1 3081 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 72
	.loc 1 3092 0
	cmp	ip, lr
	.loc 1 3081 0
	mov	r6, r0
	mov	r5, r1
	mov	r7, r2
	mov	r4, r3
	.loc 1 3090 0
	strb	lr, [sp, #8]
	.loc 1 3091 0
	str	lr, [sp, #4]
.LVL285:
	.loc 1 3092 0
	beq	.L394
	.loc 1 3094 0
	cmp	ip, #61
	beq	.L395
	add	r6, r0, #1
	add	r2, sp, #7
.LVL286:
	b	.L384
.LVL287:
.L385:
	.loc 1 3092 0 discriminator 3
	cmp	lr, #32
	beq	.L418
	.loc 1 3094 0
	cmp	ip, #61
	beq	.L419
.LVL288:
.L384:
	.loc 1 3095 0 discriminator 2
	strb	ip, [r2, #1]!
	.loc 1 3092 0 discriminator 2
	mov	r3, r6
.LVL289:
	ldrb	ip, [r6], #1	@ zero_extendqisi2
	add	lr, lr, #1
.LVL290:
	cmp	ip, #0
	bne	.L385
	.loc 1 3092 0 is_stmt 0
	mov	r6, r3
	sub	lr, lr, #1
.LVL291:
.L382:
	.loc 1 3097 0 is_stmt 1
	add	r3, sp, #40
	mov	r8, #0
	add	lr, r3, lr
.LVL292:
	mov	r2, #0
	mov	r3, #0
	strb	r8, [lr, #-32]
.LVL293:
.L393:
.LBB94:
.LBB95:
	.loc 1 3048 0
	ldr	r1, .L420
.LBE95:
.LBE94:
	.loc 1 3121 0
	strd	r2, [r7]
.LVL294:
.LBB97:
.LBB96:
	.loc 1 3048 0
	ldr	r0, [r1]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	add	r1, sp, #8
.LVL295:
	add	r3, r0, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	beq	.L389
.LVL296:
.L390:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
.LVL297:
	add	r2, r0, r2
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L390
.LVL298:
.L389:
.LBE96:
.LBE97:
	.loc 1 3124 0
	mov	r0, r5
	bl	strcpy
.LVL299:
	.loc 1 3126 0
	cmp	r4, #0
	.loc 1 3127 0
	strne	r6, [r4]
.L402:
	.loc 1 3131 0
	mov	r0, r8
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL300:
.L418:
	.cfi_restore_state
	mov	lr, #31
.LVL301:
.L383:
	.loc 1 3097 0
	mov	r9, #0
	.loc 1 3104 0
	add	r6, r3, #1
	.loc 1 3097 0
	add	r2, sp, #40
	add	lr, r2, lr
.LBB98:
.LBB99:
	.loc 1 3059 0
	mov	r0, r6
.LVL302:
	add	r2, sp, #4
	ldr	r1, .L420+4
.LVL303:
.LBE99:
.LBE98:
	.loc 1 3097 0
	strb	r9, [lr, #-32]
.LVL304:
	.loc 1 3104 0
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
.LVL305:
.LBB101:
.LBB100:
	.loc 1 3059 0
	bl	sscanf
.LVL306:
	.loc 1 3061 0
	cmp	r0, #1
	beq	.L387
	.loc 1 3060 0
	mov	r0, r6
	ldr	r1, .L420+8
	add	r2, sp, #4
.LVL307:
	bl	sscanf
.LVL308:
	.loc 1 3059 0
	cmp	r0, #1
	beq	.L387
	.loc 1 3061 0
	mov	r0, r6
	ldr	r1, .L420+12
	add	r2, sp, #4
.LVL309:
	bl	sscanf
.LVL310:
	.loc 1 3060 0
	cmp	r0, #1
	beq	.L387
	.loc 1 3062 0
	add	r2, sp, #4
.LVL311:
	mov	r0, r6
	ldr	r1, .L420+16
	bl	sscanf
.LVL312:
	.loc 1 3061 0
	cmp	r0, #1
	beq	.L387
.LBE100:
.LBE101:
	.loc 1 3115 0
	str	r9, [sp, #4]
.LVL313:
	mov	r2, #0
	mov	r3, #0
	.loc 1 3116 0
	mov	r8, #2
	b	.L393
.LVL314:
.L387:
	ldr	r2, [sp, #4]
	.loc 1 3104 0
	adds	r8, r8, #0
	movne	r8, #1
.LVL315:
	mov	r3, r2, asr #31
	b	.L393
.LVL316:
.L419:
	sub	lr, lr, #1
.LVL317:
	b	.L383
.LVL318:
.L394:
	.loc 1 3092 0
	mvn	lr, #0
	b	.L382
.L395:
	.loc 1 3094 0
	mov	r3, r0
.LVL319:
	mvn	lr, #0
	b	.L383
.L421:
	.align	2
.L420:
	.word	__ctype_ptr__
	.word	.LC60
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.cfi_endproc
.LFE36:
	.size	deh_GetData, .-deh_GetData
	.align	2
	.type	deh_procBexMusic, %function
deh_procBexMusic:
.LFB30:
	.loc 1 2922 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1080
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL320:
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
	.loc 1 2930 0
	subs	r5, r1, #0
	.loc 1 2922 0
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1124
	sub	sp, sp, #4
	.cfi_def_cfa_offset 1128
	.loc 1 2922 0
	mov	r4, r0
	mov	r6, r2
	.loc 1 2930 0
	beq	.L423
	.loc 1 2931 0
	ldr	r0, .L461
.LVL321:
	mov	r1, #1
.LVL322:
	mov	r2, #35
.LVL323:
	mov	r3, r5
	bl	fwrite
.LVL324:
.L423:
	.loc 1 2933 0
	mov	r1, r6
	add	r0, sp, #64
	mov	r2, #1024
	bl	strncpy
.LVL325:
.LBB102:
.LBB103:
	.loc 1 3048 0
	ldr	r6, .L461+4
.LVL326:
.LBE103:
.LBE102:
	.loc 1 2963 0
	ldr	r7, .L461+8
	.loc 1 2971 0
	ldr	r8, .L461+12
.L426:
	.loc 1 2935 0
	mov	r0, r4
	bl	dehfeof
.LVL327:
	subs	r9, r0, #0
	bne	.L422
.L460:
	.loc 1 2935 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L422
	.loc 1 2937 0 is_stmt 1
	add	r0, sp, #64
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL328:
	cmp	r0, #0
	beq	.L422
	.loc 1 2939 0
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	cmp	r3, #35
	beq	.L426
	.loc 1 2941 0
	add	r0, sp, #64
	bl	lfstrip
.LVL329:
	.loc 1 2942 0
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L422
	.loc 1 2944 0
	add	r1, sp, #32
	str	r5, [sp]
	sub	r2, r1, #8
	add	r3, sp, #12
	add	r0, sp, #64
	bl	deh_GetData
.LVL330:
	cmp	r0, #0
	bne	.L428
	.loc 1 2946 0
	cmp	r5, #0
	beq	.L426
	.loc 1 2947 0
	ldr	r1, .L461+16
	add	r2, sp, #64
	mov	r0, r5
	bl	fprintf
.LVL331:
	.loc 1 2935 0
	mov	r0, r4
	bl	dehfeof
.LVL332:
	subs	r9, r0, #0
	beq	.L460
.L422:
	.loc 1 2977 0
	add	sp, sp, #1088
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL333:
.L428:
	.cfi_restore_state
	.loc 1 2952 0
	ldr	r1, [sp, #12]
.LVL334:
	.loc 1 2951 0
	str	r9, [sp, #16]
	strh	r9, [sp, #20]	@ movhi
	strb	r9, [sp, #22]
.LBB105:
.LBB104:
	.loc 1 3048 0
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldr	r2, [r6]
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	beq	.L431
.LVL335:
.L432:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
.LVL336:
	add	ip, r2, ip
	ldrb	r3, [ip, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L432
.LVL337:
.L431:
.LBE104:
.LBE105:
	.loc 1 2952 0
	mov	r2, #6
	add	r0, sp, #16
	bl	strncpy
.LVL338:
	.loc 1 2953 0
	add	r0, sp, #16
	bl	strlen
.LVL339:
	.loc 1 2954 0
	sub	r0, r0, #1
.LVL340:
	cmp	r0, #5
	bhi	.L433
.LVL341:
	.loc 1 2963 0
	ldr	r9, [r7, #4]
	cmp	r9, #0
	movne	r10, #1
	ldrne	fp, .L461+20
	bne	.L438
	b	.L426
.LVL342:
.L436:
	ldr	r9, [fp, #4]!
	.loc 1 2974 0
	add	r10, r10, #1
.LVL343:
	.loc 1 2963 0
	cmp	r9, #0
	beq	.L426
.LVL344:
.L438:
	.loc 1 2965 0
	mov	r0, r9
	add	r1, sp, #32
	mov	r2, #6
	bl	strncasecmp
.LVL345:
	cmp	r0, #0
	bne	.L436
	.loc 1 2967 0
	cmp	r5, #0
	beq	.L437
	.loc 1 2968 0
	mov	r3, r9
	mov	r0, r5
	ldr	r1, .L461+24
	add	r2, sp, #16
	bl	fprintf
.LVL346:
.L437:
	.loc 1 2971 0
	add	r0, sp, #16
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL347:
	str	r0, [r8, r10, asl #4]
	.loc 1 2972 0
	b	.L426
.LVL348:
.L433:
	.loc 1 2956 0
	cmp	r5, #0
	beq	.L426
	.loc 1 2957 0
	add	r2, sp, #16
	mov	r0, r5
.LVL349:
	ldr	r1, .L461+28
	bl	fprintf
.LVL350:
	b	.L426
.L462:
	.align	2
.L461:
	.word	.LC61
	.word	__ctype_ptr__
	.word	deh_musicnames
	.word	S_music
	.word	.LC62
	.word	deh_musicnames+4
	.word	.LC64
	.word	.LC63
	.cfi_endproc
.LFE30:
	.size	deh_procBexMusic, .-deh_procBexMusic
	.align	2
	.type	deh_procBexSounds, %function
deh_procBexSounds:
.LFB29:
	.loc 1 2863 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1080
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL351:
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
	.loc 1 2871 0
	subs	r5, r1, #0
	.loc 1 2863 0
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1124
	sub	sp, sp, #4
	.cfi_def_cfa_offset 1128
	.loc 1 2863 0
	mov	r4, r0
	mov	r6, r2
	.loc 1 2871 0
	beq	.L464
	.loc 1 2872 0
	ldr	r0, .L502
.LVL352:
	mov	r1, #1
.LVL353:
	mov	r2, #35
.LVL354:
	mov	r3, r5
	bl	fwrite
.LVL355:
.L464:
	.loc 1 2874 0
	mov	r1, r6
	add	r0, sp, #64
	mov	r2, #1024
	bl	strncpy
.LVL356:
.LBB106:
.LBB107:
	.loc 1 3048 0
	ldr	r6, .L502+4
.LVL357:
.LBE107:
.LBE106:
	.loc 1 2904 0
	ldr	r7, .L502+8
	.loc 1 2912 0
	ldr	r8, .L502+12
.L467:
	.loc 1 2876 0
	mov	r0, r4
	bl	dehfeof
.LVL358:
	subs	r9, r0, #0
	bne	.L463
.L501:
	.loc 1 2876 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L463
	.loc 1 2878 0 is_stmt 1
	add	r0, sp, #64
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL359:
	cmp	r0, #0
	beq	.L463
	.loc 1 2880 0
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	cmp	r3, #35
	beq	.L467
	.loc 1 2882 0
	add	r0, sp, #64
	bl	lfstrip
.LVL360:
	.loc 1 2883 0
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L463
	.loc 1 2885 0
	add	r1, sp, #32
	str	r5, [sp]
	sub	r2, r1, #8
	add	r3, sp, #12
	add	r0, sp, #64
	bl	deh_GetData
.LVL361:
	cmp	r0, #0
	bne	.L469
	.loc 1 2887 0
	cmp	r5, #0
	beq	.L467
	.loc 1 2888 0
	ldr	r1, .L502+16
	add	r2, sp, #64
	mov	r0, r5
	bl	fprintf
.LVL362:
	.loc 1 2876 0
	mov	r0, r4
	bl	dehfeof
.LVL363:
	subs	r9, r0, #0
	beq	.L501
.L463:
	.loc 1 2918 0
	add	sp, sp, #1088
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL364:
.L469:
	.cfi_restore_state
	.loc 1 2893 0
	ldr	r1, [sp, #12]
.LVL365:
	.loc 1 2892 0
	str	r9, [sp, #16]
	strh	r9, [sp, #20]	@ movhi
	strb	r9, [sp, #22]
.LBB109:
.LBB108:
	.loc 1 3048 0
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldr	r2, [r6]
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	beq	.L472
.LVL366:
.L473:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
.LVL367:
	add	ip, r2, ip
	ldrb	r3, [ip, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L473
.LVL368:
.L472:
.LBE108:
.LBE109:
	.loc 1 2893 0
	mov	r2, #6
	add	r0, sp, #16
	bl	strncpy
.LVL369:
	.loc 1 2894 0
	add	r0, sp, #16
	bl	strlen
.LVL370:
	.loc 1 2895 0
	sub	r0, r0, #1
.LVL371:
	cmp	r0, #5
	bhi	.L474
.LVL372:
	.loc 1 2904 0
	ldr	r9, [r7, #4]
	cmp	r9, #0
	movne	r10, #1
	ldrne	fp, .L502+20
	bne	.L479
	b	.L467
.LVL373:
.L477:
	ldr	r9, [fp, #4]!
	.loc 1 2915 0
	add	r10, r10, #1
.LVL374:
	.loc 1 2904 0
	cmp	r9, #0
	beq	.L467
.LVL375:
.L479:
	.loc 1 2906 0
	mov	r0, r9
	add	r1, sp, #32
	mov	r2, #6
	bl	strncasecmp
.LVL376:
	cmp	r0, #0
	bne	.L477
	.loc 1 2908 0
	cmp	r5, #0
	beq	.L478
	.loc 1 2909 0
	mov	r3, r9
	mov	r0, r5
	ldr	r1, .L502+24
	add	r2, sp, #16
	bl	fprintf
.LVL377:
.L478:
	.loc 1 2912 0
	add	r0, sp, #16
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL378:
	add	r10, r10, r10, asl #3
.LVL379:
	str	r0, [r8, r10, asl #2]
	.loc 1 2913 0
	b	.L467
.LVL380:
.L474:
	.loc 1 2897 0
	cmp	r5, #0
	beq	.L467
	.loc 1 2898 0
	add	r2, sp, #16
	mov	r0, r5
.LVL381:
	ldr	r1, .L502+28
	bl	fprintf
.LVL382:
	b	.L467
.L503:
	.align	2
.L502:
	.word	.LC65
	.word	__ctype_ptr__
	.word	deh_soundnames
	.word	S_sfx
	.word	.LC62
	.word	deh_soundnames+4
	.word	.LC67
	.word	.LC66
	.cfi_endproc
.LFE29:
	.size	deh_procBexSounds, .-deh_procBexSounds
	.align	2
	.type	deh_procBexSprites, %function
deh_procBexSprites:
.LFB28:
	.loc 1 2805 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1080
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL383:
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
	.loc 1 2813 0
	subs	r5, r1, #0
	.loc 1 2805 0
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1124
	sub	sp, sp, #4
	.cfi_def_cfa_offset 1128
	.loc 1 2805 0
	mov	r4, r0
	mov	r6, r2
	.loc 1 2813 0
	beq	.L505
	.loc 1 2814 0
	ldr	r0, .L544
.LVL384:
	mov	r1, #1
.LVL385:
	mov	r2, #36
.LVL386:
	mov	r3, r5
	bl	fwrite
.LVL387:
.L505:
	.loc 1 2816 0
	mov	r1, r6
	add	r0, sp, #64
	mov	r2, #1024
	bl	strncpy
.LVL388:
.LBB110:
.LBB111:
	.loc 1 3048 0
	ldr	r6, .L544+4
.LVL389:
.LBE111:
.LBE110:
	.loc 1 2845 0
	ldr	r7, .L544+8
	.loc 1 2853 0
	ldr	r8, .L544+12
.L508:
	.loc 1 2818 0
	mov	r0, r4
	bl	dehfeof
.LVL390:
	subs	r9, r0, #0
	bne	.L504
.L542:
	.loc 1 2818 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L504
	.loc 1 2820 0 is_stmt 1
	add	r0, sp, #64
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL391:
	cmp	r0, #0
	beq	.L504
	.loc 1 2822 0
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	cmp	r3, #35
	beq	.L508
	.loc 1 2824 0
	add	r0, sp, #64
	bl	lfstrip
.LVL392:
	.loc 1 2825 0
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L504
	.loc 1 2827 0
	add	r1, sp, #32
	str	r5, [sp]
	sub	r2, r1, #8
	add	r3, sp, #12
	add	r0, sp, #64
	bl	deh_GetData
.LVL393:
	cmp	r0, #0
	bne	.L510
	.loc 1 2829 0
	cmp	r5, #0
	beq	.L508
	.loc 1 2830 0
	ldr	r1, .L544+16
	add	r2, sp, #64
	mov	r0, r5
	bl	fprintf
.LVL394:
	.loc 1 2818 0
	mov	r0, r4
	bl	dehfeof
.LVL395:
	subs	r9, r0, #0
	beq	.L542
.L504:
	.loc 1 2859 0
	add	sp, sp, #1088
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL396:
.L510:
	.cfi_restore_state
	.loc 1 2835 0
	ldr	r1, [sp, #12]
.LVL397:
	.loc 1 2834 0
	str	r9, [sp, #16]
	strb	r9, [sp, #20]
.LBB113:
.LBB112:
	.loc 1 3048 0
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldr	r2, [r6]
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	beq	.L513
.LVL398:
.L514:
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2
.LVL399:
	add	ip, r2, ip
	ldrb	r3, [ip, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L514
.LVL400:
.L513:
.LBE112:
.LBE113:
	.loc 1 2835 0
	mov	r2, #4
	add	r0, sp, #16
	bl	strncpy
.LVL401:
	.loc 1 2836 0
	add	r0, sp, #16
	bl	strlen
.LVL402:
	cmp	r0, #4
	beq	.L543
	.loc 1 2838 0
	cmp	r5, #0
	beq	.L508
	.loc 1 2839 0
	add	r2, sp, #16
	mov	r0, r5
	ldr	r1, .L544+20
	bl	fprintf
.LVL403:
	b	.L508
.L543:
.LVL404:
	.loc 1 2845 0
	ldr	r9, [r7]
	cmp	r9, #0
	movne	r10, #0
	ldrne	fp, .L544+8
	bne	.L520
	b	.L508
.LVL405:
.L518:
	ldr	r9, [fp, #4]!
	.loc 1 2856 0
	add	r10, r10, #1
.LVL406:
	.loc 1 2845 0
	cmp	r9, #0
	beq	.L508
.LVL407:
.L520:
	.loc 1 2847 0
	mov	r0, r9
	add	r1, sp, #32
	mov	r2, #4
	bl	strncasecmp
.LVL408:
	cmp	r0, #0
	bne	.L518
	.loc 1 2849 0
	cmp	r5, #0
	beq	.L519
	.loc 1 2850 0
	mov	r3, r9
	mov	r0, r5
	ldr	r1, .L544+24
	add	r2, sp, #16
	bl	fprintf
.LVL409:
.L519:
	.loc 1 2853 0
	add	r0, sp, #16
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL410:
	str	r0, [r8, r10, asl #2]
	.loc 1 2854 0
	b	.L508
.L545:
	.align	2
.L544:
	.word	.LC68
	.word	__ctype_ptr__
	.word	deh_spritenames
	.word	sprnames
	.word	.LC62
	.word	.LC69
	.word	.LC70
	.cfi_endproc
.LFE28:
	.size	deh_procBexSprites, .-deh_procBexSprites
	.align	2
	.type	deh_procHelperThing, %function
deh_procHelperThing:
.LFB27:
	.loc 1 2770 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1064
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL411:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1092
	sub	sp, sp, #4
	.cfi_def_cfa_offset 1096
	.loc 1 2770 0
	mov	r4, r1
	mov	r5, r0
	.loc 1 2775 0
	mov	r1, r2
.LVL412:
	add	r0, sp, #48
.LVL413:
	mov	r2, #1024
.LVL414:
	bl	strncpy
.LVL415:
	.loc 1 2793 0
	ldr	r7, .L564
.L547:
	.loc 1 2776 0
	mov	r0, r5
	bl	dehfeof
.LVL416:
	subs	r6, r0, #0
	bne	.L546
.L563:
	.loc 1 2776 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #48]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L546
	.loc 1 2778 0 is_stmt 1
	add	r0, sp, #48
	mov	r1, #1024
	mov	r2, r5
	bl	dehfgets
.LVL417:
	cmp	r0, #0
	beq	.L546
	.loc 1 2779 0
	add	r0, sp, #48
	bl	lfstrip
.LVL418:
	.loc 1 2780 0
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L546
	.loc 1 2781 0
	add	r1, sp, #16
	str	r4, [sp]
	mov	r3, r6
	sub	r2, r1, #8
	add	r0, sp, #48
	bl	deh_GetData
.LVL419:
	cmp	r0, #0
	bne	.L550
	.loc 1 2783 0
	cmp	r4, #0
	beq	.L547
	.loc 1 2783 0 is_stmt 0 discriminator 1
	ldr	r1, .L564+4
	add	r2, sp, #48
	mov	r0, r4
	bl	fprintf
.LVL420:
	.loc 1 2776 0 is_stmt 1 discriminator 1
	mov	r0, r5
	bl	dehfeof
.LVL421:
	subs	r6, r0, #0
	beq	.L563
.L546:
	.loc 1 2796 0
	add	sp, sp, #1072
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL422:
.L550:
	.cfi_restore_state
	.loc 1 2787 0
	cmp	r4, #0
	beq	.L553
	.loc 1 2789 0
	ldr	r1, .L564+8
	add	r2, sp, #16
	mov	r0, r4
	bl	fprintf
.LVL423:
	.loc 1 2790 0
	mov	r0, r4
	ldr	r1, .L564+12
	ldr	r2, [sp, #8]
	bl	fprintf
.LVL424:
.L553:
	.loc 1 2792 0
	add	r0, sp, #16
	ldr	r1, .L564+16
	mov	r2, #4
	bl	strncasecmp
.LVL425:
	cmp	r0, #0
	.loc 1 2793 0
	ldreq	r3, [sp, #8]
	streq	r3, [r7, #3676]
	b	.L547
.L565:
	.align	2
.L564:
	.word	.LANCHOR2
	.word	.LC62
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.cfi_endproc
.LFE27:
	.size	deh_procHelperThing, .-deh_procHelperThing
	.align	2
	.type	deh_procStrings, %function
deh_procStrings:
.LFB25:
	.loc 1 2620 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL426:
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
	.loc 1 2631 0
	subs	r6, r1, #0
	.loc 1 2620 0
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1108
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1120
	.loc 1 2620 0
	mov	r7, r0
	mov	r4, r2
	.loc 1 2631 0
	beq	.L567
	.loc 1 2631 0 is_stmt 0 discriminator 1
	ldr	r0, .L614
.LVL427:
	mov	r1, #1
.LVL428:
	mov	r2, #40
.LVL429:
	mov	r3, r6
	bl	fwrite
.LVL430:
.L567:
	.loc 1 2633 0 is_stmt 1
	ldr	r5, .L614+4
	ldr	r2, [r5, #-1552]
	cmp	r2, #0
	beq	.L611
.L568:
	.loc 1 2635 0
	mov	r0, #0
	.loc 1 2636 0
	mov	r1, r4
	.loc 1 2635 0
	strb	r0, [r2]
	.loc 1 2636 0
	add	r0, sp, #56
	mov	r2, #1024
	bl	strncpy
.LVL431:
	.loc 1 2645 0
	ldr	r9, .L614+4
	ldr	r4, .L614+8
.LVL432:
.LBB114:
.LBB115:
	.loc 1 3048 0
	ldr	r8, .L614+12
.LVL433:
.L571:
.LBE115:
.LBE114:
	.loc 1 2639 0
	mov	r0, r7
	bl	dehfeof
.LVL434:
	cmp	r0, #0
	bne	.L566
.L613:
	.loc 1 2639 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L566
	.loc 1 2641 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r7
	bl	dehfgets
.LVL435:
	cmp	r0, #0
	beq	.L566
	.loc 1 2642 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #35
	beq	.L571
	.loc 1 2643 0
	add	r0, sp, #56
	bl	lfstrip
.LVL436:
	.loc 1 2644 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L566
	.loc 1 2645 0
	ldr	r10, [r5, #-1552]
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L574
	b	.L612
.L580:
	.loc 1 2657 0
	cmp	r6, #0
	.loc 1 2656 0
	str	r1, [r4, #3680]
	.loc 1 2657 0
	beq	.L579
	.loc 1 2657 0 is_stmt 0 discriminator 1
	mov	r2, r1
	mov	r3, r0
	ldr	r1, .L614+16
	mov	r0, r6
	bl	fprintf
.LVL437:
	ldr	r10, [r5, #-1552]
	ldr	r1, [r4, #3680]
.L579:
	.loc 1 2660 0 is_stmt 1
	mov	r0, r10
	mov	r2, #1
	mov	r3, #0
	bl	Z_Realloc
.LVL438:
	mov	r10, r0
	str	r0, [r5, #-1552]
.L574:
	.loc 1 2653 0
	mov	r0, r10
	bl	strlen
.LVL439:
	mov	fp, r0
	add	r0, sp, #56
	bl	strlen
.LVL440:
	ldr	r2, [r4, #3680]
	add	r1, r0, fp
	cmp	r1, r2
	bhi	.L580
	.loc 1 2663 0
	ldrb	r3, [r10]	@ zero_extendqisi2
.LBB118:
.LBB116:
	.loc 1 3048 0
	ldr	r2, [r8]
.LBE116:
.LBE118:
	.loc 1 2663 0
	cmp	r3, #0
	ldreq	r1, [sp, #12]
	addne	r1, sp, #56
.LVL441:
.LBB119:
.LBB117:
	.loc 1 3048 0
	ldrb	r3, [r1]	@ zero_extendqisi2
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	beq	.L582
.LVL442:
.L583:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
.LVL443:
	add	r3, r2, r3
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #8
	bne	.L583
.LVL444:
.L582:
.LBE117:
.LBE119:
	.loc 1 2663 0
	add	r0, r10, fp
	bl	strcpy
.LVL445:
	.loc 1 2664 0
	mov	r0, r10
	bl	rstrip
.LVL446:
	.loc 1 2670 0
	mov	r0, r10
	bl	strlen
.LVL447:
	sub	r0, r0, #1
	ldrb	r3, [r10, r0]	@ zero_extendqisi2
	cmp	r3, #92
	.loc 1 2672 0
	moveq	r3, #0
	streqb	r3, [r10, r0]
	.loc 1 2670 0
	beq	.L571
	.loc 1 2675 0
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L571
	.loc 1 2678 0
	mov	r2, r10
	add	r0, sp, #24
	mov	r1, #0
	mov	r3, r6
	bl	deh_procStringSub
.LVL448:
	.loc 1 2681 0
	clz	r0, r0
.LVL449:
	cmp	r6, #0
	mov	r0, r0, lsr #5
	moveq	r0, #0
	cmp	r0, #0
	beq	.L586
	.loc 1 2681 0 is_stmt 0 discriminator 1
	add	r2, sp, #24
	mov	r0, r6
	ldr	r1, .L614+20
	bl	fprintf
.LVL450:
.L586:
	.loc 1 2684 0 is_stmt 1
	mov	r2, #0
	ldr	r3, [r5, #-1552]
	.loc 1 2639 0
	mov	r0, r7
	.loc 1 2684 0
	strb	r2, [r3]
	.loc 1 2639 0
	bl	dehfeof
.LVL451:
	cmp	r0, #0
	beq	.L613
.L566:
	.loc 1 2688 0
	add	sp, sp, #1072
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL452:
.L612:
	.cfi_restore_state
	.loc 1 2647 0
	add	r1, sp, #24
	str	r6, [sp]
	sub	r2, r1, #8
	sub	r3, r1, #12
	add	r0, sp, #56
	bl	deh_GetData
.LVL453:
	cmp	r0, #0
	ldrne	r10, [r9, #-1552]
	bne	.L574
.L575:
	.loc 1 2649 0
	cmp	r6, #0
	beq	.L571
	.loc 1 2649 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L614+24
	add	r2, sp, #56
	bl	fprintf
.LVL454:
	b	.L571
.LVL455:
.L611:
	.loc 1 2633 0 is_stmt 1 discriminator 1
	ldr	r1, .L614+8
	ldr	r0, [r1, #3680]
	mov	r1, #1
	bl	Z_Malloc
.LVL456:
	mov	r2, r0
	str	r0, [r5, #-1552]
	b	.L568
.L615:
	.align	2
.L614:
	.word	.LC74
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	__ctype_ptr__
	.word	.LC75
	.word	.LC76
	.word	.LC62
	.cfi_endproc
.LFE25:
	.size	deh_procStrings, .-deh_procStrings
	.align	2
	.type	deh_procMisc, %function
deh_procMisc:
.LFB22:
	.loc 1 2363 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1064
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL457:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1088
	.loc 1 2363 0
	mov	r4, r1
	mov	r5, r0
	.loc 1 2368 0
	mov	r1, r2
.LVL458:
	add	r0, sp, #48
.LVL459:
	mov	r2, #1024
.LVL460:
	bl	strncpy
.LVL461:
.L617:
	.loc 1 2369 0
	mov	r0, r5
	bl	dehfeof
.LVL462:
	subs	r6, r0, #0
	bne	.L616
.L657:
	.loc 1 2369 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #48]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L616
	.loc 1 2371 0 is_stmt 1
	add	r0, sp, #48
	mov	r1, #1024
	mov	r2, r5
	bl	dehfgets
.LVL463:
	cmp	r0, #0
	beq	.L616
	.loc 1 2372 0
	add	r0, sp, #48
	bl	lfstrip
.LVL464:
	.loc 1 2373 0
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L616
	.loc 1 2374 0
	add	r1, sp, #16
	str	r4, [sp]
	mov	r3, r6
	sub	r2, r1, #8
	add	r0, sp, #48
	bl	deh_GetData
.LVL465:
	cmp	r0, #0
	bne	.L620
	.loc 1 2376 0
	cmp	r4, #0
	beq	.L617
	.loc 1 2376 0 is_stmt 0 discriminator 1
	ldr	r1, .L662
	add	r2, sp, #48
	mov	r0, r4
	bl	fprintf
.LVL466:
	.loc 1 2369 0 is_stmt 1 discriminator 1
	mov	r0, r5
	bl	dehfeof
.LVL467:
	subs	r6, r0, #0
	beq	.L657
.L616:
	.loc 1 2440 0
	add	sp, sp, #1072
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL468:
.L620:
	.cfi_restore_state
	.loc 1 2380 0
	cmp	r4, #0
	beq	.L623
	.loc 1 2380 0 is_stmt 0 discriminator 1
	mov	r0, r4
	ldr	r1, .L662+4
	add	r2, sp, #16
	bl	fprintf
.LVL469:
.L623:
	.loc 1 2382 0 is_stmt 1
	add	r0, sp, #16
	ldr	r1, .L662+8
	bl	strcasecmp
.LVL470:
	cmp	r0, #0
	.loc 1 2383 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+12
	streq	r2, [r3]
	beq	.L617
.L624:
	.loc 1 2385 0
	add	r0, sp, #16
	ldr	r1, .L662+16
	bl	strcasecmp
.LVL471:
	cmp	r0, #0
	.loc 1 2386 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+20
	streq	r2, [r3]
	beq	.L617
.L625:
	.loc 1 2388 0
	add	r0, sp, #16
	ldr	r1, .L662+24
	bl	strcasecmp
.LVL472:
	cmp	r0, #0
	.loc 1 2389 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+28
	streq	r2, [r3]
	beq	.L617
.L626:
	.loc 1 2391 0
	add	r0, sp, #16
	ldr	r1, .L662+32
	bl	strcasecmp
.LVL473:
	cmp	r0, #0
	.loc 1 2392 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+36
	streq	r2, [r3]
	beq	.L617
.L627:
	.loc 1 2394 0
	add	r0, sp, #16
	ldr	r1, .L662+40
	bl	strcasecmp
.LVL474:
	cmp	r0, #0
	beq	.L658
	.loc 1 2397 0
	add	r0, sp, #16
	ldr	r1, .L662+44
	bl	strcasecmp
.LVL475:
	cmp	r0, #0
	bne	.L629
	.loc 1 2398 0
	ldr	r2, [sp, #8]
	ldr	r3, .L662+48
	str	r2, [r3]
	b	.L617
.L658:
	.loc 1 2395 0
	ldr	r2, [sp, #8]
	ldr	r3, .L662+52
	str	r2, [r3]
	b	.L617
.L629:
	.loc 1 2400 0
	add	r0, sp, #16
	ldr	r1, .L662+56
	bl	strcasecmp
.LVL476:
	cmp	r0, #0
	beq	.L659
	.loc 1 2403 0
	add	r0, sp, #16
	ldr	r1, .L662+60
	bl	strcasecmp
.LVL477:
	cmp	r0, #0
	bne	.L631
	.loc 1 2404 0
	ldr	r2, [sp, #8]
	ldr	r3, .L662+64
	str	r2, [r3]
	b	.L617
.L659:
	.loc 1 2401 0
	ldr	r2, [sp, #8]
	ldr	r3, .L662+68
	str	r2, [r3]
	b	.L617
.L631:
	.loc 1 2406 0
	add	r0, sp, #16
	ldr	r1, .L662+72
	bl	strcasecmp
.LVL478:
	cmp	r0, #0
	.loc 1 2407 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+76
	streq	r2, [r3]
	beq	.L617
.L632:
	.loc 1 2409 0
	add	r0, sp, #16
	ldr	r1, .L662+80
	bl	strcasecmp
.LVL479:
	cmp	r0, #0
	.loc 1 2410 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+84
	streq	r2, [r3]
	beq	.L617
.L633:
	.loc 1 2412 0
	add	r0, sp, #16
	ldr	r1, .L662+88
	bl	strcasecmp
.LVL480:
	cmp	r0, #0
	.loc 1 2413 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+92
	streq	r2, [r3]
	beq	.L617
.L634:
	.loc 1 2415 0
	add	r0, sp, #16
	ldr	r1, .L662+96
	bl	strcasecmp
.LVL481:
	cmp	r0, #0
	.loc 1 2416 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+100
	streq	r2, [r3]
	beq	.L617
.L635:
	.loc 1 2418 0
	add	r0, sp, #16
	ldr	r1, .L662+104
	bl	strcasecmp
.LVL482:
	cmp	r0, #0
	.loc 1 2419 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+108
	streq	r2, [r3]
	beq	.L617
.L636:
	.loc 1 2421 0
	add	r0, sp, #16
	ldr	r1, .L662+112
	bl	strcasecmp
.LVL483:
	cmp	r0, #0
	.loc 1 2422 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+116
	streq	r2, [r3]
	beq	.L617
.L637:
	.loc 1 2424 0
	add	r0, sp, #16
	ldr	r1, .L662+120
	bl	strcasecmp
.LVL484:
	cmp	r0, #0
	.loc 1 2425 0
	ldreq	r2, [sp, #8]
	ldreq	r3, .L662+124
	streq	r2, [r3]
	beq	.L617
.L638:
	.loc 1 2427 0
	add	r0, sp, #16
	ldr	r1, .L662+128
	bl	strcasecmp
.LVL485:
	cmp	r0, #0
	bne	.L639
	.loc 1 2429 0
	ldrd	r2, [sp, #8]
	cmp	r3, #0
	cmpeq	r2, #202
	beq	.L660
	.loc 1 2430 0
	cmp	r3, #0
	cmpeq	r2, #221
	beq	.L661
	.loc 1 2431 0
	cmp	r4, #0
	beq	.L617
	.loc 1 2431 0 is_stmt 0 discriminator 1
	mov	r0, r4
	ldr	r1, .L662+132
	bl	fprintf
.LVL486:
	b	.L617
.L639:
	.loc 1 2436 0 is_stmt 1
	cmp	r4, #0
	beq	.L617
	.loc 1 2436 0 is_stmt 0 discriminator 1
	add	r2, sp, #16
	mov	r0, r4
	ldr	r1, .L662+136
	bl	fprintf
.LVL487:
	b	.L617
.L661:
	.loc 1 2430 0 is_stmt 1 discriminator 1
	mov	r2, #1
	ldr	r3, .L662+140
	str	r2, [r3]
	b	.L617
.L660:
	.loc 1 2429 0 discriminator 1
	ldr	r3, .L662+140
	str	r0, [r3]
	b	.L617
.L663:
	.align	2
.L662:
	.word	.LC62
	.word	.LC77
	.word	.LC78
	.word	initial_health
	.word	.LC79
	.word	initial_bullets
	.word	.LC80
	.word	maxhealth
	.word	.LC81
	.word	max_armor
	.word	.LC82
	.word	.LC83
	.word	blue_armor_class
	.word	green_armor_class
	.word	.LC84
	.word	.LC85
	.word	soul_health
	.word	max_soul
	.word	.LC86
	.word	mega_health
	.word	.LC87
	.word	god_health
	.word	.LC88
	.word	idfa_armor
	.word	.LC89
	.word	idfa_armor_class
	.word	.LC90
	.word	idkfa_armor
	.word	.LC91
	.word	idkfa_armor_class
	.word	.LC92
	.word	bfgcells
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	monsters_infight
	.cfi_endproc
.LFE22:
	.size	deh_procMisc, .-deh_procMisc
	.align	2
	.type	deh_procCheat, %function
deh_procCheat:
.LFB21:
	.loc 1 2286 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL488:
	.loc 1 2290 0
	mov	r3, #0
	.loc 1 2286 0
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
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1104
	sub	sp, sp, #8
	.cfi_def_cfa_offset 1112
	.loc 1 2295 0
	subs	r6, r1, #0
	.loc 1 2291 0
	add	r1, sp, #11
.LVL489:
	.loc 1 2286 0
	mov	r7, r0
	.loc 1 2291 0
	str	r1, [sp, #12]
	.loc 1 2290 0
	strb	r3, [sp, #11]
	.loc 1 2286 0
	mov	r4, r2
	.loc 1 2295 0
	beq	.L665
	.loc 1 2295 0 is_stmt 0 discriminator 1
	mov	r0, r6
.LVL490:
	ldr	r1, .L704
	bl	fprintf
.LVL491:
.L665:
	.loc 1 2297 0 is_stmt 1
	mov	r1, r4
	add	r0, sp, #56
	mov	r2, #1024
	bl	strncpy
.LVL492:
	.loc 1 2312 0
	ldr	r9, .L704+4
	.loc 1 2303 0
	add	r8, sp, #16
.LVL493:
.L666:
	.loc 1 2298 0
	mov	r0, r7
	bl	dehfeof
.LVL494:
	subs	r5, r0, #0
	bne	.L664
.L703:
	.loc 1 2298 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L664
	.loc 1 2300 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r7
	bl	dehfgets
.LVL495:
	cmp	r0, #0
	beq	.L664
	.loc 1 2301 0
	add	r0, sp, #56
	bl	lfstrip
.LVL496:
	.loc 1 2302 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L664
	.loc 1 2303 0
	add	r1, sp, #24
	str	r6, [sp]
	add	r0, sp, #56
	mov	r2, r8
	sub	r3, r1, #12
	bl	deh_GetData
.LVL497:
	cmp	r0, #0
	beq	.L669
.LVL498:
	.loc 1 2312 0 discriminator 1
	ldr	r3, [r9]
	cmp	r3, #0
	ldrne	r10, .L704+4
	beq	.L683
.LVL499:
.L682:
	.loc 1 2313 0
	ldr	r1, [r10, #4]
	cmp	r1, #0
	beq	.L676
	.loc 1 2315 0
	add	r0, sp, #24
	bl	strcasecmp
.LVL500:
	cmp	r0, #0
	bne	.L676
.LVL501:
	.loc 1 2321 0 discriminator 2
	ldr	r4, [sp, #12]
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L678
	.loc 1 2321 0 is_stmt 0
	mov	r2, r4
	mov	ip, r0
.LVL502:
.L680:
	.loc 1 2322 0 is_stmt 1
	cmp	r3, #255
	moveq	r3, #0
	strb	r3, [r2]
	.loc 1 2321 0
	ldr	r4, [sp, #12]
	add	ip, ip, #1
.LVL503:
	ldrb	r3, [r4, ip]	@ zero_extendqisi2
	add	r2, r4, ip
	cmp	r3, #0
	bne	.L680
.LVL504:
	.loc 1 2328 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L678
.LVL505:
.L681:
	.loc 1 2328 0 is_stmt 0 discriminator 2
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
.LVL506:
	cmp	r3, #32
	beq	.L681
.LVL507:
.L678:
	.loc 1 2343 0 is_stmt 1
	mov	r0, r4
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL508:
	.loc 1 2344 0
	cmp	r6, #0
	.loc 1 2343 0
	str	r0, [r10]
	.loc 1 2344 0
	beq	.L676
	.loc 1 2344 0 is_stmt 0 discriminator 1
	ldr	r3, [r10, #4]
	str	r5, [sp]
	mov	r2, r4
	mov	r0, r6
	ldr	r1, .L704+8
	bl	fprintf
.LVL509:
.L676:
	.loc 1 2312 0 is_stmt 1 discriminator 2
	ldr	r3, [r10, #40]!
	add	r5, r5, #1
.LVL510:
	cmp	r3, #0
	bne	.L682
.LVL511:
.L683:
	.loc 1 2349 0
	cmp	r6, #0
	beq	.L666
	.loc 1 2349 0 is_stmt 0 discriminator 1
	ldr	r1, .L704+12
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL512:
	.loc 1 2298 0 is_stmt 1 discriminator 1
	mov	r0, r7
	bl	dehfeof
.LVL513:
	subs	r5, r0, #0
	beq	.L703
.L664:
	.loc 1 2352 0
	add	sp, sp, #1072
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL514:
.L669:
	.cfi_restore_state
	.loc 1 2305 0
	cmp	r6, #0
	beq	.L666
	.loc 1 2305 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L704+16
	add	r2, sp, #56
	bl	fprintf
.LVL515:
	b	.L666
.L705:
	.align	2
.L704:
	.word	.LC96
	.word	cheat
	.word	.LC97
	.word	.LC31
	.word	.LC62
	.cfi_endproc
.LFE21:
	.size	deh_procCheat, .-deh_procCheat
	.align	2
	.type	deh_procWeapon, %function
deh_procWeapon:
.LFB18:
	.loc 1 2108 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL516:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r6, r1
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1092
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1104
	.loc 1 2114 0
	mov	r1, r2
.LVL517:
	.loc 1 2108 0
	mov	r4, r0
	.loc 1 2114 0
	mov	r2, #1024
.LVL518:
	add	r0, sp, #56
.LVL519:
	bl	strncpy
.LVL520:
	.loc 1 2117 0
	add	r2, sp, #24
	add	r0, sp, #56
	sub	r3, r2, #12
	ldr	r1, .L734
	bl	sscanf
.LVL521:
	.loc 1 2118 0
	cmp	r6, #0
	.loc 1 2121 0
	moveq	r7, r6
	.loc 1 2118 0
	beq	.L708
	.loc 1 2118 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #12]
	mov	r0, r6
	ldr	r1, .L734+4
	add	r3, sp, #24
	bl	fprintf
.LVL522:
	.loc 1 2120 0 is_stmt 1 discriminator 1
	ldr	r2, [sp, #12]
	.loc 1 2121 0 discriminator 1
	cmp	r2, #8
	movls	r7, #1
	bls	.L708
	mov	r0, r6
	ldr	r1, .L734+8
	mov	r3, #4
	bl	fprintf
.LVL523:
	mov	r7, #1
.L708:
	.loc 1 2124 0
	mov	r0, r4
	bl	dehfeof
.LVL524:
	subs	r5, r0, #0
	bne	.L706
.L732:
	.loc 1 2124 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L706
	.loc 1 2126 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL525:
	cmp	r0, #0
	beq	.L706
	.loc 1 2127 0
	add	r0, sp, #56
	bl	lfstrip
.LVL526:
	.loc 1 2128 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L706
	.loc 1 2129 0
	add	r1, sp, #24
	str	r6, [sp]
	mov	r3, r5
	add	r0, sp, #56
	sub	r2, r1, #8
	bl	deh_GetData
.LVL527:
	cmp	r0, #0
	bne	.L711
	.loc 1 2131 0
	cmp	r7, #0
	beq	.L708
	.loc 1 2131 0 is_stmt 0 discriminator 1
	ldr	r1, .L734+12
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL528:
	.loc 1 2124 0 is_stmt 1 discriminator 1
	mov	r0, r4
	bl	dehfeof
.LVL529:
	subs	r5, r0, #0
	beq	.L732
.L706:
	.loc 1 2155 0
	add	sp, sp, #1072
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL530:
.L711:
	.cfi_restore_state
	.loc 1 2134 0
	add	r0, sp, #24
	ldr	r1, .L734+16
	bl	strcasecmp
.LVL531:
	cmp	r0, #0
	bne	.L713
	.loc 1 2135 0
	ldr	r3, [sp, #12]
	ldr	r2, .L734+20
	ldr	r1, [sp, #16]
	add	r3, r3, r3, asl #1
	strb	r1, [r2, r3, asl #3]
	b	.L708
.L713:
	.loc 1 2137 0
	add	r0, sp, #24
	ldr	r1, .L734+24
	bl	strcasecmp
.LVL532:
	cmp	r0, #0
	bne	.L714
	.loc 1 2138 0
	ldr	r3, [sp, #12]
	ldr	r2, .L734+20
	add	r3, r3, r3, asl #1
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #3
	str	r1, [r3, #4]
	b	.L708
.L714:
	.loc 1 2140 0
	add	r0, sp, #24
	ldr	r1, .L734+28
	bl	strcasecmp
.LVL533:
	cmp	r0, #0
	bne	.L715
	.loc 1 2141 0
	ldr	r3, [sp, #12]
	ldr	r2, .L734+20
	add	r3, r3, r3, asl #1
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #3
	str	r1, [r3, #8]
	b	.L708
.L715:
	.loc 1 2143 0
	add	r0, sp, #24
	ldr	r1, .L734+32
	bl	strcasecmp
.LVL534:
	cmp	r0, #0
	bne	.L716
	.loc 1 2144 0
	ldr	r3, [sp, #12]
	ldr	r2, .L734+20
	add	r3, r3, r3, asl #1
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #3
	str	r1, [r3, #12]
	b	.L708
.L716:
	.loc 1 2146 0
	add	r0, sp, #24
	ldr	r1, .L734+36
	bl	strcasecmp
.LVL535:
	cmp	r0, #0
	beq	.L733
	.loc 1 2149 0
	add	r0, sp, #24
	ldr	r1, .L734+40
	bl	strcasecmp
.LVL536:
	cmp	r0, #0
	bne	.L718
	.loc 1 2150 0
	ldr	r3, [sp, #12]
	ldr	r2, .L734+20
	add	r3, r3, r3, asl #1
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #3
	str	r1, [r3, #20]
	b	.L708
.L733:
	.loc 1 2147 0
	ldr	r3, [sp, #12]
	ldr	r2, .L734+20
	add	r3, r3, r3, asl #1
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #3
	str	r1, [r3, #16]
	b	.L708
.L718:
	.loc 1 2152 0
	cmp	r7, #0
	beq	.L708
	.loc 1 2152 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L734+44
	add	r2, sp, #24
	bl	fprintf
.LVL537:
	b	.L708
.L735:
	.align	2
.L734:
	.word	.LC21
	.word	.LC98
	.word	.LC99
	.word	.LC62
	.word	.LC100
	.word	weaponinfo
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.cfi_endproc
.LFE18:
	.size	deh_procWeapon, .-deh_procWeapon
	.align	2
	.type	deh_procAmmo, %function
deh_procAmmo:
.LFB17:
	.loc 1 2062 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL538:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r6, r1
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1100
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1112
	.loc 1 2068 0
	mov	r1, r2
.LVL539:
	.loc 1 2062 0
	mov	r4, r0
	.loc 1 2068 0
	mov	r2, #1024
.LVL540:
	add	r0, sp, #56
.LVL541:
	bl	strncpy
.LVL542:
	.loc 1 2071 0
	add	r2, sp, #24
	add	r0, sp, #56
	sub	r3, r2, #12
	ldr	r1, .L759
	bl	sscanf
.LVL543:
	.loc 1 2072 0
	cmp	r6, #0
	.loc 1 2075 0
	moveq	r7, r6
	.loc 1 2072 0
	beq	.L737
	.loc 1 2072 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #12]
	mov	r0, r6
	ldr	r1, .L759+4
	add	r3, sp, #24
	bl	fprintf
.LVL544:
	.loc 1 2074 0 is_stmt 1 discriminator 1
	ldr	r2, [sp, #12]
	.loc 1 2075 0 discriminator 1
	cmp	r2, #3
	movls	r7, #1
	bls	.L737
	mov	r0, r6
	ldr	r1, .L759+8
	mov	r3, #4
	bl	fprintf
.LVL545:
	mov	r7, #1
.L737:
	.loc 1 2092 0
	ldr	r9, .L759+12
	.loc 1 2089 0
	ldr	r8, .L759+16
.L738:
	.loc 1 2078 0
	mov	r0, r4
	bl	dehfeof
.LVL546:
	subs	r5, r0, #0
	bne	.L736
.L758:
	.loc 1 2078 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L736
	.loc 1 2080 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL547:
	cmp	r0, #0
	beq	.L736
	.loc 1 2081 0
	add	r0, sp, #56
	bl	lfstrip
.LVL548:
	.loc 1 2082 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L736
	.loc 1 2083 0
	add	r1, sp, #24
	str	r6, [sp]
	mov	r3, r5
	add	r0, sp, #56
	sub	r2, r1, #8
	bl	deh_GetData
.LVL549:
	cmp	r0, #0
	bne	.L741
	.loc 1 2085 0
	cmp	r7, #0
	beq	.L738
	.loc 1 2085 0 is_stmt 0 discriminator 1
	ldr	r1, .L759+20
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL550:
	.loc 1 2078 0 is_stmt 1 discriminator 1
	mov	r0, r4
	bl	dehfeof
.LVL551:
	subs	r5, r0, #0
	beq	.L758
.L736:
	.loc 1 2097 0
	add	sp, sp, #1072
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL552:
.L741:
	.cfi_restore_state
	.loc 1 2088 0
	add	r0, sp, #24
	ldr	r1, .L759+24
	bl	strcasecmp
.LVL553:
	cmp	r0, #0
	.loc 1 2089 0
	ldreq	r3, [sp, #12]
	ldreq	r2, [sp, #16]
	streq	r2, [r8, r3, asl #2]
	beq	.L738
.L743:
	.loc 1 2091 0
	add	r0, sp, #24
	ldr	r1, .L759+28
	bl	strcasecmp
.LVL554:
	cmp	r0, #0
	.loc 1 2092 0
	ldreq	r3, [sp, #12]
	ldreq	r2, [sp, #16]
	streq	r2, [r9, r3, asl #2]
	beq	.L738
.L744:
	.loc 1 2094 0
	cmp	r7, #0
	beq	.L738
	.loc 1 2094 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L759+32
	add	r2, sp, #24
	bl	fprintf
.LVL555:
	b	.L738
.L760:
	.align	2
.L759:
	.word	.LC21
	.word	.LC107
	.word	.LC108
	.word	clipammo
	.word	maxammo
	.word	.LC62
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.cfi_endproc
.LFE17:
	.size	deh_procAmmo, .-deh_procAmmo
	.align	2
	.type	deh_procSounds, %function
deh_procSounds:
.LFB16:
	.loc 1 1994 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL556:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r6, r1
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1092
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1104
	.loc 1 2000 0
	mov	r1, r2
.LVL557:
	.loc 1 1994 0
	mov	r4, r0
	.loc 1 2000 0
	mov	r2, #1024
.LVL558:
	add	r0, sp, #56
.LVL559:
	bl	strncpy
.LVL560:
	.loc 1 2003 0
	add	r2, sp, #24
	add	r0, sp, #56
	sub	r3, r2, #12
	ldr	r1, .L798
	bl	sscanf
.LVL561:
	.loc 1 2004 0
	cmp	r6, #0
	.loc 1 2007 0
	moveq	r7, r6
	.loc 1 2004 0
	beq	.L763
	.loc 1 2004 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #12]
	mov	r0, r6
	ldr	r1, .L798+4
	add	r3, sp, #24
	bl	fprintf
.LVL562:
	.loc 1 2006 0 is_stmt 1 discriminator 1
	ldr	r2, [sp, #12]
	.loc 1 2007 0 discriminator 1
	cmp	r2, #113
	movls	r7, #1
	bls	.L763
	mov	r0, r6
	ldr	r1, .L798+8
	mov	r3, #114
	bl	fprintf
.LVL563:
	mov	r7, #1
.L763:
	.loc 1 2010 0
	mov	r0, r4
	bl	dehfeof
.LVL564:
	subs	r5, r0, #0
	bne	.L761
.L796:
	.loc 1 2010 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L761
	.loc 1 2012 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL565:
	cmp	r0, #0
	beq	.L761
	.loc 1 2013 0
	add	r0, sp, #56
	bl	lfstrip
.LVL566:
	.loc 1 2014 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L761
	.loc 1 2015 0
	add	r1, sp, #24
	str	r6, [sp]
	mov	r3, r5
	add	r0, sp, #56
	sub	r2, r1, #8
	bl	deh_GetData
.LVL567:
	cmp	r0, #0
	bne	.L766
	.loc 1 2017 0
	cmp	r7, #0
	beq	.L763
	.loc 1 2017 0 is_stmt 0 discriminator 1
	ldr	r1, .L798+12
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL568:
	.loc 1 2010 0 is_stmt 1 discriminator 1
	mov	r0, r4
	bl	dehfeof
.LVL569:
	subs	r5, r0, #0
	beq	.L796
.L761:
	.loc 1 2051 0
	add	sp, sp, #1072
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL570:
.L766:
	.cfi_restore_state
	.loc 1 2020 0
	add	r0, sp, #24
	ldr	r1, .L798+16
	bl	strcasecmp
.LVL571:
	cmp	r0, #0
	beq	.L763
	.loc 1 2023 0
	add	r0, sp, #24
	ldr	r1, .L798+20
	bl	strcasecmp
.LVL572:
	cmp	r0, #0
	bne	.L768
	.loc 1 2024 0
	ldr	r3, [sp, #12]
	ldr	r2, .L798+24
	add	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #4]
	b	.L763
.L768:
	.loc 1 2026 0
	add	r0, sp, #24
	ldr	r1, .L798+28
	bl	strcasecmp
.LVL573:
	cmp	r0, #0
	bne	.L769
	.loc 1 2027 0
	ldr	r3, [sp, #12]
	ldr	r2, .L798+24
	add	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #8]
	b	.L763
.L769:
	.loc 1 2029 0
	add	r0, sp, #24
	ldr	r1, .L798+32
	bl	strcasecmp
.LVL574:
	cmp	r0, #0
	beq	.L763
	.loc 1 2032 0
	add	r0, sp, #24
	ldr	r1, .L798+36
	bl	strcasecmp
.LVL575:
	cmp	r0, #0
	beq	.L797
	.loc 1 2035 0
	add	r0, sp, #24
	ldr	r1, .L798+40
	bl	strcasecmp
.LVL576:
	cmp	r0, #0
	bne	.L771
	.loc 1 2036 0
	ldr	r3, [sp, #12]
	ldr	r2, .L798+24
	add	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #20]
	b	.L763
.L797:
	.loc 1 2033 0
	ldr	r3, [sp, #12]
	ldr	r2, .L798+24
	add	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #16]
	b	.L763
.L771:
	.loc 1 2038 0
	add	r0, sp, #24
	ldr	r1, .L798+44
	bl	strcasecmp
.LVL577:
	cmp	r0, #0
	beq	.L763
	.loc 1 2041 0
	add	r0, sp, #24
	ldr	r1, .L798+48
	bl	strcasecmp
.LVL578:
	cmp	r0, #0
	bne	.L772
	.loc 1 2042 0
	ldr	r3, [sp, #12]
	ldr	r2, .L798+24
	add	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #28]
	b	.L763
.L772:
	.loc 1 2044 0
	add	r0, sp, #24
	ldr	r1, .L798+52
	bl	strcasecmp
.LVL579:
	cmp	r0, #0
	bne	.L773
	.loc 1 2045 0
	ldr	r3, [sp, #12]
	ldr	r2, .L798+24
	add	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #32]
	b	.L763
.L773:
	.loc 1 2047 0
	cmp	r7, #0
	beq	.L763
	.loc 1 2047 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L798+56
	add	r2, sp, #24
	bl	fprintf
.LVL580:
	b	.L763
.L799:
	.align	2
.L798:
	.word	.LC21
	.word	.LC112
	.word	.LC113
	.word	.LC62
	.word	.LC114
	.word	.LC115
	.word	S_sfx
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.word	.LC123
	.cfi_endproc
.LFE16:
	.size	deh_procSounds, .-deh_procSounds
	.align	2
	.type	deh_procPointer, %function
deh_procPointer:
.LFB15:
	.loc 1 1916 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL581:
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
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1108
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1120
	.loc 1 1916 0
	mov	r6, r1
	mov	r8, r0
	.loc 1 1923 0
	mov	r1, r2
.LVL582:
	add	r0, sp, #56
.LVL583:
	mov	r2, #1024
.LVL584:
	bl	strncpy
.LVL585:
	.loc 1 1927 0
	add	r2, sp, #24
	add	r0, sp, #56
	sub	r3, r2, #12
	ldr	r1, .L844
	bl	sscanf
.LVL586:
	cmp	r0, #2
	beq	.L801
	.loc 1 1929 0
	cmp	r6, #0
	beq	.L800
	.loc 1 1929 0 is_stmt 0 discriminator 1
	mov	r0, r6
	add	r2, sp, #56
	ldr	r1, .L844+4
	bl	fprintf
.LVL587:
.L800:
	.loc 1 1983 0 is_stmt 1
	add	sp, sp, #1072
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL588:
.L801:
	.cfi_restore_state
	.loc 1 1933 0
	cmp	r6, #0
	beq	.L804
	.loc 1 1933 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #12]
	add	r3, sp, #24
	mov	r0, r6
	ldr	r1, .L844+8
	bl	fprintf
.LVL589:
	.loc 1 1934 0 is_stmt 1 discriminator 1
	ldr	r2, [sp, #12]
	ldr	r3, .L844+12
	cmp	r2, r3
	bls	.L818
	.loc 1 1937 0
	mov	r0, r6
	ldr	r1, .L844+16
	ldr	r3, .L844+20
	bl	fprintf
.LVL590:
	b	.L800
.L804:
	.loc 1 1934 0
	ldr	r3, .L844+12
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bhi	.L800
.L818:
	ldr	r7, .L844+24
	.loc 1 1961 0
	ldr	r10, .L844+28
	ldr	r9, .L844+32
.L806:
	.loc 1 1941 0
	mov	r0, r8
	bl	dehfeof
.LVL591:
	subs	r4, r0, #0
	bne	.L800
.L842:
	.loc 1 1941 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L800
	.loc 1 1943 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r8
	bl	dehfgets
.LVL592:
	cmp	r0, #0
	beq	.L800
	.loc 1 1944 0
	add	r0, sp, #56
	bl	lfstrip
.LVL593:
	.loc 1 1945 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L800
	.loc 1 1946 0
	add	r1, sp, #24
	str	r6, [sp]
	mov	r3, r4
	add	r0, sp, #56
	sub	r2, r1, #8
	bl	deh_GetData
.LVL594:
	cmp	r0, #0
	bne	.L808
	.loc 1 1948 0
	cmp	r6, #0
	beq	.L806
	.loc 1 1948 0 is_stmt 0 discriminator 1
	ldr	r1, .L844+4
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL595:
	.loc 1 1941 0 is_stmt 1 discriminator 1
	mov	r0, r8
	bl	dehfeof
.LVL596:
	subs	r4, r0, #0
	beq	.L842
	b	.L800
.L808:
	.loc 1 1952 0
	mov	r3, #0
	ldrd	r4, [sp, #16]
	ldr	r2, .L844+12
	cmp	r5, r3
	cmpeq	r4, r2
	bhi	.L843
	.loc 1 1959 0
	add	r0, sp, #24
	ldr	r1, .L844+36
	bl	strcasecmp
.LVL597:
	cmp	r0, #0
	bne	.L812
	.loc 1 1961 0
	ldr	r2, [sp, #12]
	ldr	r1, [r9, r4, asl #2]
	rsb	r3, r2, r2, asl #3
	add	r3, r10, r3, asl #2
	.loc 1 1962 0
	cmp	r6, #0
	.loc 1 1961 0
	str	r1, [r3, #12]
	.loc 1 1962 0
	beq	.L813
	.loc 1 1962 0 is_stmt 0 discriminator 1
	str	r2, [sp]
	mov	r3, r5
	mov	r2, r4
	mov	r0, r6
	ldr	r1, .L844+40
	bl	fprintf
.LVL598:
	ldrd	r4, [sp, #16]
.L813:
.LVL599:
	add	r5, r9, r4, asl #2
	ldr	fp, .L844+24
	.loc 1 1916 0 is_stmt 1
	mov	r4, #0
	b	.L816
.LVL600:
.L814:
	.loc 1 1974 0
	ldr	r3, [r7, r4, asl #3]
	add	r4, r4, #1
.LVL601:
	cmp	r3, #0
	beq	.L806
	.loc 1 1966 0 discriminator 2
	cmp	r4, #85
	add	fp, fp, #8
	beq	.L806
.LVL602:
.L816:
	.loc 1 1968 0
	mov	r0, fp
	mov	r1, r5
	mov	r2, #4
	bl	memcmp
.LVL603:
	cmp	r0, #0
	bne	.L814
	.loc 1 1970 0
	cmp	r6, #0
	beq	.L806
	.loc 1 1971 0 discriminator 1
	ldr	r3, .L844+44
	.loc 1 1970 0 discriminator 1
	mov	r0, r6
	.loc 1 1971 0 discriminator 1
	add	r4, r3, r4, asl #3
.LVL604:
	.loc 1 1970 0 discriminator 1
	ldr	r3, [r4, #148]
	ldr	r1, .L844+48
	add	r3, r3, #2
	ldr	r2, [sp, #12]
	bl	fprintf
.LVL605:
	b	.L806
.L812:
	.loc 1 1979 0
	cmp	r6, #0
	beq	.L806
	.loc 1 1979 0 is_stmt 0 discriminator 1
	strd	r4, [sp]
	mov	r0, r6
	ldr	r1, .L844+52
	add	r2, sp, #24
	bl	fprintf
.LVL606:
	b	.L806
.L843:
	.loc 1 1954 0 is_stmt 1
	cmp	r6, #0
	beq	.L800
	.loc 1 1955 0
	ldr	r1, .L844+20
	mov	r0, r6
	str	r1, [sp]
	mov	r2, r4
	mov	r3, r5
	ldr	r1, .L844+56
	bl	fprintf
.LVL607:
	b	.L800
.L845:
	.align	2
.L844:
	.word	.LC124
	.word	.LC62
	.word	.LC125
	.word	1075
	.word	.LC53
	.word	1076
	.word	.LANCHOR3+144
	.word	states
	.word	.LANCHOR0
	.word	.LC127
	.word	.LC128
	.word	.LANCHOR3
	.word	.LC129
	.word	.LC130
	.word	.LC126
	.cfi_endproc
.LFE15:
	.size	deh_procPointer, .-deh_procPointer
	.align	2
	.type	deh_procFrame, %function
deh_procFrame:
.LFB14:
	.loc 1 1836 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL608:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r6, r1
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1092
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1104
	.loc 1 1842 0
	mov	r1, r2
.LVL609:
	.loc 1 1836 0
	mov	r4, r0
	.loc 1 1842 0
	mov	r2, #1024
.LVL610:
	add	r0, sp, #56
.LVL611:
	bl	strncpy
.LVL612:
	.loc 1 1845 0
	add	r2, sp, #24
	add	r0, sp, #56
	sub	r3, r2, #12
	ldr	r1, .L902
	bl	sscanf
.LVL613:
	.loc 1 1846 0
	cmp	r6, #0
	.loc 1 1848 0
	moveq	r7, r6
	.loc 1 1846 0
	beq	.L848
	.loc 1 1846 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #12]
	add	r3, sp, #24
	mov	r0, r6
	ldr	r1, .L902+4
	bl	fprintf
.LVL614:
	.loc 1 1847 0 is_stmt 1 discriminator 1
	ldr	r2, [sp, #12]
	.loc 1 1848 0 discriminator 1
	ldr	r3, .L902+8
	cmp	r2, r3
	movls	r7, #1
	bls	.L848
	mov	r0, r6
	ldr	r1, .L902+12
	add	r3, r3, #1
	bl	fprintf
.LVL615:
	mov	r7, #1
.L848:
	.loc 1 1850 0
	mov	r0, r4
	bl	dehfeof
.LVL616:
	subs	r5, r0, #0
	bne	.L846
.L900:
	.loc 1 1850 0 is_stmt 0 discriminator 1
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	tst	r2, #223
	beq	.L846
	.loc 1 1852 0 is_stmt 1
	add	r0, sp, #56
	mov	r1, #1024
	mov	r2, r4
	bl	dehfgets
.LVL617:
	cmp	r0, #0
	beq	.L846
	.loc 1 1853 0
	add	r0, sp, #56
	bl	lfstrip
.LVL618:
	.loc 1 1854 0
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L846
	.loc 1 1855 0
	add	r1, sp, #24
	str	r6, [sp]
	mov	r3, r5
	add	r0, sp, #56
	sub	r2, r1, #8
	bl	deh_GetData
.LVL619:
	cmp	r0, #0
	bne	.L851
	.loc 1 1857 0
	cmp	r7, #0
	beq	.L848
	.loc 1 1857 0 is_stmt 0 discriminator 1
	ldr	r1, .L902+16
	add	r2, sp, #56
	mov	r0, r6
	bl	fprintf
.LVL620:
	.loc 1 1850 0 is_stmt 1 discriminator 1
	mov	r0, r4
	bl	dehfeof
.LVL621:
	subs	r5, r0, #0
	beq	.L900
.L846:
	.loc 1 1905 0
	add	sp, sp, #1072
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL622:
.L851:
	.cfi_restore_state
	.loc 1 1860 0
	add	r0, sp, #24
	ldr	r1, .L902+20
	bl	strcasecmp
.LVL623:
	cmp	r0, #0
	bne	.L853
	.loc 1 1862 0
	cmp	r7, #0
	beq	.L854
	.loc 1 1862 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #16]
	mov	r0, r6
	ldr	r1, .L902+24
	bl	fprintf
.LVL624:
.L854:
	.loc 1 1863 0 is_stmt 1
	ldr	r3, [sp, #12]
	ldr	r2, .L902+28
	ldr	r1, [sp, #16]
	rsb	r3, r3, r3, asl #3
	strb	r1, [r2, r3, asl #2]
	b	.L848
.L853:
	.loc 1 1866 0
	add	r0, sp, #24
	ldr	r1, .L902+32
	bl	strcasecmp
.LVL625:
	cmp	r0, #0
	bne	.L855
	.loc 1 1868 0
	cmp	r7, #0
	beq	.L856
	.loc 1 1868 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #16]
	mov	r0, r6
	ldr	r1, .L902+36
	bl	fprintf
.LVL626:
.L856:
	.loc 1 1869 0 is_stmt 1
	ldr	r3, [sp, #12]
	ldr	r2, .L902+28
	rsb	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #4]
	b	.L848
.L855:
	.loc 1 1872 0
	add	r0, sp, #24
	ldr	r1, .L902+40
	bl	strcasecmp
.LVL627:
	cmp	r0, #0
	bne	.L857
	.loc 1 1874 0
	cmp	r7, #0
	beq	.L858
	.loc 1 1874 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #16]
	mov	r0, r6
	ldr	r1, .L902+44
	bl	fprintf
.LVL628:
.L858:
	.loc 1 1875 0 is_stmt 1
	ldr	r3, [sp, #12]
	ldr	r2, .L902+28
	rsb	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #8]
	b	.L848
.L857:
	.loc 1 1878 0
	add	r0, sp, #24
	ldr	r1, .L902+48
	bl	strcasecmp
.LVL629:
	cmp	r0, #0
	bne	.L859
	.loc 1 1880 0
	cmp	r7, #0
	beq	.L860
	.loc 1 1880 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #16]
	mov	r0, r6
	ldr	r1, .L902+52
	bl	fprintf
.LVL630:
.L860:
	.loc 1 1881 0 is_stmt 1
	ldr	r3, [sp, #12]
	ldr	r2, .L902+28
	rsb	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	strh	r1, [r3, #16]	@ movhi
	b	.L848
.L859:
	.loc 1 1884 0
	add	r0, sp, #24
	ldr	r1, .L902+56
	bl	strcasecmp
.LVL631:
	cmp	r0, #0
	beq	.L901
	.loc 1 1890 0
	add	r0, sp, #24
	ldr	r1, .L902+60
	bl	strcasecmp
.LVL632:
	cmp	r0, #0
	bne	.L862
	.loc 1 1892 0
	cmp	r7, #0
	beq	.L863
	.loc 1 1892 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #16]
	mov	r0, r6
	ldr	r1, .L902+64
	bl	fprintf
.LVL633:
.L863:
	.loc 1 1893 0 is_stmt 1
	ldr	r3, [sp, #12]
	ldr	r2, .L902+28
	rsb	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #20]
	b	.L848
.L901:
	.loc 1 1886 0
	cmp	r7, #0
	beq	.L848
	.loc 1 1886 0 is_stmt 0 discriminator 1
	mov	r1, #1
	mov	r2, #46
	mov	r3, r6
	ldr	r0, .L902+68
	bl	fwrite
.LVL634:
	b	.L848
.L862:
	.loc 1 1896 0 is_stmt 1
	add	r0, sp, #24
	ldr	r1, .L902+72
	bl	strcasecmp
.LVL635:
	cmp	r0, #0
	bne	.L864
	.loc 1 1898 0
	cmp	r7, #0
	beq	.L865
	.loc 1 1898 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #16]
	mov	r0, r6
	ldr	r1, .L902+76
	bl	fprintf
.LVL636:
.L865:
	.loc 1 1899 0 is_stmt 1
	ldr	r3, [sp, #12]
	ldr	r2, .L902+28
	rsb	r3, r3, r3, asl #3
	ldr	r1, [sp, #16]
	add	r3, r2, r3, asl #2
	str	r1, [r3, #24]
	b	.L848
.L864:
	.loc 1 1902 0
	cmp	r7, #0
	beq	.L848
	.loc 1 1902 0 is_stmt 0 discriminator 1
	mov	r0, r6
	ldr	r1, .L902+80
	add	r2, sp, #24
	bl	fprintf
.LVL637:
	b	.L848
.L903:
	.align	2
.L902:
	.word	.LC21
	.word	.LC131
	.word	1075
	.word	.LC132
	.word	.LC62
	.word	.LC133
	.word	.LC134
	.word	states
	.word	.LC135
	.word	.LC136
	.word	.LC137
	.word	.LC138
	.word	.LC139
	.word	.LC140
	.word	.LC127
	.word	.LC142
	.word	.LC143
	.word	.LC141
	.word	.LC144
	.word	.LC145
	.word	.LC146
	.cfi_endproc
.LFE14:
	.size	deh_procFrame, .-deh_procFrame
	.align	2
	.type	deh_procThing, %function
deh_procThing:
.LFB13:
	.loc 1 1707 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1096
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL638:
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
	mov	r7, r1
	sub	sp, sp, #1104
	.cfi_def_cfa_offset 1140
	sub	sp, sp, #12
	.cfi_def_cfa_offset 1152
	.loc 1 1707 0
	str	r0, [sp, #36]
	.loc 1 1715 0
	mov	r1, r2
.LVL639:
	add	r0, sp, #88
.LVL640:
	mov	r2, #1024
.LVL641:
	bl	strncpy
.LVL642:
	.loc 1 1716 0
	cmp	r7, #0
	beq	.L905
	.loc 1 1716 0 is_stmt 0 discriminator 1
	ldr	r1, .L985
	add	r2, sp, #88
	mov	r0, r7
	.loc 1 1719 0 is_stmt 1 discriminator 1
	add	r10, sp, #56
	.loc 1 1716 0 discriminator 1
	bl	fprintf
.LVL643:
	.loc 1 1719 0 discriminator 1
	mov	r2, r10
	ldr	r1, .L985+4
	add	r3, sp, #40
	add	r0, sp, #88
	bl	sscanf
.LVL644:
	.loc 1 1720 0 discriminator 1
	ldr	r1, .L985+8
	.loc 1 1719 0 discriminator 1
	mov	r2, r0
.LVL645:
	.loc 1 1720 0 discriminator 1
	ldr	r3, [sp, #40]
	mov	r0, r7
.LVL646:
	bl	fprintf
.LVL647:
.L958:
	.loc 1 1724 0
	ldr	r3, [sp, #40]
	sub	r3, r3, #1
	str	r3, [sp, #40]
.L906:
	.loc 1 1732 0
	ldr	r0, [sp, #36]
	bl	dehfeof
.LVL648:
	cmp	r0, #0
	bne	.L904
.L980:
	.loc 1 1732 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #88]	@ zero_extendqisi2
	tst	r3, #223
	beq	.L904
.LBB126:
	.loc 1 1738 0 is_stmt 1
	add	r0, sp, #88
	mov	r1, #1024
	ldr	r2, [sp, #36]
	bl	dehfgets
.LVL649:
	cmp	r0, #0
	beq	.L904
	.loc 1 1739 0
	add	r0, sp, #88
	bl	lfstrip
.LVL650:
	.loc 1 1742 0
	ldrb	r3, [sp, #88]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L904
	.loc 1 1746 0
	sub	r3, r10, #12
	str	r7, [sp]
	add	r0, sp, #88
	mov	r1, r10
	sub	r2, r10, #8
	bl	deh_GetData
.LVL651:
	.loc 1 1747 0
	subs	r3, r0, #0
	str	r3, [sp, #32]
	bne	.L909
	.loc 1 1750 0
	cmp	r7, #0
	beq	.L906
	.loc 1 1750 0 is_stmt 0 discriminator 1
	ldr	r1, .L985+12
	add	r2, sp, #88
	mov	r0, r7
.LVL652:
	bl	fprintf
.LVL653:
.LBE126:
	.loc 1 1732 0 is_stmt 1 discriminator 1
	ldr	r0, [sp, #36]
	bl	dehfeof
.LVL654:
	cmp	r0, #0
	beq	.L980
.LVL655:
.L904:
	.loc 1 1825 0
	add	sp, sp, #1104
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL656:
.L909:
	.cfi_restore_state
.LBB144:
	.loc 1 1747 0
	mov	r9, #1
	ldr	r3, .L985+16
	str	r3, [sp, #24]
	add	r8, r3, #356
.LVL657:
.L912:
	.loc 1 1754 0
	ldr	r3, [sp, #24]
	mov	r0, r10
	ldr	r1, [r3, #4]!
	str	r3, [sp, #24]
	bl	strcasecmp
.LVL658:
	sub	r3, r9, #1
	cmp	r0, #0
	str	r3, [sp, #28]
.LVL659:
	bne	.L914
	.loc 1 1756 0
	mov	r0, r10
	ldr	r1, .L985+20
	bl	strcasecmp
.LVL660:
	cmp	r0, #0
	bne	.L981
	.loc 1 1773 0
	ldr	r3, [sp, #32]
	cmp	r3, #1
	beq	.L982
	.loc 1 1779 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r10, #-8]
	str	r0, [sp, #20]
.LBB127:
	.loc 1 1792 0
	ldr	r5, .L985+24
	ldr	r0, [sp, #44]
.L947:
.LBE127:
	.loc 1 1785 0 discriminator 1
	ldr	r1, .L985+28
	bl	strtok
.LVL661:
	cmp	r0, #0
	mov	r6, r0
	str	r0, [sp, #44]
	beq	.L983
	mov	r4, #0
.L949:
.LVL662:
.LBB128:
	.loc 1 1788 0
	ldr	r1, [r8, r4, asl #4]
	mov	r0, r6
	bl	strcasecmp
.LVL663:
	cmp	r0, #0
	mov	r3, r4, asl #4
	.loc 1 1787 0
	add	r4, r4, #1
.LVL664:
	.loc 1 1788 0
	beq	.L948
	.loc 1 1787 0 discriminator 1
	cmp	r4, #37
	bne	.L949
	.loc 1 1799 0
	cmp	r7, #0
	beq	.L953
	.loc 1 1800 0
	mov	r2, r6
	mov	r0, r7
	ldr	r1, .L985+32
	bl	fprintf
.LVL665:
.L953:
.LBE128:
	.loc 1 1785 0
	ldr	r3, [sp, #20]
	mov	r0, #0
	str	r3, [sp, #44]
	b	.L947
.LVL666:
.L948:
.LBB129:
	.loc 1 1789 0
	cmp	r7, #0
	beq	.L984
	.loc 1 1792 0
	add	r2, r5, r3
	ldr	r4, [r2, #4]
.LVL667:
	ldr	fp, [r5, r3]
	.loc 1 1790 0
	ldr	r1, .L985+36
	str	r6, [sp]
	mov	r2, r4
	mov	r3, fp
	mov	r0, r7
	bl	fprintf
.LVL668:
	mov	r0, fp
	mov	r1, r4
.L952:
	.loc 1 1796 0
	ldrd	r2, [r10, #-8]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r10, #-8]
	b	.L953
.L983:
.LBE129:
	.loc 1 1805 0
	cmp	r7, #0
	beq	.L954
	.loc 1 1806 0
	mov	r0, r7
	ldr	r1, .L985+40
	ldr	r2, [r10, #-4]
	ldr	r3, [r10, #-8]
	bl	fprintf
.LVL669:
.L954:
	.loc 1 1812 0
	ldrd	r2, [r10, #-8]
	mov	r0, #104
	ldr	ip, .L985+44
	ldr	r1, [sp, #40]
	mla	r0, r0, r1, ip
	strd	r2, [r0, #88]
.L916:
	.loc 1 1815 0
	cmp	r7, #0
	beq	.L914
	ldr	r3, [r10, #-8]
	ldr	r2, [r10, #-4]
.L942:
	.loc 1 1816 0
	str	r1, [sp, #4]
	ldr	r1, [sp, #28]
	str	r10, [sp]
	str	r1, [sp, #8]
	mov	r0, r7
	ldr	r1, .L985+48
	bl	fprintf
.LVL670:
.L914:
	.loc 1 1753 0 discriminator 2
	cmp	r9, #24
	beq	.L906
.LVL671:
.L956:
	add	r9, r9, #1
	b	.L912
.LVL672:
.L984:
	ldrd	r0, [r5, r3]
	b	.L952
.LVL673:
.L981:
	.loc 1 1767 0
	ldr	r1, [sp, #40]
	ldr	r3, [r10, #-8]
.LBB130:
.LBB131:
	.loc 1 1663 0
	cmp	r1, #151
.LBE131:
.LBE130:
	.loc 1 1767 0
	ldr	r2, [r10, #-4]
.LVL674:
.LBB136:
.LBB132:
	.loc 1 1663 0
	bhi	.L916
.LVL675:
	.loc 1 1665 0
	ldr	r0, [sp, #28]
	cmp	r0, #23
	ldrls	pc, [pc, r0, asl #2]
	b	.L916
.L918:
	.word	.L917
	.word	.L919
	.word	.L920
	.word	.L921
	.word	.L922
	.word	.L923
	.word	.L924
	.word	.L925
	.word	.L926
	.word	.L927
	.word	.L928
	.word	.L929
	.word	.L930
	.word	.L931
	.word	.L932
	.word	.L933
	.word	.L934
	.word	.L935
	.word	.L936
	.word	.L937
	.word	.L938
	.word	.L939
	.word	.L916
	.word	.L940
.LVL676:
.L982:
.LBE132:
.LBE136:
.LBB137:
.LBB138:
	.loc 1 1650 0
	mov	r4, #0
.LBE138:
.LBE137:
	.loc 1 1774 0
	ldrd	r2, [r10, #-8]
.LVL677:
.LBB140:
.LBB139:
	.loc 1 1650 0
	mov	r5, #0
	ldr	ip, .L985+52
.LVL678:
.L946:
	.loc 1 1652 0
	mov	r1, #0
	and	r0, r2, #1
	orrs	r1, r0, r1
	ldrned	r0, [ip]
	orrne	r4, r4, r0
.LVL679:
	orrne	r5, r5, r1
.LVL680:
.L945:
	.loc 1 1651 0
	ldr	r1, .L985+56
	add	ip, ip, #8
	.loc 1 1653 0
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
.LVL681:
	.loc 1 1651 0
	cmp	ip, r1
	bne	.L946
.LBE139:
.LBE140:
	.loc 1 1775 0
	mov	r3, #104
	ldr	r2, .L985+44
.LVL682:
	ldr	r1, [sp, #40]
	.loc 1 1774 0
	strd	r4, [r10, #-8]
.LVL683:
	.loc 1 1775 0
	mla	r3, r3, r1, r2
	strd	r4, [r3, #88]
	b	.L916
.LVL684:
.L939:
.LBB141:
.LBB133:
	.loc 1 1687 0
	mov	r0, #104
.LVL685:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #88]
	str	r2, [r0, #92]
.L941:
.LBE133:
.LBE141:
	.loc 1 1815 0
	cmp	r7, #0
	bne	.L942
	b	.L956
.LVL686:
.L938:
.LBB142:
.LBB134:
	.loc 1 1686 0
	mov	r0, #104
.LVL687:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #80]
	b	.L941
.LVL688:
.L937:
	.loc 1 1685 0
	mov	r0, #104
.LVL689:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #76]
	b	.L941
.LVL690:
.L936:
	.loc 1 1684 0
	mov	r0, #104
.LVL691:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #72]
	b	.L941
.LVL692:
.L935:
	.loc 1 1683 0
	mov	r0, #104
.LVL693:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #68]
	b	.L941
.LVL694:
.L934:
	.loc 1 1682 0
	mov	r0, #104
.LVL695:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #64]
	b	.L941
.LVL696:
.L933:
	.loc 1 1681 0
	mov	r0, #104
.LVL697:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #60]
	b	.L941
.LVL698:
.L932:
	.loc 1 1680 0
	mov	r0, #104
.LVL699:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #56]
	b	.L941
.LVL700:
.L931:
	.loc 1 1679 0
	mov	r0, #104
.LVL701:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #52]
	b	.L941
.LVL702:
.L930:
	.loc 1 1678 0
	mov	r0, #104
.LVL703:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #48]
	b	.L941
.LVL704:
.L929:
	.loc 1 1677 0
	mov	r0, #104
.LVL705:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #44]
	b	.L941
.LVL706:
.L928:
	.loc 1 1676 0
	mov	r0, #104
.LVL707:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #40]
	b	.L941
.LVL708:
.L927:
	.loc 1 1675 0
	mov	r0, #104
.LVL709:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #36]
	b	.L941
.LVL710:
.L926:
	.loc 1 1674 0
	mov	r0, #104
.LVL711:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #32]
	b	.L941
.LVL712:
.L925:
	.loc 1 1673 0
	mov	r0, #104
.LVL713:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #28]
	b	.L941
.LVL714:
.L924:
	.loc 1 1672 0
	mov	r0, #104
.LVL715:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #24]
	b	.L941
.LVL716:
.L923:
	.loc 1 1671 0
	mov	r0, #104
.LVL717:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #20]
	b	.L941
.LVL718:
.L922:
	.loc 1 1670 0
	mov	r0, #104
.LVL719:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #16]
	b	.L941
.LVL720:
.L921:
	.loc 1 1669 0
	mov	r0, #104
.LVL721:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #12]
	b	.L941
.LVL722:
.L920:
	.loc 1 1668 0
	mov	r0, #104
.LVL723:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #8]
	b	.L941
.LVL724:
.L919:
	.loc 1 1667 0
	mov	r0, #104
.LVL725:
	ldr	ip, .L985+44
	mla	r0, r0, r1, ip
	str	r3, [r0, #4]
	b	.L941
.LVL726:
.L917:
	.loc 1 1666 0
	mov	r0, #104
.LVL727:
	mul	r0, r0, r1
	ldr	ip, .L985+44
	str	r3, [ip, r0]
	b	.L941
.LVL728:
.L940:
	.loc 1 1689 0
	mov	r0, #104
.LVL729:
	ldr	ip, .L985+44
.LBE134:
.LBE142:
	.loc 1 1815 0
	cmp	r7, #0
.LBB143:
.LBB135:
	.loc 1 1689 0
	mla	r0, r0, r1, ip
	str	r3, [r0, #96]
.LBE135:
.LBE143:
	.loc 1 1815 0
	bne	.L942
	b	.L906
.LVL730:
.L905:
.LBE144:
	.loc 1 1719 0
	add	r10, sp, #56
	mov	r2, r10
	add	r0, sp, #88
	ldr	r1, .L985+4
	add	r3, sp, #40
	bl	sscanf
.LVL731:
	b	.L958
.L986:
	.align	2
.L985:
	.word	.LC147
	.word	.LC21
	.word	.LC148
	.word	.LC62
	.word	.LANCHOR3+820
	.word	.LC149
	.word	.LANCHOR3+1184
	.word	.LC152
	.word	.LC151
	.word	.LC150
	.word	.LC153
	.word	mobjinfo
	.word	.LC154
	.word	.LANCHOR3+920
	.word	.LANCHOR3+1176
	.cfi_endproc
.LFE13:
	.size	deh_procThing, .-deh_procThing
	.comm	deh_soundnames,460,4
	.comm	deh_musicnames,276,4
	.comm	deh_spritenames,564,4
	.global	mapnamest
	.global	mapnamesp
	.global	mapnames2
	.global	mapnames
	.global	deh_newlevel
	.global	savegamename
	.global	startup5
	.global	startup4
	.global	startup3
	.global	startup2
	.global	startup1
	.global	bgcastcall
	.global	bgflat31
	.global	bgflat15
	.global	bgflat30
	.global	bgflat20
	.global	bgflat11
	.global	bgflat06
	.global	bgflatE4
	.global	bgflatE3
	.global	bgflatE2
	.global	bgflatE1
	.global	s_CC_HERO
	.global	s_CC_CYBER
	.global	s_CC_SPIDER
	.global	s_CC_ARCH
	.global	s_CC_MANCU
	.global	s_CC_REVEN
	.global	s_CC_PAIN
	.global	s_CC_ARACH
	.global	s_CC_BARON
	.global	s_CC_HELL
	.global	s_CC_CACO
	.global	s_CC_LOST
	.global	s_CC_DEMON
	.global	s_CC_IMP
	.global	s_CC_HEAVY
	.global	s_CC_SHOTGUN
	.global	s_CC_ZOMBIE
	.global	s_T6TEXT
	.global	s_T5TEXT
	.global	s_T4TEXT
	.global	s_T3TEXT
	.global	s_T2TEXT
	.global	s_T1TEXT
	.global	s_P6TEXT
	.global	s_P5TEXT
	.global	s_P4TEXT
	.global	s_P3TEXT
	.global	s_P2TEXT
	.global	s_P1TEXT
	.global	s_C6TEXT
	.global	s_C5TEXT
	.global	s_C4TEXT
	.global	s_C3TEXT
	.global	s_C2TEXT
	.global	s_C1TEXT
	.global	s_E4TEXT
	.global	s_E3TEXT
	.global	s_E2TEXT
	.global	s_E1TEXT
	.global	s_STSTR_COMPOFF
	.global	s_STSTR_COMPON
	.global	s_STSTR_CLEV
	.global	s_STSTR_CHOPPERS
	.global	s_STSTR_BEHOLDX
	.global	s_STSTR_BEHOLD
	.global	s_STSTR_NCOFF
	.global	s_STSTR_NCON
	.global	s_STSTR_FAADDED
	.global	s_STSTR_KFAADDED
	.global	s_STSTR_DQDOFF
	.global	s_STSTR_DQDON
	.global	s_STSTR_NOMUS
	.global	s_STSTR_MUS
	.global	s_AMSTR_OVERLAYOFF
	.global	s_AMSTR_OVERLAYON
	.global	s_AMSTR_ROTATEOFF
	.global	s_AMSTR_ROTATEON
	.global	s_AMSTR_MARKSCLEARED
	.global	s_AMSTR_MARKEDSPOT
	.global	s_AMSTR_GRIDOFF
	.global	s_AMSTR_GRIDON
	.global	s_AMSTR_FOLLOWOFF
	.global	s_AMSTR_FOLLOWON
	.global	s_HUSTR_PLRRED
	.global	s_HUSTR_PLRBROWN
	.global	s_HUSTR_PLRINDIGO
	.global	s_HUSTR_PLRGREEN
	.global	s_HUSTR_MESSAGESENT
	.global	s_HUSTR_TALKTOSELF5
	.global	s_HUSTR_TALKTOSELF4
	.global	s_HUSTR_TALKTOSELF3
	.global	s_HUSTR_TALKTOSELF2
	.global	s_HUSTR_TALKTOSELF1
	.global	s_HUSTR_CHATMACRO0
	.global	s_HUSTR_CHATMACRO9
	.global	s_HUSTR_CHATMACRO8
	.global	s_HUSTR_CHATMACRO7
	.global	s_HUSTR_CHATMACRO6
	.global	s_HUSTR_CHATMACRO5
	.global	s_HUSTR_CHATMACRO4
	.global	s_HUSTR_CHATMACRO3
	.global	s_HUSTR_CHATMACRO2
	.global	s_HUSTR_CHATMACRO1
	.global	s_THUSTR_32
	.global	s_THUSTR_31
	.global	s_THUSTR_30
	.global	s_THUSTR_29
	.global	s_THUSTR_28
	.global	s_THUSTR_27
	.global	s_THUSTR_26
	.global	s_THUSTR_25
	.global	s_THUSTR_24
	.global	s_THUSTR_23
	.global	s_THUSTR_22
	.global	s_THUSTR_21
	.global	s_THUSTR_20
	.global	s_THUSTR_19
	.global	s_THUSTR_18
	.global	s_THUSTR_17
	.global	s_THUSTR_16
	.global	s_THUSTR_15
	.global	s_THUSTR_14
	.global	s_THUSTR_13
	.global	s_THUSTR_12
	.global	s_THUSTR_11
	.global	s_THUSTR_10
	.global	s_THUSTR_9
	.global	s_THUSTR_8
	.global	s_THUSTR_7
	.global	s_THUSTR_6
	.global	s_THUSTR_5
	.global	s_THUSTR_4
	.global	s_THUSTR_3
	.global	s_THUSTR_2
	.global	s_THUSTR_1
	.global	s_PHUSTR_32
	.global	s_PHUSTR_31
	.global	s_PHUSTR_30
	.global	s_PHUSTR_29
	.global	s_PHUSTR_28
	.global	s_PHUSTR_27
	.global	s_PHUSTR_26
	.global	s_PHUSTR_25
	.global	s_PHUSTR_24
	.global	s_PHUSTR_23
	.global	s_PHUSTR_22
	.global	s_PHUSTR_21
	.global	s_PHUSTR_20
	.global	s_PHUSTR_19
	.global	s_PHUSTR_18
	.global	s_PHUSTR_17
	.global	s_PHUSTR_16
	.global	s_PHUSTR_15
	.global	s_PHUSTR_14
	.global	s_PHUSTR_13
	.global	s_PHUSTR_12
	.global	s_PHUSTR_11
	.global	s_PHUSTR_10
	.global	s_PHUSTR_9
	.global	s_PHUSTR_8
	.global	s_PHUSTR_7
	.global	s_PHUSTR_6
	.global	s_PHUSTR_5
	.global	s_PHUSTR_4
	.global	s_PHUSTR_3
	.global	s_PHUSTR_2
	.global	s_PHUSTR_1
	.global	s_HUSTR_32
	.global	s_HUSTR_31
	.global	s_HUSTR_30
	.global	s_HUSTR_29
	.global	s_HUSTR_28
	.global	s_HUSTR_27
	.global	s_HUSTR_26
	.global	s_HUSTR_25
	.global	s_HUSTR_24
	.global	s_HUSTR_23
	.global	s_HUSTR_22
	.global	s_HUSTR_21
	.global	s_HUSTR_20
	.global	s_HUSTR_19
	.global	s_HUSTR_18
	.global	s_HUSTR_17
	.global	s_HUSTR_16
	.global	s_HUSTR_15
	.global	s_HUSTR_14
	.global	s_HUSTR_13
	.global	s_HUSTR_12
	.global	s_HUSTR_11
	.global	s_HUSTR_10
	.global	s_HUSTR_9
	.global	s_HUSTR_8
	.global	s_HUSTR_7
	.global	s_HUSTR_6
	.global	s_HUSTR_5
	.global	s_HUSTR_4
	.global	s_HUSTR_3
	.global	s_HUSTR_2
	.global	s_HUSTR_1
	.global	s_HUSTR_E4M9
	.global	s_HUSTR_E4M8
	.global	s_HUSTR_E4M7
	.global	s_HUSTR_E4M6
	.global	s_HUSTR_E4M5
	.global	s_HUSTR_E4M4
	.global	s_HUSTR_E4M3
	.global	s_HUSTR_E4M2
	.global	s_HUSTR_E4M1
	.global	s_HUSTR_E3M9
	.global	s_HUSTR_E3M8
	.global	s_HUSTR_E3M7
	.global	s_HUSTR_E3M6
	.global	s_HUSTR_E3M5
	.global	s_HUSTR_E3M4
	.global	s_HUSTR_E3M3
	.global	s_HUSTR_E3M2
	.global	s_HUSTR_E3M1
	.global	s_HUSTR_E2M9
	.global	s_HUSTR_E2M8
	.global	s_HUSTR_E2M7
	.global	s_HUSTR_E2M6
	.global	s_HUSTR_E2M5
	.global	s_HUSTR_E2M4
	.global	s_HUSTR_E2M3
	.global	s_HUSTR_E2M2
	.global	s_HUSTR_E2M1
	.global	s_HUSTR_E1M9
	.global	s_HUSTR_E1M8
	.global	s_HUSTR_E1M7
	.global	s_HUSTR_E1M6
	.global	s_HUSTR_E1M5
	.global	s_HUSTR_E1M4
	.global	s_HUSTR_E1M3
	.global	s_HUSTR_E1M2
	.global	s_HUSTR_E1M1
	.global	s_HUSTR_MSGU
	.global	s_GGSAVED
	.global	s_PD_ALL6
	.global	s_PD_ALL3
	.global	s_PD_ANY
	.global	s_PD_YELLOWS
	.global	s_PD_REDS
	.global	s_PD_BLUES
	.global	s_PD_YELLOWC
	.global	s_PD_REDC
	.global	s_PD_BLUEC
	.global	s_PD_YELLOWK
	.global	s_PD_REDK
	.global	s_PD_BLUEK
	.global	s_PD_YELLOWO
	.global	s_PD_REDO
	.global	s_PD_BLUEO
	.global	s_GOTSHOTGUN2
	.global	s_GOTSHOTGUN
	.global	s_GOTPLASMA
	.global	s_GOTLAUNCHER
	.global	s_GOTCHAINSAW
	.global	s_GOTCHAINGUN
	.global	s_GOTBFG9000
	.global	s_GOTBACKPACK
	.global	s_GOTSHELLBOX
	.global	s_GOTSHELLS
	.global	s_GOTCELLBOX
	.global	s_GOTCELL
	.global	s_GOTROCKBOX
	.global	s_GOTROCKET
	.global	s_GOTCLIPBOX
	.global	s_GOTCLIP
	.global	s_GOTMSPHERE
	.global	s_GOTVISOR
	.global	s_GOTMAP
	.global	s_GOTSUIT
	.global	s_GOTINVIS
	.global	s_GOTBERSERK
	.global	s_GOTINVUL
	.global	s_GOTREDSKULL
	.global	s_GOTYELWSKUL
	.global	s_GOTBLUESKUL
	.global	s_GOTREDCARD
	.global	s_GOTYELWCARD
	.global	s_GOTBLUECARD
	.global	s_GOTSUPER
	.global	s_GOTMEDIKIT
	.global	s_GOTMEDINEED
	.global	s_GOTSTIM
	.global	s_GOTARMBONUS
	.global	s_GOTHTHBONUS
	.global	s_GOTMEGA
	.global	s_GOTARMOR
	.global	s_EMPTYSTRING
	.global	s_GAMMALVL4
	.global	s_GAMMALVL3
	.global	s_GAMMALVL2
	.global	s_GAMMALVL1
	.global	s_GAMMALVL0
	.global	s_DETAILLO
	.global	s_DETAILHI
	.global	s_DOSY
	.global	s_ENDGAME
	.global	s_NETEND
	.global	s_SAVING
	.global	s_LOADING
	.global	s_MSGON
	.global	s_MSGOFF
	.global	s_SWSTRING
	.global	s_NIGHTMARE
	.global	s_RESTARTLEVEL
	.global	s_NEWGAME
	.global	s_QLPROMPT
	.global	s_QSPROMPT
	.global	s_SAVEDEAD
	.global	s_QSAVESPOT
	.global	s_QUITMSG
	.global	s_PRESSYN
	.global	s_PRESSKEY
	.global	s_D_CDROM
	.global	s_D_DEVSTR
	.global	deh_pars
	.global	HelperThing
	.section	.rodata
	.align	3
	.set	.LANCHOR3,. + 0
	.type	deh_blocks, %object
	.size	deh_blocks, 144
deh_blocks:
	.word	.LC301
	.word	deh_procThing
	.word	.LC302
	.word	deh_procFrame
	.word	.LC303
	.word	deh_procPointer
	.word	.LC304
	.word	deh_procSounds
	.word	.LC305
	.word	deh_procAmmo
	.word	.LC306
	.word	deh_procWeapon
	.word	.LC307
	.word	deh_procSprite
	.word	.LC308
	.word	deh_procCheat
	.word	.LC309
	.word	deh_procMisc
	.word	.LC310
	.word	deh_procText
	.word	.LC311
	.word	deh_procStrings
	.word	.LC312
	.word	deh_procPars
	.word	.LC313
	.word	deh_procBexCodePointers
	.word	.LC314
	.word	deh_procHelperThing
	.word	.LC315
	.word	deh_procBexSprites
	.word	.LC316
	.word	deh_procBexSounds
	.word	.LC317
	.word	deh_procBexMusic
	.word	.LC8
	.word	deh_procError
	.type	deh_bexptrs, %object
	.size	deh_bexptrs, 680
deh_bexptrs:
	.word	A_Light0
	.word	.LC155
	.word	A_WeaponReady
	.word	.LC156
	.word	A_Lower
	.word	.LC157
	.word	A_Raise
	.word	.LC158
	.word	A_Punch
	.word	.LC159
	.word	A_ReFire
	.word	.LC160
	.word	A_FirePistol
	.word	.LC161
	.word	A_Light1
	.word	.LC162
	.word	A_FireShotgun
	.word	.LC163
	.word	A_Light2
	.word	.LC164
	.word	A_FireShotgun2
	.word	.LC165
	.word	A_CheckReload
	.word	.LC166
	.word	A_OpenShotgun2
	.word	.LC167
	.word	A_LoadShotgun2
	.word	.LC168
	.word	A_CloseShotgun2
	.word	.LC169
	.word	A_FireCGun
	.word	.LC170
	.word	A_GunFlash
	.word	.LC171
	.word	A_FireMissile
	.word	.LC172
	.word	A_Saw
	.word	.LC173
	.word	A_FirePlasma
	.word	.LC174
	.word	A_BFGsound
	.word	.LC175
	.word	A_FireBFG
	.word	.LC176
	.word	A_BFGSpray
	.word	.LC177
	.word	A_Explode
	.word	.LC178
	.word	A_Pain
	.word	.LC179
	.word	A_PlayerScream
	.word	.LC180
	.word	A_Fall
	.word	.LC181
	.word	A_XScream
	.word	.LC182
	.word	A_Look
	.word	.LC183
	.word	A_Chase
	.word	.LC184
	.word	A_FaceTarget
	.word	.LC185
	.word	A_PosAttack
	.word	.LC186
	.word	A_Scream
	.word	.LC187
	.word	A_SPosAttack
	.word	.LC188
	.word	A_VileChase
	.word	.LC189
	.word	A_VileStart
	.word	.LC190
	.word	A_VileTarget
	.word	.LC191
	.word	A_VileAttack
	.word	.LC192
	.word	A_StartFire
	.word	.LC193
	.word	A_Fire
	.word	.LC194
	.word	A_FireCrackle
	.word	.LC195
	.word	A_Tracer
	.word	.LC196
	.word	A_SkelWhoosh
	.word	.LC197
	.word	A_SkelFist
	.word	.LC198
	.word	A_SkelMissile
	.word	.LC199
	.word	A_FatRaise
	.word	.LC200
	.word	A_FatAttack1
	.word	.LC201
	.word	A_FatAttack2
	.word	.LC202
	.word	A_FatAttack3
	.word	.LC203
	.word	A_BossDeath
	.word	.LC204
	.word	A_CPosAttack
	.word	.LC205
	.word	A_CPosRefire
	.word	.LC206
	.word	A_TroopAttack
	.word	.LC207
	.word	A_SargAttack
	.word	.LC208
	.word	A_HeadAttack
	.word	.LC209
	.word	A_BruisAttack
	.word	.LC210
	.word	A_SkullAttack
	.word	.LC211
	.word	A_Metal
	.word	.LC212
	.word	A_SpidRefire
	.word	.LC213
	.word	A_BabyMetal
	.word	.LC214
	.word	A_BspiAttack
	.word	.LC215
	.word	A_Hoof
	.word	.LC216
	.word	A_CyberAttack
	.word	.LC217
	.word	A_PainAttack
	.word	.LC218
	.word	A_PainDie
	.word	.LC219
	.word	A_KeenDie
	.word	.LC220
	.word	A_BrainPain
	.word	.LC221
	.word	A_BrainScream
	.word	.LC222
	.word	A_BrainDie
	.word	.LC223
	.word	A_BrainAwake
	.word	.LC224
	.word	A_BrainSpit
	.word	.LC225
	.word	A_SpawnSound
	.word	.LC226
	.word	A_SpawnFly
	.word	.LC227
	.word	A_BrainExplode
	.word	.LC228
	.word	A_Detonate
	.word	.LC229
	.word	A_Mushroom
	.word	.LC230
	.word	A_Die
	.word	.LC231
	.word	A_Spawn
	.word	.LC232
	.word	A_Turn
	.word	.LC233
	.word	A_Face
	.word	.LC234
	.word	A_Scratch
	.word	.LC235
	.word	A_PlaySound
	.word	.LC236
	.word	A_RandomJump
	.word	.LC237
	.word	A_LineEffect
	.word	.LC238
	.word	0
	.word	.LC239
	.type	deh_mobjinfo, %object
	.size	deh_mobjinfo, 96
deh_mobjinfo:
	.word	.LC277
	.word	.LC278
	.word	.LC279
	.word	.LC280
	.word	.LC281
	.word	.LC282
	.word	.LC283
	.word	.LC284
	.word	.LC285
	.word	.LC286
	.word	.LC287
	.word	.LC288
	.word	.LC289
	.word	.LC290
	.word	.LC291
	.word	.LC292
	.word	.LC293
	.word	.LC294
	.word	.LC295
	.word	.LC296
	.word	.LC297
	.word	.LC298
	.word	.LC299
	.word	.LC300
	.type	bitMap.9181, %object
	.size	bitMap.9181, 256
bitMap.9181:
	.word	1
	.word	0
	.word	2
	.word	0
	.word	4
	.word	0
	.word	8
	.word	0
	.word	16
	.word	0
	.word	32
	.word	0
	.word	64
	.word	0
	.word	128
	.word	0
	.word	256
	.word	0
	.word	512
	.word	0
	.word	1024
	.word	0
	.word	2048
	.word	0
	.word	4096
	.word	0
	.word	8192
	.word	0
	.word	16384
	.word	0
	.word	32768
	.word	0
	.word	65536
	.word	0
	.word	131072
	.word	0
	.word	262144
	.word	0
	.word	524288
	.word	0
	.word	1048576
	.word	0
	.word	2097152
	.word	0
	.word	4194304
	.word	0
	.word	8388608
	.word	0
	.word	16777216
	.word	0
	.word	33554432
	.word	0
	.word	67108864
	.word	0
	.word	134217728
	.word	0
	.word	0
	.word	1
	.word	0
	.word	2
	.word	0
	.word	4
	.word	1073741824
	.word	0
	.type	deh_mobjflags, %object
	.size	deh_mobjflags, 592
deh_mobjflags:
	.word	.LC240
	.space	4
	.word	1
	.word	0
	.word	.LC241
	.space	4
	.word	2
	.word	0
	.word	.LC242
	.space	4
	.word	4
	.word	0
	.word	.LC243
	.space	4
	.word	8
	.word	0
	.word	.LC244
	.space	4
	.word	16
	.word	0
	.word	.LC245
	.space	4
	.word	32
	.word	0
	.word	.LC246
	.space	4
	.word	64
	.word	0
	.word	.LC247
	.space	4
	.word	128
	.word	0
	.word	.LC248
	.space	4
	.word	256
	.word	0
	.word	.LC249
	.space	4
	.word	512
	.word	0
	.word	.LC250
	.space	4
	.word	1024
	.word	0
	.word	.LC251
	.space	4
	.word	2048
	.word	0
	.word	.LC252
	.space	4
	.word	4096
	.word	0
	.word	.LC253
	.space	4
	.word	8192
	.word	0
	.word	.LC254
	.space	4
	.word	16384
	.word	0
	.word	.LC255
	.space	4
	.word	32768
	.word	0
	.word	.LC256
	.space	4
	.word	65536
	.word	0
	.word	.LC257
	.space	4
	.word	131072
	.word	0
	.word	.LC258
	.space	4
	.word	262144
	.word	0
	.word	.LC259
	.space	4
	.word	524288
	.word	0
	.word	.LC260
	.space	4
	.word	1048576
	.word	0
	.word	.LC261
	.space	4
	.word	2097152
	.word	0
	.word	.LC262
	.space	4
	.word	4194304
	.word	0
	.word	.LC263
	.space	4
	.word	8388608
	.word	0
	.word	.LC264
	.space	4
	.word	16777216
	.word	0
	.word	.LC265
	.space	4
	.word	33554432
	.word	0
	.word	.LC266
	.space	4
	.word	67108864
	.word	0
	.word	.LC267
	.space	4
	.word	67108864
	.word	0
	.word	.LC268
	.space	4
	.word	134217728
	.word	0
	.word	.LC269
	.space	4
	.word	134217728
	.word	0
	.word	.LC270
	.space	4
	.word	268435456
	.word	0
	.word	.LC271
	.space	4
	.word	536870912
	.word	0
	.word	.LC272
	.space	4
	.word	1073741824
	.word	0
	.word	.LC273
	.space	4
	.word	1073741824
	.word	0
	.word	.LC274
	.space	4
	.word	0
	.word	1
	.word	.LC275
	.space	4
	.word	0
	.word	2
	.word	.LC276
	.space	4
	.word	0
	.word	4
	.type	mapnamest, %object
	.size	mapnamest, 128
mapnamest:
	.word	s_THUSTR_1
	.word	s_THUSTR_2
	.word	s_THUSTR_3
	.word	s_THUSTR_4
	.word	s_THUSTR_5
	.word	s_THUSTR_6
	.word	s_THUSTR_7
	.word	s_THUSTR_8
	.word	s_THUSTR_9
	.word	s_THUSTR_10
	.word	s_THUSTR_11
	.word	s_THUSTR_12
	.word	s_THUSTR_13
	.word	s_THUSTR_14
	.word	s_THUSTR_15
	.word	s_THUSTR_16
	.word	s_THUSTR_17
	.word	s_THUSTR_18
	.word	s_THUSTR_19
	.word	s_THUSTR_20
	.word	s_THUSTR_21
	.word	s_THUSTR_22
	.word	s_THUSTR_23
	.word	s_THUSTR_24
	.word	s_THUSTR_25
	.word	s_THUSTR_26
	.word	s_THUSTR_27
	.word	s_THUSTR_28
	.word	s_THUSTR_29
	.word	s_THUSTR_30
	.word	s_THUSTR_31
	.word	s_THUSTR_32
	.type	mapnamesp, %object
	.size	mapnamesp, 128
mapnamesp:
	.word	s_PHUSTR_1
	.word	s_PHUSTR_2
	.word	s_PHUSTR_3
	.word	s_PHUSTR_4
	.word	s_PHUSTR_5
	.word	s_PHUSTR_6
	.word	s_PHUSTR_7
	.word	s_PHUSTR_8
	.word	s_PHUSTR_9
	.word	s_PHUSTR_10
	.word	s_PHUSTR_11
	.word	s_PHUSTR_12
	.word	s_PHUSTR_13
	.word	s_PHUSTR_14
	.word	s_PHUSTR_15
	.word	s_PHUSTR_16
	.word	s_PHUSTR_17
	.word	s_PHUSTR_18
	.word	s_PHUSTR_19
	.word	s_PHUSTR_20
	.word	s_PHUSTR_21
	.word	s_PHUSTR_22
	.word	s_PHUSTR_23
	.word	s_PHUSTR_24
	.word	s_PHUSTR_25
	.word	s_PHUSTR_26
	.word	s_PHUSTR_27
	.word	s_PHUSTR_28
	.word	s_PHUSTR_29
	.word	s_PHUSTR_30
	.word	s_PHUSTR_31
	.word	s_PHUSTR_32
	.type	mapnames2, %object
	.size	mapnames2, 128
mapnames2:
	.word	s_HUSTR_1
	.word	s_HUSTR_2
	.word	s_HUSTR_3
	.word	s_HUSTR_4
	.word	s_HUSTR_5
	.word	s_HUSTR_6
	.word	s_HUSTR_7
	.word	s_HUSTR_8
	.word	s_HUSTR_9
	.word	s_HUSTR_10
	.word	s_HUSTR_11
	.word	s_HUSTR_12
	.word	s_HUSTR_13
	.word	s_HUSTR_14
	.word	s_HUSTR_15
	.word	s_HUSTR_16
	.word	s_HUSTR_17
	.word	s_HUSTR_18
	.word	s_HUSTR_19
	.word	s_HUSTR_20
	.word	s_HUSTR_21
	.word	s_HUSTR_22
	.word	s_HUSTR_23
	.word	s_HUSTR_24
	.word	s_HUSTR_25
	.word	s_HUSTR_26
	.word	s_HUSTR_27
	.word	s_HUSTR_28
	.word	s_HUSTR_29
	.word	s_HUSTR_30
	.word	s_HUSTR_31
	.word	s_HUSTR_32
	.type	mapnames, %object
	.size	mapnames, 180
mapnames:
	.word	s_HUSTR_E1M1
	.word	s_HUSTR_E1M2
	.word	s_HUSTR_E1M3
	.word	s_HUSTR_E1M4
	.word	s_HUSTR_E1M5
	.word	s_HUSTR_E1M6
	.word	s_HUSTR_E1M7
	.word	s_HUSTR_E1M8
	.word	s_HUSTR_E1M9
	.word	s_HUSTR_E2M1
	.word	s_HUSTR_E2M2
	.word	s_HUSTR_E2M3
	.word	s_HUSTR_E2M4
	.word	s_HUSTR_E2M5
	.word	s_HUSTR_E2M6
	.word	s_HUSTR_E2M7
	.word	s_HUSTR_E2M8
	.word	s_HUSTR_E2M9
	.word	s_HUSTR_E3M1
	.word	s_HUSTR_E3M2
	.word	s_HUSTR_E3M3
	.word	s_HUSTR_E3M4
	.word	s_HUSTR_E3M5
	.word	s_HUSTR_E3M6
	.word	s_HUSTR_E3M7
	.word	s_HUSTR_E3M8
	.word	s_HUSTR_E3M9
	.word	s_HUSTR_E4M1
	.word	s_HUSTR_E4M2
	.word	s_HUSTR_E4M3
	.word	s_HUSTR_E4M4
	.word	s_HUSTR_E4M5
	.word	s_HUSTR_E4M6
	.word	s_HUSTR_E4M7
	.word	s_HUSTR_E4M8
	.word	s_HUSTR_E4M9
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.word	deh_newlevel
	.data
	.align	2
	.set	.LANCHOR2,. + 0
	.type	deh_strlookup, %object
	.size	deh_strlookup, 3672
deh_strlookup:
	.word	s_D_DEVSTR
	.word	.LC319
	.space	4
	.word	s_D_CDROM
	.word	.LC320
	.space	4
	.word	s_PRESSKEY
	.word	.LC321
	.space	4
	.word	s_PRESSYN
	.word	.LC322
	.space	4
	.word	s_QUITMSG
	.word	.LC323
	.space	4
	.word	s_QSAVESPOT
	.word	.LC324
	.space	4
	.word	s_SAVEDEAD
	.word	.LC325
	.space	4
	.word	s_NEWGAME
	.word	.LC326
	.space	4
	.word	s_RESTARTLEVEL
	.word	.LC327
	.space	4
	.word	s_NIGHTMARE
	.word	.LC328
	.space	4
	.word	s_SWSTRING
	.word	.LC329
	.space	4
	.word	s_MSGOFF
	.word	.LC330
	.space	4
	.word	s_MSGON
	.word	.LC331
	.space	4
	.word	s_NETEND
	.word	.LC332
	.space	4
	.word	s_ENDGAME
	.word	.LC333
	.space	4
	.word	s_DOSY
	.word	.LC334
	.space	4
	.word	s_DETAILHI
	.word	.LC335
	.space	4
	.word	s_DETAILLO
	.word	.LC336
	.space	4
	.word	s_GAMMALVL0
	.word	.LC337
	.space	4
	.word	s_GAMMALVL1
	.word	.LC338
	.space	4
	.word	s_GAMMALVL2
	.word	.LC339
	.space	4
	.word	s_GAMMALVL3
	.word	.LC340
	.space	4
	.word	s_GAMMALVL4
	.word	.LC341
	.space	4
	.word	s_EMPTYSTRING
	.word	.LC342
	.space	4
	.word	s_GOTARMOR
	.word	.LC343
	.space	4
	.word	s_GOTMEGA
	.word	.LC344
	.space	4
	.word	s_GOTHTHBONUS
	.word	.LC345
	.space	4
	.word	s_GOTARMBONUS
	.word	.LC346
	.space	4
	.word	s_GOTSTIM
	.word	.LC347
	.space	4
	.word	s_GOTMEDINEED
	.word	.LC348
	.space	4
	.word	s_GOTMEDIKIT
	.word	.LC349
	.space	4
	.word	s_GOTSUPER
	.word	.LC350
	.space	4
	.word	s_GOTBLUECARD
	.word	.LC351
	.space	4
	.word	s_GOTYELWCARD
	.word	.LC352
	.space	4
	.word	s_GOTREDCARD
	.word	.LC353
	.space	4
	.word	s_GOTBLUESKUL
	.word	.LC354
	.space	4
	.word	s_GOTYELWSKUL
	.word	.LC355
	.space	4
	.word	s_GOTREDSKULL
	.word	.LC356
	.space	4
	.word	s_GOTINVUL
	.word	.LC357
	.space	4
	.word	s_GOTBERSERK
	.word	.LC358
	.space	4
	.word	s_GOTINVIS
	.word	.LC359
	.space	4
	.word	s_GOTSUIT
	.word	.LC360
	.space	4
	.word	s_GOTMAP
	.word	.LC361
	.space	4
	.word	s_GOTVISOR
	.word	.LC362
	.space	4
	.word	s_GOTMSPHERE
	.word	.LC363
	.space	4
	.word	s_GOTCLIP
	.word	.LC364
	.space	4
	.word	s_GOTCLIPBOX
	.word	.LC365
	.space	4
	.word	s_GOTROCKET
	.word	.LC366
	.space	4
	.word	s_GOTROCKBOX
	.word	.LC367
	.space	4
	.word	s_GOTCELL
	.word	.LC368
	.space	4
	.word	s_GOTCELLBOX
	.word	.LC369
	.space	4
	.word	s_GOTSHELLS
	.word	.LC370
	.space	4
	.word	s_GOTSHELLBOX
	.word	.LC371
	.space	4
	.word	s_GOTBACKPACK
	.word	.LC372
	.space	4
	.word	s_GOTBFG9000
	.word	.LC373
	.space	4
	.word	s_GOTCHAINGUN
	.word	.LC374
	.space	4
	.word	s_GOTCHAINSAW
	.word	.LC375
	.space	4
	.word	s_GOTLAUNCHER
	.word	.LC376
	.space	4
	.word	s_GOTPLASMA
	.word	.LC377
	.space	4
	.word	s_GOTSHOTGUN
	.word	.LC378
	.space	4
	.word	s_GOTSHOTGUN2
	.word	.LC379
	.space	4
	.word	s_PD_BLUEO
	.word	.LC380
	.space	4
	.word	s_PD_REDO
	.word	.LC381
	.space	4
	.word	s_PD_YELLOWO
	.word	.LC382
	.space	4
	.word	s_PD_BLUEK
	.word	.LC383
	.space	4
	.word	s_PD_REDK
	.word	.LC384
	.space	4
	.word	s_PD_YELLOWK
	.word	.LC385
	.space	4
	.word	s_PD_BLUEC
	.word	.LC386
	.space	4
	.word	s_PD_REDC
	.word	.LC387
	.space	4
	.word	s_PD_YELLOWC
	.word	.LC388
	.space	4
	.word	s_PD_BLUES
	.word	.LC389
	.space	4
	.word	s_PD_REDS
	.word	.LC390
	.space	4
	.word	s_PD_YELLOWS
	.word	.LC391
	.space	4
	.word	s_PD_ANY
	.word	.LC392
	.space	4
	.word	s_PD_ALL3
	.word	.LC393
	.space	4
	.word	s_PD_ALL6
	.word	.LC394
	.space	4
	.word	s_GGSAVED
	.word	.LC395
	.space	4
	.word	s_HUSTR_MSGU
	.word	.LC396
	.space	4
	.word	s_HUSTR_E1M1
	.word	.LC397
	.space	4
	.word	s_HUSTR_E1M2
	.word	.LC398
	.space	4
	.word	s_HUSTR_E1M3
	.word	.LC399
	.space	4
	.word	s_HUSTR_E1M4
	.word	.LC400
	.space	4
	.word	s_HUSTR_E1M5
	.word	.LC401
	.space	4
	.word	s_HUSTR_E1M6
	.word	.LC402
	.space	4
	.word	s_HUSTR_E1M7
	.word	.LC403
	.space	4
	.word	s_HUSTR_E1M8
	.word	.LC404
	.space	4
	.word	s_HUSTR_E1M9
	.word	.LC405
	.space	4
	.word	s_HUSTR_E2M1
	.word	.LC406
	.space	4
	.word	s_HUSTR_E2M2
	.word	.LC407
	.space	4
	.word	s_HUSTR_E2M3
	.word	.LC408
	.space	4
	.word	s_HUSTR_E2M4
	.word	.LC409
	.space	4
	.word	s_HUSTR_E2M5
	.word	.LC410
	.space	4
	.word	s_HUSTR_E2M6
	.word	.LC411
	.space	4
	.word	s_HUSTR_E2M7
	.word	.LC412
	.space	4
	.word	s_HUSTR_E2M8
	.word	.LC413
	.space	4
	.word	s_HUSTR_E2M9
	.word	.LC414
	.space	4
	.word	s_HUSTR_E3M1
	.word	.LC415
	.space	4
	.word	s_HUSTR_E3M2
	.word	.LC416
	.space	4
	.word	s_HUSTR_E3M3
	.word	.LC417
	.space	4
	.word	s_HUSTR_E3M4
	.word	.LC418
	.space	4
	.word	s_HUSTR_E3M5
	.word	.LC419
	.space	4
	.word	s_HUSTR_E3M6
	.word	.LC420
	.space	4
	.word	s_HUSTR_E3M7
	.word	.LC421
	.space	4
	.word	s_HUSTR_E3M8
	.word	.LC422
	.space	4
	.word	s_HUSTR_E3M9
	.word	.LC423
	.space	4
	.word	s_HUSTR_E4M1
	.word	.LC424
	.space	4
	.word	s_HUSTR_E4M2
	.word	.LC425
	.space	4
	.word	s_HUSTR_E4M3
	.word	.LC426
	.space	4
	.word	s_HUSTR_E4M4
	.word	.LC427
	.space	4
	.word	s_HUSTR_E4M5
	.word	.LC428
	.space	4
	.word	s_HUSTR_E4M6
	.word	.LC429
	.space	4
	.word	s_HUSTR_E4M7
	.word	.LC430
	.space	4
	.word	s_HUSTR_E4M8
	.word	.LC431
	.space	4
	.word	s_HUSTR_E4M9
	.word	.LC432
	.space	4
	.word	s_HUSTR_1
	.word	.LC433
	.space	4
	.word	s_HUSTR_2
	.word	.LC434
	.space	4
	.word	s_HUSTR_3
	.word	.LC435
	.space	4
	.word	s_HUSTR_4
	.word	.LC436
	.space	4
	.word	s_HUSTR_5
	.word	.LC437
	.space	4
	.word	s_HUSTR_6
	.word	.LC438
	.space	4
	.word	s_HUSTR_7
	.word	.LC439
	.space	4
	.word	s_HUSTR_8
	.word	.LC440
	.space	4
	.word	s_HUSTR_9
	.word	.LC441
	.space	4
	.word	s_HUSTR_10
	.word	.LC442
	.space	4
	.word	s_HUSTR_11
	.word	.LC443
	.space	4
	.word	s_HUSTR_12
	.word	.LC444
	.space	4
	.word	s_HUSTR_13
	.word	.LC445
	.space	4
	.word	s_HUSTR_14
	.word	.LC446
	.space	4
	.word	s_HUSTR_15
	.word	.LC447
	.space	4
	.word	s_HUSTR_16
	.word	.LC448
	.space	4
	.word	s_HUSTR_17
	.word	.LC449
	.space	4
	.word	s_HUSTR_18
	.word	.LC450
	.space	4
	.word	s_HUSTR_19
	.word	.LC451
	.space	4
	.word	s_HUSTR_20
	.word	.LC452
	.space	4
	.word	s_HUSTR_21
	.word	.LC453
	.space	4
	.word	s_HUSTR_22
	.word	.LC454
	.space	4
	.word	s_HUSTR_23
	.word	.LC455
	.space	4
	.word	s_HUSTR_24
	.word	.LC456
	.space	4
	.word	s_HUSTR_25
	.word	.LC457
	.space	4
	.word	s_HUSTR_26
	.word	.LC458
	.space	4
	.word	s_HUSTR_27
	.word	.LC459
	.space	4
	.word	s_HUSTR_28
	.word	.LC460
	.space	4
	.word	s_HUSTR_29
	.word	.LC461
	.space	4
	.word	s_HUSTR_30
	.word	.LC462
	.space	4
	.word	s_HUSTR_31
	.word	.LC463
	.space	4
	.word	s_HUSTR_32
	.word	.LC464
	.space	4
	.word	s_PHUSTR_1
	.word	.LC465
	.space	4
	.word	s_PHUSTR_2
	.word	.LC466
	.space	4
	.word	s_PHUSTR_3
	.word	.LC467
	.space	4
	.word	s_PHUSTR_4
	.word	.LC468
	.space	4
	.word	s_PHUSTR_5
	.word	.LC469
	.space	4
	.word	s_PHUSTR_6
	.word	.LC470
	.space	4
	.word	s_PHUSTR_7
	.word	.LC471
	.space	4
	.word	s_PHUSTR_8
	.word	.LC472
	.space	4
	.word	s_PHUSTR_9
	.word	.LC473
	.space	4
	.word	s_PHUSTR_10
	.word	.LC474
	.space	4
	.word	s_PHUSTR_11
	.word	.LC475
	.space	4
	.word	s_PHUSTR_12
	.word	.LC476
	.space	4
	.word	s_PHUSTR_13
	.word	.LC477
	.space	4
	.word	s_PHUSTR_14
	.word	.LC478
	.space	4
	.word	s_PHUSTR_15
	.word	.LC479
	.space	4
	.word	s_PHUSTR_16
	.word	.LC480
	.space	4
	.word	s_PHUSTR_17
	.word	.LC481
	.space	4
	.word	s_PHUSTR_18
	.word	.LC482
	.space	4
	.word	s_PHUSTR_19
	.word	.LC483
	.space	4
	.word	s_PHUSTR_20
	.word	.LC484
	.space	4
	.word	s_PHUSTR_21
	.word	.LC485
	.space	4
	.word	s_PHUSTR_22
	.word	.LC486
	.space	4
	.word	s_PHUSTR_23
	.word	.LC487
	.space	4
	.word	s_PHUSTR_24
	.word	.LC488
	.space	4
	.word	s_PHUSTR_25
	.word	.LC489
	.space	4
	.word	s_PHUSTR_26
	.word	.LC490
	.space	4
	.word	s_PHUSTR_27
	.word	.LC491
	.space	4
	.word	s_PHUSTR_28
	.word	.LC492
	.space	4
	.word	s_PHUSTR_29
	.word	.LC493
	.space	4
	.word	s_PHUSTR_30
	.word	.LC494
	.space	4
	.word	s_PHUSTR_31
	.word	.LC495
	.space	4
	.word	s_PHUSTR_32
	.word	.LC496
	.space	4
	.word	s_THUSTR_1
	.word	.LC497
	.space	4
	.word	s_THUSTR_2
	.word	.LC498
	.space	4
	.word	s_THUSTR_3
	.word	.LC499
	.space	4
	.word	s_THUSTR_4
	.word	.LC500
	.space	4
	.word	s_THUSTR_5
	.word	.LC501
	.space	4
	.word	s_THUSTR_6
	.word	.LC502
	.space	4
	.word	s_THUSTR_7
	.word	.LC503
	.space	4
	.word	s_THUSTR_8
	.word	.LC504
	.space	4
	.word	s_THUSTR_9
	.word	.LC505
	.space	4
	.word	s_THUSTR_10
	.word	.LC506
	.space	4
	.word	s_THUSTR_11
	.word	.LC507
	.space	4
	.word	s_THUSTR_12
	.word	.LC508
	.space	4
	.word	s_THUSTR_13
	.word	.LC509
	.space	4
	.word	s_THUSTR_14
	.word	.LC510
	.space	4
	.word	s_THUSTR_15
	.word	.LC511
	.space	4
	.word	s_THUSTR_16
	.word	.LC512
	.space	4
	.word	s_THUSTR_17
	.word	.LC513
	.space	4
	.word	s_THUSTR_18
	.word	.LC514
	.space	4
	.word	s_THUSTR_19
	.word	.LC515
	.space	4
	.word	s_THUSTR_20
	.word	.LC516
	.space	4
	.word	s_THUSTR_21
	.word	.LC517
	.space	4
	.word	s_THUSTR_22
	.word	.LC518
	.space	4
	.word	s_THUSTR_23
	.word	.LC519
	.space	4
	.word	s_THUSTR_24
	.word	.LC520
	.space	4
	.word	s_THUSTR_25
	.word	.LC521
	.space	4
	.word	s_THUSTR_26
	.word	.LC522
	.space	4
	.word	s_THUSTR_27
	.word	.LC523
	.space	4
	.word	s_THUSTR_28
	.word	.LC524
	.space	4
	.word	s_THUSTR_29
	.word	.LC525
	.space	4
	.word	s_THUSTR_30
	.word	.LC526
	.space	4
	.word	s_THUSTR_31
	.word	.LC527
	.space	4
	.word	s_THUSTR_32
	.word	.LC528
	.space	4
	.word	s_HUSTR_CHATMACRO1
	.word	.LC529
	.space	4
	.word	s_HUSTR_CHATMACRO2
	.word	.LC530
	.space	4
	.word	s_HUSTR_CHATMACRO3
	.word	.LC531
	.space	4
	.word	s_HUSTR_CHATMACRO4
	.word	.LC532
	.space	4
	.word	s_HUSTR_CHATMACRO5
	.word	.LC533
	.space	4
	.word	s_HUSTR_CHATMACRO6
	.word	.LC534
	.space	4
	.word	s_HUSTR_CHATMACRO7
	.word	.LC535
	.space	4
	.word	s_HUSTR_CHATMACRO8
	.word	.LC536
	.space	4
	.word	s_HUSTR_CHATMACRO9
	.word	.LC537
	.space	4
	.word	s_HUSTR_CHATMACRO0
	.word	.LC538
	.space	4
	.word	s_HUSTR_TALKTOSELF1
	.word	.LC539
	.space	4
	.word	s_HUSTR_TALKTOSELF2
	.word	.LC540
	.space	4
	.word	s_HUSTR_TALKTOSELF3
	.word	.LC541
	.space	4
	.word	s_HUSTR_TALKTOSELF4
	.word	.LC542
	.space	4
	.word	s_HUSTR_TALKTOSELF5
	.word	.LC543
	.space	4
	.word	s_HUSTR_MESSAGESENT
	.word	.LC544
	.space	4
	.word	s_HUSTR_PLRGREEN
	.word	.LC545
	.space	4
	.word	s_HUSTR_PLRINDIGO
	.word	.LC546
	.space	4
	.word	s_HUSTR_PLRBROWN
	.word	.LC547
	.space	4
	.word	s_HUSTR_PLRRED
	.word	.LC548
	.space	4
	.word	s_AMSTR_FOLLOWON
	.word	.LC549
	.space	4
	.word	s_AMSTR_FOLLOWOFF
	.word	.LC550
	.space	4
	.word	s_AMSTR_GRIDON
	.word	.LC551
	.space	4
	.word	s_AMSTR_GRIDOFF
	.word	.LC552
	.space	4
	.word	s_AMSTR_MARKEDSPOT
	.word	.LC553
	.space	4
	.word	s_AMSTR_MARKSCLEARED
	.word	.LC554
	.space	4
	.word	s_STSTR_MUS
	.word	.LC555
	.space	4
	.word	s_STSTR_NOMUS
	.word	.LC556
	.space	4
	.word	s_STSTR_DQDON
	.word	.LC557
	.space	4
	.word	s_STSTR_DQDOFF
	.word	.LC558
	.space	4
	.word	s_STSTR_KFAADDED
	.word	.LC559
	.space	4
	.word	s_STSTR_FAADDED
	.word	.LC560
	.space	4
	.word	s_STSTR_NCON
	.word	.LC561
	.space	4
	.word	s_STSTR_NCOFF
	.word	.LC562
	.space	4
	.word	s_STSTR_BEHOLD
	.word	.LC563
	.space	4
	.word	s_STSTR_BEHOLDX
	.word	.LC564
	.space	4
	.word	s_STSTR_CHOPPERS
	.word	.LC565
	.space	4
	.word	s_STSTR_CLEV
	.word	.LC566
	.space	4
	.word	s_STSTR_COMPON
	.word	.LC567
	.space	4
	.word	s_STSTR_COMPOFF
	.word	.LC568
	.space	4
	.word	s_E1TEXT
	.word	.LC569
	.space	4
	.word	s_E2TEXT
	.word	.LC570
	.space	4
	.word	s_E3TEXT
	.word	.LC571
	.space	4
	.word	s_E4TEXT
	.word	.LC572
	.space	4
	.word	s_C1TEXT
	.word	.LC573
	.space	4
	.word	s_C2TEXT
	.word	.LC574
	.space	4
	.word	s_C3TEXT
	.word	.LC575
	.space	4
	.word	s_C4TEXT
	.word	.LC576
	.space	4
	.word	s_C5TEXT
	.word	.LC577
	.space	4
	.word	s_C6TEXT
	.word	.LC578
	.space	4
	.word	s_P1TEXT
	.word	.LC579
	.space	4
	.word	s_P2TEXT
	.word	.LC580
	.space	4
	.word	s_P3TEXT
	.word	.LC581
	.space	4
	.word	s_P4TEXT
	.word	.LC582
	.space	4
	.word	s_P5TEXT
	.word	.LC583
	.space	4
	.word	s_P6TEXT
	.word	.LC584
	.space	4
	.word	s_T1TEXT
	.word	.LC585
	.space	4
	.word	s_T2TEXT
	.word	.LC586
	.space	4
	.word	s_T3TEXT
	.word	.LC587
	.space	4
	.word	s_T4TEXT
	.word	.LC588
	.space	4
	.word	s_T5TEXT
	.word	.LC589
	.space	4
	.word	s_T6TEXT
	.word	.LC590
	.space	4
	.word	s_CC_ZOMBIE
	.word	.LC591
	.space	4
	.word	s_CC_SHOTGUN
	.word	.LC592
	.space	4
	.word	s_CC_HEAVY
	.word	.LC593
	.space	4
	.word	s_CC_IMP
	.word	.LC594
	.space	4
	.word	s_CC_DEMON
	.word	.LC595
	.space	4
	.word	s_CC_LOST
	.word	.LC596
	.space	4
	.word	s_CC_CACO
	.word	.LC597
	.space	4
	.word	s_CC_HELL
	.word	.LC598
	.space	4
	.word	s_CC_BARON
	.word	.LC599
	.space	4
	.word	s_CC_ARACH
	.word	.LC600
	.space	4
	.word	s_CC_PAIN
	.word	.LC601
	.space	4
	.word	s_CC_REVEN
	.word	.LC602
	.space	4
	.word	s_CC_MANCU
	.word	.LC603
	.space	4
	.word	s_CC_ARCH
	.word	.LC604
	.space	4
	.word	s_CC_SPIDER
	.word	.LC605
	.space	4
	.word	s_CC_CYBER
	.word	.LC606
	.space	4
	.word	s_CC_HERO
	.word	.LC607
	.space	4
	.word	bgflatE1
	.word	.LC608
	.space	4
	.word	bgflatE2
	.word	.LC609
	.space	4
	.word	bgflatE3
	.word	.LC610
	.space	4
	.word	bgflatE4
	.word	.LC611
	.space	4
	.word	bgflat06
	.word	.LC612
	.space	4
	.word	bgflat11
	.word	.LC613
	.space	4
	.word	bgflat20
	.word	.LC614
	.space	4
	.word	bgflat30
	.word	.LC615
	.space	4
	.word	bgflat15
	.word	.LC616
	.space	4
	.word	bgflat31
	.word	.LC617
	.space	4
	.word	bgcastcall
	.word	.LC618
	.space	4
	.word	startup1
	.word	.LC619
	.space	4
	.word	startup2
	.word	.LC620
	.space	4
	.word	startup3
	.word	.LC621
	.space	4
	.word	startup4
	.word	.LC622
	.space	4
	.word	startup5
	.word	.LC623
	.space	4
	.word	savegamename
	.word	.LC624
	.space	4
	.type	firstfile.9152, %object
	.size	firstfile.9152, 4
firstfile.9152:
	.word	1
	.type	HelperThing, %object
	.size	HelperThing, 4
HelperThing:
	.word	-1
	.type	maxstrlen.9423, %object
	.size	maxstrlen.9423, 4
maxstrlen.9423:
	.word	128
	.type	deh_newlevel, %object
	.size	deh_newlevel, 4
deh_newlevel:
	.word	.LC318
	.type	savegamename, %object
	.size	savegamename, 4
savegamename:
	.word	.LC625
	.type	startup5, %object
	.size	startup5, 4
startup5:
	.word	.LC8
	.type	startup4, %object
	.size	startup4, 4
startup4:
	.word	.LC8
	.type	startup3, %object
	.size	startup3, 4
startup3:
	.word	.LC8
	.type	startup2, %object
	.size	startup2, 4
startup2:
	.word	.LC8
	.type	startup1, %object
	.size	startup1, 4
startup1:
	.word	.LC8
	.type	bgcastcall, %object
	.size	bgcastcall, 4
bgcastcall:
	.word	.LC626
	.type	bgflat31, %object
	.size	bgflat31, 4
bgflat31:
	.word	.LC627
	.type	bgflat15, %object
	.size	bgflat15, 4
bgflat15:
	.word	.LC628
	.type	bgflat30, %object
	.size	bgflat30, 4
bgflat30:
	.word	.LC629
	.type	bgflat20, %object
	.size	bgflat20, 4
bgflat20:
	.word	.LC630
	.type	bgflat11, %object
	.size	bgflat11, 4
bgflat11:
	.word	.LC631
	.type	bgflat06, %object
	.size	bgflat06, 4
bgflat06:
	.word	.LC632
	.type	bgflatE4, %object
	.size	bgflatE4, 4
bgflatE4:
	.word	.LC633
	.type	bgflatE3, %object
	.size	bgflatE3, 4
bgflatE3:
	.word	.LC634
	.type	bgflatE2, %object
	.size	bgflatE2, 4
bgflatE2:
	.word	.LC635
	.type	bgflatE1, %object
	.size	bgflatE1, 4
bgflatE1:
	.word	.LC636
	.type	s_CC_HERO, %object
	.size	s_CC_HERO, 4
s_CC_HERO:
	.word	.LC637
	.type	s_CC_CYBER, %object
	.size	s_CC_CYBER, 4
s_CC_CYBER:
	.word	.LC638
	.type	s_CC_SPIDER, %object
	.size	s_CC_SPIDER, 4
s_CC_SPIDER:
	.word	.LC639
	.type	s_CC_ARCH, %object
	.size	s_CC_ARCH, 4
s_CC_ARCH:
	.word	.LC640
	.type	s_CC_MANCU, %object
	.size	s_CC_MANCU, 4
s_CC_MANCU:
	.word	.LC641
	.type	s_CC_REVEN, %object
	.size	s_CC_REVEN, 4
s_CC_REVEN:
	.word	.LC642
	.type	s_CC_PAIN, %object
	.size	s_CC_PAIN, 4
s_CC_PAIN:
	.word	.LC643
	.type	s_CC_ARACH, %object
	.size	s_CC_ARACH, 4
s_CC_ARACH:
	.word	.LC644
	.type	s_CC_BARON, %object
	.size	s_CC_BARON, 4
s_CC_BARON:
	.word	.LC645
	.type	s_CC_HELL, %object
	.size	s_CC_HELL, 4
s_CC_HELL:
	.word	.LC646
	.type	s_CC_CACO, %object
	.size	s_CC_CACO, 4
s_CC_CACO:
	.word	.LC647
	.type	s_CC_LOST, %object
	.size	s_CC_LOST, 4
s_CC_LOST:
	.word	.LC648
	.type	s_CC_DEMON, %object
	.size	s_CC_DEMON, 4
s_CC_DEMON:
	.word	.LC649
	.type	s_CC_IMP, %object
	.size	s_CC_IMP, 4
s_CC_IMP:
	.word	.LC650
	.type	s_CC_HEAVY, %object
	.size	s_CC_HEAVY, 4
s_CC_HEAVY:
	.word	.LC651
	.type	s_CC_SHOTGUN, %object
	.size	s_CC_SHOTGUN, 4
s_CC_SHOTGUN:
	.word	.LC652
	.type	s_CC_ZOMBIE, %object
	.size	s_CC_ZOMBIE, 4
s_CC_ZOMBIE:
	.word	.LC653
	.type	s_T6TEXT, %object
	.size	s_T6TEXT, 4
s_T6TEXT:
	.word	.LC654
	.type	s_T5TEXT, %object
	.size	s_T5TEXT, 4
s_T5TEXT:
	.word	.LC655
	.type	s_T4TEXT, %object
	.size	s_T4TEXT, 4
s_T4TEXT:
	.word	.LC656
	.type	s_T3TEXT, %object
	.size	s_T3TEXT, 4
s_T3TEXT:
	.word	.LC657
	.type	s_T2TEXT, %object
	.size	s_T2TEXT, 4
s_T2TEXT:
	.word	.LC658
	.type	s_T1TEXT, %object
	.size	s_T1TEXT, 4
s_T1TEXT:
	.word	.LC659
	.type	s_P6TEXT, %object
	.size	s_P6TEXT, 4
s_P6TEXT:
	.word	.LC660
	.type	s_P5TEXT, %object
	.size	s_P5TEXT, 4
s_P5TEXT:
	.word	.LC661
	.type	s_P4TEXT, %object
	.size	s_P4TEXT, 4
s_P4TEXT:
	.word	.LC662
	.type	s_P3TEXT, %object
	.size	s_P3TEXT, 4
s_P3TEXT:
	.word	.LC663
	.type	s_P2TEXT, %object
	.size	s_P2TEXT, 4
s_P2TEXT:
	.word	.LC664
	.type	s_P1TEXT, %object
	.size	s_P1TEXT, 4
s_P1TEXT:
	.word	.LC665
	.type	s_C6TEXT, %object
	.size	s_C6TEXT, 4
s_C6TEXT:
	.word	.LC666
	.type	s_C5TEXT, %object
	.size	s_C5TEXT, 4
s_C5TEXT:
	.word	.LC667
	.type	s_C4TEXT, %object
	.size	s_C4TEXT, 4
s_C4TEXT:
	.word	.LC668
	.type	s_C3TEXT, %object
	.size	s_C3TEXT, 4
s_C3TEXT:
	.word	.LC669
	.type	s_C2TEXT, %object
	.size	s_C2TEXT, 4
s_C2TEXT:
	.word	.LC670
	.type	s_C1TEXT, %object
	.size	s_C1TEXT, 4
s_C1TEXT:
	.word	.LC671
	.type	s_E4TEXT, %object
	.size	s_E4TEXT, 4
s_E4TEXT:
	.word	.LC672
	.type	s_E3TEXT, %object
	.size	s_E3TEXT, 4
s_E3TEXT:
	.word	.LC673
	.type	s_E2TEXT, %object
	.size	s_E2TEXT, 4
s_E2TEXT:
	.word	.LC674
	.type	s_E1TEXT, %object
	.size	s_E1TEXT, 4
s_E1TEXT:
	.word	.LC675
	.type	s_STSTR_COMPOFF, %object
	.size	s_STSTR_COMPOFF, 4
s_STSTR_COMPOFF:
	.word	.LC676
	.type	s_STSTR_COMPON, %object
	.size	s_STSTR_COMPON, 4
s_STSTR_COMPON:
	.word	.LC677
	.type	s_STSTR_CLEV, %object
	.size	s_STSTR_CLEV, 4
s_STSTR_CLEV:
	.word	.LC678
	.type	s_STSTR_CHOPPERS, %object
	.size	s_STSTR_CHOPPERS, 4
s_STSTR_CHOPPERS:
	.word	.LC679
	.type	s_STSTR_BEHOLDX, %object
	.size	s_STSTR_BEHOLDX, 4
s_STSTR_BEHOLDX:
	.word	.LC680
	.type	s_STSTR_BEHOLD, %object
	.size	s_STSTR_BEHOLD, 4
s_STSTR_BEHOLD:
	.word	.LC681
	.type	s_STSTR_NCOFF, %object
	.size	s_STSTR_NCOFF, 4
s_STSTR_NCOFF:
	.word	.LC682
	.type	s_STSTR_NCON, %object
	.size	s_STSTR_NCON, 4
s_STSTR_NCON:
	.word	.LC683
	.type	s_STSTR_FAADDED, %object
	.size	s_STSTR_FAADDED, 4
s_STSTR_FAADDED:
	.word	.LC684
	.type	s_STSTR_KFAADDED, %object
	.size	s_STSTR_KFAADDED, 4
s_STSTR_KFAADDED:
	.word	.LC685
	.type	s_STSTR_DQDOFF, %object
	.size	s_STSTR_DQDOFF, 4
s_STSTR_DQDOFF:
	.word	.LC686
	.type	s_STSTR_DQDON, %object
	.size	s_STSTR_DQDON, 4
s_STSTR_DQDON:
	.word	.LC687
	.type	s_STSTR_NOMUS, %object
	.size	s_STSTR_NOMUS, 4
s_STSTR_NOMUS:
	.word	.LC688
	.type	s_STSTR_MUS, %object
	.size	s_STSTR_MUS, 4
s_STSTR_MUS:
	.word	.LC689
	.type	s_AMSTR_OVERLAYOFF, %object
	.size	s_AMSTR_OVERLAYOFF, 4
s_AMSTR_OVERLAYOFF:
	.word	.LC690
	.type	s_AMSTR_OVERLAYON, %object
	.size	s_AMSTR_OVERLAYON, 4
s_AMSTR_OVERLAYON:
	.word	.LC691
	.type	s_AMSTR_ROTATEOFF, %object
	.size	s_AMSTR_ROTATEOFF, 4
s_AMSTR_ROTATEOFF:
	.word	.LC692
	.type	s_AMSTR_ROTATEON, %object
	.size	s_AMSTR_ROTATEON, 4
s_AMSTR_ROTATEON:
	.word	.LC693
	.type	s_AMSTR_MARKSCLEARED, %object
	.size	s_AMSTR_MARKSCLEARED, 4
s_AMSTR_MARKSCLEARED:
	.word	.LC694
	.type	s_AMSTR_MARKEDSPOT, %object
	.size	s_AMSTR_MARKEDSPOT, 4
s_AMSTR_MARKEDSPOT:
	.word	.LC695
	.type	s_AMSTR_GRIDOFF, %object
	.size	s_AMSTR_GRIDOFF, 4
s_AMSTR_GRIDOFF:
	.word	.LC696
	.type	s_AMSTR_GRIDON, %object
	.size	s_AMSTR_GRIDON, 4
s_AMSTR_GRIDON:
	.word	.LC697
	.type	s_AMSTR_FOLLOWOFF, %object
	.size	s_AMSTR_FOLLOWOFF, 4
s_AMSTR_FOLLOWOFF:
	.word	.LC698
	.type	s_AMSTR_FOLLOWON, %object
	.size	s_AMSTR_FOLLOWON, 4
s_AMSTR_FOLLOWON:
	.word	.LC699
	.type	s_HUSTR_PLRRED, %object
	.size	s_HUSTR_PLRRED, 4
s_HUSTR_PLRRED:
	.word	.LC700
	.type	s_HUSTR_PLRBROWN, %object
	.size	s_HUSTR_PLRBROWN, 4
s_HUSTR_PLRBROWN:
	.word	.LC701
	.type	s_HUSTR_PLRINDIGO, %object
	.size	s_HUSTR_PLRINDIGO, 4
s_HUSTR_PLRINDIGO:
	.word	.LC702
	.type	s_HUSTR_PLRGREEN, %object
	.size	s_HUSTR_PLRGREEN, 4
s_HUSTR_PLRGREEN:
	.word	.LC703
	.type	s_HUSTR_MESSAGESENT, %object
	.size	s_HUSTR_MESSAGESENT, 4
s_HUSTR_MESSAGESENT:
	.word	.LC704
	.type	s_HUSTR_TALKTOSELF5, %object
	.size	s_HUSTR_TALKTOSELF5, 4
s_HUSTR_TALKTOSELF5:
	.word	.LC705
	.type	s_HUSTR_TALKTOSELF4, %object
	.size	s_HUSTR_TALKTOSELF4, 4
s_HUSTR_TALKTOSELF4:
	.word	.LC706
	.type	s_HUSTR_TALKTOSELF3, %object
	.size	s_HUSTR_TALKTOSELF3, 4
s_HUSTR_TALKTOSELF3:
	.word	.LC707
	.type	s_HUSTR_TALKTOSELF2, %object
	.size	s_HUSTR_TALKTOSELF2, 4
s_HUSTR_TALKTOSELF2:
	.word	.LC708
	.type	s_HUSTR_TALKTOSELF1, %object
	.size	s_HUSTR_TALKTOSELF1, 4
s_HUSTR_TALKTOSELF1:
	.word	.LC709
	.type	s_HUSTR_CHATMACRO0, %object
	.size	s_HUSTR_CHATMACRO0, 4
s_HUSTR_CHATMACRO0:
	.word	.LC710
	.type	s_HUSTR_CHATMACRO9, %object
	.size	s_HUSTR_CHATMACRO9, 4
s_HUSTR_CHATMACRO9:
	.word	.LC711
	.type	s_HUSTR_CHATMACRO8, %object
	.size	s_HUSTR_CHATMACRO8, 4
s_HUSTR_CHATMACRO8:
	.word	.LC712
	.type	s_HUSTR_CHATMACRO7, %object
	.size	s_HUSTR_CHATMACRO7, 4
s_HUSTR_CHATMACRO7:
	.word	.LC713
	.type	s_HUSTR_CHATMACRO6, %object
	.size	s_HUSTR_CHATMACRO6, 4
s_HUSTR_CHATMACRO6:
	.word	.LC714
	.type	s_HUSTR_CHATMACRO5, %object
	.size	s_HUSTR_CHATMACRO5, 4
s_HUSTR_CHATMACRO5:
	.word	.LC715
	.type	s_HUSTR_CHATMACRO4, %object
	.size	s_HUSTR_CHATMACRO4, 4
s_HUSTR_CHATMACRO4:
	.word	.LC716
	.type	s_HUSTR_CHATMACRO3, %object
	.size	s_HUSTR_CHATMACRO3, 4
s_HUSTR_CHATMACRO3:
	.word	.LC717
	.type	s_HUSTR_CHATMACRO2, %object
	.size	s_HUSTR_CHATMACRO2, 4
s_HUSTR_CHATMACRO2:
	.word	.LC718
	.type	s_HUSTR_CHATMACRO1, %object
	.size	s_HUSTR_CHATMACRO1, 4
s_HUSTR_CHATMACRO1:
	.word	.LC719
	.type	s_THUSTR_32, %object
	.size	s_THUSTR_32, 4
s_THUSTR_32:
	.word	.LC720
	.type	s_THUSTR_31, %object
	.size	s_THUSTR_31, 4
s_THUSTR_31:
	.word	.LC721
	.type	s_THUSTR_30, %object
	.size	s_THUSTR_30, 4
s_THUSTR_30:
	.word	.LC722
	.type	s_THUSTR_29, %object
	.size	s_THUSTR_29, 4
s_THUSTR_29:
	.word	.LC723
	.type	s_THUSTR_28, %object
	.size	s_THUSTR_28, 4
s_THUSTR_28:
	.word	.LC724
	.type	s_THUSTR_27, %object
	.size	s_THUSTR_27, 4
s_THUSTR_27:
	.word	.LC725
	.type	s_THUSTR_26, %object
	.size	s_THUSTR_26, 4
s_THUSTR_26:
	.word	.LC726
	.type	s_THUSTR_25, %object
	.size	s_THUSTR_25, 4
s_THUSTR_25:
	.word	.LC727
	.type	s_THUSTR_24, %object
	.size	s_THUSTR_24, 4
s_THUSTR_24:
	.word	.LC728
	.type	s_THUSTR_23, %object
	.size	s_THUSTR_23, 4
s_THUSTR_23:
	.word	.LC729
	.type	s_THUSTR_22, %object
	.size	s_THUSTR_22, 4
s_THUSTR_22:
	.word	.LC730
	.type	s_THUSTR_21, %object
	.size	s_THUSTR_21, 4
s_THUSTR_21:
	.word	.LC731
	.type	s_THUSTR_20, %object
	.size	s_THUSTR_20, 4
s_THUSTR_20:
	.word	.LC732
	.type	s_THUSTR_19, %object
	.size	s_THUSTR_19, 4
s_THUSTR_19:
	.word	.LC733
	.type	s_THUSTR_18, %object
	.size	s_THUSTR_18, 4
s_THUSTR_18:
	.word	.LC734
	.type	s_THUSTR_17, %object
	.size	s_THUSTR_17, 4
s_THUSTR_17:
	.word	.LC735
	.type	s_THUSTR_16, %object
	.size	s_THUSTR_16, 4
s_THUSTR_16:
	.word	.LC736
	.type	s_THUSTR_15, %object
	.size	s_THUSTR_15, 4
s_THUSTR_15:
	.word	.LC737
	.type	s_THUSTR_14, %object
	.size	s_THUSTR_14, 4
s_THUSTR_14:
	.word	.LC738
	.type	s_THUSTR_13, %object
	.size	s_THUSTR_13, 4
s_THUSTR_13:
	.word	.LC739
	.type	s_THUSTR_12, %object
	.size	s_THUSTR_12, 4
s_THUSTR_12:
	.word	.LC740
	.type	s_THUSTR_11, %object
	.size	s_THUSTR_11, 4
s_THUSTR_11:
	.word	.LC741
	.type	s_THUSTR_10, %object
	.size	s_THUSTR_10, 4
s_THUSTR_10:
	.word	.LC742
	.type	s_THUSTR_9, %object
	.size	s_THUSTR_9, 4
s_THUSTR_9:
	.word	.LC743
	.type	s_THUSTR_8, %object
	.size	s_THUSTR_8, 4
s_THUSTR_8:
	.word	.LC744
	.type	s_THUSTR_7, %object
	.size	s_THUSTR_7, 4
s_THUSTR_7:
	.word	.LC745
	.type	s_THUSTR_6, %object
	.size	s_THUSTR_6, 4
s_THUSTR_6:
	.word	.LC746
	.type	s_THUSTR_5, %object
	.size	s_THUSTR_5, 4
s_THUSTR_5:
	.word	.LC747
	.type	s_THUSTR_4, %object
	.size	s_THUSTR_4, 4
s_THUSTR_4:
	.word	.LC748
	.type	s_THUSTR_3, %object
	.size	s_THUSTR_3, 4
s_THUSTR_3:
	.word	.LC749
	.type	s_THUSTR_2, %object
	.size	s_THUSTR_2, 4
s_THUSTR_2:
	.word	.LC750
	.type	s_THUSTR_1, %object
	.size	s_THUSTR_1, 4
s_THUSTR_1:
	.word	.LC751
	.type	s_PHUSTR_32, %object
	.size	s_PHUSTR_32, 4
s_PHUSTR_32:
	.word	.LC752
	.type	s_PHUSTR_31, %object
	.size	s_PHUSTR_31, 4
s_PHUSTR_31:
	.word	.LC753
	.type	s_PHUSTR_30, %object
	.size	s_PHUSTR_30, 4
s_PHUSTR_30:
	.word	.LC754
	.type	s_PHUSTR_29, %object
	.size	s_PHUSTR_29, 4
s_PHUSTR_29:
	.word	.LC755
	.type	s_PHUSTR_28, %object
	.size	s_PHUSTR_28, 4
s_PHUSTR_28:
	.word	.LC756
	.type	s_PHUSTR_27, %object
	.size	s_PHUSTR_27, 4
s_PHUSTR_27:
	.word	.LC757
	.type	s_PHUSTR_26, %object
	.size	s_PHUSTR_26, 4
s_PHUSTR_26:
	.word	.LC758
	.type	s_PHUSTR_25, %object
	.size	s_PHUSTR_25, 4
s_PHUSTR_25:
	.word	.LC759
	.type	s_PHUSTR_24, %object
	.size	s_PHUSTR_24, 4
s_PHUSTR_24:
	.word	.LC760
	.type	s_PHUSTR_23, %object
	.size	s_PHUSTR_23, 4
s_PHUSTR_23:
	.word	.LC761
	.type	s_PHUSTR_22, %object
	.size	s_PHUSTR_22, 4
s_PHUSTR_22:
	.word	.LC762
	.type	s_PHUSTR_21, %object
	.size	s_PHUSTR_21, 4
s_PHUSTR_21:
	.word	.LC763
	.type	s_PHUSTR_20, %object
	.size	s_PHUSTR_20, 4
s_PHUSTR_20:
	.word	.LC764
	.type	s_PHUSTR_19, %object
	.size	s_PHUSTR_19, 4
s_PHUSTR_19:
	.word	.LC765
	.type	s_PHUSTR_18, %object
	.size	s_PHUSTR_18, 4
s_PHUSTR_18:
	.word	.LC766
	.type	s_PHUSTR_17, %object
	.size	s_PHUSTR_17, 4
s_PHUSTR_17:
	.word	.LC767
	.type	s_PHUSTR_16, %object
	.size	s_PHUSTR_16, 4
s_PHUSTR_16:
	.word	.LC768
	.type	s_PHUSTR_15, %object
	.size	s_PHUSTR_15, 4
s_PHUSTR_15:
	.word	.LC769
	.type	s_PHUSTR_14, %object
	.size	s_PHUSTR_14, 4
s_PHUSTR_14:
	.word	.LC770
	.type	s_PHUSTR_13, %object
	.size	s_PHUSTR_13, 4
s_PHUSTR_13:
	.word	.LC771
	.type	s_PHUSTR_12, %object
	.size	s_PHUSTR_12, 4
s_PHUSTR_12:
	.word	.LC772
	.type	s_PHUSTR_11, %object
	.size	s_PHUSTR_11, 4
s_PHUSTR_11:
	.word	.LC773
	.type	s_PHUSTR_10, %object
	.size	s_PHUSTR_10, 4
s_PHUSTR_10:
	.word	.LC774
	.type	s_PHUSTR_9, %object
	.size	s_PHUSTR_9, 4
s_PHUSTR_9:
	.word	.LC775
	.type	s_PHUSTR_8, %object
	.size	s_PHUSTR_8, 4
s_PHUSTR_8:
	.word	.LC776
	.type	s_PHUSTR_7, %object
	.size	s_PHUSTR_7, 4
s_PHUSTR_7:
	.word	.LC777
	.type	s_PHUSTR_6, %object
	.size	s_PHUSTR_6, 4
s_PHUSTR_6:
	.word	.LC778
	.type	s_PHUSTR_5, %object
	.size	s_PHUSTR_5, 4
s_PHUSTR_5:
	.word	.LC779
	.type	s_PHUSTR_4, %object
	.size	s_PHUSTR_4, 4
s_PHUSTR_4:
	.word	.LC780
	.type	s_PHUSTR_3, %object
	.size	s_PHUSTR_3, 4
s_PHUSTR_3:
	.word	.LC781
	.type	s_PHUSTR_2, %object
	.size	s_PHUSTR_2, 4
s_PHUSTR_2:
	.word	.LC782
	.type	s_PHUSTR_1, %object
	.size	s_PHUSTR_1, 4
s_PHUSTR_1:
	.word	.LC783
	.type	s_HUSTR_32, %object
	.size	s_HUSTR_32, 4
s_HUSTR_32:
	.word	.LC784
	.type	s_HUSTR_31, %object
	.size	s_HUSTR_31, 4
s_HUSTR_31:
	.word	.LC785
	.type	s_HUSTR_30, %object
	.size	s_HUSTR_30, 4
s_HUSTR_30:
	.word	.LC786
	.type	s_HUSTR_29, %object
	.size	s_HUSTR_29, 4
s_HUSTR_29:
	.word	.LC787
	.type	s_HUSTR_28, %object
	.size	s_HUSTR_28, 4
s_HUSTR_28:
	.word	.LC788
	.type	s_HUSTR_27, %object
	.size	s_HUSTR_27, 4
s_HUSTR_27:
	.word	.LC789
	.type	s_HUSTR_26, %object
	.size	s_HUSTR_26, 4
s_HUSTR_26:
	.word	.LC790
	.type	s_HUSTR_25, %object
	.size	s_HUSTR_25, 4
s_HUSTR_25:
	.word	.LC791
	.type	s_HUSTR_24, %object
	.size	s_HUSTR_24, 4
s_HUSTR_24:
	.word	.LC792
	.type	s_HUSTR_23, %object
	.size	s_HUSTR_23, 4
s_HUSTR_23:
	.word	.LC793
	.type	s_HUSTR_22, %object
	.size	s_HUSTR_22, 4
s_HUSTR_22:
	.word	.LC794
	.type	s_HUSTR_21, %object
	.size	s_HUSTR_21, 4
s_HUSTR_21:
	.word	.LC795
	.type	s_HUSTR_20, %object
	.size	s_HUSTR_20, 4
s_HUSTR_20:
	.word	.LC796
	.type	s_HUSTR_19, %object
	.size	s_HUSTR_19, 4
s_HUSTR_19:
	.word	.LC797
	.type	s_HUSTR_18, %object
	.size	s_HUSTR_18, 4
s_HUSTR_18:
	.word	.LC798
	.type	s_HUSTR_17, %object
	.size	s_HUSTR_17, 4
s_HUSTR_17:
	.word	.LC799
	.type	s_HUSTR_16, %object
	.size	s_HUSTR_16, 4
s_HUSTR_16:
	.word	.LC800
	.type	s_HUSTR_15, %object
	.size	s_HUSTR_15, 4
s_HUSTR_15:
	.word	.LC801
	.type	s_HUSTR_14, %object
	.size	s_HUSTR_14, 4
s_HUSTR_14:
	.word	.LC802
	.type	s_HUSTR_13, %object
	.size	s_HUSTR_13, 4
s_HUSTR_13:
	.word	.LC803
	.type	s_HUSTR_12, %object
	.size	s_HUSTR_12, 4
s_HUSTR_12:
	.word	.LC804
	.type	s_HUSTR_11, %object
	.size	s_HUSTR_11, 4
s_HUSTR_11:
	.word	.LC805
	.type	s_HUSTR_10, %object
	.size	s_HUSTR_10, 4
s_HUSTR_10:
	.word	.LC806
	.type	s_HUSTR_9, %object
	.size	s_HUSTR_9, 4
s_HUSTR_9:
	.word	.LC807
	.type	s_HUSTR_8, %object
	.size	s_HUSTR_8, 4
s_HUSTR_8:
	.word	.LC808
	.type	s_HUSTR_7, %object
	.size	s_HUSTR_7, 4
s_HUSTR_7:
	.word	.LC809
	.type	s_HUSTR_6, %object
	.size	s_HUSTR_6, 4
s_HUSTR_6:
	.word	.LC810
	.type	s_HUSTR_5, %object
	.size	s_HUSTR_5, 4
s_HUSTR_5:
	.word	.LC811
	.type	s_HUSTR_4, %object
	.size	s_HUSTR_4, 4
s_HUSTR_4:
	.word	.LC812
	.type	s_HUSTR_3, %object
	.size	s_HUSTR_3, 4
s_HUSTR_3:
	.word	.LC813
	.type	s_HUSTR_2, %object
	.size	s_HUSTR_2, 4
s_HUSTR_2:
	.word	.LC814
	.type	s_HUSTR_1, %object
	.size	s_HUSTR_1, 4
s_HUSTR_1:
	.word	.LC815
	.type	s_HUSTR_E4M9, %object
	.size	s_HUSTR_E4M9, 4
s_HUSTR_E4M9:
	.word	.LC816
	.type	s_HUSTR_E4M8, %object
	.size	s_HUSTR_E4M8, 4
s_HUSTR_E4M8:
	.word	.LC817
	.type	s_HUSTR_E4M7, %object
	.size	s_HUSTR_E4M7, 4
s_HUSTR_E4M7:
	.word	.LC818
	.type	s_HUSTR_E4M6, %object
	.size	s_HUSTR_E4M6, 4
s_HUSTR_E4M6:
	.word	.LC819
	.type	s_HUSTR_E4M5, %object
	.size	s_HUSTR_E4M5, 4
s_HUSTR_E4M5:
	.word	.LC820
	.type	s_HUSTR_E4M4, %object
	.size	s_HUSTR_E4M4, 4
s_HUSTR_E4M4:
	.word	.LC821
	.type	s_HUSTR_E4M3, %object
	.size	s_HUSTR_E4M3, 4
s_HUSTR_E4M3:
	.word	.LC822
	.type	s_HUSTR_E4M2, %object
	.size	s_HUSTR_E4M2, 4
s_HUSTR_E4M2:
	.word	.LC823
	.type	s_HUSTR_E4M1, %object
	.size	s_HUSTR_E4M1, 4
s_HUSTR_E4M1:
	.word	.LC824
	.type	s_HUSTR_E3M9, %object
	.size	s_HUSTR_E3M9, 4
s_HUSTR_E3M9:
	.word	.LC825
	.type	s_HUSTR_E3M8, %object
	.size	s_HUSTR_E3M8, 4
s_HUSTR_E3M8:
	.word	.LC826
	.type	s_HUSTR_E3M7, %object
	.size	s_HUSTR_E3M7, 4
s_HUSTR_E3M7:
	.word	.LC827
	.type	s_HUSTR_E3M6, %object
	.size	s_HUSTR_E3M6, 4
s_HUSTR_E3M6:
	.word	.LC828
	.type	s_HUSTR_E3M5, %object
	.size	s_HUSTR_E3M5, 4
s_HUSTR_E3M5:
	.word	.LC829
	.type	s_HUSTR_E3M4, %object
	.size	s_HUSTR_E3M4, 4
s_HUSTR_E3M4:
	.word	.LC830
	.type	s_HUSTR_E3M3, %object
	.size	s_HUSTR_E3M3, 4
s_HUSTR_E3M3:
	.word	.LC831
	.type	s_HUSTR_E3M2, %object
	.size	s_HUSTR_E3M2, 4
s_HUSTR_E3M2:
	.word	.LC832
	.type	s_HUSTR_E3M1, %object
	.size	s_HUSTR_E3M1, 4
s_HUSTR_E3M1:
	.word	.LC833
	.type	s_HUSTR_E2M9, %object
	.size	s_HUSTR_E2M9, 4
s_HUSTR_E2M9:
	.word	.LC834
	.type	s_HUSTR_E2M8, %object
	.size	s_HUSTR_E2M8, 4
s_HUSTR_E2M8:
	.word	.LC835
	.type	s_HUSTR_E2M7, %object
	.size	s_HUSTR_E2M7, 4
s_HUSTR_E2M7:
	.word	.LC836
	.type	s_HUSTR_E2M6, %object
	.size	s_HUSTR_E2M6, 4
s_HUSTR_E2M6:
	.word	.LC837
	.type	s_HUSTR_E2M5, %object
	.size	s_HUSTR_E2M5, 4
s_HUSTR_E2M5:
	.word	.LC838
	.type	s_HUSTR_E2M4, %object
	.size	s_HUSTR_E2M4, 4
s_HUSTR_E2M4:
	.word	.LC839
	.type	s_HUSTR_E2M3, %object
	.size	s_HUSTR_E2M3, 4
s_HUSTR_E2M3:
	.word	.LC840
	.type	s_HUSTR_E2M2, %object
	.size	s_HUSTR_E2M2, 4
s_HUSTR_E2M2:
	.word	.LC841
	.type	s_HUSTR_E2M1, %object
	.size	s_HUSTR_E2M1, 4
s_HUSTR_E2M1:
	.word	.LC842
	.type	s_HUSTR_E1M9, %object
	.size	s_HUSTR_E1M9, 4
s_HUSTR_E1M9:
	.word	.LC843
	.type	s_HUSTR_E1M8, %object
	.size	s_HUSTR_E1M8, 4
s_HUSTR_E1M8:
	.word	.LC844
	.type	s_HUSTR_E1M7, %object
	.size	s_HUSTR_E1M7, 4
s_HUSTR_E1M7:
	.word	.LC845
	.type	s_HUSTR_E1M6, %object
	.size	s_HUSTR_E1M6, 4
s_HUSTR_E1M6:
	.word	.LC846
	.type	s_HUSTR_E1M5, %object
	.size	s_HUSTR_E1M5, 4
s_HUSTR_E1M5:
	.word	.LC847
	.type	s_HUSTR_E1M4, %object
	.size	s_HUSTR_E1M4, 4
s_HUSTR_E1M4:
	.word	.LC848
	.type	s_HUSTR_E1M3, %object
	.size	s_HUSTR_E1M3, 4
s_HUSTR_E1M3:
	.word	.LC849
	.type	s_HUSTR_E1M2, %object
	.size	s_HUSTR_E1M2, 4
s_HUSTR_E1M2:
	.word	.LC850
	.type	s_HUSTR_E1M1, %object
	.size	s_HUSTR_E1M1, 4
s_HUSTR_E1M1:
	.word	.LC851
	.type	s_HUSTR_MSGU, %object
	.size	s_HUSTR_MSGU, 4
s_HUSTR_MSGU:
	.word	.LC852
	.type	s_GGSAVED, %object
	.size	s_GGSAVED, 4
s_GGSAVED:
	.word	.LC853
	.type	s_PD_ALL6, %object
	.size	s_PD_ALL6, 4
s_PD_ALL6:
	.word	.LC854
	.type	s_PD_ALL3, %object
	.size	s_PD_ALL3, 4
s_PD_ALL3:
	.word	.LC855
	.type	s_PD_ANY, %object
	.size	s_PD_ANY, 4
s_PD_ANY:
	.word	.LC856
	.type	s_PD_YELLOWS, %object
	.size	s_PD_YELLOWS, 4
s_PD_YELLOWS:
	.word	.LC857
	.type	s_PD_REDS, %object
	.size	s_PD_REDS, 4
s_PD_REDS:
	.word	.LC858
	.type	s_PD_BLUES, %object
	.size	s_PD_BLUES, 4
s_PD_BLUES:
	.word	.LC859
	.type	s_PD_YELLOWC, %object
	.size	s_PD_YELLOWC, 4
s_PD_YELLOWC:
	.word	.LC860
	.type	s_PD_REDC, %object
	.size	s_PD_REDC, 4
s_PD_REDC:
	.word	.LC861
	.type	s_PD_BLUEC, %object
	.size	s_PD_BLUEC, 4
s_PD_BLUEC:
	.word	.LC862
	.type	s_PD_YELLOWK, %object
	.size	s_PD_YELLOWK, 4
s_PD_YELLOWK:
	.word	.LC863
	.type	s_PD_REDK, %object
	.size	s_PD_REDK, 4
s_PD_REDK:
	.word	.LC864
	.type	s_PD_BLUEK, %object
	.size	s_PD_BLUEK, 4
s_PD_BLUEK:
	.word	.LC865
	.type	s_PD_YELLOWO, %object
	.size	s_PD_YELLOWO, 4
s_PD_YELLOWO:
	.word	.LC866
	.type	s_PD_REDO, %object
	.size	s_PD_REDO, 4
s_PD_REDO:
	.word	.LC867
	.type	s_PD_BLUEO, %object
	.size	s_PD_BLUEO, 4
s_PD_BLUEO:
	.word	.LC868
	.type	s_GOTSHOTGUN2, %object
	.size	s_GOTSHOTGUN2, 4
s_GOTSHOTGUN2:
	.word	.LC869
	.type	s_GOTSHOTGUN, %object
	.size	s_GOTSHOTGUN, 4
s_GOTSHOTGUN:
	.word	.LC870
	.type	s_GOTPLASMA, %object
	.size	s_GOTPLASMA, 4
s_GOTPLASMA:
	.word	.LC871
	.type	s_GOTLAUNCHER, %object
	.size	s_GOTLAUNCHER, 4
s_GOTLAUNCHER:
	.word	.LC872
	.type	s_GOTCHAINSAW, %object
	.size	s_GOTCHAINSAW, 4
s_GOTCHAINSAW:
	.word	.LC873
	.type	s_GOTCHAINGUN, %object
	.size	s_GOTCHAINGUN, 4
s_GOTCHAINGUN:
	.word	.LC874
	.type	s_GOTBFG9000, %object
	.size	s_GOTBFG9000, 4
s_GOTBFG9000:
	.word	.LC875
	.type	s_GOTBACKPACK, %object
	.size	s_GOTBACKPACK, 4
s_GOTBACKPACK:
	.word	.LC876
	.type	s_GOTSHELLBOX, %object
	.size	s_GOTSHELLBOX, 4
s_GOTSHELLBOX:
	.word	.LC877
	.type	s_GOTSHELLS, %object
	.size	s_GOTSHELLS, 4
s_GOTSHELLS:
	.word	.LC878
	.type	s_GOTCELLBOX, %object
	.size	s_GOTCELLBOX, 4
s_GOTCELLBOX:
	.word	.LC879
	.type	s_GOTCELL, %object
	.size	s_GOTCELL, 4
s_GOTCELL:
	.word	.LC880
	.type	s_GOTROCKBOX, %object
	.size	s_GOTROCKBOX, 4
s_GOTROCKBOX:
	.word	.LC881
	.type	s_GOTROCKET, %object
	.size	s_GOTROCKET, 4
s_GOTROCKET:
	.word	.LC882
	.type	s_GOTCLIPBOX, %object
	.size	s_GOTCLIPBOX, 4
s_GOTCLIPBOX:
	.word	.LC883
	.type	s_GOTCLIP, %object
	.size	s_GOTCLIP, 4
s_GOTCLIP:
	.word	.LC884
	.type	s_GOTMSPHERE, %object
	.size	s_GOTMSPHERE, 4
s_GOTMSPHERE:
	.word	.LC885
	.type	s_GOTVISOR, %object
	.size	s_GOTVISOR, 4
s_GOTVISOR:
	.word	.LC886
	.type	s_GOTMAP, %object
	.size	s_GOTMAP, 4
s_GOTMAP:
	.word	.LC887
	.type	s_GOTSUIT, %object
	.size	s_GOTSUIT, 4
s_GOTSUIT:
	.word	.LC888
	.type	s_GOTINVIS, %object
	.size	s_GOTINVIS, 4
s_GOTINVIS:
	.word	.LC889
	.type	s_GOTBERSERK, %object
	.size	s_GOTBERSERK, 4
s_GOTBERSERK:
	.word	.LC890
	.type	s_GOTINVUL, %object
	.size	s_GOTINVUL, 4
s_GOTINVUL:
	.word	.LC891
	.type	s_GOTREDSKULL, %object
	.size	s_GOTREDSKULL, 4
s_GOTREDSKULL:
	.word	.LC892
	.type	s_GOTYELWSKUL, %object
	.size	s_GOTYELWSKUL, 4
s_GOTYELWSKUL:
	.word	.LC893
	.type	s_GOTBLUESKUL, %object
	.size	s_GOTBLUESKUL, 4
s_GOTBLUESKUL:
	.word	.LC894
	.type	s_GOTREDCARD, %object
	.size	s_GOTREDCARD, 4
s_GOTREDCARD:
	.word	.LC895
	.type	s_GOTYELWCARD, %object
	.size	s_GOTYELWCARD, 4
s_GOTYELWCARD:
	.word	.LC896
	.type	s_GOTBLUECARD, %object
	.size	s_GOTBLUECARD, 4
s_GOTBLUECARD:
	.word	.LC897
	.type	s_GOTSUPER, %object
	.size	s_GOTSUPER, 4
s_GOTSUPER:
	.word	.LC898
	.type	s_GOTMEDIKIT, %object
	.size	s_GOTMEDIKIT, 4
s_GOTMEDIKIT:
	.word	.LC899
	.type	s_GOTMEDINEED, %object
	.size	s_GOTMEDINEED, 4
s_GOTMEDINEED:
	.word	.LC900
	.type	s_GOTSTIM, %object
	.size	s_GOTSTIM, 4
s_GOTSTIM:
	.word	.LC901
	.type	s_GOTARMBONUS, %object
	.size	s_GOTARMBONUS, 4
s_GOTARMBONUS:
	.word	.LC902
	.type	s_GOTHTHBONUS, %object
	.size	s_GOTHTHBONUS, 4
s_GOTHTHBONUS:
	.word	.LC903
	.type	s_GOTMEGA, %object
	.size	s_GOTMEGA, 4
s_GOTMEGA:
	.word	.LC904
	.type	s_GOTARMOR, %object
	.size	s_GOTARMOR, 4
s_GOTARMOR:
	.word	.LC905
	.type	s_EMPTYSTRING, %object
	.size	s_EMPTYSTRING, 4
s_EMPTYSTRING:
	.word	.LC906
	.type	s_GAMMALVL4, %object
	.size	s_GAMMALVL4, 4
s_GAMMALVL4:
	.word	.LC907
	.type	s_GAMMALVL3, %object
	.size	s_GAMMALVL3, 4
s_GAMMALVL3:
	.word	.LC908
	.type	s_GAMMALVL2, %object
	.size	s_GAMMALVL2, 4
s_GAMMALVL2:
	.word	.LC909
	.type	s_GAMMALVL1, %object
	.size	s_GAMMALVL1, 4
s_GAMMALVL1:
	.word	.LC910
	.type	s_GAMMALVL0, %object
	.size	s_GAMMALVL0, 4
s_GAMMALVL0:
	.word	.LC911
	.type	s_DETAILLO, %object
	.size	s_DETAILLO, 4
s_DETAILLO:
	.word	.LC912
	.type	s_DETAILHI, %object
	.size	s_DETAILHI, 4
s_DETAILHI:
	.word	.LC913
	.type	s_DOSY, %object
	.size	s_DOSY, 4
s_DOSY:
	.word	.LC914
	.type	s_ENDGAME, %object
	.size	s_ENDGAME, 4
s_ENDGAME:
	.word	.LC915
	.type	s_NETEND, %object
	.size	s_NETEND, 4
s_NETEND:
	.word	.LC916
	.type	s_SAVING, %object
	.size	s_SAVING, 4
s_SAVING:
	.word	.LC917
	.type	s_LOADING, %object
	.size	s_LOADING, 4
s_LOADING:
	.word	.LC918
	.type	s_MSGON, %object
	.size	s_MSGON, 4
s_MSGON:
	.word	.LC919
	.type	s_MSGOFF, %object
	.size	s_MSGOFF, 4
s_MSGOFF:
	.word	.LC920
	.type	s_SWSTRING, %object
	.size	s_SWSTRING, 4
s_SWSTRING:
	.word	.LC921
	.type	s_NIGHTMARE, %object
	.size	s_NIGHTMARE, 4
s_NIGHTMARE:
	.word	.LC922
	.type	s_RESTARTLEVEL, %object
	.size	s_RESTARTLEVEL, 4
s_RESTARTLEVEL:
	.word	.LC923
	.type	s_NEWGAME, %object
	.size	s_NEWGAME, 4
s_NEWGAME:
	.word	.LC924
	.type	s_QLPROMPT, %object
	.size	s_QLPROMPT, 4
s_QLPROMPT:
	.word	.LC925
	.type	s_QSPROMPT, %object
	.size	s_QSPROMPT, 4
s_QSPROMPT:
	.word	.LC926
	.type	s_SAVEDEAD, %object
	.size	s_SAVEDEAD, 4
s_SAVEDEAD:
	.word	.LC927
	.type	s_QSAVESPOT, %object
	.size	s_QSAVESPOT, 4
s_QSAVESPOT:
	.word	.LC928
	.type	s_QUITMSG, %object
	.size	s_QUITMSG, 4
s_QUITMSG:
	.word	.LC929
	.type	s_PRESSYN, %object
	.size	s_PRESSYN, 4
s_PRESSYN:
	.word	.LC930
	.type	s_PRESSKEY, %object
	.size	s_PRESSKEY, 4
s_PRESSKEY:
	.word	.LC931
	.type	s_D_CDROM, %object
	.size	s_D_CDROM, 4
s_D_CDROM:
	.word	.LC932
	.type	s_D_DEVSTR, %object
	.size	s_D_DEVSTR, 4
s_D_DEVSTR:
	.word	.LC933
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Unmatched Block: '%s'\012\000"
	.space	1
.LC1:
	.ascii	"D_BuildBEXTables: 0\000"
.LC2:
	.ascii	"D_BuildBEXTables: 1\000"
.LC3:
	.ascii	"D_BuildBEXTables: 2\000"
.LC4:
	.ascii	"D_BuildBEXTables: 3 %d\012\000"
.LC5:
	.ascii	"deh_soundnames(%d) : %s\012\000"
	.space	3
.LC6:
	.ascii	"D_BuildBEXTables: 4\000"
.LC7:
	.ascii	"...\000"
.LC8:
	.ascii	"\000"
	.space	3
.LC9:
	.ascii	"Assigned key %s => '%s'\012\000"
	.space	3
.LC10:
	.ascii	"Assigned '%.12s%s' to'%.12s%s' at key %s\012\000"
	.space	2
.LC11:
	.ascii	"*BEX FORMAT:\012%s = %s\012*END BEX\012\000"
	.space	1
.LC12:
	.ascii	"Could not find '%.12s'\012\000"
.LC13:
	.ascii	"Skipped text block because of notext directive\012\000"
.LC14:
	.ascii	"%s %i %i\000"
	.space	3
.LC15:
	.ascii	"Processing Text (key=%s, from=%d, to=%d)\012\000"
	.space	2
.LC16:
	.ascii	"Changing name of sprite at index %d from %s to %*s\012"
	.ascii	"\000"
.LC17:
	.ascii	"Warning: Mismatched lengths from=%d, to=%d, used %d"
	.ascii	"\012\000"
	.space	3
.LC18:
	.ascii	"Changing name of sfx from %s to %*s\012\000"
	.space	3
.LC19:
	.ascii	"Changing name of music from %s to %*s\012\000"
	.space	1
.LC20:
	.ascii	"Checking text area through strings for '%.12s%s' fr"
	.ascii	"om=%d to=%d\012\000"
.LC21:
	.ascii	"%s %i\000"
	.space	2
.LC22:
	.ascii	"Processing Par value at index %d: %s\012\000"
	.space	2
.LC23:
	.ascii	"par %i %i %i\000"
	.space	3
.LC24:
	.ascii	"par %i %i\000"
	.space	2
.LC25:
	.ascii	"Invalid par time setting string: %s\012\000"
	.space	3
.LC26:
	.ascii	"Invalid MAPnn value MAP%d\012\000"
	.space	1
.LC27:
	.ascii	"Changed par time for MAP%02d from %d to %d\012\000"
.LC28:
	.ascii	"Invalid ExMx values E%dM%d\012\000"
.LC29:
	.ascii	"Changed par time for E%dM%d from %d to %d\012\000"
	.space	1
.LC30:
	.ascii	"Ignoring Sprite offset change at index %d: %s\012\000"
	.space	1
.LC31:
	.ascii	"- %s\012\000"
	.space	2
.LC32:
	.ascii	"wt\000"
	.space	1
.LC33:
	.ascii	"at\000"
	.space	1
.LC34:
	.ascii	"file\000"
	.space	3
.LC35:
	.ascii	"lump from\000"
	.space	2
.LC36:
	.ascii	"-\000"
	.space	2
.LC37:
	.ascii	"Could not open -dehout file %s\012... using stdout."
	.ascii	"\012\000"
	.space	2
.LC38:
	.ascii	"rt\000"
	.space	1
.LC39:
	.ascii	"-deh file %s not found\012\000"
.LC40:
	.ascii	"Loading DEH %s %s\012\000"
	.space	1
.LC41:
	.ascii	"\012Loading DEH %s %s\012\012\000"
	.space	3
.LC42:
	.ascii	"Line='%s'\012\000"
	.space	1
.LC43:
	.ascii	"INCLUDE\000"
.LC44:
	.ascii	"No files may be included from wads: %s\012\000"
.LC45:
	.ascii	"NOTEXT\000"
	.space	1
.LC46:
	.ascii	"Branching to include file %s...\012\000"
	.space	3
.LC47:
	.ascii	"...continuing with %s\012\000"
	.space	1
.LC48:
	.ascii	"Processing function [%d] for %s\012\000"
	.space	3
.LC49:
	.ascii	"%s %i = %s\000"
	.space	1
.LC50:
	.ascii	"FRAME\000"
	.space	2
.LC51:
	.ascii	"Invalid BEX codepointer line - must start with 'FRA"
	.ascii	"ME': '%s'\012\000"
	.space	2
.LC52:
	.ascii	"Processing pointer at index %d: %s\012\000"
.LC53:
	.ascii	"Bad pointer number %d of %d\012\000"
	.space	3
.LC54:
	.ascii	"A_\000"
	.space	1
.LC55:
	.ascii	" - applied %s from codeptr[%d] to states[%d]\012\000"
	.space	2
.LC56:
	.ascii	"Invalid frame pointer mnemonic '%s' at %d\012\000"
	.space	1
.LC57:
	.ascii	" 0X%lx\000"
	.space	1
.LC58:
	.ascii	" 0%lo\000"
	.space	2
.LC59:
	.ascii	" %ld\000"
	.space	3
.LC60:
	.ascii	" 0x%lx\000"
	.space	1
.LC61:
	.ascii	"Processing music name substitution\012\000"
.LC62:
	.ascii	"Bad data pair in '%s'\012\000"
	.space	1
.LC63:
	.ascii	"Bad length for music name '%s'\012\000"
.LC64:
	.ascii	"Substituting '%s' for music '%s'\012\000"
	.space	2
.LC65:
	.ascii	"Processing sound name substitution\012\000"
.LC66:
	.ascii	"Bad length for sound name '%s'\012\000"
.LC67:
	.ascii	"Substituting '%s' for sound '%s'\012\000"
	.space	2
.LC68:
	.ascii	"Processing sprite name substitution\012\000"
	.space	3
.LC69:
	.ascii	"Bad length for sprite name '%s'\012\000"
	.space	3
.LC70:
	.ascii	"Substituting '%s' for sprite '%s'\012\000"
	.space	1
.LC71:
	.ascii	"Processing Helper Thing item '%s'\012\000"
	.space	1
.LC72:
	.ascii	"value is %i\000"
.LC73:
	.ascii	"type\000"
	.space	3
.LC74:
	.ascii	"Processing extended string substitution\012\000"
	.space	3
.LC75:
	.ascii	"* increased buffer from to %d for buffer size %d\012"
	.ascii	"\000"
	.space	2
.LC76:
	.ascii	"Invalid string key '%s', substitution skipped.\012\000"
.LC77:
	.ascii	"Processing Misc item '%s'\012\000"
	.space	1
.LC78:
	.ascii	"Initial Health\000"
	.space	1
.LC79:
	.ascii	"Initial Bullets\000"
.LC80:
	.ascii	"Max Health\000"
	.space	1
.LC81:
	.ascii	"Max Armor\000"
	.space	2
.LC82:
	.ascii	"Green Armor Class\000"
	.space	2
.LC83:
	.ascii	"Blue Armor Class\000"
	.space	3
.LC84:
	.ascii	"Max Soulsphere\000"
	.space	1
.LC85:
	.ascii	"Soulsphere Health\000"
	.space	2
.LC86:
	.ascii	"Megasphere Health\000"
	.space	2
.LC87:
	.ascii	"God Mode Health\000"
.LC88:
	.ascii	"IDFA Armor\000"
	.space	1
.LC89:
	.ascii	"IDFA Armor Class\000"
	.space	3
.LC90:
	.ascii	"IDKFA Armor\000"
.LC91:
	.ascii	"IDKFA Armor Class\000"
	.space	2
.LC92:
	.ascii	"BFG Cells/Shot\000"
	.space	1
.LC93:
	.ascii	"Monsters Infight\000"
	.space	3
.LC94:
	.ascii	"Invalid value for 'Monsters Infight': %i\000"
	.space	3
.LC95:
	.ascii	"Invalid misc item string index for '%s'\012\000"
	.space	3
.LC96:
	.ascii	"Processing Cheat: %s\012\000"
	.space	2
.LC97:
	.ascii	"Assigned new cheat '%s' to cheat '%s'at index %d\012"
	.ascii	"\000"
	.space	2
.LC98:
	.ascii	"Processing Weapon at index %d: %s\012\000"
	.space	1
.LC99:
	.ascii	"Bad weapon number %d of %d\012\000"
.LC100:
	.ascii	"Ammo type\000"
	.space	2
.LC101:
	.ascii	"Deselect frame\000"
	.space	1
.LC102:
	.ascii	"Select frame\000"
	.space	3
.LC103:
	.ascii	"Bobbing frame\000"
	.space	2
.LC104:
	.ascii	"Shooting frame\000"
	.space	1
.LC105:
	.ascii	"Firing frame\000"
	.space	3
.LC106:
	.ascii	"Invalid weapon string index for '%s'\012\000"
	.space	2
.LC107:
	.ascii	"Processing Ammo at index %d: %s\012\000"
	.space	3
.LC108:
	.ascii	"Bad ammo number %d of %d\012\000"
	.space	2
.LC109:
	.ascii	"Max ammo\000"
	.space	3
.LC110:
	.ascii	"Per ammo\000"
	.space	3
.LC111:
	.ascii	"Invalid ammo string index for '%s'\012\000"
.LC112:
	.ascii	"Processing Sounds at index %d: %s\012\000"
	.space	1
.LC113:
	.ascii	"Bad sound number %d of %d\012\000"
	.space	1
.LC114:
	.ascii	"Offset\000"
	.space	1
.LC115:
	.ascii	"Zero/One\000"
	.space	3
.LC116:
	.ascii	"Value\000"
	.space	2
.LC117:
	.ascii	"Zero 1\000"
	.space	1
.LC118:
	.ascii	"Zero 2\000"
	.space	1
.LC119:
	.ascii	"Zero 3\000"
	.space	1
.LC120:
	.ascii	"Zero 4\000"
	.space	1
.LC121:
	.ascii	"Neg. One 1\000"
	.space	1
.LC122:
	.ascii	"Neg. One 2\000"
	.space	1
.LC123:
	.ascii	"Invalid sound string index for '%s'\012\000"
	.space	3
.LC124:
	.ascii	"%*s %*i (%s %i)\000"
.LC125:
	.ascii	"Processing Pointer at index %d: %s\012\000"
.LC126:
	.ascii	"Bad pointer number %lld of %d\012\000"
	.space	1
.LC127:
	.ascii	"Codep Frame\000"
.LC128:
	.ascii	" - applied from codeptr[%lld] to states[%d]\012\000"
	.space	3
.LC129:
	.ascii	"BEX [CODEPTR] -> FRAME %d = %s\012\000"
.LC130:
	.ascii	"Invalid frame pointer index for '%s' at %lld\012\000"
	.space	2
.LC131:
	.ascii	"Processing Frame at index %d: %s\012\000"
	.space	2
.LC132:
	.ascii	"Bad frame number %d of %d\012\000"
	.space	1
.LC133:
	.ascii	"Sprite number\000"
	.space	2
.LC134:
	.ascii	" - sprite = %lld\012\000"
	.space	2
.LC135:
	.ascii	"Sprite subnumber\000"
	.space	3
.LC136:
	.ascii	" - frame = %lld\012\000"
	.space	3
.LC137:
	.ascii	"Duration\000"
	.space	3
.LC138:
	.ascii	" - tics = %lld\012\000"
.LC139:
	.ascii	"Next frame\000"
	.space	1
.LC140:
	.ascii	" - nextstate = %lld\012\000"
	.space	3
.LC141:
	.ascii	" - codep, should not be set in Frame section!\012\000"
	.space	1
.LC142:
	.ascii	"Unknown 1\000"
	.space	2
.LC143:
	.ascii	" - misc1 = %lld\012\000"
	.space	3
.LC144:
	.ascii	"Unknown 2\000"
	.space	2
.LC145:
	.ascii	" - misc2 = %lld\012\000"
	.space	3
.LC146:
	.ascii	"Invalid frame string index for '%s'\012\000"
	.space	3
.LC147:
	.ascii	"Thing line: '%s'\012\000"
	.space	2
.LC148:
	.ascii	"count=%d, Thing %d\012\000"
.LC149:
	.ascii	"bits\000"
	.space	3
.LC150:
	.ascii	"ORed value 0x%08lX%08lX %s\012\000"
.LC151:
	.ascii	"Could not find bit mnemonic %s\012\000"
.LC152:
	.ascii	",+| \011\014\015\000"
.LC153:
	.ascii	"Bits = 0x%08lX%08lX\012\000"
	.space	3
.LC154:
	.ascii	"Assigned 0x%08lx%08lx to %s(%d) at index %d\012\000"
	.space	3
.LC155:
	.ascii	"A_Light0\000"
	.space	3
.LC156:
	.ascii	"A_WeaponReady\000"
	.space	2
.LC157:
	.ascii	"A_Lower\000"
.LC158:
	.ascii	"A_Raise\000"
.LC159:
	.ascii	"A_Punch\000"
.LC160:
	.ascii	"A_ReFire\000"
	.space	3
.LC161:
	.ascii	"A_FirePistol\000"
	.space	3
.LC162:
	.ascii	"A_Light1\000"
	.space	3
.LC163:
	.ascii	"A_FireShotgun\000"
	.space	2
.LC164:
	.ascii	"A_Light2\000"
	.space	3
.LC165:
	.ascii	"A_FireShotgun2\000"
	.space	1
.LC166:
	.ascii	"A_CheckReload\000"
	.space	2
.LC167:
	.ascii	"A_OpenShotgun2\000"
	.space	1
.LC168:
	.ascii	"A_LoadShotgun2\000"
	.space	1
.LC169:
	.ascii	"A_CloseShotgun2\000"
.LC170:
	.ascii	"A_FireCGun\000"
	.space	1
.LC171:
	.ascii	"A_GunFlash\000"
	.space	1
.LC172:
	.ascii	"A_FireMissile\000"
	.space	2
.LC173:
	.ascii	"A_Saw\000"
	.space	2
.LC174:
	.ascii	"A_FirePlasma\000"
	.space	3
.LC175:
	.ascii	"A_BFGsound\000"
	.space	1
.LC176:
	.ascii	"A_FireBFG\000"
	.space	2
.LC177:
	.ascii	"A_BFGSpray\000"
	.space	1
.LC178:
	.ascii	"A_Explode\000"
	.space	2
.LC179:
	.ascii	"A_Pain\000"
	.space	1
.LC180:
	.ascii	"A_PlayerScream\000"
	.space	1
.LC181:
	.ascii	"A_Fall\000"
	.space	1
.LC182:
	.ascii	"A_XScream\000"
	.space	2
.LC183:
	.ascii	"A_Look\000"
	.space	1
.LC184:
	.ascii	"A_Chase\000"
.LC185:
	.ascii	"A_FaceTarget\000"
	.space	3
.LC186:
	.ascii	"A_PosAttack\000"
.LC187:
	.ascii	"A_Scream\000"
	.space	3
.LC188:
	.ascii	"A_SPosAttack\000"
	.space	3
.LC189:
	.ascii	"A_VileChase\000"
.LC190:
	.ascii	"A_VileStart\000"
.LC191:
	.ascii	"A_VileTarget\000"
	.space	3
.LC192:
	.ascii	"A_VileAttack\000"
	.space	3
.LC193:
	.ascii	"A_StartFire\000"
.LC194:
	.ascii	"A_Fire\000"
	.space	1
.LC195:
	.ascii	"A_FireCrackle\000"
	.space	2
.LC196:
	.ascii	"A_Tracer\000"
	.space	3
.LC197:
	.ascii	"A_SkelWhoosh\000"
	.space	3
.LC198:
	.ascii	"A_SkelFist\000"
	.space	1
.LC199:
	.ascii	"A_SkelMissile\000"
	.space	2
.LC200:
	.ascii	"A_FatRaise\000"
	.space	1
.LC201:
	.ascii	"A_FatAttack1\000"
	.space	3
.LC202:
	.ascii	"A_FatAttack2\000"
	.space	3
.LC203:
	.ascii	"A_FatAttack3\000"
	.space	3
.LC204:
	.ascii	"A_BossDeath\000"
.LC205:
	.ascii	"A_CPosAttack\000"
	.space	3
.LC206:
	.ascii	"A_CPosRefire\000"
	.space	3
.LC207:
	.ascii	"A_TroopAttack\000"
	.space	2
.LC208:
	.ascii	"A_SargAttack\000"
	.space	3
.LC209:
	.ascii	"A_HeadAttack\000"
	.space	3
.LC210:
	.ascii	"A_BruisAttack\000"
	.space	2
.LC211:
	.ascii	"A_SkullAttack\000"
	.space	2
.LC212:
	.ascii	"A_Metal\000"
.LC213:
	.ascii	"A_SpidRefire\000"
	.space	3
.LC214:
	.ascii	"A_BabyMetal\000"
.LC215:
	.ascii	"A_BspiAttack\000"
	.space	3
.LC216:
	.ascii	"A_Hoof\000"
	.space	1
.LC217:
	.ascii	"A_CyberAttack\000"
	.space	2
.LC218:
	.ascii	"A_PainAttack\000"
	.space	3
.LC219:
	.ascii	"A_PainDie\000"
	.space	2
.LC220:
	.ascii	"A_KeenDie\000"
	.space	2
.LC221:
	.ascii	"A_BrainPain\000"
.LC222:
	.ascii	"A_BrainScream\000"
	.space	2
.LC223:
	.ascii	"A_BrainDie\000"
	.space	1
.LC224:
	.ascii	"A_BrainAwake\000"
	.space	3
.LC225:
	.ascii	"A_BrainSpit\000"
.LC226:
	.ascii	"A_SpawnSound\000"
	.space	3
.LC227:
	.ascii	"A_SpawnFly\000"
	.space	1
.LC228:
	.ascii	"A_BrainExplode\000"
	.space	1
.LC229:
	.ascii	"A_Detonate\000"
	.space	1
.LC230:
	.ascii	"A_Mushroom\000"
	.space	1
.LC231:
	.ascii	"A_Die\000"
	.space	2
.LC232:
	.ascii	"A_Spawn\000"
.LC233:
	.ascii	"A_Turn\000"
	.space	1
.LC234:
	.ascii	"A_Face\000"
	.space	1
.LC235:
	.ascii	"A_Scratch\000"
	.space	2
.LC236:
	.ascii	"A_PlaySound\000"
.LC237:
	.ascii	"A_RandomJump\000"
	.space	3
.LC238:
	.ascii	"A_LineEffect\000"
	.space	3
.LC239:
	.ascii	"A_NULL\000"
	.space	1
.LC240:
	.ascii	"SPECIAL\000"
.LC241:
	.ascii	"SOLID\000"
	.space	2
.LC242:
	.ascii	"SHOOTABLE\000"
	.space	2
.LC243:
	.ascii	"NOSECTOR\000"
	.space	3
.LC244:
	.ascii	"NOBLOCKMAP\000"
	.space	1
.LC245:
	.ascii	"AMBUSH\000"
	.space	1
.LC246:
	.ascii	"JUSTHIT\000"
.LC247:
	.ascii	"JUSTATTACKED\000"
	.space	3
.LC248:
	.ascii	"SPAWNCEILING\000"
	.space	3
.LC249:
	.ascii	"NOGRAVITY\000"
	.space	2
.LC250:
	.ascii	"DROPOFF\000"
.LC251:
	.ascii	"PICKUP\000"
	.space	1
.LC252:
	.ascii	"NOCLIP\000"
	.space	1
.LC253:
	.ascii	"SLIDE\000"
	.space	2
.LC254:
	.ascii	"FLOAT\000"
	.space	2
.LC255:
	.ascii	"TELEPORT\000"
	.space	3
.LC256:
	.ascii	"MISSILE\000"
.LC257:
	.ascii	"DROPPED\000"
.LC258:
	.ascii	"SHADOW\000"
	.space	1
.LC259:
	.ascii	"NOBLOOD\000"
.LC260:
	.ascii	"CORPSE\000"
	.space	1
.LC261:
	.ascii	"INFLOAT\000"
.LC262:
	.ascii	"COUNTKILL\000"
	.space	2
.LC263:
	.ascii	"COUNTITEM\000"
	.space	2
.LC264:
	.ascii	"SKULLFLY\000"
	.space	3
.LC265:
	.ascii	"NOTDMATCH\000"
	.space	2
.LC266:
	.ascii	"TRANSLATION\000"
.LC267:
	.ascii	"TRANSLATION1\000"
	.space	3
.LC268:
	.ascii	"TRANSLATION2\000"
	.space	3
.LC269:
	.ascii	"UNUSED1\000"
.LC270:
	.ascii	"UNUSED2\000"
.LC271:
	.ascii	"UNUSED3\000"
.LC272:
	.ascii	"UNUSED4\000"
.LC273:
	.ascii	"TRANSLUCENT\000"
.LC274:
	.ascii	"TOUCHY\000"
	.space	1
.LC275:
	.ascii	"BOUNCES\000"
.LC276:
	.ascii	"FRIEND\000"
	.space	1
.LC277:
	.ascii	"ID #\000"
	.space	3
.LC278:
	.ascii	"Initial frame\000"
	.space	2
.LC279:
	.ascii	"Hit points\000"
	.space	1
.LC280:
	.ascii	"First moving frame\000"
	.space	1
.LC281:
	.ascii	"Alert sound\000"
.LC282:
	.ascii	"Reaction time\000"
	.space	2
.LC283:
	.ascii	"Attack sound\000"
	.space	3
.LC284:
	.ascii	"Injury frame\000"
	.space	3
.LC285:
	.ascii	"Pain chance\000"
.LC286:
	.ascii	"Pain sound\000"
	.space	1
.LC287:
	.ascii	"Close attack frame\000"
	.space	1
.LC288:
	.ascii	"Far attack frame\000"
	.space	3
.LC289:
	.ascii	"Death frame\000"
.LC290:
	.ascii	"Exploding frame\000"
.LC291:
	.ascii	"Death sound\000"
.LC292:
	.ascii	"Speed\000"
	.space	2
.LC293:
	.ascii	"Width\000"
	.space	2
.LC294:
	.ascii	"Height\000"
	.space	1
.LC295:
	.ascii	"Mass\000"
	.space	3
.LC296:
	.ascii	"Missile damage\000"
	.space	1
.LC297:
	.ascii	"Action sound\000"
	.space	3
.LC298:
	.ascii	"Bits\000"
	.space	3
.LC299:
	.ascii	"Bits2\000"
	.space	2
.LC300:
	.ascii	"Respawn frame\000"
	.space	2
.LC301:
	.ascii	"Thing\000"
	.space	2
.LC302:
	.ascii	"Frame\000"
	.space	2
.LC303:
	.ascii	"Pointer\000"
.LC304:
	.ascii	"Sound\000"
	.space	2
.LC305:
	.ascii	"Ammo\000"
	.space	3
.LC306:
	.ascii	"Weapon\000"
	.space	1
.LC307:
	.ascii	"Sprite\000"
	.space	1
.LC308:
	.ascii	"Cheat\000"
	.space	2
.LC309:
	.ascii	"Misc\000"
	.space	3
.LC310:
	.ascii	"Text\000"
	.space	3
.LC311:
	.ascii	"[STRINGS]\000"
	.space	2
.LC312:
	.ascii	"[PARS]\000"
	.space	1
.LC313:
	.ascii	"[CODEPTR]\000"
	.space	2
.LC314:
	.ascii	"[HELPER]\000"
	.space	3
.LC315:
	.ascii	"[SPRITES]\000"
	.space	2
.LC316:
	.ascii	"[SOUNDS]\000"
	.space	3
.LC317:
	.ascii	"[MUSIC]\000"
.LC318:
	.ascii	"NEWLEVEL\000"
	.space	3
.LC319:
	.ascii	"D_DEVSTR\000"
	.space	3
.LC320:
	.ascii	"D_CDROM\000"
.LC321:
	.ascii	"PRESSKEY\000"
	.space	3
.LC322:
	.ascii	"PRESSYN\000"
.LC323:
	.ascii	"QUITMSG\000"
.LC324:
	.ascii	"QSAVESPOT\000"
	.space	2
.LC325:
	.ascii	"SAVEDEAD\000"
	.space	3
.LC326:
	.ascii	"NEWGAME\000"
.LC327:
	.ascii	"RESTARTLEVEL\000"
	.space	3
.LC328:
	.ascii	"NIGHTMARE\000"
	.space	2
.LC329:
	.ascii	"SWSTRING\000"
	.space	3
.LC330:
	.ascii	"MSGOFF\000"
	.space	1
.LC331:
	.ascii	"MSGON\000"
	.space	2
.LC332:
	.ascii	"NETEND\000"
	.space	1
.LC333:
	.ascii	"ENDGAME\000"
.LC334:
	.ascii	"DOSY\000"
	.space	3
.LC335:
	.ascii	"DETAILHI\000"
	.space	3
.LC336:
	.ascii	"DETAILLO\000"
	.space	3
.LC337:
	.ascii	"GAMMALVL0\000"
	.space	2
.LC338:
	.ascii	"GAMMALVL1\000"
	.space	2
.LC339:
	.ascii	"GAMMALVL2\000"
	.space	2
.LC340:
	.ascii	"GAMMALVL3\000"
	.space	2
.LC341:
	.ascii	"GAMMALVL4\000"
	.space	2
.LC342:
	.ascii	"EMPTYSTRING\000"
.LC343:
	.ascii	"GOTARMOR\000"
	.space	3
.LC344:
	.ascii	"GOTMEGA\000"
.LC345:
	.ascii	"GOTHTHBONUS\000"
.LC346:
	.ascii	"GOTARMBONUS\000"
.LC347:
	.ascii	"GOTSTIM\000"
.LC348:
	.ascii	"GOTMEDINEED\000"
.LC349:
	.ascii	"GOTMEDIKIT\000"
	.space	1
.LC350:
	.ascii	"GOTSUPER\000"
	.space	3
.LC351:
	.ascii	"GOTBLUECARD\000"
.LC352:
	.ascii	"GOTYELWCARD\000"
.LC353:
	.ascii	"GOTREDCARD\000"
	.space	1
.LC354:
	.ascii	"GOTBLUESKUL\000"
.LC355:
	.ascii	"GOTYELWSKUL\000"
.LC356:
	.ascii	"GOTREDSKULL\000"
.LC357:
	.ascii	"GOTINVUL\000"
	.space	3
.LC358:
	.ascii	"GOTBERSERK\000"
	.space	1
.LC359:
	.ascii	"GOTINVIS\000"
	.space	3
.LC360:
	.ascii	"GOTSUIT\000"
.LC361:
	.ascii	"GOTMAP\000"
	.space	1
.LC362:
	.ascii	"GOTVISOR\000"
	.space	3
.LC363:
	.ascii	"GOTMSPHERE\000"
	.space	1
.LC364:
	.ascii	"GOTCLIP\000"
.LC365:
	.ascii	"GOTCLIPBOX\000"
	.space	1
.LC366:
	.ascii	"GOTROCKET\000"
	.space	2
.LC367:
	.ascii	"GOTROCKBOX\000"
	.space	1
.LC368:
	.ascii	"GOTCELL\000"
.LC369:
	.ascii	"GOTCELLBOX\000"
	.space	1
.LC370:
	.ascii	"GOTSHELLS\000"
	.space	2
.LC371:
	.ascii	"GOTSHELLBOX\000"
.LC372:
	.ascii	"GOTBACKPACK\000"
.LC373:
	.ascii	"GOTBFG9000\000"
	.space	1
.LC374:
	.ascii	"GOTCHAINGUN\000"
.LC375:
	.ascii	"GOTCHAINSAW\000"
.LC376:
	.ascii	"GOTLAUNCHER\000"
.LC377:
	.ascii	"GOTPLASMA\000"
	.space	2
.LC378:
	.ascii	"GOTSHOTGUN\000"
	.space	1
.LC379:
	.ascii	"GOTSHOTGUN2\000"
.LC380:
	.ascii	"PD_BLUEO\000"
	.space	3
.LC381:
	.ascii	"PD_REDO\000"
.LC382:
	.ascii	"PD_YELLOWO\000"
	.space	1
.LC383:
	.ascii	"PD_BLUEK\000"
	.space	3
.LC384:
	.ascii	"PD_REDK\000"
.LC385:
	.ascii	"PD_YELLOWK\000"
	.space	1
.LC386:
	.ascii	"PD_BLUEC\000"
	.space	3
.LC387:
	.ascii	"PD_REDC\000"
.LC388:
	.ascii	"PD_YELLOWC\000"
	.space	1
.LC389:
	.ascii	"PD_BLUES\000"
	.space	3
.LC390:
	.ascii	"PD_REDS\000"
.LC391:
	.ascii	"PD_YELLOWS\000"
	.space	1
.LC392:
	.ascii	"PD_ANY\000"
	.space	1
.LC393:
	.ascii	"PD_ALL3\000"
.LC394:
	.ascii	"PD_ALL6\000"
.LC395:
	.ascii	"GGSAVED\000"
.LC396:
	.ascii	"HUSTR_MSGU\000"
	.space	1
.LC397:
	.ascii	"HUSTR_E1M1\000"
	.space	1
.LC398:
	.ascii	"HUSTR_E1M2\000"
	.space	1
.LC399:
	.ascii	"HUSTR_E1M3\000"
	.space	1
.LC400:
	.ascii	"HUSTR_E1M4\000"
	.space	1
.LC401:
	.ascii	"HUSTR_E1M5\000"
	.space	1
.LC402:
	.ascii	"HUSTR_E1M6\000"
	.space	1
.LC403:
	.ascii	"HUSTR_E1M7\000"
	.space	1
.LC404:
	.ascii	"HUSTR_E1M8\000"
	.space	1
.LC405:
	.ascii	"HUSTR_E1M9\000"
	.space	1
.LC406:
	.ascii	"HUSTR_E2M1\000"
	.space	1
.LC407:
	.ascii	"HUSTR_E2M2\000"
	.space	1
.LC408:
	.ascii	"HUSTR_E2M3\000"
	.space	1
.LC409:
	.ascii	"HUSTR_E2M4\000"
	.space	1
.LC410:
	.ascii	"HUSTR_E2M5\000"
	.space	1
.LC411:
	.ascii	"HUSTR_E2M6\000"
	.space	1
.LC412:
	.ascii	"HUSTR_E2M7\000"
	.space	1
.LC413:
	.ascii	"HUSTR_E2M8\000"
	.space	1
.LC414:
	.ascii	"HUSTR_E2M9\000"
	.space	1
.LC415:
	.ascii	"HUSTR_E3M1\000"
	.space	1
.LC416:
	.ascii	"HUSTR_E3M2\000"
	.space	1
.LC417:
	.ascii	"HUSTR_E3M3\000"
	.space	1
.LC418:
	.ascii	"HUSTR_E3M4\000"
	.space	1
.LC419:
	.ascii	"HUSTR_E3M5\000"
	.space	1
.LC420:
	.ascii	"HUSTR_E3M6\000"
	.space	1
.LC421:
	.ascii	"HUSTR_E3M7\000"
	.space	1
.LC422:
	.ascii	"HUSTR_E3M8\000"
	.space	1
.LC423:
	.ascii	"HUSTR_E3M9\000"
	.space	1
.LC424:
	.ascii	"HUSTR_E4M1\000"
	.space	1
.LC425:
	.ascii	"HUSTR_E4M2\000"
	.space	1
.LC426:
	.ascii	"HUSTR_E4M3\000"
	.space	1
.LC427:
	.ascii	"HUSTR_E4M4\000"
	.space	1
.LC428:
	.ascii	"HUSTR_E4M5\000"
	.space	1
.LC429:
	.ascii	"HUSTR_E4M6\000"
	.space	1
.LC430:
	.ascii	"HUSTR_E4M7\000"
	.space	1
.LC431:
	.ascii	"HUSTR_E4M8\000"
	.space	1
.LC432:
	.ascii	"HUSTR_E4M9\000"
	.space	1
.LC433:
	.ascii	"HUSTR_1\000"
.LC434:
	.ascii	"HUSTR_2\000"
.LC435:
	.ascii	"HUSTR_3\000"
.LC436:
	.ascii	"HUSTR_4\000"
.LC437:
	.ascii	"HUSTR_5\000"
.LC438:
	.ascii	"HUSTR_6\000"
.LC439:
	.ascii	"HUSTR_7\000"
.LC440:
	.ascii	"HUSTR_8\000"
.LC441:
	.ascii	"HUSTR_9\000"
.LC442:
	.ascii	"HUSTR_10\000"
	.space	3
.LC443:
	.ascii	"HUSTR_11\000"
	.space	3
.LC444:
	.ascii	"HUSTR_12\000"
	.space	3
.LC445:
	.ascii	"HUSTR_13\000"
	.space	3
.LC446:
	.ascii	"HUSTR_14\000"
	.space	3
.LC447:
	.ascii	"HUSTR_15\000"
	.space	3
.LC448:
	.ascii	"HUSTR_16\000"
	.space	3
.LC449:
	.ascii	"HUSTR_17\000"
	.space	3
.LC450:
	.ascii	"HUSTR_18\000"
	.space	3
.LC451:
	.ascii	"HUSTR_19\000"
	.space	3
.LC452:
	.ascii	"HUSTR_20\000"
	.space	3
.LC453:
	.ascii	"HUSTR_21\000"
	.space	3
.LC454:
	.ascii	"HUSTR_22\000"
	.space	3
.LC455:
	.ascii	"HUSTR_23\000"
	.space	3
.LC456:
	.ascii	"HUSTR_24\000"
	.space	3
.LC457:
	.ascii	"HUSTR_25\000"
	.space	3
.LC458:
	.ascii	"HUSTR_26\000"
	.space	3
.LC459:
	.ascii	"HUSTR_27\000"
	.space	3
.LC460:
	.ascii	"HUSTR_28\000"
	.space	3
.LC461:
	.ascii	"HUSTR_29\000"
	.space	3
.LC462:
	.ascii	"HUSTR_30\000"
	.space	3
.LC463:
	.ascii	"HUSTR_31\000"
	.space	3
.LC464:
	.ascii	"HUSTR_32\000"
	.space	3
.LC465:
	.ascii	"PHUSTR_1\000"
	.space	3
.LC466:
	.ascii	"PHUSTR_2\000"
	.space	3
.LC467:
	.ascii	"PHUSTR_3\000"
	.space	3
.LC468:
	.ascii	"PHUSTR_4\000"
	.space	3
.LC469:
	.ascii	"PHUSTR_5\000"
	.space	3
.LC470:
	.ascii	"PHUSTR_6\000"
	.space	3
.LC471:
	.ascii	"PHUSTR_7\000"
	.space	3
.LC472:
	.ascii	"PHUSTR_8\000"
	.space	3
.LC473:
	.ascii	"PHUSTR_9\000"
	.space	3
.LC474:
	.ascii	"PHUSTR_10\000"
	.space	2
.LC475:
	.ascii	"PHUSTR_11\000"
	.space	2
.LC476:
	.ascii	"PHUSTR_12\000"
	.space	2
.LC477:
	.ascii	"PHUSTR_13\000"
	.space	2
.LC478:
	.ascii	"PHUSTR_14\000"
	.space	2
.LC479:
	.ascii	"PHUSTR_15\000"
	.space	2
.LC480:
	.ascii	"PHUSTR_16\000"
	.space	2
.LC481:
	.ascii	"PHUSTR_17\000"
	.space	2
.LC482:
	.ascii	"PHUSTR_18\000"
	.space	2
.LC483:
	.ascii	"PHUSTR_19\000"
	.space	2
.LC484:
	.ascii	"PHUSTR_20\000"
	.space	2
.LC485:
	.ascii	"PHUSTR_21\000"
	.space	2
.LC486:
	.ascii	"PHUSTR_22\000"
	.space	2
.LC487:
	.ascii	"PHUSTR_23\000"
	.space	2
.LC488:
	.ascii	"PHUSTR_24\000"
	.space	2
.LC489:
	.ascii	"PHUSTR_25\000"
	.space	2
.LC490:
	.ascii	"PHUSTR_26\000"
	.space	2
.LC491:
	.ascii	"PHUSTR_27\000"
	.space	2
.LC492:
	.ascii	"PHUSTR_28\000"
	.space	2
.LC493:
	.ascii	"PHUSTR_29\000"
	.space	2
.LC494:
	.ascii	"PHUSTR_30\000"
	.space	2
.LC495:
	.ascii	"PHUSTR_31\000"
	.space	2
.LC496:
	.ascii	"PHUSTR_32\000"
	.space	2
.LC497:
	.ascii	"THUSTR_1\000"
	.space	3
.LC498:
	.ascii	"THUSTR_2\000"
	.space	3
.LC499:
	.ascii	"THUSTR_3\000"
	.space	3
.LC500:
	.ascii	"THUSTR_4\000"
	.space	3
.LC501:
	.ascii	"THUSTR_5\000"
	.space	3
.LC502:
	.ascii	"THUSTR_6\000"
	.space	3
.LC503:
	.ascii	"THUSTR_7\000"
	.space	3
.LC504:
	.ascii	"THUSTR_8\000"
	.space	3
.LC505:
	.ascii	"THUSTR_9\000"
	.space	3
.LC506:
	.ascii	"THUSTR_10\000"
	.space	2
.LC507:
	.ascii	"THUSTR_11\000"
	.space	2
.LC508:
	.ascii	"THUSTR_12\000"
	.space	2
.LC509:
	.ascii	"THUSTR_13\000"
	.space	2
.LC510:
	.ascii	"THUSTR_14\000"
	.space	2
.LC511:
	.ascii	"THUSTR_15\000"
	.space	2
.LC512:
	.ascii	"THUSTR_16\000"
	.space	2
.LC513:
	.ascii	"THUSTR_17\000"
	.space	2
.LC514:
	.ascii	"THUSTR_18\000"
	.space	2
.LC515:
	.ascii	"THUSTR_19\000"
	.space	2
.LC516:
	.ascii	"THUSTR_20\000"
	.space	2
.LC517:
	.ascii	"THUSTR_21\000"
	.space	2
.LC518:
	.ascii	"THUSTR_22\000"
	.space	2
.LC519:
	.ascii	"THUSTR_23\000"
	.space	2
.LC520:
	.ascii	"THUSTR_24\000"
	.space	2
.LC521:
	.ascii	"THUSTR_25\000"
	.space	2
.LC522:
	.ascii	"THUSTR_26\000"
	.space	2
.LC523:
	.ascii	"THUSTR_27\000"
	.space	2
.LC524:
	.ascii	"THUSTR_28\000"
	.space	2
.LC525:
	.ascii	"THUSTR_29\000"
	.space	2
.LC526:
	.ascii	"THUSTR_30\000"
	.space	2
.LC527:
	.ascii	"THUSTR_31\000"
	.space	2
.LC528:
	.ascii	"THUSTR_32\000"
	.space	2
.LC529:
	.ascii	"HUSTR_CHATMACRO1\000"
	.space	3
.LC530:
	.ascii	"HUSTR_CHATMACRO2\000"
	.space	3
.LC531:
	.ascii	"HUSTR_CHATMACRO3\000"
	.space	3
.LC532:
	.ascii	"HUSTR_CHATMACRO4\000"
	.space	3
.LC533:
	.ascii	"HUSTR_CHATMACRO5\000"
	.space	3
.LC534:
	.ascii	"HUSTR_CHATMACRO6\000"
	.space	3
.LC535:
	.ascii	"HUSTR_CHATMACRO7\000"
	.space	3
.LC536:
	.ascii	"HUSTR_CHATMACRO8\000"
	.space	3
.LC537:
	.ascii	"HUSTR_CHATMACRO9\000"
	.space	3
.LC538:
	.ascii	"HUSTR_CHATMACRO0\000"
	.space	3
.LC539:
	.ascii	"HUSTR_TALKTOSELF1\000"
	.space	2
.LC540:
	.ascii	"HUSTR_TALKTOSELF2\000"
	.space	2
.LC541:
	.ascii	"HUSTR_TALKTOSELF3\000"
	.space	2
.LC542:
	.ascii	"HUSTR_TALKTOSELF4\000"
	.space	2
.LC543:
	.ascii	"HUSTR_TALKTOSELF5\000"
	.space	2
.LC544:
	.ascii	"HUSTR_MESSAGESENT\000"
	.space	2
.LC545:
	.ascii	"HUSTR_PLRGREEN\000"
	.space	1
.LC546:
	.ascii	"HUSTR_PLRINDIGO\000"
.LC547:
	.ascii	"HUSTR_PLRBROWN\000"
	.space	1
.LC548:
	.ascii	"HUSTR_PLRRED\000"
	.space	3
.LC549:
	.ascii	"AMSTR_FOLLOWON\000"
	.space	1
.LC550:
	.ascii	"AMSTR_FOLLOWOFF\000"
.LC551:
	.ascii	"AMSTR_GRIDON\000"
	.space	3
.LC552:
	.ascii	"AMSTR_GRIDOFF\000"
	.space	2
.LC553:
	.ascii	"AMSTR_MARKEDSPOT\000"
	.space	3
.LC554:
	.ascii	"AMSTR_MARKSCLEARED\000"
	.space	1
.LC555:
	.ascii	"STSTR_MUS\000"
	.space	2
.LC556:
	.ascii	"STSTR_NOMUS\000"
.LC557:
	.ascii	"STSTR_DQDON\000"
.LC558:
	.ascii	"STSTR_DQDOFF\000"
	.space	3
.LC559:
	.ascii	"STSTR_KFAADDED\000"
	.space	1
.LC560:
	.ascii	"STSTR_FAADDED\000"
	.space	2
.LC561:
	.ascii	"STSTR_NCON\000"
	.space	1
.LC562:
	.ascii	"STSTR_NCOFF\000"
.LC563:
	.ascii	"STSTR_BEHOLD\000"
	.space	3
.LC564:
	.ascii	"STSTR_BEHOLDX\000"
	.space	2
.LC565:
	.ascii	"STSTR_CHOPPERS\000"
	.space	1
.LC566:
	.ascii	"STSTR_CLEV\000"
	.space	1
.LC567:
	.ascii	"STSTR_COMPON\000"
	.space	3
.LC568:
	.ascii	"STSTR_COMPOFF\000"
	.space	2
.LC569:
	.ascii	"E1TEXT\000"
	.space	1
.LC570:
	.ascii	"E2TEXT\000"
	.space	1
.LC571:
	.ascii	"E3TEXT\000"
	.space	1
.LC572:
	.ascii	"E4TEXT\000"
	.space	1
.LC573:
	.ascii	"C1TEXT\000"
	.space	1
.LC574:
	.ascii	"C2TEXT\000"
	.space	1
.LC575:
	.ascii	"C3TEXT\000"
	.space	1
.LC576:
	.ascii	"C4TEXT\000"
	.space	1
.LC577:
	.ascii	"C5TEXT\000"
	.space	1
.LC578:
	.ascii	"C6TEXT\000"
	.space	1
.LC579:
	.ascii	"P1TEXT\000"
	.space	1
.LC580:
	.ascii	"P2TEXT\000"
	.space	1
.LC581:
	.ascii	"P3TEXT\000"
	.space	1
.LC582:
	.ascii	"P4TEXT\000"
	.space	1
.LC583:
	.ascii	"P5TEXT\000"
	.space	1
.LC584:
	.ascii	"P6TEXT\000"
	.space	1
.LC585:
	.ascii	"T1TEXT\000"
	.space	1
.LC586:
	.ascii	"T2TEXT\000"
	.space	1
.LC587:
	.ascii	"T3TEXT\000"
	.space	1
.LC588:
	.ascii	"T4TEXT\000"
	.space	1
.LC589:
	.ascii	"T5TEXT\000"
	.space	1
.LC590:
	.ascii	"T6TEXT\000"
	.space	1
.LC591:
	.ascii	"CC_ZOMBIE\000"
	.space	2
.LC592:
	.ascii	"CC_SHOTGUN\000"
	.space	1
.LC593:
	.ascii	"CC_HEAVY\000"
	.space	3
.LC594:
	.ascii	"CC_IMP\000"
	.space	1
.LC595:
	.ascii	"CC_DEMON\000"
	.space	3
.LC596:
	.ascii	"CC_LOST\000"
.LC597:
	.ascii	"CC_CACO\000"
.LC598:
	.ascii	"CC_HELL\000"
.LC599:
	.ascii	"CC_BARON\000"
	.space	3
.LC600:
	.ascii	"CC_ARACH\000"
	.space	3
.LC601:
	.ascii	"CC_PAIN\000"
.LC602:
	.ascii	"CC_REVEN\000"
	.space	3
.LC603:
	.ascii	"CC_MANCU\000"
	.space	3
.LC604:
	.ascii	"CC_ARCH\000"
.LC605:
	.ascii	"CC_SPIDER\000"
	.space	2
.LC606:
	.ascii	"CC_CYBER\000"
	.space	3
.LC607:
	.ascii	"CC_HERO\000"
.LC608:
	.ascii	"BGFLATE1\000"
	.space	3
.LC609:
	.ascii	"BGFLATE2\000"
	.space	3
.LC610:
	.ascii	"BGFLATE3\000"
	.space	3
.LC611:
	.ascii	"BGFLATE4\000"
	.space	3
.LC612:
	.ascii	"BGFLAT06\000"
	.space	3
.LC613:
	.ascii	"BGFLAT11\000"
	.space	3
.LC614:
	.ascii	"BGFLAT20\000"
	.space	3
.LC615:
	.ascii	"BGFLAT30\000"
	.space	3
.LC616:
	.ascii	"BGFLAT15\000"
	.space	3
.LC617:
	.ascii	"BGFLAT31\000"
	.space	3
.LC618:
	.ascii	"BGCASTCALL\000"
	.space	1
.LC619:
	.ascii	"STARTUP1\000"
	.space	3
.LC620:
	.ascii	"STARTUP2\000"
	.space	3
.LC621:
	.ascii	"STARTUP3\000"
	.space	3
.LC622:
	.ascii	"STARTUP4\000"
	.space	3
.LC623:
	.ascii	"STARTUP5\000"
	.space	3
.LC624:
	.ascii	"SAVEGAMENAME\000"
	.space	3
.LC625:
	.ascii	"prbmsav\000"
.LC626:
	.ascii	"BOSSBACK\000"
	.space	3
.LC627:
	.ascii	"RROCK19\000"
.LC628:
	.ascii	"RROCK13\000"
.LC629:
	.ascii	"RROCK17\000"
.LC630:
	.ascii	"RROCK07\000"
.LC631:
	.ascii	"RROCK14\000"
.LC632:
	.ascii	"SLIME16\000"
.LC633:
	.ascii	"MFLR8_3\000"
.LC634:
	.ascii	"MFLR8_4\000"
.LC635:
	.ascii	"SFLR6_1\000"
.LC636:
	.ascii	"FLOOR4_8\000"
	.space	3
.LC637:
	.ascii	"OUR HERO\000"
	.space	3
.LC638:
	.ascii	"THE CYBERDEMON\000"
	.space	1
.LC639:
	.ascii	"THE SPIDER MASTERMIND\000"
	.space	2
.LC640:
	.ascii	"ARCH-VILE\000"
	.space	2
.LC641:
	.ascii	"MANCUBUS\000"
	.space	3
.LC642:
	.ascii	"REVENANT\000"
	.space	3
.LC643:
	.ascii	"PAIN ELEMENTAL\000"
	.space	1
.LC644:
	.ascii	"ARACHNOTRON\000"
.LC645:
	.ascii	"BARON OF HELL\000"
	.space	2
.LC646:
	.ascii	"HELL KNIGHT\000"
.LC647:
	.ascii	"CACODEMON\000"
	.space	2
.LC648:
	.ascii	"LOST SOUL\000"
	.space	2
.LC649:
	.ascii	"DEMON\000"
	.space	2
.LC650:
	.ascii	"IMP\000"
.LC651:
	.ascii	"HEAVY WEAPON DUDE\000"
	.space	2
.LC652:
	.ascii	"SHOTGUN GUY\000"
.LC653:
	.ascii	"ZOMBIEMAN\000"
	.space	2
.LC654:
	.ascii	"Time for a vacation. You've burst the\012bowels of "
	.ascii	"hell and by golly you're ready\012for a break. You "
	.ascii	"mutter to yourself,\012Maybe someone else can kick "
	.ascii	"Hell's ass\012next time around. Ahead lies a quiet "
	.ascii	"town,\012with peaceful flowing water, quaint\012bui"
	.ascii	"ldings, and presumably no Hellspawn.\012\012As you "
	.ascii	"step off the transport, you hear\012the stomp of a "
	.ascii	"cyberdemon's iron shoe.\000"
	.space	2
.LC655:
	.ascii	"What now? Looks totally different. Kind\012of like "
	.ascii	"King Tut's condo. Well,\012whatever's here can't be"
	.ascii	" any worse\012than usual. Can it?  Or maybe it's be"
	.ascii	"st\012to let sleeping gods lie..\000"
	.space	2
.LC656:
	.ascii	"Suddenly, all is silent, from one horizon\012to the"
	.ascii	" other. The agonizing echo of Hell\012fades away, t"
	.ascii	"he nightmare sky turns to\012blue, the heaps of mon"
	.ascii	"ster corpses start \012to evaporate along with the "
	.ascii	"evil stench \012that filled the air. Jeeze, maybe y"
	.ascii	"ou've\012done it. Have you really won?\012\012Somet"
	.ascii	"hing rumbles in the distance.\012A blue light begin"
	.ascii	"s to glow inside the\012ruined skull of the demon-s"
	.ascii	"pitter.\000"
	.space	2
.LC657:
	.ascii	"The vista opening ahead looks real damn\012familiar"
	.ascii	". Smells familiar, too -- like\012fried excrement. "
	.ascii	"You didn't like this\012place before, and you sure "
	.ascii	"as hell ain't\012planning to like it now. The more "
	.ascii	"you\012brood on it, the madder you get.\012Hefting "
	.ascii	"your gun, an evil grin trickles\012onto your face. "
	.ascii	"Time to take some names.\000"
	.space	2
.LC658:
	.ascii	"You hear the grinding of heavy machinery\012ahead. "
	.ascii	" You sure hope they're not stamping\012out new hell"
	.ascii	"spawn, but you're ready to\012ream out a whole herd"
	.ascii	" if you have to.\012They might be planning a blood "
	.ascii	"feast, but\012you feel about as mean as two thousan"
	.ascii	"d\012maniacs packed into one mad killer.\012\012You"
	.ascii	" don't plan to go down easy.\000"
	.space	1
.LC659:
	.ascii	"You've fought your way out of the infested\012exper"
	.ascii	"imental labs.   It seems that UAC has\012once again"
	.ascii	" gulped it down.  With their\012high turnover, it m"
	.ascii	"ust be hard for poor\012old UAC to buy corporate he"
	.ascii	"alth insurance\012nowadays..\012\012Ahead lies the "
	.ascii	"military complex, now\012swarming with diseased hor"
	.ascii	"rors hot to get\012their teeth into you. With luck,"
	.ascii	" the\012complex still has some warlike ordnance\012"
	.ascii	"laying around.\000"
	.space	2
.LC660:
	.ascii	"Betcha wondered just what WAS the hardest\012level "
	.ascii	"we had ready for ya?  Now you know.\012No one gets "
	.ascii	"out alive.\000"
	.space	1
.LC661:
	.ascii	"You've found the second-hardest level we\012got. Ho"
	.ascii	"pe you have a saved game a level or\012two previous"
	.ascii	".  If not, be prepared to die\012aplenty. For maste"
	.ascii	"r marines only.\000"
.LC662:
	.ascii	"The Gatekeeper's evil face is splattered\012all ove"
	.ascii	"r the place.  As its tattered corpse\012collapses, "
	.ascii	"an inverted Gate forms and\012sucks down the shards"
	.ascii	" of the last\012prototype Accelerator, not to menti"
	.ascii	"on the\012few remaining demons.  You're done. Hell\012"
	.ascii	"has gone back to pounding bad dead folks \012instea"
	.ascii	"d of good live ones.  Remember to\012tell your gran"
	.ascii	"dkids to put a rocket\012launcher in your coffin. I"
	.ascii	"f you go to Hell\012when you die, you'll need it fo"
	.ascii	"r some\012final cleaning-up ...\000"
	.space	3
.LC663:
	.ascii	"You've bashed and battered your way into\012the hea"
	.ascii	"rt of the devil-hive.  Time for a\012Search-and-Des"
	.ascii	"troy mission, aimed at the\012Gatekeeper, whose fou"
	.ascii	"l offspring is\012cascading to Earth.  Yeah, he's b"
	.ascii	"ad. But\012you know who's worse!\012\012Grinning ev"
	.ascii	"illy, you check your gear, and\012get ready to give"
	.ascii	" the bastard a little Hell\012of your own making!\000"
	.space	3
.LC664:
	.ascii	"Even the deadly Arch-Vile labyrinth could\012not st"
	.ascii	"op you, and you've gotten to the\012prototype Accel"
	.ascii	"erator which is soon\012efficiently and permanently"
	.ascii	" deactivated.\012\012You're good at that kind of th"
	.ascii	"ing.\000"
	.space	2
.LC665:
	.ascii	"You gloat over the steaming carcass of the\012Guard"
	.ascii	"ian.  With its death, you've wrested\012the Acceler"
	.ascii	"ator from the stinking claws\012of Hell.  You relax"
	.ascii	" and glance around the\012room.  Damn!  There was s"
	.ascii	"upposed to be at\012least one working prototype, bu"
	.ascii	"t you can't\012see it. The demons must have taken i"
	.ascii	"t.\012\012You must find the prototype, or all your\012"
	.ascii	"struggles will have been wasted. Keep\012moving, ke"
	.ascii	"ep fighting, keep killing.\012Oh yes, keep living, "
	.ascii	"too.\000"
	.space	2
.LC666:
	.ascii	"CONGRATULATIONS, YOU'VE FOUND THE\012SUPER SECRET L"
	.ascii	"EVEL!  YOU'D BETTER\012BLAZE THROUGH THIS ONE!\012\000"
	.space	3
.LC667:
	.ascii	"CONGRATULATIONS, YOU'VE FOUND THE SECRET\012LEVEL! "
	.ascii	"LOOKS LIKE IT'S BEEN BUILT BY\012HUMANS, RATHER THA"
	.ascii	"N DEMONS. YOU WONDER\012WHO THE INMATES OF THIS COR"
	.ascii	"NER OF HELL\012WILL BE.\000"
	.space	3
.LC668:
	.ascii	"THE HORRENDOUS VISAGE OF THE BIGGEST\012DEMON YOU'V"
	.ascii	"E EVER SEEN CRUMBLES BEFORE\012YOU, AFTER YOU PUMP "
	.ascii	"YOUR ROCKETS INTO\012HIS EXPOSED BRAIN. THE MONSTER"
	.ascii	" SHRIVELS\012UP AND DIES, ITS THRASHING LIMBS\012DE"
	.ascii	"VASTATING UNTOLD MILES OF HELL'S\012SURFACE.\012\012"
	.ascii	"YOU'VE DONE IT. THE INVASION IS OVER.\012EARTH IS S"
	.ascii	"AVED. HELL IS A WRECK. YOU\012WONDER WHERE BAD FOLK"
	.ascii	"S WILL GO WHEN THEY\012DIE, NOW. WIPING THE SWEAT F"
	.ascii	"ROM YOUR\012FOREHEAD YOU BEGIN THE LONG TREK BACK\012"
	.ascii	"HOME. REBUILDING EARTH OUGHT TO BE A\012LOT MORE FU"
	.ascii	"N THAN RUINING IT WAS.\012\000"
	.space	1
.LC669:
	.ascii	"YOU ARE AT THE CORRUPT HEART OF THE CITY,\012SURROU"
	.ascii	"NDED BY THE CORPSES OF YOUR ENEMIES.\012YOU SEE NO "
	.ascii	"WAY TO DESTROY THE CREATURES'\012ENTRYWAY ON THIS S"
	.ascii	"IDE, SO YOU CLENCH YOUR\012TEETH AND PLUNGE THROUGH"
	.ascii	" IT.\012\012THERE MUST BE A WAY TO CLOSE IT ON THE\012"
	.ascii	"OTHER SIDE. WHAT DO YOU CARE IF YOU'VE\012GOT TO GO"
	.ascii	" THROUGH HELL TO GET TO IT?\000"
	.space	3
.LC670:
	.ascii	"YOU HAVE WON! YOUR VICTORY HAS ENABLED\012HUMANKIND"
	.ascii	" TO EVACUATE EARTH AND ESCAPE\012THE NIGHTMARE.  NO"
	.ascii	"W YOU ARE THE ONLY\012HUMAN LEFT ON THE FACE OF THE"
	.ascii	" PLANET.\012CANNIBAL MUTATIONS, CARNIVOROUS ALIENS,"
	.ascii	"\012AND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\012YO"
	.ascii	"U SIT BACK AND WAIT FOR DEATH, CONTENT\012THAT YOU "
	.ascii	"HAVE SAVED YOUR SPECIES.\012\012BUT THEN, EARTH CON"
	.ascii	"TROL BEAMS DOWN A\012MESSAGE FROM SPACE: \"SENSORS "
	.ascii	"HAVE LOCATED\012THE SOURCE OF THE ALIEN INVASION. I"
	.ascii	"F YOU\012GO THERE, YOU MAY BE ABLE TO BLOCK THEIR\012"
	.ascii	"ENTRY.  THE ALIEN BASE IS IN THE HEART OF\012YOUR O"
	.ascii	"WN HOME CITY, NOT FAR FROM THE\012STARPORT.\" SLOWL"
	.ascii	"Y AND PAINFULLY YOU GET\012UP AND RETURN TO THE FRA"
	.ascii	"Y.\000"
	.space	2
.LC671:
	.ascii	"YOU HAVE ENTERED DEEPLY INTO THE INFESTED\012STARPO"
	.ascii	"RT. BUT SOMETHING IS WRONG. THE\012MONSTERS HAVE BR"
	.ascii	"OUGHT THEIR OWN REALITY\012WITH THEM, AND THE STARP"
	.ascii	"ORT'S TECHNOLOGY\012IS BEING SUBVERTED BY THEIR PRE"
	.ascii	"SENCE.\012\012AHEAD, YOU SEE AN OUTPOST OF HELL, A\012"
	.ascii	"FORTIFIED ZONE. IF YOU CAN GET PAST IT,\012YOU CAN "
	.ascii	"PENETRATE INTO THE HAUNTED HEART\012OF THE STARBASE"
	.ascii	" AND FIND THE CONTROLLING\012SWITCH WHICH HOLDS EAR"
	.ascii	"TH'S POPULATION\012HOSTAGE.\000"
	.space	2
.LC672:
	.ascii	"the spider mastermind must have sent forth\012its l"
	.ascii	"egions of hellspawn before your\012final confrontat"
	.ascii	"ion with that terrible\012beast from hell.  but you"
	.ascii	" stepped forward\012and brought forth eternal damna"
	.ascii	"tion and\012suffering upon the horde as a true hero"
	.ascii	"\012would in the face of something so evil.\012\012"
	.ascii	"besides, someone was gonna pay for what\012happened"
	.ascii	" to daisy, your pet rabbit.\012\012but now, you see"
	.ascii	" spread before you more\012potential pain and gibbi"
	.ascii	"tude as a nation\012of demons run amok among our ci"
	.ascii	"ties.\012\012next stop, hell on earth!\000"
.LC673:
	.ascii	"The loathsome spiderdemon that\012masterminded the "
	.ascii	"invasion of the moon\012bases and caused so much de"
	.ascii	"ath has had\012its ass kicked for all time.\012\012"
	.ascii	"A hidden doorway opens and you enter.\012You've pro"
	.ascii	"ven too tough for Hell to\012contain, and now Hell "
	.ascii	"at last plays\012fair -- for you emerge from the do"
	.ascii	"or\012to see the green fields of Earth!\012Home at "
	.ascii	"last.\012\012You wonder what's been happening on\012"
	.ascii	"Earth while you were battling evil\012unleashed. It"
	.ascii	"'s good that no Hell-\012spawn could have come thro"
	.ascii	"ugh that\012door with you ...\000"
	.space	3
.LC674:
	.ascii	"You've done it! The hideous cyber-\012demon lord th"
	.ascii	"at ruled the lost Deimos\012moon base has been slai"
	.ascii	"n and you\012are triumphant! But ... where are\012y"
	.ascii	"ou? You clamber to the edge of the\012moon and look"
	.ascii	" down to see the awful\012truth.\012\012Deimos floa"
	.ascii	"ts above Hell itself!\012You've never heard of anyo"
	.ascii	"ne escaping\012from Hell, but you'll make the basta"
	.ascii	"rds\012sorry they ever heard of you! Quickly,\012yo"
	.ascii	"u rappel down to  the surface of\012Hell.\012\012No"
	.ascii	"w, it's on to the final chapter of\012DOOM! -- Infe"
	.ascii	"rno.\000"
	.space	1
.LC675:
	.ascii	"Once you beat the big badasses and\012clean out the"
	.ascii	" moon base you're supposed\012to win, aren't you? A"
	.ascii	"ren't you? Where's\012your fat reward and ticket ho"
	.ascii	"me? What\012the hell is this? It's not supposed to\012"
	.ascii	"end this way!\012\012It stinks like rotten meat, bu"
	.ascii	"t looks\012like the lost Deimos base.  Looks like\012"
	.ascii	"you're stuck on The Shores of Hell.\012The only way"
	.ascii	" out is through.\012\012To continue the DOOM experi"
	.ascii	"ence, play\012The Shores of Hell and its amazing\012"
	.ascii	"sequel, Inferno!\012\000"
	.space	3
.LC676:
	.ascii	"Compatibility Mode Off\000"
	.space	1
.LC677:
	.ascii	"Compatibility Mode On\000"
	.space	2
.LC678:
	.ascii	"Changing Level...\000"
	.space	2
.LC679:
	.ascii	"... doesn't suck - GM\000"
	.space	2
.LC680:
	.ascii	"Power-up Toggled\000"
	.space	3
.LC681:
	.ascii	"inVuln, Str, Inviso, Rad, Allmap, or Lite-amp\000"
	.space	2
.LC682:
	.ascii	"No Clipping Mode OFF\000"
	.space	3
.LC683:
	.ascii	"No Clipping Mode ON\000"
.LC684:
	.ascii	"Ammo (no keys) Added\000"
	.space	3
.LC685:
	.ascii	"Very Happy Ammo Added\000"
	.space	2
.LC686:
	.ascii	"Degreelessness Mode Off\000"
.LC687:
	.ascii	"Degreelessness Mode On\000"
	.space	1
.LC688:
	.ascii	"IMPOSSIBLE SELECTION\000"
	.space	3
.LC689:
	.ascii	"Music Change\000"
	.space	3
.LC690:
	.ascii	"Overlay Mode OFF\000"
	.space	3
.LC691:
	.ascii	"Overlay Mode ON\000"
.LC692:
	.ascii	"Rotate Mode OFF\000"
.LC693:
	.ascii	"Rotate Mode ON\000"
	.space	1
.LC694:
	.ascii	"All Marks Cleared\000"
	.space	2
.LC695:
	.ascii	"Marked Spot\000"
.LC696:
	.ascii	"Grid OFF\000"
	.space	3
.LC697:
	.ascii	"Grid ON\000"
.LC698:
	.ascii	"Follow Mode OFF\000"
.LC699:
	.ascii	"Follow Mode ON\000"
	.space	1
.LC700:
	.ascii	"Player 4: \000"
	.space	1
.LC701:
	.ascii	"Player 3: \000"
	.space	1
.LC702:
	.ascii	"Player 2: \000"
	.space	1
.LC703:
	.ascii	"Player 1: \000"
	.space	1
.LC704:
	.ascii	"[Message Sent]\000"
	.space	1
.LC705:
	.ascii	"You've lost it...\000"
	.space	2
.LC706:
	.ascii	"You start to rave\000"
	.space	2
.LC707:
	.ascii	"You scare yourself\000"
	.space	1
.LC708:
	.ascii	"Who's there?\000"
	.space	3
.LC709:
	.ascii	"You mumble to yourself\000"
	.space	1
.LC710:
	.ascii	"No\000"
	.space	1
.LC711:
	.ascii	"Yes\000"
.LC712:
	.ascii	"I'll take care of it.\000"
	.space	2
.LC713:
	.ascii	"Come here!\000"
	.space	1
.LC714:
	.ascii	"Next time, scumbag...\000"
	.space	2
.LC715:
	.ascii	"You suck!\000"
	.space	2
.LC716:
	.ascii	"Help!\000"
	.space	2
.LC717:
	.ascii	"I'm not looking too good!\000"
	.space	2
.LC718:
	.ascii	"I'm OK.\000"
.LC719:
	.ascii	"I'm ready to kick butt!\000"
.LC720:
	.ascii	"level 32: caribbean\000"
.LC721:
	.ascii	"level 31: pharaoh\000"
	.space	2
.LC722:
	.ascii	"level 30: last call\000"
.LC723:
	.ascii	"level 29: river styx\000"
	.space	3
.LC724:
	.ascii	"level 28: heck\000"
	.space	1
.LC725:
	.ascii	"level 27: mount pain\000"
	.space	3
.LC726:
	.ascii	"level 26: ballistyx\000"
.LC727:
	.ascii	"level 25: baron's den\000"
	.space	2
.LC728:
	.ascii	"level 24: quarry\000"
	.space	3
.LC729:
	.ascii	"level 23: lunar mining project\000"
	.space	1
.LC730:
	.ascii	"level 22: habitat\000"
	.space	2
.LC731:
	.ascii	"level 21: administration center\000"
.LC732:
	.ascii	"level 20: central processing\000"
	.space	3
.LC733:
	.ascii	"level 19: shipping/respawning\000"
	.space	2
.LC734:
	.ascii	"level 18: mill\000"
	.space	1
.LC735:
	.ascii	"level 17: processing area\000"
	.space	2
.LC736:
	.ascii	"level 16: deepest reaches\000"
	.space	2
.LC737:
	.ascii	"level 15: dead zone\000"
.LC738:
	.ascii	"level 14: steel works\000"
	.space	2
.LC739:
	.ascii	"level 13: nukage processing\000"
.LC740:
	.ascii	"level 12: crater\000"
	.space	3
.LC741:
	.ascii	"level 11: storage facility\000"
	.space	1
.LC742:
	.ascii	"level 10: redemption\000"
	.space	3
.LC743:
	.ascii	"level 9: stronghold\000"
.LC744:
	.ascii	"level 8: metal\000"
	.space	1
.LC745:
	.ascii	"level 7: prison\000"
.LC746:
	.ascii	"level 6: open season\000"
	.space	3
.LC747:
	.ascii	"level 5: hanger\000"
.LC748:
	.ascii	"level 4: wormhole\000"
	.space	2
.LC749:
	.ascii	"level 3: power control\000"
	.space	1
.LC750:
	.ascii	"level 2: human bbq\000"
	.space	1
.LC751:
	.ascii	"level 1: system control\000"
.LC752:
	.ascii	"level 32: go 2 it\000"
	.space	2
.LC753:
	.ascii	"level 31: cyberden\000"
	.space	1
.LC754:
	.ascii	"level 30: the gateway of hell\000"
	.space	2
.LC755:
	.ascii	"level 29: odyssey of noises\000"
.LC756:
	.ascii	"level 28: the sewers\000"
	.space	3
.LC757:
	.ascii	"level 27: anti-christ\000"
	.space	2
.LC758:
	.ascii	"level 26: bunker\000"
	.space	3
.LC759:
	.ascii	"level 25: the temple of darkness\000"
	.space	3
.LC760:
	.ascii	"level 24: the final frontier\000"
	.space	3
.LC761:
	.ascii	"level 23: tombstone\000"
.LC762:
	.ascii	"level 22: impossible mission\000"
	.space	3
.LC763:
	.ascii	"level 21: slayer\000"
	.space	3
.LC764:
	.ascii	"level 20: the death domain\000"
	.space	1
.LC765:
	.ascii	"level 19: nme\000"
	.space	2
.LC766:
	.ascii	"level 18: neurosphere\000"
	.space	2
.LC767:
	.ascii	"level 17: compound\000"
	.space	1
.LC768:
	.ascii	"level 16: the omen\000"
	.space	1
.LC769:
	.ascii	"level 15: the twilight\000"
	.space	1
.LC770:
	.ascii	"level 14: genesis\000"
	.space	2
.LC771:
	.ascii	"level 13: the crypt\000"
.LC772:
	.ascii	"level 12: speed\000"
.LC773:
	.ascii	"level 11: hunted\000"
	.space	3
.LC774:
	.ascii	"level 10: onslaught\000"
.LC775:
	.ascii	"level 9: abattoire\000"
	.space	1
.LC776:
	.ascii	"level 8: realm\000"
	.space	1
.LC777:
	.ascii	"level 7: caughtyard\000"
.LC778:
	.ascii	"level 6: baron's lair\000"
	.space	2
.LC779:
	.ascii	"level 5: ghost town\000"
.LC780:
	.ascii	"level 4: caged\000"
	.space	1
.LC781:
	.ascii	"level 3: aztec\000"
	.space	1
.LC782:
	.ascii	"level 2: well of souls\000"
	.space	1
.LC783:
	.ascii	"level 1: congo\000"
	.space	1
.LC784:
	.ascii	"level 32: grosse\000"
	.space	3
.LC785:
	.ascii	"level 31: wolfenstein\000"
	.space	2
.LC786:
	.ascii	"level 30: icon of sin\000"
	.space	2
.LC787:
	.ascii	"level 29: the living end\000"
	.space	3
.LC788:
	.ascii	"level 28: the spirit world\000"
	.space	1
.LC789:
	.ascii	"level 27: monster condo\000"
.LC790:
	.ascii	"level 26: the abandoned mines\000"
	.space	2
.LC791:
	.ascii	"level 25: bloodfalls\000"
	.space	3
.LC792:
	.ascii	"level 24: the chasm\000"
.LC793:
	.ascii	"level 23: barrels o' fun\000"
	.space	3
.LC794:
	.ascii	"level 22: the catacombs\000"
.LC795:
	.ascii	"level 21: nirvana\000"
	.space	2
.LC796:
	.ascii	"level 20: gotcha!\000"
	.space	2
.LC797:
	.ascii	"level 19: the citadel\000"
	.space	2
.LC798:
	.ascii	"level 18: the courtyard\000"
.LC799:
	.ascii	"level 17: tenements\000"
.LC800:
	.ascii	"level 16: suburbs\000"
	.space	2
.LC801:
	.ascii	"level 15: industrial zone\000"
	.space	2
.LC802:
	.ascii	"level 14: the inmost dens\000"
	.space	2
.LC803:
	.ascii	"level 13: downtown\000"
	.space	1
.LC804:
	.ascii	"level 12: the factory\000"
	.space	2
.LC805:
	.ascii	"level 11: 'o' of destruction!\000"
	.space	2
.LC806:
	.ascii	"level 10: refueling base\000"
	.space	3
.LC807:
	.ascii	"level 9: the pit\000"
	.space	3
.LC808:
	.ascii	"level 8: tricks and traps\000"
	.space	2
.LC809:
	.ascii	"level 7: dead simple\000"
	.space	3
.LC810:
	.ascii	"level 6: the crusher\000"
	.space	3
.LC811:
	.ascii	"level 5: the waste tunnels\000"
	.space	1
.LC812:
	.ascii	"level 4: the focus\000"
	.space	1
.LC813:
	.ascii	"level 3: the gantlet\000"
	.space	3
.LC814:
	.ascii	"level 2: underhalls\000"
.LC815:
	.ascii	"level 1: entryway\000"
	.space	2
.LC816:
	.ascii	"E4M9: Fear\000"
	.space	1
.LC817:
	.ascii	"E4M8: Unto The Cruel\000"
	.space	3
.LC818:
	.ascii	"E4M7: And Hell Followed\000"
.LC819:
	.ascii	"E4M6: Against Thee Wickedly\000"
.LC820:
	.ascii	"E4M5: They Will Repent\000"
	.space	1
.LC821:
	.ascii	"E4M4: Unruly Evil\000"
	.space	2
.LC822:
	.ascii	"E4M3: Sever The Wicked\000"
	.space	1
.LC823:
	.ascii	"E4M2: Perfect Hatred\000"
	.space	3
.LC824:
	.ascii	"E4M1: Hell Beneath\000"
	.space	1
.LC825:
	.ascii	"E3M9: Warrens\000"
	.space	2
.LC826:
	.ascii	"E3M8: Dis\000"
	.space	2
.LC827:
	.ascii	"E3M7: Limbo\000"
.LC828:
	.ascii	"E3M6: Mt. Erebus\000"
	.space	3
.LC829:
	.ascii	"E3M5: Unholy Cathedral\000"
	.space	1
.LC830:
	.ascii	"E3M4: House of Pain\000"
.LC831:
	.ascii	"E3M3: Pandemonium\000"
	.space	2
.LC832:
	.ascii	"E3M2: Slough of Despair\000"
.LC833:
	.ascii	"E3M1: Hell Keep\000"
.LC834:
	.ascii	"E2M9: Fortress of Mystery\000"
	.space	2
.LC835:
	.ascii	"E2M8: Tower of Babel\000"
	.space	3
.LC836:
	.ascii	"E2M7: Spawning Vats\000"
.LC837:
	.ascii	"E2M6: Halls of the Damned\000"
	.space	2
.LC838:
	.ascii	"E2M5: Command Center\000"
	.space	3
.LC839:
	.ascii	"E2M4: Deimos Lab\000"
	.space	3
.LC840:
	.ascii	"E2M3: Refinery\000"
	.space	1
.LC841:
	.ascii	"E2M2: Containment Area\000"
	.space	1
.LC842:
	.ascii	"E2M1: Deimos Anomaly\000"
	.space	3
.LC843:
	.ascii	"E1M9: Military Base\000"
.LC844:
	.ascii	"E1M8: Phobos Anomaly\000"
	.space	3
.LC845:
	.ascii	"E1M7: Computer Station\000"
	.space	1
.LC846:
	.ascii	"E1M6: Central Processing\000"
	.space	3
.LC847:
	.ascii	"E1M5: Phobos Lab\000"
	.space	3
.LC848:
	.ascii	"E1M4: Command Control\000"
	.space	2
.LC849:
	.ascii	"E1M3: Toxin Refinery\000"
	.space	3
.LC850:
	.ascii	"E1M2: Nuclear Plant\000"
.LC851:
	.ascii	"E1M1: Hangar\000"
	.space	3
.LC852:
	.ascii	"[Message unsent]\000"
	.space	3
.LC853:
	.ascii	"game saved.\000"
.LC854:
	.ascii	"You need all six keys to open this door\000"
.LC855:
	.ascii	"You need all three keys to open this door\000"
	.space	2
.LC856:
	.ascii	"Any key will open this door\000"
.LC857:
	.ascii	"You need a yellow skull to open this door\000"
	.space	2
.LC858:
	.ascii	"You need a red skull to open this door\000"
	.space	1
.LC859:
	.ascii	"You need a blue skull to open this door\000"
.LC860:
	.ascii	"You need a yellow card to open this door\000"
	.space	3
.LC861:
	.ascii	"You need a red card to open this door\000"
	.space	2
.LC862:
	.ascii	"You need a blue card to open this door\000"
	.space	1
.LC863:
	.ascii	"You need a yellow key to open this door\000"
.LC864:
	.ascii	"You need a red key to open this door\000"
	.space	3
.LC865:
	.ascii	"You need a blue key to open this door\000"
	.space	2
.LC866:
	.ascii	"You need a yellow key to activate this object\000"
	.space	2
.LC867:
	.ascii	"You need a red key to activate this object\000"
	.space	1
.LC868:
	.ascii	"You need a blue key to activate this object\000"
.LC869:
	.ascii	"You got the super shotgun!\000"
	.space	1
.LC870:
	.ascii	"You got the shotgun!\000"
	.space	3
.LC871:
	.ascii	"You got the plasma gun!\000"
.LC872:
	.ascii	"You got the rocket launcher!\000"
	.space	3
.LC873:
	.ascii	"A chainsaw!  Find some meat!\000"
	.space	3
.LC874:
	.ascii	"You got the chaingun!\000"
	.space	2
.LC875:
	.ascii	"You got the BFG9000!  Oh, yes.\000"
	.space	1
.LC876:
	.ascii	"Picked up a backpack full of ammo!\000"
	.space	1
.LC877:
	.ascii	"Picked up a box of shotgun shells.\000"
	.space	1
.LC878:
	.ascii	"Picked up 4 shotgun shells.\000"
.LC879:
	.ascii	"Picked up an energy cell pack.\000"
	.space	1
.LC880:
	.ascii	"Picked up an energy cell.\000"
	.space	2
.LC881:
	.ascii	"Picked up a box of rockets.\000"
.LC882:
	.ascii	"Picked up a rocket.\000"
.LC883:
	.ascii	"Picked up a box of bullets.\000"
.LC884:
	.ascii	"Picked up a clip.\000"
	.space	2
.LC885:
	.ascii	"MegaSphere!\000"
.LC886:
	.ascii	"Light Amplification Visor\000"
	.space	2
.LC887:
	.ascii	"Computer Area Map\000"
	.space	2
.LC888:
	.ascii	"Radiation Shielding Suit\000"
	.space	3
.LC889:
	.ascii	"Partial Invisibility\000"
	.space	3
.LC890:
	.ascii	"Berserk!\000"
	.space	3
.LC891:
	.ascii	"Invulnerability!\000"
	.space	3
.LC892:
	.ascii	"Picked up a red skull key.\000"
	.space	1
.LC893:
	.ascii	"Picked up a yellow skull key.\000"
	.space	2
.LC894:
	.ascii	"Picked up a blue skull key.\000"
.LC895:
	.ascii	"Picked up a red keycard.\000"
	.space	3
.LC896:
	.ascii	"Picked up a yellow keycard.\000"
.LC897:
	.ascii	"Picked up a blue keycard.\000"
	.space	2
.LC898:
	.ascii	"Supercharge!\000"
	.space	3
.LC899:
	.ascii	"Picked up a medikit.\000"
	.space	3
.LC900:
	.ascii	"Picked up a medikit that you REALLY need!\000"
	.space	2
.LC901:
	.ascii	"Picked up a stimpack.\000"
	.space	2
.LC902:
	.ascii	"Picked up an armor bonus.\000"
	.space	2
.LC903:
	.ascii	"Picked up a health bonus.\000"
	.space	2
.LC904:
	.ascii	"Picked up the MegaArmor!\000"
	.space	3
.LC905:
	.ascii	"Picked up the armor.\000"
	.space	3
.LC906:
	.ascii	"empty slot\000"
	.space	1
.LC907:
	.ascii	"Gamma correction level 4\000"
	.space	3
.LC908:
	.ascii	"Gamma correction level 3\000"
	.space	3
.LC909:
	.ascii	"Gamma correction level 2\000"
	.space	3
.LC910:
	.ascii	"Gamma correction level 1\000"
	.space	3
.LC911:
	.ascii	"Gamma correction OFF\000"
	.space	3
.LC912:
	.ascii	"Low detail\000"
	.space	1
.LC913:
	.ascii	"High detail\000"
.LC914:
	.ascii	"(press y to quit)\000"
	.space	2
.LC915:
	.ascii	"are you sure you want to end the game?\012\012press"
	.ascii	" y or n.\000"
	.space	2
.LC916:
	.ascii	"you can't end a netgame!\012\012press a key.\000"
	.space	1
.LC917:
	.ascii	"Saving, Sit Tight!\000"
	.space	1
.LC918:
	.ascii	"Loading, Get Ready!\000"
.LC919:
	.ascii	"Messages ON\000"
.LC920:
	.ascii	"Messages OFF\000"
	.space	3
.LC921:
	.ascii	"this is the shareware version of doom.\012\012you n"
	.ascii	"eed to order the entire trilogy.\012\012press a key"
	.ascii	".\000"
.LC922:
	.ascii	"are you sure? this skill level\012isn't even remote"
	.ascii	"ly fair.\012\012press y or n.\000"
.LC923:
	.ascii	"restart the level?\012\012press y or n.\000"
	.space	2
.LC924:
	.ascii	"you can't start a new game\012while in a network ga"
	.ascii	"me.\012\012press a key.\000"
	.space	2
.LC925:
	.ascii	"do you want to quickload the game named\012\012'%s'"
	.ascii	"?\012\012press y or n.\000"
	.space	2
.LC926:
	.ascii	"quicksave over your game named\012\012'%s'?\012\012"
	.ascii	"press y or n.\000"
	.space	3
.LC927:
	.ascii	"you can't save if you aren't playing!\012\012press "
	.ascii	"a key.\000"
.LC928:
	.ascii	"you haven't picked a quicksave slot yet!\012\012pre"
	.ascii	"ss a key.\000"
	.space	1
.LC929:
	.ascii	"are you sure you want to\012quit this great game?\000"
	.space	1
.LC930:
	.ascii	"press y or n.\000"
	.space	2
.LC931:
	.ascii	"press a key.\000"
	.space	3
.LC932:
	.ascii	"CD-ROM Version: default.cfg from c:\\doomdata\012\000"
	.space	2
.LC933:
	.ascii	"Development mode ON.\012\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 8184
	.type	deh_codeptr, %object
	.size	deh_codeptr, 4304
deh_codeptr:
	.space	4304
	.type	buff.9515, %object
	.size	buff.9515, 1024
buff.9515:
	.space	1024
	.type	includenotext, %object
	.size	includenotext, 4
includenotext:
	.space	4
	.type	sprnames_state.9385, %object
	.size	sprnames_state.9385, 564
sprnames_state.9385:
	.space	564
	.type	S_sfx_state.9386, %object
	.size	S_sfx_state.9386, 456
S_sfx_state.9386:
	.space	456
	.type	S_music_state.9387, %object
	.size	S_music_state.9387, 272
S_music_state.9387:
	.space	272
	.type	deh_pars, %object
	.size	deh_pars, 4
deh_pars:
	.space	4
	.type	fileout.9147, %object
	.size	fileout.9147, 4
fileout.9147:
	.space	4
	.type	holdstring.9424, %object
	.size	holdstring.9424, 4
holdstring.9424:
	.space	4
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 3 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.file 7 "c:/devl/prboom3ds/src/z_zone.h"
	.file 8 "c:/devl/prboom3ds/src/doomdef.h"
	.file 9 "c:/devl/prboom3ds/src/doomtype.h"
	.file 10 "c:/devl/prboom3ds/src/d_items.h"
	.file 11 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 12 "c:/devl/prboom3ds/src/d_think.h"
	.file 13 "c:/devl/prboom3ds/src/info.h"
	.file 14 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 15 "c:/devl/prboom3ds/src/doomstat.h"
	.file 16 "c:/devl/prboom3ds/src/sounds.h"
	.file 17 "c:/devl/prboom3ds/src/m_cheat.h"
	.file 18 "c:/devl/prboom3ds/src/w_wad.h"
	.file 19 "c:/devl/prboom3ds/src/lprintf.h"
	.file 20 "c:/devl/prboom3ds/src/tables.h"
	.file 21 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\ctype.h"
	.file 22 "c:/devl/prboom3ds/src/p_inter.h"
	.file 23 "c:/devl/prboom3ds/src/g_game.h"
	.file 24 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 25 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9347
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2295
	.byte	0x1
	.4byte	.LASF2296
	.4byte	.LASF2297
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x7
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x10
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x27
	.4byte	0x63
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x161
	.4byte	0x37
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xc4
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4c
	.4byte	0x99
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4d
	.4byte	0xc4
	.byte	0
	.uleb128 0x9
	.4byte	0x4e
	.4byte	0xd4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0xfc
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0x49
	.4byte	0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4e
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4f
	.4byte	0xdb
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x53
	.4byte	0x78
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2d
	.4byte	0x170
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2f
	.4byte	0x170
	.byte	0
	.uleb128 0xe
	.ascii	"_k\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x40
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x30
	.4byte	0x40
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x30
	.4byte	0x40
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0x40
	.byte	0x10
	.uleb128 0xe
	.ascii	"_x\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x176
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x9
	.4byte	0x112
	.4byte	0x186
	.uleb128 0xa
	.4byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x35
	.4byte	0x1ff
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x37
	.4byte	0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.4byte	0x40
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x39
	.4byte	0x40
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3a
	.4byte	0x40
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3b
	.4byte	0x40
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3c
	.4byte	0x40
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3d
	.4byte	0x40
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3e
	.4byte	0x40
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3f
	.4byte	0x40
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x48
	.4byte	0x23f
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x49
	.4byte	0x23f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4a
	.4byte	0x23f
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4c
	.4byte	0x112
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4f
	.4byte	0x112
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x3e
	.4byte	0x24f
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.2byte	0x190
	.byte	0x5
	.byte	0x5b
	.4byte	0x28d
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x5c
	.4byte	0x28d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x5d
	.4byte	0x40
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x5f
	.4byte	0x293
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x60
	.4byte	0x1ff
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x9
	.4byte	0x2a3
	.4byte	0x2a3
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2a9
	.uleb128 0x12
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.4byte	0x2cf
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x74
	.4byte	0x2cf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x75
	.4byte	0x40
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4e
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x68
	.byte	0x5
	.byte	0xb3
	.4byte	0x3ff
	.uleb128 0xe
	.ascii	"_p\000"
	.byte	0x5
	.byte	0xb4
	.4byte	0x2cf
	.byte	0
	.uleb128 0xe
	.ascii	"_r\000"
	.byte	0x5
	.byte	0xb5
	.4byte	0x40
	.byte	0x4
	.uleb128 0xe
	.ascii	"_w\000"
	.byte	0x5
	.byte	0xb6
	.4byte	0x40
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0xb7
	.4byte	0x55
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb8
	.4byte	0x55
	.byte	0xe
	.uleb128 0xe
	.ascii	"_bf\000"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2aa
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xba
	.4byte	0x40
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc1
	.4byte	0x3e
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc3
	.4byte	0x562
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc5
	.4byte	0x591
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0xc8
	.4byte	0x5b5
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0xc9
	.4byte	0x5cf
	.byte	0x2c
	.uleb128 0xe
	.ascii	"_ub\000"
	.byte	0x5
	.byte	0xcc
	.4byte	0x2aa
	.byte	0x30
	.uleb128 0xe
	.ascii	"_up\000"
	.byte	0x5
	.byte	0xcd
	.4byte	0x2cf
	.byte	0x38
	.uleb128 0xe
	.ascii	"_ur\000"
	.byte	0x5
	.byte	0xce
	.4byte	0x40
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd1
	.4byte	0x5d5
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd2
	.4byte	0x5e5
	.byte	0x43
	.uleb128 0xe
	.ascii	"_lb\000"
	.byte	0x5
	.byte	0xd5
	.4byte	0x2aa
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd8
	.4byte	0x40
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd9
	.4byte	0x83
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0xdc
	.4byte	0x41d
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe0
	.4byte	0x107
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe2
	.4byte	0xfc
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe3
	.4byte	0x40
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x40
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x3e
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x423
	.uleb128 0x15
	.4byte	.LASF65
	.2byte	0x428
	.byte	0x5
	.2byte	0x239
	.4byte	0x555
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x23b
	.4byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x240
	.4byte	0x63c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x240
	.4byte	0x63c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x240
	.4byte	0x63c
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x242
	.4byte	0x40
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x243
	.4byte	0x81e
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x245
	.4byte	0x40
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x246
	.4byte	0x586
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x248
	.4byte	0x40
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x24a
	.4byte	0x839
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x24d
	.4byte	0x170
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x24e
	.4byte	0x40
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x24f
	.4byte	0x170
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x250
	.4byte	0x83f
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x253
	.4byte	0x40
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x254
	.4byte	0x555
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x277
	.4byte	0x7fc
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x27b
	.4byte	0x28d
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x27c
	.4byte	0x24f
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x280
	.4byte	0x850
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x285
	.4byte	0x601
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x286
	.4byte	0x85c
	.2byte	0x2ec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x55b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF87
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0x13
	.4byte	0x40
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x3e
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x58c
	.uleb128 0x18
	.4byte	0x55b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x568
	.uleb128 0x13
	.4byte	0x8e
	.4byte	0x5b5
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x3e
	.uleb128 0x14
	.4byte	0x8e
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x597
	.uleb128 0x13
	.4byte	0x40
	.4byte	0x5cf
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5bb
	.uleb128 0x9
	.4byte	0x4e
	.4byte	0x5e5
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4e
	.4byte	0x5f5
	.uleb128 0xa
	.4byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x11d
	.4byte	0x2d5
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5
	.2byte	0x121
	.4byte	0x636
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x123
	.4byte	0x636
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x124
	.4byte	0x40
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x125
	.4byte	0x63c
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x601
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f5
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0xe
	.byte	0x5
	.2byte	0x13d
	.4byte	0x677
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x13e
	.4byte	0x677
	.byte	0
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x13f
	.4byte	0x677
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x140
	.4byte	0x5c
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x687
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x258
	.4byte	0x788
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x25a
	.4byte	0x37
	.byte	0
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x25b
	.4byte	0x555
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x25c
	.4byte	0x788
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x25d
	.4byte	0x186
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x25e
	.4byte	0x40
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x25f
	.4byte	0x25
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x260
	.4byte	0x642
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x261
	.4byte	0xfc
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x262
	.4byte	0xfc
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x263
	.4byte	0xfc
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x264
	.4byte	0x798
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x265
	.4byte	0x7a8
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x266
	.4byte	0x40
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x267
	.4byte	0xfc
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x268
	.4byte	0xfc
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x269
	.4byte	0xfc
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x26a
	.4byte	0xfc
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x26b
	.4byte	0xfc
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x26c
	.4byte	0x40
	.byte	0xcc
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x798
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x7a8
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x7b8
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x271
	.4byte	0x7dc
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x274
	.4byte	0x7dc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x275
	.4byte	0x7ec
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.4byte	0x2cf
	.4byte	0x7ec
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.4byte	0x37
	.4byte	0x7fc
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x256
	.4byte	0x81e
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x26d
	.4byte	0x687
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x276
	.4byte	0x7b8
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x82e
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x839
	.uleb128 0x14
	.4byte	0x41d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x82e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x170
	.uleb128 0x1d
	.4byte	0x850
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x856
	.uleb128 0xf
	.byte	0x4
	.4byte	0x845
	.uleb128 0x9
	.4byte	0x5f5
	.4byte	0x86c
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x6
	.byte	0x33
	.4byte	0x5f5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x87d
	.uleb128 0x1e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.4byte	0x8bd
	.uleb128 0x20
	.4byte	.LASF119
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF120
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF121
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF122
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF123
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF124
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF125
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF126
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF127
	.sleb128 8
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xbc
	.4byte	0x8f0
	.uleb128 0x20
	.4byte	.LASF128
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF129
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF130
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF131
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF132
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF133
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF134
	.sleb128 6
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xc8
	.4byte	0x93b
	.uleb128 0x20
	.4byte	.LASF135
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF136
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF137
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF138
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF139
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF140
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF141
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF142
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF143
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF144
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF145
	.sleb128 10
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xd8
	.4byte	0x968
	.uleb128 0x20
	.4byte	.LASF146
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF147
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF148
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF149
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF150
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF151
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0x8
	.byte	0xdf
	.4byte	0x93b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xe2
	.4byte	0x9a6
	.uleb128 0x20
	.4byte	.LASF153
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF154
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF155
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF156
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF157
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF158
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF159
	.sleb128 6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF160
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x9
	.byte	0x42
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0x9
	.byte	0x4c
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0x9
	.byte	0x5c
	.4byte	0x25
	.uleb128 0xb
	.byte	0x18
	.byte	0xa
	.byte	0x2e
	.4byte	0xa1f
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0xa
	.byte	0x30
	.4byte	0x968
	.byte	0
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xa
	.byte	0x31
	.4byte	0x40
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xa
	.byte	0x32
	.4byte	0x40
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xa
	.byte	0x33
	.4byte	0x40
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xa
	.byte	0x34
	.4byte	0x40
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xa
	.byte	0x35
	.4byte	0x40
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xa
	.byte	0x37
	.4byte	0x9ce
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xb
	.byte	0x2f
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0xc
	.byte	0x32
	.4byte	0xa40
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa46
	.uleb128 0x21
	.4byte	0xa4d
	.uleb128 0x22
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0xd
	.byte	0x2e
	.4byte	0xdf1
	.uleb128 0x20
	.4byte	.LASF173
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF174
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF175
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF176
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF177
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF178
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF179
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF180
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF181
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF182
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF183
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF184
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF185
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF186
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF187
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF188
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF189
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF190
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF191
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF192
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF193
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF194
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF195
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF196
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF197
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF198
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF199
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF200
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF201
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF202
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF203
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF204
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF205
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF206
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF207
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF208
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF209
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF210
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF211
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF212
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF213
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF214
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF215
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF216
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF217
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF218
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF219
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF220
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF221
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF222
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF223
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF224
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF225
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF226
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF227
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF228
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF229
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF230
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF231
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF232
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF233
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF234
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF235
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF236
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF237
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF238
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF239
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF240
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF241
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF242
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF243
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF244
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF245
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF246
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF247
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF248
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF249
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF250
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF251
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF252
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF253
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF254
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF255
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF256
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF257
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF258
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF259
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF260
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF261
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF262
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF263
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF264
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF265
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF266
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF267
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF268
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF269
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF270
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF271
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF272
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF273
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF274
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF275
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF276
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF277
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF278
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF279
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF280
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF281
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF282
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF283
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF284
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF285
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF286
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF287
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF288
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF289
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF290
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF291
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF292
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF293
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF294
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF295
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF296
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF297
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF298
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF299
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF300
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF301
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF302
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF303
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF304
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF305
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF306
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF307
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF308
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF309
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF310
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF311
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF312
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF313
	.sleb128 140
	.byte	0
	.uleb128 0x3
	.4byte	.LASF314
	.byte	0xd
	.byte	0xc1
	.4byte	0xa4d
	.uleb128 0x1f
	.byte	0x2
	.byte	0xd
	.byte	0xc8
	.4byte	0x2a20
	.uleb128 0x20
	.4byte	.LASF315
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF316
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF317
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF318
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF319
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF320
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF321
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF322
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF323
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF324
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF325
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF326
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF327
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF328
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF329
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF330
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF331
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF332
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF333
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF334
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF335
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF336
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF337
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF338
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF339
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF340
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF341
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF342
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF343
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF344
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF345
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF346
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF347
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF348
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF349
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF350
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF351
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF352
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF353
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF354
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF355
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF356
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF357
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF358
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF359
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF360
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF361
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF362
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF363
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF364
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF365
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF366
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF367
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF368
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF369
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF370
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF371
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF372
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF373
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF374
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF375
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF376
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF377
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF378
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF379
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF380
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF381
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF382
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF383
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF384
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF385
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF386
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF387
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF388
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF389
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF390
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF391
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF392
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF393
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF394
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF395
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF396
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF397
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF398
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF399
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF400
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF401
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF402
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF403
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF404
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF405
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF406
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF407
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF408
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF409
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF410
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF411
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF412
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF413
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF414
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF415
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF416
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF417
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF418
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF419
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF420
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF421
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF422
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF423
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF424
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF425
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF426
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF427
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF428
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF429
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF430
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF431
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF432
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF433
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF434
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF435
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF436
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF437
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF438
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF439
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF440
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF441
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF442
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF443
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF444
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF445
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF446
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF447
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF448
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF449
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF450
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF451
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF452
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF453
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF454
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF455
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF456
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF457
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF458
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF459
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF460
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF461
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF462
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF463
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF464
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF465
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF466
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF467
	.sleb128 152
	.uleb128 0x20
	.4byte	.LASF468
	.sleb128 153
	.uleb128 0x20
	.4byte	.LASF469
	.sleb128 154
	.uleb128 0x20
	.4byte	.LASF470
	.sleb128 155
	.uleb128 0x20
	.4byte	.LASF471
	.sleb128 156
	.uleb128 0x20
	.4byte	.LASF472
	.sleb128 157
	.uleb128 0x20
	.4byte	.LASF473
	.sleb128 158
	.uleb128 0x20
	.4byte	.LASF474
	.sleb128 159
	.uleb128 0x20
	.4byte	.LASF475
	.sleb128 160
	.uleb128 0x20
	.4byte	.LASF476
	.sleb128 161
	.uleb128 0x20
	.4byte	.LASF477
	.sleb128 162
	.uleb128 0x20
	.4byte	.LASF478
	.sleb128 163
	.uleb128 0x20
	.4byte	.LASF479
	.sleb128 164
	.uleb128 0x20
	.4byte	.LASF480
	.sleb128 165
	.uleb128 0x20
	.4byte	.LASF481
	.sleb128 166
	.uleb128 0x20
	.4byte	.LASF482
	.sleb128 167
	.uleb128 0x20
	.4byte	.LASF483
	.sleb128 168
	.uleb128 0x20
	.4byte	.LASF484
	.sleb128 169
	.uleb128 0x20
	.4byte	.LASF485
	.sleb128 170
	.uleb128 0x20
	.4byte	.LASF486
	.sleb128 171
	.uleb128 0x20
	.4byte	.LASF487
	.sleb128 172
	.uleb128 0x20
	.4byte	.LASF488
	.sleb128 173
	.uleb128 0x20
	.4byte	.LASF489
	.sleb128 174
	.uleb128 0x20
	.4byte	.LASF490
	.sleb128 175
	.uleb128 0x20
	.4byte	.LASF491
	.sleb128 176
	.uleb128 0x20
	.4byte	.LASF492
	.sleb128 177
	.uleb128 0x20
	.4byte	.LASF493
	.sleb128 178
	.uleb128 0x20
	.4byte	.LASF494
	.sleb128 179
	.uleb128 0x20
	.4byte	.LASF495
	.sleb128 180
	.uleb128 0x20
	.4byte	.LASF496
	.sleb128 181
	.uleb128 0x20
	.4byte	.LASF497
	.sleb128 182
	.uleb128 0x20
	.4byte	.LASF498
	.sleb128 183
	.uleb128 0x20
	.4byte	.LASF499
	.sleb128 184
	.uleb128 0x20
	.4byte	.LASF500
	.sleb128 185
	.uleb128 0x20
	.4byte	.LASF501
	.sleb128 186
	.uleb128 0x20
	.4byte	.LASF502
	.sleb128 187
	.uleb128 0x20
	.4byte	.LASF503
	.sleb128 188
	.uleb128 0x20
	.4byte	.LASF504
	.sleb128 189
	.uleb128 0x20
	.4byte	.LASF505
	.sleb128 190
	.uleb128 0x20
	.4byte	.LASF506
	.sleb128 191
	.uleb128 0x20
	.4byte	.LASF507
	.sleb128 192
	.uleb128 0x20
	.4byte	.LASF508
	.sleb128 193
	.uleb128 0x20
	.4byte	.LASF509
	.sleb128 194
	.uleb128 0x20
	.4byte	.LASF510
	.sleb128 195
	.uleb128 0x20
	.4byte	.LASF511
	.sleb128 196
	.uleb128 0x20
	.4byte	.LASF512
	.sleb128 197
	.uleb128 0x20
	.4byte	.LASF513
	.sleb128 198
	.uleb128 0x20
	.4byte	.LASF514
	.sleb128 199
	.uleb128 0x20
	.4byte	.LASF515
	.sleb128 200
	.uleb128 0x20
	.4byte	.LASF516
	.sleb128 201
	.uleb128 0x20
	.4byte	.LASF517
	.sleb128 202
	.uleb128 0x20
	.4byte	.LASF518
	.sleb128 203
	.uleb128 0x20
	.4byte	.LASF519
	.sleb128 204
	.uleb128 0x20
	.4byte	.LASF520
	.sleb128 205
	.uleb128 0x20
	.4byte	.LASF521
	.sleb128 206
	.uleb128 0x20
	.4byte	.LASF522
	.sleb128 207
	.uleb128 0x20
	.4byte	.LASF523
	.sleb128 208
	.uleb128 0x20
	.4byte	.LASF524
	.sleb128 209
	.uleb128 0x20
	.4byte	.LASF525
	.sleb128 210
	.uleb128 0x20
	.4byte	.LASF526
	.sleb128 211
	.uleb128 0x20
	.4byte	.LASF527
	.sleb128 212
	.uleb128 0x20
	.4byte	.LASF528
	.sleb128 213
	.uleb128 0x20
	.4byte	.LASF529
	.sleb128 214
	.uleb128 0x20
	.4byte	.LASF530
	.sleb128 215
	.uleb128 0x20
	.4byte	.LASF531
	.sleb128 216
	.uleb128 0x20
	.4byte	.LASF532
	.sleb128 217
	.uleb128 0x20
	.4byte	.LASF533
	.sleb128 218
	.uleb128 0x20
	.4byte	.LASF534
	.sleb128 219
	.uleb128 0x20
	.4byte	.LASF535
	.sleb128 220
	.uleb128 0x20
	.4byte	.LASF536
	.sleb128 221
	.uleb128 0x20
	.4byte	.LASF537
	.sleb128 222
	.uleb128 0x20
	.4byte	.LASF538
	.sleb128 223
	.uleb128 0x20
	.4byte	.LASF539
	.sleb128 224
	.uleb128 0x20
	.4byte	.LASF540
	.sleb128 225
	.uleb128 0x20
	.4byte	.LASF541
	.sleb128 226
	.uleb128 0x20
	.4byte	.LASF542
	.sleb128 227
	.uleb128 0x20
	.4byte	.LASF543
	.sleb128 228
	.uleb128 0x20
	.4byte	.LASF544
	.sleb128 229
	.uleb128 0x20
	.4byte	.LASF545
	.sleb128 230
	.uleb128 0x20
	.4byte	.LASF546
	.sleb128 231
	.uleb128 0x20
	.4byte	.LASF547
	.sleb128 232
	.uleb128 0x20
	.4byte	.LASF548
	.sleb128 233
	.uleb128 0x20
	.4byte	.LASF549
	.sleb128 234
	.uleb128 0x20
	.4byte	.LASF550
	.sleb128 235
	.uleb128 0x20
	.4byte	.LASF551
	.sleb128 236
	.uleb128 0x20
	.4byte	.LASF552
	.sleb128 237
	.uleb128 0x20
	.4byte	.LASF553
	.sleb128 238
	.uleb128 0x20
	.4byte	.LASF554
	.sleb128 239
	.uleb128 0x20
	.4byte	.LASF555
	.sleb128 240
	.uleb128 0x20
	.4byte	.LASF556
	.sleb128 241
	.uleb128 0x20
	.4byte	.LASF557
	.sleb128 242
	.uleb128 0x20
	.4byte	.LASF558
	.sleb128 243
	.uleb128 0x20
	.4byte	.LASF559
	.sleb128 244
	.uleb128 0x20
	.4byte	.LASF560
	.sleb128 245
	.uleb128 0x20
	.4byte	.LASF561
	.sleb128 246
	.uleb128 0x20
	.4byte	.LASF562
	.sleb128 247
	.uleb128 0x20
	.4byte	.LASF563
	.sleb128 248
	.uleb128 0x20
	.4byte	.LASF564
	.sleb128 249
	.uleb128 0x20
	.4byte	.LASF565
	.sleb128 250
	.uleb128 0x20
	.4byte	.LASF566
	.sleb128 251
	.uleb128 0x20
	.4byte	.LASF567
	.sleb128 252
	.uleb128 0x20
	.4byte	.LASF568
	.sleb128 253
	.uleb128 0x20
	.4byte	.LASF569
	.sleb128 254
	.uleb128 0x20
	.4byte	.LASF570
	.sleb128 255
	.uleb128 0x20
	.4byte	.LASF571
	.sleb128 256
	.uleb128 0x20
	.4byte	.LASF572
	.sleb128 257
	.uleb128 0x20
	.4byte	.LASF573
	.sleb128 258
	.uleb128 0x20
	.4byte	.LASF574
	.sleb128 259
	.uleb128 0x20
	.4byte	.LASF575
	.sleb128 260
	.uleb128 0x20
	.4byte	.LASF576
	.sleb128 261
	.uleb128 0x20
	.4byte	.LASF577
	.sleb128 262
	.uleb128 0x20
	.4byte	.LASF578
	.sleb128 263
	.uleb128 0x20
	.4byte	.LASF579
	.sleb128 264
	.uleb128 0x20
	.4byte	.LASF580
	.sleb128 265
	.uleb128 0x20
	.4byte	.LASF581
	.sleb128 266
	.uleb128 0x20
	.4byte	.LASF582
	.sleb128 267
	.uleb128 0x20
	.4byte	.LASF583
	.sleb128 268
	.uleb128 0x20
	.4byte	.LASF584
	.sleb128 269
	.uleb128 0x20
	.4byte	.LASF585
	.sleb128 270
	.uleb128 0x20
	.4byte	.LASF586
	.sleb128 271
	.uleb128 0x20
	.4byte	.LASF587
	.sleb128 272
	.uleb128 0x20
	.4byte	.LASF588
	.sleb128 273
	.uleb128 0x20
	.4byte	.LASF589
	.sleb128 274
	.uleb128 0x20
	.4byte	.LASF590
	.sleb128 275
	.uleb128 0x20
	.4byte	.LASF591
	.sleb128 276
	.uleb128 0x20
	.4byte	.LASF592
	.sleb128 277
	.uleb128 0x20
	.4byte	.LASF593
	.sleb128 278
	.uleb128 0x20
	.4byte	.LASF594
	.sleb128 279
	.uleb128 0x20
	.4byte	.LASF595
	.sleb128 280
	.uleb128 0x20
	.4byte	.LASF596
	.sleb128 281
	.uleb128 0x20
	.4byte	.LASF597
	.sleb128 282
	.uleb128 0x20
	.4byte	.LASF598
	.sleb128 283
	.uleb128 0x20
	.4byte	.LASF599
	.sleb128 284
	.uleb128 0x20
	.4byte	.LASF600
	.sleb128 285
	.uleb128 0x20
	.4byte	.LASF601
	.sleb128 286
	.uleb128 0x20
	.4byte	.LASF602
	.sleb128 287
	.uleb128 0x20
	.4byte	.LASF603
	.sleb128 288
	.uleb128 0x20
	.4byte	.LASF604
	.sleb128 289
	.uleb128 0x20
	.4byte	.LASF605
	.sleb128 290
	.uleb128 0x20
	.4byte	.LASF606
	.sleb128 291
	.uleb128 0x20
	.4byte	.LASF607
	.sleb128 292
	.uleb128 0x20
	.4byte	.LASF608
	.sleb128 293
	.uleb128 0x20
	.4byte	.LASF609
	.sleb128 294
	.uleb128 0x20
	.4byte	.LASF610
	.sleb128 295
	.uleb128 0x20
	.4byte	.LASF611
	.sleb128 296
	.uleb128 0x20
	.4byte	.LASF612
	.sleb128 297
	.uleb128 0x20
	.4byte	.LASF613
	.sleb128 298
	.uleb128 0x20
	.4byte	.LASF614
	.sleb128 299
	.uleb128 0x20
	.4byte	.LASF615
	.sleb128 300
	.uleb128 0x20
	.4byte	.LASF616
	.sleb128 301
	.uleb128 0x20
	.4byte	.LASF617
	.sleb128 302
	.uleb128 0x20
	.4byte	.LASF618
	.sleb128 303
	.uleb128 0x20
	.4byte	.LASF619
	.sleb128 304
	.uleb128 0x20
	.4byte	.LASF620
	.sleb128 305
	.uleb128 0x20
	.4byte	.LASF621
	.sleb128 306
	.uleb128 0x20
	.4byte	.LASF622
	.sleb128 307
	.uleb128 0x20
	.4byte	.LASF623
	.sleb128 308
	.uleb128 0x20
	.4byte	.LASF624
	.sleb128 309
	.uleb128 0x20
	.4byte	.LASF625
	.sleb128 310
	.uleb128 0x20
	.4byte	.LASF626
	.sleb128 311
	.uleb128 0x20
	.4byte	.LASF627
	.sleb128 312
	.uleb128 0x20
	.4byte	.LASF628
	.sleb128 313
	.uleb128 0x20
	.4byte	.LASF629
	.sleb128 314
	.uleb128 0x20
	.4byte	.LASF630
	.sleb128 315
	.uleb128 0x20
	.4byte	.LASF631
	.sleb128 316
	.uleb128 0x20
	.4byte	.LASF632
	.sleb128 317
	.uleb128 0x20
	.4byte	.LASF633
	.sleb128 318
	.uleb128 0x20
	.4byte	.LASF634
	.sleb128 319
	.uleb128 0x20
	.4byte	.LASF635
	.sleb128 320
	.uleb128 0x20
	.4byte	.LASF636
	.sleb128 321
	.uleb128 0x20
	.4byte	.LASF637
	.sleb128 322
	.uleb128 0x20
	.4byte	.LASF638
	.sleb128 323
	.uleb128 0x20
	.4byte	.LASF639
	.sleb128 324
	.uleb128 0x20
	.4byte	.LASF640
	.sleb128 325
	.uleb128 0x20
	.4byte	.LASF641
	.sleb128 326
	.uleb128 0x20
	.4byte	.LASF642
	.sleb128 327
	.uleb128 0x20
	.4byte	.LASF643
	.sleb128 328
	.uleb128 0x20
	.4byte	.LASF644
	.sleb128 329
	.uleb128 0x20
	.4byte	.LASF645
	.sleb128 330
	.uleb128 0x20
	.4byte	.LASF646
	.sleb128 331
	.uleb128 0x20
	.4byte	.LASF647
	.sleb128 332
	.uleb128 0x20
	.4byte	.LASF648
	.sleb128 333
	.uleb128 0x20
	.4byte	.LASF649
	.sleb128 334
	.uleb128 0x20
	.4byte	.LASF650
	.sleb128 335
	.uleb128 0x20
	.4byte	.LASF651
	.sleb128 336
	.uleb128 0x20
	.4byte	.LASF652
	.sleb128 337
	.uleb128 0x20
	.4byte	.LASF653
	.sleb128 338
	.uleb128 0x20
	.4byte	.LASF654
	.sleb128 339
	.uleb128 0x20
	.4byte	.LASF655
	.sleb128 340
	.uleb128 0x20
	.4byte	.LASF656
	.sleb128 341
	.uleb128 0x20
	.4byte	.LASF657
	.sleb128 342
	.uleb128 0x20
	.4byte	.LASF658
	.sleb128 343
	.uleb128 0x20
	.4byte	.LASF659
	.sleb128 344
	.uleb128 0x20
	.4byte	.LASF660
	.sleb128 345
	.uleb128 0x20
	.4byte	.LASF661
	.sleb128 346
	.uleb128 0x20
	.4byte	.LASF662
	.sleb128 347
	.uleb128 0x20
	.4byte	.LASF663
	.sleb128 348
	.uleb128 0x20
	.4byte	.LASF664
	.sleb128 349
	.uleb128 0x20
	.4byte	.LASF665
	.sleb128 350
	.uleb128 0x20
	.4byte	.LASF666
	.sleb128 351
	.uleb128 0x20
	.4byte	.LASF667
	.sleb128 352
	.uleb128 0x20
	.4byte	.LASF668
	.sleb128 353
	.uleb128 0x20
	.4byte	.LASF669
	.sleb128 354
	.uleb128 0x20
	.4byte	.LASF670
	.sleb128 355
	.uleb128 0x20
	.4byte	.LASF671
	.sleb128 356
	.uleb128 0x20
	.4byte	.LASF672
	.sleb128 357
	.uleb128 0x20
	.4byte	.LASF673
	.sleb128 358
	.uleb128 0x20
	.4byte	.LASF674
	.sleb128 359
	.uleb128 0x20
	.4byte	.LASF675
	.sleb128 360
	.uleb128 0x20
	.4byte	.LASF676
	.sleb128 361
	.uleb128 0x20
	.4byte	.LASF677
	.sleb128 362
	.uleb128 0x20
	.4byte	.LASF678
	.sleb128 363
	.uleb128 0x20
	.4byte	.LASF679
	.sleb128 364
	.uleb128 0x20
	.4byte	.LASF680
	.sleb128 365
	.uleb128 0x20
	.4byte	.LASF681
	.sleb128 366
	.uleb128 0x20
	.4byte	.LASF682
	.sleb128 367
	.uleb128 0x20
	.4byte	.LASF683
	.sleb128 368
	.uleb128 0x20
	.4byte	.LASF684
	.sleb128 369
	.uleb128 0x20
	.4byte	.LASF685
	.sleb128 370
	.uleb128 0x20
	.4byte	.LASF686
	.sleb128 371
	.uleb128 0x20
	.4byte	.LASF687
	.sleb128 372
	.uleb128 0x20
	.4byte	.LASF688
	.sleb128 373
	.uleb128 0x20
	.4byte	.LASF689
	.sleb128 374
	.uleb128 0x20
	.4byte	.LASF690
	.sleb128 375
	.uleb128 0x20
	.4byte	.LASF691
	.sleb128 376
	.uleb128 0x20
	.4byte	.LASF692
	.sleb128 377
	.uleb128 0x20
	.4byte	.LASF693
	.sleb128 378
	.uleb128 0x20
	.4byte	.LASF694
	.sleb128 379
	.uleb128 0x20
	.4byte	.LASF695
	.sleb128 380
	.uleb128 0x20
	.4byte	.LASF696
	.sleb128 381
	.uleb128 0x20
	.4byte	.LASF697
	.sleb128 382
	.uleb128 0x20
	.4byte	.LASF698
	.sleb128 383
	.uleb128 0x20
	.4byte	.LASF699
	.sleb128 384
	.uleb128 0x20
	.4byte	.LASF700
	.sleb128 385
	.uleb128 0x20
	.4byte	.LASF701
	.sleb128 386
	.uleb128 0x20
	.4byte	.LASF702
	.sleb128 387
	.uleb128 0x20
	.4byte	.LASF703
	.sleb128 388
	.uleb128 0x20
	.4byte	.LASF704
	.sleb128 389
	.uleb128 0x20
	.4byte	.LASF705
	.sleb128 390
	.uleb128 0x20
	.4byte	.LASF706
	.sleb128 391
	.uleb128 0x20
	.4byte	.LASF707
	.sleb128 392
	.uleb128 0x20
	.4byte	.LASF708
	.sleb128 393
	.uleb128 0x20
	.4byte	.LASF709
	.sleb128 394
	.uleb128 0x20
	.4byte	.LASF710
	.sleb128 395
	.uleb128 0x20
	.4byte	.LASF711
	.sleb128 396
	.uleb128 0x20
	.4byte	.LASF712
	.sleb128 397
	.uleb128 0x20
	.4byte	.LASF713
	.sleb128 398
	.uleb128 0x20
	.4byte	.LASF714
	.sleb128 399
	.uleb128 0x20
	.4byte	.LASF715
	.sleb128 400
	.uleb128 0x20
	.4byte	.LASF716
	.sleb128 401
	.uleb128 0x20
	.4byte	.LASF717
	.sleb128 402
	.uleb128 0x20
	.4byte	.LASF718
	.sleb128 403
	.uleb128 0x20
	.4byte	.LASF719
	.sleb128 404
	.uleb128 0x20
	.4byte	.LASF720
	.sleb128 405
	.uleb128 0x20
	.4byte	.LASF721
	.sleb128 406
	.uleb128 0x20
	.4byte	.LASF722
	.sleb128 407
	.uleb128 0x20
	.4byte	.LASF723
	.sleb128 408
	.uleb128 0x20
	.4byte	.LASF724
	.sleb128 409
	.uleb128 0x20
	.4byte	.LASF725
	.sleb128 410
	.uleb128 0x20
	.4byte	.LASF726
	.sleb128 411
	.uleb128 0x20
	.4byte	.LASF727
	.sleb128 412
	.uleb128 0x20
	.4byte	.LASF728
	.sleb128 413
	.uleb128 0x20
	.4byte	.LASF729
	.sleb128 414
	.uleb128 0x20
	.4byte	.LASF730
	.sleb128 415
	.uleb128 0x20
	.4byte	.LASF731
	.sleb128 416
	.uleb128 0x20
	.4byte	.LASF732
	.sleb128 417
	.uleb128 0x20
	.4byte	.LASF733
	.sleb128 418
	.uleb128 0x20
	.4byte	.LASF734
	.sleb128 419
	.uleb128 0x20
	.4byte	.LASF735
	.sleb128 420
	.uleb128 0x20
	.4byte	.LASF736
	.sleb128 421
	.uleb128 0x20
	.4byte	.LASF737
	.sleb128 422
	.uleb128 0x20
	.4byte	.LASF738
	.sleb128 423
	.uleb128 0x20
	.4byte	.LASF739
	.sleb128 424
	.uleb128 0x20
	.4byte	.LASF740
	.sleb128 425
	.uleb128 0x20
	.4byte	.LASF741
	.sleb128 426
	.uleb128 0x20
	.4byte	.LASF742
	.sleb128 427
	.uleb128 0x20
	.4byte	.LASF743
	.sleb128 428
	.uleb128 0x20
	.4byte	.LASF744
	.sleb128 429
	.uleb128 0x20
	.4byte	.LASF745
	.sleb128 430
	.uleb128 0x20
	.4byte	.LASF746
	.sleb128 431
	.uleb128 0x20
	.4byte	.LASF747
	.sleb128 432
	.uleb128 0x20
	.4byte	.LASF748
	.sleb128 433
	.uleb128 0x20
	.4byte	.LASF749
	.sleb128 434
	.uleb128 0x20
	.4byte	.LASF750
	.sleb128 435
	.uleb128 0x20
	.4byte	.LASF751
	.sleb128 436
	.uleb128 0x20
	.4byte	.LASF752
	.sleb128 437
	.uleb128 0x20
	.4byte	.LASF753
	.sleb128 438
	.uleb128 0x20
	.4byte	.LASF754
	.sleb128 439
	.uleb128 0x20
	.4byte	.LASF755
	.sleb128 440
	.uleb128 0x20
	.4byte	.LASF756
	.sleb128 441
	.uleb128 0x20
	.4byte	.LASF757
	.sleb128 442
	.uleb128 0x20
	.4byte	.LASF758
	.sleb128 443
	.uleb128 0x20
	.4byte	.LASF759
	.sleb128 444
	.uleb128 0x20
	.4byte	.LASF760
	.sleb128 445
	.uleb128 0x20
	.4byte	.LASF761
	.sleb128 446
	.uleb128 0x20
	.4byte	.LASF762
	.sleb128 447
	.uleb128 0x20
	.4byte	.LASF763
	.sleb128 448
	.uleb128 0x20
	.4byte	.LASF764
	.sleb128 449
	.uleb128 0x20
	.4byte	.LASF765
	.sleb128 450
	.uleb128 0x20
	.4byte	.LASF766
	.sleb128 451
	.uleb128 0x20
	.4byte	.LASF767
	.sleb128 452
	.uleb128 0x20
	.4byte	.LASF768
	.sleb128 453
	.uleb128 0x20
	.4byte	.LASF769
	.sleb128 454
	.uleb128 0x20
	.4byte	.LASF770
	.sleb128 455
	.uleb128 0x20
	.4byte	.LASF771
	.sleb128 456
	.uleb128 0x20
	.4byte	.LASF772
	.sleb128 457
	.uleb128 0x20
	.4byte	.LASF773
	.sleb128 458
	.uleb128 0x20
	.4byte	.LASF774
	.sleb128 459
	.uleb128 0x20
	.4byte	.LASF775
	.sleb128 460
	.uleb128 0x20
	.4byte	.LASF776
	.sleb128 461
	.uleb128 0x20
	.4byte	.LASF777
	.sleb128 462
	.uleb128 0x20
	.4byte	.LASF778
	.sleb128 463
	.uleb128 0x20
	.4byte	.LASF779
	.sleb128 464
	.uleb128 0x20
	.4byte	.LASF780
	.sleb128 465
	.uleb128 0x20
	.4byte	.LASF781
	.sleb128 466
	.uleb128 0x20
	.4byte	.LASF782
	.sleb128 467
	.uleb128 0x20
	.4byte	.LASF783
	.sleb128 468
	.uleb128 0x20
	.4byte	.LASF784
	.sleb128 469
	.uleb128 0x20
	.4byte	.LASF785
	.sleb128 470
	.uleb128 0x20
	.4byte	.LASF786
	.sleb128 471
	.uleb128 0x20
	.4byte	.LASF787
	.sleb128 472
	.uleb128 0x20
	.4byte	.LASF788
	.sleb128 473
	.uleb128 0x20
	.4byte	.LASF789
	.sleb128 474
	.uleb128 0x20
	.4byte	.LASF790
	.sleb128 475
	.uleb128 0x20
	.4byte	.LASF791
	.sleb128 476
	.uleb128 0x20
	.4byte	.LASF792
	.sleb128 477
	.uleb128 0x20
	.4byte	.LASF793
	.sleb128 478
	.uleb128 0x20
	.4byte	.LASF794
	.sleb128 479
	.uleb128 0x20
	.4byte	.LASF795
	.sleb128 480
	.uleb128 0x20
	.4byte	.LASF796
	.sleb128 481
	.uleb128 0x20
	.4byte	.LASF797
	.sleb128 482
	.uleb128 0x20
	.4byte	.LASF798
	.sleb128 483
	.uleb128 0x20
	.4byte	.LASF799
	.sleb128 484
	.uleb128 0x20
	.4byte	.LASF800
	.sleb128 485
	.uleb128 0x20
	.4byte	.LASF801
	.sleb128 486
	.uleb128 0x20
	.4byte	.LASF802
	.sleb128 487
	.uleb128 0x20
	.4byte	.LASF803
	.sleb128 488
	.uleb128 0x20
	.4byte	.LASF804
	.sleb128 489
	.uleb128 0x20
	.4byte	.LASF805
	.sleb128 490
	.uleb128 0x20
	.4byte	.LASF806
	.sleb128 491
	.uleb128 0x20
	.4byte	.LASF807
	.sleb128 492
	.uleb128 0x20
	.4byte	.LASF808
	.sleb128 493
	.uleb128 0x20
	.4byte	.LASF809
	.sleb128 494
	.uleb128 0x20
	.4byte	.LASF810
	.sleb128 495
	.uleb128 0x20
	.4byte	.LASF811
	.sleb128 496
	.uleb128 0x20
	.4byte	.LASF812
	.sleb128 497
	.uleb128 0x20
	.4byte	.LASF813
	.sleb128 498
	.uleb128 0x20
	.4byte	.LASF814
	.sleb128 499
	.uleb128 0x20
	.4byte	.LASF815
	.sleb128 500
	.uleb128 0x20
	.4byte	.LASF816
	.sleb128 501
	.uleb128 0x20
	.4byte	.LASF817
	.sleb128 502
	.uleb128 0x20
	.4byte	.LASF818
	.sleb128 503
	.uleb128 0x20
	.4byte	.LASF819
	.sleb128 504
	.uleb128 0x20
	.4byte	.LASF820
	.sleb128 505
	.uleb128 0x20
	.4byte	.LASF821
	.sleb128 506
	.uleb128 0x20
	.4byte	.LASF822
	.sleb128 507
	.uleb128 0x20
	.4byte	.LASF823
	.sleb128 508
	.uleb128 0x20
	.4byte	.LASF824
	.sleb128 509
	.uleb128 0x20
	.4byte	.LASF825
	.sleb128 510
	.uleb128 0x20
	.4byte	.LASF826
	.sleb128 511
	.uleb128 0x20
	.4byte	.LASF827
	.sleb128 512
	.uleb128 0x20
	.4byte	.LASF828
	.sleb128 513
	.uleb128 0x20
	.4byte	.LASF829
	.sleb128 514
	.uleb128 0x20
	.4byte	.LASF830
	.sleb128 515
	.uleb128 0x20
	.4byte	.LASF831
	.sleb128 516
	.uleb128 0x20
	.4byte	.LASF832
	.sleb128 517
	.uleb128 0x20
	.4byte	.LASF833
	.sleb128 518
	.uleb128 0x20
	.4byte	.LASF834
	.sleb128 519
	.uleb128 0x20
	.4byte	.LASF835
	.sleb128 520
	.uleb128 0x20
	.4byte	.LASF836
	.sleb128 521
	.uleb128 0x20
	.4byte	.LASF837
	.sleb128 522
	.uleb128 0x20
	.4byte	.LASF838
	.sleb128 523
	.uleb128 0x20
	.4byte	.LASF839
	.sleb128 524
	.uleb128 0x20
	.4byte	.LASF840
	.sleb128 525
	.uleb128 0x20
	.4byte	.LASF841
	.sleb128 526
	.uleb128 0x20
	.4byte	.LASF842
	.sleb128 527
	.uleb128 0x20
	.4byte	.LASF843
	.sleb128 528
	.uleb128 0x20
	.4byte	.LASF844
	.sleb128 529
	.uleb128 0x20
	.4byte	.LASF845
	.sleb128 530
	.uleb128 0x20
	.4byte	.LASF846
	.sleb128 531
	.uleb128 0x20
	.4byte	.LASF847
	.sleb128 532
	.uleb128 0x20
	.4byte	.LASF848
	.sleb128 533
	.uleb128 0x20
	.4byte	.LASF849
	.sleb128 534
	.uleb128 0x20
	.4byte	.LASF850
	.sleb128 535
	.uleb128 0x20
	.4byte	.LASF851
	.sleb128 536
	.uleb128 0x20
	.4byte	.LASF852
	.sleb128 537
	.uleb128 0x20
	.4byte	.LASF853
	.sleb128 538
	.uleb128 0x20
	.4byte	.LASF854
	.sleb128 539
	.uleb128 0x20
	.4byte	.LASF855
	.sleb128 540
	.uleb128 0x20
	.4byte	.LASF856
	.sleb128 541
	.uleb128 0x20
	.4byte	.LASF857
	.sleb128 542
	.uleb128 0x20
	.4byte	.LASF858
	.sleb128 543
	.uleb128 0x20
	.4byte	.LASF859
	.sleb128 544
	.uleb128 0x20
	.4byte	.LASF860
	.sleb128 545
	.uleb128 0x20
	.4byte	.LASF861
	.sleb128 546
	.uleb128 0x20
	.4byte	.LASF862
	.sleb128 547
	.uleb128 0x20
	.4byte	.LASF863
	.sleb128 548
	.uleb128 0x20
	.4byte	.LASF864
	.sleb128 549
	.uleb128 0x20
	.4byte	.LASF865
	.sleb128 550
	.uleb128 0x20
	.4byte	.LASF866
	.sleb128 551
	.uleb128 0x20
	.4byte	.LASF867
	.sleb128 552
	.uleb128 0x20
	.4byte	.LASF868
	.sleb128 553
	.uleb128 0x20
	.4byte	.LASF869
	.sleb128 554
	.uleb128 0x20
	.4byte	.LASF870
	.sleb128 555
	.uleb128 0x20
	.4byte	.LASF871
	.sleb128 556
	.uleb128 0x20
	.4byte	.LASF872
	.sleb128 557
	.uleb128 0x20
	.4byte	.LASF873
	.sleb128 558
	.uleb128 0x20
	.4byte	.LASF874
	.sleb128 559
	.uleb128 0x20
	.4byte	.LASF875
	.sleb128 560
	.uleb128 0x20
	.4byte	.LASF876
	.sleb128 561
	.uleb128 0x20
	.4byte	.LASF877
	.sleb128 562
	.uleb128 0x20
	.4byte	.LASF878
	.sleb128 563
	.uleb128 0x20
	.4byte	.LASF879
	.sleb128 564
	.uleb128 0x20
	.4byte	.LASF880
	.sleb128 565
	.uleb128 0x20
	.4byte	.LASF881
	.sleb128 566
	.uleb128 0x20
	.4byte	.LASF882
	.sleb128 567
	.uleb128 0x20
	.4byte	.LASF883
	.sleb128 568
	.uleb128 0x20
	.4byte	.LASF884
	.sleb128 569
	.uleb128 0x20
	.4byte	.LASF885
	.sleb128 570
	.uleb128 0x20
	.4byte	.LASF886
	.sleb128 571
	.uleb128 0x20
	.4byte	.LASF887
	.sleb128 572
	.uleb128 0x20
	.4byte	.LASF888
	.sleb128 573
	.uleb128 0x20
	.4byte	.LASF889
	.sleb128 574
	.uleb128 0x20
	.4byte	.LASF890
	.sleb128 575
	.uleb128 0x20
	.4byte	.LASF891
	.sleb128 576
	.uleb128 0x20
	.4byte	.LASF892
	.sleb128 577
	.uleb128 0x20
	.4byte	.LASF893
	.sleb128 578
	.uleb128 0x20
	.4byte	.LASF894
	.sleb128 579
	.uleb128 0x20
	.4byte	.LASF895
	.sleb128 580
	.uleb128 0x20
	.4byte	.LASF896
	.sleb128 581
	.uleb128 0x20
	.4byte	.LASF897
	.sleb128 582
	.uleb128 0x20
	.4byte	.LASF898
	.sleb128 583
	.uleb128 0x20
	.4byte	.LASF899
	.sleb128 584
	.uleb128 0x20
	.4byte	.LASF900
	.sleb128 585
	.uleb128 0x20
	.4byte	.LASF901
	.sleb128 586
	.uleb128 0x20
	.4byte	.LASF902
	.sleb128 587
	.uleb128 0x20
	.4byte	.LASF903
	.sleb128 588
	.uleb128 0x20
	.4byte	.LASF904
	.sleb128 589
	.uleb128 0x20
	.4byte	.LASF905
	.sleb128 590
	.uleb128 0x20
	.4byte	.LASF906
	.sleb128 591
	.uleb128 0x20
	.4byte	.LASF907
	.sleb128 592
	.uleb128 0x20
	.4byte	.LASF908
	.sleb128 593
	.uleb128 0x20
	.4byte	.LASF909
	.sleb128 594
	.uleb128 0x20
	.4byte	.LASF910
	.sleb128 595
	.uleb128 0x20
	.4byte	.LASF911
	.sleb128 596
	.uleb128 0x20
	.4byte	.LASF912
	.sleb128 597
	.uleb128 0x20
	.4byte	.LASF913
	.sleb128 598
	.uleb128 0x20
	.4byte	.LASF914
	.sleb128 599
	.uleb128 0x20
	.4byte	.LASF915
	.sleb128 600
	.uleb128 0x20
	.4byte	.LASF916
	.sleb128 601
	.uleb128 0x20
	.4byte	.LASF917
	.sleb128 602
	.uleb128 0x20
	.4byte	.LASF918
	.sleb128 603
	.uleb128 0x20
	.4byte	.LASF919
	.sleb128 604
	.uleb128 0x20
	.4byte	.LASF920
	.sleb128 605
	.uleb128 0x20
	.4byte	.LASF921
	.sleb128 606
	.uleb128 0x20
	.4byte	.LASF922
	.sleb128 607
	.uleb128 0x20
	.4byte	.LASF923
	.sleb128 608
	.uleb128 0x20
	.4byte	.LASF924
	.sleb128 609
	.uleb128 0x20
	.4byte	.LASF925
	.sleb128 610
	.uleb128 0x20
	.4byte	.LASF926
	.sleb128 611
	.uleb128 0x20
	.4byte	.LASF927
	.sleb128 612
	.uleb128 0x20
	.4byte	.LASF928
	.sleb128 613
	.uleb128 0x20
	.4byte	.LASF929
	.sleb128 614
	.uleb128 0x20
	.4byte	.LASF930
	.sleb128 615
	.uleb128 0x20
	.4byte	.LASF931
	.sleb128 616
	.uleb128 0x20
	.4byte	.LASF932
	.sleb128 617
	.uleb128 0x20
	.4byte	.LASF933
	.sleb128 618
	.uleb128 0x20
	.4byte	.LASF934
	.sleb128 619
	.uleb128 0x20
	.4byte	.LASF935
	.sleb128 620
	.uleb128 0x20
	.4byte	.LASF936
	.sleb128 621
	.uleb128 0x20
	.4byte	.LASF937
	.sleb128 622
	.uleb128 0x20
	.4byte	.LASF938
	.sleb128 623
	.uleb128 0x20
	.4byte	.LASF939
	.sleb128 624
	.uleb128 0x20
	.4byte	.LASF940
	.sleb128 625
	.uleb128 0x20
	.4byte	.LASF941
	.sleb128 626
	.uleb128 0x20
	.4byte	.LASF942
	.sleb128 627
	.uleb128 0x20
	.4byte	.LASF943
	.sleb128 628
	.uleb128 0x20
	.4byte	.LASF944
	.sleb128 629
	.uleb128 0x20
	.4byte	.LASF945
	.sleb128 630
	.uleb128 0x20
	.4byte	.LASF946
	.sleb128 631
	.uleb128 0x20
	.4byte	.LASF947
	.sleb128 632
	.uleb128 0x20
	.4byte	.LASF948
	.sleb128 633
	.uleb128 0x20
	.4byte	.LASF949
	.sleb128 634
	.uleb128 0x20
	.4byte	.LASF950
	.sleb128 635
	.uleb128 0x20
	.4byte	.LASF951
	.sleb128 636
	.uleb128 0x20
	.4byte	.LASF952
	.sleb128 637
	.uleb128 0x20
	.4byte	.LASF953
	.sleb128 638
	.uleb128 0x20
	.4byte	.LASF954
	.sleb128 639
	.uleb128 0x20
	.4byte	.LASF955
	.sleb128 640
	.uleb128 0x20
	.4byte	.LASF956
	.sleb128 641
	.uleb128 0x20
	.4byte	.LASF957
	.sleb128 642
	.uleb128 0x20
	.4byte	.LASF958
	.sleb128 643
	.uleb128 0x20
	.4byte	.LASF959
	.sleb128 644
	.uleb128 0x20
	.4byte	.LASF960
	.sleb128 645
	.uleb128 0x20
	.4byte	.LASF961
	.sleb128 646
	.uleb128 0x20
	.4byte	.LASF962
	.sleb128 647
	.uleb128 0x20
	.4byte	.LASF963
	.sleb128 648
	.uleb128 0x20
	.4byte	.LASF964
	.sleb128 649
	.uleb128 0x20
	.4byte	.LASF965
	.sleb128 650
	.uleb128 0x20
	.4byte	.LASF966
	.sleb128 651
	.uleb128 0x20
	.4byte	.LASF967
	.sleb128 652
	.uleb128 0x20
	.4byte	.LASF968
	.sleb128 653
	.uleb128 0x20
	.4byte	.LASF969
	.sleb128 654
	.uleb128 0x20
	.4byte	.LASF970
	.sleb128 655
	.uleb128 0x20
	.4byte	.LASF971
	.sleb128 656
	.uleb128 0x20
	.4byte	.LASF972
	.sleb128 657
	.uleb128 0x20
	.4byte	.LASF973
	.sleb128 658
	.uleb128 0x20
	.4byte	.LASF974
	.sleb128 659
	.uleb128 0x20
	.4byte	.LASF975
	.sleb128 660
	.uleb128 0x20
	.4byte	.LASF976
	.sleb128 661
	.uleb128 0x20
	.4byte	.LASF977
	.sleb128 662
	.uleb128 0x20
	.4byte	.LASF978
	.sleb128 663
	.uleb128 0x20
	.4byte	.LASF979
	.sleb128 664
	.uleb128 0x20
	.4byte	.LASF980
	.sleb128 665
	.uleb128 0x20
	.4byte	.LASF981
	.sleb128 666
	.uleb128 0x20
	.4byte	.LASF982
	.sleb128 667
	.uleb128 0x20
	.4byte	.LASF983
	.sleb128 668
	.uleb128 0x20
	.4byte	.LASF984
	.sleb128 669
	.uleb128 0x20
	.4byte	.LASF985
	.sleb128 670
	.uleb128 0x20
	.4byte	.LASF986
	.sleb128 671
	.uleb128 0x20
	.4byte	.LASF987
	.sleb128 672
	.uleb128 0x20
	.4byte	.LASF988
	.sleb128 673
	.uleb128 0x20
	.4byte	.LASF989
	.sleb128 674
	.uleb128 0x20
	.4byte	.LASF990
	.sleb128 675
	.uleb128 0x20
	.4byte	.LASF991
	.sleb128 676
	.uleb128 0x20
	.4byte	.LASF992
	.sleb128 677
	.uleb128 0x20
	.4byte	.LASF993
	.sleb128 678
	.uleb128 0x20
	.4byte	.LASF994
	.sleb128 679
	.uleb128 0x20
	.4byte	.LASF995
	.sleb128 680
	.uleb128 0x20
	.4byte	.LASF996
	.sleb128 681
	.uleb128 0x20
	.4byte	.LASF997
	.sleb128 682
	.uleb128 0x20
	.4byte	.LASF998
	.sleb128 683
	.uleb128 0x20
	.4byte	.LASF999
	.sleb128 684
	.uleb128 0x20
	.4byte	.LASF1000
	.sleb128 685
	.uleb128 0x20
	.4byte	.LASF1001
	.sleb128 686
	.uleb128 0x20
	.4byte	.LASF1002
	.sleb128 687
	.uleb128 0x20
	.4byte	.LASF1003
	.sleb128 688
	.uleb128 0x20
	.4byte	.LASF1004
	.sleb128 689
	.uleb128 0x20
	.4byte	.LASF1005
	.sleb128 690
	.uleb128 0x20
	.4byte	.LASF1006
	.sleb128 691
	.uleb128 0x20
	.4byte	.LASF1007
	.sleb128 692
	.uleb128 0x20
	.4byte	.LASF1008
	.sleb128 693
	.uleb128 0x20
	.4byte	.LASF1009
	.sleb128 694
	.uleb128 0x20
	.4byte	.LASF1010
	.sleb128 695
	.uleb128 0x20
	.4byte	.LASF1011
	.sleb128 696
	.uleb128 0x20
	.4byte	.LASF1012
	.sleb128 697
	.uleb128 0x20
	.4byte	.LASF1013
	.sleb128 698
	.uleb128 0x20
	.4byte	.LASF1014
	.sleb128 699
	.uleb128 0x20
	.4byte	.LASF1015
	.sleb128 700
	.uleb128 0x20
	.4byte	.LASF1016
	.sleb128 701
	.uleb128 0x20
	.4byte	.LASF1017
	.sleb128 702
	.uleb128 0x20
	.4byte	.LASF1018
	.sleb128 703
	.uleb128 0x20
	.4byte	.LASF1019
	.sleb128 704
	.uleb128 0x20
	.4byte	.LASF1020
	.sleb128 705
	.uleb128 0x20
	.4byte	.LASF1021
	.sleb128 706
	.uleb128 0x20
	.4byte	.LASF1022
	.sleb128 707
	.uleb128 0x20
	.4byte	.LASF1023
	.sleb128 708
	.uleb128 0x20
	.4byte	.LASF1024
	.sleb128 709
	.uleb128 0x20
	.4byte	.LASF1025
	.sleb128 710
	.uleb128 0x20
	.4byte	.LASF1026
	.sleb128 711
	.uleb128 0x20
	.4byte	.LASF1027
	.sleb128 712
	.uleb128 0x20
	.4byte	.LASF1028
	.sleb128 713
	.uleb128 0x20
	.4byte	.LASF1029
	.sleb128 714
	.uleb128 0x20
	.4byte	.LASF1030
	.sleb128 715
	.uleb128 0x20
	.4byte	.LASF1031
	.sleb128 716
	.uleb128 0x20
	.4byte	.LASF1032
	.sleb128 717
	.uleb128 0x20
	.4byte	.LASF1033
	.sleb128 718
	.uleb128 0x20
	.4byte	.LASF1034
	.sleb128 719
	.uleb128 0x20
	.4byte	.LASF1035
	.sleb128 720
	.uleb128 0x20
	.4byte	.LASF1036
	.sleb128 721
	.uleb128 0x20
	.4byte	.LASF1037
	.sleb128 722
	.uleb128 0x20
	.4byte	.LASF1038
	.sleb128 723
	.uleb128 0x20
	.4byte	.LASF1039
	.sleb128 724
	.uleb128 0x20
	.4byte	.LASF1040
	.sleb128 725
	.uleb128 0x20
	.4byte	.LASF1041
	.sleb128 726
	.uleb128 0x20
	.4byte	.LASF1042
	.sleb128 727
	.uleb128 0x20
	.4byte	.LASF1043
	.sleb128 728
	.uleb128 0x20
	.4byte	.LASF1044
	.sleb128 729
	.uleb128 0x20
	.4byte	.LASF1045
	.sleb128 730
	.uleb128 0x20
	.4byte	.LASF1046
	.sleb128 731
	.uleb128 0x20
	.4byte	.LASF1047
	.sleb128 732
	.uleb128 0x20
	.4byte	.LASF1048
	.sleb128 733
	.uleb128 0x20
	.4byte	.LASF1049
	.sleb128 734
	.uleb128 0x20
	.4byte	.LASF1050
	.sleb128 735
	.uleb128 0x20
	.4byte	.LASF1051
	.sleb128 736
	.uleb128 0x20
	.4byte	.LASF1052
	.sleb128 737
	.uleb128 0x20
	.4byte	.LASF1053
	.sleb128 738
	.uleb128 0x20
	.4byte	.LASF1054
	.sleb128 739
	.uleb128 0x20
	.4byte	.LASF1055
	.sleb128 740
	.uleb128 0x20
	.4byte	.LASF1056
	.sleb128 741
	.uleb128 0x20
	.4byte	.LASF1057
	.sleb128 742
	.uleb128 0x20
	.4byte	.LASF1058
	.sleb128 743
	.uleb128 0x20
	.4byte	.LASF1059
	.sleb128 744
	.uleb128 0x20
	.4byte	.LASF1060
	.sleb128 745
	.uleb128 0x20
	.4byte	.LASF1061
	.sleb128 746
	.uleb128 0x20
	.4byte	.LASF1062
	.sleb128 747
	.uleb128 0x20
	.4byte	.LASF1063
	.sleb128 748
	.uleb128 0x20
	.4byte	.LASF1064
	.sleb128 749
	.uleb128 0x20
	.4byte	.LASF1065
	.sleb128 750
	.uleb128 0x20
	.4byte	.LASF1066
	.sleb128 751
	.uleb128 0x20
	.4byte	.LASF1067
	.sleb128 752
	.uleb128 0x20
	.4byte	.LASF1068
	.sleb128 753
	.uleb128 0x20
	.4byte	.LASF1069
	.sleb128 754
	.uleb128 0x20
	.4byte	.LASF1070
	.sleb128 755
	.uleb128 0x20
	.4byte	.LASF1071
	.sleb128 756
	.uleb128 0x20
	.4byte	.LASF1072
	.sleb128 757
	.uleb128 0x20
	.4byte	.LASF1073
	.sleb128 758
	.uleb128 0x20
	.4byte	.LASF1074
	.sleb128 759
	.uleb128 0x20
	.4byte	.LASF1075
	.sleb128 760
	.uleb128 0x20
	.4byte	.LASF1076
	.sleb128 761
	.uleb128 0x20
	.4byte	.LASF1077
	.sleb128 762
	.uleb128 0x20
	.4byte	.LASF1078
	.sleb128 763
	.uleb128 0x20
	.4byte	.LASF1079
	.sleb128 764
	.uleb128 0x20
	.4byte	.LASF1080
	.sleb128 765
	.uleb128 0x20
	.4byte	.LASF1081
	.sleb128 766
	.uleb128 0x20
	.4byte	.LASF1082
	.sleb128 767
	.uleb128 0x20
	.4byte	.LASF1083
	.sleb128 768
	.uleb128 0x20
	.4byte	.LASF1084
	.sleb128 769
	.uleb128 0x20
	.4byte	.LASF1085
	.sleb128 770
	.uleb128 0x20
	.4byte	.LASF1086
	.sleb128 771
	.uleb128 0x20
	.4byte	.LASF1087
	.sleb128 772
	.uleb128 0x20
	.4byte	.LASF1088
	.sleb128 773
	.uleb128 0x20
	.4byte	.LASF1089
	.sleb128 774
	.uleb128 0x20
	.4byte	.LASF1090
	.sleb128 775
	.uleb128 0x20
	.4byte	.LASF1091
	.sleb128 776
	.uleb128 0x20
	.4byte	.LASF1092
	.sleb128 777
	.uleb128 0x20
	.4byte	.LASF1093
	.sleb128 778
	.uleb128 0x20
	.4byte	.LASF1094
	.sleb128 779
	.uleb128 0x20
	.4byte	.LASF1095
	.sleb128 780
	.uleb128 0x20
	.4byte	.LASF1096
	.sleb128 781
	.uleb128 0x20
	.4byte	.LASF1097
	.sleb128 782
	.uleb128 0x20
	.4byte	.LASF1098
	.sleb128 783
	.uleb128 0x20
	.4byte	.LASF1099
	.sleb128 784
	.uleb128 0x20
	.4byte	.LASF1100
	.sleb128 785
	.uleb128 0x20
	.4byte	.LASF1101
	.sleb128 786
	.uleb128 0x20
	.4byte	.LASF1102
	.sleb128 787
	.uleb128 0x20
	.4byte	.LASF1103
	.sleb128 788
	.uleb128 0x20
	.4byte	.LASF1104
	.sleb128 789
	.uleb128 0x20
	.4byte	.LASF1105
	.sleb128 790
	.uleb128 0x20
	.4byte	.LASF1106
	.sleb128 791
	.uleb128 0x20
	.4byte	.LASF1107
	.sleb128 792
	.uleb128 0x20
	.4byte	.LASF1108
	.sleb128 793
	.uleb128 0x20
	.4byte	.LASF1109
	.sleb128 794
	.uleb128 0x20
	.4byte	.LASF1110
	.sleb128 795
	.uleb128 0x20
	.4byte	.LASF1111
	.sleb128 796
	.uleb128 0x20
	.4byte	.LASF1112
	.sleb128 797
	.uleb128 0x20
	.4byte	.LASF1113
	.sleb128 798
	.uleb128 0x20
	.4byte	.LASF1114
	.sleb128 799
	.uleb128 0x20
	.4byte	.LASF1115
	.sleb128 800
	.uleb128 0x20
	.4byte	.LASF1116
	.sleb128 801
	.uleb128 0x20
	.4byte	.LASF1117
	.sleb128 802
	.uleb128 0x20
	.4byte	.LASF1118
	.sleb128 803
	.uleb128 0x20
	.4byte	.LASF1119
	.sleb128 804
	.uleb128 0x20
	.4byte	.LASF1120
	.sleb128 805
	.uleb128 0x20
	.4byte	.LASF1121
	.sleb128 806
	.uleb128 0x20
	.4byte	.LASF1122
	.sleb128 807
	.uleb128 0x20
	.4byte	.LASF1123
	.sleb128 808
	.uleb128 0x20
	.4byte	.LASF1124
	.sleb128 809
	.uleb128 0x20
	.4byte	.LASF1125
	.sleb128 810
	.uleb128 0x20
	.4byte	.LASF1126
	.sleb128 811
	.uleb128 0x20
	.4byte	.LASF1127
	.sleb128 812
	.uleb128 0x20
	.4byte	.LASF1128
	.sleb128 813
	.uleb128 0x20
	.4byte	.LASF1129
	.sleb128 814
	.uleb128 0x20
	.4byte	.LASF1130
	.sleb128 815
	.uleb128 0x20
	.4byte	.LASF1131
	.sleb128 816
	.uleb128 0x20
	.4byte	.LASF1132
	.sleb128 817
	.uleb128 0x20
	.4byte	.LASF1133
	.sleb128 818
	.uleb128 0x20
	.4byte	.LASF1134
	.sleb128 819
	.uleb128 0x20
	.4byte	.LASF1135
	.sleb128 820
	.uleb128 0x20
	.4byte	.LASF1136
	.sleb128 821
	.uleb128 0x20
	.4byte	.LASF1137
	.sleb128 822
	.uleb128 0x20
	.4byte	.LASF1138
	.sleb128 823
	.uleb128 0x20
	.4byte	.LASF1139
	.sleb128 824
	.uleb128 0x20
	.4byte	.LASF1140
	.sleb128 825
	.uleb128 0x20
	.4byte	.LASF1141
	.sleb128 826
	.uleb128 0x20
	.4byte	.LASF1142
	.sleb128 827
	.uleb128 0x20
	.4byte	.LASF1143
	.sleb128 828
	.uleb128 0x20
	.4byte	.LASF1144
	.sleb128 829
	.uleb128 0x20
	.4byte	.LASF1145
	.sleb128 830
	.uleb128 0x20
	.4byte	.LASF1146
	.sleb128 831
	.uleb128 0x20
	.4byte	.LASF1147
	.sleb128 832
	.uleb128 0x20
	.4byte	.LASF1148
	.sleb128 833
	.uleb128 0x20
	.4byte	.LASF1149
	.sleb128 834
	.uleb128 0x20
	.4byte	.LASF1150
	.sleb128 835
	.uleb128 0x20
	.4byte	.LASF1151
	.sleb128 836
	.uleb128 0x20
	.4byte	.LASF1152
	.sleb128 837
	.uleb128 0x20
	.4byte	.LASF1153
	.sleb128 838
	.uleb128 0x20
	.4byte	.LASF1154
	.sleb128 839
	.uleb128 0x20
	.4byte	.LASF1155
	.sleb128 840
	.uleb128 0x20
	.4byte	.LASF1156
	.sleb128 841
	.uleb128 0x20
	.4byte	.LASF1157
	.sleb128 842
	.uleb128 0x20
	.4byte	.LASF1158
	.sleb128 843
	.uleb128 0x20
	.4byte	.LASF1159
	.sleb128 844
	.uleb128 0x20
	.4byte	.LASF1160
	.sleb128 845
	.uleb128 0x20
	.4byte	.LASF1161
	.sleb128 846
	.uleb128 0x20
	.4byte	.LASF1162
	.sleb128 847
	.uleb128 0x20
	.4byte	.LASF1163
	.sleb128 848
	.uleb128 0x20
	.4byte	.LASF1164
	.sleb128 849
	.uleb128 0x20
	.4byte	.LASF1165
	.sleb128 850
	.uleb128 0x20
	.4byte	.LASF1166
	.sleb128 851
	.uleb128 0x20
	.4byte	.LASF1167
	.sleb128 852
	.uleb128 0x20
	.4byte	.LASF1168
	.sleb128 853
	.uleb128 0x20
	.4byte	.LASF1169
	.sleb128 854
	.uleb128 0x20
	.4byte	.LASF1170
	.sleb128 855
	.uleb128 0x20
	.4byte	.LASF1171
	.sleb128 856
	.uleb128 0x20
	.4byte	.LASF1172
	.sleb128 857
	.uleb128 0x20
	.4byte	.LASF1173
	.sleb128 858
	.uleb128 0x20
	.4byte	.LASF1174
	.sleb128 859
	.uleb128 0x20
	.4byte	.LASF1175
	.sleb128 860
	.uleb128 0x20
	.4byte	.LASF1176
	.sleb128 861
	.uleb128 0x20
	.4byte	.LASF1177
	.sleb128 862
	.uleb128 0x20
	.4byte	.LASF1178
	.sleb128 863
	.uleb128 0x20
	.4byte	.LASF1179
	.sleb128 864
	.uleb128 0x20
	.4byte	.LASF1180
	.sleb128 865
	.uleb128 0x20
	.4byte	.LASF1181
	.sleb128 866
	.uleb128 0x20
	.4byte	.LASF1182
	.sleb128 867
	.uleb128 0x20
	.4byte	.LASF1183
	.sleb128 868
	.uleb128 0x20
	.4byte	.LASF1184
	.sleb128 869
	.uleb128 0x20
	.4byte	.LASF1185
	.sleb128 870
	.uleb128 0x20
	.4byte	.LASF1186
	.sleb128 871
	.uleb128 0x20
	.4byte	.LASF1187
	.sleb128 872
	.uleb128 0x20
	.4byte	.LASF1188
	.sleb128 873
	.uleb128 0x20
	.4byte	.LASF1189
	.sleb128 874
	.uleb128 0x20
	.4byte	.LASF1190
	.sleb128 875
	.uleb128 0x20
	.4byte	.LASF1191
	.sleb128 876
	.uleb128 0x20
	.4byte	.LASF1192
	.sleb128 877
	.uleb128 0x20
	.4byte	.LASF1193
	.sleb128 878
	.uleb128 0x20
	.4byte	.LASF1194
	.sleb128 879
	.uleb128 0x20
	.4byte	.LASF1195
	.sleb128 880
	.uleb128 0x20
	.4byte	.LASF1196
	.sleb128 881
	.uleb128 0x20
	.4byte	.LASF1197
	.sleb128 882
	.uleb128 0x20
	.4byte	.LASF1198
	.sleb128 883
	.uleb128 0x20
	.4byte	.LASF1199
	.sleb128 884
	.uleb128 0x20
	.4byte	.LASF1200
	.sleb128 885
	.uleb128 0x20
	.4byte	.LASF1201
	.sleb128 886
	.uleb128 0x20
	.4byte	.LASF1202
	.sleb128 887
	.uleb128 0x20
	.4byte	.LASF1203
	.sleb128 888
	.uleb128 0x20
	.4byte	.LASF1204
	.sleb128 889
	.uleb128 0x20
	.4byte	.LASF1205
	.sleb128 890
	.uleb128 0x20
	.4byte	.LASF1206
	.sleb128 891
	.uleb128 0x20
	.4byte	.LASF1207
	.sleb128 892
	.uleb128 0x20
	.4byte	.LASF1208
	.sleb128 893
	.uleb128 0x20
	.4byte	.LASF1209
	.sleb128 894
	.uleb128 0x20
	.4byte	.LASF1210
	.sleb128 895
	.uleb128 0x20
	.4byte	.LASF1211
	.sleb128 896
	.uleb128 0x20
	.4byte	.LASF1212
	.sleb128 897
	.uleb128 0x20
	.4byte	.LASF1213
	.sleb128 898
	.uleb128 0x20
	.4byte	.LASF1214
	.sleb128 899
	.uleb128 0x20
	.4byte	.LASF1215
	.sleb128 900
	.uleb128 0x20
	.4byte	.LASF1216
	.sleb128 901
	.uleb128 0x20
	.4byte	.LASF1217
	.sleb128 902
	.uleb128 0x20
	.4byte	.LASF1218
	.sleb128 903
	.uleb128 0x20
	.4byte	.LASF1219
	.sleb128 904
	.uleb128 0x20
	.4byte	.LASF1220
	.sleb128 905
	.uleb128 0x20
	.4byte	.LASF1221
	.sleb128 906
	.uleb128 0x20
	.4byte	.LASF1222
	.sleb128 907
	.uleb128 0x20
	.4byte	.LASF1223
	.sleb128 908
	.uleb128 0x20
	.4byte	.LASF1224
	.sleb128 909
	.uleb128 0x20
	.4byte	.LASF1225
	.sleb128 910
	.uleb128 0x20
	.4byte	.LASF1226
	.sleb128 911
	.uleb128 0x20
	.4byte	.LASF1227
	.sleb128 912
	.uleb128 0x20
	.4byte	.LASF1228
	.sleb128 913
	.uleb128 0x20
	.4byte	.LASF1229
	.sleb128 914
	.uleb128 0x20
	.4byte	.LASF1230
	.sleb128 915
	.uleb128 0x20
	.4byte	.LASF1231
	.sleb128 916
	.uleb128 0x20
	.4byte	.LASF1232
	.sleb128 917
	.uleb128 0x20
	.4byte	.LASF1233
	.sleb128 918
	.uleb128 0x20
	.4byte	.LASF1234
	.sleb128 919
	.uleb128 0x20
	.4byte	.LASF1235
	.sleb128 920
	.uleb128 0x20
	.4byte	.LASF1236
	.sleb128 921
	.uleb128 0x20
	.4byte	.LASF1237
	.sleb128 922
	.uleb128 0x20
	.4byte	.LASF1238
	.sleb128 923
	.uleb128 0x20
	.4byte	.LASF1239
	.sleb128 924
	.uleb128 0x20
	.4byte	.LASF1240
	.sleb128 925
	.uleb128 0x20
	.4byte	.LASF1241
	.sleb128 926
	.uleb128 0x20
	.4byte	.LASF1242
	.sleb128 927
	.uleb128 0x20
	.4byte	.LASF1243
	.sleb128 928
	.uleb128 0x20
	.4byte	.LASF1244
	.sleb128 929
	.uleb128 0x20
	.4byte	.LASF1245
	.sleb128 930
	.uleb128 0x20
	.4byte	.LASF1246
	.sleb128 931
	.uleb128 0x20
	.4byte	.LASF1247
	.sleb128 932
	.uleb128 0x20
	.4byte	.LASF1248
	.sleb128 933
	.uleb128 0x20
	.4byte	.LASF1249
	.sleb128 934
	.uleb128 0x20
	.4byte	.LASF1250
	.sleb128 935
	.uleb128 0x20
	.4byte	.LASF1251
	.sleb128 936
	.uleb128 0x20
	.4byte	.LASF1252
	.sleb128 937
	.uleb128 0x20
	.4byte	.LASF1253
	.sleb128 938
	.uleb128 0x20
	.4byte	.LASF1254
	.sleb128 939
	.uleb128 0x20
	.4byte	.LASF1255
	.sleb128 940
	.uleb128 0x20
	.4byte	.LASF1256
	.sleb128 941
	.uleb128 0x20
	.4byte	.LASF1257
	.sleb128 942
	.uleb128 0x20
	.4byte	.LASF1258
	.sleb128 943
	.uleb128 0x20
	.4byte	.LASF1259
	.sleb128 944
	.uleb128 0x20
	.4byte	.LASF1260
	.sleb128 945
	.uleb128 0x20
	.4byte	.LASF1261
	.sleb128 946
	.uleb128 0x20
	.4byte	.LASF1262
	.sleb128 947
	.uleb128 0x20
	.4byte	.LASF1263
	.sleb128 948
	.uleb128 0x20
	.4byte	.LASF1264
	.sleb128 949
	.uleb128 0x20
	.4byte	.LASF1265
	.sleb128 950
	.uleb128 0x20
	.4byte	.LASF1266
	.sleb128 951
	.uleb128 0x20
	.4byte	.LASF1267
	.sleb128 952
	.uleb128 0x20
	.4byte	.LASF1268
	.sleb128 953
	.uleb128 0x20
	.4byte	.LASF1269
	.sleb128 954
	.uleb128 0x20
	.4byte	.LASF1270
	.sleb128 955
	.uleb128 0x20
	.4byte	.LASF1271
	.sleb128 956
	.uleb128 0x20
	.4byte	.LASF1272
	.sleb128 957
	.uleb128 0x20
	.4byte	.LASF1273
	.sleb128 958
	.uleb128 0x20
	.4byte	.LASF1274
	.sleb128 959
	.uleb128 0x20
	.4byte	.LASF1275
	.sleb128 960
	.uleb128 0x20
	.4byte	.LASF1276
	.sleb128 961
	.uleb128 0x20
	.4byte	.LASF1277
	.sleb128 962
	.uleb128 0x20
	.4byte	.LASF1278
	.sleb128 963
	.uleb128 0x20
	.4byte	.LASF1279
	.sleb128 964
	.uleb128 0x20
	.4byte	.LASF1280
	.sleb128 965
	.uleb128 0x20
	.4byte	.LASF1281
	.sleb128 966
	.uleb128 0x20
	.4byte	.LASF1282
	.sleb128 967
	.uleb128 0x20
	.4byte	.LASF1283
	.sleb128 968
	.uleb128 0x20
	.4byte	.LASF1284
	.sleb128 969
	.uleb128 0x20
	.4byte	.LASF1285
	.sleb128 970
	.uleb128 0x20
	.4byte	.LASF1286
	.sleb128 971
	.uleb128 0x20
	.4byte	.LASF1287
	.sleb128 972
	.uleb128 0x20
	.4byte	.LASF1288
	.sleb128 973
	.uleb128 0x20
	.4byte	.LASF1289
	.sleb128 974
	.uleb128 0x20
	.4byte	.LASF1290
	.sleb128 975
	.uleb128 0x20
	.4byte	.LASF1291
	.sleb128 976
	.uleb128 0x20
	.4byte	.LASF1292
	.sleb128 977
	.uleb128 0x20
	.4byte	.LASF1293
	.sleb128 978
	.uleb128 0x20
	.4byte	.LASF1294
	.sleb128 979
	.uleb128 0x20
	.4byte	.LASF1295
	.sleb128 980
	.uleb128 0x20
	.4byte	.LASF1296
	.sleb128 981
	.uleb128 0x20
	.4byte	.LASF1297
	.sleb128 982
	.uleb128 0x20
	.4byte	.LASF1298
	.sleb128 983
	.uleb128 0x20
	.4byte	.LASF1299
	.sleb128 984
	.uleb128 0x20
	.4byte	.LASF1300
	.sleb128 985
	.uleb128 0x20
	.4byte	.LASF1301
	.sleb128 986
	.uleb128 0x20
	.4byte	.LASF1302
	.sleb128 987
	.uleb128 0x20
	.4byte	.LASF1303
	.sleb128 988
	.uleb128 0x20
	.4byte	.LASF1304
	.sleb128 989
	.uleb128 0x20
	.4byte	.LASF1305
	.sleb128 990
	.uleb128 0x20
	.4byte	.LASF1306
	.sleb128 991
	.uleb128 0x20
	.4byte	.LASF1307
	.sleb128 992
	.uleb128 0x20
	.4byte	.LASF1308
	.sleb128 993
	.uleb128 0x20
	.4byte	.LASF1309
	.sleb128 994
	.uleb128 0x20
	.4byte	.LASF1310
	.sleb128 995
	.uleb128 0x20
	.4byte	.LASF1311
	.sleb128 996
	.uleb128 0x20
	.4byte	.LASF1312
	.sleb128 997
	.uleb128 0x20
	.4byte	.LASF1313
	.sleb128 998
	.uleb128 0x20
	.4byte	.LASF1314
	.sleb128 999
	.uleb128 0x20
	.4byte	.LASF1315
	.sleb128 1040
	.uleb128 0x20
	.4byte	.LASF1316
	.sleb128 1041
	.uleb128 0x20
	.4byte	.LASF1317
	.sleb128 1042
	.uleb128 0x20
	.4byte	.LASF1318
	.sleb128 1043
	.uleb128 0x20
	.4byte	.LASF1319
	.sleb128 1044
	.uleb128 0x20
	.4byte	.LASF1320
	.sleb128 1045
	.uleb128 0x20
	.4byte	.LASF1321
	.sleb128 1046
	.uleb128 0x20
	.4byte	.LASF1322
	.sleb128 1047
	.uleb128 0x20
	.4byte	.LASF1323
	.sleb128 1048
	.uleb128 0x20
	.4byte	.LASF1324
	.sleb128 1049
	.uleb128 0x20
	.4byte	.LASF1325
	.sleb128 1050
	.uleb128 0x20
	.4byte	.LASF1326
	.sleb128 1051
	.uleb128 0x20
	.4byte	.LASF1327
	.sleb128 1052
	.uleb128 0x20
	.4byte	.LASF1328
	.sleb128 1053
	.uleb128 0x20
	.4byte	.LASF1329
	.sleb128 1054
	.uleb128 0x20
	.4byte	.LASF1330
	.sleb128 1055
	.uleb128 0x20
	.4byte	.LASF1331
	.sleb128 1056
	.uleb128 0x20
	.4byte	.LASF1332
	.sleb128 1057
	.uleb128 0x20
	.4byte	.LASF1333
	.sleb128 1058
	.uleb128 0x20
	.4byte	.LASF1334
	.sleb128 1059
	.uleb128 0x20
	.4byte	.LASF1335
	.sleb128 1060
	.uleb128 0x20
	.4byte	.LASF1336
	.sleb128 1061
	.uleb128 0x20
	.4byte	.LASF1337
	.sleb128 1062
	.uleb128 0x20
	.4byte	.LASF1338
	.sleb128 1063
	.uleb128 0x20
	.4byte	.LASF1339
	.sleb128 1064
	.uleb128 0x20
	.4byte	.LASF1340
	.sleb128 1065
	.uleb128 0x20
	.4byte	.LASF1341
	.sleb128 1066
	.uleb128 0x20
	.4byte	.LASF1342
	.sleb128 1067
	.uleb128 0x20
	.4byte	.LASF1343
	.sleb128 1068
	.uleb128 0x20
	.4byte	.LASF1344
	.sleb128 1069
	.uleb128 0x20
	.4byte	.LASF1345
	.sleb128 1070
	.uleb128 0x20
	.4byte	.LASF1346
	.sleb128 1071
	.uleb128 0x20
	.4byte	.LASF1347
	.sleb128 1072
	.uleb128 0x20
	.4byte	.LASF1348
	.sleb128 1073
	.uleb128 0x20
	.4byte	.LASF1349
	.sleb128 1074
	.uleb128 0x20
	.4byte	.LASF1350
	.sleb128 1075
	.uleb128 0x20
	.4byte	.LASF1351
	.sleb128 1076
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1352
	.byte	0xd
	.2byte	0x4e3
	.4byte	0xdfc
	.uleb128 0x1a
	.byte	0x1c
	.byte	0xd
	.2byte	0x4e9
	.4byte	0x2a91
	.uleb128 0x16
	.4byte	.LASF1353
	.byte	0xd
	.2byte	0x4eb
	.4byte	0xdf1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1354
	.byte	0xd
	.2byte	0x4ec
	.4byte	0x63
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1355
	.byte	0xd
	.2byte	0x4ed
	.4byte	0x63
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1356
	.byte	0xd
	.2byte	0x4ee
	.4byte	0xa35
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1357
	.byte	0xd
	.2byte	0x4ef
	.4byte	0x2a20
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1358
	.byte	0xd
	.2byte	0x4f0
	.4byte	0x63
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1359
	.byte	0xd
	.2byte	0x4f0
	.4byte	0x63
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1360
	.byte	0xd
	.2byte	0x4f1
	.4byte	0x2a2c
	.uleb128 0x23
	.byte	0x1
	.byte	0xd
	.2byte	0x4fd
	.4byte	0x2e96
	.uleb128 0x20
	.4byte	.LASF1361
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1362
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1363
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1364
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1365
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1366
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1367
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1368
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1369
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1370
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1371
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1372
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1373
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1374
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1375
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1376
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1377
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1378
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1379
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1380
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1381
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1382
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1383
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1384
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1385
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1386
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1387
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1388
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1389
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1390
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1391
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1392
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1393
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1394
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1395
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1396
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1397
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1398
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1399
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1400
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1401
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1402
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1403
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1404
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1405
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1406
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1407
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1408
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1409
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1410
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1411
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1412
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1413
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1414
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1415
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1416
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1417
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1418
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1419
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1420
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1421
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1422
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1423
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1424
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1425
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1426
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1427
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1428
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1429
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1430
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1431
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1432
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1433
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1434
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1435
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1436
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1437
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1438
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1439
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1440
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1441
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1442
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1443
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1444
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1445
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1446
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1447
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1448
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1449
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1450
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1451
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1452
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1453
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1454
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1455
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1456
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1457
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1458
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1459
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1460
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1461
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1462
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1463
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1464
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1465
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1466
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1467
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1468
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1469
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1470
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1471
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1472
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1473
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1474
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1475
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF1476
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF1477
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF1478
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF1479
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF1480
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF1481
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF1482
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF1483
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF1484
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF1485
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF1486
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF1487
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF1488
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF1489
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF1490
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF1491
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF1492
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF1493
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF1494
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF1495
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF1496
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF1497
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF1498
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF1499
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF1500
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF1501
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF1502
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF1503
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF1504
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF1505
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF1506
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF1507
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF1508
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF1509
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF1510
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF1511
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF1512
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF1513
	.sleb128 152
	.byte	0
	.uleb128 0x1a
	.byte	0x68
	.byte	0xd
	.2byte	0x5a8
	.4byte	0x2fcb
	.uleb128 0x16
	.4byte	.LASF1514
	.byte	0xd
	.2byte	0x5aa
	.4byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1515
	.byte	0xd
	.2byte	0x5ac
	.4byte	0x40
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1516
	.byte	0xd
	.2byte	0x5ae
	.4byte	0x40
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1517
	.byte	0xd
	.2byte	0x5af
	.4byte	0x40
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1518
	.byte	0xd
	.2byte	0x5b0
	.4byte	0x40
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1519
	.byte	0xd
	.2byte	0x5b1
	.4byte	0x40
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1520
	.byte	0xd
	.2byte	0x5b4
	.4byte	0x40
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF1521
	.byte	0xd
	.2byte	0x5b5
	.4byte	0x40
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF1522
	.byte	0xd
	.2byte	0x5b6
	.4byte	0x40
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1523
	.byte	0xd
	.2byte	0x5bc
	.4byte	0x40
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1524
	.byte	0xd
	.2byte	0x5bd
	.4byte	0x40
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1525
	.byte	0xd
	.2byte	0x5be
	.4byte	0x40
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1526
	.byte	0xd
	.2byte	0x5c0
	.4byte	0x40
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1527
	.byte	0xd
	.2byte	0x5c1
	.4byte	0x40
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1528
	.byte	0xd
	.2byte	0x5c3
	.4byte	0x40
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1529
	.byte	0xd
	.2byte	0x5c6
	.4byte	0x40
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF1530
	.byte	0xd
	.2byte	0x5c8
	.4byte	0x40
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1531
	.byte	0xd
	.2byte	0x5c9
	.4byte	0x40
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1532
	.byte	0xd
	.2byte	0x5cb
	.4byte	0x40
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF1533
	.byte	0xd
	.2byte	0x5ce
	.4byte	0x40
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF1534
	.byte	0xd
	.2byte	0x5cf
	.4byte	0x40
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF1535
	.byte	0xd
	.2byte	0x5d1
	.4byte	0x9c3
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF1536
	.byte	0xd
	.2byte	0x5d2
	.4byte	0x40
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1537
	.byte	0xd
	.2byte	0x5d5
	.4byte	0x2e96
	.uleb128 0x1f
	.byte	0x1
	.byte	0xe
	.byte	0x47
	.4byte	0x2ff2
	.uleb128 0x20
	.4byte	.LASF1538
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1539
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1540
	.sleb128 2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2fcb
	.uleb128 0x1f
	.byte	0x1
	.byte	0xf
	.byte	0x57
	.4byte	0x30a3
	.uleb128 0x20
	.4byte	.LASF1541
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1542
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1543
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1544
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1545
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1546
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1547
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1548
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1549
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1550
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1551
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1552
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1553
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1554
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1555
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1556
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1557
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1558
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1559
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1560
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1561
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1562
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1563
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1564
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1565
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1566
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1567
	.sleb128 32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1568
	.byte	0x10
	.byte	0x2c
	.4byte	0x30ae
	.uleb128 0xd
	.4byte	.LASF1569
	.byte	0x24
	.byte	0x10
	.byte	0x2e
	.4byte	0x3127
	.uleb128 0xc
	.4byte	.LASF1570
	.byte	0x10
	.byte	0x31
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1571
	.byte	0x10
	.byte	0x34
	.4byte	0x40
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1572
	.byte	0x10
	.byte	0x37
	.4byte	0x40
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1573
	.byte	0x10
	.byte	0x3a
	.4byte	0x3127
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1574
	.byte	0x10
	.byte	0x3d
	.4byte	0x40
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1575
	.byte	0x10
	.byte	0x40
	.4byte	0x40
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1576
	.byte	0x10
	.byte	0x43
	.4byte	0x3e
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1577
	.byte	0x10
	.byte	0x48
	.4byte	0x40
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1578
	.byte	0x10
	.byte	0x4b
	.4byte	0x40
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30a3
	.uleb128 0xb
	.byte	0x10
	.byte	0x10
	.byte	0x52
	.4byte	0x3166
	.uleb128 0xc
	.4byte	.LASF1570
	.byte	0x10
	.byte	0x54
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1578
	.byte	0x10
	.byte	0x57
	.4byte	0x40
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1576
	.byte	0x10
	.byte	0x5a
	.4byte	0x877
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1579
	.byte	0x10
	.byte	0x5d
	.4byte	0x40
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1580
	.byte	0x10
	.byte	0x5e
	.4byte	0x312d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x10
	.byte	0x6a
	.4byte	0x331d
	.uleb128 0x20
	.4byte	.LASF1581
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1582
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1583
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1584
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1585
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1586
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1587
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1588
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1589
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1590
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1591
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1592
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1593
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1594
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1595
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1596
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1597
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1598
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1599
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1600
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1601
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1602
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1603
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1604
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1605
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1606
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1607
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1608
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1609
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1610
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1611
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1612
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1613
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1614
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1615
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1616
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1617
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1618
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1619
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1620
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1621
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1622
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1623
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1624
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1625
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1626
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1627
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1628
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1629
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1630
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1631
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1632
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1633
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1634
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1635
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1636
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1637
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1638
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1639
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1640
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1641
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1642
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1643
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1644
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1645
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1646
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1647
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1648
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1649
	.sleb128 68
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x10
	.byte	0xb6
	.4byte	0x360b
	.uleb128 0x20
	.4byte	.LASF1650
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1651
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1652
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1653
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1654
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1655
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1656
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1657
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1658
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1659
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1660
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1661
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1662
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1663
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1664
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1665
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1666
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1667
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1668
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1669
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1670
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1671
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1672
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1673
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1674
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1675
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1676
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1677
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1678
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1679
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1680
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1681
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1682
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1683
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1684
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1685
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1686
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1687
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1688
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1689
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1690
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1691
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1692
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1693
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1694
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1695
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1696
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1697
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1698
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1699
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1700
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1701
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1702
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1703
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1704
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1705
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1706
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1707
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1708
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1709
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1710
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1711
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1712
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1713
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1714
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1715
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1716
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1717
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1718
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1719
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1720
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1721
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1722
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1723
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1724
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1725
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1726
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1727
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1728
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1729
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1730
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1731
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1732
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1733
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1734
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1735
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1736
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1737
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1738
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1739
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1740
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1741
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1742
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1743
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1744
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1745
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1746
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1747
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1748
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1749
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1750
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1751
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1752
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1753
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1754
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1755
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1756
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1757
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1758
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1759
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1760
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1761
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1762
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1763
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1764
	.sleb128 114
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x11
	.byte	0x2a
	.4byte	0x363e
	.uleb128 0x20
	.4byte	.LASF1765
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1766
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1767
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1768
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1769
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1770
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1771
	.sleb128 3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1772
	.byte	0x28
	.byte	0x11
	.byte	0x27
	.4byte	0x369f
	.uleb128 0xc
	.4byte	.LASF1773
	.byte	0x11
	.byte	0x28
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1774
	.byte	0x11
	.byte	0x29
	.4byte	0x369f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1775
	.byte	0x11
	.byte	0x32
	.4byte	0x36a4
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1776
	.byte	0x11
	.byte	0x33
	.4byte	0x36a9
	.byte	0xc
	.uleb128 0xe
	.ascii	"arg\000"
	.byte	0x11
	.byte	0x34
	.4byte	0x36ae
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1777
	.byte	0x11
	.byte	0x35
	.4byte	0x9c3
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1778
	.byte	0x11
	.byte	0x35
	.4byte	0x9c3
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.4byte	0x586
	.uleb128 0x18
	.4byte	0x360b
	.uleb128 0x18
	.4byte	0xa40
	.uleb128 0x18
	.4byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x12
	.byte	0x43
	.4byte	0x36e0
	.uleb128 0x20
	.4byte	.LASF1779
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1780
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1781
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1782
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1783
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1784
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1785
	.byte	0x12
	.byte	0x4b
	.4byte	0x36b3
	.uleb128 0xb
	.byte	0xc
	.byte	0x12
	.byte	0x50
	.4byte	0x3718
	.uleb128 0xc
	.4byte	.LASF1570
	.byte	0x12
	.byte	0x51
	.4byte	0x586
	.byte	0
	.uleb128 0xe
	.ascii	"src\000"
	.byte	0x12
	.byte	0x52
	.4byte	0x36e0
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1579
	.byte	0x12
	.byte	0x53
	.4byte	0x3718
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x3
	.4byte	.LASF1786
	.byte	0x12
	.byte	0x54
	.4byte	0x36eb
	.uleb128 0x1f
	.byte	0x1
	.byte	0x12
	.byte	0x6a
	.4byte	0x3756
	.uleb128 0x20
	.4byte	.LASF1787
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1788
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1789
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1790
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1791
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1792
	.sleb128 5
	.byte	0
	.uleb128 0xb
	.byte	0x28
	.byte	0x12
	.byte	0x5f
	.4byte	0x37bf
	.uleb128 0xc
	.4byte	.LASF1570
	.byte	0x12
	.byte	0x63
	.4byte	0x37bf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1793
	.byte	0x12
	.byte	0x64
	.4byte	0x40
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1794
	.byte	0x12
	.byte	0x67
	.4byte	0x40
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1795
	.byte	0x12
	.byte	0x67
	.4byte	0x40
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1796
	.byte	0x12
	.byte	0x71
	.4byte	0x3729
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1797
	.byte	0x12
	.byte	0x73
	.4byte	0x37cf
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1798
	.byte	0x12
	.byte	0x74
	.4byte	0x40
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1799
	.byte	0x12
	.byte	0x75
	.4byte	0x36e0
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x37cf
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x371e
	.uleb128 0x3
	.4byte	.LASF1800
	.byte	0x12
	.byte	0x76
	.4byte	0x3756
	.uleb128 0x1f
	.byte	0x1
	.byte	0x13
	.byte	0x28
	.4byte	0x3814
	.uleb128 0x20
	.4byte	.LASF1801
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1802
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1803
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1804
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1805
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1806
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1807
	.sleb128 64
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1808
	.byte	0x13
	.byte	0x30
	.4byte	0x37e0
	.uleb128 0xb
	.byte	0x10
	.byte	0x1
	.byte	0x47
	.4byte	0x3856
	.uleb128 0xe
	.ascii	"inp\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x3856
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1809
	.byte	0x1
	.byte	0x4b
	.4byte	0x3856
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1793
	.byte	0x1
	.byte	0x4c
	.4byte	0x63
	.byte	0x8
	.uleb128 0xe
	.ascii	"f\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0x3718
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x385c
	.uleb128 0x18
	.4byte	0x9b8
	.uleb128 0x3
	.4byte	.LASF1810
	.byte	0x1
	.byte	0x4f
	.4byte	0x381f
	.uleb128 0x1a
	.byte	0xc
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x389d
	.uleb128 0x16
	.4byte	.LASF1811
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x389d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1812
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x586
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1813
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x586
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x586
	.uleb128 0x6
	.4byte	.LASF1814
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x386c
	.uleb128 0x1a
	.byte	0x8
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x38d3
	.uleb128 0x24
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x3eb
	.4byte	0x586
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1815
	.byte	0x1
	.2byte	0x3ec
	.4byte	0x38ee
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.4byte	0x38e8
	.uleb128 0x14
	.4byte	0x38e8
	.uleb128 0x14
	.4byte	0x3718
	.uleb128 0x14
	.4byte	0x555
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3861
	.uleb128 0x18
	.4byte	0x38f3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38d3
	.uleb128 0x6
	.4byte	.LASF1816
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x38af
	.uleb128 0x19
	.4byte	.LASF1817
	.byte	0x10
	.byte	0x1
	.2byte	0x441
	.4byte	0x392d
	.uleb128 0x16
	.4byte	.LASF1570
	.byte	0x1
	.2byte	0x442
	.4byte	0x586
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x443
	.4byte	0x9c3
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x3951
	.uleb128 0x16
	.4byte	.LASF1819
	.byte	0x1
	.2byte	0x4ed
	.4byte	0xa35
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1812
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x586
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1820
	.byte	0x1
	.2byte	0x4f0
	.4byte	0x392d
	.uleb128 0x25
	.4byte	.LASF1838
	.byte	0x1
	.byte	0x66
	.4byte	0x40
	.byte	0x1
	.4byte	0x3978
	.uleb128 0x26
	.ascii	"fp\000"
	.byte	0x1
	.byte	0x66
	.4byte	0x38e8
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1836
	.byte	0x1
	.2byte	0xbae
	.4byte	0x555
	.byte	0x1
	.4byte	0x39b6
	.uleb128 0x28
	.4byte	.LASF1821
	.byte	0x1
	.2byte	0xbae
	.4byte	0x555
	.uleb128 0x29
	.4byte	.LASF1822
	.byte	0x1
	.2byte	0xbb0
	.4byte	0x39b6
	.uleb128 0x2a
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xbb2
	.4byte	0x555
	.uleb128 0x2a
	.ascii	"t\000"
	.byte	0x1
	.2byte	0xbb2
	.4byte	0x555
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x39c7
	.uleb128 0x2b
	.4byte	0xd4
	.2byte	0x3ff
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1892
	.byte	0x1
	.2byte	0x995
	.byte	0x1
	.4byte	0x3aa3
	.uleb128 0x28
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x995
	.4byte	0x38e8
	.uleb128 0x28
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x995
	.4byte	0x3718
	.uleb128 0x28
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x995
	.4byte	0x555
	.uleb128 0x2a
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x997
	.4byte	0x3aa3
	.uleb128 0x29
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x998
	.4byte	0x3ab3
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x999
	.4byte	0x40
	.uleb128 0x29
	.4byte	.LASF1827
	.byte	0x1
	.2byte	0x99a
	.4byte	0x40
	.uleb128 0x29
	.4byte	.LASF1828
	.byte	0x1
	.2byte	0x99a
	.4byte	0x40
	.uleb128 0x29
	.4byte	.LASF1829
	.byte	0x1
	.2byte	0x99b
	.4byte	0x40
	.uleb128 0x29
	.4byte	.LASF1830
	.byte	0x1
	.2byte	0x99c
	.4byte	0x9ad
	.uleb128 0x29
	.4byte	.LASF1831
	.byte	0x1
	.2byte	0x99d
	.4byte	0x555
	.uleb128 0x29
	.4byte	.LASF1832
	.byte	0x1
	.2byte	0x9a5
	.4byte	0x3ac4
	.uleb128 0x29
	.4byte	.LASF1833
	.byte	0x1
	.2byte	0x9a6
	.4byte	0x3ad4
	.uleb128 0x29
	.4byte	.LASF1834
	.byte	0x1
	.2byte	0x9a7
	.4byte	0x3ae4
	.uleb128 0x2d
	.4byte	0x3a96
	.uleb128 0x2a
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x9bd
	.4byte	0x40
	.uleb128 0x29
	.4byte	.LASF1835
	.byte	0x1
	.2byte	0x9bd
	.4byte	0x40
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2a
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x9d8
	.4byte	0x555
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x3ab3
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x3ac4
	.uleb128 0x2b
	.4byte	0xd4
	.2byte	0x7ff
	.byte	0
	.uleb128 0x9
	.4byte	0x9ad
	.4byte	0x3ad4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8c
	.byte	0
	.uleb128 0x9
	.4byte	0x9ad
	.4byte	0x3ae4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x71
	.byte	0
	.uleb128 0x9
	.4byte	0x9ad
	.4byte	0x3af4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x43
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1837
	.byte	0x1
	.2byte	0xbe6
	.4byte	0x555
	.byte	0x1
	.4byte	0x3b10
	.uleb128 0x2f
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xbe6
	.4byte	0x555
	.byte	0
	.uleb128 0x30
	.4byte	.LASF1839
	.byte	0x1
	.2byte	0x64a
	.4byte	0x9c3
	.byte	0x1
	.4byte	0x3c5e
	.uleb128 0x28
	.4byte	.LASF1840
	.byte	0x1
	.2byte	0x64a
	.4byte	0x9c3
	.uleb128 0x31
	.4byte	.LASF1843
	.byte	0x1
	.2byte	0x64b
	.4byte	0x3c6e
	.2byte	0x100
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x670
	.4byte	0x40
	.uleb128 0x29
	.4byte	.LASF1841
	.byte	0x1
	.2byte	0x671
	.4byte	0x9c3
	.uleb128 0x29
	.4byte	.LASF1842
	.byte	0x1
	.2byte	0x672
	.4byte	0x9c3
	.byte	0
	.uleb128 0x9
	.4byte	0x9c3
	.4byte	0x3c6e
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	0x3c5e
	.uleb128 0x32
	.4byte	.LASF1849
	.byte	0x1
	.2byte	0xa2a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d0b
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0xa2a
	.4byte	0x38e8
	.4byte	.LLST0
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xa2a
	.4byte	0x3718
	.4byte	.LLST1
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0xa2a
	.4byte	0x555
	.4byte	.LLST2
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0xa2c
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x35
	.4byte	.LVL4
	.4byte	0x9082
	.4byte	0x3ceb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL5
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF2298
	.byte	0x1
	.byte	0x53
	.4byte	0x555
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d73
	.uleb128 0x39
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x555
	.4byte	.LLST3
	.uleb128 0x39
	.ascii	"n\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x39
	.ascii	"fp\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x38e8
	.4byte	.LLST5
	.uleb128 0x3a
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x3d69
	.uleb128 0x3b
	.ascii	"p\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x555
	.4byte	.LLST6
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL19
	.4byte	0x90bc
	.byte	0
	.uleb128 0x3d
	.4byte	0x395d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da3
	.uleb128 0x3e
	.4byte	0x396d
	.4byte	.LLST7
	.uleb128 0x3f
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x3e
	.4byte	0x396d
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF1847
	.byte	0x1
	.2byte	0x556
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ea2
	.uleb128 0x41
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x558
	.4byte	0x40
	.4byte	.LLST9
	.uleb128 0x35
	.4byte	.LVL26
	.4byte	0x90db
	.4byte	0x3dde
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x35
	.4byte	.LVL28
	.4byte	0x90db
	.4byte	0x3df5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x35
	.4byte	.LVL30
	.4byte	0x90f4
	.4byte	0x3e0d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL31
	.4byte	0x90db
	.4byte	0x3e24
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x35
	.4byte	.LVL33
	.4byte	0x90f4
	.4byte	0x3e3c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL34
	.4byte	0x9119
	.4byte	0x3e59
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x35
	.4byte	.LVL36
	.4byte	0x9119
	.4byte	0x3e76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x35
	.4byte	.LVL37
	.4byte	0x90f4
	.4byte	0x3e8e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x42
	.4byte	.LVL40
	.4byte	0x90db
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1871
	.byte	0x1
	.2byte	0xa8b
	.4byte	0x9ad
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406e
	.uleb128 0x44
	.ascii	"key\000"
	.byte	0x1
	.2byte	0xa8b
	.4byte	0x555
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	.LASF1844
	.byte	0x1
	.2byte	0xa8b
	.4byte	0x555
	.4byte	.LLST11
	.uleb128 0x33
	.4byte	.LASF1845
	.byte	0x1
	.2byte	0xa8b
	.4byte	0x555
	.4byte	.LLST12
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xa8b
	.4byte	0x3718
	.4byte	.LLST13
	.uleb128 0x45
	.4byte	.LASF1830
	.byte	0x1
	.2byte	0xa8d
	.4byte	0x9ad
	.4byte	.LLST14
	.uleb128 0x41
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xa8e
	.4byte	0x40
	.4byte	.LLST15
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0
	.4byte	0x404b
	.uleb128 0x41
	.ascii	"t\000"
	.byte	0x1
	.2byte	0xa9c
	.4byte	0x555
	.4byte	.LLST16
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x3f49
	.uleb128 0x41
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xaa1
	.4byte	0x586
	.4byte	.LLST17
	.byte	0
	.uleb128 0x47
	.4byte	0x3978
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0xab8
	.4byte	0x3f88
	.uleb128 0x3e
	.4byte	0x3989
	.4byte	.LLST18
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x49
	.4byte	0x39a1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4a
	.4byte	0x39ab
	.4byte	.LLST19
	.uleb128 0x49
	.4byte	0x3995
	.uleb128 0x5
	.byte	0x3
	.4byte	buff.9515
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL49
	.4byte	0x90f4
	.4byte	0x3fa6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL62
	.4byte	0x90a1
	.4byte	0x3fcf
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL65
	.4byte	0x912f
	.4byte	0x3fe3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL67
	.4byte	0x912f
	.4byte	0x3ff7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL68
	.4byte	0x90a1
	.4byte	0x4028
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL76
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1-3880
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL45
	.4byte	0x9144
	.uleb128 0x37
	.4byte	.LVL58
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1846
	.byte	0x1
	.byte	0x6b
	.4byte	0x40
	.byte	0x1
	.4byte	0x4089
	.uleb128 0x26
	.ascii	"fp\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x38e8
	.byte	0
	.uleb128 0x3d
	.4byte	0x39c7
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x450f
	.uleb128 0x3e
	.4byte	0x39d4
	.4byte	.LLST20
	.uleb128 0x3e
	.4byte	0x39e0
	.4byte	.LLST21
	.uleb128 0x3e
	.4byte	0x39ec
	.4byte	.LLST22
	.uleb128 0x4c
	.4byte	0x39f8
	.uleb128 0x49
	.4byte	0x3a04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2088
	.uleb128 0x4c
	.4byte	0x3a10
	.uleb128 0x4c
	.4byte	0x3a1a
	.uleb128 0x4c
	.4byte	0x3a26
	.uleb128 0x4c
	.4byte	0x3a32
	.uleb128 0x4d
	.4byte	0x3a3e
	.byte	0
	.uleb128 0x4d
	.4byte	0x3a4a
	.byte	0
	.uleb128 0x49
	.4byte	0x3a56
	.uleb128 0x5
	.byte	0x3
	.4byte	sprnames_state.9385
	.uleb128 0x49
	.4byte	0x3a62
	.uleb128 0x5
	.byte	0x3
	.4byte	S_sfx_state.9386
	.uleb128 0x49
	.4byte	0x3a6e
	.uleb128 0x5
	.byte	0x3
	.4byte	S_music_state.9387
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x449b
	.uleb128 0x3e
	.4byte	0x39ec
	.4byte	.LLST23
	.uleb128 0x3e
	.4byte	0x39e0
	.4byte	.LLST24
	.uleb128 0x3e
	.4byte	0x39d4
	.4byte	.LLST25
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x49
	.4byte	0x39f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2120
	.uleb128 0x49
	.4byte	0x3a04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2088
	.uleb128 0x4a
	.4byte	0x3a10
	.4byte	.LLST26
	.uleb128 0x49
	.4byte	0x3a1a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x49
	.4byte	0x3a26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2124
	.uleb128 0x4a
	.4byte	0x3a32
	.4byte	.LLST27
	.uleb128 0x4a
	.4byte	0x3a3e
	.4byte	.LLST28
	.uleb128 0x4a
	.4byte	0x3a4a
	.4byte	.LLST29
	.uleb128 0x49
	.4byte	0x3a56
	.uleb128 0x5
	.byte	0x3
	.4byte	sprnames_state.9385
	.uleb128 0x49
	.4byte	0x3a62
	.uleb128 0x5
	.byte	0x3
	.4byte	S_sfx_state.9386
	.uleb128 0x49
	.4byte	0x3a6e
	.uleb128 0x5
	.byte	0x3
	.4byte	S_music_state.9387
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x41d3
	.uleb128 0x4c
	.4byte	0x3a7f
	.uleb128 0x4a
	.4byte	0x3a89
	.4byte	.LLST30
	.uleb128 0x4e
	.4byte	0x406e
	.4byte	.LBB55
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x9be
	.uleb128 0x3e
	.4byte	0x407e
	.4byte	.LLST31
	.uleb128 0x4b
	.4byte	.LVL104
	.4byte	0x915e
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.4byte	0x420b
	.uleb128 0x4a
	.4byte	0x3a97
	.4byte	.LLST32
	.uleb128 0x35
	.4byte	.LVL143
	.4byte	0x90f4
	.4byte	0x4201
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL144
	.4byte	0x9082
	.byte	0
	.uleb128 0x35
	.4byte	.LVL89
	.4byte	0x9173
	.4byte	0x423e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2136
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2132
	.byte	0
	.uleb128 0x35
	.4byte	.LVL90
	.4byte	0x90a1
	.4byte	0x4262
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL97
	.4byte	0x912f
	.4byte	0x4276
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL98
	.4byte	0x90a1
	.4byte	0x42a0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL99
	.4byte	0x912f
	.4byte	0x42b4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL101
	.4byte	0x3ea2
	.4byte	0x42d9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL102
	.4byte	0x918e
	.4byte	0x42ed
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL110
	.4byte	0x90a1
	.4byte	0x4319
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -2140
	.byte	0x6
	.byte	0
	.uleb128 0x35
	.4byte	.LVL116
	.4byte	0x912f
	.4byte	0x432d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL117
	.4byte	0x919f
	.4byte	0x434d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL118
	.4byte	0x90a1
	.4byte	0x437f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -2140
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL119
	.4byte	0x90f4
	.4byte	0x43a0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x35
	.4byte	.LVL126
	.4byte	0x919f
	.4byte	0x43bf
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL129
	.4byte	0x90f4
	.4byte	0x43e0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x35
	.4byte	.LVL136
	.4byte	0x912f
	.4byte	0x43f4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL137
	.4byte	0x919f
	.4byte	0x4414
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL138
	.4byte	0x90a1
	.4byte	0x4446
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -2140
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL139
	.4byte	0x90f4
	.4byte	0x4467
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x37
	.4byte	.LVL142
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL81
	.4byte	0x91be
	.4byte	0x44c3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x35
	.4byte	.LVL82
	.4byte	0x91e6
	.4byte	0x44dd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL83
	.4byte	0x3d0b
	.4byte	0x44fe
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL84
	.4byte	0x395d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x3978
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4549
	.uleb128 0x3e
	.4byte	0x3989
	.4byte	.LLST33
	.uleb128 0x49
	.4byte	0x3995
	.uleb128 0x5
	.byte	0x3
	.4byte	buff.9515
	.uleb128 0x4a
	.4byte	0x39a1
	.4byte	.LLST34
	.uleb128 0x4a
	.4byte	0x39ab
	.4byte	.LLST35
	.byte	0
	.uleb128 0x40
	.4byte	.LASF1848
	.byte	0x1
	.2byte	0xbcb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x458c
	.uleb128 0x44
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xbcb
	.4byte	0x555
	.4byte	.LLST36
	.uleb128 0x41
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xbcd
	.4byte	0x555
	.4byte	.LLST37
	.uleb128 0x37
	.4byte	.LVL154
	.4byte	0x912f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1850
	.byte	0x1
	.2byte	0x897
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4810
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x897
	.4byte	0x38e8
	.4byte	.LLST38
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x897
	.4byte	0x3718
	.4byte	.LLST39
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x897
	.4byte	0x555
	.4byte	.LLST40
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x899
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x89a
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x89b
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1852
	.byte	0x1
	.2byte	0x89c
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x34
	.4byte	.LASF1853
	.byte	0x1
	.2byte	0x89c
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.4byte	.LASF1854
	.byte	0x1
	.2byte	0x89c
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1084
	.uleb128 0x45
	.4byte	.LASF1855
	.byte	0x1
	.2byte	0x89c
	.4byte	0x40
	.4byte	.LLST41
	.uleb128 0x35
	.4byte	.LVL163
	.4byte	0x9082
	.4byte	0x4665
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL164
	.4byte	0x9173
	.4byte	0x4691
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL165
	.4byte	0x90a1
	.4byte	0x46b5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL166
	.4byte	0x395d
	.4byte	0x46c9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL167
	.4byte	0x3d0b
	.4byte	0x46eb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL168
	.4byte	0x9200
	.4byte	0x4700
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL169
	.4byte	0x4549
	.uleb128 0x35
	.4byte	.LVL170
	.4byte	0x9173
	.4byte	0x473c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL171
	.4byte	0x9173
	.4byte	0x4767
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL172
	.4byte	0x90a1
	.4byte	0x478b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL173
	.4byte	0x395d
	.4byte	0x479f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL176
	.4byte	0x90a1
	.4byte	0x47bc
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL177
	.4byte	0x90a1
	.4byte	0x47d9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL178
	.4byte	0x90a1
	.4byte	0x47f6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL180
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1856
	.byte	0x1
	.2byte	0x875
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4965
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x875
	.4byte	0x38e8
	.4byte	.LLST42
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x875
	.4byte	0x3718
	.4byte	.LLST43
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x875
	.4byte	0x555
	.4byte	.LLST44
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x877
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x878
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x879
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x35
	.4byte	.LVL185
	.4byte	0x9082
	.4byte	0x48a9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL186
	.4byte	0x9173
	.4byte	0x48d5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1084
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL187
	.4byte	0x90a1
	.4byte	0x48f9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL188
	.4byte	0x3d0b
	.4byte	0x491b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL189
	.4byte	0x4549
	.4byte	0x4930
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL190
	.4byte	0x395d
	.4byte	0x4944
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL192
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF1857
	.byte	0x1
	.2byte	0x580
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d34
	.uleb128 0x33
	.4byte	.LASF1858
	.byte	0x1
	.2byte	0x580
	.4byte	0x586
	.4byte	.LLST45
	.uleb128 0x33
	.4byte	.LASF1859
	.byte	0x1
	.2byte	0x580
	.4byte	0x586
	.4byte	.LLST46
	.uleb128 0x33
	.4byte	.LASF1578
	.byte	0x1
	.2byte	0x580
	.4byte	0x40
	.4byte	.LLST47
	.uleb128 0x34
	.4byte	.LASF1860
	.byte	0x1
	.2byte	0x582
	.4byte	0x3718
	.uleb128 0x5
	.byte	0x3
	.4byte	fileout.9147
	.uleb128 0x34
	.4byte	.LASF1861
	.byte	0x1
	.2byte	0x583
	.4byte	0x3861
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x45
	.4byte	.LASF1862
	.byte	0x1
	.2byte	0x583
	.4byte	0x38e8
	.4byte	.LLST48
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x584
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x45
	.4byte	.LASF1863
	.byte	0x1
	.2byte	0x585
	.4byte	0x586
	.4byte	.LLST49
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0x4bcf
	.uleb128 0x41
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x5b4
	.4byte	0x37
	.4byte	.LLST50
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0x4b0e
	.uleb128 0x45
	.4byte	.LASF1864
	.byte	0x1
	.2byte	0x5c6
	.4byte	0x555
	.4byte	.LLST51
	.uleb128 0x45
	.4byte	.LASF1865
	.byte	0x1
	.2byte	0x5c7
	.4byte	0x9ad
	.4byte	.LLST52
	.uleb128 0x50
	.4byte	0x3af4
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x5d7
	.4byte	0x4a5b
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST53
	.byte	0
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB72
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x4a79
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST54
	.byte	0
	.uleb128 0x35
	.4byte	.LVL207
	.4byte	0x90a1
	.4byte	0x4a97
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x35
	.4byte	.LVL230
	.4byte	0x919f
	.4byte	0x4ab9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL235
	.4byte	0x90a1
	.4byte	0x4ad6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x35
	.4byte	.LVL236
	.4byte	0x4965
	.4byte	0x4af4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL237
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL203
	.4byte	0x4549
	.4byte	0x4b23
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL204
	.4byte	0x90a1
	.4byte	0x4b41
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.uleb128 0x35
	.4byte	.LVL205
	.4byte	0x919f
	.4byte	0x4b64
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL212
	.4byte	0x912f
	.4byte	0x4b78
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL213
	.4byte	0x919f
	.4byte	0x4b93
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL214
	.4byte	0x90a1
	.4byte	0x4bb6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x51
	.4byte	.LVL216
	.uleb128 0x3
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0x4c3a
	.uleb128 0x34
	.4byte	.LASF1866
	.byte	0x1
	.2byte	0x58a
	.4byte	0x9ad
	.uleb128 0x5
	.byte	0x3
	.4byte	firstfile.9152
	.uleb128 0x35
	.4byte	.LVL223
	.4byte	0x9215
	.4byte	0x4c07
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL224
	.4byte	0x922f
	.4byte	0x4c1b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL245
	.4byte	0x9249
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL196
	.4byte	0x922f
	.4byte	0x4c57
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL198
	.4byte	0x9249
	.4byte	0x4c7f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL199
	.4byte	0x90a1
	.4byte	0x4ca2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x35
	.4byte	.LVL202
	.4byte	0x3d0b
	.4byte	0x4cc5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL218
	.4byte	0x9264
	.4byte	0x4cdb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1092
	.byte	0x6
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL219
	.4byte	0x9275
	.uleb128 0x35
	.4byte	.LVL239
	.4byte	0x928a
	.4byte	0x4cf8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL240
	.4byte	0x929f
	.4byte	0x4d0c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL243
	.4byte	0x9275
	.uleb128 0x37
	.4byte	.LVL244
	.4byte	0x9249
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1867
	.byte	0x1
	.2byte	0x607
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fc0
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x607
	.4byte	0x38e8
	.4byte	.LLST55
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x607
	.4byte	0x3718
	.4byte	.LLST56
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x607
	.4byte	0x555
	.4byte	.LLST57
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x609
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x60a
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x60b
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x34
	.4byte	.LASF1868
	.byte	0x1
	.2byte	0x60c
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x41
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x60d
	.4byte	0x40
	.4byte	.LLST58
	.uleb128 0x45
	.4byte	.LASF1830
	.byte	0x1
	.2byte	0x60e
	.4byte	0x9ad
	.4byte	.LLST59
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB84
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x62d
	.4byte	0x4df6
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST60
	.byte	0
	.uleb128 0x35
	.4byte	.LVL250
	.4byte	0x9082
	.4byte	0x4e19
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL251
	.4byte	0x395d
	.4byte	0x4e2d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL252
	.4byte	0x3d0b
	.4byte	0x4e4f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL253
	.4byte	0x4549
	.4byte	0x4e64
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL254
	.4byte	0x9173
	.4byte	0x4e97
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL255
	.4byte	0x9144
	.4byte	0x4eb5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.byte	0
	.uleb128 0x35
	.4byte	.LVL256
	.4byte	0x90a1
	.4byte	0x4ed8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL261
	.4byte	0x92b4
	.4byte	0x4eed
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1134
	.byte	0
	.uleb128 0x35
	.4byte	.LVL264
	.4byte	0x9144
	.4byte	0x4f08
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.byte	0
	.uleb128 0x35
	.4byte	.LVL266
	.4byte	0x90a1
	.4byte	0x4f38
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL267
	.4byte	0x395d
	.4byte	0x4f4c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL270
	.4byte	0x90a1
	.4byte	0x4f75
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL272
	.4byte	0x90a1
	.4byte	0x4f99
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL274
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x434
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF1869
	.byte	0x1
	.2byte	0xbd8
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5003
	.uleb128 0x44
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xbd8
	.4byte	0x555
	.4byte	.LLST61
	.uleb128 0x41
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xbda
	.4byte	0x555
	.4byte	.LLST62
	.uleb128 0x37
	.4byte	.LVL276
	.4byte	0x912f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x3af4
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5020
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST63
	.byte	0
	.uleb128 0x30
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0xbf0
	.4byte	0x9ad
	.byte	0x1
	.4byte	0x5046
	.uleb128 0x2f
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xbf0
	.4byte	0x555
	.uleb128 0x2f
	.ascii	"l\000"
	.byte	0x1
	.2byte	0xbf0
	.4byte	0x5046
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63
	.uleb128 0x43
	.4byte	.LASF1872
	.byte	0x1
	.2byte	0xc08
	.4byte	0x9ad
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51dc
	.uleb128 0x44
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xc08
	.4byte	0x555
	.4byte	.LLST64
	.uleb128 0x44
	.ascii	"k\000"
	.byte	0x1
	.2byte	0xc08
	.4byte	0x555
	.4byte	.LLST65
	.uleb128 0x44
	.ascii	"l\000"
	.byte	0x1
	.2byte	0xc08
	.4byte	0x51dc
	.4byte	.LLST66
	.uleb128 0x33
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0xc08
	.4byte	0x51e2
	.4byte	.LLST67
	.uleb128 0x52
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xc08
	.4byte	0x3718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x41
	.ascii	"t\000"
	.byte	0x1
	.2byte	0xc0a
	.4byte	0x555
	.4byte	.LLST68
	.uleb128 0x4f
	.ascii	"val\000"
	.byte	0x1
	.2byte	0xc0b
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.4byte	.LASF1874
	.byte	0x1
	.2byte	0xc0c
	.4byte	0x3aa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x45
	.4byte	.LASF1875
	.byte	0x1
	.2byte	0xc0f
	.4byte	0x9ad
	.4byte	.LLST69
	.uleb128 0x41
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xc10
	.4byte	0x40
	.4byte	.LLST70
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0x150
	.byte	0x1
	.2byte	0xc34
	.4byte	0x5118
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST71
	.byte	0
	.uleb128 0x47
	.4byte	0x5020
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.2byte	0xc29
	.4byte	0x51cb
	.uleb128 0x3e
	.4byte	0x503b
	.4byte	.LLST72
	.uleb128 0x3e
	.4byte	0x5031
	.4byte	.LLST73
	.uleb128 0x35
	.4byte	.LVL306
	.4byte	0x9173
	.4byte	0x5162
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL308
	.4byte	0x9173
	.4byte	0x5186
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL310
	.4byte	0x9173
	.4byte	0x51aa
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL312
	.4byte	0x9173
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL299
	.4byte	0x91e6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9c3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x555
	.uleb128 0x32
	.4byte	.LASF1876
	.byte	0x1
	.2byte	0xb69
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5473
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0xb69
	.4byte	0x38e8
	.4byte	.LLST74
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xb69
	.4byte	0x3718
	.4byte	.LLST75
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0xb69
	.4byte	0x555
	.4byte	.LLST76
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0xb6b
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0xb6c
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0xb6d
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x34
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0xb6e
	.4byte	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x34
	.4byte	.LASF1877
	.byte	0x1
	.2byte	0xb6f
	.4byte	0x5473
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x45
	.4byte	.LASF1878
	.byte	0x1
	.2byte	0xb70
	.4byte	0x40
	.4byte	.LLST77
	.uleb128 0x41
	.ascii	"len\000"
	.byte	0x1
	.2byte	0xb70
	.4byte	0x40
	.4byte	.LLST78
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB102
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.2byte	0xb88
	.4byte	0x52bc
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST79
	.byte	0
	.uleb128 0x35
	.4byte	.LVL324
	.4byte	0x91be
	.4byte	0x52e4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x35
	.4byte	.LVL325
	.4byte	0x9082
	.4byte	0x5306
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL327
	.4byte	0x395d
	.4byte	0x531a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL328
	.4byte	0x3d0b
	.4byte	0x533c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL329
	.4byte	0x4549
	.4byte	0x5351
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL330
	.4byte	0x504c
	.4byte	0x5382
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1124
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL331
	.4byte	0x90a1
	.4byte	0x53a6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL332
	.4byte	0x395d
	.4byte	0x53ba
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL338
	.4byte	0x9082
	.4byte	0x53d4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x35
	.4byte	.LVL339
	.4byte	0x912f
	.4byte	0x53e9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x35
	.4byte	.LVL345
	.4byte	0x919f
	.4byte	0x5409
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL346
	.4byte	0x90a1
	.4byte	0x5433
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL347
	.4byte	0x90f4
	.4byte	0x5452
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x37
	.4byte	.LVL350
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x5483
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x6
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1879
	.byte	0x1
	.2byte	0xb2e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x570e
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0xb2e
	.4byte	0x38e8
	.4byte	.LLST80
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xb2e
	.4byte	0x3718
	.4byte	.LLST81
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0xb2e
	.4byte	0x555
	.4byte	.LLST82
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0xb30
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0xb31
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0xb32
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x34
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0xb33
	.4byte	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x34
	.4byte	.LASF1877
	.byte	0x1
	.2byte	0xb34
	.4byte	0x5473
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x45
	.4byte	.LASF1878
	.byte	0x1
	.2byte	0xb35
	.4byte	0x40
	.4byte	.LLST83
	.uleb128 0x41
	.ascii	"len\000"
	.byte	0x1
	.2byte	0xb35
	.4byte	0x40
	.4byte	.LLST84
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB106
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x1
	.2byte	0xb4d
	.4byte	0x5557
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST85
	.byte	0
	.uleb128 0x35
	.4byte	.LVL355
	.4byte	0x91be
	.4byte	0x557f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.uleb128 0x35
	.4byte	.LVL356
	.4byte	0x9082
	.4byte	0x55a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL358
	.4byte	0x395d
	.4byte	0x55b5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL359
	.4byte	0x3d0b
	.4byte	0x55d7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL360
	.4byte	0x4549
	.4byte	0x55ec
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL361
	.4byte	0x504c
	.4byte	0x561d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1124
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL362
	.4byte	0x90a1
	.4byte	0x5641
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL363
	.4byte	0x395d
	.4byte	0x5655
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL369
	.4byte	0x9082
	.4byte	0x566f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x35
	.4byte	.LVL370
	.4byte	0x912f
	.4byte	0x5684
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x35
	.4byte	.LVL376
	.4byte	0x919f
	.4byte	0x56a4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL377
	.4byte	0x90a1
	.4byte	0x56ce
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL378
	.4byte	0x90f4
	.4byte	0x56ed
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x37
	.4byte	.LVL382
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1880
	.byte	0x1
	.2byte	0xaf4
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5989
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0xaf4
	.4byte	0x38e8
	.4byte	.LLST86
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xaf4
	.4byte	0x3718
	.4byte	.LLST87
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0xaf4
	.4byte	0x555
	.4byte	.LLST88
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0xaf6
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0xaf7
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0xaf8
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x34
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0xaf9
	.4byte	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x34
	.4byte	.LASF1877
	.byte	0x1
	.2byte	0xafa
	.4byte	0x5989
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x45
	.4byte	.LASF1878
	.byte	0x1
	.2byte	0xafb
	.4byte	0x40
	.4byte	.LLST89
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB110
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.2byte	0xb13
	.4byte	0x57d2
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST90
	.byte	0
	.uleb128 0x35
	.4byte	.LVL387
	.4byte	0x91be
	.4byte	0x57fa
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.uleb128 0x35
	.4byte	.LVL388
	.4byte	0x9082
	.4byte	0x581c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL390
	.4byte	0x395d
	.4byte	0x5830
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL391
	.4byte	0x3d0b
	.4byte	0x5852
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL392
	.4byte	0x4549
	.4byte	0x5867
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL393
	.4byte	0x504c
	.4byte	0x5898
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1124
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL394
	.4byte	0x90a1
	.4byte	0x58bc
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL395
	.4byte	0x395d
	.4byte	0x58d0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL401
	.4byte	0x9082
	.4byte	0x58ea
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x35
	.4byte	.LVL402
	.4byte	0x912f
	.4byte	0x58ff
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x35
	.4byte	.LVL403
	.4byte	0x90a1
	.4byte	0x5923
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL408
	.4byte	0x919f
	.4byte	0x5943
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL409
	.4byte	0x90a1
	.4byte	0x596d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL410
	.4byte	0x90f4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x5999
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1881
	.byte	0x1
	.2byte	0xad1
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b46
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0xad1
	.4byte	0x38e8
	.4byte	.LLST91
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xad1
	.4byte	0x3718
	.4byte	.LLST92
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0xad1
	.4byte	0x555
	.4byte	.LLST93
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0xad3
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0xad4
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0xad5
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x35
	.4byte	.LVL415
	.4byte	0x9082
	.4byte	0x5a32
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL416
	.4byte	0x395d
	.4byte	0x5a46
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL417
	.4byte	0x3d0b
	.4byte	0x5a68
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL418
	.4byte	0x4549
	.4byte	0x5a7d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL419
	.4byte	0x504c
	.4byte	0x5aad
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL420
	.4byte	0x90a1
	.4byte	0x5ad1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL421
	.4byte	0x395d
	.4byte	0x5ae5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL423
	.4byte	0x90a1
	.4byte	0x5b09
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL424
	.4byte	0x90a1
	.4byte	0x5b26
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL425
	.4byte	0x919f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1882
	.byte	0x1
	.2byte	0xa3b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e19
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0xa3b
	.4byte	0x38e8
	.4byte	.LLST94
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0xa3b
	.4byte	0x3718
	.4byte	.LLST95
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0xa3b
	.4byte	0x555
	.4byte	.LLST96
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0xa3d
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0xa3e
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0xa3f
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x34
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0xa40
	.4byte	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x34
	.4byte	.LASF1883
	.byte	0x1
	.2byte	0xa41
	.4byte	0x40
	.uleb128 0x5
	.byte	0x3
	.4byte	maxstrlen.9423
	.uleb128 0x34
	.4byte	.LASF1884
	.byte	0x1
	.2byte	0xa44
	.4byte	0x555
	.uleb128 0x5
	.byte	0x3
	.4byte	holdstring.9424
	.uleb128 0x45
	.4byte	.LASF1830
	.byte	0x1
	.2byte	0xa45
	.4byte	0x9ad
	.4byte	.LLST97
	.uleb128 0x47
	.4byte	0x3af4
	.4byte	.LBB114
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.2byte	0xa67
	.4byte	0x5c1e
	.uleb128 0x3e
	.4byte	0x3b05
	.4byte	.LLST98
	.byte	0
	.uleb128 0x35
	.4byte	.LVL430
	.4byte	0x91be
	.4byte	0x5c46
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.uleb128 0x35
	.4byte	.LVL431
	.4byte	0x9082
	.4byte	0x5c68
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL434
	.4byte	0x395d
	.4byte	0x5c7c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL435
	.4byte	0x3d0b
	.4byte	0x5c9e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL436
	.4byte	0x4549
	.4byte	0x5cb3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL437
	.4byte	0x90a1
	.4byte	0x5cd0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL438
	.4byte	0x92d2
	.4byte	0x5cee
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL439
	.4byte	0x912f
	.4byte	0x5d02
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL440
	.4byte	0x912f
	.4byte	0x5d17
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL445
	.4byte	0x92b4
	.4byte	0x5d2e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x35
	.4byte	.LVL446
	.4byte	0x4fc0
	.4byte	0x5d42
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL447
	.4byte	0x912f
	.4byte	0x5d56
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL448
	.4byte	0x3ea2
	.4byte	0x5d7c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.byte	0
	.uleb128 0x35
	.4byte	.LVL450
	.4byte	0x90a1
	.4byte	0x5da0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL451
	.4byte	0x395d
	.4byte	0x5db4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL453
	.4byte	0x504c
	.4byte	0x5de5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL454
	.4byte	0x90a1
	.4byte	0x5e09
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL456
	.4byte	0x92f6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1885
	.byte	0x1
	.2byte	0x93a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61a7
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x93a
	.4byte	0x38e8
	.4byte	.LLST99
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x93a
	.4byte	0x3718
	.4byte	.LLST100
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x93a
	.4byte	0x555
	.4byte	.LLST101
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x93c
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x93d
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x93e
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x35
	.4byte	.LVL461
	.4byte	0x9082
	.4byte	0x5eb2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL462
	.4byte	0x395d
	.4byte	0x5ec6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL463
	.4byte	0x3d0b
	.4byte	0x5ee8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL464
	.4byte	0x4549
	.4byte	0x5efd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x35
	.4byte	.LVL465
	.4byte	0x504c
	.4byte	0x5f2d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL466
	.4byte	0x90a1
	.4byte	0x5f51
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL467
	.4byte	0x395d
	.4byte	0x5f65
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL469
	.4byte	0x90a1
	.4byte	0x5f89
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL470
	.4byte	0x9144
	.4byte	0x5fa7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL471
	.4byte	0x9144
	.4byte	0x5fc5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL472
	.4byte	0x9144
	.4byte	0x5fe3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL473
	.4byte	0x9144
	.4byte	0x6001
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL474
	.4byte	0x9144
	.4byte	0x601f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL475
	.4byte	0x9144
	.4byte	0x603d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL476
	.4byte	0x9144
	.4byte	0x605b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL477
	.4byte	0x9144
	.4byte	0x6079
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL478
	.4byte	0x9144
	.4byte	0x6097
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL479
	.4byte	0x9144
	.4byte	0x60b5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL480
	.4byte	0x9144
	.4byte	0x60d3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL481
	.4byte	0x9144
	.4byte	0x60f1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL482
	.4byte	0x9144
	.4byte	0x610f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL483
	.4byte	0x9144
	.4byte	0x612d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL484
	.4byte	0x9144
	.4byte	0x614b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL485
	.4byte	0x9144
	.4byte	0x6169
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x35
	.4byte	.LVL486
	.4byte	0x90a1
	.4byte	0x6186
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC94
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL487
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1886
	.byte	0x1
	.2byte	0x8ed
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63de
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x8ed
	.4byte	0x38e8
	.4byte	.LLST102
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x8ed
	.4byte	0x3718
	.4byte	.LLST103
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x8ed
	.4byte	0x555
	.4byte	.LLST104
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x8ef
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x8f0
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x8f1
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x4f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x8f2
	.4byte	0x55b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1101
	.uleb128 0x34
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0x8f3
	.4byte	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x41
	.ascii	"ix\000"
	.byte	0x1
	.2byte	0x8f4
	.4byte	0x40
	.4byte	.LLST105
	.uleb128 0x41
	.ascii	"iy\000"
	.byte	0x1
	.2byte	0x8f4
	.4byte	0x40
	.4byte	.LLST106
	.uleb128 0x41
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x8f5
	.4byte	0x555
	.4byte	.LLST107
	.uleb128 0x35
	.4byte	.LVL491
	.4byte	0x90a1
	.4byte	0x628b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL492
	.4byte	0x9082
	.4byte	0x62ad
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL494
	.4byte	0x395d
	.4byte	0x62c1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL495
	.4byte	0x3d0b
	.4byte	0x62e3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL496
	.4byte	0x4549
	.4byte	0x62f8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL497
	.4byte	0x504c
	.4byte	0x6328
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL500
	.4byte	0x9144
	.4byte	0x633d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.byte	0
	.uleb128 0x35
	.4byte	.LVL508
	.4byte	0x90f4
	.4byte	0x635b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL509
	.4byte	0x90a1
	.4byte	0x6385
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL512
	.4byte	0x90a1
	.4byte	0x63a9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL513
	.4byte	0x395d
	.4byte	0x63bd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL515
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1887
	.byte	0x1
	.2byte	0x83b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6681
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x83b
	.4byte	0x38e8
	.4byte	.LLST108
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x83b
	.4byte	0x3718
	.4byte	.LLST109
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x83b
	.4byte	0x555
	.4byte	.LLST110
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x83d
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x83e
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x83f
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x840
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x35
	.4byte	.LVL520
	.4byte	0x9082
	.4byte	0x6487
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL521
	.4byte	0x9173
	.4byte	0x64b3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL522
	.4byte	0x90a1
	.4byte	0x64d7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC98
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL523
	.4byte	0x90a1
	.4byte	0x64f9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL524
	.4byte	0x395d
	.4byte	0x650d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL525
	.4byte	0x3d0b
	.4byte	0x652f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL526
	.4byte	0x4549
	.4byte	0x6544
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL527
	.4byte	0x504c
	.4byte	0x6574
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL528
	.4byte	0x90a1
	.4byte	0x6598
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL529
	.4byte	0x395d
	.4byte	0x65ac
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL531
	.4byte	0x9144
	.4byte	0x65ca
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL532
	.4byte	0x9144
	.4byte	0x65e8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC101
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL533
	.4byte	0x9144
	.4byte	0x6606
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC102
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL534
	.4byte	0x9144
	.4byte	0x6624
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC103
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL535
	.4byte	0x9144
	.4byte	0x6642
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL536
	.4byte	0x9144
	.4byte	0x6660
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x37
	.4byte	.LVL537
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC106
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1888
	.byte	0x1
	.2byte	0x80d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68ac
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x80d
	.4byte	0x38e8
	.4byte	.LLST111
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x80d
	.4byte	0x3718
	.4byte	.LLST112
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x80d
	.4byte	0x555
	.4byte	.LLST113
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x80f
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x810
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x811
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x812
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x35
	.4byte	.LVL542
	.4byte	0x9082
	.4byte	0x672a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL543
	.4byte	0x9173
	.4byte	0x6756
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL544
	.4byte	0x90a1
	.4byte	0x677a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL545
	.4byte	0x90a1
	.4byte	0x679c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC108
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL546
	.4byte	0x395d
	.4byte	0x67b0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL547
	.4byte	0x3d0b
	.4byte	0x67d2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL548
	.4byte	0x4549
	.4byte	0x67e7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x35
	.4byte	.LVL549
	.4byte	0x504c
	.4byte	0x6817
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL550
	.4byte	0x90a1
	.4byte	0x683b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL551
	.4byte	0x395d
	.4byte	0x684f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL553
	.4byte	0x9144
	.4byte	0x686d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC109
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.byte	0
	.uleb128 0x35
	.4byte	.LVL554
	.4byte	0x9144
	.4byte	0x688b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC110
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.byte	0
	.uleb128 0x37
	.4byte	.LVL555
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC111
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1889
	.byte	0x1
	.2byte	0x7c9
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6baa
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x7c9
	.4byte	0x38e8
	.4byte	.LLST114
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x7c9
	.4byte	0x3718
	.4byte	.LLST115
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x7c9
	.4byte	0x555
	.4byte	.LLST116
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x7cb
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x7cc
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x7cd
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x7ce
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x35
	.4byte	.LVL560
	.4byte	0x9082
	.4byte	0x6955
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL561
	.4byte	0x9173
	.4byte	0x6981
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL562
	.4byte	0x90a1
	.4byte	0x69a5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL563
	.4byte	0x90a1
	.4byte	0x69c8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC113
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL564
	.4byte	0x395d
	.4byte	0x69dc
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL565
	.4byte	0x3d0b
	.4byte	0x69fe
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL566
	.4byte	0x4549
	.4byte	0x6a13
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL567
	.4byte	0x504c
	.4byte	0x6a43
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL568
	.4byte	0x90a1
	.4byte	0x6a67
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL569
	.4byte	0x395d
	.4byte	0x6a7b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL571
	.4byte	0x9144
	.4byte	0x6a99
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC114
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL572
	.4byte	0x9144
	.4byte	0x6ab7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC115
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL573
	.4byte	0x9144
	.4byte	0x6ad5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL574
	.4byte	0x9144
	.4byte	0x6af3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL575
	.4byte	0x9144
	.4byte	0x6b11
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC118
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL576
	.4byte	0x9144
	.4byte	0x6b2f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC119
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL577
	.4byte	0x9144
	.4byte	0x6b4d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL578
	.4byte	0x9144
	.4byte	0x6b6b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC121
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL579
	.4byte	0x9144
	.4byte	0x6b89
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x37
	.4byte	.LVL580
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC123
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1890
	.byte	0x1
	.2byte	0x77b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e7b
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x77b
	.4byte	0x38e8
	.4byte	.LLST117
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x77b
	.4byte	0x3718
	.4byte	.LLST118
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x77b
	.4byte	0x555
	.4byte	.LLST119
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x77d
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x77e
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x77f
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x780
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x41
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x781
	.4byte	0x40
	.4byte	.LLST120
	.uleb128 0x35
	.4byte	.LVL585
	.4byte	0x9082
	.4byte	0x6c61
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL586
	.4byte	0x9173
	.4byte	0x6c8d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL587
	.4byte	0x90a1
	.4byte	0x6cb1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL589
	.4byte	0x90a1
	.4byte	0x6cd5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC125
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL590
	.4byte	0x90a1
	.4byte	0x6cf9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x434
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL591
	.4byte	0x395d
	.4byte	0x6d0d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL592
	.4byte	0x3d0b
	.4byte	0x6d2f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL593
	.4byte	0x4549
	.4byte	0x6d44
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL594
	.4byte	0x504c
	.4byte	0x6d74
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL595
	.4byte	0x90a1
	.4byte	0x6d98
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL596
	.4byte	0x395d
	.4byte	0x6dac
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL597
	.4byte	0x9144
	.4byte	0x6dca
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC127
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.byte	0
	.uleb128 0x35
	.4byte	.LVL598
	.4byte	0x90a1
	.4byte	0x6de7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL603
	.4byte	0x9315
	.4byte	0x6e06
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL605
	.4byte	0x90a1
	.4byte	0x6e2d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x6
	.byte	0x74
	.sleb128 148
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL606
	.4byte	0x90a1
	.4byte	0x6e59
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC130
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0
	.uleb128 0x37
	.4byte	.LVL607
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC126
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa
	.2byte	0x434
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1891
	.byte	0x1
	.2byte	0x72b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7214
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x72b
	.4byte	0x38e8
	.4byte	.LLST121
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x72b
	.4byte	0x3718
	.4byte	.LLST122
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x72b
	.4byte	0x555
	.4byte	.LLST123
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x72d
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x72e
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x72f
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x730
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x35
	.4byte	.LVL612
	.4byte	0x9082
	.4byte	0x6f24
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL613
	.4byte	0x9173
	.4byte	0x6f50
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL614
	.4byte	0x90a1
	.4byte	0x6f74
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC131
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL615
	.4byte	0x90a1
	.4byte	0x6f98
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x434
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL616
	.4byte	0x395d
	.4byte	0x6fac
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL617
	.4byte	0x3d0b
	.4byte	0x6fce
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL618
	.4byte	0x4549
	.4byte	0x6fe3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x35
	.4byte	.LVL619
	.4byte	0x504c
	.4byte	0x7013
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL620
	.4byte	0x90a1
	.4byte	0x7037
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL621
	.4byte	0x395d
	.4byte	0x704b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL623
	.4byte	0x9144
	.4byte	0x7069
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC133
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL624
	.4byte	0x90a1
	.4byte	0x7086
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC134
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL625
	.4byte	0x9144
	.4byte	0x70a4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC135
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL626
	.4byte	0x90a1
	.4byte	0x70c1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC136
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL627
	.4byte	0x9144
	.4byte	0x70df
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC137
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL628
	.4byte	0x90a1
	.4byte	0x70fc
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC138
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL629
	.4byte	0x9144
	.4byte	0x711a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC139
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL630
	.4byte	0x90a1
	.4byte	0x7137
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC140
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL631
	.4byte	0x9144
	.4byte	0x7155
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC127
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL632
	.4byte	0x9144
	.4byte	0x7173
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC142
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL633
	.4byte	0x90a1
	.4byte	0x7190
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC143
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL634
	.4byte	0x91be
	.4byte	0x71b8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.byte	0
	.uleb128 0x35
	.4byte	.LVL635
	.4byte	0x9144
	.4byte	0x71d6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC144
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x35
	.4byte	.LVL636
	.4byte	0x90a1
	.4byte	0x71f3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC145
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL637
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC146
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1893
	.byte	0x1
	.2byte	0x67d
	.byte	0x1
	.4byte	0x7251
	.uleb128 0x28
	.4byte	.LASF1894
	.byte	0x1
	.2byte	0x67d
	.4byte	0x40
	.uleb128 0x28
	.4byte	.LASF1895
	.byte	0x1
	.2byte	0x67d
	.4byte	0x40
	.uleb128 0x28
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x67d
	.4byte	0x9c3
	.uleb128 0x2a
	.ascii	"mi\000"
	.byte	0x1
	.2byte	0x67e
	.4byte	0x2ff2
	.byte	0
	.uleb128 0x32
	.4byte	.LASF1896
	.byte	0x1
	.2byte	0x6aa
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7619
	.uleb128 0x33
	.4byte	.LASF1823
	.byte	0x1
	.2byte	0x6aa
	.4byte	0x38e8
	.4byte	.LLST124
	.uleb128 0x33
	.4byte	.LASF1824
	.byte	0x1
	.2byte	0x6aa
	.4byte	0x3718
	.4byte	.LLST125
	.uleb128 0x33
	.4byte	.LASF1825
	.byte	0x1
	.2byte	0x6aa
	.4byte	0x555
	.4byte	.LLST126
	.uleb128 0x4f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x6ac
	.4byte	0x3aa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x34
	.4byte	.LASF1826
	.byte	0x1
	.2byte	0x6ad
	.4byte	0x39b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x34
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x6ae
	.4byte	0x9c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x34
	.4byte	.LASF1851
	.byte	0x1
	.2byte	0x6af
	.4byte	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x41
	.ascii	"ix\000"
	.byte	0x1
	.2byte	0x6b0
	.4byte	0x40
	.4byte	.LLST127
	.uleb128 0x34
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0x6b1
	.4byte	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x1e8
	.4byte	0x7536
	.uleb128 0x45
	.4byte	.LASF1897
	.byte	0x1
	.2byte	0x6c8
	.4byte	0x40
	.4byte	.LLST128
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x200
	.4byte	0x7397
	.uleb128 0x41
	.ascii	"iy\000"
	.byte	0x1
	.2byte	0x6fa
	.4byte	0x2c
	.4byte	.LLST129
	.uleb128 0x35
	.4byte	.LVL663
	.4byte	0x9144
	.4byte	0x7347
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL665
	.4byte	0x90a1
	.4byte	0x736a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC151
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL668
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC150
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0x7214
	.4byte	.LBB130
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x1
	.2byte	0x6e7
	.4byte	0x73d2
	.uleb128 0x3e
	.4byte	0x7239
	.4byte	.LLST130
	.uleb128 0x3e
	.4byte	0x722d
	.4byte	.LLST131
	.uleb128 0x3e
	.4byte	0x7221
	.4byte	.LLST132
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x220
	.uleb128 0x4c
	.4byte	0x7245
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0x3b10
	.4byte	.LBB137
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.2byte	0x6ee
	.4byte	0x741c
	.uleb128 0x3e
	.4byte	0x3b21
	.4byte	.LLST133
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x250
	.uleb128 0x4a
	.4byte	0x3c3b
	.4byte	.LLST134
	.uleb128 0x4a
	.4byte	0x3c45
	.4byte	.LLST135
	.uleb128 0x4a
	.4byte	0x3c51
	.4byte	.LLST136
	.uleb128 0x49
	.4byte	0x3b2d
	.uleb128 0x5
	.byte	0x3
	.4byte	bitMap.9181
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL649
	.4byte	0x3d0b
	.4byte	0x7440
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1124
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL650
	.4byte	0x4549
	.4byte	0x7455
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL651
	.4byte	0x504c
	.4byte	0x7483
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7a
	.sleb128 -12
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 -8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL653
	.4byte	0x90a1
	.4byte	0x74a7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL658
	.4byte	0x9144
	.4byte	0x74bb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL660
	.4byte	0x9144
	.4byte	0x74d8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC149
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL661
	.4byte	0x9334
	.4byte	0x74ef
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC152
	.byte	0
	.uleb128 0x35
	.4byte	.LVL669
	.4byte	0x90a1
	.4byte	0x750c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC153
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL670
	.4byte	0x90a1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC154
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL642
	.4byte	0x9082
	.4byte	0x7559
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL643
	.4byte	0x90a1
	.4byte	0x757d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC147
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL644
	.4byte	0x9173
	.4byte	0x75a8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x35
	.4byte	.LVL647
	.4byte	0x90a1
	.4byte	0x75c5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC148
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL648
	.4byte	0x395d
	.4byte	0x75db
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1124
	.byte	0x6
	.byte	0
	.uleb128 0x35
	.4byte	.LVL654
	.4byte	0x395d
	.4byte	0x75f1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1124
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL731
	.4byte	0x9173
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1898
	.byte	0x14
	.byte	0x50
	.4byte	0x7624
	.uleb128 0x18
	.4byte	0x7629
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa2a
	.uleb128 0x9
	.4byte	0x38a3
	.4byte	0x7640
	.uleb128 0x2b
	.4byte	0xd4
	.2byte	0x131
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1899
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x762f
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_strlookup
	.uleb128 0x54
	.4byte	.LASF1900
	.byte	0x1
	.2byte	0x316
	.4byte	0x36ae
	.2byte	0x132
	.uleb128 0x9
	.4byte	0x38f9
	.4byte	0x7670
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x11
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1901
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x7682
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_blocks
	.uleb128 0x18
	.4byte	0x7660
	.uleb128 0x34
	.4byte	.LASF1902
	.byte	0x1
	.2byte	0x410
	.4byte	0x9ad
	.uleb128 0x5
	.byte	0x3
	.4byte	includenotext
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x76a9
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x17
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1903
	.byte	0x1
	.2byte	0x41a
	.4byte	0x76bb
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_mobjinfo
	.uleb128 0x18
	.4byte	0x7699
	.uleb128 0x9
	.4byte	0x3905
	.4byte	0x76d0
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x24
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1904
	.byte	0x1
	.2byte	0x447
	.4byte	0x76e2
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_mobjflags
	.uleb128 0x18
	.4byte	0x76c0
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x76f7
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1905
	.byte	0x1
	.2byte	0x47c
	.4byte	0x7703
	.uleb128 0x18
	.4byte	0x76e7
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x7718
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1906
	.byte	0x1
	.2byte	0x491
	.4byte	0x7724
	.uleb128 0x18
	.4byte	0x7708
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x7739
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1907
	.byte	0x1
	.2byte	0x4af
	.4byte	0x7745
	.uleb128 0x18
	.4byte	0x7729
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x775a
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1908
	.byte	0x1
	.2byte	0x4b9
	.4byte	0x7766
	.uleb128 0x18
	.4byte	0x774a
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x777b
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xf
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1909
	.byte	0x1
	.2byte	0x4ce
	.4byte	0x7787
	.uleb128 0x18
	.4byte	0x776b
	.uleb128 0x9
	.4byte	0x3951
	.4byte	0x779c
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x54
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1910
	.byte	0x1
	.2byte	0x4f2
	.4byte	0x77ae
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_bexptrs
	.uleb128 0x18
	.4byte	0x778c
	.uleb128 0x9
	.4byte	0xa35
	.4byte	0x77c4
	.uleb128 0x2b
	.4byte	0xd4
	.2byte	0x433
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1911
	.byte	0x1
	.2byte	0x54f
	.4byte	0x77b3
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_codeptr
	.uleb128 0x55
	.4byte	.LASF1912
	.byte	0x5
	.2byte	0x2fa
	.4byte	0x41d
	.uleb128 0x56
	.4byte	.LASF1913
	.byte	0x15
	.byte	0x2d
	.4byte	0x555
	.uleb128 0x9
	.4byte	0xa1f
	.4byte	0x77fd
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1914
	.byte	0xa
	.byte	0x39
	.4byte	0x77ed
	.uleb128 0x9
	.4byte	0xa2a
	.4byte	0x7819
	.uleb128 0x2b
	.4byte	0xd4
	.2byte	0x27ff
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1915
	.byte	0x14
	.byte	0x4d
	.4byte	0x7808
	.uleb128 0x9
	.4byte	0x2a91
	.4byte	0x7835
	.uleb128 0x2b
	.4byte	0xd4
	.2byte	0x433
	.byte	0
	.uleb128 0x55
	.4byte	.LASF1916
	.byte	0xd
	.2byte	0x4f4
	.4byte	0x7824
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x784c
	.uleb128 0x57
	.byte	0
	.uleb128 0x55
	.4byte	.LASF1917
	.byte	0xd
	.2byte	0x4f5
	.4byte	0x7841
	.uleb128 0x9
	.4byte	0x2fcb
	.4byte	0x7868
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x97
	.byte	0
	.uleb128 0x55
	.4byte	.LASF1918
	.byte	0xd
	.2byte	0x5d8
	.4byte	0x7858
	.uleb128 0x58
	.4byte	.LASF1919
	.byte	0x1
	.byte	0x72
	.4byte	0x40
	.uleb128 0x5
	.byte	0x3
	.4byte	HelperThing
	.uleb128 0x58
	.4byte	.LASF1920
	.byte	0x1
	.byte	0x84
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_D_DEVSTR
	.uleb128 0x58
	.4byte	.LASF1921
	.byte	0x1
	.byte	0x85
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_D_CDROM
	.uleb128 0x58
	.4byte	.LASF1922
	.byte	0x1
	.byte	0x86
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PRESSKEY
	.uleb128 0x58
	.4byte	.LASF1923
	.byte	0x1
	.byte	0x87
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PRESSYN
	.uleb128 0x58
	.4byte	.LASF1924
	.byte	0x1
	.byte	0x88
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_QUITMSG
	.uleb128 0x58
	.4byte	.LASF1925
	.byte	0x1
	.byte	0x89
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_QSAVESPOT
	.uleb128 0x58
	.4byte	.LASF1926
	.byte	0x1
	.byte	0x8a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_SAVEDEAD
	.uleb128 0x58
	.4byte	.LASF1927
	.byte	0x1
	.byte	0x8b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_QSPROMPT
	.uleb128 0x58
	.4byte	.LASF1928
	.byte	0x1
	.byte	0x8c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_QLPROMPT
	.uleb128 0x58
	.4byte	.LASF1929
	.byte	0x1
	.byte	0x8d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_NEWGAME
	.uleb128 0x58
	.4byte	.LASF1930
	.byte	0x1
	.byte	0x8e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_RESTARTLEVEL
	.uleb128 0x58
	.4byte	.LASF1931
	.byte	0x1
	.byte	0x8f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_NIGHTMARE
	.uleb128 0x58
	.4byte	.LASF1932
	.byte	0x1
	.byte	0x90
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_SWSTRING
	.uleb128 0x58
	.4byte	.LASF1933
	.byte	0x1
	.byte	0x93
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_LOADING
	.uleb128 0x58
	.4byte	.LASF1934
	.byte	0x1
	.byte	0x94
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_SAVING
	.uleb128 0x58
	.4byte	.LASF1935
	.byte	0x1
	.byte	0x91
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_MSGOFF
	.uleb128 0x58
	.4byte	.LASF1936
	.byte	0x1
	.byte	0x92
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_MSGON
	.uleb128 0x58
	.4byte	.LASF1937
	.byte	0x1
	.byte	0x95
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_NETEND
	.uleb128 0x58
	.4byte	.LASF1938
	.byte	0x1
	.byte	0x96
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ENDGAME
	.uleb128 0x58
	.4byte	.LASF1939
	.byte	0x1
	.byte	0x97
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_DOSY
	.uleb128 0x58
	.4byte	.LASF1940
	.byte	0x1
	.byte	0x98
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_DETAILHI
	.uleb128 0x58
	.4byte	.LASF1941
	.byte	0x1
	.byte	0x99
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_DETAILLO
	.uleb128 0x58
	.4byte	.LASF1942
	.byte	0x1
	.byte	0x9a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GAMMALVL0
	.uleb128 0x58
	.4byte	.LASF1943
	.byte	0x1
	.byte	0x9b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GAMMALVL1
	.uleb128 0x58
	.4byte	.LASF1944
	.byte	0x1
	.byte	0x9c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GAMMALVL2
	.uleb128 0x58
	.4byte	.LASF1945
	.byte	0x1
	.byte	0x9d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GAMMALVL3
	.uleb128 0x58
	.4byte	.LASF1946
	.byte	0x1
	.byte	0x9e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GAMMALVL4
	.uleb128 0x58
	.4byte	.LASF1947
	.byte	0x1
	.byte	0x9f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_EMPTYSTRING
	.uleb128 0x58
	.4byte	.LASF1948
	.byte	0x1
	.byte	0xa0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTARMOR
	.uleb128 0x58
	.4byte	.LASF1949
	.byte	0x1
	.byte	0xa1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTMEGA
	.uleb128 0x58
	.4byte	.LASF1950
	.byte	0x1
	.byte	0xa2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTHTHBONUS
	.uleb128 0x58
	.4byte	.LASF1951
	.byte	0x1
	.byte	0xa3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTARMBONUS
	.uleb128 0x58
	.4byte	.LASF1952
	.byte	0x1
	.byte	0xa4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSTIM
	.uleb128 0x58
	.4byte	.LASF1953
	.byte	0x1
	.byte	0xa5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTMEDINEED
	.uleb128 0x58
	.4byte	.LASF1954
	.byte	0x1
	.byte	0xa6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTMEDIKIT
	.uleb128 0x58
	.4byte	.LASF1955
	.byte	0x1
	.byte	0xa7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSUPER
	.uleb128 0x58
	.4byte	.LASF1956
	.byte	0x1
	.byte	0xa8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTBLUECARD
	.uleb128 0x58
	.4byte	.LASF1957
	.byte	0x1
	.byte	0xa9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTYELWCARD
	.uleb128 0x58
	.4byte	.LASF1958
	.byte	0x1
	.byte	0xaa
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTREDCARD
	.uleb128 0x58
	.4byte	.LASF1959
	.byte	0x1
	.byte	0xab
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTBLUESKUL
	.uleb128 0x58
	.4byte	.LASF1960
	.byte	0x1
	.byte	0xac
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTYELWSKUL
	.uleb128 0x58
	.4byte	.LASF1961
	.byte	0x1
	.byte	0xad
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTREDSKULL
	.uleb128 0x58
	.4byte	.LASF1962
	.byte	0x1
	.byte	0xae
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTINVUL
	.uleb128 0x58
	.4byte	.LASF1963
	.byte	0x1
	.byte	0xaf
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTBERSERK
	.uleb128 0x58
	.4byte	.LASF1964
	.byte	0x1
	.byte	0xb0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTINVIS
	.uleb128 0x58
	.4byte	.LASF1965
	.byte	0x1
	.byte	0xb1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSUIT
	.uleb128 0x58
	.4byte	.LASF1966
	.byte	0x1
	.byte	0xb2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTMAP
	.uleb128 0x58
	.4byte	.LASF1967
	.byte	0x1
	.byte	0xb3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTVISOR
	.uleb128 0x58
	.4byte	.LASF1968
	.byte	0x1
	.byte	0xb4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTMSPHERE
	.uleb128 0x58
	.4byte	.LASF1969
	.byte	0x1
	.byte	0xb5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTCLIP
	.uleb128 0x58
	.4byte	.LASF1970
	.byte	0x1
	.byte	0xb6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTCLIPBOX
	.uleb128 0x58
	.4byte	.LASF1971
	.byte	0x1
	.byte	0xb7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTROCKET
	.uleb128 0x58
	.4byte	.LASF1972
	.byte	0x1
	.byte	0xb8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTROCKBOX
	.uleb128 0x58
	.4byte	.LASF1973
	.byte	0x1
	.byte	0xb9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTCELL
	.uleb128 0x58
	.4byte	.LASF1974
	.byte	0x1
	.byte	0xba
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTCELLBOX
	.uleb128 0x58
	.4byte	.LASF1975
	.byte	0x1
	.byte	0xbb
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSHELLS
	.uleb128 0x58
	.4byte	.LASF1976
	.byte	0x1
	.byte	0xbc
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSHELLBOX
	.uleb128 0x58
	.4byte	.LASF1977
	.byte	0x1
	.byte	0xbd
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTBACKPACK
	.uleb128 0x58
	.4byte	.LASF1978
	.byte	0x1
	.byte	0xbe
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTBFG9000
	.uleb128 0x58
	.4byte	.LASF1979
	.byte	0x1
	.byte	0xbf
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTCHAINGUN
	.uleb128 0x58
	.4byte	.LASF1980
	.byte	0x1
	.byte	0xc0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTCHAINSAW
	.uleb128 0x58
	.4byte	.LASF1981
	.byte	0x1
	.byte	0xc1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTLAUNCHER
	.uleb128 0x58
	.4byte	.LASF1982
	.byte	0x1
	.byte	0xc2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTPLASMA
	.uleb128 0x58
	.4byte	.LASF1983
	.byte	0x1
	.byte	0xc3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSHOTGUN
	.uleb128 0x58
	.4byte	.LASF1984
	.byte	0x1
	.byte	0xc4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GOTSHOTGUN2
	.uleb128 0x58
	.4byte	.LASF1985
	.byte	0x1
	.byte	0xc5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_BLUEO
	.uleb128 0x58
	.4byte	.LASF1986
	.byte	0x1
	.byte	0xc6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_REDO
	.uleb128 0x58
	.4byte	.LASF1987
	.byte	0x1
	.byte	0xc7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_YELLOWO
	.uleb128 0x58
	.4byte	.LASF1988
	.byte	0x1
	.byte	0xc8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_BLUEK
	.uleb128 0x58
	.4byte	.LASF1989
	.byte	0x1
	.byte	0xc9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_REDK
	.uleb128 0x58
	.4byte	.LASF1990
	.byte	0x1
	.byte	0xca
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_YELLOWK
	.uleb128 0x58
	.4byte	.LASF1991
	.byte	0x1
	.byte	0xcb
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_BLUEC
	.uleb128 0x58
	.4byte	.LASF1992
	.byte	0x1
	.byte	0xcc
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_REDC
	.uleb128 0x58
	.4byte	.LASF1993
	.byte	0x1
	.byte	0xcd
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_YELLOWC
	.uleb128 0x58
	.4byte	.LASF1994
	.byte	0x1
	.byte	0xce
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_BLUES
	.uleb128 0x58
	.4byte	.LASF1995
	.byte	0x1
	.byte	0xcf
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_REDS
	.uleb128 0x58
	.4byte	.LASF1996
	.byte	0x1
	.byte	0xd0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_YELLOWS
	.uleb128 0x58
	.4byte	.LASF1997
	.byte	0x1
	.byte	0xd1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_ANY
	.uleb128 0x58
	.4byte	.LASF1998
	.byte	0x1
	.byte	0xd2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_ALL3
	.uleb128 0x58
	.4byte	.LASF1999
	.byte	0x1
	.byte	0xd3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PD_ALL6
	.uleb128 0x58
	.4byte	.LASF2000
	.byte	0x1
	.byte	0xd4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_GGSAVED
	.uleb128 0x58
	.4byte	.LASF2001
	.byte	0x1
	.byte	0xd5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_MSGU
	.uleb128 0x58
	.4byte	.LASF2002
	.byte	0x1
	.byte	0xd6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M1
	.uleb128 0x58
	.4byte	.LASF2003
	.byte	0x1
	.byte	0xd7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M2
	.uleb128 0x58
	.4byte	.LASF2004
	.byte	0x1
	.byte	0xd8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M3
	.uleb128 0x58
	.4byte	.LASF2005
	.byte	0x1
	.byte	0xd9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M4
	.uleb128 0x58
	.4byte	.LASF2006
	.byte	0x1
	.byte	0xda
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M5
	.uleb128 0x58
	.4byte	.LASF2007
	.byte	0x1
	.byte	0xdb
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M6
	.uleb128 0x58
	.4byte	.LASF2008
	.byte	0x1
	.byte	0xdc
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M7
	.uleb128 0x58
	.4byte	.LASF2009
	.byte	0x1
	.byte	0xdd
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M8
	.uleb128 0x58
	.4byte	.LASF2010
	.byte	0x1
	.byte	0xde
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E1M9
	.uleb128 0x58
	.4byte	.LASF2011
	.byte	0x1
	.byte	0xdf
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M1
	.uleb128 0x58
	.4byte	.LASF2012
	.byte	0x1
	.byte	0xe0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M2
	.uleb128 0x58
	.4byte	.LASF2013
	.byte	0x1
	.byte	0xe1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M3
	.uleb128 0x58
	.4byte	.LASF2014
	.byte	0x1
	.byte	0xe2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M4
	.uleb128 0x58
	.4byte	.LASF2015
	.byte	0x1
	.byte	0xe3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M5
	.uleb128 0x58
	.4byte	.LASF2016
	.byte	0x1
	.byte	0xe4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M6
	.uleb128 0x58
	.4byte	.LASF2017
	.byte	0x1
	.byte	0xe5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M7
	.uleb128 0x58
	.4byte	.LASF2018
	.byte	0x1
	.byte	0xe6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M8
	.uleb128 0x58
	.4byte	.LASF2019
	.byte	0x1
	.byte	0xe7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E2M9
	.uleb128 0x58
	.4byte	.LASF2020
	.byte	0x1
	.byte	0xe8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M1
	.uleb128 0x58
	.4byte	.LASF2021
	.byte	0x1
	.byte	0xe9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M2
	.uleb128 0x58
	.4byte	.LASF2022
	.byte	0x1
	.byte	0xea
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M3
	.uleb128 0x58
	.4byte	.LASF2023
	.byte	0x1
	.byte	0xeb
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M4
	.uleb128 0x58
	.4byte	.LASF2024
	.byte	0x1
	.byte	0xec
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M5
	.uleb128 0x58
	.4byte	.LASF2025
	.byte	0x1
	.byte	0xed
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M6
	.uleb128 0x58
	.4byte	.LASF2026
	.byte	0x1
	.byte	0xee
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M7
	.uleb128 0x58
	.4byte	.LASF2027
	.byte	0x1
	.byte	0xef
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M8
	.uleb128 0x58
	.4byte	.LASF2028
	.byte	0x1
	.byte	0xf0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E3M9
	.uleb128 0x58
	.4byte	.LASF2029
	.byte	0x1
	.byte	0xf1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M1
	.uleb128 0x58
	.4byte	.LASF2030
	.byte	0x1
	.byte	0xf2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M2
	.uleb128 0x58
	.4byte	.LASF2031
	.byte	0x1
	.byte	0xf3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M3
	.uleb128 0x58
	.4byte	.LASF2032
	.byte	0x1
	.byte	0xf4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M4
	.uleb128 0x58
	.4byte	.LASF2033
	.byte	0x1
	.byte	0xf5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M5
	.uleb128 0x58
	.4byte	.LASF2034
	.byte	0x1
	.byte	0xf6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M6
	.uleb128 0x58
	.4byte	.LASF2035
	.byte	0x1
	.byte	0xf7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M7
	.uleb128 0x58
	.4byte	.LASF2036
	.byte	0x1
	.byte	0xf8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M8
	.uleb128 0x58
	.4byte	.LASF2037
	.byte	0x1
	.byte	0xf9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_E4M9
	.uleb128 0x58
	.4byte	.LASF2038
	.byte	0x1
	.byte	0xfa
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_1
	.uleb128 0x58
	.4byte	.LASF2039
	.byte	0x1
	.byte	0xfb
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_2
	.uleb128 0x58
	.4byte	.LASF2040
	.byte	0x1
	.byte	0xfc
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_3
	.uleb128 0x58
	.4byte	.LASF2041
	.byte	0x1
	.byte	0xfd
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_4
	.uleb128 0x58
	.4byte	.LASF2042
	.byte	0x1
	.byte	0xfe
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_5
	.uleb128 0x58
	.4byte	.LASF2043
	.byte	0x1
	.byte	0xff
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_6
	.uleb128 0x59
	.4byte	.LASF2044
	.byte	0x1
	.2byte	0x100
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_7
	.uleb128 0x59
	.4byte	.LASF2045
	.byte	0x1
	.2byte	0x101
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_8
	.uleb128 0x59
	.4byte	.LASF2046
	.byte	0x1
	.2byte	0x102
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_9
	.uleb128 0x59
	.4byte	.LASF2047
	.byte	0x1
	.2byte	0x103
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_10
	.uleb128 0x59
	.4byte	.LASF2048
	.byte	0x1
	.2byte	0x104
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_11
	.uleb128 0x59
	.4byte	.LASF2049
	.byte	0x1
	.2byte	0x105
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_12
	.uleb128 0x59
	.4byte	.LASF2050
	.byte	0x1
	.2byte	0x106
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_13
	.uleb128 0x59
	.4byte	.LASF2051
	.byte	0x1
	.2byte	0x107
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_14
	.uleb128 0x59
	.4byte	.LASF2052
	.byte	0x1
	.2byte	0x108
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_15
	.uleb128 0x59
	.4byte	.LASF2053
	.byte	0x1
	.2byte	0x109
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_16
	.uleb128 0x59
	.4byte	.LASF2054
	.byte	0x1
	.2byte	0x10a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_17
	.uleb128 0x59
	.4byte	.LASF2055
	.byte	0x1
	.2byte	0x10b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_18
	.uleb128 0x59
	.4byte	.LASF2056
	.byte	0x1
	.2byte	0x10c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_19
	.uleb128 0x59
	.4byte	.LASF2057
	.byte	0x1
	.2byte	0x10d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_20
	.uleb128 0x59
	.4byte	.LASF2058
	.byte	0x1
	.2byte	0x10e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_21
	.uleb128 0x59
	.4byte	.LASF2059
	.byte	0x1
	.2byte	0x10f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_22
	.uleb128 0x59
	.4byte	.LASF2060
	.byte	0x1
	.2byte	0x110
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_23
	.uleb128 0x59
	.4byte	.LASF2061
	.byte	0x1
	.2byte	0x111
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_24
	.uleb128 0x59
	.4byte	.LASF2062
	.byte	0x1
	.2byte	0x112
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_25
	.uleb128 0x59
	.4byte	.LASF2063
	.byte	0x1
	.2byte	0x113
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_26
	.uleb128 0x59
	.4byte	.LASF2064
	.byte	0x1
	.2byte	0x114
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_27
	.uleb128 0x59
	.4byte	.LASF2065
	.byte	0x1
	.2byte	0x115
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_28
	.uleb128 0x59
	.4byte	.LASF2066
	.byte	0x1
	.2byte	0x116
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_29
	.uleb128 0x59
	.4byte	.LASF2067
	.byte	0x1
	.2byte	0x117
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_30
	.uleb128 0x59
	.4byte	.LASF2068
	.byte	0x1
	.2byte	0x118
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_31
	.uleb128 0x59
	.4byte	.LASF2069
	.byte	0x1
	.2byte	0x119
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_32
	.uleb128 0x59
	.4byte	.LASF2070
	.byte	0x1
	.2byte	0x11a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_1
	.uleb128 0x59
	.4byte	.LASF2071
	.byte	0x1
	.2byte	0x11b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_2
	.uleb128 0x59
	.4byte	.LASF2072
	.byte	0x1
	.2byte	0x11c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_3
	.uleb128 0x59
	.4byte	.LASF2073
	.byte	0x1
	.2byte	0x11d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_4
	.uleb128 0x59
	.4byte	.LASF2074
	.byte	0x1
	.2byte	0x11e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_5
	.uleb128 0x59
	.4byte	.LASF2075
	.byte	0x1
	.2byte	0x11f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_6
	.uleb128 0x59
	.4byte	.LASF2076
	.byte	0x1
	.2byte	0x120
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_7
	.uleb128 0x59
	.4byte	.LASF2077
	.byte	0x1
	.2byte	0x121
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_8
	.uleb128 0x59
	.4byte	.LASF2078
	.byte	0x1
	.2byte	0x122
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_9
	.uleb128 0x59
	.4byte	.LASF2079
	.byte	0x1
	.2byte	0x123
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_10
	.uleb128 0x59
	.4byte	.LASF2080
	.byte	0x1
	.2byte	0x124
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_11
	.uleb128 0x59
	.4byte	.LASF2081
	.byte	0x1
	.2byte	0x125
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_12
	.uleb128 0x59
	.4byte	.LASF2082
	.byte	0x1
	.2byte	0x126
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_13
	.uleb128 0x59
	.4byte	.LASF2083
	.byte	0x1
	.2byte	0x127
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_14
	.uleb128 0x59
	.4byte	.LASF2084
	.byte	0x1
	.2byte	0x128
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_15
	.uleb128 0x59
	.4byte	.LASF2085
	.byte	0x1
	.2byte	0x129
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_16
	.uleb128 0x59
	.4byte	.LASF2086
	.byte	0x1
	.2byte	0x12a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_17
	.uleb128 0x59
	.4byte	.LASF2087
	.byte	0x1
	.2byte	0x12b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_18
	.uleb128 0x59
	.4byte	.LASF2088
	.byte	0x1
	.2byte	0x12c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_19
	.uleb128 0x59
	.4byte	.LASF2089
	.byte	0x1
	.2byte	0x12d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_20
	.uleb128 0x59
	.4byte	.LASF2090
	.byte	0x1
	.2byte	0x12e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_21
	.uleb128 0x59
	.4byte	.LASF2091
	.byte	0x1
	.2byte	0x12f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_22
	.uleb128 0x59
	.4byte	.LASF2092
	.byte	0x1
	.2byte	0x130
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_23
	.uleb128 0x59
	.4byte	.LASF2093
	.byte	0x1
	.2byte	0x131
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_24
	.uleb128 0x59
	.4byte	.LASF2094
	.byte	0x1
	.2byte	0x132
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_25
	.uleb128 0x59
	.4byte	.LASF2095
	.byte	0x1
	.2byte	0x133
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_26
	.uleb128 0x59
	.4byte	.LASF2096
	.byte	0x1
	.2byte	0x134
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_27
	.uleb128 0x59
	.4byte	.LASF2097
	.byte	0x1
	.2byte	0x135
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_28
	.uleb128 0x59
	.4byte	.LASF2098
	.byte	0x1
	.2byte	0x136
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_29
	.uleb128 0x59
	.4byte	.LASF2099
	.byte	0x1
	.2byte	0x137
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_30
	.uleb128 0x59
	.4byte	.LASF2100
	.byte	0x1
	.2byte	0x138
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_31
	.uleb128 0x59
	.4byte	.LASF2101
	.byte	0x1
	.2byte	0x139
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_PHUSTR_32
	.uleb128 0x59
	.4byte	.LASF2102
	.byte	0x1
	.2byte	0x13a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_1
	.uleb128 0x59
	.4byte	.LASF2103
	.byte	0x1
	.2byte	0x13b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_2
	.uleb128 0x59
	.4byte	.LASF2104
	.byte	0x1
	.2byte	0x13c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_3
	.uleb128 0x59
	.4byte	.LASF2105
	.byte	0x1
	.2byte	0x13d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_4
	.uleb128 0x59
	.4byte	.LASF2106
	.byte	0x1
	.2byte	0x13e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_5
	.uleb128 0x59
	.4byte	.LASF2107
	.byte	0x1
	.2byte	0x13f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_6
	.uleb128 0x59
	.4byte	.LASF2108
	.byte	0x1
	.2byte	0x140
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_7
	.uleb128 0x59
	.4byte	.LASF2109
	.byte	0x1
	.2byte	0x141
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_8
	.uleb128 0x59
	.4byte	.LASF2110
	.byte	0x1
	.2byte	0x142
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_9
	.uleb128 0x59
	.4byte	.LASF2111
	.byte	0x1
	.2byte	0x143
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_10
	.uleb128 0x59
	.4byte	.LASF2112
	.byte	0x1
	.2byte	0x144
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_11
	.uleb128 0x59
	.4byte	.LASF2113
	.byte	0x1
	.2byte	0x145
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_12
	.uleb128 0x59
	.4byte	.LASF2114
	.byte	0x1
	.2byte	0x146
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_13
	.uleb128 0x59
	.4byte	.LASF2115
	.byte	0x1
	.2byte	0x147
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_14
	.uleb128 0x59
	.4byte	.LASF2116
	.byte	0x1
	.2byte	0x148
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_15
	.uleb128 0x59
	.4byte	.LASF2117
	.byte	0x1
	.2byte	0x149
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_16
	.uleb128 0x59
	.4byte	.LASF2118
	.byte	0x1
	.2byte	0x14a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_17
	.uleb128 0x59
	.4byte	.LASF2119
	.byte	0x1
	.2byte	0x14b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_18
	.uleb128 0x59
	.4byte	.LASF2120
	.byte	0x1
	.2byte	0x14c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_19
	.uleb128 0x59
	.4byte	.LASF2121
	.byte	0x1
	.2byte	0x14d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_20
	.uleb128 0x59
	.4byte	.LASF2122
	.byte	0x1
	.2byte	0x14e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_21
	.uleb128 0x59
	.4byte	.LASF2123
	.byte	0x1
	.2byte	0x14f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_22
	.uleb128 0x59
	.4byte	.LASF2124
	.byte	0x1
	.2byte	0x150
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_23
	.uleb128 0x59
	.4byte	.LASF2125
	.byte	0x1
	.2byte	0x151
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_24
	.uleb128 0x59
	.4byte	.LASF2126
	.byte	0x1
	.2byte	0x152
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_25
	.uleb128 0x59
	.4byte	.LASF2127
	.byte	0x1
	.2byte	0x153
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_26
	.uleb128 0x59
	.4byte	.LASF2128
	.byte	0x1
	.2byte	0x154
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_27
	.uleb128 0x59
	.4byte	.LASF2129
	.byte	0x1
	.2byte	0x155
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_28
	.uleb128 0x59
	.4byte	.LASF2130
	.byte	0x1
	.2byte	0x156
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_29
	.uleb128 0x59
	.4byte	.LASF2131
	.byte	0x1
	.2byte	0x157
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_30
	.uleb128 0x59
	.4byte	.LASF2132
	.byte	0x1
	.2byte	0x158
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_31
	.uleb128 0x59
	.4byte	.LASF2133
	.byte	0x1
	.2byte	0x159
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_THUSTR_32
	.uleb128 0x59
	.4byte	.LASF2134
	.byte	0x1
	.2byte	0x15a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO1
	.uleb128 0x59
	.4byte	.LASF2135
	.byte	0x1
	.2byte	0x15b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO2
	.uleb128 0x59
	.4byte	.LASF2136
	.byte	0x1
	.2byte	0x15c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO3
	.uleb128 0x59
	.4byte	.LASF2137
	.byte	0x1
	.2byte	0x15d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO4
	.uleb128 0x59
	.4byte	.LASF2138
	.byte	0x1
	.2byte	0x15e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO5
	.uleb128 0x59
	.4byte	.LASF2139
	.byte	0x1
	.2byte	0x15f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO6
	.uleb128 0x59
	.4byte	.LASF2140
	.byte	0x1
	.2byte	0x160
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO7
	.uleb128 0x59
	.4byte	.LASF2141
	.byte	0x1
	.2byte	0x161
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO8
	.uleb128 0x59
	.4byte	.LASF2142
	.byte	0x1
	.2byte	0x162
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO9
	.uleb128 0x59
	.4byte	.LASF2143
	.byte	0x1
	.2byte	0x163
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_CHATMACRO0
	.uleb128 0x59
	.4byte	.LASF2144
	.byte	0x1
	.2byte	0x164
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_TALKTOSELF1
	.uleb128 0x59
	.4byte	.LASF2145
	.byte	0x1
	.2byte	0x165
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_TALKTOSELF2
	.uleb128 0x59
	.4byte	.LASF2146
	.byte	0x1
	.2byte	0x166
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_TALKTOSELF3
	.uleb128 0x59
	.4byte	.LASF2147
	.byte	0x1
	.2byte	0x167
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_TALKTOSELF4
	.uleb128 0x59
	.4byte	.LASF2148
	.byte	0x1
	.2byte	0x168
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_TALKTOSELF5
	.uleb128 0x59
	.4byte	.LASF2149
	.byte	0x1
	.2byte	0x169
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_MESSAGESENT
	.uleb128 0x59
	.4byte	.LASF2150
	.byte	0x1
	.2byte	0x16a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_PLRGREEN
	.uleb128 0x59
	.4byte	.LASF2151
	.byte	0x1
	.2byte	0x16b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_PLRINDIGO
	.uleb128 0x59
	.4byte	.LASF2152
	.byte	0x1
	.2byte	0x16c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_PLRBROWN
	.uleb128 0x59
	.4byte	.LASF2153
	.byte	0x1
	.2byte	0x16d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_HUSTR_PLRRED
	.uleb128 0x59
	.4byte	.LASF2154
	.byte	0x1
	.2byte	0x16e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_FOLLOWON
	.uleb128 0x59
	.4byte	.LASF2155
	.byte	0x1
	.2byte	0x16f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_FOLLOWOFF
	.uleb128 0x59
	.4byte	.LASF2156
	.byte	0x1
	.2byte	0x170
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_GRIDON
	.uleb128 0x59
	.4byte	.LASF2157
	.byte	0x1
	.2byte	0x171
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_GRIDOFF
	.uleb128 0x59
	.4byte	.LASF2158
	.byte	0x1
	.2byte	0x172
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_MARKEDSPOT
	.uleb128 0x59
	.4byte	.LASF2159
	.byte	0x1
	.2byte	0x173
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_MARKSCLEARED
	.uleb128 0x59
	.4byte	.LASF2160
	.byte	0x1
	.2byte	0x175
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_ROTATEON
	.uleb128 0x59
	.4byte	.LASF2161
	.byte	0x1
	.2byte	0x176
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_ROTATEOFF
	.uleb128 0x59
	.4byte	.LASF2162
	.byte	0x1
	.2byte	0x177
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_OVERLAYON
	.uleb128 0x59
	.4byte	.LASF2163
	.byte	0x1
	.2byte	0x178
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_AMSTR_OVERLAYOFF
	.uleb128 0x59
	.4byte	.LASF2164
	.byte	0x1
	.2byte	0x179
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_MUS
	.uleb128 0x59
	.4byte	.LASF2165
	.byte	0x1
	.2byte	0x17a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_NOMUS
	.uleb128 0x59
	.4byte	.LASF2166
	.byte	0x1
	.2byte	0x17b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_DQDON
	.uleb128 0x59
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0x17c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_DQDOFF
	.uleb128 0x59
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x17d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_KFAADDED
	.uleb128 0x59
	.4byte	.LASF2169
	.byte	0x1
	.2byte	0x17e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_FAADDED
	.uleb128 0x59
	.4byte	.LASF2170
	.byte	0x1
	.2byte	0x17f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_NCON
	.uleb128 0x59
	.4byte	.LASF2171
	.byte	0x1
	.2byte	0x180
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_NCOFF
	.uleb128 0x59
	.4byte	.LASF2172
	.byte	0x1
	.2byte	0x181
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_BEHOLD
	.uleb128 0x59
	.4byte	.LASF2173
	.byte	0x1
	.2byte	0x182
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_BEHOLDX
	.uleb128 0x59
	.4byte	.LASF2174
	.byte	0x1
	.2byte	0x183
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_CHOPPERS
	.uleb128 0x59
	.4byte	.LASF2175
	.byte	0x1
	.2byte	0x184
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_CLEV
	.uleb128 0x59
	.4byte	.LASF2176
	.byte	0x1
	.2byte	0x187
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_E1TEXT
	.uleb128 0x59
	.4byte	.LASF2177
	.byte	0x1
	.2byte	0x188
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_E2TEXT
	.uleb128 0x59
	.4byte	.LASF2178
	.byte	0x1
	.2byte	0x189
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_E3TEXT
	.uleb128 0x59
	.4byte	.LASF2179
	.byte	0x1
	.2byte	0x18a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_E4TEXT
	.uleb128 0x59
	.4byte	.LASF2180
	.byte	0x1
	.2byte	0x18b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_C1TEXT
	.uleb128 0x59
	.4byte	.LASF2181
	.byte	0x1
	.2byte	0x18c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_C2TEXT
	.uleb128 0x59
	.4byte	.LASF2182
	.byte	0x1
	.2byte	0x18d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_C3TEXT
	.uleb128 0x59
	.4byte	.LASF2183
	.byte	0x1
	.2byte	0x18e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_C4TEXT
	.uleb128 0x59
	.4byte	.LASF2184
	.byte	0x1
	.2byte	0x18f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_C5TEXT
	.uleb128 0x59
	.4byte	.LASF2185
	.byte	0x1
	.2byte	0x190
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_C6TEXT
	.uleb128 0x59
	.4byte	.LASF2186
	.byte	0x1
	.2byte	0x191
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_P1TEXT
	.uleb128 0x59
	.4byte	.LASF2187
	.byte	0x1
	.2byte	0x192
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_P2TEXT
	.uleb128 0x59
	.4byte	.LASF2188
	.byte	0x1
	.2byte	0x193
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_P3TEXT
	.uleb128 0x59
	.4byte	.LASF2189
	.byte	0x1
	.2byte	0x194
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_P4TEXT
	.uleb128 0x59
	.4byte	.LASF2190
	.byte	0x1
	.2byte	0x195
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_P5TEXT
	.uleb128 0x59
	.4byte	.LASF2191
	.byte	0x1
	.2byte	0x196
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_P6TEXT
	.uleb128 0x59
	.4byte	.LASF2192
	.byte	0x1
	.2byte	0x197
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_T1TEXT
	.uleb128 0x59
	.4byte	.LASF2193
	.byte	0x1
	.2byte	0x198
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_T2TEXT
	.uleb128 0x59
	.4byte	.LASF2194
	.byte	0x1
	.2byte	0x199
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_T3TEXT
	.uleb128 0x59
	.4byte	.LASF2195
	.byte	0x1
	.2byte	0x19a
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_T4TEXT
	.uleb128 0x59
	.4byte	.LASF2196
	.byte	0x1
	.2byte	0x19b
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_T5TEXT
	.uleb128 0x59
	.4byte	.LASF2197
	.byte	0x1
	.2byte	0x19c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_T6TEXT
	.uleb128 0x59
	.4byte	.LASF2198
	.byte	0x1
	.2byte	0x19d
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_ZOMBIE
	.uleb128 0x59
	.4byte	.LASF2199
	.byte	0x1
	.2byte	0x19e
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_SHOTGUN
	.uleb128 0x59
	.4byte	.LASF2200
	.byte	0x1
	.2byte	0x19f
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_HEAVY
	.uleb128 0x59
	.4byte	.LASF2201
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_IMP
	.uleb128 0x59
	.4byte	.LASF2202
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_DEMON
	.uleb128 0x59
	.4byte	.LASF2203
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_LOST
	.uleb128 0x59
	.4byte	.LASF2204
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_CACO
	.uleb128 0x59
	.4byte	.LASF2205
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_HELL
	.uleb128 0x59
	.4byte	.LASF2206
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_BARON
	.uleb128 0x59
	.4byte	.LASF2207
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_ARACH
	.uleb128 0x59
	.4byte	.LASF2208
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_PAIN
	.uleb128 0x59
	.4byte	.LASF2209
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_REVEN
	.uleb128 0x59
	.4byte	.LASF2210
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_MANCU
	.uleb128 0x59
	.4byte	.LASF2211
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_ARCH
	.uleb128 0x59
	.4byte	.LASF2212
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_SPIDER
	.uleb128 0x59
	.4byte	.LASF2213
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_CYBER
	.uleb128 0x59
	.4byte	.LASF2214
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_CC_HERO
	.uleb128 0x59
	.4byte	.LASF2215
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflatE1
	.uleb128 0x59
	.4byte	.LASF2216
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflatE2
	.uleb128 0x59
	.4byte	.LASF2217
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflatE3
	.uleb128 0x59
	.4byte	.LASF2218
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflatE4
	.uleb128 0x59
	.4byte	.LASF2219
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflat06
	.uleb128 0x59
	.4byte	.LASF2220
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflat11
	.uleb128 0x59
	.4byte	.LASF2221
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflat20
	.uleb128 0x59
	.4byte	.LASF2222
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflat30
	.uleb128 0x59
	.4byte	.LASF2223
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflat15
	.uleb128 0x59
	.4byte	.LASF2224
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgflat31
	.uleb128 0x59
	.4byte	.LASF2225
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	bgcastcall
	.uleb128 0x59
	.4byte	.LASF2226
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	startup1
	.uleb128 0x59
	.4byte	.LASF2227
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	startup2
	.uleb128 0x59
	.4byte	.LASF2228
	.byte	0x1
	.2byte	0x1be
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	startup3
	.uleb128 0x59
	.4byte	.LASF2229
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	startup4
	.uleb128 0x59
	.4byte	.LASF2230
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	startup5
	.uleb128 0x59
	.4byte	.LASF2231
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	savegamename
	.uleb128 0x9
	.4byte	0x30a3
	.4byte	0x8e04
	.uleb128 0x57
	.byte	0
	.uleb128 0x56
	.4byte	.LASF2232
	.byte	0x10
	.byte	0x61
	.4byte	0x8df9
	.uleb128 0x9
	.4byte	0x3166
	.4byte	0x8e1a
	.uleb128 0x57
	.byte	0
	.uleb128 0x56
	.4byte	.LASF2233
	.byte	0x10
	.byte	0x64
	.4byte	0x8e0f
	.uleb128 0x9
	.4byte	0x363e
	.4byte	0x8e30
	.uleb128 0x57
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1773
	.byte	0x11
	.byte	0x36
	.4byte	0x8e25
	.uleb128 0x56
	.4byte	.LASF2234
	.byte	0x16
	.byte	0x38
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2235
	.byte	0x16
	.byte	0x39
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2236
	.byte	0x16
	.byte	0x3a
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2237
	.byte	0x16
	.byte	0x3b
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2238
	.byte	0x16
	.byte	0x3c
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2239
	.byte	0x16
	.byte	0x3e
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2240
	.byte	0x16
	.byte	0x3f
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2241
	.byte	0x16
	.byte	0x40
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2242
	.byte	0x16
	.byte	0x41
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2243
	.byte	0x16
	.byte	0x42
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2244
	.byte	0x16
	.byte	0x43
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2245
	.byte	0x16
	.byte	0x44
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2246
	.byte	0x16
	.byte	0x45
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2247
	.byte	0x16
	.byte	0x46
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2248
	.byte	0x16
	.byte	0x47
	.4byte	0x40
	.uleb128 0x56
	.4byte	.LASF2249
	.byte	0x16
	.byte	0x48
	.4byte	0x40
	.uleb128 0x9
	.4byte	0x40
	.4byte	0x8ef6
	.uleb128 0x57
	.byte	0
	.uleb128 0x56
	.4byte	.LASF2250
	.byte	0x16
	.byte	0x49
	.4byte	0x8eeb
	.uleb128 0x56
	.4byte	.LASF2251
	.byte	0x16
	.byte	0x49
	.4byte	0x8eeb
	.uleb128 0x9
	.4byte	0x40
	.4byte	0x8f22
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x9
	.byte	0
	.uleb128 0x56
	.4byte	.LASF2252
	.byte	0x17
	.byte	0xb3
	.4byte	0x8f0c
	.uleb128 0x9
	.4byte	0x40
	.4byte	0x8f3d
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x56
	.4byte	.LASF2253
	.byte	0x17
	.byte	0xb4
	.4byte	0x8f2d
	.uleb128 0x56
	.4byte	.LASF2254
	.byte	0x12
	.byte	0x78
	.4byte	0x8f53
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37d5
	.uleb128 0x58
	.4byte	.LASF2255
	.byte	0x1
	.byte	0x75
	.4byte	0x9ad
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_pars
	.uleb128 0x59
	.4byte	.LASF2256
	.byte	0x1
	.2byte	0x185
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_COMPON
	.uleb128 0x59
	.4byte	.LASF2257
	.byte	0x1
	.2byte	0x186
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	s_STSTR_COMPOFF
	.uleb128 0x59
	.4byte	.LASF2258
	.byte	0x1
	.2byte	0x319
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_newlevel
	.uleb128 0x9
	.4byte	0x389d
	.4byte	0x8fb0
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x2c
	.byte	0
	.uleb128 0x59
	.4byte	.LASF2259
	.byte	0x1
	.2byte	0x31d
	.4byte	0x8fc2
	.uleb128 0x5
	.byte	0x3
	.4byte	mapnames
	.uleb128 0x18
	.4byte	0x8fa0
	.uleb128 0x9
	.4byte	0x389d
	.4byte	0x8fd7
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x59
	.4byte	.LASF2260
	.byte	0x1
	.2byte	0x353
	.4byte	0x8fe9
	.uleb128 0x5
	.byte	0x3
	.4byte	mapnames2
	.uleb128 0x18
	.4byte	0x8fc7
	.uleb128 0x59
	.4byte	.LASF2261
	.byte	0x1
	.2byte	0x37a
	.4byte	0x9000
	.uleb128 0x5
	.byte	0x3
	.4byte	mapnamesp
	.uleb128 0x18
	.4byte	0x8fc7
	.uleb128 0x59
	.4byte	.LASF2262
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x9017
	.uleb128 0x5
	.byte	0x3
	.4byte	mapnamest
	.uleb128 0x18
	.4byte	0x8fc7
	.uleb128 0x9
	.4byte	0x555
	.4byte	0x902c
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8c
	.byte	0
	.uleb128 0x59
	.4byte	.LASF2263
	.byte	0x1
	.2byte	0x552
	.4byte	0x901c
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_spritenames
	.uleb128 0x9
	.4byte	0x555
	.4byte	0x904e
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x44
	.byte	0
	.uleb128 0x59
	.4byte	.LASF2264
	.byte	0x1
	.2byte	0x553
	.4byte	0x903e
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_musicnames
	.uleb128 0x9
	.4byte	0x555
	.4byte	0x9070
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x72
	.byte	0
	.uleb128 0x59
	.4byte	.LASF2265
	.byte	0x1
	.2byte	0x554
	.4byte	0x9060
	.uleb128 0x5
	.byte	0x3
	.4byte	deh_soundnames
	.uleb128 0x5a
	.4byte	.LASF2266
	.byte	0x18
	.byte	0x24
	.4byte	0x555
	.4byte	0x90a1
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2267
	.byte	0x6
	.byte	0xa9
	.4byte	0x40
	.4byte	0x90bc
	.uleb128 0x14
	.4byte	0x3718
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x22
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2268
	.byte	0x6
	.byte	0xba
	.4byte	0x555
	.4byte	0x90db
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x40
	.uleb128 0x14
	.4byte	0x3718
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF2276
	.byte	0x19
	.byte	0
	.4byte	.LASF2278
	.4byte	0x40
	.4byte	0x90f4
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2269
	.byte	0x7
	.byte	0x51
	.4byte	0x555
	.4byte	0x9113
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x40
	.uleb128 0x14
	.4byte	0x9113
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5a
	.4byte	.LASF2270
	.byte	0x6
	.byte	0xad
	.4byte	0x40
	.4byte	0x912f
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x22
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2271
	.byte	0x18
	.byte	0x21
	.4byte	0x2c
	.4byte	0x9144
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2272
	.byte	0x18
	.byte	0x40
	.4byte	0x40
	.4byte	0x915e
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2273
	.byte	0x6
	.byte	0xb9
	.4byte	0x40
	.4byte	0x9173
	.uleb128 0x14
	.4byte	0x3718
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2274
	.byte	0x6
	.byte	0xb1
	.4byte	0x40
	.4byte	0x918e
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x22
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF2285
	.byte	0x7
	.byte	0x4a
	.4byte	0x919f
	.uleb128 0x14
	.4byte	0x3e
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2275
	.byte	0x18
	.byte	0x5f
	.4byte	0x40
	.4byte	0x91be
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF2277
	.byte	0x19
	.byte	0
	.4byte	.LASF2279
	.4byte	0x37
	.4byte	0x91e6
	.uleb128 0x14
	.4byte	0x877
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x3e
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2280
	.byte	0x18
	.byte	0x1e
	.4byte	0x555
	.4byte	0x9200
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2281
	.byte	0x18
	.byte	0x62
	.4byte	0x555
	.4byte	0x9215
	.uleb128 0x14
	.4byte	0x555
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2282
	.byte	0x18
	.byte	0x1c
	.4byte	0x40
	.4byte	0x922f
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2283
	.byte	0x6
	.byte	0xd8
	.4byte	0x3718
	.4byte	0x9249
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2284
	.byte	0x13
	.byte	0x36
	.4byte	0x40
	.4byte	0x9264
	.uleb128 0x14
	.4byte	0x3814
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x22
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF2286
	.byte	0x12
	.byte	0x8b
	.4byte	0x9275
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2287
	.byte	0x6
	.byte	0xa4
	.4byte	0x40
	.4byte	0x928a
	.uleb128 0x14
	.4byte	0x3718
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2288
	.byte	0x12
	.byte	0x86
	.4byte	0x40
	.4byte	0x929f
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2289
	.byte	0x12
	.byte	0x89
	.4byte	0x877
	.4byte	0x92b4
	.uleb128 0x14
	.4byte	0x40
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF2290
	.byte	0x19
	.byte	0
	.4byte	.LASF2280
	.4byte	0x555
	.4byte	0x92d2
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2291
	.byte	0x7
	.byte	0x50
	.4byte	0x3e
	.4byte	0x92f6
	.uleb128 0x14
	.4byte	0x3e
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x40
	.uleb128 0x14
	.4byte	0x9113
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2292
	.byte	0x7
	.byte	0x49
	.4byte	0x3e
	.4byte	0x9315
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x40
	.uleb128 0x14
	.4byte	0x9113
	.byte	0
	.uleb128 0x5a
	.4byte	.LASF2293
	.byte	0x18
	.byte	0x16
	.4byte	0x40
	.4byte	0x9334
	.uleb128 0x14
	.4byte	0x877
	.uleb128 0x14
	.4byte	0x877
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x5d
	.4byte	.LASF2294
	.byte	0x18
	.byte	0x2b
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x3
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	buff.9515
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-1-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL133-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -2140
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -2140
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 -4
	.byte	0x1c
	.byte	0x23
	.uleb128 0x82d
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 -4
	.byte	0x1c
	.byte	0x23
	.uleb128 0x82c
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL146-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	buff.9515
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL154-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL162-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL163-1-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL184-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL182-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL221-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL222-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1092
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL223-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1092
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1088
	.byte	0x9f
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202-1-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1088
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL216-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1088
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1065
	.byte	0x9f
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL248-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL247-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL250-1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL276-1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL283-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL316-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL316-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL318-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL306-1-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL318-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL316-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL318-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL306-1-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL308-1-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL310-1-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL312-1-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL306-1-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL321-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL322-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL326-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL352-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL353-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL357-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL384-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL385-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL389-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL405-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL413-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL412-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL415-1-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL427-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL428-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL455-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL455-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL459-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL458-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL461-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL461-1-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL488-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL490-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL488-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL489-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL488-.Ltext0
	.4byte	.LVL491-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL491-1-.Ltext0
	.4byte	.LVL493-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL493-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL511-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL519-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL517-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL520-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL520-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL541-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL539-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL542-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL542-1-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL559-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL559-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL557-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL558-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL558-.Ltext0
	.4byte	.LVL560-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL560-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL581-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL583-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL581-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL582-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL581-.Ltext0
	.4byte	.LVL584-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL585-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL585-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL599-.Ltext0
	.4byte	.LVL600-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL600-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL602-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL611-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL611-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL609-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL609-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL610-.Ltext0
	.4byte	.LVL612-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL612-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL638-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL640-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1124
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL638-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL639-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL638-.Ltext0
	.4byte	.LVL641-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL641-.Ltext0
	.4byte	.LVL642-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL642-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL645-.Ltext0
	.4byte	.LVL646-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL647-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL660-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL660-1-.Ltext0
	.4byte	.LVL670-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL670-.Ltext0
	.4byte	.LVL671-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL672-.Ltext0
	.4byte	.LVL730-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL652-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL652-.Ltext0
	.4byte	.LVL653-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL653-1-.Ltext0
	.4byte	.LVL655-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1128
	.4byte	.LVL656-.Ltext0
	.4byte	.LVL657-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL657-.Ltext0
	.4byte	.LVL730-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1128
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL662-.Ltext0
	.4byte	.LVL665-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL666-.Ltext0
	.4byte	.LVL667-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL672-.Ltext0
	.4byte	.LVL673-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL730-.Ltext0
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL685-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL685-.Ltext0
	.4byte	.LVL686-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL687-.Ltext0
	.4byte	.LVL688-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL688-.Ltext0
	.4byte	.LVL689-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL689-.Ltext0
	.4byte	.LVL690-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL691-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL691-.Ltext0
	.4byte	.LVL692-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL692-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL693-.Ltext0
	.4byte	.LVL694-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL695-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL695-.Ltext0
	.4byte	.LVL696-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL696-.Ltext0
	.4byte	.LVL697-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL697-.Ltext0
	.4byte	.LVL698-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL699-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL699-.Ltext0
	.4byte	.LVL700-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL700-.Ltext0
	.4byte	.LVL701-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL701-.Ltext0
	.4byte	.LVL702-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL702-.Ltext0
	.4byte	.LVL703-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL703-.Ltext0
	.4byte	.LVL704-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL704-.Ltext0
	.4byte	.LVL705-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL705-.Ltext0
	.4byte	.LVL706-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL706-.Ltext0
	.4byte	.LVL707-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL708-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL708-.Ltext0
	.4byte	.LVL709-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL709-.Ltext0
	.4byte	.LVL710-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL710-.Ltext0
	.4byte	.LVL711-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL711-.Ltext0
	.4byte	.LVL712-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL712-.Ltext0
	.4byte	.LVL713-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL714-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL714-.Ltext0
	.4byte	.LVL715-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL715-.Ltext0
	.4byte	.LVL716-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL716-.Ltext0
	.4byte	.LVL717-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL717-.Ltext0
	.4byte	.LVL718-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL718-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL720-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL720-.Ltext0
	.4byte	.LVL721-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL721-.Ltext0
	.4byte	.LVL722-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL723-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL723-.Ltext0
	.4byte	.LVL724-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL724-.Ltext0
	.4byte	.LVL725-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL725-.Ltext0
	.4byte	.LVL726-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL726-.Ltext0
	.4byte	.LVL727-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL727-.Ltext0
	.4byte	.LVL728-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	.LVL728-.Ltext0
	.4byte	.LVL729-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL729-.Ltext0
	.4byte	.LVL730-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1132
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL730-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL678-.Ltext0
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 -8
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL678-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL682-.Ltext0
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL678-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL684-.Ltext0
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
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
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF165:
	.ascii	"upstate\000"
.LASF1926:
	.ascii	"s_SAVEDEAD\000"
.LASF950:
	.ascii	"S_BSPI_RUN1\000"
.LASF951:
	.ascii	"S_BSPI_RUN2\000"
.LASF952:
	.ascii	"S_BSPI_RUN3\000"
.LASF953:
	.ascii	"S_BSPI_RUN4\000"
.LASF954:
	.ascii	"S_BSPI_RUN5\000"
.LASF955:
	.ascii	"S_BSPI_RUN6\000"
.LASF956:
	.ascii	"S_BSPI_RUN7\000"
.LASF957:
	.ascii	"S_BSPI_RUN8\000"
.LASF958:
	.ascii	"S_BSPI_RUN9\000"
.LASF1694:
	.ascii	"sfx_cybsit\000"
.LASF240:
	.ascii	"SPR_YSKU\000"
.LASF1660:
	.ascii	"sfx_sawup\000"
.LASF605:
	.ascii	"S_FIRE10\000"
.LASF606:
	.ascii	"S_FIRE11\000"
.LASF607:
	.ascii	"S_FIRE12\000"
.LASF608:
	.ascii	"S_FIRE13\000"
.LASF609:
	.ascii	"S_FIRE14\000"
.LASF610:
	.ascii	"S_FIRE15\000"
.LASF611:
	.ascii	"S_FIRE16\000"
.LASF612:
	.ascii	"S_FIRE17\000"
.LASF613:
	.ascii	"S_FIRE18\000"
.LASF614:
	.ascii	"S_FIRE19\000"
.LASF2247:
	.ascii	"mega_health\000"
.LASF1973:
	.ascii	"s_GOTCELL\000"
.LASF1495:
	.ascii	"MT_MISC84\000"
.LASF1428:
	.ascii	"MT_MISC20\000"
.LASF1173:
	.ascii	"S_MEGA2\000"
.LASF1174:
	.ascii	"S_MEGA3\000"
.LASF1175:
	.ascii	"S_MEGA4\000"
.LASF1432:
	.ascii	"MT_MISC24\000"
.LASF1433:
	.ascii	"MT_MISC25\000"
.LASF1435:
	.ascii	"MT_MISC26\000"
.LASF1436:
	.ascii	"MT_MISC27\000"
.LASF1437:
	.ascii	"MT_MISC28\000"
.LASF1440:
	.ascii	"MT_MISC29\000"
.LASF804:
	.ascii	"S_SARG_PAIN2\000"
.LASF2220:
	.ascii	"bgflat11\000"
.LASF2105:
	.ascii	"s_THUSTR_4\000"
.LASF1842:
	.ascii	"convertedBits\000"
.LASF2106:
	.ascii	"s_THUSTR_5\000"
.LASF1886:
	.ascii	"deh_procCheat\000"
.LASF136:
	.ascii	"wp_pistol\000"
.LASF1995:
	.ascii	"s_PD_REDS\000"
.LASF281:
	.ascii	"SPR_COL1\000"
.LASF282:
	.ascii	"SPR_COL2\000"
.LASF283:
	.ascii	"SPR_COL3\000"
.LASF284:
	.ascii	"SPR_COL4\000"
.LASF293:
	.ascii	"SPR_COL5\000"
.LASF287:
	.ascii	"SPR_COL6\000"
.LASF1884:
	.ascii	"holdstring\000"
.LASF2182:
	.ascii	"s_C3TEXT\000"
.LASF1579:
	.ascii	"handle\000"
.LASF1983:
	.ascii	"s_GOTSHOTGUN\000"
.LASF1646:
	.ascii	"mus_read_m\000"
.LASF1756:
	.ascii	"sfx_skesit\000"
.LASF1737:
	.ascii	"sfx_tink\000"
.LASF615:
	.ascii	"S_FIRE20\000"
.LASF616:
	.ascii	"S_FIRE21\000"
.LASF617:
	.ascii	"S_FIRE22\000"
.LASF618:
	.ascii	"S_FIRE23\000"
.LASF619:
	.ascii	"S_FIRE24\000"
.LASF267:
	.ascii	"SPR_COLU\000"
.LASF621:
	.ascii	"S_FIRE26\000"
.LASF622:
	.ascii	"S_FIRE27\000"
.LASF623:
	.ascii	"S_FIRE28\000"
.LASF624:
	.ascii	"S_FIRE29\000"
.LASF169:
	.ascii	"flashstate\000"
.LASF1441:
	.ascii	"MT_MISC30\000"
.LASF1356:
	.ascii	"action\000"
.LASF1443:
	.ascii	"MT_MISC32\000"
.LASF1101:
	.ascii	"S_BRAINEYE1\000"
.LASF966:
	.ascii	"S_BSPI_PAIN\000"
.LASF1446:
	.ascii	"MT_MISC35\000"
.LASF438:
	.ascii	"S_BFGEXP\000"
.LASF149:
	.ascii	"am_misl\000"
.LASF1449:
	.ascii	"MT_MISC38\000"
.LASF1450:
	.ascii	"MT_MISC39\000"
.LASF1823:
	.ascii	"fpin\000"
.LASF2158:
	.ascii	"s_AMSTR_MARKEDSPOT\000"
.LASF160:
	.ascii	"_Bool\000"
.LASF968:
	.ascii	"S_BSPI_DIE1\000"
.LASF1875:
	.ascii	"okrc\000"
.LASF969:
	.ascii	"S_BSPI_DIE2\000"
.LASF1511:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF1540:
	.ascii	"NUMPSPRITES\000"
.LASF973:
	.ascii	"S_BSPI_DIE6\000"
.LASF1743:
	.ascii	"sfx_getpow\000"
.LASF1641:
	.ascii	"mus_tense\000"
.LASF63:
	.ascii	"_mbstate\000"
.LASF1582:
	.ascii	"mus_e1m1\000"
.LASF1583:
	.ascii	"mus_e1m2\000"
.LASF42:
	.ascii	"_atexit\000"
.LASF1585:
	.ascii	"mus_e1m4\000"
.LASF1586:
	.ascii	"mus_e1m5\000"
.LASF1587:
	.ascii	"mus_e1m6\000"
.LASF1588:
	.ascii	"mus_e1m7\000"
.LASF1589:
	.ascii	"mus_e1m8\000"
.LASF1590:
	.ascii	"mus_e1m9\000"
.LASF864:
	.ascii	"S_BOSS_RAISE1\000"
.LASF167:
	.ascii	"readystate\000"
.LASF1375:
	.ascii	"MT_HEAD\000"
.LASF866:
	.ascii	"S_BOSS_RAISE3\000"
.LASF625:
	.ascii	"S_FIRE30\000"
.LASF770:
	.ascii	"S_TROO_PAIN\000"
.LASF1059:
	.ascii	"S_SSWV_DIE1\000"
.LASF869:
	.ascii	"S_BOSS_RAISE6\000"
.LASF1061:
	.ascii	"S_SSWV_DIE3\000"
.LASF1062:
	.ascii	"S_SSWV_DIE4\000"
.LASF1063:
	.ascii	"S_SSWV_DIE5\000"
.LASF235:
	.ascii	"SPR_BKEY\000"
.LASF881:
	.ascii	"S_BOS2_ATK1\000"
.LASF882:
	.ascii	"S_BOS2_ATK2\000"
.LASF883:
	.ascii	"S_BOS2_ATK3\000"
.LASF269:
	.ascii	"SPR_GOR1\000"
.LASF276:
	.ascii	"SPR_GOR2\000"
.LASF277:
	.ascii	"SPR_GOR3\000"
.LASF278:
	.ascii	"SPR_GOR4\000"
.LASF279:
	.ascii	"SPR_GOR5\000"
.LASF1453:
	.ascii	"MT_MISC42\000"
.LASF1454:
	.ascii	"MT_MISC43\000"
.LASF638:
	.ascii	"S_SKEL_RUN1\000"
.LASF413:
	.ascii	"S_TBALL2\000"
.LASF640:
	.ascii	"S_SKEL_RUN3\000"
.LASF641:
	.ascii	"S_SKEL_RUN4\000"
.LASF642:
	.ascii	"S_SKEL_RUN5\000"
.LASF643:
	.ascii	"S_SKEL_RUN6\000"
.LASF644:
	.ascii	"S_SKEL_RUN7\000"
.LASF645:
	.ascii	"S_SKEL_RUN8\000"
.LASF646:
	.ascii	"S_SKEL_RUN9\000"
.LASF139:
	.ascii	"wp_missile\000"
.LASF1124:
	.ascii	"S_BEXP2\000"
.LASF1517:
	.ascii	"seestate\000"
.LASF2097:
	.ascii	"s_PHUSTR_28\000"
.LASF2187:
	.ascii	"s_P2TEXT\000"
.LASF819:
	.ascii	"S_HEAD_ATK1\000"
.LASF820:
	.ascii	"S_HEAD_ATK2\000"
.LASF821:
	.ascii	"S_HEAD_ATK3\000"
.LASF1870:
	.ascii	"StrToInt\000"
.LASF1073:
	.ascii	"S_SSWV_RAISE1\000"
.LASF1074:
	.ascii	"S_SSWV_RAISE2\000"
.LASF32:
	.ascii	"__tm_mon\000"
.LASF1076:
	.ascii	"S_SSWV_RAISE4\000"
.LASF40:
	.ascii	"_fntypes\000"
.LASF1847:
	.ascii	"D_BuildBEXTables\000"
.LASF1370:
	.ascii	"MT_FATSHOT\000"
.LASF1550:
	.ascii	"comp_falloff\000"
.LASF255:
	.ascii	"SPR_CELL\000"
.LASF1760:
	.ascii	"sfx_dgatk\000"
.LASF256:
	.ascii	"SPR_CELP\000"
.LASF1239:
	.ascii	"S_HEARTCOL\000"
.LASF70:
	.ascii	"_inc\000"
.LASF43:
	.ascii	"_ind\000"
.LASF2246:
	.ascii	"soul_health\000"
.LASF2257:
	.ascii	"s_STSTR_COMPOFF\000"
.LASF879:
	.ascii	"S_BOS2_RUN7\000"
.LASF1156:
	.ascii	"S_MEDI\000"
.LASF1163:
	.ascii	"S_PINV\000"
.LASF2048:
	.ascii	"s_HUSTR_11\000"
.LASF1419:
	.ascii	"MT_INS\000"
.LASF1462:
	.ascii	"MT_MISC51\000"
.LASF1463:
	.ascii	"MT_MISC52\000"
.LASF1417:
	.ascii	"MT_INV\000"
.LASF1465:
	.ascii	"MT_MISC54\000"
.LASF2295:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF374:
	.ascii	"S_MISSILEUP\000"
.LASF1468:
	.ascii	"MT_MISC57\000"
.LASF1469:
	.ascii	"MT_MISC58\000"
.LASF1470:
	.ascii	"MT_MISC59\000"
.LASF551:
	.ascii	"S_SPOS_RAISE1\000"
.LASF2000:
	.ascii	"s_GGSAVED\000"
.LASF2055:
	.ascii	"s_HUSTR_18\000"
.LASF2260:
	.ascii	"mapnames2\000"
.LASF2131:
	.ascii	"s_THUSTR_30\000"
.LASF1654:
	.ascii	"sfx_dshtgn\000"
.LASF345:
	.ascii	"S_SGUNFLASH1\000"
.LASF346:
	.ascii	"S_SGUNFLASH2\000"
.LASF893:
	.ascii	"S_BOS2_RAISE1\000"
.LASF894:
	.ascii	"S_BOS2_RAISE2\000"
.LASF895:
	.ascii	"S_BOS2_RAISE3\000"
.LASF896:
	.ascii	"S_BOS2_RAISE4\000"
.LASF897:
	.ascii	"S_BOS2_RAISE5\000"
.LASF49:
	.ascii	"_flags\000"
.LASF899:
	.ascii	"S_BOS2_RAISE7\000"
.LASF658:
	.ascii	"S_SKEL_PAIN\000"
.LASF1145:
	.ascii	"S_RKEY\000"
.LASF1795:
	.ascii	"next\000"
.LASF2293:
	.ascii	"memcmp\000"
.LASF1942:
	.ascii	"s_GAMMALVL0\000"
.LASF1666:
	.ascii	"sfx_firsht\000"
.LASF1943:
	.ascii	"s_GAMMALVL1\000"
.LASF1010:
	.ascii	"S_CYBER_DIE5\000"
.LASF1658:
	.ascii	"sfx_plasma\000"
.LASF327:
	.ascii	"S_PISTOLUP\000"
.LASF1945:
	.ascii	"s_GAMMALVL3\000"
.LASF1912:
	.ascii	"_impure_ptr\000"
.LASF1946:
	.ascii	"s_GAMMALVL4\000"
.LASF1013:
	.ascii	"S_CYBER_DIE8\000"
.LASF1671:
	.ascii	"sfx_dorcls\000"
.LASF1471:
	.ascii	"MT_MISC60\000"
.LASF1472:
	.ascii	"MT_MISC61\000"
.LASF1473:
	.ascii	"MT_MISC62\000"
.LASF1474:
	.ascii	"MT_MISC63\000"
.LASF80:
	.ascii	"_cvtlen\000"
.LASF1476:
	.ascii	"MT_MISC65\000"
.LASF1477:
	.ascii	"MT_MISC66\000"
.LASF1478:
	.ascii	"MT_MISC67\000"
.LASF442:
	.ascii	"S_EXPLODE1\000"
.LASF443:
	.ascii	"S_EXPLODE2\000"
.LASF444:
	.ascii	"S_EXPLODE3\000"
.LASF543:
	.ascii	"S_SPOS_XDIE2\000"
.LASF2199:
	.ascii	"s_CC_SHOTGUN\000"
.LASF1948:
	.ascii	"s_GOTARMOR\000"
.LASF84:
	.ascii	"_sig_func\000"
.LASF633:
	.ascii	"S_TRACEEXP1\000"
.LASF634:
	.ascii	"S_TRACEEXP2\000"
.LASF635:
	.ascii	"S_TRACEEXP3\000"
.LASF2262:
	.ascii	"mapnamest\000"
.LASF1905:
	.ascii	"deh_state\000"
.LASF1021:
	.ascii	"S_PAIN_RUN5\000"
.LASF1123:
	.ascii	"S_BEXP\000"
.LASF1022:
	.ascii	"S_PAIN_RUN6\000"
.LASF1778:
	.ascii	"mask\000"
.LASF2184:
	.ascii	"s_C5TEXT\000"
.LASF1240:
	.ascii	"S_HEARTCOL2\000"
.LASF419:
	.ascii	"S_RBALLX1\000"
.LASF2015:
	.ascii	"s_HUSTR_E2M5\000"
.LASF1339:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1319:
	.ascii	"S_PLS1EXP\000"
.LASF1531:
	.ascii	"height\000"
.LASF1402:
	.ascii	"MT_TELEPORTMAN\000"
.LASF2017:
	.ascii	"s_HUSTR_E2M7\000"
.LASF1954:
	.ascii	"s_GOTMEDIKIT\000"
.LASF62:
	.ascii	"_lock\000"
.LASF58:
	.ascii	"_nbuf\000"
.LASF2144:
	.ascii	"s_HUSTR_TALKTOSELF1\000"
.LASF2145:
	.ascii	"s_HUSTR_TALKTOSELF2\000"
.LASF2146:
	.ascii	"s_HUSTR_TALKTOSELF3\000"
.LASF2147:
	.ascii	"s_HUSTR_TALKTOSELF4\000"
.LASF117:
	.ascii	"_unused\000"
.LASF1812:
	.ascii	"lookup\000"
.LASF1481:
	.ascii	"MT_MISC70\000"
.LASF200:
	.ascii	"SPR_IFOG\000"
.LASF1483:
	.ascii	"MT_MISC72\000"
.LASF1484:
	.ascii	"MT_MISC73\000"
.LASF1485:
	.ascii	"MT_MISC74\000"
.LASF1486:
	.ascii	"MT_MISC75\000"
.LASF1487:
	.ascii	"MT_MISC76\000"
.LASF1246:
	.ascii	"S_GREENTORCH2\000"
.LASF1247:
	.ascii	"S_GREENTORCH3\000"
.LASF1248:
	.ascii	"S_GREENTORCH4\000"
.LASF1835:
	.ascii	"totlen\000"
.LASF1087:
	.ascii	"S_COMMKEEN9\000"
.LASF1940:
	.ascii	"s_DETAILHI\000"
.LASF736:
	.ascii	"S_CPOS_PAIN2\000"
.LASF126:
	.ascii	"PU_NEWBLOCK\000"
.LASF959:
	.ascii	"S_BSPI_RUN10\000"
.LASF960:
	.ascii	"S_BSPI_RUN11\000"
.LASF961:
	.ascii	"S_BSPI_RUN12\000"
.LASF1043:
	.ascii	"S_SSWV_RUN1\000"
.LASF1044:
	.ascii	"S_SSWV_RUN2\000"
.LASF1045:
	.ascii	"S_SSWV_RUN3\000"
.LASF1046:
	.ascii	"S_SSWV_RUN4\000"
.LASF1047:
	.ascii	"S_SSWV_RUN5\000"
.LASF1048:
	.ascii	"S_SSWV_RUN6\000"
.LASF1049:
	.ascii	"S_SSWV_RUN7\000"
.LASF1050:
	.ascii	"S_SSWV_RUN8\000"
.LASF936:
	.ascii	"S_SPID_DIE1\000"
.LASF1889:
	.ascii	"deh_procSounds\000"
.LASF1611:
	.ascii	"mus_bunny\000"
.LASF170:
	.ascii	"weaponinfo_t\000"
.LASF1369:
	.ascii	"MT_FATSO\000"
.LASF2140:
	.ascii	"s_HUSTR_CHATMACRO7\000"
.LASF2141:
	.ascii	"s_HUSTR_CHATMACRO8\000"
.LASF772:
	.ascii	"S_TROO_DIE1\000"
.LASF773:
	.ascii	"S_TROO_DIE2\000"
.LASF774:
	.ascii	"S_TROO_DIE3\000"
.LASF775:
	.ascii	"S_TROO_DIE4\000"
.LASF776:
	.ascii	"S_TROO_DIE5\000"
.LASF1576:
	.ascii	"data\000"
.LASF73:
	.ascii	"_current_locale\000"
.LASF1153:
	.ascii	"S_YSKULL\000"
.LASF1154:
	.ascii	"S_YSKULL2\000"
.LASF253:
	.ascii	"SPR_ROCK\000"
.LASF1394:
	.ascii	"MT_ROCKET\000"
.LASF1492:
	.ascii	"MT_MISC81\000"
.LASF1493:
	.ascii	"MT_MISC82\000"
.LASF1494:
	.ascii	"MT_MISC83\000"
.LASF731:
	.ascii	"S_CPOS_ATK1\000"
.LASF732:
	.ascii	"S_CPOS_ATK2\000"
.LASF733:
	.ascii	"S_CPOS_ATK3\000"
.LASF734:
	.ascii	"S_CPOS_ATK4\000"
.LASF1361:
	.ascii	"MT_PLAYER\000"
.LASF1785:
	.ascii	"wad_source_t\000"
.LASF1161:
	.ascii	"S_SOUL5\000"
.LASF1988:
	.ascii	"s_PD_BLUEK\000"
.LASF265:
	.ascii	"SPR_SHOT\000"
.LASF460:
	.ascii	"S_IFOG2\000"
.LASF461:
	.ascii	"S_IFOG3\000"
.LASF462:
	.ascii	"S_IFOG4\000"
.LASF463:
	.ascii	"S_IFOG5\000"
.LASF1786:
	.ascii	"wadfile_info_t\000"
.LASF1615:
	.ascii	"mus_stalks\000"
.LASF194:
	.ascii	"SPR_PLSE\000"
.LASF186:
	.ascii	"SPR_PLSF\000"
.LASF185:
	.ascii	"SPR_PLSG\000"
.LASF856:
	.ascii	"S_BOSS_PAIN2\000"
.LASF556:
	.ascii	"S_VILE_STND\000"
.LASF1994:
	.ascii	"s_PD_BLUES\000"
.LASF2058:
	.ascii	"s_HUSTR_21\000"
.LASF1084:
	.ascii	"S_COMMKEEN6\000"
.LASF1085:
	.ascii	"S_COMMKEEN7\000"
.LASF2231:
	.ascii	"savegamename\000"
.LASF1086:
	.ascii	"S_COMMKEEN8\000"
.LASF193:
	.ascii	"SPR_PLSS\000"
.LASF935:
	.ascii	"S_SPID_PAIN2\000"
.LASF95:
	.ascii	"_add\000"
.LASF1684:
	.ascii	"sfx_oof\000"
.LASF1532:
	.ascii	"mass\000"
.LASF1725:
	.ascii	"sfx_posact\000"
.LASF1287:
	.ascii	"S_DOGS_STND\000"
.LASF306:
	.ascii	"SPR_POB1\000"
.LASF307:
	.ascii	"SPR_POB2\000"
.LASF1762:
	.ascii	"sfx_dgdth\000"
.LASF2229:
	.ascii	"startup4\000"
.LASF1157:
	.ascii	"S_SOUL\000"
.LASF1716:
	.ascii	"sfx_skldth\000"
.LASF1167:
	.ascii	"S_PSTR\000"
.LASF1799:
	.ascii	"source\000"
.LASF999:
	.ascii	"S_CYBER_ATK1\000"
.LASF1000:
	.ascii	"S_CYBER_ATK2\000"
.LASF1001:
	.ascii	"S_CYBER_ATK3\000"
.LASF1002:
	.ascii	"S_CYBER_ATK4\000"
.LASF1003:
	.ascii	"S_CYBER_ATK5\000"
.LASF1004:
	.ascii	"S_CYBER_ATK6\000"
.LASF1194:
	.ascii	"S_BFUG\000"
.LASF232:
	.ascii	"SPR_FCAN\000"
.LASF1952:
	.ascii	"s_GOTSTIM\000"
.LASF677:
	.ascii	"S_FATT_STND\000"
.LASF2066:
	.ascii	"s_HUSTR_29\000"
.LASF1114:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1115:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1116:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF1845:
	.ascii	"newstring\000"
.LASF398:
	.ascii	"S_BFGUP\000"
.LASF1591:
	.ascii	"mus_e2m1\000"
.LASF1592:
	.ascii	"mus_e2m2\000"
.LASF1593:
	.ascii	"mus_e2m3\000"
.LASF1594:
	.ascii	"mus_e2m4\000"
.LASF1595:
	.ascii	"mus_e2m5\000"
.LASF1596:
	.ascii	"mus_e2m6\000"
.LASF237:
	.ascii	"SPR_YKEY\000"
.LASF1598:
	.ascii	"mus_e2m8\000"
.LASF1599:
	.ascii	"mus_e2m9\000"
.LASF785:
	.ascii	"S_TROO_RAISE1\000"
.LASF786:
	.ascii	"S_TROO_RAISE2\000"
.LASF787:
	.ascii	"S_TROO_RAISE3\000"
.LASF788:
	.ascii	"S_TROO_RAISE4\000"
.LASF789:
	.ascii	"S_TROO_RAISE5\000"
.LASF1198:
	.ascii	"S_PLAS\000"
.LASF1080:
	.ascii	"S_COMMKEEN2\000"
.LASF1081:
	.ascii	"S_COMMKEEN3\000"
.LASF1082:
	.ascii	"S_COMMKEEN4\000"
.LASF1083:
	.ascii	"S_COMMKEEN5\000"
.LASF464:
	.ascii	"S_PLAY\000"
.LASF1030:
	.ascii	"S_PAIN_DIE2\000"
.LASF1031:
	.ascii	"S_PAIN_DIE3\000"
.LASF1032:
	.ascii	"S_PAIN_DIE4\000"
.LASF1033:
	.ascii	"S_PAIN_DIE5\000"
.LASF1034:
	.ascii	"S_PAIN_DIE6\000"
.LASF1372:
	.ascii	"MT_TROOP\000"
.LASF585:
	.ascii	"S_VILE_PAIN2\000"
.LASF51:
	.ascii	"_lbfsize\000"
.LASF713:
	.ascii	"S_FATT_RAISE1\000"
.LASF140:
	.ascii	"wp_plasma\000"
.LASF715:
	.ascii	"S_FATT_RAISE3\000"
.LASF716:
	.ascii	"S_FATT_RAISE4\000"
.LASF717:
	.ascii	"S_FATT_RAISE5\000"
.LASF718:
	.ascii	"S_FATT_RAISE6\000"
.LASF719:
	.ascii	"S_FATT_RAISE7\000"
.LASF720:
	.ascii	"S_FATT_RAISE8\000"
.LASF2085:
	.ascii	"s_PHUSTR_16\000"
.LASF2035:
	.ascii	"s_HUSTR_E4M7\000"
.LASF2087:
	.ascii	"s_PHUSTR_18\000"
.LASF429:
	.ascii	"S_ROCKET\000"
.LASF1393:
	.ascii	"MT_HEADSHOT\000"
.LASF2245:
	.ascii	"max_soul\000"
.LASF2176:
	.ascii	"s_E1TEXT\000"
.LASF982:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1221:
	.ascii	"S_STALAGTITE\000"
.LASF823:
	.ascii	"S_HEAD_PAIN2\000"
.LASF824:
	.ascii	"S_HEAD_PAIN3\000"
.LASF1337:
	.ascii	"S_BSKUL_ATK2\000"
.LASF162:
	.ascii	"byte\000"
.LASF371:
	.ascii	"S_CHAINFLASH2\000"
.LASF481:
	.ascii	"S_PLAY_XDIE2\000"
.LASF1803:
	.ascii	"LO_WARN\000"
.LASF1780:
	.ascii	"source_pre\000"
.LASF133:
	.ascii	"it_redskull\000"
.LASF2111:
	.ascii	"s_THUSTR_10\000"
.LASF1726:
	.ascii	"sfx_bgact\000"
.LASF1400:
	.ascii	"MT_TFOG\000"
.LASF532:
	.ascii	"S_SPOS_ATK1\000"
.LASF61:
	.ascii	"_data\000"
.LASF534:
	.ascii	"S_SPOS_ATK3\000"
.LASF2117:
	.ascii	"s_THUSTR_16\000"
.LASF2118:
	.ascii	"s_THUSTR_17\000"
.LASF2119:
	.ascii	"s_THUSTR_18\000"
.LASF2120:
	.ascii	"s_THUSTR_19\000"
.LASF469:
	.ascii	"S_PLAY_ATK1\000"
.LASF470:
	.ascii	"S_PLAY_ATK2\000"
.LASF220:
	.ascii	"SPR_APLS\000"
.LASF123:
	.ascii	"PU_LEVEL\000"
.LASF2233:
	.ascii	"S_music\000"
.LASF1923:
	.ascii	"s_PRESSYN\000"
.LASF2090:
	.ascii	"s_PHUSTR_21\000"
.LASF2091:
	.ascii	"s_PHUSTR_22\000"
.LASF1794:
	.ascii	"index\000"
.LASF2093:
	.ascii	"s_PHUSTR_24\000"
.LASF2094:
	.ascii	"s_PHUSTR_25\000"
.LASF2095:
	.ascii	"s_PHUSTR_26\000"
.LASF2096:
	.ascii	"s_PHUSTR_27\000"
.LASF1094:
	.ascii	"S_BRAIN_PAIN\000"
.LASF2098:
	.ascii	"s_PHUSTR_29\000"
.LASF1915:
	.ascii	"finesine\000"
.LASF1956:
	.ascii	"s_GOTBLUECARD\000"
.LASF1547:
	.ascii	"comp_doorlight\000"
.LASF1617:
	.ascii	"mus_betwee\000"
.LASF1250:
	.ascii	"S_REDTORCH2\000"
.LASF65:
	.ascii	"_reent\000"
.LASF1252:
	.ascii	"S_REDTORCH4\000"
.LASF759:
	.ascii	"S_TROO_RUN1\000"
.LASF760:
	.ascii	"S_TROO_RUN2\000"
.LASF761:
	.ascii	"S_TROO_RUN3\000"
.LASF762:
	.ascii	"S_TROO_RUN4\000"
.LASF763:
	.ascii	"S_TROO_RUN5\000"
.LASF764:
	.ascii	"S_TROO_RUN6\000"
.LASF765:
	.ascii	"S_TROO_RUN7\000"
.LASF766:
	.ascii	"S_TROO_RUN8\000"
.LASF1750:
	.ascii	"sfx_mandth\000"
.LASF2121:
	.ascii	"s_THUSTR_20\000"
.LASF2122:
	.ascii	"s_THUSTR_21\000"
.LASF2123:
	.ascii	"s_THUSTR_22\000"
.LASF2124:
	.ascii	"s_THUSTR_23\000"
.LASF211:
	.ascii	"SPR_CPOS\000"
.LASF674:
	.ascii	"S_FATSHOTX1\000"
.LASF675:
	.ascii	"S_FATSHOTX2\000"
.LASF676:
	.ascii	"S_FATSHOTX3\000"
.LASF754:
	.ascii	"S_CPOS_RAISE5\000"
.LASF755:
	.ascii	"S_CPOS_RAISE6\000"
.LASF86:
	.ascii	"__sf\000"
.LASF1806:
	.ascii	"LO_DEBUG\000"
.LASF2283:
	.ascii	"fopen\000"
.LASF135:
	.ascii	"wp_fist\000"
.LASF46:
	.ascii	"_base\000"
.LASF241:
	.ascii	"SPR_STIM\000"
.LASF1242:
	.ascii	"S_BLUETORCH2\000"
.LASF2099:
	.ascii	"s_PHUSTR_30\000"
.LASF2100:
	.ascii	"s_PHUSTR_31\000"
.LASF2101:
	.ascii	"s_PHUSTR_32\000"
.LASF343:
	.ascii	"S_SGUN8\000"
.LASF1244:
	.ascii	"S_BLUETORCH4\000"
.LASF104:
	.ascii	"_mbtowc_state\000"
.LASF790:
	.ascii	"S_SARG_STND\000"
.LASF1015:
	.ascii	"S_CYBER_DIE10\000"
.LASF191:
	.ascii	"SPR_BAL1\000"
.LASF192:
	.ascii	"SPR_BAL2\000"
.LASF214:
	.ascii	"SPR_BAL7\000"
.LASF1771:
	.ascii	"not_net\000"
.LASF1720:
	.ascii	"sfx_bspdth\000"
.LASF257:
	.ascii	"SPR_SHEL\000"
.LASF1504:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1755:
	.ascii	"sfx_skeact\000"
.LASF1906:
	.ascii	"deh_sfxinfo\000"
.LASF1741:
	.ascii	"sfx_flame\000"
.LASF2268:
	.ascii	"fgets\000"
.LASF1751:
	.ascii	"sfx_sssit\000"
.LASF2132:
	.ascii	"s_THUSTR_31\000"
.LASF666:
	.ascii	"S_SKEL_RAISE1\000"
.LASF179:
	.ascii	"SPR_SHT2\000"
.LASF1507:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF320:
	.ascii	"S_PUNCH1\000"
.LASF321:
	.ascii	"S_PUNCH2\000"
.LASF322:
	.ascii	"S_PUNCH3\000"
.LASF323:
	.ascii	"S_PUNCH4\000"
.LASF324:
	.ascii	"S_PUNCH5\000"
.LASF1951:
	.ascii	"s_GOTARMBONUS\000"
.LASF683:
	.ascii	"S_FATT_RUN5\000"
.LASF319:
	.ascii	"S_PUNCHUP\000"
.LASF27:
	.ascii	"__tm\000"
.LASF168:
	.ascii	"atkstate\000"
.LASF687:
	.ascii	"S_FATT_RUN9\000"
.LASF938:
	.ascii	"S_SPID_DIE3\000"
.LASF939:
	.ascii	"S_SPID_DIE4\000"
.LASF178:
	.ascii	"SPR_SHTF\000"
.LASF174:
	.ascii	"SPR_SHTG\000"
.LASF458:
	.ascii	"S_IFOG01\000"
.LASF459:
	.ascii	"S_IFOG02\000"
.LASF944:
	.ascii	"S_SPID_DIE9\000"
.LASF1338:
	.ascii	"S_BSKUL_ATK3\000"
.LASF1186:
	.ascii	"S_AMMO\000"
.LASF1648:
	.ascii	"mus_dm2int\000"
.LASF1782:
	.ascii	"source_pwad\000"
.LASF1792:
	.ascii	"ns_prboom\000"
.LASF1969:
	.ascii	"s_GOTCLIP\000"
.LASF1976:
	.ascii	"s_GOTSHELLBOX\000"
.LASF150:
	.ascii	"NUMAMMO\000"
.LASF1832:
	.ascii	"sprnames_state\000"
.LASF2014:
	.ascii	"s_HUSTR_E2M4\000"
.LASF1017:
	.ascii	"S_PAIN_RUN1\000"
.LASF1018:
	.ascii	"S_PAIN_RUN2\000"
.LASF1019:
	.ascii	"S_PAIN_RUN3\000"
.LASF1020:
	.ascii	"S_PAIN_RUN4\000"
.LASF35:
	.ascii	"__tm_yday\000"
.LASF301:
	.ascii	"SPR_HDB2\000"
.LASF302:
	.ascii	"SPR_HDB3\000"
.LASF303:
	.ascii	"SPR_HDB4\000"
.LASF304:
	.ascii	"SPR_HDB5\000"
.LASF305:
	.ascii	"SPR_HDB6\000"
.LASF1362:
	.ascii	"MT_POSSESSED\000"
.LASF352:
	.ascii	"S_DSGUN3\000"
.LASF1901:
	.ascii	"deh_blocks\000"
.LASF353:
	.ascii	"S_DSGUN4\000"
.LASF1763:
	.ascii	"sfx_dgpain\000"
.LASF354:
	.ascii	"S_DSGUN5\000"
.LASF1909:
	.ascii	"deh_misc\000"
.LASF372:
	.ascii	"S_MISSILE\000"
.LASF1228:
	.ascii	"S_SKULLCOL\000"
.LASF358:
	.ascii	"S_DSGUN9\000"
.LASF1647:
	.ascii	"mus_dm2ttl\000"
.LASF1200:
	.ascii	"S_SHOT2\000"
.LASF1267:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1804:
	.ascii	"LO_ERROR\000"
.LASF1841:
	.ascii	"shiftBits\000"
.LASF2178:
	.ascii	"s_E3TEXT\000"
.LASF744:
	.ascii	"S_CPOS_XDIE1\000"
.LASF1815:
	.ascii	"fptr\000"
.LASF1546:
	.ascii	"comp_blazing\000"
.LASF2002:
	.ascii	"s_HUSTR_E1M1\000"
.LASF2003:
	.ascii	"s_HUSTR_E1M2\000"
.LASF96:
	.ascii	"_unused_rand\000"
.LASF2005:
	.ascii	"s_HUSTR_E1M4\000"
.LASF2006:
	.ascii	"s_HUSTR_E1M5\000"
.LASF2007:
	.ascii	"s_HUSTR_E1M6\000"
.LASF2008:
	.ascii	"s_HUSTR_E1M7\000"
.LASF2009:
	.ascii	"s_HUSTR_E1M8\000"
.LASF2010:
	.ascii	"s_HUSTR_E1M9\000"
.LASF231:
	.ascii	"SPR_BEXP\000"
.LASF1991:
	.ascii	"s_PD_BLUEC\000"
.LASF1685:
	.ascii	"sfx_telept\000"
.LASF2197:
	.ascii	"s_T6TEXT\000"
.LASF2113:
	.ascii	"s_THUSTR_12\000"
.LASF172:
	.ascii	"actionf_t\000"
.LASF261:
	.ascii	"SPR_MGUN\000"
.LASF1374:
	.ascii	"MT_SHADOWS\000"
.LASF647:
	.ascii	"S_SKEL_RUN10\000"
.LASF648:
	.ascii	"S_SKEL_RUN11\000"
.LASF649:
	.ascii	"S_SKEL_RUN12\000"
.LASF2116:
	.ascii	"s_THUSTR_15\000"
.LASF315:
	.ascii	"S_NULL\000"
.LASF121:
	.ascii	"PU_SOUND\000"
.LASF857:
	.ascii	"S_BOSS_DIE1\000"
.LASF858:
	.ascii	"S_BOSS_DIE2\000"
.LASF859:
	.ascii	"S_BOSS_DIE3\000"
.LASF860:
	.ascii	"S_BOSS_DIE4\000"
.LASF861:
	.ascii	"S_BOSS_DIE5\000"
.LASF862:
	.ascii	"S_BOSS_DIE6\000"
.LASF863:
	.ascii	"S_BOSS_DIE7\000"
.LASF1027:
	.ascii	"S_PAIN_PAIN\000"
.LASF396:
	.ascii	"S_BFG\000"
.LASF77:
	.ascii	"_result_k\000"
.LASF69:
	.ascii	"_stderr\000"
.LASF1801:
	.ascii	"LO_INFO\000"
.LASF76:
	.ascii	"_result\000"
.LASF1985:
	.ascii	"s_PD_BLUEO\000"
.LASF1843:
	.ascii	"bitMap\000"
.LASF2104:
	.ascii	"s_THUSTR_3\000"
.LASF1600:
	.ascii	"mus_e3m1\000"
.LASF39:
	.ascii	"_dso_handle\000"
.LASF1602:
	.ascii	"mus_e3m3\000"
.LASF1042:
	.ascii	"S_SSWV_STND2\000"
.LASF1604:
	.ascii	"mus_e3m5\000"
.LASF1605:
	.ascii	"mus_e3m6\000"
.LASF1606:
	.ascii	"mus_e3m7\000"
.LASF1607:
	.ascii	"mus_e3m8\000"
.LASF1608:
	.ascii	"mus_e3m9\000"
.LASF262:
	.ascii	"SPR_CSAW\000"
.LASF1177:
	.ascii	"S_PMAP\000"
.LASF1629:
	.ascii	"mus_dead2\000"
.LASF1869:
	.ascii	"rstrip\000"
.LASF34:
	.ascii	"__tm_wday\000"
.LASF1183:
	.ascii	"S_PVIS\000"
.LASF36:
	.ascii	"__tm_isdst\000"
.LASF397:
	.ascii	"S_BFGDOWN\000"
.LASF1698:
	.ascii	"sfx_vilsit\000"
.LASF1386:
	.ascii	"MT_BOSSBRAIN\000"
.LASF208:
	.ascii	"SPR_SKEL\000"
.LASF2204:
	.ascii	"s_CC_CACO\000"
.LASF392:
	.ascii	"S_PLASMA1\000"
.LASF393:
	.ascii	"S_PLASMA2\000"
.LASF1257:
	.ascii	"S_GTORCHSHRT\000"
.LASF1514:
	.ascii	"doomednum\000"
.LASF1191:
	.ascii	"S_SHEL\000"
.LASF948:
	.ascii	"S_BSPI_STND2\000"
.LASF1562:
	.ascii	"comp_sound\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF68:
	.ascii	"_stdout\000"
.LASF206:
	.ascii	"SPR_FATB\000"
.LASF313:
	.ascii	"NUMSPRITES\000"
.LASF1288:
	.ascii	"S_DOGS_STND2\000"
.LASF2254:
	.ascii	"lumpinfo\000"
.LASF1597:
	.ascii	"mus_e2m7\000"
.LASF2274:
	.ascii	"sscanf\000"
.LASF431:
	.ascii	"S_BFGSHOT2\000"
.LASF2185:
	.ascii	"s_C6TEXT\000"
.LASF210:
	.ascii	"SPR_FATT\000"
.LASF1706:
	.ascii	"sfx_skeswg\000"
.LASF1158:
	.ascii	"S_SOUL2\000"
.LASF1159:
	.ascii	"S_SOUL3\000"
.LASF1160:
	.ascii	"S_SOUL4\000"
.LASF311:
	.ascii	"SPR_TNT1\000"
.LASF1162:
	.ascii	"S_SOUL6\000"
.LASF111:
	.ascii	"_mbsrtowcs_state\000"
.LASF918:
	.ascii	"S_SPID_RUN1\000"
.LASF919:
	.ascii	"S_SPID_RUN2\000"
.LASF25:
	.ascii	"_wds\000"
.LASF921:
	.ascii	"S_SPID_RUN4\000"
.LASF922:
	.ascii	"S_SPID_RUN5\000"
.LASF923:
	.ascii	"S_SPID_RUN6\000"
.LASF924:
	.ascii	"S_SPID_RUN7\000"
.LASF925:
	.ascii	"S_SPID_RUN8\000"
.LASF926:
	.ascii	"S_SPID_RUN9\000"
.LASF1125:
	.ascii	"S_BEXP3\000"
.LASF1960:
	.ascii	"s_GOTYELWSKUL\000"
.LASF1126:
	.ascii	"S_BEXP4\000"
.LASF1664:
	.ascii	"sfx_rlaunc\000"
.LASF1307:
	.ascii	"S_DOGS_DIE6\000"
.LASF2212:
	.ascii	"s_CC_SPIDER\000"
.LASF1214:
	.ascii	"S_DEADSTICK\000"
.LASF1388:
	.ascii	"MT_BOSSTARGET\000"
.LASF2082:
	.ascii	"s_PHUSTR_13\000"
.LASF1403:
	.ascii	"MT_EXTRABFG\000"
.LASF504:
	.ascii	"S_POSS_DIE1\000"
.LASF505:
	.ascii	"S_POSS_DIE2\000"
.LASF506:
	.ascii	"S_POSS_DIE3\000"
.LASF507:
	.ascii	"S_POSS_DIE4\000"
.LASF508:
	.ascii	"S_POSS_DIE5\000"
.LASF334:
	.ascii	"S_SGUNDOWN\000"
.LASF47:
	.ascii	"_size\000"
.LASF1753:
	.ascii	"sfx_keenpn\000"
.LASF181:
	.ascii	"SPR_CHGF\000"
.LASF180:
	.ascii	"SPR_CHGG\000"
.LASF985:
	.ascii	"S_ARACH_PLEX2\000"
.LASF986:
	.ascii	"S_ARACH_PLEX3\000"
.LASF987:
	.ascii	"S_ARACH_PLEX4\000"
.LASF988:
	.ascii	"S_ARACH_PLEX5\000"
.LASF729:
	.ascii	"S_CPOS_RUN7\000"
.LASF1682:
	.ascii	"sfx_itemup\000"
.LASF291:
	.ascii	"SPR_CEYE\000"
.LASF1317:
	.ascii	"S_PLS1BALL\000"
.LASF1035:
	.ascii	"S_PAIN_RAISE1\000"
.LASF1036:
	.ascii	"S_PAIN_RAISE2\000"
.LASF1037:
	.ascii	"S_PAIN_RAISE3\000"
.LASF1039:
	.ascii	"S_PAIN_RAISE5\000"
.LASF673:
	.ascii	"S_FATSHOT2\000"
.LASF1570:
	.ascii	"name\000"
.LASF1984:
	.ascii	"s_GOTSHOTGUN2\000"
.LASF1718:
	.ascii	"sfx_cybdth\000"
.LASF54:
	.ascii	"_write\000"
.LASF248:
	.ascii	"SPR_SUIT\000"
.LASF900:
	.ascii	"S_SKULL_STND\000"
.LASF489:
	.ascii	"S_POSS_STND\000"
.LASF2208:
	.ascii	"s_CC_PAIN\000"
.LASF1650:
	.ascii	"sfx_None\000"
.LASF1846:
	.ascii	"dehfgetc\000"
.LASF934:
	.ascii	"S_SPID_PAIN\000"
.LASF1513:
	.ascii	"NUMMOBJTYPES\000"
.LASF1541:
	.ascii	"comp_telefrag\000"
.LASF230:
	.ascii	"SPR_BAR1\000"
.LASF920:
	.ascii	"S_SPID_RUN3\000"
.LASF347:
	.ascii	"S_DSGUN\000"
.LASF1226:
	.ascii	"S_CANDLESTIK\000"
.LASF2175:
	.ascii	"s_STSTR_CLEV\000"
.LASF1749:
	.ascii	"sfx_manatk\000"
.LASF157:
	.ascii	"pw_allmap\000"
.LASF1351:
	.ascii	"NUMSTATES\000"
.LASF412:
	.ascii	"S_TBALL1\000"
.LASF365:
	.ascii	"S_CHAINDOWN\000"
.LASF626:
	.ascii	"S_SMOKE1\000"
.LASF627:
	.ascii	"S_SMOKE2\000"
.LASF628:
	.ascii	"S_SMOKE3\000"
.LASF629:
	.ascii	"S_SMOKE4\000"
.LASF630:
	.ascii	"S_SMOKE5\000"
.LASF849:
	.ascii	"S_BOSS_RUN6\000"
.LASF850:
	.ascii	"S_BOSS_RUN7\000"
.LASF851:
	.ascii	"S_BOSS_RUN8\000"
.LASF213:
	.ascii	"SPR_HEAD\000"
.LASF1805:
	.ascii	"LO_FATAL\000"
.LASF1609:
	.ascii	"mus_inter\000"
.LASF274:
	.ascii	"SPR_POL1\000"
.LASF270:
	.ascii	"SPR_POL2\000"
.LASF273:
	.ascii	"SPR_POL3\000"
.LASF272:
	.ascii	"SPR_POL4\000"
.LASF271:
	.ascii	"SPR_POL5\000"
.LASF275:
	.ascii	"SPR_POL6\000"
.LASF1121:
	.ascii	"S_BAR1\000"
.LASF1723:
	.ascii	"sfx_pedth\000"
.LASF300:
	.ascii	"SPR_HDB1\000"
.LASF1916:
	.ascii	"states\000"
.LASF1896:
	.ascii	"deh_procThing\000"
.LASF1404:
	.ascii	"MT_MISC0\000"
.LASF1207:
	.ascii	"S_DEADTORSO\000"
.LASF2285:
	.ascii	"Z_Free\000"
.LASF1955:
	.ascii	"s_GOTSUPER\000"
.LASF1910:
	.ascii	"deh_bexptrs\000"
.LASF349:
	.ascii	"S_DSGUNUP\000"
.LASF1745:
	.ascii	"sfx_boscub\000"
.LASF1970:
	.ascii	"s_GOTCLIPBOX\000"
.LASF33:
	.ascii	"__tm_year\000"
.LASF1828:
	.ascii	"tolen\000"
.LASF1707:
	.ascii	"sfx_pldeth\000"
.LASF1515:
	.ascii	"spawnstate\000"
.LASF758:
	.ascii	"S_TROO_STND2\000"
.LASF2053:
	.ascii	"s_HUSTR_16\000"
.LASF1278:
	.ascii	"S_TECH2LAMP\000"
.LASF1670:
	.ascii	"sfx_doropn\000"
.LASF1777:
	.ascii	"code\000"
.LASF2191:
	.ascii	"s_P6TEXT\000"
.LASF94:
	.ascii	"_mult\000"
.LASF1719:
	.ascii	"sfx_spidth\000"
.LASF1365:
	.ascii	"MT_FIRE\000"
.LASF2276:
	.ascii	"__builtin_puts\000"
.LASF2243:
	.ascii	"green_armor_class\000"
.LASF1357:
	.ascii	"nextstate\000"
.LASF1448:
	.ascii	"MT_MISC37\000"
.LASF2286:
	.ascii	"W_UnlockLumpNum\000"
.LASF1899:
	.ascii	"deh_strlookup\000"
.LASF855:
	.ascii	"S_BOSS_PAIN\000"
.LASF224:
	.ascii	"SPR_SSWV\000"
.LASF1965:
	.ascii	"s_GOTSUIT\000"
.LASF1643:
	.ascii	"mus_openin\000"
.LASF2012:
	.ascii	"s_HUSTR_E2M2\000"
.LASF2013:
	.ascii	"s_HUSTR_E2M3\000"
.LASF109:
	.ascii	"_mbrlen_state\000"
.LASF417:
	.ascii	"S_RBALL1\000"
.LASF418:
	.ascii	"S_RBALL2\000"
.LASF1680:
	.ascii	"sfx_pepain\000"
.LASF2018:
	.ascii	"s_HUSTR_E2M8\000"
.LASF2019:
	.ascii	"s_HUSTR_E2M9\000"
.LASF1222:
	.ascii	"S_TALLGRNCOL\000"
.LASF1854:
	.ascii	"partime\000"
.LASF1993:
	.ascii	"s_PD_YELLOWC\000"
.LASF1866:
	.ascii	"firstfile\000"
.LASF1717:
	.ascii	"sfx_brsdth\000"
.LASF1978:
	.ascii	"s_GOTBFG9000\000"
.LASF2143:
	.ascii	"s_HUSTR_CHATMACRO0\000"
.LASF1990:
	.ascii	"s_PD_YELLOWK\000"
.LASF1814:
	.ascii	"deh_strs\000"
.LASF2134:
	.ascii	"s_HUSTR_CHATMACRO1\000"
.LASF1625:
	.ascii	"mus_theda2\000"
.LASF1637:
	.ascii	"mus_theda3\000"
.LASF1211:
	.ascii	"S_HEADONASTICK\000"
.LASF1996:
	.ascii	"s_PD_YELLOWS\000"
.LASF2266:
	.ascii	"strncpy\000"
.LASF2137:
	.ascii	"s_HUSTR_CHATMACRO4\000"
.LASF491:
	.ascii	"S_POSS_RUN1\000"
.LASF433:
	.ascii	"S_BFGLAND2\000"
.LASF434:
	.ascii	"S_BFGLAND3\000"
.LASF435:
	.ascii	"S_BFGLAND4\000"
.LASF436:
	.ascii	"S_BFGLAND5\000"
.LASF437:
	.ascii	"S_BFGLAND6\000"
.LASF497:
	.ascii	"S_POSS_RUN7\000"
.LASF498:
	.ascii	"S_POSS_RUN8\000"
.LASF1992:
	.ascii	"s_PD_REDC\000"
.LASF67:
	.ascii	"_stdin\000"
.LASF2142:
	.ascii	"s_HUSTR_CHATMACRO9\000"
.LASF480:
	.ascii	"S_PLAY_XDIE1\000"
.LASF116:
	.ascii	"_nmalloc\000"
.LASF482:
	.ascii	"S_PLAY_XDIE3\000"
.LASF483:
	.ascii	"S_PLAY_XDIE4\000"
.LASF484:
	.ascii	"S_PLAY_XDIE5\000"
.LASF485:
	.ascii	"S_PLAY_XDIE6\000"
.LASF486:
	.ascii	"S_PLAY_XDIE7\000"
.LASF487:
	.ascii	"S_PLAY_XDIE8\000"
.LASF488:
	.ascii	"S_PLAY_XDIE9\000"
.LASF1934:
	.ascii	"s_SAVING\000"
.LASF886:
	.ascii	"S_BOS2_DIE1\000"
.LASF887:
	.ascii	"S_BOS2_DIE2\000"
.LASF888:
	.ascii	"S_BOS2_DIE3\000"
.LASF889:
	.ascii	"S_BOS2_DIE4\000"
.LASF890:
	.ascii	"S_BOS2_DIE5\000"
.LASF891:
	.ascii	"S_BOS2_DIE6\000"
.LASF892:
	.ascii	"S_BOS2_DIE7\000"
.LASF1535:
	.ascii	"flags\000"
.LASF812:
	.ascii	"S_SARG_RAISE2\000"
.LASF1768:
	.ascii	"not_demo\000"
.LASF456:
	.ascii	"S_TFOG10\000"
.LASF814:
	.ascii	"S_SARG_RAISE4\000"
.LASF1635:
	.ascii	"mus_ddtbl3\000"
.LASF1852:
	.ascii	"episode\000"
.LASF509:
	.ascii	"S_POSS_XDIE1\000"
.LASF510:
	.ascii	"S_POSS_XDIE2\000"
.LASF511:
	.ascii	"S_POSS_XDIE3\000"
.LASF512:
	.ascii	"S_POSS_XDIE4\000"
.LASF513:
	.ascii	"S_POSS_XDIE5\000"
.LASF514:
	.ascii	"S_POSS_XDIE6\000"
.LASF515:
	.ascii	"S_POSS_XDIE7\000"
.LASF146:
	.ascii	"am_clip\000"
.LASF517:
	.ascii	"S_POSS_XDIE9\000"
.LASF1210:
	.ascii	"S_GIBS\000"
.LASF825:
	.ascii	"S_HEAD_DIE1\000"
.LASF826:
	.ascii	"S_HEAD_DIE2\000"
.LASF827:
	.ascii	"S_HEAD_DIE3\000"
.LASF828:
	.ascii	"S_HEAD_DIE4\000"
.LASF829:
	.ascii	"S_HEAD_DIE5\000"
.LASF830:
	.ascii	"S_HEAD_DIE6\000"
.LASF678:
	.ascii	"S_FATT_STND2\000"
.LASF1201:
	.ascii	"S_COLU\000"
.LASF328:
	.ascii	"S_PISTOL1\000"
.LASF329:
	.ascii	"S_PISTOL2\000"
.LASF330:
	.ascii	"S_PISTOL3\000"
.LASF331:
	.ascii	"S_PISTOL4\000"
.LASF667:
	.ascii	"S_SKEL_RAISE2\000"
.LASF668:
	.ascii	"S_SKEL_RAISE3\000"
.LASF118:
	.ascii	"FILE\000"
.LASF670:
	.ascii	"S_SKEL_RAISE5\000"
.LASF671:
	.ascii	"S_SKEL_RAISE6\000"
.LASF1230:
	.ascii	"S_BIGTREE\000"
.LASF2215:
	.ascii	"bgflatE1\000"
.LASF2216:
	.ascii	"bgflatE2\000"
.LASF2217:
	.ascii	"bgflatE3\000"
.LASF2218:
	.ascii	"bgflatE4\000"
.LASF1140:
	.ascii	"S_BON2C\000"
.LASF1141:
	.ascii	"S_BON2D\000"
.LASF446:
	.ascii	"S_TFOG01\000"
.LASF447:
	.ascii	"S_TFOG02\000"
.LASF263:
	.ascii	"SPR_LAUN\000"
.LASF502:
	.ascii	"S_POSS_PAIN\000"
.LASF837:
	.ascii	"S_BRBALL1\000"
.LASF838:
	.ascii	"S_BRBALL2\000"
.LASF1621:
	.ascii	"mus_ddtblu\000"
.LASF1368:
	.ascii	"MT_SMOKE\000"
.LASF1382:
	.ascii	"MT_CYBORG\000"
.LASF1533:
	.ascii	"damage\000"
.LASF542:
	.ascii	"S_SPOS_XDIE1\000"
.LASF11:
	.ascii	"_off_t\000"
.LASF544:
	.ascii	"S_SPOS_XDIE3\000"
.LASF545:
	.ascii	"S_SPOS_XDIE4\000"
.LASF546:
	.ascii	"S_SPOS_XDIE5\000"
.LASF547:
	.ascii	"S_SPOS_XDIE6\000"
.LASF548:
	.ascii	"S_SPOS_XDIE7\000"
.LASF549:
	.ascii	"S_SPOS_XDIE8\000"
.LASF550:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1678:
	.ascii	"sfx_vipain\000"
.LASF9:
	.ascii	"size_t\000"
.LASF99:
	.ascii	"_localtime_buf\000"
.LASF2157:
	.ascii	"s_AMSTR_GRIDOFF\000"
.LASF1143:
	.ascii	"S_BKEY\000"
.LASF17:
	.ascii	"__count\000"
.LASF155:
	.ascii	"pw_invisibility\000"
.LASF1512:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF1987:
	.ascii	"s_PD_YELLOWO\000"
.LASF228:
	.ascii	"SPR_ARM1\000"
.LASF229:
	.ascii	"SPR_ARM2\000"
.LASF1364:
	.ascii	"MT_VILE\000"
.LASF1669:
	.ascii	"sfx_pstop\000"
.LASF131:
	.ascii	"it_blueskull\000"
.LASF1505:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF1977:
	.ascii	"s_GOTBACKPACK\000"
.LASF390:
	.ascii	"S_PLASMADOWN\000"
.LASF702:
	.ascii	"S_FATT_PAIN2\000"
.LASF1754:
	.ascii	"sfx_keendt\000"
.LASF1100:
	.ascii	"S_BRAINEYESEE\000"
.LASF1300:
	.ascii	"S_DOGS_PAIN\000"
.LASF637:
	.ascii	"S_SKEL_STND2\000"
.LASF1331:
	.ascii	"S_BSKUL_STND\000"
.LASF990:
	.ascii	"S_CYBER_STND2\000"
.LASF1360:
	.ascii	"state_t\000"
.LASF834:
	.ascii	"S_HEAD_RAISE4\000"
.LASF1060:
	.ascii	"S_SSWV_DIE2\000"
.LASF1924:
	.ascii	"s_QUITMSG\000"
.LASF2209:
	.ascii	"s_CC_REVEN\000"
.LASF1516:
	.ascii	"spawnhealth\000"
.LASF2195:
	.ascii	"s_T4TEXT\000"
.LASF1729:
	.ascii	"sfx_bspwlk\000"
.LASF516:
	.ascii	"S_POSS_XDIE8\000"
.LASF1284:
	.ascii	"S_DETONATE\000"
.LASF1553:
	.ascii	"comp_pursuit\000"
.LASF1190:
	.ascii	"S_CELP\000"
.LASF1232:
	.ascii	"S_EVILEYE\000"
.LASF1258:
	.ascii	"S_GTORCHSHRT2\000"
.LASF81:
	.ascii	"_cvtbuf\000"
.LASF1260:
	.ascii	"S_GTORCHSHRT4\000"
.LASF2270:
	.ascii	"printf\000"
.LASF1640:
	.ascii	"mus_romer2\000"
.LASF1748:
	.ascii	"sfx_bosdth\000"
.LASF691:
	.ascii	"S_FATT_ATK1\000"
.LASF222:
	.ascii	"SPR_CYBR\000"
.LASF166:
	.ascii	"downstate\000"
.LASF692:
	.ascii	"S_FATT_ATK2\000"
.LASF595:
	.ascii	"S_VILE_DIE10\000"
.LASF183:
	.ascii	"SPR_MISF\000"
.LASF182:
	.ascii	"SPR_MISG\000"
.LASF195:
	.ascii	"SPR_MISL\000"
.LASF1149:
	.ascii	"S_BSKULL\000"
.LASF1931:
	.ascii	"s_NIGHTMARE\000"
.LASF226:
	.ascii	"SPR_BBRN\000"
.LASF570:
	.ascii	"S_VILE_ATK1\000"
.LASF571:
	.ascii	"S_VILE_ATK2\000"
.LASF572:
	.ascii	"S_VILE_ATK3\000"
.LASF573:
	.ascii	"S_VILE_ATK4\000"
.LASF574:
	.ascii	"S_VILE_ATK5\000"
.LASF575:
	.ascii	"S_VILE_ATK6\000"
.LASF576:
	.ascii	"S_VILE_ATK7\000"
.LASF317:
	.ascii	"S_PUNCH\000"
.LASF578:
	.ascii	"S_VILE_ATK9\000"
.LASF297:
	.ascii	"SPR_SMBT\000"
.LASF1734:
	.ascii	"sfx_hoof\000"
.LASF1930:
	.ascii	"s_RESTARTLEVEL\000"
.LASF1848:
	.ascii	"lfstrip\000"
.LASF2108:
	.ascii	"s_THUSTR_7\000"
.LASF1620:
	.ascii	"mus_shawn\000"
.LASF1297:
	.ascii	"S_DOGS_ATK1\000"
.LASF1298:
	.ascii	"S_DOGS_ATK2\000"
.LASF1299:
	.ascii	"S_DOGS_ATK3\000"
.LASF873:
	.ascii	"S_BOS2_RUN1\000"
.LASF874:
	.ascii	"S_BOS2_RUN2\000"
.LASF875:
	.ascii	"S_BOS2_RUN3\000"
.LASF876:
	.ascii	"S_BOS2_RUN4\000"
.LASF877:
	.ascii	"S_BOS2_RUN5\000"
.LASF878:
	.ascii	"S_BOS2_RUN6\000"
.LASF15:
	.ascii	"__wchb\000"
.LASF880:
	.ascii	"S_BOS2_RUN8\000"
.LASF110:
	.ascii	"_mbrtowc_state\000"
.LASF30:
	.ascii	"__tm_hour\000"
.LASF289:
	.ascii	"SPR_TRE2\000"
.LASF1259:
	.ascii	"S_GTORCHSHRT3\000"
.LASF1935:
	.ascii	"s_MSGOFF\000"
.LASF947:
	.ascii	"S_BSPI_STND\000"
.LASF1665:
	.ascii	"sfx_rxplod\000"
.LASF1524:
	.ascii	"meleestate\000"
.LASF1774:
	.ascii	"deh_cheat\000"
.LASF2237:
	.ascii	"idkfa_armor\000"
.LASF164:
	.ascii	"ammo\000"
.LASF737:
	.ascii	"S_CPOS_DIE1\000"
.LASF296:
	.ascii	"SPR_TRED\000"
.LASF189:
	.ascii	"SPR_BLUD\000"
.LASF13:
	.ascii	"wint_t\000"
.LASF694:
	.ascii	"S_FATT_ATK4\000"
.LASF695:
	.ascii	"S_FATT_ATK5\000"
.LASF696:
	.ascii	"S_FATT_ATK6\000"
.LASF697:
	.ascii	"S_FATT_ATK7\000"
.LASF698:
	.ascii	"S_FATT_ATK8\000"
.LASF699:
	.ascii	"S_FATT_ATK9\000"
.LASF1883:
	.ascii	"maxstrlen\000"
.LASF1677:
	.ascii	"sfx_popain\000"
.LASF82:
	.ascii	"_new\000"
.LASF1508:
	.ascii	"MT_STEALTHIMP\000"
.LASF199:
	.ascii	"SPR_TFOG\000"
.LASF1340:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1341:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF405:
	.ascii	"S_BLOOD1\000"
.LASF406:
	.ascii	"S_BLOOD2\000"
.LASF407:
	.ascii	"S_BLOOD3\000"
.LASF1900:
	.ascii	"deh_numstrlookup\000"
.LASF1879:
	.ascii	"deh_procBexSounds\000"
.LASF1623:
	.ascii	"mus_dead\000"
.LASF90:
	.ascii	"_niobs\000"
.LASF1359:
	.ascii	"misc2\000"
.LASF1631:
	.ascii	"mus_romero\000"
.LASF1676:
	.ascii	"sfx_dmpain\000"
.LASF1501:
	.ascii	"MT_STEALTHBABY\000"
.LASF2259:
	.ascii	"mapnames\000"
.LASF1836:
	.ascii	"dehReformatStr\000"
.LASF672:
	.ascii	"S_FATSHOT1\000"
.LASF2275:
	.ascii	"strncasecmp\000"
.LASF1197:
	.ascii	"S_LAUN\000"
.LASF1283:
	.ascii	"S_GRENADE\000"
.LASF457:
	.ascii	"S_IFOG\000"
.LASF2021:
	.ascii	"s_HUSTR_E3M2\000"
.LASF2022:
	.ascii	"s_HUSTR_E3M3\000"
.LASF2023:
	.ascii	"s_HUSTR_E3M4\000"
.LASF1864:
	.ascii	"nextfile\000"
.LASF2025:
	.ascii	"s_HUSTR_E3M6\000"
.LASF2026:
	.ascii	"s_HUSTR_E3M7\000"
.LASF2027:
	.ascii	"s_HUSTR_E3M8\000"
.LASF2028:
	.ascii	"s_HUSTR_E3M9\000"
.LASF202:
	.ascii	"SPR_POSS\000"
.LASF66:
	.ascii	"_errno\000"
.LASF2207:
	.ascii	"s_CC_ARACH\000"
.LASF2236:
	.ascii	"idfa_armor_class\000"
.LASF1873:
	.ascii	"strval\000"
.LASF1006:
	.ascii	"S_CYBER_DIE1\000"
.LASF1007:
	.ascii	"S_CYBER_DIE2\000"
.LASF1008:
	.ascii	"S_CYBER_DIE3\000"
.LASF1009:
	.ascii	"S_CYBER_DIE4\000"
.LASF31:
	.ascii	"__tm_mday\000"
.LASF1011:
	.ascii	"S_CYBER_DIE6\000"
.LASF1012:
	.ascii	"S_CYBER_DIE7\000"
.LASF884:
	.ascii	"S_BOS2_PAIN\000"
.LASF1014:
	.ascii	"S_CYBER_DIE9\000"
.LASF1700:
	.ascii	"sfx_pesit\000"
.LASF2226:
	.ascii	"startup1\000"
.LASF1353:
	.ascii	"sprite\000"
.LASF1963:
	.ascii	"s_GOTBERSERK\000"
.LASF2165:
	.ascii	"s_STSTR_NOMUS\000"
.LASF1475:
	.ascii	"MT_MISC64\000"
.LASF1773:
	.ascii	"cheat\000"
.LASF38:
	.ascii	"_fnargs\000"
.LASF1431:
	.ascii	"MT_MISC23\000"
.LASF1927:
	.ascii	"s_QSPROMPT\000"
.LASF2032:
	.ascii	"s_HUSTR_E4M4\000"
.LASF1628:
	.ascii	"mus_runni2\000"
.LASF1788:
	.ascii	"ns_sprites\000"
.LASF2080:
	.ascii	"s_PHUSTR_11\000"
.LASF1227:
	.ascii	"S_CANDELABRA\000"
.LASF567:
	.ascii	"S_VILE_RUN10\000"
.LASF568:
	.ascii	"S_VILE_RUN11\000"
.LASF569:
	.ascii	"S_VILE_RUN12\000"
.LASF2083:
	.ascii	"s_PHUSTR_14\000"
.LASF1077:
	.ascii	"S_SSWV_RAISE5\000"
.LASF336:
	.ascii	"S_SGUN1\000"
.LASF337:
	.ascii	"S_SGUN2\000"
.LASF338:
	.ascii	"S_SGUN3\000"
.LASF339:
	.ascii	"S_SGUN4\000"
.LASF340:
	.ascii	"S_SGUN5\000"
.LASF341:
	.ascii	"S_SGUN6\000"
.LASF342:
	.ascii	"S_SGUN7\000"
.LASF163:
	.ascii	"uint_64_t\000"
.LASF344:
	.ascii	"S_SGUN9\000"
.LASF312:
	.ascii	"SPR_DOGS\000"
.LASF1937:
	.ascii	"s_NETEND\000"
.LASF333:
	.ascii	"S_SGUN\000"
.LASF1223:
	.ascii	"S_SHRTGRNCOL\000"
.LASF2289:
	.ascii	"W_CacheLumpNum\000"
.LASF1742:
	.ascii	"sfx_flamst\000"
.LASF908:
	.ascii	"S_SKULL_PAIN\000"
.LASF2193:
	.ascii	"s_T2TEXT\000"
.LASF1818:
	.ascii	"value\000"
.LASF1612:
	.ascii	"mus_victor\000"
.LASF1893:
	.ascii	"setMobjInfoValue\000"
.LASF1389:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1523:
	.ascii	"painsound\000"
.LASF632:
	.ascii	"S_TRACER2\000"
.LASF22:
	.ascii	"_next\000"
.LASF1614:
	.ascii	"mus_runnin\000"
.LASF2043:
	.ascii	"s_HUSTR_6\000"
.LASF1231:
	.ascii	"S_TECHPILLAR\000"
.LASF636:
	.ascii	"S_SKEL_STND\000"
.LASF1894:
	.ascii	"mobjInfoIndex\000"
.LASF1613:
	.ascii	"mus_introa\000"
.LASF2205:
	.ascii	"s_CC_HELL\000"
.LASF791:
	.ascii	"S_SARG_STND2\000"
.LASF2241:
	.ascii	"maxhealth\000"
.LASF1735:
	.ascii	"sfx_metal\000"
.LASF107:
	.ascii	"_signal_buf\000"
.LASF537:
	.ascii	"S_SPOS_DIE1\000"
.LASF538:
	.ascii	"S_SPOS_DIE2\000"
.LASF539:
	.ascii	"S_SPOS_DIE3\000"
.LASF540:
	.ascii	"S_SPOS_DIE4\000"
.LASF541:
	.ascii	"S_SPOS_DIE5\000"
.LASF1702:
	.ascii	"sfx_sgtatk\000"
.LASF52:
	.ascii	"_cookie\000"
.LASF1974:
	.ascii	"s_GOTCELLBOX\000"
.LASF1266:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF2041:
	.ascii	"s_HUSTR_4\000"
.LASF1350:
	.ascii	"S_MUSHROOM\000"
.LASF1766:
	.ascii	"not_dm\000"
.LASF1699:
	.ascii	"sfx_mansit\000"
.LASF800:
	.ascii	"S_SARG_ATK1\000"
.LASF801:
	.ascii	"S_SARG_ATK2\000"
.LASF802:
	.ascii	"S_SARG_ATK3\000"
.LASF391:
	.ascii	"S_PLASMAUP\000"
.LASF1355:
	.ascii	"tics\000"
.LASF2148:
	.ascii	"s_HUSTR_TALKTOSELF5\000"
.LASF2267:
	.ascii	"fprintf\000"
.LASF1147:
	.ascii	"S_YKEY\000"
.LASF1673:
	.ascii	"sfx_swtchn\000"
.LASF1529:
	.ascii	"speed\000"
.LASF2039:
	.ascii	"s_HUSTR_2\000"
.LASF360:
	.ascii	"S_DSNR1\000"
.LASF1029:
	.ascii	"S_PAIN_DIE1\000"
.LASF2287:
	.ascii	"fclose\000"
.LASF1574:
	.ascii	"pitch\000"
.LASF1897:
	.ascii	"bGetData\000"
.LASF2044:
	.ascii	"s_HUSTR_7\000"
.LASF2045:
	.ascii	"s_HUSTR_8\000"
.LASF2203:
	.ascii	"s_CC_LOST\000"
.LASF2046:
	.ascii	"s_HUSTR_9\000"
.LASF559:
	.ascii	"S_VILE_RUN2\000"
.LASF1642:
	.ascii	"mus_shawn3\000"
.LASF1275:
	.ascii	"S_TECHLAMP2\000"
.LASF2092:
	.ascii	"s_PHUSTR_23\000"
.LASF1277:
	.ascii	"S_TECHLAMP4\000"
.LASF723:
	.ascii	"S_CPOS_RUN1\000"
.LASF724:
	.ascii	"S_CPOS_RUN2\000"
.LASF725:
	.ascii	"S_CPOS_RUN3\000"
.LASF726:
	.ascii	"S_CPOS_RUN4\000"
.LASF727:
	.ascii	"S_CPOS_RUN5\000"
.LASF728:
	.ascii	"S_CPOS_RUN6\000"
.LASF259:
	.ascii	"SPR_BPAK\000"
.LASF730:
	.ascii	"S_CPOS_RUN8\000"
.LASF1127:
	.ascii	"S_BEXP5\000"
.LASF1790:
	.ascii	"ns_colormaps\000"
.LASF2170:
	.ascii	"s_STSTR_NCON\000"
.LASF1757:
	.ascii	"sfx_skeatk\000"
.LASF2038:
	.ascii	"s_HUSTR_1\000"
.LASF492:
	.ascii	"S_POSS_RUN2\000"
.LASF2040:
	.ascii	"s_HUSTR_3\000"
.LASF119:
	.ascii	"PU_FREE\000"
.LASF2042:
	.ascii	"s_HUSTR_5\000"
.LASF494:
	.ascii	"S_POSS_RUN4\000"
.LASF811:
	.ascii	"S_SARG_RAISE1\000"
.LASF495:
	.ascii	"S_POSS_RUN5\000"
.LASF813:
	.ascii	"S_SARG_RAISE3\000"
.LASF496:
	.ascii	"S_POSS_RUN6\000"
.LASF815:
	.ascii	"S_SARG_RAISE5\000"
.LASF816:
	.ascii	"S_SARG_RAISE6\000"
.LASF1709:
	.ascii	"sfx_podth1\000"
.LASF1710:
	.ascii	"sfx_podth2\000"
.LASF1711:
	.ascii	"sfx_podth3\000"
.LASF2167:
	.ascii	"s_STSTR_DQDOFF\000"
.LASF2196:
	.ascii	"s_T5TEXT\000"
.LASF1764:
	.ascii	"NUMSFX\000"
.LASF298:
	.ascii	"SPR_SMGT\000"
.LASF28:
	.ascii	"__tm_sec\000"
.LASF439:
	.ascii	"S_BFGEXP2\000"
.LASF440:
	.ascii	"S_BFGEXP3\000"
.LASF441:
	.ascii	"S_BFGEXP4\000"
.LASF370:
	.ascii	"S_CHAINFLASH1\000"
.LASF37:
	.ascii	"_on_exit_args\000"
.LASF326:
	.ascii	"S_PISTOLDOWN\000"
.LASF1825:
	.ascii	"line\000"
.LASF2223:
	.ascii	"bgflat15\000"
.LASF991:
	.ascii	"S_CYBER_RUN1\000"
.LASF992:
	.ascii	"S_CYBER_RUN2\000"
.LASF993:
	.ascii	"S_CYBER_RUN3\000"
.LASF994:
	.ascii	"S_CYBER_RUN4\000"
.LASF995:
	.ascii	"S_CYBER_RUN5\000"
.LASF996:
	.ascii	"S_CYBER_RUN6\000"
.LASF997:
	.ascii	"S_CYBER_RUN7\000"
.LASF998:
	.ascii	"S_CYBER_RUN8\000"
.LASF1850:
	.ascii	"deh_procPars\000"
.LASF1518:
	.ascii	"seesound\000"
.LASF1809:
	.ascii	"lump\000"
.LASF2284:
	.ascii	"lprintf\000"
.LASF1178:
	.ascii	"S_PMAP2\000"
.LASF1179:
	.ascii	"S_PMAP3\000"
.LASF1180:
	.ascii	"S_PMAP4\000"
.LASF1181:
	.ascii	"S_PMAP5\000"
.LASF1182:
	.ascii	"S_PMAP6\000"
.LASF2186:
	.ascii	"s_P1TEXT\000"
.LASF1904:
	.ascii	"deh_mobjflags\000"
.LASF909:
	.ascii	"S_SKULL_PAIN2\000"
.LASF1522:
	.ascii	"painchance\000"
.LASF735:
	.ascii	"S_CPOS_PAIN\000"
.LASF1712:
	.ascii	"sfx_bgdth1\000"
.LASF212:
	.ascii	"SPR_SARG\000"
.LASF1921:
	.ascii	"s_D_CDROM\000"
.LASF112:
	.ascii	"_wcrtomb_state\000"
.LASF1657:
	.ascii	"sfx_dbload\000"
.LASF1638:
	.ascii	"mus_adrian\000"
.LASF1645:
	.ascii	"mus_ultima\000"
.LASF1040:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1500:
	.ascii	"MT_DOGS\000"
.LASF1447:
	.ascii	"MT_MISC36\000"
.LASF844:
	.ascii	"S_BOSS_RUN1\000"
.LASF845:
	.ascii	"S_BOSS_RUN2\000"
.LASF2020:
	.ascii	"s_HUSTR_E3M1\000"
.LASF846:
	.ascii	"S_BOSS_RUN3\000"
.LASF124:
	.ascii	"PU_LEVSPEC\000"
.LASF847:
	.ascii	"S_BOSS_RUN4\000"
.LASF1932:
	.ascii	"s_SWSTRING\000"
.LASF848:
	.ascii	"S_BOSS_RUN5\000"
.LASF2181:
	.ascii	"s_C2TEXT\000"
.LASF1830:
	.ascii	"found\000"
.LASF366:
	.ascii	"S_CHAINUP\000"
.LASF318:
	.ascii	"S_PUNCHDOWN\000"
.LASF1796:
	.ascii	"li_namespace\000"
.LASF1229:
	.ascii	"S_TORCHTREE\000"
.LASF1041:
	.ascii	"S_SSWV_STND\000"
.LASF1833:
	.ascii	"S_sfx_state\000"
.LASF1928:
	.ascii	"s_QLPROMPT\000"
.LASF2173:
	.ascii	"s_STSTR_BEHOLDX\000"
.LASF1088:
	.ascii	"S_COMMKEEN10\000"
.LASF1089:
	.ascii	"S_COMMKEEN11\000"
.LASF1090:
	.ascii	"S_COMMKEEN12\000"
.LASF1853:
	.ascii	"level\000"
.LASF1005:
	.ascii	"S_CYBER_PAIN\000"
.LASF2152:
	.ascii	"s_HUSTR_PLRBROWN\000"
.LASF2109:
	.ascii	"s_THUSTR_8\000"
.LASF1674:
	.ascii	"sfx_swtchx\000"
.LASF524:
	.ascii	"S_SPOS_RUN1\000"
.LASF280:
	.ascii	"SPR_SMIT\000"
.LASF161:
	.ascii	"boolean\000"
.LASF527:
	.ascii	"S_SPOS_RUN4\000"
.LASF528:
	.ascii	"S_SPOS_RUN5\000"
.LASF217:
	.ascii	"SPR_SKUL\000"
.LASF530:
	.ascii	"S_SPOS_RUN7\000"
.LASF531:
	.ascii	"S_SPOS_RUN8\000"
.LASF1188:
	.ascii	"S_BROK\000"
.LASF1091:
	.ascii	"S_KEENPAIN\000"
.LASF2221:
	.ascii	"bgflat20\000"
.LASF1502:
	.ascii	"MT_STEALTHVILE\000"
.LASF2232:
	.ascii	"S_sfx\000"
.LASF2210:
	.ascii	"s_CC_MANCU\000"
.LASF2029:
	.ascii	"s_HUSTR_E4M1\000"
.LASF2030:
	.ascii	"s_HUSTR_E4M2\000"
.LASF984:
	.ascii	"S_ARACH_PLEX\000"
.LASF1245:
	.ascii	"S_GREENTORCH\000"
.LASF2033:
	.ascii	"s_HUSTR_E4M5\000"
.LASF143:
	.ascii	"wp_supershotgun\000"
.LASF384:
	.ascii	"S_SAWDOWN\000"
.LASF1324:
	.ascii	"S_PLS2BALL\000"
.LASF2037:
	.ascii	"s_HUSTR_E4M9\000"
.LASF2200:
	.ascii	"s_CC_HEAVY\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF1663:
	.ascii	"sfx_sawhit\000"
.LASF1662:
	.ascii	"sfx_sawful\000"
.LASF1352:
	.ascii	"statenum_t\000"
.LASF1392:
	.ascii	"MT_TROOPSHOT\000"
.LASF1824:
	.ascii	"fpout\000"
.LASF2224:
	.ascii	"bgflat31\000"
.LASF1377:
	.ascii	"MT_BRUISERSHOT\000"
.LASF1730:
	.ascii	"sfx_vilact\000"
.LASF2198:
	.ascii	"s_CC_ZOMBIE\000"
.LASF2166:
	.ascii	"s_STSTR_DQDON\000"
.LASF1497:
	.ascii	"MT_MISC86\000"
.LASF1903:
	.ascii	"deh_mobjinfo\000"
.LASF1538:
	.ascii	"ps_weapon\000"
.LASF2219:
	.ascii	"bgflat06\000"
.LASF1695:
	.ascii	"sfx_spisit\000"
.LASF1957:
	.ascii	"s_GOTYELWCARD\000"
.LASF865:
	.ascii	"S_BOSS_RAISE2\000"
.LASF472:
	.ascii	"S_PLAY_PAIN2\000"
.LASF1503:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF1661:
	.ascii	"sfx_sawidl\000"
.LASF867:
	.ascii	"S_BOSS_RAISE4\000"
.LASF97:
	.ascii	"_strtok_last\000"
.LASF868:
	.ascii	"S_BOSS_RAISE5\000"
.LASF1354:
	.ascii	"frame\000"
.LASF209:
	.ascii	"SPR_MANF\000"
.LASF722:
	.ascii	"S_CPOS_STND2\000"
.LASF1728:
	.ascii	"sfx_bspact\000"
.LASF2179:
	.ascii	"s_E4TEXT\000"
.LASF535:
	.ascii	"S_SPOS_PAIN\000"
.LASF137:
	.ascii	"wp_shotgun\000"
.LASF1950:
	.ascii	"s_GOTHTHBONUS\000"
.LASF2291:
	.ascii	"Z_Realloc\000"
.LASF503:
	.ascii	"S_POSS_PAIN2\000"
.LASF1398:
	.ascii	"MT_PUFF\000"
.LASF1548:
	.ascii	"comp_model\000"
.LASF1765:
	.ascii	"always\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF375:
	.ascii	"S_MISSILE1\000"
.LASF376:
	.ascii	"S_MISSILE2\000"
.LASF377:
	.ascii	"S_MISSILE3\000"
.LASF93:
	.ascii	"_seed\000"
.LASF2114:
	.ascii	"s_THUSTR_13\000"
.LASF752:
	.ascii	"S_CPOS_RAISE3\000"
.LASF753:
	.ascii	"S_CPOS_RAISE4\000"
.LASF55:
	.ascii	"_seek\000"
.LASF1195:
	.ascii	"S_MGUN\000"
.LASF756:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1376:
	.ascii	"MT_BRUISER\000"
.LASF258:
	.ascii	"SPR_SBOX\000"
.LASF1187:
	.ascii	"S_ROCK\000"
.LASF2222:
	.ascii	"bgflat30\000"
.LASF1822:
	.ascii	"buff\000"
.LASF1601:
	.ascii	"mus_e3m2\000"
.LASF1527:
	.ascii	"xdeathstate\000"
.LASF1603:
	.ascii	"mus_e3m4\000"
.LASF904:
	.ascii	"S_SKULL_ATK1\000"
.LASF905:
	.ascii	"S_SKULL_ATK2\000"
.LASF906:
	.ascii	"S_SKULL_ATK3\000"
.LASF907:
	.ascii	"S_SKULL_ATK4\000"
.LASF885:
	.ascii	"S_BOS2_PAIN2\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF1378:
	.ascii	"MT_KNIGHT\000"
.LASF2084:
	.ascii	"s_PHUSTR_15\000"
.LASF1559:
	.ascii	"comp_zerotags\000"
.LASF2:
	.ascii	"signed char\000"
.LASF1534:
	.ascii	"activesound\000"
.LASF536:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1304:
	.ascii	"S_DOGS_DIE3\000"
.LASF2188:
	.ascii	"s_P3TEXT\000"
.LASF1860:
	.ascii	"fileout\000"
.LASF1733:
	.ascii	"sfx_punch\000"
.LASF700:
	.ascii	"S_FATT_ATK10\000"
.LASF295:
	.ascii	"SPR_TGRN\000"
.LASF1577:
	.ascii	"usefulness\000"
.LASF1423:
	.ascii	"MT_MEGA\000"
.LASF197:
	.ascii	"SPR_BFE1\000"
.LASF198:
	.ascii	"SPR_BFE2\000"
.LASF1455:
	.ascii	"MT_MISC44\000"
.LASF2256:
	.ascii	"s_STSTR_COMPON\000"
.LASF2252:
	.ascii	"pars\000"
.LASF1810:
	.ascii	"DEHFILE\000"
.LASF1457:
	.ascii	"MT_MISC46\000"
.LASF1649:
	.ascii	"NUMMUSIC\000"
.LASF1385:
	.ascii	"MT_KEEN\000"
.LASF2070:
	.ascii	"s_PHUSTR_1\000"
.LASF2071:
	.ascii	"s_PHUSTR_2\000"
.LASF2072:
	.ascii	"s_PHUSTR_3\000"
.LASF2073:
	.ascii	"s_PHUSTR_4\000"
.LASF1966:
	.ascii	"s_GOTMAP\000"
.LASF2075:
	.ascii	"s_PHUSTR_6\000"
.LASF2076:
	.ascii	"s_PHUSTR_7\000"
.LASF152:
	.ascii	"ammotype_t\000"
.LASF2078:
	.ascii	"s_PHUSTR_9\000"
.LASF757:
	.ascii	"S_TROO_STND\000"
.LASF704:
	.ascii	"S_FATT_DIE2\000"
.LASF395:
	.ascii	"S_PLASMAFLASH2\000"
.LASF1918:
	.ascii	"mobjinfo\000"
.LASF1580:
	.ascii	"musicinfo_t\000"
.LASF79:
	.ascii	"_freelist\000"
.LASF449:
	.ascii	"S_TFOG3\000"
.LASF450:
	.ascii	"S_TFOG4\000"
.LASF451:
	.ascii	"S_TFOG5\000"
.LASF452:
	.ascii	"S_TFOG6\000"
.LASF453:
	.ascii	"S_TFOG7\000"
.LASF454:
	.ascii	"S_TFOG8\000"
.LASF455:
	.ascii	"S_TFOG9\000"
.LASF870:
	.ascii	"S_BOSS_RAISE7\000"
.LASF173:
	.ascii	"SPR_TROO\000"
.LASF1282:
	.ascii	"S_TNT1\000"
.LASF1813:
	.ascii	"orig\000"
.LASF184:
	.ascii	"SPR_SAWG\000"
.LASF1634:
	.ascii	"mus_count2\000"
.LASF1691:
	.ascii	"sfx_sgtsit\000"
.LASF1863:
	.ascii	"file_or_lump\000"
.LASF1829:
	.ascii	"usedlen\000"
.LASF233:
	.ascii	"SPR_BON1\000"
.LASF234:
	.ascii	"SPR_BON2\000"
.LASF60:
	.ascii	"_offset\000"
.LASF1821:
	.ascii	"string\000"
.LASF130:
	.ascii	"it_redcard\000"
.LASF1917:
	.ascii	"sprnames\000"
.LASF1224:
	.ascii	"S_TALLREDCOL\000"
.LASF1549:
	.ascii	"comp_god\000"
.LASF1880:
	.ascii	"deh_procBexSprites\000"
.LASF1199:
	.ascii	"S_SHOT\000"
.LASF1055:
	.ascii	"S_SSWV_ATK5\000"
.LASF1204:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF1205:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1206:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF1968:
	.ascii	"s_GOTMSPHERE\000"
.LASF639:
	.ascii	"S_SKEL_RUN2\000"
.LASF946:
	.ascii	"S_SPID_DIE11\000"
.LASF45:
	.ascii	"__sbuf\000"
.LASF1616:
	.ascii	"mus_countd\000"
.LASF1944:
	.ascii	"s_GAMMALVL2\000"
.LASF106:
	.ascii	"_l64a_buf\000"
.LASF1610:
	.ascii	"mus_intro\000"
.LASF669:
	.ascii	"S_SKEL_RAISE4\000"
.LASF1653:
	.ascii	"sfx_sgcock\000"
.LASF290:
	.ascii	"SPR_ELEC\000"
.LASF2125:
	.ascii	"s_THUSTR_24\000"
.LASF1093:
	.ascii	"S_BRAIN\000"
.LASF1811:
	.ascii	"ppstr\000"
.LASF1326:
	.ascii	"S_PLS2BALLX1\000"
.LASF1327:
	.ascii	"S_PLS2BALLX2\000"
.LASF2129:
	.ascii	"s_THUSTR_28\000"
.LASF1328:
	.ascii	"S_PLS2BALLX3\000"
.LASF2130:
	.ascii	"s_THUSTR_29\000"
.LASF2174:
	.ascii	"s_STSTR_CHOPPERS\000"
.LASF1380:
	.ascii	"MT_SPIDER\000"
.LASF1176:
	.ascii	"S_SUIT\000"
.LASF1997:
	.ascii	"s_PD_ANY\000"
.LASF188:
	.ascii	"SPR_BFGF\000"
.LASF187:
	.ascii	"SPR_BFGG\000"
.LASF1980:
	.ascii	"s_GOTCHAINSAW\000"
.LASF1016:
	.ascii	"S_PAIN_STND\000"
.LASF2047:
	.ascii	"s_HUSTR_10\000"
.LASF1693:
	.ascii	"sfx_brssit\000"
.LASF2049:
	.ascii	"s_HUSTR_12\000"
.LASF2050:
	.ascii	"s_HUSTR_13\000"
.LASF2051:
	.ascii	"s_HUSTR_14\000"
.LASF2052:
	.ascii	"s_HUSTR_15\000"
.LASF432:
	.ascii	"S_BFGLAND\000"
.LASF1122:
	.ascii	"S_BAR2\000"
.LASF1289:
	.ascii	"S_DOGS_RUN1\000"
.LASF2056:
	.ascii	"s_HUSTR_19\000"
.LASF1290:
	.ascii	"S_DOGS_RUN2\000"
.LASF1922:
	.ascii	"s_PRESSKEY\000"
.LASF1291:
	.ascii	"S_DOGS_RUN3\000"
.LASF98:
	.ascii	"_asctime_buf\000"
.LASF1292:
	.ascii	"S_DOGS_RUN4\000"
.LASF1293:
	.ascii	"S_DOGS_RUN5\000"
.LASF1294:
	.ascii	"S_DOGS_RUN6\000"
.LASF1736:
	.ascii	"sfx_chgun\000"
.LASF1890:
	.ascii	"deh_procPointer\000"
.LASF147:
	.ascii	"am_shell\000"
.LASF14:
	.ascii	"__wch\000"
.LASF113:
	.ascii	"_wcsrtombs_state\000"
.LASF2263:
	.ascii	"deh_spritenames\000"
.LASF1569:
	.ascii	"sfxinfo_struct\000"
.LASF712:
	.ascii	"S_FATT_DIE10\000"
.LASF493:
	.ascii	"S_POSS_RUN3\000"
.LASF134:
	.ascii	"NUMCARDS\000"
.LASF1249:
	.ascii	"S_REDTORCH\000"
.LASF1632:
	.ascii	"mus_shawn2\000"
.LASF1396:
	.ascii	"MT_BFG\000"
.LASF1704:
	.ascii	"sfx_vilatk\000"
.LASF204:
	.ascii	"SPR_VILE\000"
.LASF1739:
	.ascii	"sfx_bdcls\000"
.LASF120:
	.ascii	"PU_STATIC\000"
.LASF1399:
	.ascii	"MT_BLOOD\000"
.LASF10:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF325:
	.ascii	"S_PISTOL\000"
.LASF2060:
	.ascii	"s_HUSTR_23\000"
.LASF2061:
	.ascii	"s_HUSTR_24\000"
.LASF2062:
	.ascii	"s_HUSTR_25\000"
.LASF2063:
	.ascii	"s_HUSTR_26\000"
.LASF2064:
	.ascii	"s_HUSTR_27\000"
.LASF2065:
	.ascii	"s_HUSTR_28\000"
.LASF1834:
	.ascii	"S_music_state\000"
.LASF557:
	.ascii	"S_VILE_STND2\000"
.LASF1961:
	.ascii	"s_GOTREDSKULL\000"
.LASF975:
	.ascii	"S_BSPI_RAISE1\000"
.LASF976:
	.ascii	"S_BSPI_RAISE2\000"
.LASF977:
	.ascii	"S_BSPI_RAISE3\000"
.LASF978:
	.ascii	"S_BSPI_RAISE4\000"
.LASF979:
	.ascii	"S_BSPI_RAISE5\000"
.LASF980:
	.ascii	"S_BSPI_RAISE6\000"
.LASF981:
	.ascii	"S_BSPI_RAISE7\000"
.LASF6:
	.ascii	"long int\000"
.LASF1064:
	.ascii	"S_SSWV_XDIE1\000"
.LASF1065:
	.ascii	"S_SSWV_XDIE2\000"
.LASF1066:
	.ascii	"S_SSWV_XDIE3\000"
.LASF1067:
	.ascii	"S_SSWV_XDIE4\000"
.LASF1068:
	.ascii	"S_SSWV_XDIE5\000"
.LASF1069:
	.ascii	"S_SSWV_XDIE6\000"
.LASF1070:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1071:
	.ascii	"S_SSWV_XDIE8\000"
.LASF1072:
	.ascii	"S_SSWV_XDIE9\000"
.LASF362:
	.ascii	"S_DSGUNFLASH1\000"
.LASF363:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1430:
	.ascii	"MT_MISC22\000"
.LASF620:
	.ascii	"S_FIRE25\000"
.LASF714:
	.ascii	"S_FATT_RAISE2\000"
.LASF1466:
	.ascii	"MT_MISC55\000"
.LASF1920:
	.ascii	"s_D_DEVSTR\000"
.LASF105:
	.ascii	"_wctomb_state\000"
.LASF2201:
	.ascii	"s_CC_IMP\000"
.LASF132:
	.ascii	"it_yellowskull\000"
.LASF1573:
	.ascii	"link\000"
.LASF1152:
	.ascii	"S_RSKULL2\000"
.LASF125:
	.ascii	"PU_CACHE\000"
.LASF2192:
	.ascii	"s_T1TEXT\000"
.LASF927:
	.ascii	"S_SPID_RUN10\000"
.LASF928:
	.ascii	"S_SPID_RUN11\000"
.LASF929:
	.ascii	"S_SPID_RUN12\000"
.LASF1865:
	.ascii	"oldnotext\000"
.LASF2280:
	.ascii	"strcpy\000"
.LASF2067:
	.ascii	"s_HUSTR_30\000"
.LASF2068:
	.ascii	"s_HUSTR_31\000"
.LASF2069:
	.ascii	"s_HUSTR_32\000"
.LASF1683:
	.ascii	"sfx_wpnup\000"
.LASF1761:
	.ascii	"sfx_dgact\000"
.LASF1962:
	.ascii	"s_GOTINVUL\000"
.LASF2264:
	.ascii	"deh_musicnames\000"
.LASF1947:
	.ascii	"s_EMPTYSTRING\000"
.LASF1536:
	.ascii	"raisestate\000"
.LASF1499:
	.ascii	"MT_PULL\000"
.LASF1336:
	.ascii	"S_BSKUL_ATK1\000"
.LASF378:
	.ascii	"S_MISSILEFLASH1\000"
.LASF379:
	.ascii	"S_MISSILEFLASH2\000"
.LASF380:
	.ascii	"S_MISSILEFLASH3\000"
.LASF381:
	.ascii	"S_MISSILEFLASH4\000"
.LASF2149:
	.ascii	"s_HUSTR_MESSAGESENT\000"
.LASF91:
	.ascii	"_iobs\000"
.LASF239:
	.ascii	"SPR_RSKU\000"
.LASF71:
	.ascii	"_emergency\000"
.LASF1566:
	.ascii	"COMP_NUM\000"
.LASF2089:
	.ascii	"s_PHUSTR_20\000"
.LASF1703:
	.ascii	"sfx_skepch\000"
.LASF1656:
	.ascii	"sfx_dbcls\000"
.LASF738:
	.ascii	"S_CPOS_DIE2\000"
.LASF739:
	.ascii	"S_CPOS_DIE3\000"
.LASF1781:
	.ascii	"source_auto_load\000"
.LASF740:
	.ascii	"S_CPOS_DIE4\000"
.LASF741:
	.ascii	"S_CPOS_DIE5\000"
.LASF742:
	.ascii	"S_CPOS_DIE6\000"
.LASF115:
	.ascii	"_nextf\000"
.LASF743:
	.ascii	"S_CPOS_DIE7\000"
.LASF207:
	.ascii	"SPR_FBXP\000"
.LASF101:
	.ascii	"_rand_next\000"
.LASF1618:
	.ascii	"mus_doom\000"
.LASF1839:
	.ascii	"getConvertedDEHBits\000"
.LASF1878:
	.ascii	"rover\000"
.LASF1831:
	.ascii	"line2\000"
.LASF1184:
	.ascii	"S_PVIS2\000"
.LASF1391:
	.ascii	"MT_BARREL\000"
.LASF1349:
	.ascii	"S_BSKUL_DIE8\000"
.LASF916:
	.ascii	"S_SPID_STND\000"
.LASF1789:
	.ascii	"ns_flats\000"
.LASF688:
	.ascii	"S_FATT_RUN10\000"
.LASF689:
	.ascii	"S_FATT_RUN11\000"
.LASF690:
	.ascii	"S_FATT_RUN12\000"
.LASF1807:
	.ascii	"LO_ALWAYS\000"
.LASF1383:
	.ascii	"MT_PAIN\000"
.LASF1264:
	.ascii	"S_RTORCHSHRT4\000"
.LASF2103:
	.ascii	"s_THUSTR_2\000"
.LASF533:
	.ascii	"S_SPOS_ATK2\000"
.LASF1537:
	.ascii	"mobjinfo_t\000"
.LASF1243:
	.ascii	"S_BLUETORCH3\000"
.LASF2107:
	.ascii	"s_THUSTR_6\000"
.LASF23:
	.ascii	"_maxwds\000"
.LASF299:
	.ascii	"SPR_SMRT\000"
.LASF1975:
	.ascii	"s_GOTSHELLS\000"
.LASF403:
	.ascii	"S_BFGFLASH1\000"
.LASF404:
	.ascii	"S_BFGFLASH2\000"
.LASF1575:
	.ascii	"volume\000"
.LASF937:
	.ascii	"S_SPID_DIE2\000"
.LASF216:
	.ascii	"SPR_BOS2\000"
.LASF940:
	.ascii	"S_SPID_DIE5\000"
.LASF941:
	.ascii	"S_SPID_DIE6\000"
.LASF1746:
	.ascii	"sfx_bossit\000"
.LASF942:
	.ascii	"S_SPID_DIE7\000"
.LASF1826:
	.ascii	"inbuffer\000"
.LASF943:
	.ascii	"S_SPID_DIE8\000"
.LASF2294:
	.ascii	"strtok\000"
.LASF1233:
	.ascii	"S_EVILEYE2\000"
.LASF1234:
	.ascii	"S_EVILEYE3\000"
.LASF1235:
	.ascii	"S_EVILEYE4\000"
.LASF408:
	.ascii	"S_PUFF1\000"
.LASF409:
	.ascii	"S_PUFF2\000"
.LASF410:
	.ascii	"S_PUFF3\000"
.LASF227:
	.ascii	"SPR_BOSF\000"
.LASF1964:
	.ascii	"s_GOTINVIS\000"
.LASF1563:
	.ascii	"comp_666\000"
.LASF215:
	.ascii	"SPR_BOSS\000"
.LASF2234:
	.ascii	"god_health\000"
.LASF1798:
	.ascii	"position\000"
.LASF1395:
	.ascii	"MT_PLASMA\000"
.LASF1758:
	.ascii	"sfx_radio\000"
.LASF962:
	.ascii	"S_BSPI_ATK1\000"
.LASF963:
	.ascii	"S_BSPI_ATK2\000"
.LASF964:
	.ascii	"S_BSPI_ATK3\000"
.LASF965:
	.ascii	"S_BSPI_ATK4\000"
.LASF1144:
	.ascii	"S_BKEY2\000"
.LASF144:
	.ascii	"NUMWEAPONS\000"
.LASF1301:
	.ascii	"S_DOGS_PAIN2\000"
.LASF2211:
	.ascii	"s_CC_ARCH\000"
.LASF1644:
	.ascii	"mus_evil\000"
.LASF949:
	.ascii	"S_BSPI_SIGHT\000"
.LASF1675:
	.ascii	"sfx_plpain\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF1095:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1096:
	.ascii	"S_BRAIN_DIE2\000"
.LASF1097:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1098:
	.ascii	"S_BRAIN_DIE4\000"
.LASF430:
	.ascii	"S_BFGSHOT\000"
.LASF1236:
	.ascii	"S_FLOATSKULL\000"
.LASF1971:
	.ascii	"s_GOTROCKET\000"
.LASF1981:
	.ascii	"s_GOTLAUNCHER\000"
.LASF586:
	.ascii	"S_VILE_DIE1\000"
.LASF587:
	.ascii	"S_VILE_DIE2\000"
.LASF588:
	.ascii	"S_VILE_DIE3\000"
.LASF589:
	.ascii	"S_VILE_DIE4\000"
.LASF590:
	.ascii	"S_VILE_DIE5\000"
.LASF591:
	.ascii	"S_VILE_DIE6\000"
.LASF592:
	.ascii	"S_VILE_DIE7\000"
.LASF593:
	.ascii	"S_VILE_DIE8\000"
.LASF594:
	.ascii	"S_VILE_DIE9\000"
.LASF1840:
	.ascii	"bits\000"
.LASF1555:
	.ascii	"comp_staylift\000"
.LASF268:
	.ascii	"SPR_SMT2\000"
.LASF1146:
	.ascii	"S_RKEY2\000"
.LASF1117:
	.ascii	"S_ARM1\000"
.LASF1119:
	.ascii	"S_ARM2\000"
.LASF1305:
	.ascii	"S_DOGS_DIE4\000"
.LASF1306:
	.ascii	"S_DOGS_DIE5\000"
.LASF1212:
	.ascii	"S_HEADCANDLES\000"
.LASF246:
	.ascii	"SPR_PINS\000"
.LASF842:
	.ascii	"S_BOSS_STND\000"
.LASF1727:
	.ascii	"sfx_dmact\000"
.LASF1816:
	.ascii	"deh_block\000"
.LASF822:
	.ascii	"S_HEAD_PAIN\000"
.LASF129:
	.ascii	"it_yellowcard\000"
.LASF2189:
	.ascii	"s_P4TEXT\000"
.LASF1572:
	.ascii	"priority\000"
.LASF56:
	.ascii	"_close\000"
.LASF1367:
	.ascii	"MT_TRACER\000"
.LASF703:
	.ascii	"S_FATT_DIE1\000"
.LASF87:
	.ascii	"char\000"
.LASF705:
	.ascii	"S_FATT_DIE3\000"
.LASF706:
	.ascii	"S_FATT_DIE4\000"
.LASF707:
	.ascii	"S_FATT_DIE5\000"
.LASF708:
	.ascii	"S_FATT_DIE6\000"
.LASF709:
	.ascii	"S_FATT_DIE7\000"
.LASF710:
	.ascii	"S_FATT_DIE8\000"
.LASF711:
	.ascii	"S_FATT_DIE9\000"
.LASF778:
	.ascii	"S_TROO_XDIE2\000"
.LASF779:
	.ascii	"S_TROO_XDIE3\000"
.LASF89:
	.ascii	"_glue\000"
.LASF781:
	.ascii	"S_TROO_XDIE5\000"
.LASF782:
	.ascii	"S_TROO_XDIE6\000"
.LASF783:
	.ascii	"S_TROO_XDIE7\000"
.LASF784:
	.ascii	"S_TROO_XDIE8\000"
.LASF2235:
	.ascii	"idfa_armor\000"
.LASF251:
	.ascii	"SPR_CLIP\000"
.LASF1705:
	.ascii	"sfx_claw\000"
.LASF1225:
	.ascii	"S_SHRTREDCOL\000"
.LASF1783:
	.ascii	"source_lmp\000"
.LASF1913:
	.ascii	"__ctype_ptr__\000"
.LASF1268:
	.ascii	"S_HANGTSKULL\000"
.LASF1861:
	.ascii	"infile\000"
.LASF1769:
	.ascii	"not_menu\000"
.LASF2277:
	.ascii	"__builtin_fwrite\000"
.LASF1936:
	.ascii	"s_MSGON\000"
.LASF2238:
	.ascii	"idkfa_armor_class\000"
.LASF1285:
	.ascii	"S_DETONATE2\000"
.LASF1286:
	.ascii	"S_DETONATE3\000"
.LASF159:
	.ascii	"NUMPOWERS\000"
.LASF2031:
	.ascii	"s_HUSTR_E4M3\000"
.LASF1872:
	.ascii	"deh_GetData\000"
.LASF1053:
	.ascii	"S_SSWV_ATK3\000"
.LASF1054:
	.ascii	"S_SSWV_ATK4\000"
.LASF359:
	.ascii	"S_DSGUN10\000"
.LASF1715:
	.ascii	"sfx_cacdth\000"
.LASF154:
	.ascii	"pw_strength\000"
.LASF2298:
	.ascii	"dehfgets\000"
.LASF285:
	.ascii	"SPR_CAND\000"
.LASF26:
	.ascii	"_Bigint\000"
.LASF1672:
	.ascii	"sfx_stnmov\000"
.LASF2128:
	.ascii	"s_THUSTR_27\000"
.LASF1373:
	.ascii	"MT_SERGEANT\000"
.LASF1667:
	.ascii	"sfx_firxpl\000"
.LASF1215:
	.ascii	"S_LIVESTICK\000"
.LASF2230:
	.ascii	"startup5\000"
.LASF2154:
	.ascii	"s_AMSTR_FOLLOWON\000"
.LASF1155:
	.ascii	"S_STIM\000"
.LASF2086:
	.ascii	"s_PHUSTR_17\000"
.LASF1552:
	.ascii	"comp_skymap\000"
.LASF2088:
	.ascii	"s_PHUSTR_19\000"
.LASF148:
	.ascii	"am_cell\000"
.LASF128:
	.ascii	"it_bluecard\000"
.LASF2169:
	.ascii	"s_STSTR_FAADDED\000"
.LASF818:
	.ascii	"S_HEAD_RUN1\000"
.LASF1938:
	.ascii	"s_ENDGAME\000"
.LASF473:
	.ascii	"S_PLAY_DIE1\000"
.LASF474:
	.ascii	"S_PLAY_DIE2\000"
.LASF475:
	.ascii	"S_PLAY_DIE3\000"
.LASF476:
	.ascii	"S_PLAY_DIE4\000"
.LASF477:
	.ascii	"S_PLAY_DIE5\000"
.LASF478:
	.ascii	"S_PLAY_DIE6\000"
.LASF479:
	.ascii	"S_PLAY_DIE7\000"
.LASF1953:
	.ascii	"s_GOTMEDINEED\000"
.LASF83:
	.ascii	"_atexit0\000"
.LASF1315:
	.ascii	"S_OLDBFG42\000"
.LASF1316:
	.ascii	"S_OLDBFG43\000"
.LASF445:
	.ascii	"S_TFOG\000"
.LASF1451:
	.ascii	"MT_MISC40\000"
.LASF1452:
	.ascii	"MT_MISC41\000"
.LASF2271:
	.ascii	"strlen\000"
.LASF805:
	.ascii	"S_SARG_DIE1\000"
.LASF1907:
	.ascii	"deh_ammo\000"
.LASF806:
	.ascii	"S_SARG_DIE2\000"
.LASF807:
	.ascii	"S_SARG_DIE3\000"
.LASF808:
	.ascii	"S_SARG_DIE4\000"
.LASF1106:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1107:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1108:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1109:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1110:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1111:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1112:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1113:
	.ascii	"S_SPAWNFIRE8\000"
.LASF777:
	.ascii	"S_TROO_XDIE1\000"
.LASF2159:
	.ascii	"s_AMSTR_MARKSCLEARED\000"
.LASF780:
	.ascii	"S_TROO_XDIE4\000"
.LASF1874:
	.ascii	"buffer\000"
.LASF1270:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF108:
	.ascii	"_getdate_err\000"
.LASF425:
	.ascii	"S_PLASEXP2\000"
.LASF426:
	.ascii	"S_PLASEXP3\000"
.LASF427:
	.ascii	"S_PLASEXP4\000"
.LASF428:
	.ascii	"S_PLASEXP5\000"
.LASF141:
	.ascii	"wp_bfg\000"
.LASF1254:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1255:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1256:
	.ascii	"S_BTORCHSHRT4\000"
.LASF1722:
	.ascii	"sfx_kntdth\000"
.LASF558:
	.ascii	"S_VILE_RUN1\000"
.LASF348:
	.ascii	"S_DSGUNDOWN\000"
.LASF560:
	.ascii	"S_VILE_RUN3\000"
.LASF561:
	.ascii	"S_VILE_RUN4\000"
.LASF562:
	.ascii	"S_VILE_RUN5\000"
.LASF563:
	.ascii	"S_VILE_RUN6\000"
.LASF564:
	.ascii	"S_VILE_RUN7\000"
.LASF565:
	.ascii	"S_VILE_RUN8\000"
.LASF566:
	.ascii	"S_VILE_RUN9\000"
.LASF809:
	.ascii	"S_SARG_DIE5\000"
.LASF810:
	.ascii	"S_SARG_DIE6\000"
.LASF2153:
	.ascii	"s_HUSTR_PLRRED\000"
.LASF1714:
	.ascii	"sfx_sgtdth\000"
.LASF1744:
	.ascii	"sfx_bospit\000"
.LASF1347:
	.ascii	"S_BSKUL_DIE6\000"
.LASF650:
	.ascii	"S_SKEL_FIST1\000"
.LASF651:
	.ascii	"S_SKEL_FIST2\000"
.LASF652:
	.ascii	"S_SKEL_FIST3\000"
.LASF653:
	.ascii	"S_SKEL_FIST4\000"
.LASF389:
	.ascii	"S_PLASMA\000"
.LASF1168:
	.ascii	"S_PINS\000"
.LASF1295:
	.ascii	"S_DOGS_RUN7\000"
.LASF1296:
	.ascii	"S_DOGS_RUN8\000"
.LASF1209:
	.ascii	"S_HEADSONSTICK\000"
.LASF1325:
	.ascii	"S_PLS2BALL2\000"
.LASF1679:
	.ascii	"sfx_mnpain\000"
.LASF2163:
	.ascii	"s_AMSTR_OVERLAYOFF\000"
.LASF1241:
	.ascii	"S_BLUETORCH\000"
.LASF1793:
	.ascii	"size\000"
.LASF679:
	.ascii	"S_FATT_RUN1\000"
.LASF680:
	.ascii	"S_FATT_RUN2\000"
.LASF681:
	.ascii	"S_FATT_RUN3\000"
.LASF682:
	.ascii	"S_FATT_RUN4\000"
.LASF156:
	.ascii	"pw_ironfeet\000"
.LASF684:
	.ascii	"S_FATT_RUN6\000"
.LASF685:
	.ascii	"S_FATT_RUN7\000"
.LASF686:
	.ascii	"S_FATT_RUN8\000"
.LASF1217:
	.ascii	"S_MEAT2\000"
.LASF1218:
	.ascii	"S_MEAT3\000"
.LASF1219:
	.ascii	"S_MEAT4\000"
.LASF1220:
	.ascii	"S_MEAT5\000"
.LASF59:
	.ascii	"_blksize\000"
.LASF332:
	.ascii	"S_PISTOLFLASH\000"
.LASF552:
	.ascii	"S_SPOS_RAISE2\000"
.LASF553:
	.ascii	"S_SPOS_RAISE3\000"
.LASF554:
	.ascii	"S_SPOS_RAISE4\000"
.LASF555:
	.ascii	"S_SPOS_RAISE5\000"
.LASF57:
	.ascii	"_ubuf\000"
.LASF242:
	.ascii	"SPR_MEDI\000"
.LASF1571:
	.ascii	"singularity\000"
.LASF2206:
	.ascii	"s_CC_BARON\000"
.LASF244:
	.ascii	"SPR_PINV\000"
.LASF1689:
	.ascii	"sfx_bgsit1\000"
.LASF1690:
	.ascii	"sfx_bgsit2\000"
.LASF1724:
	.ascii	"sfx_skedth\000"
.LASF2136:
	.ascii	"s_HUSTR_CHATMACRO3\000"
.LASF103:
	.ascii	"_mblen_state\000"
.LASF85:
	.ascii	"__sglue\000"
.LASF1949:
	.ascii	"s_GOTMEGA\000"
.LASF1318:
	.ascii	"S_PLS1BALL2\000"
.LASF1314:
	.ascii	"S_OLDBFG1\000"
.LASF2102:
	.ascii	"s_THUSTR_1\000"
.LASF1979:
	.ascii	"s_GOTCHAINGUN\000"
.LASF2177:
	.ascii	"s_E2TEXT\000"
.LASF584:
	.ascii	"S_VILE_PAIN\000"
.LASF75:
	.ascii	"__cleanup\000"
.LASF2011:
	.ascii	"s_HUSTR_E2M1\000"
.LASF631:
	.ascii	"S_TRACER\000"
.LASF1510:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF1543:
	.ascii	"comp_vile\000"
.LASF1820:
	.ascii	"deh_bexptr\000"
.LASF2016:
	.ascii	"s_HUSTR_E2M6\000"
.LASF1887:
	.ascii	"deh_procWeapon\000"
.LASF1770:
	.ascii	"not_deh\000"
.LASF1051:
	.ascii	"S_SSWV_ATK1\000"
.LASF1052:
	.ascii	"S_SSWV_ATK2\000"
.LASF581:
	.ascii	"S_VILE_HEAL1\000"
.LASF582:
	.ascii	"S_VILE_HEAL2\000"
.LASF583:
	.ascii	"S_VILE_HEAL3\000"
.LASF1056:
	.ascii	"S_SSWV_ATK6\000"
.LASF1740:
	.ascii	"sfx_itmbk\000"
.LASF2110:
	.ascii	"s_THUSTR_9\000"
.LASF236:
	.ascii	"SPR_RKEY\000"
.LASF1696:
	.ascii	"sfx_bspsit\000"
.LASF1202:
	.ascii	"S_STALAG\000"
.LASF522:
	.ascii	"S_SPOS_STND\000"
.LASF2172:
	.ascii	"s_STSTR_BEHOLD\000"
.LASF1567:
	.ascii	"COMP_TOTAL\000"
.LASF2292:
	.ascii	"Z_Malloc\000"
.LASF12:
	.ascii	"_fpos_t\000"
.LASF917:
	.ascii	"S_SPID_STND2\000"
.LASF50:
	.ascii	"_file\000"
.LASF1464:
	.ascii	"MT_MISC53\000"
.LASF1622:
	.ascii	"mus_in_cit\000"
.LASF1802:
	.ascii	"LO_CONFIRM\000"
.LASF1203:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1272:
	.ascii	"S_SMALLPOOL\000"
.LASF1819:
	.ascii	"cptr\000"
.LASF1933:
	.ascii	"s_LOADING\000"
.LASF1467:
	.ascii	"MT_MISC56\000"
.LASF701:
	.ascii	"S_FATT_PAIN\000"
.LASF1895:
	.ascii	"keyIndex\000"
.LASF48:
	.ascii	"__sFILE\000"
.LASF465:
	.ascii	"S_PLAY_RUN1\000"
.LASF466:
	.ascii	"S_PLAY_RUN2\000"
.LASF467:
	.ascii	"S_PLAY_RUN3\000"
.LASF468:
	.ascii	"S_PLAY_RUN4\000"
.LASF1193:
	.ascii	"S_BPAK\000"
.LASF44:
	.ascii	"_fns\000"
.LASF1855:
	.ascii	"oldpar\000"
.LASF1150:
	.ascii	"S_BSKULL2\000"
.LASF2240:
	.ascii	"initial_bullets\000"
.LASF190:
	.ascii	"SPR_PUFF\000"
.LASF1079:
	.ascii	"S_COMMKEEN\000"
.LASF1668:
	.ascii	"sfx_pstart\000"
.LASF1851:
	.ascii	"indexnum\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF114:
	.ascii	"_h_errno\000"
.LASF1506:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF871:
	.ascii	"S_BOS2_STND\000"
.LASF196:
	.ascii	"SPR_BFS1\000"
.LASF1102:
	.ascii	"S_SPAWN1\000"
.LASF1103:
	.ascii	"S_SPAWN2\000"
.LASF1104:
	.ascii	"S_SPAWN3\000"
.LASF1105:
	.ascii	"S_SPAWN4\000"
.LASF1251:
	.ascii	"S_REDTORCH3\000"
.LASF1276:
	.ascii	"S_TECHLAMP3\000"
.LASF142:
	.ascii	"wp_chainsaw\000"
.LASF1381:
	.ascii	"MT_BABY\000"
.LASF2250:
	.ascii	"maxammo\000"
.LASF1024:
	.ascii	"S_PAIN_ATK2\000"
.LASF1420:
	.ascii	"MT_MISC14\000"
.LASF1216:
	.ascii	"S_LIVESTICK2\000"
.LASF2034:
	.ascii	"s_HUSTR_E4M6\000"
.LASF2249:
	.ascii	"monsters_infight\000"
.LASF1858:
	.ascii	"filename\000"
.LASF1261:
	.ascii	"S_RTORCHSHRT\000"
.LASF2036:
	.ascii	"s_HUSTR_E4M8\000"
.LASF1427:
	.ascii	"MT_MISC19\000"
.LASF218:
	.ascii	"SPR_SPID\000"
.LASF817:
	.ascii	"S_HEAD_STND\000"
.LASF792:
	.ascii	"S_SARG_RUN1\000"
.LASF793:
	.ascii	"S_SARG_RUN2\000"
.LASF794:
	.ascii	"S_SARG_RUN3\000"
.LASF795:
	.ascii	"S_SARG_RUN4\000"
.LASF796:
	.ascii	"S_SARG_RUN5\000"
.LASF797:
	.ascii	"S_SARG_RUN6\000"
.LASF798:
	.ascii	"S_SARG_RUN7\000"
.LASF799:
	.ascii	"S_SARG_RUN8\000"
.LASF1405:
	.ascii	"MT_MISC1\000"
.LASF1406:
	.ascii	"MT_MISC2\000"
.LASF1407:
	.ascii	"MT_MISC3\000"
.LASF1408:
	.ascii	"MT_MISC4\000"
.LASF1409:
	.ascii	"MT_MISC5\000"
.LASF1410:
	.ascii	"MT_MISC6\000"
.LASF1411:
	.ascii	"MT_MISC7\000"
.LASF1412:
	.ascii	"MT_MISC8\000"
.LASF1413:
	.ascii	"MT_MISC9\000"
.LASF382:
	.ascii	"S_SAW\000"
.LASF1982:
	.ascii	"s_GOTPLASMA\000"
.LASF247:
	.ascii	"SPR_MEGA\000"
.LASF471:
	.ascii	"S_PLAY_PAIN\000"
.LASF1776:
	.ascii	"func\000"
.LASF18:
	.ascii	"__value\000"
.LASF423:
	.ascii	"S_PLASBALL2\000"
.LASF2281:
	.ascii	"strlwr\000"
.LASF1539:
	.ascii	"ps_flash\000"
.LASF41:
	.ascii	"_is_cxa\000"
.LASF225:
	.ascii	"SPR_KEEN\000"
.LASF1759:
	.ascii	"sfx_dgsit\000"
.LASF1057:
	.ascii	"S_SSWV_PAIN\000"
.LASF1521:
	.ascii	"painstate\000"
.LASF1856:
	.ascii	"deh_procSprite\000"
.LASF2151:
	.ascii	"s_HUSTR_PLRINDIGO\000"
.LASF1092:
	.ascii	"S_KEENPAIN2\000"
.LASF158:
	.ascii	"pw_infrared\000"
.LASF579:
	.ascii	"S_VILE_ATK10\000"
.LASF580:
	.ascii	"S_VILE_ATK11\000"
.LASF78:
	.ascii	"_p5s\000"
.LASF2202:
	.ascii	"s_CC_DEMON\000"
.LASF1558:
	.ascii	"comp_infcheat\000"
.LASF1509:
	.ascii	"MT_STEALTHFATSO\000"
.LASF1058:
	.ascii	"S_SSWV_PAIN2\000"
.LASF1491:
	.ascii	"MT_MISC80\000"
.LASF1528:
	.ascii	"deathsound\000"
.LASF1132:
	.ascii	"S_BON1A\000"
.LASF1133:
	.ascii	"S_BON1B\000"
.LASF1134:
	.ascii	"S_BON1C\000"
.LASF1135:
	.ascii	"S_BON1D\000"
.LASF1136:
	.ascii	"S_BON1E\000"
.LASF2171:
	.ascii	"s_STSTR_NCOFF\000"
.LASF1561:
	.ascii	"comp_respawn\000"
.LASF245:
	.ascii	"SPR_PSTR\000"
.LASF448:
	.ascii	"S_TFOG2\000"
.LASF1681:
	.ascii	"sfx_slop\000"
.LASF1429:
	.ascii	"MT_MISC21\000"
.LASF1885:
	.ascii	"deh_procMisc\000"
.LASF803:
	.ascii	"S_SARG_PAIN\000"
.LASF1424:
	.ascii	"MT_CLIP\000"
.LASF2261:
	.ascii	"mapnamesp\000"
.LASF1877:
	.ascii	"candidate\000"
.LASF260:
	.ascii	"SPR_BFUG\000"
.LASF1479:
	.ascii	"MT_MISC68\000"
.LASF1837:
	.ascii	"ptr_lstrip\000"
.LASF1128:
	.ascii	"S_BBAR1\000"
.LASF1129:
	.ascii	"S_BBAR2\000"
.LASF1130:
	.ascii	"S_BBAR3\000"
.LASF316:
	.ascii	"S_LIGHTDONE\000"
.LASF1919:
	.ascii	"HelperThing\000"
.LASF1779:
	.ascii	"source_iwad\000"
.LASF967:
	.ascii	"S_BSPI_PAIN2\000"
.LASF1560:
	.ascii	"comp_moveblock\000"
.LASF1343:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1633:
	.ascii	"mus_messag\000"
.LASF1345:
	.ascii	"S_BSKUL_DIE4\000"
.LASF767:
	.ascii	"S_TROO_ATK1\000"
.LASF768:
	.ascii	"S_TROO_ATK2\000"
.LASF769:
	.ascii	"S_TROO_ATK3\000"
.LASF911:
	.ascii	"S_SKULL_DIE2\000"
.LASF912:
	.ascii	"S_SKULL_DIE3\000"
.LASF913:
	.ascii	"S_SKULL_DIE4\000"
.LASF914:
	.ascii	"S_SKULL_DIE5\000"
.LASF915:
	.ascii	"S_SKULL_DIE6\000"
.LASF264:
	.ascii	"SPR_PLAS\000"
.LASF1138:
	.ascii	"S_BON2A\000"
.LASF1139:
	.ascii	"S_BON2B\000"
.LASF177:
	.ascii	"SPR_PISF\000"
.LASF176:
	.ascii	"SPR_PISG\000"
.LASF1142:
	.ascii	"S_BON2E\000"
.LASF1434:
	.ascii	"MT_CHAINGUN\000"
.LASF414:
	.ascii	"S_TBALLX1\000"
.LASF415:
	.ascii	"S_TBALLX2\000"
.LASF416:
	.ascii	"S_TBALLX3\000"
.LASF2054:
	.ascii	"s_HUSTR_17\000"
.LASF145:
	.ascii	"wp_nochange\000"
.LASF288:
	.ascii	"SPR_TRE1\000"
.LASF1371:
	.ascii	"MT_CHAINGUY\000"
.LASF2160:
	.ascii	"s_AMSTR_ROTATEON\000"
.LASF1686:
	.ascii	"sfx_posit1\000"
.LASF1687:
	.ascii	"sfx_posit2\000"
.LASF1688:
	.ascii	"sfx_posit3\000"
.LASF910:
	.ascii	"S_SKULL_DIE1\000"
.LASF1752:
	.ascii	"sfx_ssdth\000"
.LASF1273:
	.ascii	"S_BRAINSTEM\000"
.LASF1929:
	.ascii	"s_NEWGAME\000"
.LASF1078:
	.ascii	"S_KEENSTND\000"
.LASF201:
	.ascii	"SPR_PLAY\000"
.LASF1626:
	.ascii	"mus_doom2\000"
.LASF1701:
	.ascii	"sfx_sklatk\000"
.LASF1958:
	.ascii	"s_GOTREDCARD\000"
.LASF1767:
	.ascii	"not_coop\000"
.LASF1881:
	.ascii	"deh_procHelperThing\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF1213:
	.ascii	"S_HEADCANDLES2\000"
.LASF1401:
	.ascii	"MT_IFOG\000"
.LASF2112:
	.ascii	"s_THUSTR_11\000"
.LASF1564:
	.ascii	"comp_soul\000"
.LASF1624:
	.ascii	"mus_stlks2\000"
.LASF1075:
	.ascii	"S_SSWV_RAISE3\000"
.LASF292:
	.ascii	"SPR_FSKU\000"
.LASF2115:
	.ascii	"s_THUSTR_14\000"
.LASF1747:
	.ascii	"sfx_bospn\000"
.LASF529:
	.ascii	"S_SPOS_RUN6\000"
.LASF1544:
	.ascii	"comp_pain\000"
.LASF385:
	.ascii	"S_SAWUP\000"
.LASF1118:
	.ascii	"S_ARM1A\000"
.LASF1939:
	.ascii	"s_DOSY\000"
.LASF721:
	.ascii	"S_CPOS_STND\000"
.LASF1442:
	.ascii	"MT_MISC31\000"
.LASF2227:
	.ascii	"startup2\000"
.LASF2228:
	.ascii	"startup3\000"
.LASF1192:
	.ascii	"S_SBOX\000"
.LASF1444:
	.ascii	"MT_MISC33\000"
.LASF1445:
	.ascii	"MT_MISC34\000"
.LASF1308:
	.ascii	"S_DOGS_RAISE1\000"
.LASF1309:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1310:
	.ascii	"S_DOGS_RAISE3\000"
.LASF424:
	.ascii	"S_PLASEXP\000"
.LASF1312:
	.ascii	"S_DOGS_RAISE5\000"
.LASF1313:
	.ascii	"S_DOGS_RAISE6\000"
.LASF100:
	.ascii	"_gamma_signgam\000"
.LASF2248:
	.ascii	"bfgcells\000"
.LASF1208:
	.ascii	"S_DEADBOTTOM\000"
.LASF1791:
	.ascii	"ns_hires\000"
.LASF1738:
	.ascii	"sfx_bdopn\000"
.LASF1265:
	.ascii	"S_HANGNOGUTS\000"
.LASF1520:
	.ascii	"attacksound\000"
.LASF1169:
	.ascii	"S_PINS2\000"
.LASF1170:
	.ascii	"S_PINS3\000"
.LASF1171:
	.ascii	"S_PINS4\000"
.LASF2278:
	.ascii	"puts\000"
.LASF1023:
	.ascii	"S_PAIN_ATK1\000"
.LASF2297:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF1025:
	.ascii	"S_PAIN_ATK3\000"
.LASF1026:
	.ascii	"S_PAIN_ATK4\000"
.LASF1557:
	.ascii	"comp_stairs\000"
.LASF2269:
	.ascii	"Z_Strdup\000"
.LASF335:
	.ascii	"S_SGUNUP\000"
.LASF2057:
	.ascii	"s_HUSTR_20\000"
.LASF72:
	.ascii	"_current_category\000"
.LASF1867:
	.ascii	"deh_procBexCodePointers\000"
.LASF2059:
	.ascii	"s_HUSTR_22\000"
.LASF2074:
	.ascii	"s_PHUSTR_5\000"
.LASF2273:
	.ascii	"fgetc\000"
.LASF2077:
	.ascii	"s_PHUSTR_8\000"
.LASF1989:
	.ascii	"s_PD_REDK\000"
.LASF1630:
	.ascii	"mus_stlks3\000"
.LASF286:
	.ascii	"SPR_CBRA\000"
.LASF1526:
	.ascii	"deathstate\000"
.LASF1120:
	.ascii	"S_ARM2A\000"
.LASF989:
	.ascii	"S_CYBER_STND\000"
.LASF1986:
	.ascii	"s_PD_REDO\000"
.LASF1876:
	.ascii	"deh_procBexMusic\000"
.LASF596:
	.ascii	"S_FIRE1\000"
.LASF1148:
	.ascii	"S_YKEY2\000"
.LASF598:
	.ascii	"S_FIRE3\000"
.LASF2272:
	.ascii	"strcasecmp\000"
.LASF1565:
	.ascii	"comp_maskedanim\000"
.LASF1519:
	.ascii	"reactiontime\000"
.LASF2253:
	.ascii	"cpars\000"
.LASF1972:
	.ascii	"s_GOTROCKBOX\000"
.LASF603:
	.ascii	"S_FIRE8\000"
.LASF843:
	.ascii	"S_BOSS_STND2\000"
.LASF1731:
	.ascii	"sfx_noway\000"
.LASF2255:
	.ascii	"deh_pars\000"
.LASF2156:
	.ascii	"s_AMSTR_GRIDON\000"
.LASF1849:
	.ascii	"deh_procError\000"
.LASF693:
	.ascii	"S_FATT_ATK3\000"
.LASF386:
	.ascii	"S_SAW1\000"
.LASF387:
	.ascii	"S_SAW2\000"
.LASF388:
	.ascii	"S_SAW3\000"
.LASF1131:
	.ascii	"S_BON1\000"
.LASF1137:
	.ascii	"S_BON2\000"
.LASF1619:
	.ascii	"mus_the_da\000"
.LASF2258:
	.ascii	"deh_newlevel\000"
.LASF383:
	.ascii	"S_SAWB\000"
.LASF2126:
	.ascii	"s_THUSTR_25\000"
.LASF2127:
	.ascii	"s_THUSTR_26\000"
.LASF771:
	.ascii	"S_TROO_PAIN2\000"
.LASF1038:
	.ascii	"S_PAIN_RAISE4\000"
.LASF1387:
	.ascii	"MT_BOSSSPIT\000"
.LASF74:
	.ascii	"__sdidinit\000"
.LASF597:
	.ascii	"S_FIRE2\000"
.LASF171:
	.ascii	"fixed_t\000"
.LASF599:
	.ascii	"S_FIRE4\000"
.LASF600:
	.ascii	"S_FIRE5\000"
.LASF601:
	.ascii	"S_FIRE6\000"
.LASF602:
	.ascii	"S_FIRE7\000"
.LASF254:
	.ascii	"SPR_BROK\000"
.LASF604:
	.ascii	"S_FIRE9\000"
.LASF1329:
	.ascii	"S_BON3\000"
.LASF1330:
	.ascii	"S_BON4\000"
.LASF1456:
	.ascii	"MT_MISC45\000"
.LASF1800:
	.ascii	"lumpinfo_t\000"
.LASF1189:
	.ascii	"S_CELL\000"
.LASF1458:
	.ascii	"MT_MISC47\000"
.LASF252:
	.ascii	"SPR_AMMO\000"
.LASF1459:
	.ascii	"MT_MISC48\000"
.LASF1311:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1460:
	.ascii	"MT_MISC49\000"
.LASF902:
	.ascii	"S_SKULL_RUN1\000"
.LASF903:
	.ascii	"S_SKULL_RUN2\000"
.LASF1269:
	.ascii	"S_HANGTLOOKUP\000"
.LASF364:
	.ascii	"S_CHAIN\000"
.LASF1568:
	.ascii	"sfxinfo_t\000"
.LASF394:
	.ascii	"S_PLASMAFLASH1\000"
.LASF350:
	.ascii	"S_DSGUN1\000"
.LASF351:
	.ascii	"S_DSGUN2\000"
.LASF243:
	.ascii	"SPR_SOUL\000"
.LASF203:
	.ascii	"SPR_SPOS\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF355:
	.ascii	"S_DSGUN6\000"
.LASF356:
	.ascii	"S_DSGUN7\000"
.LASF357:
	.ascii	"S_DSGUN8\000"
.LASF1892:
	.ascii	"deh_procText\000"
.LASF2138:
	.ascii	"s_HUSTR_CHATMACRO5\000"
.LASF2139:
	.ascii	"s_HUSTR_CHATMACRO6\000"
.LASF223:
	.ascii	"SPR_PAIN\000"
.LASF750:
	.ascii	"S_CPOS_RAISE1\000"
.LASF1358:
	.ascii	"misc1\000"
.LASF751:
	.ascii	"S_CPOS_RAISE2\000"
.LASF1498:
	.ascii	"MT_PUSH\000"
.LASF1911:
	.ascii	"deh_codeptr\000"
.LASF1721:
	.ascii	"sfx_vildth\000"
.LASF2290:
	.ascii	"__builtin_strcpy\000"
.LASF2155:
	.ascii	"s_AMSTR_FOLLOWOFF\000"
.LASF399:
	.ascii	"S_BFG1\000"
.LASF400:
	.ascii	"S_BFG2\000"
.LASF401:
	.ascii	"S_BFG3\000"
.LASF402:
	.ascii	"S_BFG4\000"
.LASF1882:
	.ascii	"deh_procStrings\000"
.LASF1627:
	.ascii	"mus_ddtbl2\000"
.LASF1902:
	.ascii	"includenotext\000"
.LASF1959:
	.ascii	"s_GOTBLUESKUL\000"
.LASF1967:
	.ascii	"s_GOTVISOR\000"
.LASF1838:
	.ascii	"dehfeof\000"
.LASF1908:
	.ascii	"deh_weapon\000"
.LASF314:
	.ascii	"spritenum_t\000"
.LASF361:
	.ascii	"S_DSNR2\000"
.LASF1775:
	.ascii	"when\000"
.LASF901:
	.ascii	"S_SKULL_STND2\000"
.LASF1164:
	.ascii	"S_PINV2\000"
.LASF1165:
	.ascii	"S_PINV3\000"
.LASF1166:
	.ascii	"S_PINV4\000"
.LASF2162:
	.ascii	"s_AMSTR_OVERLAYON\000"
.LASF1279:
	.ascii	"S_TECH2LAMP2\000"
.LASF1280:
	.ascii	"S_TECH2LAMP3\000"
.LASF1281:
	.ascii	"S_TECH2LAMP4\000"
.LASF1898:
	.ascii	"finecosine\000"
.LASF8:
	.ascii	"long long int\000"
.LASF175:
	.ascii	"SPR_PUNG\000"
.LASF745:
	.ascii	"S_CPOS_XDIE2\000"
.LASF746:
	.ascii	"S_CPOS_XDIE3\000"
.LASF747:
	.ascii	"S_CPOS_XDIE4\000"
.LASF748:
	.ascii	"S_CPOS_XDIE5\000"
.LASF749:
	.ascii	"S_CPOS_XDIE6\000"
.LASF1639:
	.ascii	"mus_messg2\000"
.LASF930:
	.ascii	"S_SPID_ATK1\000"
.LASF931:
	.ascii	"S_SPID_ATK2\000"
.LASF932:
	.ascii	"S_SPID_ATK3\000"
.LASF64:
	.ascii	"_flags2\000"
.LASF1556:
	.ascii	"comp_zombie\000"
.LASF654:
	.ascii	"S_SKEL_MISS1\000"
.LASF655:
	.ascii	"S_SKEL_MISS2\000"
.LASF656:
	.ascii	"S_SKEL_MISS3\000"
.LASF657:
	.ascii	"S_SKEL_MISS4\000"
.LASF411:
	.ascii	"S_PUFF4\000"
.LASF1151:
	.ascii	"S_RSKULL\000"
.LASF983:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF1461:
	.ascii	"MT_MISC50\000"
.LASF1844:
	.ascii	"lookfor\000"
.LASF831:
	.ascii	"S_HEAD_RAISE1\000"
.LASF1496:
	.ascii	"MT_MISC85\000"
.LASF832:
	.ascii	"S_HEAD_RAISE2\000"
.LASF1342:
	.ascii	"S_BSKUL_DIE1\000"
.LASF833:
	.ascii	"S_HEAD_RAISE3\000"
.LASF1344:
	.ascii	"S_BSKUL_DIE3\000"
.LASF238:
	.ascii	"SPR_BSKU\000"
.LASF1346:
	.ascii	"S_BSKUL_DIE5\000"
.LASF835:
	.ascii	"S_HEAD_RAISE5\000"
.LASF1348:
	.ascii	"S_BSKUL_DIE7\000"
.LASF836:
	.ascii	"S_HEAD_RAISE6\000"
.LASF2225:
	.ascii	"bgcastcall\000"
.LASF2164:
	.ascii	"s_STSTR_MUS\000"
.LASF1787:
	.ascii	"ns_global\000"
.LASF1578:
	.ascii	"lumpnum\000"
.LASF2239:
	.ascii	"initial_health\000"
.LASF1914:
	.ascii	"weaponinfo\000"
.LASF1439:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF2265:
	.ascii	"deh_soundnames\000"
.LASF249:
	.ascii	"SPR_PMAP\000"
.LASF1099:
	.ascii	"S_BRAINEYE\000"
.LASF1925:
	.ascii	"s_QSAVESPOT\000"
.LASF1772:
	.ascii	"cheat_s\000"
.LASF250:
	.ascii	"SPR_PVIS\000"
.LASF1253:
	.ascii	"S_BTORCHSHRT\000"
.LASF2213:
	.ascii	"s_CC_CYBER\000"
.LASF1397:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1998:
	.ascii	"s_PD_ALL3\000"
.LASF1999:
	.ascii	"s_PD_ALL6\000"
.LASF577:
	.ascii	"S_VILE_ATK8\000"
.LASF518:
	.ascii	"S_POSS_RAISE1\000"
.LASF519:
	.ascii	"S_POSS_RAISE2\000"
.LASF520:
	.ascii	"S_POSS_RAISE3\000"
.LASF521:
	.ascii	"S_POSS_RAISE4\000"
.LASF2214:
	.ascii	"s_CC_HERO\000"
.LASF373:
	.ascii	"S_MISSILEDOWN\000"
.LASF1554:
	.ascii	"comp_doorstuck\000"
.LASF1871:
	.ascii	"deh_procStringSub\000"
.LASF1732:
	.ascii	"sfx_barexp\000"
.LASF1237:
	.ascii	"S_FLOATSKULL2\000"
.LASF1238:
	.ascii	"S_FLOATSKULL3\000"
.LASF1655:
	.ascii	"sfx_dbopn\000"
.LASF2244:
	.ascii	"blue_armor_class\000"
.LASF2242:
	.ascii	"max_armor\000"
.LASF1659:
	.ascii	"sfx_bfg\000"
.LASF2251:
	.ascii	"clipammo\000"
.LASF1172:
	.ascii	"S_MEGA\000"
.LASF852:
	.ascii	"S_BOSS_ATK1\000"
.LASF853:
	.ascii	"S_BOSS_ATK2\000"
.LASF854:
	.ascii	"S_BOSS_ATK3\000"
.LASF308:
	.ascii	"SPR_BRS1\000"
.LASF659:
	.ascii	"S_SKEL_PAIN2\000"
.LASF1196:
	.ascii	"S_CSAW\000"
.LASF153:
	.ascii	"pw_invulnerability\000"
.LASF1817:
	.ascii	"deh_mobjflags_s\000"
.LASF839:
	.ascii	"S_BRBALLX1\000"
.LASF840:
	.ascii	"S_BRBALLX2\000"
.LASF841:
	.ascii	"S_BRBALLX3\000"
.LASF127:
	.ascii	"PU_MAX\000"
.LASF970:
	.ascii	"S_BSPI_DIE3\000"
.LASF971:
	.ascii	"S_BSPI_DIE4\000"
.LASF972:
	.ascii	"S_BSPI_DIE5\000"
.LASF138:
	.ascii	"wp_chaingun\000"
.LASF974:
	.ascii	"S_BSPI_DIE7\000"
.LASF898:
	.ascii	"S_BOS2_RAISE6\000"
.LASF525:
	.ascii	"S_SPOS_RUN2\000"
.LASF2004:
	.ascii	"s_HUSTR_E1M3\000"
.LASF526:
	.ascii	"S_SPOS_RUN3\000"
.LASF1028:
	.ascii	"S_PAIN_PAIN2\000"
.LASF663:
	.ascii	"S_SKEL_DIE4\000"
.LASF1651:
	.ascii	"sfx_pistol\000"
.LASF664:
	.ascii	"S_SKEL_DIE5\000"
.LASF88:
	.ascii	"__FILE\000"
.LASF1480:
	.ascii	"MT_MISC69\000"
.LASF309:
	.ascii	"SPR_TLMP\000"
.LASF2024:
	.ascii	"s_HUSTR_E3M5\000"
.LASF2001:
	.ascii	"s_HUSTR_MSGU\000"
.LASF490:
	.ascii	"S_POSS_STND2\000"
.LASF1438:
	.ascii	"MT_SHOTGUN\000"
.LASF2180:
	.ascii	"s_C1TEXT\000"
.LASF24:
	.ascii	"_sign\000"
.LASF2150:
	.ascii	"s_HUSTR_PLRGREEN\000"
.LASF1363:
	.ascii	"MT_SHOTGUY\000"
.LASF2133:
	.ascii	"s_THUSTR_32\000"
.LASF29:
	.ascii	"__tm_min\000"
.LASF1274:
	.ascii	"S_TECHLAMP\000"
.LASF2194:
	.ascii	"s_T3TEXT\000"
.LASF1384:
	.ascii	"MT_WOLFSS\000"
.LASF1891:
	.ascii	"deh_procFrame\000"
.LASF1941:
	.ascii	"s_DETAILLO\000"
.LASF2279:
	.ascii	"fwrite\000"
.LASF1859:
	.ascii	"outfilename\000"
.LASF122:
	.ascii	"PU_MUSIC\000"
.LASF1302:
	.ascii	"S_DOGS_DIE1\000"
.LASF1862:
	.ascii	"filein\000"
.LASF1303:
	.ascii	"S_DOGS_DIE2\000"
.LASF2135:
	.ascii	"s_HUSTR_CHATMACRO2\000"
.LASF872:
	.ascii	"S_BOS2_STND2\000"
.LASF367:
	.ascii	"S_CHAIN1\000"
.LASF368:
	.ascii	"S_CHAIN2\000"
.LASF369:
	.ascii	"S_CHAIN3\000"
.LASF420:
	.ascii	"S_RBALLX2\000"
.LASF421:
	.ascii	"S_RBALLX3\000"
.LASF294:
	.ascii	"SPR_TBLU\000"
.LASF523:
	.ascii	"S_SPOS_STND2\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF102:
	.ascii	"_r48\000"
.LASF1652:
	.ascii	"sfx_shotgn\000"
.LASF1551:
	.ascii	"comp_floors\000"
.LASF1868:
	.ascii	"mnemonic\000"
.LASF151:
	.ascii	"am_noammo\000"
.LASF1827:
	.ascii	"fromlen\000"
.LASF1692:
	.ascii	"sfx_cacsit\000"
.LASF2161:
	.ascii	"s_AMSTR_ROTATEOFF\000"
.LASF1581:
	.ascii	"mus_None\000"
.LASF1545:
	.ascii	"comp_skull\000"
.LASF1636:
	.ascii	"mus_ampie\000"
.LASF1332:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1333:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1334:
	.ascii	"S_BSKUL_RUN3\000"
.LASF1335:
	.ascii	"S_BSKUL_RUN4\000"
.LASF1713:
	.ascii	"sfx_bgdth2\000"
.LASF2282:
	.ascii	"strcmp\000"
.LASF499:
	.ascii	"S_POSS_ATK1\000"
.LASF500:
	.ascii	"S_POSS_ATK2\000"
.LASF501:
	.ascii	"S_POSS_ATK3\000"
.LASF2079:
	.ascii	"s_PHUSTR_10\000"
.LASF1482:
	.ascii	"MT_MISC71\000"
.LASF1262:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1263:
	.ascii	"S_RTORCHSHRT3\000"
.LASF933:
	.ascii	"S_SPID_ATK4\000"
.LASF2081:
	.ascii	"s_PHUSTR_12\000"
.LASF4:
	.ascii	"short int\000"
.LASF1857:
	.ascii	"ProcessDehFile\000"
.LASF1488:
	.ascii	"MT_MISC77\000"
.LASF1489:
	.ascii	"MT_MISC78\000"
.LASF1525:
	.ascii	"missilestate\000"
.LASF1490:
	.ascii	"MT_MISC79\000"
.LASF1379:
	.ascii	"MT_SKULL\000"
.LASF1542:
	.ascii	"comp_dropoff\000"
.LASF53:
	.ascii	"_read\000"
.LASF1888:
	.ascii	"deh_procAmmo\000"
.LASF1366:
	.ascii	"MT_UNDEAD\000"
.LASF660:
	.ascii	"S_SKEL_DIE1\000"
.LASF661:
	.ascii	"S_SKEL_DIE2\000"
.LASF662:
	.ascii	"S_SKEL_DIE3\000"
.LASF205:
	.ascii	"SPR_FIRE\000"
.LASF2296:
	.ascii	"c:/devl/prboom3ds/src/d_deh.c\000"
.LASF665:
	.ascii	"S_SKEL_DIE6\000"
.LASF92:
	.ascii	"_rand48\000"
.LASF2183:
	.ascii	"s_C4TEXT\000"
.LASF1390:
	.ascii	"MT_SPAWNFIRE\000"
.LASF1271:
	.ascii	"S_COLONGIBS\000"
.LASF2288:
	.ascii	"W_LumpLength\000"
.LASF2190:
	.ascii	"s_P5TEXT\000"
.LASF310:
	.ascii	"SPR_TLP2\000"
.LASF422:
	.ascii	"S_PLASBALL\000"
.LASF1708:
	.ascii	"sfx_pdiehi\000"
.LASF266:
	.ascii	"SPR_SGN2\000"
.LASF219:
	.ascii	"SPR_BSPI\000"
.LASF2168:
	.ascii	"s_STSTR_KFAADDED\000"
.LASF1784:
	.ascii	"source_net\000"
.LASF221:
	.ascii	"SPR_APBX\000"
.LASF1584:
	.ascii	"mus_e1m3\000"
.LASF1414:
	.ascii	"MT_MISC10\000"
.LASF1415:
	.ascii	"MT_MISC11\000"
.LASF1416:
	.ascii	"MT_MISC12\000"
.LASF1418:
	.ascii	"MT_MISC13\000"
.LASF945:
	.ascii	"S_SPID_DIE10\000"
.LASF1421:
	.ascii	"MT_MISC15\000"
.LASF1422:
	.ascii	"MT_MISC16\000"
.LASF1425:
	.ascii	"MT_MISC17\000"
.LASF1426:
	.ascii	"MT_MISC18\000"
.LASF1185:
	.ascii	"S_CLIP\000"
.LASF1530:
	.ascii	"radius\000"
.LASF1320:
	.ascii	"S_PLS1EXP2\000"
.LASF1321:
	.ascii	"S_PLS1EXP3\000"
.LASF1322:
	.ascii	"S_PLS1EXP4\000"
.LASF1323:
	.ascii	"S_PLS1EXP5\000"
.LASF1697:
	.ascii	"sfx_kntsit\000"
.LASF1808:
	.ascii	"OutputLevels\000"
.LASF1797:
	.ascii	"wadfile\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
