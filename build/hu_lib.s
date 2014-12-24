	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"hu_lib.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	HUlib_clearTextLine
	.type	HUlib_clearTextLine, %function
HUlib_clearTextLine:
.LFB5:
	.file 1 "c:/devl/prboom3ds/src/hu_lib.c"
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 73 0
	mov	r3, #0
	.loc 1 75 0
	mov	r2, #1
	.loc 1 73 0
	str	r3, [r0, #2028]
	.loc 1 75 0
	str	r2, [r0, #2032]
	.loc 1 72 0
	str	r3, [r0, #20]
	.loc 1 74 0
	strb	r3, [r0, #24]
	bx	lr
	.cfi_endproc
.LFE5:
	.size	HUlib_clearTextLine, .-HUlib_clearTextLine
	.align	2
	.global	HUlib_initTextLine
	.type	HUlib_initTextLine, %function
HUlib_initTextLine:
.LFB6:
	.loc 1 90 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB48:
.LBB49:
	.loc 1 73 0
	mov	ip, #0
	.loc 1 75 0
	mov	lr, #1
.LBE49:
.LBE48:
	.loc 1 90 0
	ldr	r5, [sp, #12]
	ldr	r4, [sp, #16]
	.loc 1 94 0
	stmia	r0, {r1, r2, r3, r5}
	.loc 1 95 0
	str	r4, [r0, #16]
.LVL2:
.LBB51:
.LBB50:
	.loc 1 75 0
	str	lr, [r0, #2032]
	.loc 1 73 0
	str	ip, [r0, #2028]
	.loc 1 72 0
	str	ip, [r0, #20]
	.loc 1 74 0
	strb	ip, [r0, #24]
	ldmfd	sp!, {r4, r5, pc}
.LBE50:
.LBE51:
	.cfi_endproc
.LFE6:
	.size	HUlib_initTextLine, .-HUlib_initTextLine
	.align	2
	.global	HUlib_addCharToTextLine
	.type	HUlib_addCharToTextLine, %function
HUlib_addCharToTextLine:
.LFB7:
	.loc 1 110 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3:
	.loc 1 112 0
	ldr	r2, [r0, #20]
	.loc 1 110 0
	mov	r3, r0
	.loc 1 112 0
	cmp	r2, #80
	beq	.L8
	.loc 1 117 0
	cmp	r1, #10
	.loc 1 118 0
	moveq	r2, #0
	.loc 1 116 0
	addne	r2, r2, #1
	.loc 1 110 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 118 0
	str	r2, [r0, #20]
	.loc 1 120 0
	ldr	r2, [r0, #2028]
	.loc 1 123 0
	mov	r0, #1
.LVL4:
	.loc 1 121 0
	mov	r5, #0
	.loc 1 122 0
	mov	lr, #4
	.loc 1 120 0
	add	ip, r2, r0
	.loc 1 121 0
	add	r4, r3, ip
	.loc 1 120 0
	add	r2, r3, r2
	str	ip, [r3, #2028]
	strb	r1, [r2, #24]
	.loc 1 121 0
	strb	r5, [r4, #24]
	.loc 1 122 0
	str	lr, [r3, #2032]
	.loc 1 123 0
	ldmfd	sp!, {r4, r5, pc}
.LVL5:
.L8:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 1 113 0
	mov	r0, #0
.LVL6:
	bx	lr
	.cfi_endproc
.LFE7:
	.size	HUlib_addCharToTextLine, .-HUlib_addCharToTextLine
	.align	2
	.global	HUlib_drawTextLine
	.type	HUlib_drawTextLine, %function
HUlib_drawTextLine:
.LFB9:
	.loc 1 158 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL7:
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
	.loc 1 169 0
	ldr	ip, [r0, #2028]
	.loc 1 164 0
	ldr	r3, [r0, #16]
	.loc 1 158 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 169 0
	cmp	ip, #0
	.loc 1 158 0
	mov	r5, r0
	.loc 1 168 0
	ldmia	r0, {r0, r7}
.LVL8:
	.loc 1 158 0
	str	r1, [sp, #12]
	.loc 1 164 0
	str	r3, [sp, #8]
.LVL9:
	.loc 1 169 0
	ble	.L13
	mov	r4, #0
	ldr	r6, .L35
	.loc 1 196 0
	ldr	r9, .L35+4
	.loc 1 190 0
	ldr	fp, .L35+8
	.loc 1 176 0
	ldr	r10, .L35+12
	b	.L21
.LVL10:
.L18:
	.loc 1 177 0
	cmp	r2, #27
	beq	.L33
	.loc 1 183 0
	cmp	r2, #32
	beq	.L20
	.loc 1 183 0 is_stmt 0 discriminator 1
	ldr	r1, [r5, #12]
	cmp	r2, r1
	blt	.L20
	.loc 1 183 0 discriminator 2
	tst	r3, #128
	bne	.L20
	.loc 1 185 0 is_stmt 1
	ldr	r3, [r5, #8]
	rsb	r2, r1, r2
.LVL11:
	add	r2, r2, r2, asl #2
	.loc 1 186 0
	ldr	r8, [r3, r2, asl #2]
	.loc 1 185 0
	add	r2, r3, r2, asl #2
.LVL12:
	.loc 1 186 0
	add	r8, r0, r8
	cmp	r8, #320
	bgt	.L13
	.loc 1 190 0
	mov	r1, #6
.LVL13:
	ldr	r3, [r2, #16]
.LVL14:
	ldr	r2, [r5, #16]
	str	r1, [sp, #4]
.LVL15:
	str	r2, [sp]
	ldr	ip, [fp]
	mov	r1, r7
	mov	r2, #0
	blx	ip
.LVL16:
	.loc 1 191 0
	mov	r0, r8
	ldr	ip, [r5, #2028]
.LVL17:
.L17:
	.loc 1 169 0 discriminator 2
	add	r4, r4, #1
.LVL18:
	cmp	ip, r4
	ble	.L13
.LVL19:
.L21:
.LBB52:
	.loc 1 171 0
	add	r3, r5, r4
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
.LVL20:
	ldr	r2, [r6]
	add	r2, r2, r3
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	and	r2, r2, #3
	cmp	r2, #2
	subeq	r3, r3, #32
.LVL21:
.LBE52:
	uxtb	r2, r3
.LVL22:
	.loc 1 173 0
	cmp	r2, #10
	.loc 1 174 0
	addeq	r7, r7, #8
.LVL23:
	moveq	r0, #0
.LVL24:
	.loc 1 173 0
	beq	.L17
	.loc 1 175 0
	cmp	r2, #9
	bne	.L18
	.loc 1 176 0
	smull	r2, r3, r10, r0
.LVL25:
	mov	r0, r0, asr #31
	rsb	r0, r0, r3, asr #5
	add	r0, r0, r0, asl #2
	.loc 1 169 0
	add	r4, r4, #1
.LVL26:
	.loc 1 176 0
	mov	r0, r0, asl #4
	.loc 1 169 0
	cmp	ip, r4
	.loc 1 176 0
	add	r0, r0, #80
.LVL27:
	.loc 1 169 0
	bgt	.L21
.LVL28:
.L13:
	.loc 1 203 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	.loc 1 200 0
	ldr	r3, [sp, #8]
	str	r3, [r5, #16]
	.loc 1 203 0
	beq	.L12
	.loc 1 203 0 is_stmt 0 discriminator 1
	ldr	r3, [r5, #12]
	ldr	r2, [r5, #8]
	rsb	r3, r3, #95
	add	r3, r3, r3, asl #2
	mov	r3, r3, asl #2
	ldr	r1, [r2, r3]
	add	r3, r2, r3
	add	r2, r0, r1
	cmp	r2, #320
	ble	.L34
.L12:
	.loc 1 209 0 is_stmt 1
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL29:
.L20:
	.cfi_restore_state
	.loc 1 195 0
	add	r0, r0, #4
.LVL30:
	.loc 1 196 0
	cmp	r0, r9
	ble	.L17
	b	.L13
.LVL31:
.L33:
	.loc 1 179 0
	add	r4, r4, #1
.LVL32:
	cmp	r4, ip
	bge	.L17
	.loc 1 180 0
	add	r3, r5, r4
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	sub	r3, r3, #48
	uxtb	r2, r3
.LVL33:
	cmp	r2, #9
	.loc 1 181 0
	strls	r3, [r5, #16]
.LVL34:
	b	.L17
.LVL35:
.L34:
	.loc 1 207 0
	mov	lr, #6
	mov	ip, #4
	ldr	r2, .L35+8
	ldr	r3, [r3, #16]
	str	lr, [sp]
	str	ip, [sp, #4]
	ldr	ip, [r2]
	mov	r1, r7
	mov	r2, #0
	blx	ip
.LVL36:
	.loc 1 209 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL37:
.L36:
	.align	2
.L35:
	.word	__ctype_ptr__
	.word	319
	.word	V_DrawNumPatch
	.word	1717986919
	.cfi_endproc
.LFE9:
	.size	HUlib_drawTextLine, .-HUlib_drawTextLine
	.align	2
	.global	HUlib_eraseTextLine
	.type	HUlib_eraseTextLine, %function
HUlib_eraseTextLine:
.LFB10:
	.loc 1 221 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL38:
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
	.loc 1 229 0
	ldr	r3, .L55
	.loc 1 221 0
	mov	fp, r0
	.loc 1 229 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	tst	r3, #1
	bne	.L41
	.loc 1 229 0 is_stmt 0 discriminator 1
	ldr	r6, .L55+4
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L53
.LVL39:
.L41:
	.loc 1 246 0 is_stmt 1
	ldr	r3, [fp, #2032]
	cmp	r3, #0
	beq	.L54
.L39:
	.loc 1 246 0 is_stmt 0 discriminator 1
	sub	r3, r3, #1
	str	r3, [fp, #2032]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL40:
.L53:
	.loc 1 229 0 is_stmt 1 discriminator 2
	ldr	r3, [r0, #2032]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 1 231 0
	ldr	r2, [r0, #8]
	.loc 1 232 0
	ldr	r4, [r0, #4]
	.loc 1 231 0
	ldr	r5, [r2, #4]
	add	r5, r5, #1
.LVL41:
	.loc 1 232 0
	add	r2, r5, r4
	cmp	r4, r2
	bge	.L39
	ldr	r7, .L55+8
	.loc 1 235 0
	ldr	r8, .L55+12
	.loc 1 234 0
	ldr	r9, .L55+16
	.loc 1 241 0
	ldr	r10, .L55+20
	b	.L47
.LVL42:
.L44:
	.loc 1 235 0
	ldr	r2, [r8]
	bl	R_VideoErase
.LVL43:
.L46:
	.loc 1 232 0 discriminator 2
	ldr	r3, [fp, #4]
	add	r4, r4, #1
.LVL44:
	add	r3, r5, r3
	cmp	r3, r4
	ble	.L41
.L47:
	.loc 1 234 0
	ldr	r3, [r7]
	.loc 1 235 0
	mov	r0, #0
	.loc 1 234 0
	cmp	r3, r4
	.loc 1 235 0
	mov	r1, r4
	.loc 1 234 0
	bgt	.L44
.LVL45:
	.loc 1 234 0 is_stmt 0 discriminator 1
	ldr	r2, [r9]
	add	r3, r3, r2
	cmp	r3, r4
	ble	.L44
	.loc 1 239 0 is_stmt 1
	ldr	r2, [r6]
	bl	R_VideoErase
.LVL46:
	.loc 1 241 0
	ldr	r3, [r6]
	ldr	r0, [r10]
	mov	r2, r3
	add	r0, r3, r0
	mov	r1, r4
	bl	R_VideoErase
.LVL47:
	b	.L46
.LVL48:
.L54:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L56:
	.align	2
.L55:
	.word	automapmode
	.word	viewwindowx
	.word	viewwindowy
	.word	SCREENWIDTH
	.word	viewheight
	.word	viewwidth
	.cfi_endproc
.LFE10:
	.size	HUlib_eraseTextLine, .-HUlib_eraseTextLine
	.align	2
	.global	HUlib_initSText
	.type	HUlib_initSText, %function
HUlib_initSText:
.LFB11:
	.loc 1 273 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL49:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 280 0
	mov	lr, #0
	.loc 1 279 0
	mov	r7, #1
	.loc 1 273 0
	ldr	r4, [sp, #40]
	.loc 1 277 0
	add	ip, r0, #4096
	.loc 1 273 0
	add	r6, sp, #28
	.loc 1 281 0
	cmp	r3, lr
	.loc 1 277 0
	str	r3, [ip, #4048]
	.loc 1 278 0
	str	r4, [ip, #4056]
	.loc 1 279 0
	str	r7, [ip, #4060]
	.loc 1 280 0
	str	lr, [ip, #4052]
.LVL50:
	.loc 1 273 0
	ldmia	r6, {r6, r8, r9}
	.loc 1 281 0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LBB53:
.LBB54:
.LBB55:
.LBB56:
	.loc 1 73 0
	mov	r5, lr
.LVL51:
.L59:
.LBE56:
.LBE55:
.LBE54:
.LBE53:
	.loc 1 286 0 discriminator 3
	ldr	ip, [r6, #4]
.LBB66:
.LBB63:
.LBB60:
.LBB57:
	.loc 1 75 0 discriminator 3
	mov	r4, r0
.LBE57:
.LBE60:
.LBE63:
.LBE66:
	.loc 1 286 0 discriminator 3
	mvn	ip, ip
	.loc 1 282 0 discriminator 3
	mla	ip, lr, ip, r2
.LVL52:
	.loc 1 281 0 discriminator 3
	add	lr, lr, #1
.LVL53:
.LBB67:
.LBB64:
	.loc 1 91 0 discriminator 3
	stmia	r0, {r1, ip}
	.loc 1 93 0 discriminator 3
	str	r6, [r0, #8]
	.loc 1 94 0 discriminator 3
	str	r8, [r0, #12]
	.loc 1 95 0 discriminator 3
	str	r9, [r0, #16]
.LVL54:
.LBB61:
.LBB58:
	.loc 1 73 0 discriminator 3
	str	r5, [r0, #2028]
	.loc 1 72 0 discriminator 3
	str	r5, [r0, #20]
	.loc 1 74 0 discriminator 3
	strb	r5, [r0, #24]
.LBE58:
.LBE61:
.LBE64:
.LBE67:
	.loc 1 281 0 discriminator 3
	cmp	lr, r3
.LBB68:
.LBB65:
.LBB62:
.LBB59:
	.loc 1 75 0 discriminator 3
	str	r7, [r4, #2032]!
	add	r0, r4, #4
.LBE59:
.LBE62:
.LBE65:
.LBE68:
	.loc 1 281 0 discriminator 3
	bne	.L59
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE11:
	.size	HUlib_initSText, .-HUlib_initSText
	.align	2
	.global	HUlib_addMessageToSText
	.type	HUlib_addMessageToSText, %function
HUlib_addMessageToSText:
.LFB13:
	.loc 1 326 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL55:
.LBB69:
.LBB70:
	.loc 1 307 0
	add	ip, r0, #4096
.LBE70:
.LBE69:
	.loc 1 326 0
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
.LBB78:
.LBB77:
	.loc 1 307 0
	ldr	r5, [ip, #4052]
	ldr	lr, [ip, #4048]
	add	r5, r5, #1
	cmp	r5, lr
	.loc 1 308 0
	moveq	r3, #0
	.loc 1 307 0
	str	r5, [ip, #4052]
	.loc 1 308 0
	moveq	r5, r3
.LVL56:
.LBB71:
.LBB72:
	.loc 1 73 0
	mov	r4, #0
	.loc 1 75 0
	mov	r7, #1
.LBE72:
.LBE71:
	.loc 1 308 0
	streq	r3, [ip, #4052]
.LBB75:
.LBB73:
	.loc 1 73 0
	mov	r3, r5, asl #7
	rsb	ip, r5, r3
	add	ip, r5, ip, asl #2
	add	ip, r0, ip, asl #2
.LBE73:
.LBE75:
	.loc 1 312 0
	cmp	lr, r4
.LBB76:
.LBB74:
	.loc 1 72 0
	add	r8, ip, #16
	.loc 1 73 0
	str	r4, [ip, #2028]
	.loc 1 72 0
	str	r4, [ip, #20]
	.loc 1 74 0
	strb	r4, [ip, #24]
	.loc 1 75 0
	str	r7, [ip, #2032]
.LVL57:
.LBE74:
.LBE76:
	.loc 1 312 0
	ble	.L69
	mov	ip, r0
	.loc 1 313 0
	mov	r4, #4
	rsb	r6, lr, lr, asl #7
	add	lr, lr, r6, asl #2
	add	lr, r0, lr, asl #2
.LVL58:
.L68:
	str	r4, [ip, #2032]!
	add	ip, ip, #4
	.loc 1 312 0
	cmp	ip, lr
	bne	.L68
.L69:
.LBE77:
.LBE78:
	.loc 1 328 0
	cmp	r1, #0
	beq	.L67
.LBB79:
.LBB80:
	.loc 1 121 0
	mov	r6, #0
	.loc 1 122 0
	mov	r7, #4
	.loc 1 112 0
	rsb	lr, r5, r3
	add	lr, r5, lr, asl #2
	add	lr, r0, lr, asl #2
	sub	r1, r1, #1
.LVL59:
	.loc 1 120 0
	add	r8, lr, #2016
.LVL60:
.L70:
.LBE80:
.LBE79:
	.loc 1 329 0
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
.LVL61:
.LBB84:
.LBB81:
	.loc 1 112 0
	add	r9, lr, #16
.LBE81:
.LBE84:
	.loc 1 329 0
	cmp	r4, #0
	beq	.L67
.LVL62:
.L75:
.LBB85:
.LBB82:
	.loc 1 112 0
	ldr	ip, [r9, #4]
	cmp	ip, #80
	.loc 1 116 0
	add	ip, ip, #1
	.loc 1 112 0
	beq	.L70
	.loc 1 117 0
	cmp	r4, #10
	.loc 1 116 0
	strne	ip, [r9, #4]
	.loc 1 120 0
	ldr	ip, [r8, #12]
	.loc 1 118 0
	streq	r6, [r9, #4]
	.loc 1 120 0
	add	r10, ip, #1
	.loc 1 121 0
	add	fp, lr, r10
	.loc 1 120 0
	add	ip, lr, ip
	str	r10, [r8, #12]
	strb	r4, [ip, #24]
	.loc 1 121 0
	strb	r6, [fp, #24]
	.loc 1 122 0
	str	r7, [lr, #2032]
.LVL63:
.LBE82:
.LBE85:
	.loc 1 329 0
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
.LVL64:
.LBB86:
.LBB83:
	.loc 1 112 0
	add	r9, lr, #16
.LBE83:
.LBE86:
	.loc 1 329 0
	cmp	r4, #0
	bne	.L75
.LVL65:
.L67:
.LBB87:
.LBB88:
	.loc 1 112 0
	rsb	r3, r5, r3
	add	r5, r5, r3, asl #2
.LVL66:
	add	r0, r0, r5, asl #2
.LVL67:
	.loc 1 122 0
	mov	r6, #4
	.loc 1 121 0
	mov	r5, #0
	sub	r2, r2, #1
.LVL68:
	.loc 1 120 0
	add	r7, r0, #2016
.LVL69:
.L71:
.LBE88:
.LBE87:
	.loc 1 332 0
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
.LVL70:
.LBB92:
.LBB89:
	.loc 1 112 0
	add	ip, r0, #16
.LBE89:
.LBE92:
	.loc 1 332 0
	cmp	r1, #0
	beq	.L88
.LVL71:
.L79:
.LBB93:
.LBB90:
	.loc 1 112 0
	ldr	r3, [ip, #4]
	cmp	r3, #80
	.loc 1 116 0
	add	r3, r3, #1
	.loc 1 112 0
	beq	.L71
	.loc 1 117 0
	cmp	r1, #10
	.loc 1 116 0
	strne	r3, [ip, #4]
	.loc 1 120 0
	ldr	r3, [r7, #12]
	.loc 1 118 0
	streq	r5, [ip, #4]
	.loc 1 120 0
	add	lr, r3, #1
	.loc 1 121 0
	add	r4, r0, lr
	.loc 1 120 0
	add	r3, r0, r3
	str	lr, [r7, #12]
	strb	r1, [r3, #24]
	.loc 1 121 0
	strb	r5, [r4, #24]
	.loc 1 122 0
	str	r6, [r0, #2032]
.LVL72:
.LBE90:
.LBE93:
	.loc 1 332 0
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
.LVL73:
.LBB94:
.LBB91:
	.loc 1 112 0
	add	ip, r0, #16
.LBE91:
.LBE94:
	.loc 1 332 0
	cmp	r1, #0
	bne	.L79
.LVL74:
.L88:
	.loc 1 334 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE13:
	.size	HUlib_addMessageToSText, .-HUlib_addMessageToSText
	.align	2
	.global	HUlib_drawSText
	.type	HUlib_drawSText, %function
HUlib_drawSText:
.LFB14:
	.loc 1 345 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL75:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 349 0
	add	r5, r0, #4096
	ldr	r3, [r5, #4056]
	ldr	r3, [r3]
	cmp	r3, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
.LVL76:
	.loc 1 353 0 discriminator 1
	ldr	r2, [r5, #4048]
	cmp	r2, #0
	ldmlefd	sp!, {r4, r5, r6, pc}
	mov	r6, r0
	.loc 1 353 0 is_stmt 0
	mov	r4, #0
.LVL77:
.L93:
	.loc 1 355 0 is_stmt 1
	ldr	r3, [r5, #4052]
.LVL78:
	.loc 1 362 0
	mov	r1, #0
	.loc 1 356 0
	subs	r3, r3, r4
.LVL79:
	.loc 1 357 0
	addmi	r3, r3, r2
.LVL80:
	.loc 1 359 0
	rsb	r2, r3, r3, asl #7
	add	r0, r3, r2, asl #2
	.loc 1 362 0
	add	r0, r6, r0, asl #2
	bl	HUlib_drawTextLine
.LVL81:
	.loc 1 353 0
	ldr	r2, [r5, #4048]
	add	r4, r4, #1
.LVL82:
	cmp	r2, r4
	bgt	.L93
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE14:
	.size	HUlib_drawSText, .-HUlib_drawSText
	.align	2
	.global	HUlib_eraseSText
	.type	HUlib_eraseSText, %function
HUlib_eraseSText:
.LFB15:
	.loc 1 375 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL83:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 378 0
	add	r6, r0, #4096
	ldr	r3, [r6, #4048]
	cmp	r3, #0
	movgt	r4, r0
	movgt	r5, #0
	.loc 1 381 0
	movgt	r7, #4
	.loc 1 378 0
	ble	.L100
.LVL84:
.L99:
	.loc 1 380 0
	ldr	r3, [r6, #4060]
	.loc 1 382 0
	mov	r0, r4
	.loc 1 380 0
	cmp	r3, #0
	.loc 1 378 0
	add	r5, r5, #1
.LVL85:
	.loc 1 380 0
	beq	.L98
	.loc 1 380 0 is_stmt 0 discriminator 1
	ldr	r3, [r6, #4056]
	ldr	r3, [r3]
	cmp	r3, #0
	.loc 1 381 0 is_stmt 1 discriminator 1
	streq	r7, [r4, #2032]
.L98:
	.loc 1 382 0 discriminator 2
	bl	HUlib_eraseTextLine
.LVL86:
	.loc 1 378 0 discriminator 2
	ldr	r3, [r6, #4048]
	add	r4, r4, #2032
	cmp	r3, r5
	add	r4, r4, #4
	bgt	.L99
.LVL87:
.L100:
	.loc 1 384 0
	ldr	r3, [r6, #4056]
	ldr	r3, [r3]
	str	r3, [r6, #4060]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE15:
	.size	HUlib_eraseSText, .-HUlib_eraseSText
	.align	2
	.global	HUlib_initMText
	.type	HUlib_initMText, %function
HUlib_initMText:
.LFB16:
	.loc 1 408 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL88:
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
	.loc 1 411 0
	mov	r7, #0
	.loc 1 419 0
	mov	lr, #1
	.loc 1 413 0
	mvn	r10, #0
	.loc 1 419 0
	mov	r5, r7
.LBB95:
.LBB96:
.LBB97:
.LBB98:
	.loc 1 73 0
	mov	r4, r7
	.loc 1 75 0
	mov	r6, lr
.LBE98:
.LBE97:
.LBE96:
.LBE95:
	.loc 1 408 0
	ldr	r9, [sp, #36]
	ldr	r8, [sp, #52]
	mov	ip, r0
	ldr	fp, .L113
	.loc 1 411 0
	add	r0, r0, #28672
.LVL89:
	.loc 1 416 0
	str	r3, [r0, #3924]
	.loc 1 408 0
	ldr	r3, [sp, #56]
.LVL90:
	.loc 1 413 0
	str	r10, [r0, #3912]
	.loc 1 417 0
	str	r9, [r0, #3928]
	.loc 1 418 0
	str	r8, [r0, #3932]
	ldr	fp, [fp]
	.loc 1 408 0
	ldr	r10, [sp, #40]
	ldr	r9, [sp, #44]
	ldr	r8, [sp, #48]
	.loc 1 414 0
	str	r1, [r0, #3916]
	.loc 1 415 0
	str	r2, [r0, #3920]
	.loc 1 419 0
	str	r3, [r0, #3936]
.LVL91:
	.loc 1 411 0
	str	r7, [r0, #3904]
	.loc 1 412 0
	str	r7, [r0, #3908]
.LVL92:
.L110:
	.loc 1 426 0
	cmp	fp, #0
	moveq	r0, r5
.LVL93:
.LBB108:
.LBB105:
.LBB102:
.LBB99:
	.loc 1 75 0
	mov	r3, ip
	movne	r0, lr, asl #3
.LVL94:
.LBE99:
.LBE102:
.LBE105:
.LBE108:
	.loc 1 422 0
	add	r0, r0, r2
.LVL95:
	add	lr, lr, #1
.LVL96:
.LBB109:
.LBB106:
	.loc 1 92 0
	str	r0, [ip, #4]
	.loc 1 91 0
	str	r1, [ip]
	.loc 1 93 0
	str	r10, [ip, #8]
	.loc 1 94 0
	str	r9, [ip, #12]
	.loc 1 95 0
	str	r8, [ip, #16]
.LVL97:
.LBB103:
.LBB100:
	.loc 1 73 0
	str	r4, [ip, #2028]
	.loc 1 72 0
	str	r4, [ip, #20]
	.loc 1 74 0
	strb	r4, [ip, #24]
.LBE100:
.LBE103:
.LBE106:
.LBE109:
	.loc 1 420 0
	cmp	lr, #17
.LBB110:
.LBB107:
.LBB104:
.LBB101:
	.loc 1 75 0
	str	r6, [r3, #2032]!
.LVL98:
	add	ip, r3, #4
	add	r5, r5, #8
.LBE101:
.LBE104:
.LBE107:
.LBE110:
	.loc 1 420 0
	bne	.L110
	.loc 1 432 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L114:
	.align	2
.L113:
	.word	hud_list_bgon
	.cfi_endproc
.LFE16:
	.size	HUlib_initMText, .-HUlib_initMText
	.align	2
	.global	HUlib_addMessageToMText
	.type	HUlib_addMessageToMText, %function
HUlib_addMessageToMText:
.LFB18:
	.loc 1 465 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL99:
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
.LBB111:
.LBB112:
	.loc 1 445 0
	ldr	r3, .L140
	add	lr, r0, #28672
	ldr	r5, [lr, #3912]
	ldr	r7, [r3]
	add	r5, r5, #1
	cmp	r5, r7
	.loc 1 446 0
	moveq	r3, #0
	.loc 1 445 0
	str	r5, [lr, #3912]
	.loc 1 446 0
	moveq	r5, r3
.LVL100:
.LBB113:
.LBB114:
	.loc 1 73 0
	mov	r4, #0
	.loc 1 75 0
	mov	r8, #1
.LBE114:
.LBE113:
	.loc 1 453 0
	mov	r6, #4
	.loc 1 446 0
	streq	r3, [lr, #3912]
.LBB116:
.LBB115:
	.loc 1 73 0
	mov	r3, r5, asl #7
	rsb	ip, r5, r3
	add	ip, r5, ip, asl #2
	add	ip, r0, ip, asl #2
	str	r4, [ip, #2028]
	.loc 1 72 0
	str	r4, [ip, #20]
	.loc 1 74 0
	strb	r4, [ip, #24]
	.loc 1 75 0
	str	r8, [ip, #2032]
	.loc 1 72 0
	add	r9, ip, #16
.LBE115:
.LBE116:
	.loc 1 449 0
	ldr	ip, [lr, #3904]
	cmp	r7, ip
	.loc 1 450 0
	addgt	ip, ip, r8
	strgt	ip, [lr, #3904]
	.loc 1 453 0
	rsb	lr, r5, r3
	add	lr, r5, lr, asl #2
	add	lr, r0, lr, asl #2
.LBE112:
.LBE111:
	.loc 1 467 0
	cmp	r1, #0
.LBB118:
.LBB117:
	.loc 1 453 0
	str	r6, [lr, #2032]
.LBE117:
.LBE118:
	.loc 1 467 0
	beq	.L118
.LBB119:
.LBB120:
	.loc 1 121 0
	mov	r7, #0
	sub	r1, r1, #1
.LVL101:
	.loc 1 120 0
	add	r8, lr, #2016
.LVL102:
.L119:
.LBE120:
.LBE119:
	.loc 1 468 0
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
.LVL103:
.LBB124:
.LBB121:
	.loc 1 112 0
	add	r9, lr, #16
.LBE121:
.LBE124:
	.loc 1 468 0
	cmp	r4, #0
	beq	.L118
.LVL104:
.L124:
.LBB125:
.LBB122:
	.loc 1 112 0
	ldr	ip, [r9, #4]
	cmp	ip, #80
	.loc 1 116 0
	add	ip, ip, #1
	.loc 1 112 0
	beq	.L119
	.loc 1 117 0
	cmp	r4, #10
	.loc 1 116 0
	strne	ip, [r9, #4]
	.loc 1 120 0
	ldr	ip, [r8, #12]
	.loc 1 118 0
	streq	r7, [r9, #4]
	.loc 1 120 0
	add	r10, ip, #1
	.loc 1 121 0
	add	fp, lr, r10
	.loc 1 120 0
	add	ip, lr, ip
	str	r10, [r8, #12]
	strb	r4, [ip, #24]
	.loc 1 121 0
	strb	r7, [fp, #24]
	.loc 1 122 0
	str	r6, [lr, #2032]
.LVL105:
.LBE122:
.LBE125:
	.loc 1 468 0
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
.LVL106:
.LBB126:
.LBB123:
	.loc 1 112 0
	add	r9, lr, #16
.LBE123:
.LBE126:
	.loc 1 468 0
	cmp	r4, #0
	bne	.L124
.LVL107:
.L118:
.LBB127:
.LBB128:
	.loc 1 112 0
	rsb	r3, r5, r3
	add	r5, r5, r3, asl #2
.LVL108:
	add	r0, r0, r5, asl #2
.LVL109:
	.loc 1 122 0
	mov	r6, #4
	.loc 1 121 0
	mov	r5, #0
	sub	r2, r2, #1
.LVL110:
	.loc 1 120 0
	add	r7, r0, #2016
.LVL111:
.L120:
.LBE128:
.LBE127:
	.loc 1 471 0
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
.LVL112:
.LBB132:
.LBB129:
	.loc 1 112 0
	add	ip, r0, #16
.LBE129:
.LBE132:
	.loc 1 471 0
	cmp	r1, #0
	beq	.L139
.LVL113:
.L128:
.LBB133:
.LBB130:
	.loc 1 112 0
	ldr	r3, [ip, #4]
	cmp	r3, #80
	.loc 1 116 0
	add	r3, r3, #1
	.loc 1 112 0
	beq	.L120
	.loc 1 117 0
	cmp	r1, #10
	.loc 1 116 0
	strne	r3, [ip, #4]
	.loc 1 120 0
	ldr	r3, [r7, #12]
	.loc 1 118 0
	streq	r5, [ip, #4]
	.loc 1 120 0
	add	lr, r3, #1
	.loc 1 121 0
	add	r4, r0, lr
	.loc 1 120 0
	add	r3, r0, r3
	str	lr, [r7, #12]
	strb	r1, [r3, #24]
	.loc 1 121 0
	strb	r5, [r4, #24]
	.loc 1 122 0
	str	r6, [r0, #2032]
.LVL114:
.LBE130:
.LBE133:
	.loc 1 471 0
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
.LVL115:
.LBB134:
.LBB131:
	.loc 1 112 0
	add	ip, r0, #16
.LBE131:
.LBE134:
	.loc 1 471 0
	cmp	r1, #0
	bne	.L128
.LVL116:
.L139:
	.loc 1 473 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L141:
	.align	2
.L140:
	.word	hud_msg_lines
	.cfi_endproc
.LFE18:
	.size	HUlib_addMessageToMText, .-HUlib_addMessageToMText
	.align	2
	.global	HUlib_drawMBg
	.type	HUlib_drawMBg, %function
HUlib_drawMBg:
.LFB19:
	.loc 1 491 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL117:
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
	.loc 1 498 0
	mov	r10, #6
	mov	r4, #4
	.loc 1 491 0
	mov	r8, r0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 491 0
	ldr	r6, [sp, #72]
	mov	r5, r2
	.loc 1 492 0
	ldr	r9, [r6]
.LVL118:
	.loc 1 498 0
	ldr	r2, [r6, #16]
.LVL119:
	ldr	r7, .L169
	str	r10, [sp]
	str	r4, [sp, #4]
	.loc 1 493 0
	ldr	lr, [r6, #4]
	.loc 1 491 0
	str	r3, [sp, #28]
	.loc 1 498 0
	ldr	ip, [r7]
	mov	r3, r2
.LVL120:
	mov	r2, #0
	.loc 1 491 0
	str	r0, [sp, #12]
	.loc 1 493 0
	str	lr, [sp, #16]
.LVL121:
	.loc 1 491 0
	mov	fp, r1
	.loc 1 498 0
	blx	ip
.LVL122:
	.loc 1 499 0
	mov	r3, r8
	add	r5, r8, r5
.LVL123:
	add	r3, r3, r9
	rsb	r8, r9, r5
.LVL124:
	cmp	r3, r8
	str	r3, [sp, #8]
.LVL125:
	bge	.L143
	.loc 1 499 0 is_stmt 0 discriminator 3
	mov	r5, r3
	.loc 1 500 0 is_stmt 1 discriminator 3
	str	r10, [sp, #20]
	str	r4, [sp, #24]
.LVL126:
.L144:
	ldr	r2, [sp, #20]
	ldr	r3, [r6, #36]
	str	r2, [sp]
	ldr	r2, [sp, #24]
	ldr	ip, [r7]
	str	r2, [sp, #4]
	mov	r0, r5
	mov	r1, fp
	.loc 1 499 0 discriminator 3
	add	r5, r5, r9
.LVL127:
	.loc 1 500 0 discriminator 3
	mov	r2, #0
	blx	ip
.LVL128:
	.loc 1 499 0 discriminator 3
	cmp	r5, r8
	.loc 1 500 0 discriminator 3
	ldr	r4, .L169
	mov	r10, #6
	mov	ip, #4
	.loc 1 499 0 discriminator 3
	blt	.L144
	.loc 1 501 0
	ldr	r3, [r6, #56]
	stmia	sp, {r10, ip}
	mov	r0, r5
	mov	r2, #0
	ldr	r5, [r4]
.LVL129:
	mov	r1, fp
	str	ip, [sp, #24]
	blx	r5
.LVL130:
	.loc 1 504 0
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	add	r3, fp, r3
	rsb	r3, r2, r3
	add	r5, fp, r2
.LVL131:
	cmp	r5, r3
	str	r3, [sp, #20]
	ldr	ip, [sp, #24]
	bge	.L168
.L152:
	.loc 1 506 0
	mov	fp, #6
.LVL132:
	mov	r10, #4
.L148:
	ldr	r3, [r6, #76]
	ldr	ip, [r7]
	str	fp, [sp]
	str	r10, [sp, #4]
	ldr	r0, [sp, #12]
	mov	r1, r5
	mov	r2, #0
	blx	ip
.LVL133:
	.loc 1 507 0
	ldr	r3, [sp, #8]
	cmp	r3, r8
	bge	.L155
	.loc 1 507 0 is_stmt 0 discriminator 3
	mov	r4, r3
.LVL134:
.L147:
	.loc 1 508 0 is_stmt 1 discriminator 3
	ldr	r3, [r6, #96]
	mov	r0, r4
	str	fp, [sp]
	str	r10, [sp, #4]
	ldr	ip, [r7]
	mov	r1, r5
	.loc 1 507 0 discriminator 3
	add	r4, r4, r9
.LVL135:
	.loc 1 508 0 discriminator 3
	mov	r2, #0
	blx	ip
.LVL136:
	.loc 1 507 0 discriminator 3
	cmp	r4, r8
	blt	.L147
.LVL137:
.L146:
	.loc 1 504 0 discriminator 2
	ldr	lr, [sp, #16]
	.loc 1 509 0 discriminator 2
	ldr	r3, [r6, #116]
	mov	r1, r5
	mov	r0, r4
	mov	r2, #0
	str	fp, [sp]
	str	r10, [sp, #4]
	ldr	ip, [r7]
	.loc 1 504 0 discriminator 2
	add	r5, r5, lr
.LVL138:
	.loc 1 509 0 discriminator 2
	blx	ip
.LVL139:
	.loc 1 504 0 discriminator 2
	ldr	r3, [sp, #20]
	.loc 1 509 0 discriminator 2
	ldr	r2, .L169
	.loc 1 504 0 discriminator 2
	cmp	r5, r3
	.loc 1 509 0 discriminator 2
	mov	r0, #6
	mov	r1, #4
	.loc 1 504 0 discriminator 2
	blt	.L148
	.loc 1 513 0
	ldr	r3, [r6, #136]
	stmia	sp, {r0, r1}
	ldr	r0, [sp, #12]
	ldr	ip, [r2]
	mov	r1, r5
	mov	r2, #0
	blx	ip
.LVL140:
	.loc 1 514 0
	ldr	r3, [sp, #8]
	cmp	r3, r8
	bge	.L149
.L151:
	.loc 1 515 0 discriminator 3
	mov	r10, #6
	mov	r4, #4
	ldr	fp, [sp, #8]
.LVL141:
.L150:
	ldr	r3, [r6, #156]
	mov	r0, fp
	str	r10, [sp]
	str	r4, [sp, #4]
	ldr	ip, [r7]
	mov	r1, r5
	.loc 1 514 0 discriminator 3
	add	fp, fp, r9
.LVL142:
	.loc 1 515 0 discriminator 3
	mov	r2, #0
	blx	ip
.LVL143:
	.loc 1 514 0 discriminator 3
	cmp	fp, r8
	blt	.L150
	str	fp, [sp, #8]
.LVL144:
.L149:
	.loc 1 516 0
	mov	lr, #6
	mov	r2, #4
	ldr	r3, [r6, #176]
	ldr	ip, [r7]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	mov	r1, r5
	str	lr, [sp]
	mov	r2, #0
	blx	ip
.LVL145:
	.loc 1 517 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL146:
.L155:
	.cfi_restore_state
	.loc 1 507 0
	ldr	r4, [sp, #8]
	b	.L146
.LVL147:
.L143:
	.loc 1 501 0
	ldr	r3, [r6, #56]
.LVL148:
	mov	r2, #0
	str	r10, [sp]
	str	r4, [sp, #4]
	ldr	ip, [r7]
	ldr	r0, [sp, #8]
	mov	r1, fp
	blx	ip
.LVL149:
	.loc 1 504 0
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	add	r3, fp, r3
	rsb	r3, r2, r3
	add	r5, fp, r2
.LVL150:
	cmp	r5, r3
	str	r3, [sp, #20]
	blt	.L152
	.loc 1 513 0
	ldr	r3, [r6, #136]
	ldr	r0, [sp, #12]
	str	r10, [sp]
	str	r4, [sp, #4]
	ldr	ip, [r7]
	mov	r1, r5
	mov	r2, #0
	blx	ip
.LVL151:
	b	.L149
.LVL152:
.L168:
	ldr	r3, [r6, #136]
	stmia	sp, {r10, ip}
	ldr	r0, [sp, #12]
	ldr	ip, [r4]
	mov	r1, r5
	mov	r2, #0
	blx	ip
.LVL153:
	b	.L151
.L170:
	.align	2
.L169:
	.word	V_DrawNumPatch
	.cfi_endproc
.LFE19:
	.size	HUlib_drawMBg, .-HUlib_drawMBg
	.align	2
	.global	HUlib_drawMText
	.type	HUlib_drawMText, %function
HUlib_drawMText:
.LFB20:
	.loc 1 528 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL154:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 532 0
	add	r5, r0, #28672
	ldr	r3, [r5, #3936]
	.loc 1 528 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 532 0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L171
	.loc 1 536 0
	ldr	r7, .L186
	mov	r8, r0
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L184
.LVL155:
.L173:
	.loc 1 539 0 discriminator 1
	ldr	r2, [r5, #3904]
	cmp	r2, #0
	ble	.L171
	.loc 1 539 0 is_stmt 0
	mov	r6, #1
	mov	r4, #0
	b	.L178
.LVL156:
.L185:
	.loc 1 549 0 is_stmt 1
	mov	r9, r6
	.loc 1 548 0
	ldr	r2, [r5, #3916]
	add	r2, r2, #4
	str	r2, [r8, r3, asl #2]
	.loc 1 549 0
	ldr	r3, [r5, #3920]
	add	r3, r3, r6, asl #3
	str	r3, [r0, #4]
.L177:
	.loc 1 558 0 discriminator 2
	mov	r1, #0
	bl	HUlib_drawTextLine
.LVL157:
	.loc 1 539 0 discriminator 2
	ldr	r2, [r5, #3904]
	add	r4, r4, #1
	cmp	r2, r9
	add	r6, r6, #1
.LVL158:
	ble	.L171
.LVL159:
.L178:
	.loc 1 541 0
	ldr	r3, [r5, #3912]
.LVL160:
	.loc 1 546 0
	ldr	r1, [r7]
	.loc 1 542 0
	subs	r3, r3, r4
.LVL161:
	.loc 1 543 0
	addmi	r3, r3, r2
.LVL162:
	.loc 1 545 0
	rsb	r2, r3, r3, asl #7
	add	r3, r3, r2, asl #2
.LVL163:
	.loc 1 546 0
	cmp	r1, #0
	.loc 1 545 0
	add	r0, r8, r3, asl #2
.LVL164:
	.loc 1 546 0
	bne	.L185
	.loc 1 553 0
	ldr	r2, [r5, #3916]
	mov	r9, r6
	str	r2, [r8, r3, asl #2]
	.loc 1 554 0
	ldr	r3, [r5, #3920]
	add	r3, r3, r4, asl #3
	str	r3, [r0, #4]
	b	.L177
.LVL165:
.L171:
	.loc 1 560 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL166:
.L184:
	.cfi_restore_state
	.loc 1 537 0
	add	r1, r5, #3920
	ldr	r0, [r5, #3916]
.LVL167:
	ldmia	r1, {r1, r2, r3, ip}
	str	ip, [sp]
	bl	HUlib_drawMBg
.LVL168:
	b	.L173
.L187:
	.align	2
.L186:
	.word	hud_list_bgon
	.cfi_endproc
.LFE20:
	.size	HUlib_drawMText, .-HUlib_drawMText
	.align	2
	.global	HUlib_eraseMText
	.type	HUlib_eraseMText, %function
HUlib_eraseMText:
.LFB22:
	.loc 1 607 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL169:
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
	.loc 1 610 0
	ldr	r3, .L209
	.loc 1 607 0
	mov	r4, r0
	.loc 1 610 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L189
.L206:
	add	r6, r4, #28672
.LVL170:
.L191:
	.loc 1 613 0
	ldr	r3, [r6, #3904]
	cmp	r3, #0
	ble	.L208
	mov	r5, #0
	.loc 1 615 0
	mov	r7, #4
.LVL171:
.L196:
	.loc 1 615 0 is_stmt 0 discriminator 3
	str	r7, [r4, #2032]
	.loc 1 616 0 is_stmt 1 discriminator 3
	mov	r0, r4
	bl	HUlib_eraseTextLine
.LVL172:
	.loc 1 613 0 discriminator 3
	ldr	r3, [r6, #3904]
	add	r5, r5, #1
.LVL173:
	add	r4, r4, #2032
	cmp	r3, r5
	add	r4, r4, #4
	bgt	.L196
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL174:
.L189:
.LBB137:
.LBB138:
	.loc 1 579 0
	ldr	r3, .L209+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	tst	r3, #1
	bne	.L206
	ldr	r10, .L209+8
	ldr	r3, [r10]
	cmp	r3, #0
	beq	.L206
	.loc 1 581 0
	ldr	r3, [r0, #8]
	.loc 1 582 0
	ldr	r8, .L209+12
	.loc 1 581 0
	ldr	r5, [r3, #4]
	.loc 1 582 0
	ldr	r2, [r8]
	add	r6, r0, #28672
	ldr	fp, [r6, #3920]
	.loc 1 581 0
	add	r5, r5, #1
.LVL175:
	.loc 1 582 0
	add	r2, r2, #2
	mla	r2, r2, r5, fp
	cmp	fp, r2
	bge	.L191
	ldr	r7, .L209+16
	.loc 1 584 0
	ldr	r9, .L209+20
	b	.L195
.LVL176:
.L192:
	.loc 1 585 0
	ldr	r3, .L209+24
	mov	r1, fp
	ldr	r2, [r3]
	bl	R_VideoErase
.LVL177:
.L194:
	.loc 1 582 0
	ldr	r2, [r8]
	ldr	r1, [r6, #3920]
	add	r2, r2, #2
	mla	r2, r2, r5, r1
	add	fp, fp, #1
.LVL178:
	cmp	fp, r2
	bge	.L191
.L195:
	.loc 1 584 0
	ldr	r2, [r7]
	.loc 1 585 0
	mov	r0, #0
	.loc 1 584 0
	cmp	r2, fp
	bgt	.L192
	ldr	r1, [r9]
	add	r2, r2, r1
	cmp	r2, fp
	ble	.L192
	.loc 1 589 0
	mov	r1, fp
	ldr	r2, [r10]
	bl	R_VideoErase
.LVL179:
	.loc 1 591 0
	ldr	r3, .L209+28
	ldr	r1, [r10]
	ldr	r0, [r3]
	mov	r2, r1
	add	r0, r1, r0
	mov	r1, fp
	bl	R_VideoErase
.LVL180:
	b	.L194
.LVL181:
.L208:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L210:
	.align	2
.L209:
	.word	hud_list_bgon
	.word	automapmode
	.word	viewwindowx
	.word	hud_msg_lines
	.word	viewwindowy
	.word	viewheight
	.word	SCREENWIDTH
	.word	viewwidth
.LBE138:
.LBE137:
	.cfi_endproc
.LFE22:
	.size	HUlib_eraseMText, .-HUlib_eraseMText
	.align	2
	.global	HUlib_initIText
	.type	HUlib_initIText, %function
HUlib_initIText:
.LFB23:
	.loc 1 643 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL182:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 644 0
	mov	ip, #0
	.loc 1 646 0
	mov	lr, #1
	.loc 1 643 0
	ldr	r6, [sp, #24]
	ldr	r5, [sp, #16]
	ldr	r4, [sp, #20]
.LBB139:
.LBB140:
	.loc 1 93 0
	stmia	r0, {r1, r2, r3}
.LBE140:
.LBE139:
	.loc 1 645 0
	str	r6, [r0, #2040]
.LBB148:
.LBB145:
	.loc 1 94 0
	str	r5, [r0, #12]
	.loc 1 95 0
	str	r4, [r0, #16]
.LBE145:
.LBE148:
	.loc 1 644 0
	str	ip, [r0, #2036]
.LBB149:
.LBB146:
.LBB141:
.LBB142:
	.loc 1 73 0
	str	ip, [r0, #2028]
	.loc 1 72 0
	str	ip, [r0, #20]
	.loc 1 74 0
	strb	ip, [r0, #24]
.LBE142:
.LBE141:
.LBE146:
.LBE149:
	.loc 1 646 0
	str	lr, [r0, #2044]
.LVL183:
.LBB150:
.LBB147:
.LBB144:
.LBB143:
	.loc 1 75 0
	str	lr, [r0, #2032]
	ldmfd	sp!, {r4, r5, r6, pc}
.LBE143:
.LBE144:
.LBE147:
.LBE150:
	.cfi_endproc
.LFE23:
	.size	HUlib_initIText, .-HUlib_initIText
	.align	2
	.global	HUlib_resetIText
	.type	HUlib_resetIText, %function
HUlib_resetIText:
.LFB26:
	.loc 1 690 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL184:
	.loc 1 691 0
	mov	r3, #0
.LBB151:
.LBB152:
	.loc 1 75 0
	mov	r2, #1
.LBE152:
.LBE151:
	.loc 1 691 0
	str	r3, [r0, #2036]
.LVL185:
.LBB154:
.LBB153:
	.loc 1 75 0
	str	r2, [r0, #2032]
	.loc 1 73 0
	str	r3, [r0, #2028]
	.loc 1 72 0
	str	r3, [r0, #20]
	.loc 1 74 0
	strb	r3, [r0, #24]
	bx	lr
.LBE153:
.LBE154:
	.cfi_endproc
.LFE26:
	.size	HUlib_resetIText, .-HUlib_resetIText
	.align	2
	.global	HUlib_addPrefixToIText
	.type	HUlib_addPrefixToIText, %function
HUlib_addPrefixToIText:
.LFB27:
	.loc 1 707 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL186:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB155:
.LBB156:
	.loc 1 121 0
	mov	r5, #0
	.loc 1 122 0
	mov	r6, #4
	ldr	ip, [r0, #2028]
	sub	r1, r1, #1
.LVL187:
.L215:
.LBE156:
.LBE155:
	.loc 1 708 0
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
.LVL188:
	cmp	r2, #0
	beq	.L224
.LVL189:
.L219:
.LBB159:
.LBB157:
	.loc 1 112 0
	ldr	r3, [r0, #20]
	cmp	r3, #80
	.loc 1 116 0
	add	r3, r3, #1
	.loc 1 112 0
	beq	.L215
	.loc 1 117 0
	cmp	r2, #10
	.loc 1 116 0
	strne	r3, [r0, #20]
	.loc 1 120 0
	add	r3, ip, #1
	add	r4, r0, ip
	.loc 1 121 0
	add	lr, r0, r3
	.loc 1 118 0
	streq	r5, [r0, #20]
	.loc 1 120 0
	str	r3, [r0, #2028]
	strb	r2, [r4, #24]
	.loc 1 121 0
	strb	r5, [lr, #24]
	.loc 1 122 0
	str	r6, [r0, #2032]
.LVL190:
.LBE157:
.LBE159:
	.loc 1 708 0
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
.LVL191:
.LBB160:
.LBB158:
	.loc 1 122 0
	mov	ip, r3
.LBE158:
.LBE160:
	.loc 1 708 0
	cmp	r2, #0
	bne	.L219
.LVL192:
.L224:
	.loc 1 710 0
	str	ip, [r0, #2036]
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE27:
	.size	HUlib_addPrefixToIText, .-HUlib_addPrefixToIText
	.align	2
	.global	HUlib_keyInIText
	.type	HUlib_keyInIText, %function
HUlib_keyInIText:
.LFB28:
	.loc 1 724 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL193:
	.loc 1 726 0
	sub	r3, r1, #32
	cmp	r3, #63
	.loc 1 724 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 724 0
	mov	r3, r0
	.loc 1 726 0
	bhi	.L226
.LVL194:
.LBB161:
.LBB162:
	.loc 1 112 0
	ldr	r2, [r0, #20]
	cmp	r2, #80
	beq	.L230
	.loc 1 121 0
	mov	r6, #0
	.loc 1 122 0
	mov	r4, #4
	.loc 1 120 0
	ldr	r0, [r0, #2028]
.LVL195:
	.loc 1 116 0
	add	r2, r2, #1
	.loc 1 120 0
	add	lr, r0, #1
	add	ip, r3, r0
	.loc 1 121 0
	add	r5, r3, lr
	.loc 1 116 0
	str	r2, [r3, #20]
	.loc 1 120 0
	str	lr, [r3, #2028]
.LBE162:
.LBE161:
	.loc 1 733 0
	mov	r0, #1
.LBB164:
.LBB163:
	.loc 1 120 0
	strb	r1, [ip, #24]
	.loc 1 121 0
	strb	r6, [r5, #24]
	.loc 1 122 0
	str	r4, [r3, #2032]
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL196:
.L226:
.LBE163:
.LBE164:
	.loc 1 728 0
	ldr	r2, .L233
	ldr	r2, [r2]
	cmp	r1, r2
	beq	.L232
	.loc 1 730 0
	ldr	r3, .L233+4
	ldr	r0, [r3]
.LVL197:
	rsb	r0, r0, r1
	clz	r0, r0
	mov	r0, r0, lsr #5
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL198:
.L232:
.LBB165:
.LBB166:
	.loc 1 662 0
	ldr	r1, [r0, #2036]
.LVL199:
	ldr	r2, [r0, #2028]
.LVL200:
.LBB167:
.LBB168:
	.loc 1 138 0
	cmp	r2, #0
	cmpne	r2, r1
	moveq	r1, #1
	movne	r1, #0
	beq	.L230
	.loc 1 142 0
	mov	ip, #4
	.loc 1 141 0
	sub	r2, r2, #1
	add	lr, r0, r2
	str	r2, [r0, #2028]
	strb	r1, [lr, #24]
.LBE168:
.LBE167:
.LBE166:
.LBE165:
	.loc 1 733 0
	mov	r0, #1
.LVL201:
.LBB172:
.LBB171:
.LBB170:
.LBB169:
	.loc 1 142 0
	str	ip, [r3, #2032]
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL202:
.L230:
.LBE169:
.LBE170:
.LBE171:
.LBE172:
	.loc 1 733 0
	mov	r0, #1
.LVL203:
	.loc 1 734 0
	ldmfd	sp!, {r4, r5, r6, pc}
.L234:
	.align	2
.L233:
	.word	key_backspace
	.word	key_enter
	.cfi_endproc
.LFE28:
	.size	HUlib_keyInIText, .-HUlib_keyInIText
	.align	2
	.global	HUlib_drawIText
	.type	HUlib_drawIText, %function
HUlib_drawIText:
.LFB29:
	.loc 1 745 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL204:
	.loc 1 748 0
	ldr	r3, [r0, #2040]
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	.loc 1 750 0
	mov	r1, #1
	b	HUlib_drawTextLine
.LVL205:
	.cfi_endproc
.LFE29:
	.size	HUlib_drawIText, .-HUlib_drawIText
	.align	2
	.global	HUlib_eraseIText
	.type	HUlib_eraseIText, %function
HUlib_eraseIText:
.LFB30:
	.loc 1 762 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL206:
	.loc 1 763 0
	ldr	r3, [r0, #2044]
	.loc 1 762 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 763 0
	cmp	r3, #0
	.loc 1 762 0
	mov	r4, r0
	.loc 1 763 0
	beq	.L238
	.loc 1 763 0 is_stmt 0 discriminator 1
	ldr	r3, [r0, #2040]
	ldr	r3, [r3]
	cmp	r3, #0
	.loc 1 764 0 is_stmt 1 discriminator 1
	moveq	r3, #4
	streq	r3, [r0, #2032]
.L238:
	.loc 1 765 0
	mov	r0, r4
.LVL207:
	bl	HUlib_eraseTextLine
.LVL208:
	.loc 1 766 0
	ldr	r3, [r4, #2040]
	ldr	r3, [r3]
	str	r3, [r4, #2044]
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE30:
	.size	HUlib_eraseIText, .-HUlib_eraseIText
.Letext0:
	.file 2 "c:/devl/prboom3ds/src/doomtype.h"
	.file 3 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 4 "c:/devl/prboom3ds/src/doomstat.h"
	.file 5 "c:/devl/prboom3ds/src/r_defs.h"
	.file 6 "c:/devl/prboom3ds/src/v_video.h"
	.file 7 "c:/devl/prboom3ds/src/hu_lib.h"
	.file 8 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\ctype.h"
	.file 9 "c:/devl/prboom3ds/src/doomdef.h"
	.file 10 "c:/devl/prboom3ds/src/tables.h"
	.file 11 "c:/devl/prboom3ds/src/hu_stuff.h"
	.file 12 "c:/devl/prboom3ds/src/r_main.h"
	.file 13 "c:/devl/prboom3ds/src/r_draw.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x11cb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x1
	.4byte	.LASF94
	.4byte	.LASF95
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x78
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.4byte	0x85
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x42
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.4byte	0xc1
	.uleb128 0x8
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF13
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF14
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4
	.byte	0xaa
	.4byte	0xf7
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF21
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 16
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF25
	.uleb128 0x9
	.byte	0x14
	.byte	0x5
	.2byte	0x157
	.4byte	0x149
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x159
	.4byte	0x2c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x159
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x15a
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x15a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x15b
	.4byte	0x2c
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x15c
	.4byte	0xfe
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.byte	0x3b
	.4byte	0x1a6
	.uleb128 0x8
	.4byte	.LASF32
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF33
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF34
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF35
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF36
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF37
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF38
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF39
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF40
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF41
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF42
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF43
	.sleb128 11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x6
	.byte	0x9b
	.4byte	0x1b1
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1b7
	.uleb128 0xd
	.4byte	0x1db
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x9c
	.byte	0
	.uleb128 0xf
	.2byte	0x7f4
	.byte	0x7
	.byte	0x3e
	.4byte	0x249
	.uleb128 0x10
	.ascii	"x\000"
	.byte	0x7
	.byte	0x41
	.4byte	0x2c
	.byte	0
	.uleb128 0x10
	.ascii	"y\000"
	.byte	0x7
	.byte	0x42
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x10
	.ascii	"f\000"
	.byte	0x7
	.byte	0x44
	.4byte	0x249
	.byte	0x8
	.uleb128 0x10
	.ascii	"sc\000"
	.byte	0x7
	.byte	0x45
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x10
	.ascii	"cm\000"
	.byte	0x7
	.byte	0x48
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4d
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x10
	.ascii	"l\000"
	.byte	0x7
	.byte	0x4e
	.4byte	0x254
	.byte	0x18
	.uleb128 0x12
	.ascii	"len\000"
	.byte	0x7
	.byte	0x4f
	.4byte	0x2c
	.2byte	0x7ec
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x7
	.byte	0x52
	.4byte	0x2c
	.2byte	0x7f0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x5
	.4byte	0x149
	.uleb128 0x14
	.4byte	0x78
	.4byte	0x265
	.uleb128 0x15
	.4byte	0x6b
	.2byte	0x7d0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x7
	.byte	0x54
	.4byte	0x1db
	.uleb128 0xf
	.2byte	0x1fe0
	.byte	0x7
	.byte	0x5a
	.4byte	0x2b4
	.uleb128 0x10
	.ascii	"l\000"
	.byte	0x7
	.byte	0x5c
	.4byte	0x2b4
	.byte	0
	.uleb128 0x12
	.ascii	"h\000"
	.byte	0x7
	.byte	0x5d
	.4byte	0x2c
	.2byte	0x1fd0
	.uleb128 0x12
	.ascii	"cl\000"
	.byte	0x7
	.byte	0x5e
	.4byte	0x2c
	.2byte	0x1fd4
	.uleb128 0x12
	.ascii	"on\000"
	.byte	0x7
	.byte	0x61
	.4byte	0x2c4
	.2byte	0x1fd8
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x7
	.byte	0x62
	.4byte	0x91
	.2byte	0x1fdc
	.byte	0
	.uleb128 0x14
	.4byte	0x265
	.4byte	0x2c4
	.uleb128 0x16
	.4byte	0x6b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x91
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0x64
	.4byte	0x270
	.uleb128 0xf
	.2byte	0x7f68
	.byte	0x7
	.byte	0x68
	.4byte	0x35e
	.uleb128 0x10
	.ascii	"l\000"
	.byte	0x7
	.byte	0x6a
	.4byte	0x35e
	.byte	0
	.uleb128 0x12
	.ascii	"nl\000"
	.byte	0x7
	.byte	0x6b
	.4byte	0x2c
	.2byte	0x7f40
	.uleb128 0x12
	.ascii	"nr\000"
	.byte	0x7
	.byte	0x6c
	.4byte	0x2c
	.2byte	0x7f44
	.uleb128 0x12
	.ascii	"cl\000"
	.byte	0x7
	.byte	0x6d
	.4byte	0x2c
	.2byte	0x7f48
	.uleb128 0x12
	.ascii	"x\000"
	.byte	0x7
	.byte	0x6f
	.4byte	0x2c
	.2byte	0x7f4c
	.uleb128 0x12
	.ascii	"y\000"
	.byte	0x7
	.byte	0x6f
	.4byte	0x2c
	.2byte	0x7f50
	.uleb128 0x12
	.ascii	"w\000"
	.byte	0x7
	.byte	0x6f
	.4byte	0x2c
	.2byte	0x7f54
	.uleb128 0x12
	.ascii	"h\000"
	.byte	0x7
	.byte	0x6f
	.4byte	0x2c
	.2byte	0x7f58
	.uleb128 0x12
	.ascii	"bg\000"
	.byte	0x7
	.byte	0x70
	.4byte	0x249
	.2byte	0x7f5c
	.uleb128 0x12
	.ascii	"on\000"
	.byte	0x7
	.byte	0x73
	.4byte	0x2c4
	.2byte	0x7f60
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x7
	.byte	0x74
	.4byte	0x91
	.2byte	0x7f64
	.byte	0
	.uleb128 0x14
	.4byte	0x265
	.4byte	0x36e
	.uleb128 0x16
	.4byte	0x6b
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x7
	.byte	0x76
	.4byte	0x2d5
	.uleb128 0xf
	.2byte	0x800
	.byte	0x7
	.byte	0x7c
	.4byte	0x3b2
	.uleb128 0x10
	.ascii	"l\000"
	.byte	0x7
	.byte	0x7e
	.4byte	0x265
	.byte	0
	.uleb128 0x12
	.ascii	"lm\000"
	.byte	0x7
	.byte	0x81
	.4byte	0x2c
	.2byte	0x7f4
	.uleb128 0x12
	.ascii	"on\000"
	.byte	0x7
	.byte	0x84
	.4byte	0x2c4
	.2byte	0x7f8
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x7
	.byte	0x85
	.4byte	0x91
	.2byte	0x7fc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x7
	.byte	0x87
	.4byte	0x379
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.byte	0x88
	.4byte	0x91
	.byte	0x1
	.4byte	0x3d7
	.uleb128 0x18
	.ascii	"t\000"
	.byte	0x1
	.byte	0x88
	.4byte	0x3d7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x265
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	0x40a
	.uleb128 0x1a
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x40a
	.uleb128 0x1b
	.ascii	"lh\000"
	.byte	0x1
	.2byte	0x23c
	.4byte	0x2c
	.uleb128 0x1b
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x23d
	.4byte	0x2c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x36e
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x426
	.uleb128 0x18
	.ascii	"t\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x3d7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x46b
	.uleb128 0x18
	.ascii	"t\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x3d7
	.uleb128 0x18
	.ascii	"x\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x2c
	.uleb128 0x18
	.ascii	"y\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x2c
	.uleb128 0x18
	.ascii	"f\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x249
	.uleb128 0x18
	.ascii	"sc\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x2c
	.uleb128 0x18
	.ascii	"cm\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x2c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.4byte	0x48d
	.uleb128 0x1a
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x48d
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x1
	.byte	0x6b
	.4byte	0x91
	.byte	0x1
	.4byte	0x4b7
	.uleb128 0x18
	.ascii	"t\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x3d7
	.uleb128 0x18
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x78
	.byte	0
	.uleb128 0x19
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1
	.4byte	0x4cf
	.uleb128 0x1a
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x40a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x294
	.byte	0x1
	.4byte	0x4e8
	.uleb128 0x1a
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x294
	.4byte	0x4e8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0x1e
	.4byte	0x410
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x509
	.uleb128 0x1f
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.4byte	0x426
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x560
	.uleb128 0x1f
	.4byte	0x432
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1f
	.4byte	0x43b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1f
	.4byte	0x444
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	0x44d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.4byte	0x410
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x60
	.uleb128 0x1f
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x493
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x584
	.uleb128 0x21
	.4byte	0x4a3
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	0x4ac
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65a
	.uleb128 0x23
	.ascii	"l\000"
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d7
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9d
	.4byte	0x91
	.4byte	.LLST2
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x25
	.ascii	"w\000"
	.byte	0x1
	.byte	0xa1
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.byte	0xa2
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x3a
	.4byte	.LLST6
	.uleb128 0x25
	.ascii	"oc\000"
	.byte	0x1
	.byte	0xa4
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x25
	.ascii	"y\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x621
	.uleb128 0x25
	.ascii	"__x\000"
	.byte	0x1
	.byte	0xab
	.4byte	0x78
	.4byte	.LLST9
	.byte	0
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0x63c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL36
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0xdc
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ca
	.uleb128 0x23
	.ascii	"l\000"
	.byte	0x1
	.byte	0xdc
	.4byte	0x3d7
	.4byte	.LLST10
	.uleb128 0x25
	.ascii	"lh\000"
	.byte	0x1
	.byte	0xde
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x25
	.ascii	"y\000"
	.byte	0x1
	.byte	0xdf
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LVL43
	.4byte	0x11b7
	.uleb128 0x2b
	.4byte	.LVL46
	.4byte	0x11b7
	.4byte	0x6b9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL47
	.4byte	0x11b7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x108
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b9
	.uleb128 0x2e
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x109
	.4byte	0x48d
	.4byte	.LLST13
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.ascii	"h\000"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x10d
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x10e
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.ascii	"cm\000"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.ascii	"on\000"
	.byte	0x1
	.2byte	0x110
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x2c
	.4byte	.LLST14
	.uleb128 0x32
	.4byte	0x426
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x11a
	.uleb128 0x1f
	.4byte	0x460
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1f
	.4byte	0x456
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1f
	.4byte	0x44d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	0x444
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1f
	.4byte	0x43b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.4byte	0x432
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	0x410
	.4byte	.LBB55
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x60
	.uleb128 0x1f
	.4byte	0x41c
	.uleb128 0xb
	.byte	0x7e
	.sleb128 -1
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x145
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x885
	.uleb128 0x2e
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x145
	.4byte	0x48d
	.4byte	.LLST16
	.uleb128 0x33
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x145
	.4byte	0x7f
	.4byte	.LLST17
	.uleb128 0x2e
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0x145
	.4byte	0x7f
	.4byte	.LLST18
	.uleb128 0x34
	.4byte	0x46b
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.2byte	0x147
	.4byte	0x844
	.uleb128 0x21
	.4byte	0x478
	.4byte	.LLST16
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x36
	.4byte	0x482
	.4byte	.LLST20
	.uleb128 0x32
	.4byte	0x410
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x135
	.uleb128 0x21
	.4byte	0x41c
	.4byte	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x493
	.4byte	.LBB79
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x14a
	.4byte	0x867
	.uleb128 0x21
	.4byte	0x4ac
	.4byte	.LLST22
	.uleb128 0x37
	.4byte	0x4a3
	.byte	0
	.uleb128 0x32
	.4byte	0x493
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x14d
	.uleb128 0x1f
	.4byte	0x4ac
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x37
	.4byte	0x4a3
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x158
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e5
	.uleb128 0x2e
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x158
	.4byte	0x48d
	.4byte	.LLST23
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x31
	.ascii	"idx\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x2c
	.4byte	.LLST25
	.uleb128 0x31
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x15b
	.4byte	0x3d7
	.4byte	.LLST26
	.uleb128 0x2c
	.4byte	.LVL81
	.4byte	0x584
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x176
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x921
	.uleb128 0x2e
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x176
	.4byte	0x48d
	.4byte	.LLST27
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0x2c
	.4byte	.LLST28
	.uleb128 0x2a
	.4byte	.LVL86
	.4byte	0x65a
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x195
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa30
	.uleb128 0x2e
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x40a
	.4byte	.LLST29
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x2f
	.ascii	"h\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x196
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x196
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.ascii	"cm\000"
	.byte	0x1
	.2byte	0x196
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x197
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.ascii	"on\000"
	.byte	0x1
	.2byte	0x197
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x199
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x32
	.4byte	0x426
	.4byte	.LBB95
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x1a6
	.uleb128 0x1f
	.4byte	0x460
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1f
	.4byte	0x456
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1f
	.4byte	0x44d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.4byte	0x444
	.4byte	.LLST32
	.uleb128 0x1f
	.4byte	0x43b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.4byte	0x432
	.4byte	.LLST33
	.uleb128 0x20
	.4byte	0x410
	.4byte	.LBB97
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0x60
	.uleb128 0x1f
	.4byte	0x41c
	.uleb128 0xb
	.byte	0x7e
	.sleb128 -2
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1d0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x2e
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x40a
	.4byte	.LLST34
	.uleb128 0x33
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x7f
	.4byte	.LLST35
	.uleb128 0x2e
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x7f
	.4byte	.LLST36
	.uleb128 0x34
	.4byte	0x4b7
	.4byte	.LBB111
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xaac
	.uleb128 0x21
	.4byte	0x4c4
	.4byte	.LLST34
	.uleb128 0x32
	.4byte	0x410
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x1bf
	.uleb128 0x21
	.4byte	0x41c
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x493
	.4byte	.LBB119
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xacf
	.uleb128 0x21
	.4byte	0x4ac
	.4byte	.LLST39
	.uleb128 0x37
	.4byte	0x4a3
	.byte	0
	.uleb128 0x32
	.4byte	0x493
	.4byte	.LBB127
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x1
	.2byte	0x1d8
	.uleb128 0x1f
	.4byte	0x4ac
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x37
	.4byte	0x4a3
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd61
	.uleb128 0x2e
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x2c
	.4byte	.LLST40
	.uleb128 0x2e
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x2c
	.4byte	.LLST41
	.uleb128 0x2e
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x2e
	.ascii	"h\000"
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x2f
	.ascii	"bgp\000"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.ascii	"xs\000"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x31
	.ascii	"ys\000"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x2c
	.4byte	.LLST44
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x2c
	.4byte	.LLST45
	.uleb128 0x31
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x2c
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0xbab
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0xbd1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x94
	.byte	0x1
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.4byte	.LVL130
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0xbf9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x94
	.byte	0x1
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL133
	.4byte	0xc24
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL136
	.4byte	0xc47
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL139
	.4byte	0xc6a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL140
	.4byte	0xc95
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL143
	.4byte	0xcb8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL145
	.4byte	0xce1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x27
	.4byte	.LVL149
	.4byte	0xd0c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL151
	.4byte	0xd37
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL153
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x94
	.byte	0x1
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x20f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd8
	.uleb128 0x2e
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x20f
	.4byte	0x40a
	.4byte	.LLST47
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x211
	.4byte	0x2c
	.4byte	.LLST48
	.uleb128 0x31
	.ascii	"idx\000"
	.byte	0x1
	.2byte	0x211
	.4byte	0x2c
	.4byte	.LLST49
	.uleb128 0x1b
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x211
	.4byte	0x2c
	.uleb128 0x31
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x212
	.4byte	0x3d7
	.4byte	.LLST50
	.uleb128 0x2b
	.4byte	.LVL157
	.4byte	0x584
	.4byte	0xdce
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL168
	.4byte	0xaed
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x25e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9b
	.uleb128 0x2e
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x40a
	.4byte	.LLST51
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x260
	.4byte	0x2c
	.4byte	.LLST52
	.uleb128 0x3a
	.4byte	0x3dd
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.byte	0x1
	.2byte	0x263
	.4byte	0xe8a
	.uleb128 0x21
	.4byte	0x3ea
	.4byte	.LLST53
	.uleb128 0x21
	.4byte	0x3ea
	.4byte	.LLST53
	.uleb128 0x3b
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.uleb128 0x36
	.4byte	0x3f4
	.4byte	.LLST55
	.uleb128 0x36
	.4byte	0x3ff
	.4byte	.LLST56
	.uleb128 0x2b
	.4byte	.LVL177
	.4byte	0x11b7
	.4byte	0xe5f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL179
	.4byte	0x11b7
	.4byte	0xe78
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL180
	.4byte	0x11b7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL172
	.4byte	0x65a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x27b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5e
	.uleb128 0x2f
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x27c
	.4byte	0x4e8
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x27d
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x27e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x27f
	.4byte	0x249
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x280
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.ascii	"cm\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.ascii	"on\000"
	.byte	0x1
	.2byte	0x282
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	0x426
	.4byte	.LBB139
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x287
	.uleb128 0x1f
	.4byte	0x460
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	0x456
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x37
	.4byte	0x44d
	.uleb128 0x37
	.4byte	0x444
	.uleb128 0x1f
	.4byte	0x43b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1f
	.4byte	0x432
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.4byte	0x410
	.4byte	.LBB141
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.byte	0x60
	.uleb128 0x1f
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x2b1
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9a
	.uleb128 0x2f
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x4e8
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	0x410
	.4byte	.LBB151
	.4byte	.Ldebug_ranges0+0x200
	.byte	0x1
	.2byte	0x2b4
	.uleb128 0x1f
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x2c0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfed
	.uleb128 0x2f
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x4e8
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2e
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x72
	.4byte	.LLST57
	.uleb128 0x32
	.4byte	0x493
	.4byte	.LBB155
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.2byte	0x2c5
	.uleb128 0x1f
	.4byte	0x4ac
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	0x4a3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x91
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1081
	.uleb128 0x2e
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x4e8
	.4byte	.LLST58
	.uleb128 0x2e
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x3a
	.4byte	.LLST59
	.uleb128 0x34
	.4byte	0x493
	.4byte	.LBB161
	.4byte	.Ldebug_ranges0+0x238
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x104c
	.uleb128 0x21
	.4byte	0x4ac
	.4byte	.LLST60
	.uleb128 0x21
	.4byte	0x4a3
	.4byte	.LLST61
	.byte	0
	.uleb128 0x32
	.4byte	0x4cf
	.4byte	.LBB165
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.2byte	0x2d9
	.uleb128 0x21
	.4byte	0x4dc
	.4byte	.LLST62
	.uleb128 0x32
	.4byte	0x3bd
	.4byte	.LBB167
	.4byte	.Ldebug_ranges0+0x268
	.byte	0x1
	.2byte	0x297
	.uleb128 0x21
	.4byte	0x3cd
	.4byte	.LLST63
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x2e8
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10cb
	.uleb128 0x2e
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x2e8
	.4byte	0x4e8
	.4byte	.LLST64
	.uleb128 0x31
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x2ea
	.4byte	0x3d7
	.4byte	.LLST64
	.uleb128 0x3d
	.4byte	.LVL205
	.4byte	0x584
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x2f9
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1101
	.uleb128 0x2e
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x2f9
	.4byte	0x4e8
	.4byte	.LLST66
	.uleb128 0x2c
	.4byte	.LVL208
	.4byte	0x65a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF79
	.byte	0xa
	.byte	0x50
	.4byte	0x110c
	.uleb128 0x5
	.4byte	0x1111
	.uleb128 0x4
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x3f
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2d
	.4byte	0x72
	.uleb128 0x3f
	.4byte	.LASF81
	.byte	0x9
	.byte	0x7c
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0xc1
	.4byte	0x113e
	.uleb128 0x15
	.4byte	0x6b
	.2byte	0x27ff
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF82
	.byte	0xa
	.byte	0x4d
	.4byte	0x112d
	.uleb128 0x3f
	.4byte	.LASF83
	.byte	0x4
	.byte	0xb1
	.4byte	0xcc
	.uleb128 0x3f
	.4byte	.LASF84
	.byte	0x6
	.byte	0x9e
	.4byte	0x1a6
	.uleb128 0x3f
	.4byte	.LASF85
	.byte	0xb
	.byte	0x51
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF86
	.byte	0xb
	.byte	0x52
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF87
	.byte	0xc
	.byte	0x32
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF88
	.byte	0xc
	.byte	0x33
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF89
	.byte	0xc
	.byte	0x34
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF90
	.byte	0xc
	.byte	0x35
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2e
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x40
	.4byte	.LASF99
	.byte	0xd
	.byte	0x5f
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x2c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x48
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x35
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x49
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x35
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x4a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x35
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x3c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x3c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x3c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x17
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xb
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0xb
	.byte	0x7e
	.sleb128 -1
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0x76
	.sleb128 -4096
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 3924
	.4byte	.LVL92-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0xb
	.byte	0x7e
	.sleb128 -1
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0xb
	.byte	0x7e
	.sleb128 -2
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0x7f4
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL124-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL123-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL150-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL153-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 -28672
	.byte	0x9f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL167-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL181-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL199-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL205-1-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB155-.Ltext0
	.4byte	.LBE155-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB161-.Ltext0
	.4byte	.LBE161-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB165-.Ltext0
	.4byte	.LBE165-.Ltext0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB167-.Ltext0
	.4byte	.LBE167-.Ltext0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF46:
	.ascii	"needsupdate\000"
.LASF44:
	.ascii	"V_DrawNumPatch_f\000"
.LASF68:
	.ascii	"HUlib_initMText\000"
.LASF53:
	.ascii	"HUlib_initTextLine\000"
.LASF36:
	.ascii	"CR_BROWN\000"
.LASF73:
	.ascii	"HUlib_eraseMText\000"
.LASF38:
	.ascii	"CR_RED\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF83:
	.ascii	"automapmode\000"
.LASF12:
	.ascii	"VPT_NONE\000"
.LASF87:
	.ascii	"viewwidth\000"
.LASF37:
	.ascii	"CR_GOLD\000"
.LASF77:
	.ascii	"HUlib_drawIText\000"
.LASF7:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF34:
	.ascii	"CR_GRAY\000"
.LASF85:
	.ascii	"hud_list_bgon\000"
.LASF5:
	.ascii	"long int\000"
.LASF82:
	.ascii	"finesine\000"
.LASF33:
	.ascii	"CR_TAN\000"
.LASF92:
	.ascii	"key_enter\000"
.LASF31:
	.ascii	"patchnum_t\000"
.LASF96:
	.ascii	"HUlib_delCharFromTextLine\000"
.LASF76:
	.ascii	"HUlib_addPrefixToIText\000"
.LASF45:
	.ascii	"linelen\000"
.LASF60:
	.ascii	"HUlib_eraseTextLine\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF59:
	.ascii	"HUlib_drawTextLine\000"
.LASF75:
	.ascii	"HUlib_resetIText\000"
.LASF23:
	.ascii	"am_follow\000"
.LASF29:
	.ascii	"topoffset\000"
.LASF57:
	.ascii	"HUlib_delCharFromIText\000"
.LASF26:
	.ascii	"width\000"
.LASF39:
	.ascii	"CR_BLUE\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF14:
	.ascii	"VPT_TRANS\000"
.LASF91:
	.ascii	"key_backspace\000"
.LASF66:
	.ascii	"HUlib_drawSText\000"
.LASF89:
	.ascii	"viewwindowx\000"
.LASF90:
	.ascii	"viewwindowy\000"
.LASF20:
	.ascii	"am_active\000"
.LASF65:
	.ascii	"prefix\000"
.LASF32:
	.ascii	"CR_BRICK\000"
.LASF84:
	.ascii	"V_DrawNumPatch\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF93:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF97:
	.ascii	"HUlib_addCharToTextLine\000"
.LASF74:
	.ascii	"HUlib_initIText\000"
.LASF21:
	.ascii	"am_overlay\000"
.LASF78:
	.ascii	"HUlib_eraseIText\000"
.LASF54:
	.ascii	"HUlib_eraseMBg\000"
.LASF52:
	.ascii	"HUlib_clearTextLine\000"
.LASF69:
	.ascii	"bgfont\000"
.LASF86:
	.ascii	"hud_msg_lines\000"
.LASF30:
	.ascii	"lumpnum\000"
.LASF28:
	.ascii	"leftoffset\000"
.LASF42:
	.ascii	"CR_BLUE2\000"
.LASF64:
	.ascii	"HUlib_addMessageToSText\000"
.LASF58:
	.ascii	"drawcursor\000"
.LASF25:
	.ascii	"float\000"
.LASF15:
	.ascii	"VPT_STRETCH\000"
.LASF35:
	.ascii	"CR_GREEN\000"
.LASF71:
	.ascii	"HUlib_drawMBg\000"
.LASF11:
	.ascii	"_Bool\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF18:
	.ascii	"patch_translation_e\000"
.LASF3:
	.ascii	"short int\000"
.LASF56:
	.ascii	"HUlib_addLineToMText\000"
.LASF48:
	.ascii	"laston\000"
.LASF51:
	.ascii	"hu_itext_t\000"
.LASF98:
	.ascii	"HUlib_keyInIText\000"
.LASF22:
	.ascii	"am_rotate\000"
.LASF55:
	.ascii	"HUlib_addLineToSText\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"char\000"
.LASF40:
	.ascii	"CR_ORANGE\000"
.LASF16:
	.ascii	"boolean\000"
.LASF50:
	.ascii	"hu_mtext_t\000"
.LASF70:
	.ascii	"HUlib_addMessageToMText\000"
.LASF61:
	.ascii	"HUlib_initSText\000"
.LASF72:
	.ascii	"HUlib_drawMText\000"
.LASF79:
	.ascii	"finecosine\000"
.LASF67:
	.ascii	"HUlib_eraseSText\000"
.LASF43:
	.ascii	"CR_LIMIT\000"
.LASF17:
	.ascii	"fixed_t\000"
.LASF99:
	.ascii	"R_VideoErase\000"
.LASF62:
	.ascii	"font\000"
.LASF13:
	.ascii	"VPT_FLIP\000"
.LASF24:
	.ascii	"am_grid\000"
.LASF88:
	.ascii	"viewheight\000"
.LASF19:
	.ascii	"automapmode_e\000"
.LASF49:
	.ascii	"hu_stext_t\000"
.LASF94:
	.ascii	"c:/devl/prboom3ds/src/hu_lib.c\000"
.LASF63:
	.ascii	"startchar\000"
.LASF41:
	.ascii	"CR_YELLOW\000"
.LASF27:
	.ascii	"height\000"
.LASF95:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF47:
	.ascii	"hu_textline_t\000"
.LASF80:
	.ascii	"__ctype_ptr__\000"
.LASF81:
	.ascii	"SCREENWIDTH\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
