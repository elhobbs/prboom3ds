	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"r_things.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	msort, %function
msort:
.LFB16:
	.file 1 "c:/devl/prboom3ds/src/r_things.c"
	.loc 1 856 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 857 0
	cmp	r2, #15
	.loc 1 856 0
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
	.loc 1 856 0
	mov	lr, r0
	.loc 1 857 0
	bgt	.L2
.LVL1:
.LBB89:
	.loc 1 878 0 discriminator 1
	cmp	r2, #1
	ble	.L21
	sub	r2, r2, #-1073741823
.LVL2:
	add	r5, lr, r2, asl #2
.LVL3:
.L13:
.LBB90:
	.loc 1 880 0
	ldr	r4, [r0, #4]!
.LVL4:
	.loc 1 881 0
	ldr	r2, [r0, #-4]
	ldr	ip, [r4, #36]
	ldr	r1, [r2, #36]
	cmp	r1, ip
	bge	.L10
	mov	r3, r0
	b	.L12
.L22:
.LBB91:
	.loc 1 884 0 discriminator 1
	cmp	r3, lr
	beq	.L15
	ldr	r2, [r3, #-4]
	ldr	r1, [r2, #36]
.L12:
	.loc 1 884 0 is_stmt 0 discriminator 2
	cmp	ip, r1
	mov	r1, r3
	str	r2, [r3], #-4
	bgt	.L22
.L11:
	.loc 1 885 0 is_stmt 1
	str	r4, [r1]
.L10:
.LBE91:
.LBE90:
	.loc 1 878 0 discriminator 2
	cmp	r0, r5
	bne	.L13
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L15:
.LBB93:
.LBB92:
	mov	r1, lr
	b	.L11
.LVL5:
.L2:
	mov	r6, r1
	mov	r4, r0
.LBE92:
.LBE93:
.LBE89:
.LBB94:
	.loc 1 859 0
	mov	r8, r2, asr #1
.LVL6:
	rsb	r9, r8, r2
.LVL7:
	.loc 1 860 0
	add	r7, r0, r8, asl #2
.LVL8:
	mov	r5, r2
	.loc 1 862 0
	mov	r2, r8
.LVL9:
	bl	msort
.LVL10:
	.loc 1 863 0
	mov	r1, r6
	mov	r0, r7
	mov	r2, r9
	bl	msort
.LVL11:
	.loc 1 860 0
	mov	r1, r4
	add	r3, r6, #4
	.loc 1 865 0
	b	.L7
.LVL12:
.L24:
	.loc 1 865 0 is_stmt 0 discriminator 1
	subs	r8, r8, #1
.LVL13:
	movne	r2, #1
	moveq	r2, #0
	cmp	r2, #0
	.loc 1 866 0 is_stmt 1 discriminator 1
	str	lr, [r3, #-4]
	mov	r0, r3
.LVL14:
	add	r1, r1, #4
.LVL15:
	add	r3, r3, #4
	.loc 1 865 0 discriminator 1
	beq	.L23
.LVL16:
.L7:
	.loc 1 865 0 is_stmt 0 discriminator 5
	ldr	lr, [r1]
	ldr	ip, [r7]
	ldr	r0, [lr, #36]
	ldr	r2, [ip, #36]
	cmp	r0, r2
	bgt	.L24
	.loc 1 865 0 discriminator 2
	subs	r9, r9, #1
.LVL17:
	movne	r2, #1
	moveq	r2, #0
	cmp	r2, #0
	.loc 1 866 0 is_stmt 1 discriminator 2
	mov	r0, r3
.LVL18:
	str	ip, [r3, #-4]
	add	r7, r7, #4
.LVL19:
	add	r3, r3, #4
.LVL20:
	.loc 1 865 0 discriminator 2
	bne	.L7
.L23:
	.loc 1 868 0
	cmp	r9, #0
	.loc 1 869 0
	movne	r1, r7
.LVL21:
	movne	r2, r9, asl #2
	.loc 1 871 0
	moveq	r2, r8, asl #2
	bl	memcpy
.LVL22:
	.loc 1 873 0
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5, asl #2
.LBE94:
	.loc 1 889 0
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
.LVL23:
.LBB95:
	.loc 1 873 0
	b	memcpy
.LVL24:
.L21:
	.cfi_restore_state
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.LBE95:
	.cfi_endproc
.LFE16:
	.size	msort, .-msort
	.align	2
	.type	R_InstallSpriteLump, %function
R_InstallSpriteLump:
.LFB5:
	.loc 1 96 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL25:
	.loc 1 97 0
	cmp	r2, #8
	cmpls	r1, #28
	.loc 1 96 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 96 0
	mov	r4, r1
	mov	r7, r2
	mov	r6, r0
	mov	r5, r3
	.loc 1 97 0
	bhi	.L38
.LVL26:
.L26:
	.loc 1 100 0
	ldr	r2, .L39
	ldr	r3, [r2]
	cmp	r4, r3
	.loc 1 101 0
	strgt	r4, [r2]
	.loc 1 103 0
	cmp	r7, #0
	bne	.L28
.LBB100:
.LBB101:
	.loc 1 109 0
	ldr	r3, .L39+4
	rsb	r4, r4, r4, asl #3
.LVL27:
	ldr	r1, [r3]
	mov	r4, r4, asl #2
	ldr	r3, .L39+8
	add	ip, r4, #2
	add	lr, r4, #20
	add	r0, r4, #18
	rsb	r6, r1, r6
.LVL28:
	.loc 1 111 0
	add	r4, r2, r4
	add	r1, r3, ip
	.loc 1 109 0
	uxth	r6, r6
	add	ip, r3, lr
	add	r3, r3, r0
.L30:
.LVL29:
	.loc 1 107 0
	ldrsh	lr, [r1, #2]!
	add	ip, ip, #1
	cmn	lr, #1
	.loc 1 109 0
	streqh	r6, [r1]	@ movhi
	.loc 1 110 0
	streqb	r5, [ip, #-1]
	.loc 1 111 0
	streq	r7, [r4, #4]
	.loc 1 106 0
	cmp	r1, r3
	bne	.L30
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL30:
.L28:
.LBE101:
.LBE100:
	.loc 1 118 0
	rsb	ip, r4, r4, asl #3
	sub	r7, r7, #1
.LVL31:
	add	r3, r7, ip, asl #1
	add	r3, r2, r3, asl #1
	ldrsh	r2, [r3, #8]
	ldr	r4, .L39
.LVL32:
	cmn	r2, #1
	add	r3, r3, #4
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}
	.loc 1 122 0
	mov	r2, #1
	.loc 1 120 0
	ldr	r1, .L39+4
	.loc 1 121 0
	add	r4, r4, ip, asl #2
	.loc 1 120 0
	ldr	r1, [r1]
	.loc 1 121 0
	add	r7, r4, r7
.LVL33:
	.loc 1 120 0
	rsb	r6, r1, r6
.LVL34:
	.loc 1 121 0
	strb	r5, [r7, #24]
	.loc 1 122 0
	str	r2, [r4, #4]
	.loc 1 120 0
	strh	r6, [r3, #4]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL35:
.L38:
	.loc 1 98 0
	ldr	r0, .L39+12
.LVL36:
	mov	r1, r6
.LVL37:
	bl	I_Error
.LVL38:
	b	.L26
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	firstspritelump
	.word	.LANCHOR0+4
	.word	.LC0
	.cfi_endproc
.LFE5:
	.size	R_InstallSpriteLump, .-R_InstallSpriteLump
	.global	__aeabi_uidivmod
	.align	2
	.global	R_InitSprites
	.type	R_InitSprites, %function
R_InitSprites:
.LFB7:
	.loc 1 274 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL39:
	.loc 1 277 0
	mvn	r1, #0
	ldr	r3, .L86
	add	r2, r3, #1600
.LVL40:
.L42:
	.loc 1 277 0 is_stmt 0 discriminator 3
	str	r1, [r3, #4]!
	.loc 1 276 0 is_stmt 1 discriminator 3
	cmp	r3, r2
	bne	.L42
.LVL41:
	.loc 1 274 0
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
.LBB109:
.LBB110:
	.loc 1 154 0
	ldr	r3, .L86+4
	ldr	r8, .L86+8
	ldr	r3, [r3]
	ldr	r10, [r8]
.LBE110:
.LBE109:
	.loc 1 274 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
.LBB122:
.LBB120:
	.loc 1 154 0
	rsb	r10, r10, r3
.LVL42:
	.loc 1 158 0
	adds	r3, r10, #1
.LVL43:
	str	r3, [sp, #8]
	beq	.L41
	ldr	r3, [r0]
.LVL44:
	cmp	r3, #0
	beq	.L41
	mov	r2, r0
	mov	r3, #0
.L44:
.LVL45:
	.loc 1 162 0
	ldr	r4, [r2, #4]!
	add	r3, r3, #1
.LVL46:
	cmp	r4, #0
	bne	.L44
	.loc 1 165 0
	ldr	ip, .L86+12
	.loc 1 167 0
	mov	r1, #1
	mov	r2, r4
	mov	r10, r0
	mov	r0, r3, asl #3
.LVL47:
	.loc 1 165 0
	str	r3, [ip]
	.loc 1 167 0
	bl	Z_Malloc
.LVL48:
	ldr	r3, .L86+16
	.loc 1 172 0
	ldr	r6, [sp, #8]
	.loc 1 167 0
	str	r0, [r3]
	.loc 1 172 0
	mov	r1, #1
	mov	r2, r4
	mov	r0, r6, asl #3
	bl	Z_Malloc
.LVL49:
	mov	r3, r4
	mov	r5, r0
.LVL50:
	.loc 1 175 0
	mvn	r2, #0
	mov	r1, r6
.LVL51:
.L45:
	str	r2, [r5, r3, asl #3]
	.loc 1 174 0
	add	r3, r3, #1
.LVL52:
	cmp	r3, r1
	bne	.L45
	str	r10, [sp, #4]
	mov	fp, #0
.LBB111:
	.loc 1 179 0
	mov	r4, #2
	mov	r10, r5
.LVL53:
	ldr	r9, .L86+20
	ldr	r2, [r8]
	ldr	r6, [r9]
	add	r2, r2, r2, asl #2
	ldr	r7, [sp, #8]
	add	r6, r6, r2, asl #3
.LVL54:
.L46:
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	ldrb	r0, [r6, #3]	@ zero_extendqisi2
.LVL55:
	sub	r3, r3, r3, asl #2
	smlabb	r3, r4, r0, r3
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
.LVL56:
	ldrb	r0, [r6]	@ zero_extendqisi2
.LVL57:
	add	r3, r1, r3
	add	r0, r0, r3, asl #1
	mov	r1, r7
.LVL58:
	bl	__aeabi_uidivmod
.LVL59:
	.loc 1 180 0
	ldr	r3, [r10, r1, asl #3]
	add	r6, r6, #40
	str	r3, [r5, #4]
	.loc 1 181 0
	str	fp, [r10, r1, asl #3]
.LBE111:
	.loc 1 177 0
	add	fp, fp, #1
.LVL60:
	cmp	r7, fp
	add	r5, r5, #8
	bne	.L46
	.loc 1 187 0
	ldr	r3, .L86+12
	mov	r5, r10
	ldr	r3, [r3]
	ldr	r10, [sp, #4]
.LVL61:
	cmp	r3, #0
	ble	.L63
	mov	r3, #0
.LBB112:
	.loc 1 194 0
	ldr	r6, .L86+24
.LBE112:
	.loc 1 187 0
	str	r3, [sp, #4]
.LVL62:
	sub	r7, r10, #4
.LVL63:
.L62:
.LBB118:
	.loc 1 189 0
	ldr	r10, [r7, #4]!
.LVL64:
	.loc 1 190 0
	ldr	r1, [sp, #8]
	ldrb	r3, [r10, #1]	@ zero_extendqisi2
	ldrb	r0, [r10, #3]	@ zero_extendqisi2
	ldrb	r2, [r10, #2]	@ zero_extendqisi2
	sub	r3, r3, r3, asl #2
	add	r3, r3, r0, asl #1
	ldrb	r0, [r10]	@ zero_extendqisi2
	add	r3, r2, r3
	add	r0, r0, r3, asl #1
	bl	__aeabi_uidivmod
.LVL65:
	ldr	r4, [r5, r1, asl #3]
.LVL66:
	.loc 1 192 0
	cmp	r4, #0
	blt	.L49
	.loc 1 194 0
	ldr	r0, .L86+28
	mvn	r1, #0
	mov	r2, #812
	bl	memset
.LVL67:
	.loc 1 195 0
	mvn	r3, #0
	str	r3, [r6]
	b	.L53
.LVL68:
.L51:
	.loc 1 219 0
	add	r4, r5, r4, asl #3
.LVL69:
	ldr	r4, [r4, #4]
.LVL70:
	cmp	r4, #0
	blt	.L85
.LVL71:
.L53:
.LBB113:
	.loc 1 198 0
	ldr	r0, [r8]
	ldr	r3, [r9]
	add	r0, r4, r0
	add	r2, r0, r0, asl #2
	add	fp, r3, r2, asl #3
.LVL72:
	.loc 1 203 0
	ldrb	r1, [r3, r2, asl #3]	@ zero_extendqisi2
	ldrb	lr, [r10]	@ zero_extendqisi2
	ldrb	r3, [fp, #1]	@ zero_extendqisi2
	ldrb	r2, [r10, #1]	@ zero_extendqisi2
	eor	ip, lr, r1
	eor	r2, r2, r3
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	ldrb	r3, [r10, #2]	@ zero_extendqisi2
	orr	lr, r2, ip
	eor	r1, r1, r3
	ldrb	ip, [fp, #3]	@ zero_extendqisi2
	ldrb	r3, [r10, #3]	@ zero_extendqisi2
	orr	r2, lr, r1
	eor	r3, r3, ip
	orrs	r3, r2, r3
	bne	.L51
	.loc 1 209 0
	ldrb	r1, [fp, #4]	@ zero_extendqisi2
	.loc 1 210 0
	ldrb	r2, [fp, #5]	@ zero_extendqisi2
	.loc 1 208 0
	sub	r1, r1, #65
	sub	r2, r2, #48
	bl	R_InstallSpriteLump
.LVL73:
	.loc 1 212 0
	ldrb	r1, [fp, #6]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L51
	.loc 1 213 0
	ldr	r3, .L86+8
	.loc 1 215 0
	ldrb	r2, [fp, #7]	@ zero_extendqisi2
	.loc 1 213 0
	ldr	r0, [r3]
	sub	r2, r2, #48
	add	r0, r4, r0
	sub	r1, r1, #65
	mov	r3, #1
.LBE113:
	.loc 1 219 0
	add	r4, r5, r4, asl #3
.LVL74:
.LBB114:
	.loc 1 213 0
	bl	R_InstallSpriteLump
.LVL75:
.LBE114:
	.loc 1 219 0
	ldr	r4, [r4, #4]
.LVL76:
	cmp	r4, #0
	bge	.L53
.L85:
	.loc 1 222 0
	ldr	r0, [r6]
	ldr	r3, .L86+16
	ldr	r2, [sp, #4]
	ldr	r4, [r3]
.LVL77:
	add	r0, r0, #1
	mov	r3, r2, asl #3
	cmp	r0, #0
	str	r0, [r4, r2, asl #3]
	str	r3, [sp, #12]
	str	r0, [r6]
	add	r4, r4, r3
	beq	.L49
.LVL78:
.LBB115:
	.loc 1 225 0
	ble	.L55
	mov	r10, #65
.LVL79:
	ldr	fp, .L86+32
.LVL80:
.L61:
	.loc 1 226 0
	ldr	r3, [fp, #-18]
	cmn	r3, #1
	beq	.L57
	cmp	r3, #1
	bne	.L56
	sub	r4, fp, #16
	b	.L60
.L59:
.LVL81:
.LBB116:
	.loc 1 242 0
	cmp	r4, fp
	beq	.L56
.L60:
	.loc 1 243 0
	ldrsh	r3, [r4, #2]!
	cmn	r3, #1
	bne	.L59
	.loc 1 244 0
	ldr	r0, .L86+36
	ldr	r1, [r7]
	mov	r2, r10
	bl	I_Error
.LVL82:
	.loc 1 242 0
	cmp	r4, fp
	bne	.L60
.L56:
.LBE116:
	.loc 1 225 0
	ldr	r0, [r6]
	sub	r3, r10, #64
.LVL83:
	cmp	r0, r3
	add	fp, fp, #28
	add	r10, r10, #1
	bgt	.L61
	ldr	r3, .L86+16
.LVL84:
	ldr	r4, [r3]
	ldr	r3, [sp, #12]
	add	r4, r4, r3
.LVL85:
.L55:
	.loc 1 252 0
	rsb	r0, r0, r0, asl #3
	mov	r1, #1
	mov	r2, #0
	mov	r0, r0, asl #2
	bl	Z_Malloc
.LVL86:
	.loc 1 253 0
	ldr	r3, .L86+16
	ldr	r1, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [r6]
	add	r3, r3, r1
	.loc 1 251 0
	str	r0, [r4, #4]
	.loc 1 253 0
	rsb	r2, r2, r2, asl #3
	ldr	r0, [r3, #4]
	mov	r2, r2, asl #2
	ldr	r1, .L86+28
	bl	memcpy
.LVL87:
.L49:
.LBE115:
.LBE118:
	.loc 1 187 0
	ldr	r3, .L86+12
	ldr	r2, [sp, #4]
	ldr	r3, [r3]
	add	r2, r2, #1
	cmp	r2, r3
	str	r2, [sp, #4]
.LVL88:
	blt	.L62
.LVL89:
.L63:
	.loc 1 258 0
	mov	r0, r5
.LBE120:
.LBE122:
	.loc 1 279 0
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
.LVL90:
.LBB123:
.LBB121:
	.loc 1 258 0
	b	Z_Free
.LVL91:
.L57:
	.cfi_restore_state
.LBB119:
.LBB117:
	.loc 1 230 0
	ldr	r0, .L86+40
	ldr	r1, [r7]
	mov	r2, r10
	bl	I_Error
.LVL92:
	b	.L56
.LVL93:
.L41:
.LBE117:
.LBE119:
.LBE121:
.LBE123:
	.loc 1 279 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L87:
	.align	2
.L86:
	.word	negonearray-4
	.word	lastspritelump
	.word	firstspritelump
	.word	numsprites
	.word	sprites
	.word	lumpinfo
	.word	.LANCHOR0
	.word	.LANCHOR0+4
	.word	.LANCHOR0+22
	.word	.LC2
	.word	.LC1
	.cfi_endproc
.LFE7:
	.size	R_InitSprites, .-R_InitSprites
	.align	2
	.global	R_ClearSprites
	.type	R_ClearSprites, %function
R_ClearSprites:
.LFB8:
	.loc 1 287 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 288 0
	mov	r2, #0
	ldr	r3, .L89
	str	r2, [r3, #816]
	bx	lr
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.cfi_endproc
.LFE8:
	.size	R_ClearSprites, .-R_ClearSprites
	.align	2
	.global	R_DrawMaskedColumn
	.type	R_DrawMaskedColumn, %function
R_DrawMaskedColumn:
.LFB10:
	.loc 1 331 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL94:
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
	mov	r7, r3
	.loc 1 338 0
	ldr	r3, [r3]
.LVL95:
	.loc 1 331 0
	mov	r4, r2
	.loc 1 338 0
	mov	r2, r3
.LVL96:
	.loc 1 331 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 338 0
	str	r3, [sp, #4]
	.loc 1 337 0
	ldr	r3, [r0, #4]
	.loc 1 338 0
	cmp	r2, #0
	.loc 1 337 0
	str	r3, [r4, #24]
	.loc 1 335 0
	ldr	r3, [r4, #20]
	.loc 1 331 0
	str	r1, [sp, #12]
	.loc 1 335 0
	str	r3, [sp, #8]
.LVL97:
	.loc 1 338 0
	ble	.L96
	mov	r5, #0
	ldr	r10, .L101
	mov	r6, r5
	ldr	r9, .L101+4
	ldr	r8, .L101+8
	b	.L92
.LVL98:
.L95:
	.loc 1 338 0 is_stmt 0 discriminator 2
	ldr	r3, [sp, #4]
	cmp	r3, r6
	ble	.L96
.LVL99:
.L92:
.LBB124:
	.loc 1 339 0 is_stmt 1
	ldr	r1, [r7, #4]
	.loc 1 342 0
	ldr	r0, [r10]
	ldr	ip, [r1, r5]
	ldr	r3, [r9]
	.loc 1 339 0
	add	r1, r1, r5
.LVL100:
	.loc 1 342 0
	mla	r3, r0, ip, r3
.LVL101:
	.loc 1 343 0
	ldr	lr, [r1, #4]
	.loc 1 345 0
	add	r2, r3, #65280
	.loc 1 343 0
	mla	r3, lr, r0, r3
.LVL102:
	.loc 1 345 0
	add	r2, r2, #255
.LVL103:
	.loc 1 346 0
	sub	r3, r3, #1
.LVL104:
	mov	r3, r3, asr #16
.LVL105:
	.loc 1 345 0
	mov	r2, r2, asr #16
.LVL106:
	stmib	r4, {r2, r3}
	.loc 1 348 0
	ldr	r0, [r4]
.LVL107:
	ldr	lr, [r8]
.LVL108:
	.loc 1 351 0
	ldr	fp, .L101+12
	.loc 1 348 0
	ldr	lr, [lr, r0, asl #2]
	.loc 1 351 0
	ldr	fp, [fp]
	.loc 1 348 0
	cmp	r3, lr
	.loc 1 349 0
	subge	r3, lr, #1
	strge	r3, [r4, #8]
	.loc 1 351 0
	ldr	r0, [fp, r0, asl #2]
.LBE124:
	.loc 1 338 0
	add	r6, r6, #1
.LVL109:
.LBB125:
	.loc 1 351 0
	cmp	r2, r0
	.loc 1 352 0
	addle	r2, r0, #1
	strle	r2, [r4, #4]
	.loc 1 355 0
	cmp	r3, r2
	add	r5, r5, #12
	blt	.L95
	.loc 1 355 0 is_stmt 0 discriminator 1
	ldr	r2, .L101+16
	ldr	r2, [r2]
	cmp	r2, r3
	ble	.L95
	.loc 1 358 0 is_stmt 1
	ldr	r3, [sp, #56]
	.loc 1 357 0
	ldr	r0, [r7, #8]
	.loc 1 358 0
	ldr	r2, [r3, #8]
	.loc 1 359 0
	ldr	r3, [sp, #60]
	.loc 1 363 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL110:
	.loc 1 359 0
	ldr	r3, [r3, #8]
	.loc 1 361 0
	ldr	lr, [sp, #8]
	.loc 1 359 0
	add	r3, r3, ip
	str	r3, [r4, #40]
	.loc 1 366 0
	mov	r3, #1
	.loc 1 357 0
	add	r0, r0, ip
	.loc 1 358 0
	add	r2, r2, ip
	.loc 1 361 0
	sub	ip, lr, ip, asl #16
.LVL111:
	.loc 1 357 0
	str	r0, [r4, #32]
	.loc 1 366 0
	str	r3, [r4, #60]
	.loc 1 358 0
	str	r2, [r4, #36]
	.loc 1 367 0
	ldr	r3, [sp, #12]
	.loc 1 363 0
	str	r1, [r4, #56]
	.loc 1 361 0
	str	ip, [r4, #20]
	.loc 1 367 0
	mov	r0, r4
	blx	r3
.LVL112:
	ldr	r3, [r7]
	str	r3, [sp, #4]
	.loc 1 368 0
	mov	r3, #0
	str	r3, [r4, #60]
.LVL113:
.LBE125:
	.loc 1 338 0
	ldr	r3, [sp, #4]
	cmp	r3, r6
	bgt	.L92
.LVL114:
.L96:
	.loc 1 371 0
	ldr	r3, [sp, #8]
	str	r3, [r4, #20]
	.loc 1 372 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL115:
.L102:
	.align	2
.L101:
	.word	spryscale
	.word	sprtopscreen
	.word	mfloorclip
	.word	mceilingclip
	.word	viewheight
	.cfi_endproc
.LFE10:
	.size	R_DrawMaskedColumn, .-R_DrawMaskedColumn
	.global	__aeabi_ldivmod
	.align	2
	.type	R_DrawVisSprite.isra.1, %function
R_DrawVisSprite.isra.1:
.LFB21:
	.loc 1 379 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL116:
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
	.loc 1 383 0
	ldr	r7, .L128
	.loc 1 379 0
	mov	r10, r0
	.loc 1 383 0
	ldr	r3, [r7]
	ldr	r0, [r0, #48]
.LVL117:
	.loc 1 379 0
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	.loc 1 383 0
	add	r0, r0, r3
	bl	R_CachePatchNum
.LVL118:
	mov	r5, r0
.LVL119:
	.loc 1 389 0
	add	r0, sp, #12
.LVL120:
	bl	R_SetDefaultDrawColumnVars
.LVL121:
	.loc 1 390 0
	ldr	r3, [r10, #72]
	cmp	r3, #0
	.loc 1 391 0
	ldr	r3, .L128+4
	.loc 1 393 0
	movne	r2, #1
	.loc 1 391 0
	ldrne	r1, [r3, #48]
	.loc 1 395 0
	ldreq	r1, [r3, #44]
	.loc 1 392 0
	ldrne	r4, [r3, #40]
	.loc 1 396 0
	ldreq	r4, [r3, #32]
.LVL122:
	.loc 1 397 0
	ldreq	r2, [r3, #36]
.LVL123:
	.loc 1 400 0
	ldr	r3, [r10, #64]
	.loc 1 395 0
	str	r1, [sp, #76]
	.loc 1 406 0
	cmp	r3, #0
	.loc 1 400 0
	str	r3, [sp, #56]
	.loc 1 401 0
	str	r3, [sp, #60]
	.loc 1 406 0
	beq	.L125
	.loc 1 409 0
	ldrd	r0, [r10, #56]
	mov	r9, #0
	and	r8, r0, #201326592
	orrs	r3, r8, r9
	bne	.L126
	.loc 1 416 0
	mov	r1, #0
	and	r0, r0, #1073741824
	orrs	r3, r0, r1
	beq	.L109
	ldr	r3, .L128+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L127
.L109:
	.loc 1 422 0
	mov	r0, #0
	mov	r1, r4
	bl	R_GetDrawColumnFunc
.LVL124:
	mov	r6, r0
.LVL125:
.L107:
	.loc 1 425 0
	ldr	fp, [r10, #36]
.LVL126:
.LBB126:
.LBB127:
.LBB128:
.LBB129:
	.file 2 "c:/devl/prboom3ds/src/m_fixed.h"
	.loc 2 59 0
	mov	r2, fp, asr #31
.LVL127:
	.loc 2 60 0
	eor	r3, r2, fp
	rsb	r3, r2, r3
.LBE129:
.LBE128:
	.loc 2 84 0
	cmp	r3, #4
	bgt	.L110
	eor	r0, r2, #-2147483648
	mvn	r0, r0
	mov	r8, fp
	mov	r9, fp, asr #31
.LVL128:
.L111:
.LBE127:
.LBE126:
	.loc 1 426 0
	ldr	r3, [r10, #44]
	.loc 1 428 0
	cmp	r4, #2
.LBB131:
.LBB132:
	.loc 2 72 0
	mul	r2, r3, r9
	mov	r1, r3, asr #31
	mla	r2, r8, r1, r2
	umull	r8, r9, r3, r8
.LVL129:
.LBE132:
.LBE131:
	.loc 1 426 0
	str	r3, [sp, #32]
	.loc 1 431 0
	ldr	r3, .L128+12
.LBB136:
.LBB133:
	.loc 2 72 0
	add	r9, r2, r9
.LBE133:
.LBE136:
	.loc 1 433 0
	ldr	r1, [r10, #8]
	.loc 1 427 0
	ldr	r4, [r10, #32]
.LVL130:
.LBB137:
.LBB134:
	.loc 2 72 0
	mov	r2, r8, lsr #16
.LBE134:
.LBE137:
	.loc 1 431 0
	ldr	r3, [r3]
	.loc 1 433 0
	ldr	lr, [r10, #12]
	.loc 1 425 0
	str	r0, [sp, #28]
.LBB138:
.LBB135:
	.loc 2 72 0
	orr	r2, r2, r9, asl #16
.LBE135:
.LBE138:
	.loc 1 431 0
	ldr	ip, .L128+16
	.loc 1 430 0
	ldr	r0, .L128+20
	.loc 1 429 0
	subeq	r4, r4, #32768
.LVL131:
	.loc 1 431 0
	rsb	r3, r2, r3
	.loc 1 433 0
	cmp	r1, lr
	.loc 1 431 0
	str	r3, [ip]
	.loc 1 433 0
	str	r1, [sp, #12]
	.loc 1 430 0
	str	fp, [r0]
.LVL132:
	.loc 1 433 0
	bgt	.L115
.LVL133:
.L114:
	.loc 1 435 0
	mov	r8, r4, asr #16
.LVL134:
	.loc 1 438 0
	mov	r1, r8
	mov	r0, r5
	.loc 1 436 0
	str	r4, [sp, #40]
	.loc 1 438 0
	bl	R_GetPatchColumnClamped
.LVL135:
	sub	r1, r8, #1
	mov	r9, r0
	mov	r0, r5
	bl	R_GetPatchColumnClamped
.LVL136:
	add	r1, r8, #1
	mov	fp, r0
	mov	r0, r5
	bl	R_GetPatchColumnClamped
.LVL137:
	mov	r3, r9
	str	r0, [sp, #4]
	mov	r1, r6
	add	r2, sp, #12
	str	fp, [sp]
	mov	r0, r5
	bl	R_DrawMaskedColumn
.LVL138:
	.loc 1 433 0
	ldr	r3, [sp, #12]
	ldr	r1, [r10, #12]
	add	r3, r3, #1
	ldr	r2, [r10, #40]
	cmp	r3, r1
	str	r3, [sp, #12]
	add	r4, r4, r2
.LVL139:
	ble	.L114
.LVL140:
.L115:
	.loc 1 447 0
	ldr	r0, [r10, #48]
	ldr	r3, [r7]
	add	r0, r0, r3
	bl	R_UnlockPatchNum
.LVL141:
	.loc 1 448 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL142:
.L110:
	.cfi_restore_state
.LBB139:
.LBB130:
	.loc 2 85 0
	mov	r9, fp, asr #31
	mov	r2, fp
.LVL143:
	mov	r3, r9
	mov	r0, #0
	mov	r1, #1
	mov	r8, fp
	bl	__aeabi_ldivmod
.LVL144:
	b	.L111
.LVL145:
.L126:
.LBE130:
.LBE139:
	.loc 1 411 0
	mov	r1, r4
	mov	r0, #2
	bl	R_GetDrawColumnFunc
.LVL146:
	mov	r6, r0
.LVL147:
	.loc 1 413 0
	ldrd	r0, [r10, #56]
.LVL148:
	mov	r1, #0
	and	r0, r0, #201326592
	.loc 1 412 0
	ldr	r2, .L128+24
	.loc 1 413 0
	mov	r3, r0, lsr #18
	orr	r3, r3, r1, asl #14
	.loc 1 412 0
	ldr	r2, [r2]
	sub	r3, r3, #256
	add	r3, r2, r3
	str	r3, [sp, #64]
	b	.L107
.LVL149:
.L127:
	.loc 1 418 0
	mov	r0, #1
	mov	r1, r4
	bl	R_GetDrawColumnFunc
.LVL150:
	.loc 1 419 0
	ldr	r2, .L128+28
	ldr	r3, .L128+32
	ldr	r2, [r2]
	.loc 1 418 0
	mov	r6, r0
.LVL151:
	.loc 1 419 0
	str	r2, [r3]
	b	.L107
.LVL152:
.L125:
	.loc 1 407 0
	mov	r0, #3
	mov	r1, r4
	bl	R_GetDrawColumnFunc
.LVL153:
	mov	r6, r0
.LVL154:
	b	.L107
.L129:
	.align	2
.L128:
	.word	firstspritelump
	.word	drawvars
	.word	general_translucency
	.word	centeryfrac
	.word	sprtopscreen
	.word	spryscale
	.word	translationtables
	.word	main_tranmap
	.word	tranmap
	.cfi_endproc
.LFE21:
	.size	R_DrawVisSprite.isra.1, .-R_DrawVisSprite.isra.1
	.align	2
	.type	R_DrawSprite, %function
R_DrawSprite:
.LFB18:
	.loc 1 923 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 3208
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL155:
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
	.loc 1 933 0
	ldr	r8, [r0, #8]
.LVL156:
	ldr	r4, [r0, #12]
	.loc 1 923 0
	sub	sp, sp, #3200
	.cfi_def_cfa_offset 3236
	.loc 1 933 0
	cmp	r8, r4
	.loc 1 923 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 3248
	.loc 1 923 0
	mov	r9, r0
	.loc 1 933 0
	bgt	.L210
	.loc 1 934 0
	mvn	r0, #1
.LVL157:
	sub	r1, r8, #-1073741823
	add	r3, sp, #1600
	mov	r1, r1, asl #2
	add	r3, r3, #8
	add	fp, sp, #8
	add	r2, r3, r1
	add	ip, r3, r4, asl #2
	add	r1, fp, r1
.LVL158:
.L133:
	.loc 1 934 0 is_stmt 0 discriminator 3
	str	r0, [r2, #4]!
	.loc 1 933 0 is_stmt 1 discriminator 3
	cmp	r2, ip
	.loc 1 934 0 discriminator 3
	str	r0, [r1, #4]!
	.loc 1 933 0 discriminator 3
	bne	.L133
.L134:
	mov	r7, r3
	.loc 1 945 0
	ldr	r2, .L212
	ldr	r6, [r2]
.LVL159:
	ldr	r2, .L212+4
	ldr	r10, [r2]
.L132:
	.loc 1 945 0 is_stmt 0 discriminator 1
	cmp	r6, r10
	sub	r6, r6, #60
.LVL160:
	bls	.L211
.L145:
	.loc 1 947 0 is_stmt 1
	ldr	r5, [r6, #4]
	cmp	r4, r5
	blt	.L132
	.loc 1 947 0 is_stmt 0 discriminator 1
	ldr	r3, [r6, #8]
	cmp	r3, r8
	blt	.L132
	.loc 1 948 0 is_stmt 1 discriminator 2
	ldr	ip, [r6, #24]
	.loc 1 947 0 discriminator 2
	cmp	ip, #0
	bne	.L136
	.loc 1 948 0
	ldr	r2, [r6, #56]
	cmp	r2, #0
	beq	.L132
.L136:
	.loc 1 954 0
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #16]
	.loc 1 951 0
	cmp	r5, r8
	movlt	r5, r8
.LVL161:
	.loc 1 952 0
	cmp	r3, r4
	movge	r3, r4
.LVL162:
	.loc 1 954 0
	cmp	r2, r1
	movle	r0, r2
	movle	r2, r1
	movle	r1, r0
.LVL163:
	.loc 1 965 0
	ldr	r0, [r9, #36]
	cmp	r2, r0
	blt	.L138
	.loc 1 965 0 is_stmt 0 discriminator 1
	cmp	r1, r0
	bge	.L139
	.loc 1 966 0 is_stmt 1 discriminator 2
	ldr	r0, [r9, #16]
	ldr	r1, [r9, #20]
.LVL164:
	ldr	r2, [r6]
.LVL165:
	str	r3, [sp, #4]
	str	ip, [sp]
	bl	R_PointOnSegSide
.LVL166:
	.loc 1 965 0 discriminator 2
	cmp	r0, #0
	ldr	ip, [sp]
	ldr	r3, [sp, #4]
	bne	.L139
.LVL167:
.L138:
	.loc 1 968 0
	ldr	r2, [r6, #56]
	cmp	r2, #0
	beq	.L132
	.loc 1 969 0
	mov	r2, r3
	mov	r0, r6
	mov	r1, r5
	bl	R_RenderMaskedSegRange
.LVL168:
	ldr	r3, .L212+4
	ldr	r4, [r9, #12]
	ldr	r10, [r3]
	ldr	r8, [r9, #8]
	.loc 1 945 0
	cmp	r6, r10
	sub	r6, r6, #60
.LVL169:
	bhi	.L145
.LVL170:
.L211:
	.loc 1 993 0
	ldr	r2, [r9, #68]
	mov	r3, r7
	cmn	r2, #1
	beq	.L151
.LBB140:
	.loc 1 997 0
	mov	r7, #196
	ldr	r0, .L212+8
	.loc 1 996 0
	ldr	r1, .L212+12
	.loc 1 997 0
	ldr	lr, [r0]
	.loc 1 996 0
	ldr	r1, [r1]
	.loc 1 997 0
	mla	r2, r7, r2, lr
	.loc 1 996 0
	ldr	r1, [r1]
	.loc 1 997 0
	ldr	r6, [r2, #12]
.LVL171:
	.loc 1 996 0
	ldr	r1, [r1, #64]
	.loc 1 997 0
	ldr	r0, [r9, #24]
	.loc 1 996 0
	ldr	r1, [r1]
	.loc 1 997 0
	cmp	r6, r0
	.loc 1 996 0
	ldr	r5, [r1, #128]
.LVL172:
	.loc 1 997 0
	ble	.L152
	.loc 1 998 0 discriminator 1
	ldr	r1, .L212+16
	ldr	r0, [r9, #36]
	ldr	r10, [r1]
	ldr	ip, .L212+20
	rsb	r6, r10, r6
.LVL173:
.LBB141:
.LBB142:
	.loc 2 72 0 discriminator 1
	smull	r0, r1, r6, r0
.LVL174:
.LBE142:
.LBE141:
	.loc 1 998 0 discriminator 1
	ldr	ip, [ip]
.LBB144:
.LBB143:
	.loc 2 72 0 discriminator 1
	mov	r0, r0, lsr #16
	orr	r0, r0, r1, asl #16
.LVL175:
.LBE143:
.LBE144:
	.loc 1 997 0 discriminator 1
	subs	r0, ip, r0
.LVL176:
	bmi	.L152
	.loc 1 999 0
	ldr	ip, .L212+24
	mov	r0, r0, asr #16
.LVL177:
	.loc 1 998 0
	ldr	r1, [ip]
	cmp	r0, r1
	bge	.L152
	.loc 1 1000 0
	cmp	r6, #0
	ble	.L153
	.loc 1 1000 0 is_stmt 0 discriminator 1
	cmn	r5, #1
	beq	.L152
	.loc 1 1000 0 discriminator 2
	mla	r7, r7, r5, lr
	ldr	r1, [r7, #12]
	cmp	r10, r1
	ble	.L154
.L153:
	.loc 1 1002 0 is_stmt 1
	cmp	r8, r4
	bgt	.L152
	sub	r1, r8, #-1073741823
	add	r1, fp, r1, asl #2
	add	r7, fp, r4, asl #2
.LVL178:
.L156:
	.loc 1 1003 0
	ldr	r6, [r1, #4]!
	cmn	r6, #2
	movne	ip, #0
	moveq	ip, #1
	cmp	r0, r6
	orrlt	ip, ip, #1
	cmp	ip, #0
	.loc 1 1004 0
	strne	r0, [r1]
	.loc 1 1002 0
	cmp	r1, r7
	bne	.L156
.LVL179:
.L152:
	.loc 1 1013 0
	ldr	r2, [r2, #16]
.LVL180:
	ldr	r1, [r9, #28]
	cmp	r2, r1
	blt	.L150
.LVL181:
.L151:
.LBE140:
	.loc 1 1033 0
	cmp	r8, r4
	bgt	.L148
	ldr	ip, .L212+24
	mov	r4, r4, asl #2
	sub	r1, r8, #-1073741823
.L147:
	.loc 1 1038 0
	mvn	r5, #0
	mov	r1, r1, asl #2
	.loc 1 1035 0
	ldr	lr, [ip]
	add	r2, fp, r1
	add	ip, fp, r4
	add	r1, r3, r1
.L168:
	.loc 1 1034 0
	ldr	r0, [r2, #4]!
	cmn	r0, #2
	.loc 1 1037 0
	ldr	r0, [r1, #4]!
	.loc 1 1035 0
	streq	lr, [r2]
	.loc 1 1037 0
	cmn	r0, #2
	.loc 1 1038 0
	streq	r5, [r1]
	.loc 1 1033 0
	cmp	r2, ip
	bne	.L168
.L148:
	.loc 1 1041 0
	ldr	r1, .L212+28
	.loc 1 1042 0
	ldr	r2, .L212+32
	.loc 1 1043 0
	mov	r0, r9
	.loc 1 1041 0
	str	fp, [r1]
	.loc 1 1042 0
	str	r3, [r2]
	.loc 1 1043 0
	bl	R_DrawVisSprite.isra.1
.LVL182:
	.loc 1 1044 0
	add	sp, sp, #3200
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL183:
.L139:
	.cfi_restore_state
	.loc 1 976 0
	tst	ip, #1
	beq	.L140
	.loc 1 976 0 is_stmt 0 discriminator 1
	ldr	r1, [r9, #24]
	ldr	r2, [r6, #28]
	cmp	r1, r2
	bge	.L140
.LVL184:
	.loc 1 977 0 is_stmt 1 discriminator 1
	cmp	r5, r3
	bgt	.L140
	sub	r2, r5, #-1073741823
	add	r2, fp, r2, asl #2
	add	r0, fp, r3, asl #2
.LVL185:
.L142:
	.loc 1 978 0
	ldr	r1, [r2, #4]!
	cmn	r1, #2
	.loc 1 979 0
	ldreq	ip, [r6, #52]
	rsbeq	r1, fp, r2
	ldreq	r1, [ip, r1]
	streq	r1, [r2]
	.loc 1 977 0
	cmp	r2, r0
	bne	.L142
	ldr	ip, [r6, #24]
.L140:
	.loc 1 981 0
	tst	ip, #2
	beq	.L132
	.loc 1 981 0 is_stmt 0 discriminator 1
	ldr	r1, [r9, #28]
	ldr	r2, [r6, #32]
	cmp	r1, r2
	ble	.L132
.LVL186:
	.loc 1 982 0 is_stmt 1 discriminator 1
	cmp	r5, r3
	bgt	.L132
	sub	r1, r5, #-1073741823
	add	r1, r7, r1, asl #2
	add	r3, r7, r3, asl #2
.LVL187:
.L144:
	.loc 1 983 0
	ldr	r2, [r1, #4]!
	cmn	r2, #2
	.loc 1 984 0
	ldreq	r0, [r6, #48]
	rsbeq	r2, r7, r1
	ldreq	r2, [r0, r2]
	streq	r2, [r1]
	.loc 1 982 0
	cmp	r1, r3
	bne	.L144
	b	.L132
.LVL188:
.L150:
.LBB149:
	.loc 1 1014 0 discriminator 1
	ldr	r1, .L212+16
	ldr	r0, [r9, #36]
	ldr	r7, [r1]
	ldr	ip, .L212+20
	rsb	r2, r7, r2
.LVL189:
.LBB145:
.LBB146:
	.loc 2 72 0 discriminator 1
	smull	r0, r1, r2, r0
.LVL190:
.LBE146:
.LBE145:
	.loc 1 1014 0 discriminator 1
	ldr	ip, [ip]
.LBB148:
.LBB147:
	.loc 2 72 0 discriminator 1
	mov	r2, r0, lsr #16
.LVL191:
	orr	r2, r2, r1, asl #16
.LVL192:
.LBE147:
.LBE148:
	.loc 1 1013 0 discriminator 1
	subs	r2, ip, r2
.LVL193:
	bmi	.L151
	.loc 1 1015 0
	ldr	ip, .L212+24
	mov	r6, r2, asr #16
.LVL194:
	.loc 1 1014 0
	ldr	r2, [ip]
	cmp	r6, r2
	bge	.L151
	.loc 1 1016 0
	cmn	r5, #1
	beq	.L159
	.loc 1 1016 0 is_stmt 0 discriminator 1
	mov	r2, #196
.LVL195:
	mla	lr, r2, r5, lr
.LVL196:
	ldr	r2, [lr, #16]
.LVL197:
	cmp	r7, r2
	blt	.L159
	.loc 1 1018 0 is_stmt 1
	cmp	r8, r4
	suble	r1, r8, #-1073741823
	movle	r4, r4, asl #2
	addle	lr, fp, r1, asl #2
	addle	r5, fp, r4
.LVL198:
	bgt	.L148
.LVL199:
.L162:
	.loc 1 1019 0
	ldr	r0, [lr, #4]!
	cmn	r0, #2
	movne	r2, #0
	moveq	r2, #1
	cmp	r6, r0
	orrlt	r2, r2, #1
	cmp	r2, #0
	.loc 1 1020 0
	strne	r6, [lr]
	.loc 1 1018 0
	cmp	lr, r5
	bne	.L162
	b	.L147
.LVL200:
.L159:
	.loc 1 1023 0
	cmp	r8, r4
	bgt	.L148
	sub	r1, r8, #-1073741823
	mov	r4, r4, asl #2
	add	lr, r3, r1, asl #2
	add	r5, r3, r4
.LVL201:
.L165:
	.loc 1 1024 0
	ldr	r0, [lr, #4]!
	cmn	r0, #2
	movne	r2, #0
	moveq	r2, #1
	cmp	r6, r0
	orrgt	r2, r2, #1
	cmp	r2, #0
	.loc 1 1025 0
	strne	r6, [lr]
	.loc 1 1023 0
	cmp	lr, r5
	bne	.L165
	b	.L147
.LVL202:
.L154:
	.loc 1 1008 0 discriminator 1
	cmp	r8, r4
	bgt	.L152
	sub	r1, r8, #-1073741823
	add	r1, r3, r1, asl #2
	add	r7, r3, r4, asl #2
.LVL203:
.L158:
	.loc 1 1009 0
	ldr	r6, [r1, #4]!
	cmn	r6, #2
	movne	ip, #0
	moveq	ip, #1
	cmp	r0, r6
	orrgt	ip, ip, #1
	cmp	ip, #0
	.loc 1 1010 0
	strne	r0, [r1]
	.loc 1 1008 0
	cmp	r1, r7
	bne	.L158
	b	.L152
.LVL204:
.L210:
	add	r3, sp, #1600
	add	r3, r3, #8
	add	fp, sp, #8
	b	.L134
.L213:
	.align	2
.L212:
	.word	ds_p
	.word	drawsegs
	.word	sectors
	.word	viewplayer
	.word	viewz
	.word	centeryfrac
	.word	viewheight
	.word	mfloorclip
	.word	mceilingclip
.LBE149:
	.cfi_endproc
.LFE18:
	.size	R_DrawSprite, .-R_DrawSprite
	.align	2
	.global	R_AddSprites
	.type	R_AddSprites, %function
R_AddSprites:
.LFB13:
	.loc 1 663 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL205:
	.loc 1 664 0
	ldr	r3, [r0]
.LVL206:
	.loc 1 672 0
	ldr	r2, .L275
	ldr	r0, [r3, #88]
.LVL207:
	ldr	r2, [r2]
	cmp	r0, r2
	bxeq	lr
	.loc 1 663 0
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
	.loc 1 680 0
	ldr	r6, [r3, #92]
.LVL208:
	.loc 1 663 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 1 680 0
	cmp	r6, #0
	.loc 1 676 0
	str	r2, [r3, #88]
	.loc 1 680 0
	beq	.L214
	str	r1, [sp, #48]
.LVL209:
.L253:
.LBB200:
.LBB201:
	.loc 1 477 0
	ldr	r3, .L275+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L217
	.loc 1 479 0
	ldr	r3, .L275+8
	ldr	r10, [r6, #192]
	ldr	r2, [r3, #12]
	.loc 1 480 0
	ldr	fp, [r6, #196]
	.loc 1 481 0
	ldr	lr, [r6, #200]
	.loc 1 479 0
	ldr	r4, [r6, #24]
	.loc 1 480 0
	ldr	r0, [r6, #28]
	.loc 1 481 0
	ldr	r3, [r6, #32]
	.loc 1 479 0
	rsb	r4, r10, r4
.LVL210:
	.loc 1 480 0
	rsb	r0, fp, r0
	.loc 1 481 0
	rsb	r3, lr, r3
.LBB202:
.LBB203:
	.loc 2 72 0
	smull	r4, r5, r2, r4
.LVL211:
.LBE203:
.LBE202:
.LBB206:
.LBB207:
	smull	r0, r1, r2, r0
.LBE207:
.LBE206:
.LBB210:
.LBB211:
	smull	r2, r3, r2, r3
.LVL212:
	mov	r2, r2, lsr #16
.LBE211:
.LBE210:
.LBB213:
.LBB204:
	mov	ip, r4, lsr #16
.LBE204:
.LBE213:
.LBB214:
.LBB208:
	mov	r0, r0, lsr #16
.LBE208:
.LBE214:
.LBB215:
.LBB212:
	orr	r2, r2, r3, asl #16
.LBE212:
.LBE215:
.LBB216:
.LBB205:
	orr	ip, ip, r5, asl #16
.LBE205:
.LBE216:
.LBB217:
.LBB209:
	orr	r0, r0, r1, asl #16
.LBE209:
.LBE217:
	.loc 1 481 0
	add	r3, lr, r2
	.loc 1 479 0
	add	r10, r10, ip
.LVL213:
	.loc 1 480 0
	add	fp, fp, r0
.LVL214:
	.loc 1 481 0
	str	r3, [sp, #4]
.LVL215:
.L218:
	.loc 1 489 0
	ldr	r3, .L275+12
	ldr	r8, [r3]
	.loc 1 490 0
	ldr	r3, .L275+16
	.loc 1 489 0
	rsb	r8, r8, r10
.LVL216:
	.loc 1 490 0
	ldr	r7, [r3]
	.loc 1 492 0
	ldr	r3, .L275+20
	.loc 1 490 0
	rsb	r7, r7, fp
.LVL217:
	.loc 1 492 0
	ldr	ip, [r3]
.LVL218:
	.loc 1 493 0
	ldr	r3, .L275+24
	ldr	r9, [r3]
.LVL219:
.LBB218:
.LBB219:
	.loc 2 72 0
	smull	r2, r3, r8, ip
.LBE219:
.LBE218:
.LBB221:
.LBB222:
	smull	r0, r1, r7, r9
.LBE222:
.LBE221:
.LBB224:
.LBB220:
	mov	r4, r2, lsr #16
	orr	r4, r4, r3, asl #16
.LBE220:
.LBE224:
.LBB225:
.LBB223:
	mov	r3, r0, lsr #16
	orr	r3, r3, r1, asl #16
.LBE223:
.LBE225:
	.loc 1 495 0
	add	r4, r4, r3
.LVL220:
	.loc 1 498 0
	cmp	r4, #262144
	blt	.L220
	.loc 1 501 0
	ldr	r3, .L275+28
	ldr	r0, [r3]
.LVL221:
.LBB226:
.LBB227:
.LBB228:
.LBB229:
	.loc 2 59 0
	mov	r2, r0, asr #31
.LVL222:
	.loc 2 60 0
	eor	r3, r2, r0
	rsb	r3, r2, r3
.LBE229:
.LBE228:
	.loc 2 84 0
	cmp	r4, r3, asr #14
	bgt	.L221
	eor	r5, r4, r0
	mov	r5, r5, asr #31
	eor	r5, r5, #-2147483648
	mvn	r5, r5
.LVL223:
.L222:
.LBE227:
.LBE226:
.LBB231:
.LBB232:
	.loc 2 72 0
	smull	r0, r1, ip, r7
.LBE232:
.LBE231:
.LBB235:
.LBB236:
	smull	r8, r9, r8, r9
.LVL224:
.LBE236:
.LBE235:
.LBB239:
.LBB233:
	mov	r3, r0, lsr #16
.LBE233:
.LBE239:
.LBB240:
.LBB237:
	mov	r7, r8, lsr #16
.LVL225:
.LBE237:
.LBE240:
.LBB241:
.LBB234:
	orr	r3, r3, r1, asl #16
.LBE234:
.LBE241:
.LBB242:
.LBB238:
	orr	r7, r7, r9, asl #16
.LBE238:
.LBE242:
	.loc 1 505 0
	rsb	r7, r3, r7
.LVL226:
.LBB243:
.LBB244:
	.loc 2 59 0
	mov	r2, r7, asr #31
.LVL227:
	.loc 2 60 0
	eor	r3, r2, r7
	rsb	r3, r2, r3
.LBE244:
.LBE243:
	.loc 1 508 0
	cmp	r3, r4, asl #2
	bgt	.L220
	.loc 1 517 0
	ldr	r3, .L275+32
	ldrb	r1, [r6, #48]	@ zero_extendqisi2
	ldr	r8, [r3]
	add	r8, r8, r1, asl #3
.LVL228:
	.loc 1 525 0
	ldr	r2, [r8, #4]
.LVL229:
	cmp	r2, #0
	beq	.L268
.LVL230:
.L224:
	.loc 1 529 0
	ldr	r3, [r6, #52]
	mov	r3, r3, asl #17
	mov	r3, r3, lsr #17
	rsb	r3, r3, r3, asl #3
	.loc 1 531 0
	ldr	r1, [r2, r3, asl #2]
	.loc 1 529 0
	add	r8, r2, r3, asl #2
.LVL231:
	.loc 1 531 0
	cmp	r1, #0
	bne	.L269
	.loc 1 542 0
	ldrsh	r3, [r8, #4]
	str	r3, [sp, #8]
.LVL232:
	.loc 1 543 0
	ldrb	r3, [r8, #20]	@ zero_extendqisi2
.LVL233:
	str	r3, [sp, #12]
.LVL234:
.L226:
.LBB245:
	.loc 1 547 0
	ldr	r3, .L275+36
	ldr	r0, [r3]
	ldr	r3, [sp, #8]
	add	r0, r3, r0
	bl	R_CachePatchNum
.LVL235:
	.loc 1 552 0
	ldr	r3, [sp, #12]
	.loc 1 547 0
	mov	r1, r0
.LVL236:
	.loc 1 552 0
	cmp	r3, #0
	.loc 1 553 0
	ldrne	r3, [r0]
	ldrne	r2, [r0, #16]
	movne	r0, r3
.LVL237:
	ldreq	r0, [r1]
	.loc 1 555 0
	ldreq	r2, [r1, #16]
	.loc 1 553 0
	rsbne	r2, r2, r3
	.loc 1 555 0
	sub	r2, r7, r2, asl #16
.LVL238:
	.loc 1 559 0
	mov	r3, r0, asl #16
	add	r8, r2, r3
.LVL239:
.LBB246:
.LBB247:
	.loc 2 72 0
	smull	r8, r9, r5, r8
.LBE247:
.LBE246:
	.loc 1 559 0
	str	r3, [sp, #32]
.LBB250:
.LBB251:
	.loc 2 72 0
	smull	r2, r3, r2, r5
.LVL240:
.LBE251:
.LBE250:
	.loc 1 557 0
	ldr	ip, .L275+40
	.loc 1 564 0
	ldr	lr, .L275+36
	.loc 1 557 0
	ldr	ip, [ip]
.LBB256:
.LBB248:
	.loc 2 72 0
	mov	r0, r8, lsr #16
.LBE248:
.LBE256:
.LBB257:
.LBB252:
	mov	r2, r2, lsr #16
	orr	r2, r2, r3, asl #16
.LBE252:
.LBE257:
.LBB258:
.LBB249:
	orr	r0, r0, r9, asl #16
.LBE249:
.LBE258:
	.loc 1 564 0
	ldr	r3, [sp, #8]
	ldr	lr, [lr]
	.loc 1 560 0
	add	r0, ip, r0
	mov	r9, r0, asr #16
.LVL241:
	.loc 1 564 0
	add	r0, r3, lr
	.loc 1 562 0
	ldr	r3, [r1, #20]
	.loc 1 557 0
	add	ip, ip, r2
	.loc 1 562 0
	str	r3, [sp, #24]
	.loc 1 560 0
	sub	r3, r9, #1
	mov	r7, r3
.LVL242:
	str	r3, [sp, #28]
	.loc 1 557 0
	mov	r8, ip, asr #16
.LVL243:
	.loc 1 564 0
	bl	R_UnlockPatchNum
.LVL244:
.LBB259:
.LBB253:
	.loc 2 72 0
	mov	r2, r5
.LBE253:
.LBE259:
.LBE245:
	.loc 1 568 0
	ldr	r3, .L275+44
	ldr	r9, [r3]
.LBB262:
.LBB260:
.LBB254:
	.loc 2 72 0
	mov	r3, r5, asr #31
.LBE254:
.LBE260:
.LBE262:
	.loc 1 568 0
	cmp	r8, r9
.LBB263:
.LBB261:
.LBB255:
	.loc 2 72 0
	strd	r2, [sp, #16]
.LBE255:
.LBE261:
.LBE263:
	.loc 1 568 0
	movle	r3, #0
	movgt	r3, #1
	orrs	r3, r3, r7, lsr #31
	bne	.L220
	.loc 1 574 0
	ldr	r2, .L275+48
.LBB264:
.LBB265:
.LBB266:
.LBB267:
	.loc 2 59 0
	mov	r3, r5, asr #31
.LBE267:
.LBE266:
.LBE265:
.LBE264:
	.loc 1 574 0
	ldr	r7, [r2]
.LVL245:
.LBB280:
.LBB278:
.LBB271:
.LBB268:
	.loc 2 60 0
	eor	r0, r3, r5
.LBE268:
.LBE271:
.LBB272:
.LBB273:
	.loc 2 59 0
	mov	r1, r7, asr #31
.LVL246:
	.loc 2 60 0
	eor	r2, r1, r7
.LBE273:
.LBE272:
.LBB275:
.LBB269:
	rsb	r3, r3, r0
.LVL247:
.LBE269:
.LBE275:
.LBB276:
.LBB274:
	rsb	r2, r1, r2
.LBE274:
.LBE276:
	.loc 2 84 0
	cmp	r3, r2, asr #14
.LBB277:
.LBB270:
	.loc 2 60 0
	str	r3, [sp, #36]
.LBE270:
.LBE277:
	.loc 2 84 0
	bgt	.L229
	eor	r0, r5, r7
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL248:
.L230:
.LBE278:
.LBE280:
	.loc 1 574 0
	ldr	r3, .L275+52
	ldr	ip, [r3]
	ldr	r3, [sp, #4]
	add	r0, ip, r0
	cmp	r3, r0
	bgt	.L220
	.loc 1 575 0
	ldr	r3, .L275+56
	ldr	r0, [r3]
	rsb	r0, r0, r7
.LVL249:
.LBB281:
.LBB282:
.LBB283:
.LBB284:
	.loc 2 59 0
	mov	r2, r0, asr #31
.LVL250:
	.loc 2 60 0
	eor	r3, r2, r0
	rsb	r3, r2, r3
.LBE284:
.LBE283:
	.loc 2 84 0
	ldr	r2, [sp, #36]
.LVL251:
	cmp	r2, r3, asr #14
	ble	.L270
	.loc 2 85 0
	mov	r3, r0, asr #31
.LVL252:
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	ldrd	r2, [sp, #16]
	mov	r0, r0, asl #16
.LVL253:
	str	ip, [sp, #40]
	bl	__aeabi_ldivmod
.LVL254:
	ldr	ip, [sp, #40]
.L232:
.LBE282:
.LBE281:
.LBB286:
	.loc 1 562 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
.LBE286:
	.loc 1 575 0
	rsb	r0, r0, ip
.LBB287:
	.loc 1 562 0
	add	r3, r3, r2, asl #16
.LBE287:
	.loc 1 574 0
	cmp	r3, r0
.LBB288:
	.loc 1 562 0
	str	r3, [sp, #24]
.LVL255:
.LBE288:
	.loc 1 574 0
	blt	.L220
	.loc 1 582 0
	ldr	r3, [r6, #64]
	ldr	r3, [r3]
	ldr	r3, [r3, #128]
	.loc 1 584 0
	cmn	r3, #1
	.loc 1 582 0
	str	r3, [sp, #40]
.LVL256:
	.loc 1 584 0
	beq	.L233
.LBB289:
	.loc 1 586 0
	ldr	r3, .L275+60
.LVL257:
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #64]
	ldr	r3, [r3]
	ldr	r2, [r3, #128]
.LVL258:
	.loc 1 587 0
	cmn	r2, #1
	beq	.L234
	mov	r1, #196
	ldr	r3, .L275+64
	ldr	r3, [r3]
	mla	r2, r1, r2, r3
.LVL259:
	ldr	r0, [r2, #12]
	cmp	ip, r0
	.loc 1 588 0
	ldr	r0, [sp, #40]
	mla	r3, r1, r0, r3
	.loc 1 587 0
	ldr	r1, [r3, #12]
	blt	.L271
	ldr	r0, [sp, #24]
	cmp	r0, r1
	blt	.L220
	.loc 1 591 0
	ldr	r2, [r2, #16]
	cmp	ip, r2
	ble	.L237
.L274:
	.loc 1 592 0
	ldr	r2, [r3, #16]
	ldr	r3, [sp, #24]
	cmp	r3, r2
	movlt	r3, #1
	movge	r3, #0
	cmp	ip, r2
	movlt	r3, #0
.L238:
	.loc 1 591 0
	cmp	r3, #0
	bne	.L220
.LVL260:
.L233:
.LBE289:
.LBB290:
.LBB291:
	.loc 1 297 0
	ldr	r3, .L275+68
	ldr	r2, .L275+68
	ldr	r3, [r3, #816]
	ldr	r7, [r2, #820]
.LVL261:
	cmp	r3, r7
	bcc	.L272
.LVL262:
.LBB292:
	.loc 1 301 0
	cmp	r7, #0
	moveq	ip, #128
	movne	ip, r7, asl #1
	.loc 1 302 0
	ldr	r3, .L275+68
	addne	r1, ip, r7, asl #3
	.loc 1 301 0
	ldr	lr, .L275+68
	movne	r1, r1, asl #4
	moveq	r1, #10240
	.loc 1 302 0
	ldr	r0, [r3, #824]
	mov	r2, #1
	mov	r3, #0
	.loc 1 301 0
	str	ip, [lr, #820]
	.loc 1 302 0
	bl	Z_Realloc
.LVL263:
	mov	r9, r0
	.loc 1 306 0
	ldr	r3, .L275+68
	.loc 1 305 0
	add	r0, r7, r7, asl #2
	.loc 1 306 0
	ldr	r2, [r3, #820]
	.loc 1 305 0
	add	r0, r9, r0, asl #4
	.loc 1 306 0
	rsb	r7, r7, r2
.LVL264:
	.loc 1 305 0
	add	r2, r7, r7, asl #2
	mov	r2, r2, asl #4
	mov	r1, #0
	.loc 1 302 0
	str	r9, [r3, #824]
	.loc 1 305 0
	bl	memset
.LVL265:
	ldr	r3, .L275+52
	mov	r7, r9
	ldr	ip, [r3]
	ldr	r3, .L275+44
	ldr	r9, [r3]
	ldr	r3, .L275+68
	ldr	r3, [r3, #816]
.L240:
.LBE292:
.LBE291:
.LBE290:
	.loc 1 619 0
	ldr	r1, .L275+72
.LBB297:
.LBB293:
	.loc 1 308 0
	add	r2, r3, r3, asl #2
.LBE293:
.LBE297:
	.loc 1 619 0
	ldr	r0, [r1]
.LBB298:
.LBB294:
	.loc 1 308 0
	add	r7, r7, r2, asl #4
.LVL266:
.LBE294:
.LBE298:
.LBB299:
.LBB300:
.LBB301:
.LBB302:
	.loc 2 59 0
	mov	r1, r0, asr #31
.LVL267:
	.loc 2 60 0
	eor	r2, r1, r0
	rsb	r2, r1, r2
.LBE302:
.LBE301:
	.loc 2 84 0
	cmp	r4, r2, asr #14
.LBE300:
.LBE299:
	.loc 1 615 0
	ldr	r2, [sp, #40]
.LBB305:
.LBB295:
	.loc 1 308 0
	add	r3, r3, #1
.LBE295:
.LBE305:
	.loc 1 615 0
	str	r2, [r7, #68]
.LBB306:
.LBB296:
	.loc 1 308 0
	ldr	r2, .L275+68
	str	r3, [r2, #816]
.LBE296:
.LBE306:
	.loc 1 617 0
	ldrd	r2, [r6, #120]
	strd	r2, [sp, #40]
.LVL268:
	strd	r2, [r7, #56]
.LBB307:
.LBB303:
	.loc 2 84 0
	bgt	.L242
	eor	r0, r0, r4
.LVL269:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL270:
.L243:
.LBE303:
.LBE307:
	.loc 1 624 0
	ldr	r3, [sp, #24]
	.loc 1 626 0
	ldr	r2, [sp, #28]
	.loc 1 624 0
	rsb	ip, ip, r3
	.loc 1 626 0
	cmp	r2, r9
	.loc 1 623 0
	str	r3, [r7, #28]
.LBB308:
.LBB309:
	.loc 2 84 0
	ldr	r3, [sp, #36]
.LBE309:
.LBE308:
	.loc 1 626 0
	ldrlt	r9, [sp, #28]
	.loc 1 622 0
	ldr	r2, [sp, #4]
	.loc 1 626 0
	subge	r9, r9, #1
	.loc 1 625 0
	bic	r4, r8, r8, asr #31
.LVL271:
.LBB313:
.LBB310:
	.loc 2 84 0
	cmp	r3, #4
.LBE310:
.LBE313:
	.loc 1 624 0
	str	ip, [r7, #44]
	.loc 1 619 0
	str	r0, [r7, #36]
	.loc 1 620 0
	str	r10, [r7, #16]
	.loc 1 621 0
	str	fp, [r7, #20]
	.loc 1 622 0
	str	r2, [r7, #24]
	.loc 1 625 0
	str	r4, [r7, #8]
	.loc 1 626 0
	str	r9, [r7, #12]
.LVL272:
.LBB314:
.LBB311:
	.loc 2 84 0
	bgt	.L245
	mov	r0, r5, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.L246:
.LBE311:
.LBE314:
	.loc 1 629 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	.loc 1 631 0
	ldrne	r3, [sp, #32]
	.loc 1 636 0
	ldreq	r3, [sp, #12]
	.loc 1 631 0
	subne	r3, r3, #1
	.loc 1 632 0
	rsbne	r0, r0, #0
	.loc 1 636 0
	str	r3, [r7, #32]
	.loc 1 640 0
	cmp	r8, r4
	.loc 1 637 0
	str	r0, [r7, #40]
	.loc 1 641 0
	ldrlt	r3, [r7, #32]
	ldrlt	r2, [r7, #40]
	rsblt	r4, r8, r4
	mlalt	r3, r2, r4, r3
	strlt	r3, [r7, #32]
	.loc 1 645 0
	ldrd	r2, [sp, #40]
	mov	r3, #0
	and	r2, r2, #262144
	orrs	r3, r2, r3
	.loc 1 642 0
	ldr	r3, [sp, #8]
	str	r3, [r7, #48]
	.loc 1 646 0
	movne	r3, #0
	strne	r3, [r7, #64]
	.loc 1 645 0
	bne	.L220
	.loc 1 647 0
	ldr	r3, .L275+76
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L273
.L266:
	.loc 1 650 0
	str	r3, [r7, #64]
.LVL273:
.L220:
.LBE201:
.LBE200:
	.loc 1 680 0 discriminator 3
	ldr	r6, [r6, #36]
.LVL274:
	cmp	r6, #0
	bne	.L253
.LVL275:
.L214:
	.loc 1 682 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL276:
.L217:
	.cfi_restore_state
.LBB323:
.LBB322:
	.loc 1 487 0
	ldr	r3, [r6, #32]
	.loc 1 485 0
	ldr	r10, [r6, #24]
.LVL277:
	.loc 1 486 0
	ldr	fp, [r6, #28]
.LVL278:
	.loc 1 487 0
	str	r3, [sp, #4]
.LVL279:
	b	.L218
.LVL280:
.L221:
.LBB315:
.LBB230:
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, r4
.LVL281:
	mov	r0, r0, asl #16
.LVL282:
	mov	r3, r4, asr #31
	str	ip, [sp, #8]
	bl	__aeabi_ldivmod
.LVL283:
	ldr	ip, [sp, #8]
	mov	r5, r0
	b	.L222
.LVL284:
.L269:
.LBE230:
.LBE315:
.LBB316:
	.loc 1 534 0
	mov	r0, r10
	mov	r1, fp
	bl	R_PointToAngle
.LVL285:
	ldr	r3, [r6, #44]
	rsb	r3, r3, #-1879048192
	.loc 1 535 0
	add	r0, r3, r0
.LVL286:
	mov	r3, r0, lsr #29
.LVL287:
	.loc 1 536 0
	add	r2, r8, r3, asl #1
	.loc 1 537 0
	add	r3, r8, r3
.LVL288:
	.loc 1 536 0
	ldrsh	r2, [r2, #4]
	.loc 1 537 0
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 536 0
	str	r2, [sp, #8]
.LVL289:
	.loc 1 537 0
	str	r3, [sp, #12]
.LVL290:
	b	.L226
.LVL291:
.L229:
.LBE316:
.LBB317:
.LBB279:
	.loc 2 85 0
	mov	r3, r7, asr #31
	mov	r1, r3, asl #16
.LVL292:
	orr	r1, r1, r7, lsr #16
	mov	r0, r7, asl #16
	ldrd	r2, [sp, #16]
	bl	__aeabi_ldivmod
.LVL293:
	b	.L230
.LVL294:
.L270:
.LBE279:
.LBE317:
.LBB318:
.LBB285:
	.loc 2 84 0
	eor	r0, r0, r5
.LVL295:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
	b	.L232
.LVL296:
.L268:
.LBE285:
.LBE318:
	.loc 1 526 0
	ldr	r2, [r6, #52]
	ldr	r0, .L275+80
	bl	I_Error
.LVL297:
	ldr	r2, [r8, #4]
	b	.L224
.LVL298:
.L271:
.LBB319:
	.loc 1 587 0
	ldr	r0, [sp, #4]
.LVL299:
	cmp	r0, r1
	bge	.L220
	.loc 1 591 0
	ldr	r2, [r2, #16]
	cmp	ip, r2
	bgt	.L274
.L237:
	ldr	r3, [r3, #16]
	ldr	r2, [sp, #4]
	cmp	r2, r3
	movlt	r3, #0
	movge	r3, #1
	b	.L238
.LVL300:
.L272:
	ldr	r7, [r2, #824]
	b	.L240
.LVL301:
.L234:
	.loc 1 589 0
	mov	r2, #196
.LVL302:
	ldr	r3, .L275+64
.LVL303:
	ldr	r1, [sp, #40]
	ldr	r3, [r3]
	mla	r3, r2, r1, r3
	.loc 1 587 0
	ldr	r1, [sp, #24]
	ldr	r2, [r3, #12]
	cmp	r1, r2
	bge	.L237
	b	.L220
.LVL304:
.L245:
.LBE319:
.LBB320:
.LBB312:
	.loc 2 85 0
	ldrd	r2, [sp, #16]
	mov	r0, #0
	mov	r1, #1
	bl	__aeabi_ldivmod
.LVL305:
	b	.L246
.LVL306:
.L242:
.LBE312:
.LBE320:
.LBB321:
.LBB304:
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
.LVL307:
	orr	r1, r1, r0, lsr #16
	mov	r2, r4
	mov	r0, r0, asl #16
.LVL308:
	mov	r3, r4, asr #31
	str	ip, [sp, #52]
	bl	__aeabi_ldivmod
.LVL309:
	ldr	ip, [sp, #52]
	b	.L243
.LVL310:
.L273:
.LBE304:
.LBE321:
	.loc 1 649 0
	ldr	r3, [r6, #52]
	tst	r3, #32768
	.loc 1 650 0
	ldrne	r3, .L275+84
	ldrne	r3, [r3]
	bne	.L266
.L252:
	.loc 1 653 0
	mov	r1, r5
	ldr	r0, [sp, #48]
	bl	R_ColourMap
.LVL311:
	str	r0, [r7, #64]
	b	.L220
.L276:
	.align	2
.L275:
	.word	validcount
	.word	movement_smooth
	.word	tic_vars
	.word	viewx
	.word	viewy
	.word	viewcos
	.word	viewsin
	.word	projection
	.word	sprites
	.word	firstspritelump
	.word	centerxfrac
	.word	viewwidth
	.word	viewheightfrac
	.word	viewz
	.word	viewheight
	.word	viewplayer
	.word	sectors
	.word	.LANCHOR0
	.word	projectiony
	.word	fixedcolormap
	.word	.LC3
	.word	fullcolormap
.LBE322:
.LBE323:
	.cfi_endproc
.LFE13:
	.size	R_AddSprites, .-R_AddSprites
	.align	2
	.global	R_DrawPlayerSprites
	.type	R_DrawPlayerSprites, %function
R_DrawPlayerSprites:
.LFB15:
	.loc 1 820 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 104
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
	.loc 1 821 0
	ldr	r7, .L303
	.loc 1 825 0
	ldr	ip, .L303+4
	.loc 1 821 0
	ldr	r3, [r7]
	.loc 1 825 0
	ldr	lr, .L303+8
	.loc 1 821 0
	mov	fp, r3
	ldr	r0, [fp], #264
	.loc 1 826 0
	ldr	r1, .L303+12
	.loc 1 821 0
	ldr	r4, [r0, #64]
	.loc 1 826 0
	ldr	r0, .L303+16
	.loc 1 821 0
	ldr	r4, [r4]
	.loc 1 820 0
	sub	sp, sp, #108
	.cfi_def_cfa_offset 144
	.loc 1 821 0
	ldrsh	r2, [r4, #188]
	add	r3, r3, #296
.LBB333:
.LBB334:
.LBB335:
	.loc 1 723 0
	ldr	r10, .L303+20
.LBE335:
.LBE334:
.LBE333:
	.loc 1 821 0
	str	r2, [sp, #20]
.LVL312:
	str	r3, [sp]
	.loc 1 825 0
	str	lr, [ip]
	.loc 1 826 0
	str	r0, [r1]
.LVL313:
.L290:
	.loc 1 830 0
	ldr	r2, [fp, #-16]
	cmp	r2, #0
	beq	.L278
.LVL314:
.LBB353:
.LBB351:
	.loc 1 700 0
	mov	r1, #1
	.loc 1 709 0
	ldrb	r0, [r2]	@ zero_extendqisi2
	.loc 1 717 0
	ldr	r3, [r2, #4]
	ldr	r2, .L303+24
	mov	r3, r3, asl #17
	ldr	r2, [r2]
	mov	r3, r3, lsr #17
	add	r2, r2, r0, asl #3
	ldr	r2, [r2, #4]
	rsb	r3, r3, r3, asl #3
	add	r3, r2, r3, asl #2
	.loc 1 719 0
	ldrsh	r8, [r3, #4]
.LBB342:
	.loc 1 723 0
	ldr	r0, [r10]
.LBE342:
	.loc 1 700 0
	str	r1, [sp, #96]
.LVL315:
	.loc 1 720 0
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
.LVL316:
.LBB343:
	.loc 1 723 0
	add	r0, r8, r0
.LBE343:
	.loc 1 720 0
	str	r3, [sp, #8]
.LVL317:
.LBB344:
	.loc 1 723 0
	bl	R_CachePatchNum
.LVL318:
	mov	ip, r0
.LVL319:
	.loc 1 730 0
	ldr	r3, .L303+28
	.loc 1 732 0
	ldr	r2, [ip]
	.loc 1 730 0
	ldr	r9, [r3]
	.loc 1 726 0
	ldr	r3, [fp, #-8]
	.loc 1 733 0
	mvn	r0, r9
.LVL320:
	.loc 1 728 0
	ldr	r4, [ip, #16]
	.loc 1 726 0
	sub	r3, r3, #10485760
.LVL321:
	.loc 1 728 0
	sub	r4, r3, r4, asl #16
.LVL322:
	.loc 1 732 0
	mov	r3, r2, asl #16
	.loc 1 729 0
	ldr	r2, .L303+32
	.loc 1 732 0
	add	lr, r4, r3
	.loc 1 729 0
	ldr	r1, [r2]
.LVL323:
	.loc 1 732 0
	str	r3, [sp, #16]
.LBB336:
.LBB337:
	.loc 2 72 0
	smull	r2, r3, r1, lr
	mov	r6, r2, lsr #16
	orr	r6, r6, r3, asl #16
.LBE337:
.LBE336:
	.loc 1 729 0
	ldr	r3, .L303+36
	.loc 1 738 0
	ldr	lr, [r10]
	.loc 1 729 0
	ldr	r5, [r3]
.LVL324:
	.loc 1 737 0
	ldr	r3, [ip, #20]
	.loc 1 733 0
	add	r6, r5, r6
.LVL325:
	.loc 1 734 0
	add	r6, r0, r6, asr #16
.LVL326:
	.loc 1 738 0
	add	r0, r8, lr
.LBB339:
.LBB338:
	.loc 2 72 0
	str	r1, [sp, #4]
.LVL327:
.LBE338:
.LBE339:
	.loc 1 737 0
	str	r3, [sp, #12]
.LVL328:
	.loc 1 738 0
	bl	R_UnlockPatchNum
.LVL329:
.LBE344:
	.loc 1 742 0
	cmp	r6, #0
	blt	.L278
.LBB345:
.LBB340:
.LBB341:
	.loc 2 72 0
	ldr	r1, [sp, #4]
	smull	r0, r1, r4, r1
	mov	r3, r0, lsr #16
	orr	r3, r3, r1, asl #16
.LBE341:
.LBE340:
	.loc 1 729 0
	add	r5, r5, r3
.LVL330:
.LBE345:
	.loc 1 742 0
	ldr	r3, .L303+40
.LBB346:
	.loc 1 730 0
	rsb	r5, r9, r5, asr #16
.LBE346:
	.loc 1 742 0
	ldr	r3, [r3]
	cmp	r5, r3
	bgt	.L278
.LVL331:
	.loc 1 747 0
	mov	r1, #0
	mov	r0, #0
	.loc 1 752 0
	cmp	r6, r3
	subge	r6, r3, #1
.LVL332:
	.loc 1 754 0
	ldr	r3, .L303+44
	.loc 1 750 0
	ldr	ip, [fp, #-4]
	ldr	r2, [sp, #12]
	.loc 1 754 0
	ldr	r3, [r3]
	.loc 1 750 0
	rsb	r9, ip, r2, asl #16
	.loc 1 756 0
	ldr	r2, [sp, #8]
	.loc 1 754 0
	str	r3, [sp, #60]
	.loc 1 758 0
	ldr	r3, .L303+48
	.loc 1 756 0
	cmp	r2, #0
	.loc 1 758 0
	ldrne	r3, [r3]
	.loc 1 759 0
	ldrne	r2, [sp, #16]
	.loc 1 763 0
	ldreq	r3, [r3]
	.loc 1 764 0
	ldreq	r2, [sp, #8]
	.loc 1 758 0
	rsbne	r3, r3, #0
	.loc 1 751 0
	bic	ip, r5, r5, asr #31
	.loc 1 759 0
	subne	r2, r2, #1
	strne	r2, [sp, #56]
	.loc 1 764 0
	streq	r2, [sp, #56]
	.loc 1 763 0
	str	r3, [sp, #64]
	.loc 1 767 0
	cmp	r5, ip
	.loc 1 768 0
	ldrlt	r3, [sp, #56]
	.loc 1 747 0
	strd	r0, [sp, #80]
	.loc 1 768 0
	ldrlt	r1, [sp, #64]
	rsblt	r5, r5, ip
	mlalt	r1, r1, r5, r3
	.loc 1 772 0
	ldr	r3, [r7]
	.loc 1 749 0
	add	r9, r9, #6553600
	.loc 1 772 0
	ldr	r3, [r3, #60]
	.loc 1 768 0
	strlt	r1, [sp, #56]
	.loc 1 772 0
	cmp	r3, #128
	.loc 1 749 0
	str	r9, [sp, #68]
	.loc 1 751 0
	str	ip, [sp, #32]
	.loc 1 752 0
	str	r6, [sp, #36]
	.loc 1 770 0
	str	r8, [sp, #72]
	.loc 1 772 0
	ble	.L301
.L284:
	.loc 1 774 0
	mov	r3, #0
	str	r3, [sp, #88]
.L286:
	.loc 1 785 0
	bl	V_GetMode
.LVL333:
	cmp	r0, #4
	beq	.L278
	.loc 1 787 0
	add	r0, sp, #24
.LVL334:
	bl	R_DrawVisSprite.isra.1
.LVL335:
.L278:
.LBE351:
.LBE353:
	.loc 1 829 0 discriminator 2
	ldr	r3, [sp]
	add	fp, fp, #16
.LVL336:
	cmp	fp, r3
	bne	.L290
	.loc 1 832 0
	add	sp, sp, #108
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL337:
.L301:
	.cfi_restore_state
.LBB354:
.LBB352:
	.loc 1 773 0
	tst	r3, #8
	bne	.L284
	.loc 1 775 0
	ldr	r3, .L303+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L302
.L300:
	.loc 1 778 0
	str	r3, [sp, #88]
	b	.L286
.L302:
	.loc 1 777 0
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	tst	r3, #32768
	.loc 1 778 0
	ldrne	r3, .L303+56
	ldrne	r3, [r3]
	bne	.L300
.L288:
.LBB347:
.LBB348:
	.loc 2 72 0
	mov	r2, #176128
.LBE348:
.LBE347:
	.loc 1 781 0
	ldr	r3, .L303+32
	ldr	r0, [sp, #20]
	ldr	r3, [r3]
.LVL338:
.LBB350:
.LBB349:
	.loc 2 72 0
	smull	r2, r3, r3, r2
	mov	r1, r2, lsr #16
.LBE349:
.LBE350:
	.loc 1 781 0
	orr	r1, r1, r3, asl #16
	bl	R_ColourMap
.LVL339:
	str	r0, [sp, #88]
	b	.L286
.L304:
	.align	2
.L303:
	.word	viewplayer
	.word	mfloorclip
	.word	screenheightarray
	.word	mceilingclip
	.word	negonearray
	.word	firstspritelump
	.word	sprites
	.word	viewangleoffset
	.word	pspritescale
	.word	centerxfrac
	.word	viewwidth
	.word	pspriteyscale
	.word	pspriteiscale
	.word	fixedcolormap
	.word	fullcolormap
.LBE352:
.LBE354:
	.cfi_endproc
.LFE15:
	.size	R_DrawPlayerSprites, .-R_DrawPlayerSprites
	.align	2
	.global	R_SortVisSprites
	.type	R_SortVisSprites, %function
R_SortVisSprites:
.LFB17:
	.loc 1 892 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 893 0
	ldr	r5, .L314
	ldr	r4, [r5, #816]
	cmp	r4, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
.LVL340:
.LBB359:
	.loc 1 901 0
	ldr	r3, [r5, #828]
	.loc 1 903 0
	ldr	r0, [r5, #832]
	.loc 1 901 0
	cmp	r3, r4, asl #1
	bcc	.L307
	mov	r2, r4
	mov	r1, r4
.L308:
.LVL341:
	.loc 1 908 0
	subs	ip, r4, #1
.LVL342:
	bmi	.L311
	ldr	r3, [r5, #824]
	add	ip, ip, ip, asl #2
.LVL343:
	add	ip, r3, ip, asl #4
	add	r3, r0, r4, asl #2
.LVL344:
.L310:
	.loc 1 909 0
	str	ip, [r3, #-4]!
	.loc 1 908 0
	cmp	r3, r0
	sub	ip, ip, #80
	bne	.L310
.L311:
.LBE359:
.LBB360:
.LBB361:
	.loc 1 914 0
	add	r1, r0, r1, asl #2
.LBE361:
.LBE360:
	.loc 1 916 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB363:
.LBB362:
	.loc 1 914 0
	b	msort
.LVL345:
.L307:
	.cfi_restore_state
.LBE362:
.LBE363:
.LBB364:
	.loc 1 903 0
	bl	Z_Free
.LVL346:
	.loc 1 904 0
	mov	r1, #1
	ldr	r0, [r5, #820]
	mov	r2, #0
	mov	r3, r0, asl r1
	mov	r0, r0, asl #3
	str	r3, [r5, #828]
	bl	Z_Malloc
.LVL347:
	mov	r3, r0
	ldr	r1, [r5, #816]
	str	r3, [r5, #832]
	mov	r2, r1
	b	.L308
.L315:
	.align	2
.L314:
	.word	.LANCHOR0
.LBE364:
	.cfi_endproc
.LFE17:
	.size	R_SortVisSprites, .-R_SortVisSprites
	.align	2
	.global	R_DrawMasked
	.type	R_DrawMasked, %function
R_DrawMasked:
.LFB19:
	.loc 1 1051 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1059 0
	ldr	r6, .L329
	.loc 1 1055 0
	bl	R_SortVisSprites
.LVL348:
	.loc 1 1059 0
	ldr	r3, [r6, #816]
	ldr	r2, .L329+4
	.loc 1 1060 0
	subs	r4, r3, #1
	.loc 1 1059 0
	str	r3, [r2]
.LVL349:
	movpl	r5, r4, asl #2
	.loc 1 1060 0
	bmi	.L320
.LVL350:
.L319:
	.loc 1 1061 0
	ldr	r3, [r6, #832]
	.loc 1 1060 0
	sub	r4, r4, #1
.LVL351:
	.loc 1 1061 0
	ldr	r0, [r3, r5]
	bl	R_DrawSprite
.LVL352:
	.loc 1 1060 0
	cmn	r4, #1
	sub	r5, r5, #4
	bne	.L319
.LVL353:
.L320:
	.loc 1 1071 0
	ldr	r3, .L329+8
	ldr	r5, .L329+12
	ldr	r4, [r3]
.LVL354:
	ldr	r2, [r5]
.L318:
	.loc 1 1071 0 is_stmt 0 discriminator 1
	cmp	r4, r2
	sub	r4, r4, #60
.LVL355:
	bls	.L328
.L322:
	.loc 1 1072 0 is_stmt 1
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L318
	.loc 1 1073 0
	ldmib	r4, {r1, r2}
	mov	r0, r4
	bl	R_RenderMaskedSegRange
.LVL356:
	ldr	r2, [r5]
	.loc 1 1071 0
	cmp	r4, r2
	sub	r4, r4, #60
.LVL357:
	bhi	.L322
.L328:
	.loc 1 1079 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL358:
	.loc 1 1078 0
	b	R_DrawPlayerSprites
.LVL359:
.L330:
	.align	2
.L329:
	.word	.LANCHOR0
	.word	rendered_vissprites
	.word	ds_p
	.word	drawsegs
	.cfi_endproc
.LFE19:
	.size	R_DrawMasked, .-R_DrawMasked
	.comm	sprtopscreen,4,4
	.comm	spryscale,4,4
	.comm	mceilingclip,4,4
	.comm	mfloorclip,4,4
	.comm	numsprites,4,4
	.comm	sprites,4,4
	.comm	screenheightarray,1600,4
	.comm	negonearray,1600,4
	.comm	pspriteyscale,4,4
	.comm	pspriteiscale,4,4
	.comm	pspritescale,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"R_InstallSpriteLump: Bad frame characters in lump %"
	.ascii	"i\000"
	.space	3
.LC1:
	.ascii	"R_InitSprites: No patches found for %.8s frame %c\000"
	.space	2
.LC2:
	.ascii	"R_InitSprites: Sprite %.8s frame %c is missing rota"
	.ascii	"tions\000"
	.space	3
.LC3:
	.ascii	"R_ProjectSprite: Missing spriteframes %i : %i\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	maxframe, %object
	.size	maxframe, 4
maxframe:
	.space	4
	.type	sprtemp, %object
	.size	sprtemp, 812
sprtemp:
	.space	812
	.type	num_vissprite, %object
	.size	num_vissprite, 4
num_vissprite:
	.space	4
	.type	num_vissprite_alloc, %object
	.size	num_vissprite_alloc, 4
num_vissprite_alloc:
	.space	4
	.type	vissprites, %object
	.size	vissprites, 4
vissprites:
	.space	4
	.type	num_vissprite_ptrs, %object
	.size	num_vissprite_ptrs, 4
num_vissprite_ptrs:
	.space	4
	.type	vissprite_ptrs, %object
	.size	vissprite_ptrs, 4
vissprite_ptrs:
	.space	4
	.text
.Letext0:
	.file 3 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 7 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.file 8 "c:/devl/prboom3ds/src/z_zone.h"
	.file 9 "c:/devl/prboom3ds/src/doomdef.h"
	.file 10 "c:/devl/prboom3ds/src/doomtype.h"
	.file 11 "c:/devl/prboom3ds/src/tables.h"
	.file 12 "c:/devl/prboom3ds/src/d_think.h"
	.file 13 "c:/devl/prboom3ds/src/info.h"
	.file 14 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 15 "c:/devl/prboom3ds/src/doomdata.h"
	.file 16 "c:/devl/prboom3ds/src/p_mobj.h"
	.file 17 "c:/devl/prboom3ds/src/r_defs.h"
	.file 18 "c:/devl/prboom3ds/src/d_player.h"
	.file 19 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 20 "c:/devl/prboom3ds/src/doomstat.h"
	.file 21 "c:/devl/prboom3ds/src/w_wad.h"
	.file 22 "c:/devl/prboom3ds/src/r_patch.h"
	.file 23 "c:/devl/prboom3ds/src/r_draw.h"
	.file 24 "c:/devl/prboom3ds/src/r_fps.h"
	.file 25 "c:/devl/prboom3ds/src/v_video.h"
	.file 26 "c:/devl/prboom3ds/src/r_state.h"
	.file 27 "c:/devl/prboom3ds/src/r_data.h"
	.file 28 "c:/devl/prboom3ds/src/r_main.h"
	.file 29 "c:/devl/prboom3ds/src/r_bsp.h"
	.file 30 "c:/devl/prboom3ds/src/lprintf.h"
	.file 31 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 32 "c:/devl/prboom3ds/src/r_segs.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5d34
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1992
	.byte	0x1
	.4byte	.LASF1993
	.4byte	.LASF1994
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd4
	.4byte	0x33
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x5
	.byte	0x10
	.4byte	0x63
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x5
	.byte	0x27
	.4byte	0x63
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x161
	.4byte	0x33
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0xc4
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4c
	.4byte	0x99
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
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
	.byte	0x5
	.byte	0x47
	.4byte	0xfc
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x5
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0x4e
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4f
	.4byte	0xdb
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x53
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x170
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.4byte	0x170
	.byte	0
	.uleb128 0xe
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.ascii	"_x\000"
	.byte	0x6
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
	.byte	0x6
	.byte	0x35
	.4byte	0x1ff
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x38
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x23f
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x49
	.4byte	0x23f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4a
	.4byte	0x23f
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.4byte	0x112
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4f
	.4byte	0x112
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x45
	.4byte	0x24f
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.2byte	0x190
	.byte	0x6
	.byte	0x5b
	.4byte	0x28d
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0x5c
	.4byte	0x28d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x5d
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x5f
	.4byte	0x293
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
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
	.byte	0x6
	.byte	0x73
	.4byte	0x2cf
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x74
	.4byte	0x2cf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x75
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4e
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x3ff
	.uleb128 0xe
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb4
	.4byte	0x2cf
	.byte	0
	.uleb128 0xe
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb5
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb7
	.4byte	0x55
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0xb8
	.4byte	0x55
	.byte	0xe
	.uleb128 0xe
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2aa
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xba
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc1
	.4byte	0x45
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc3
	.4byte	0x562
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc5
	.4byte	0x591
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc8
	.4byte	0x5b5
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc9
	.4byte	0x5cf
	.byte	0x2c
	.uleb128 0xe
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2aa
	.byte	0x30
	.uleb128 0xe
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcd
	.4byte	0x2cf
	.byte	0x38
	.uleb128 0xe
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xce
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd1
	.4byte	0x5d5
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd2
	.4byte	0x5e5
	.byte	0x43
	.uleb128 0xe
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2aa
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd8
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd9
	.4byte	0x83
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xdc
	.4byte	0x41d
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe0
	.4byte	0x107
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe2
	.4byte	0xfc
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe3
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x2c
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x423
	.uleb128 0x15
	.4byte	.LASF65
	.2byte	0x428
	.byte	0x6
	.2byte	0x239
	.4byte	0x555
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x23b
	.4byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x240
	.4byte	0x63c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x240
	.4byte	0x63c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x240
	.4byte	0x63c
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x242
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x243
	.4byte	0x81e
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x245
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x246
	.4byte	0x586
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x248
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x24a
	.4byte	0x839
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x24d
	.4byte	0x170
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x24e
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x24f
	.4byte	0x170
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x250
	.4byte	0x83f
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x253
	.4byte	0x2c
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x254
	.4byte	0x555
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x277
	.4byte	0x7fc
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x27b
	.4byte	0x28d
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.4byte	0x24f
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x280
	.4byte	0x850
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x285
	.4byte	0x601
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x6
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
	.4byte	0x2c
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x2c
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
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x8e
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x597
	.uleb128 0x13
	.4byte	0x2c
	.4byte	0x5cf
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x45
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
	.byte	0x6
	.2byte	0x11d
	.4byte	0x2d5
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x636
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x123
	.4byte	0x636
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x124
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x6
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
	.byte	0x6
	.2byte	0x13d
	.4byte	0x677
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x13e
	.4byte	0x677
	.byte	0
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x13f
	.4byte	0x677
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x6
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
	.byte	0x6
	.2byte	0x258
	.4byte	0x788
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x25a
	.4byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x25b
	.4byte	0x555
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x25c
	.4byte	0x788
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x25d
	.4byte	0x186
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x25e
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x25f
	.4byte	0x25
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x260
	.4byte	0x642
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x261
	.4byte	0xfc
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x262
	.4byte	0xfc
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x263
	.4byte	0xfc
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x264
	.4byte	0x798
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x265
	.4byte	0x7a8
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x266
	.4byte	0x2c
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x267
	.4byte	0xfc
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x268
	.4byte	0xfc
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x269
	.4byte	0xfc
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x26a
	.4byte	0xfc
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x26b
	.4byte	0xfc
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x26c
	.4byte	0x2c
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
	.byte	0x6
	.2byte	0x271
	.4byte	0x7dc
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x274
	.4byte	0x7dc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x6
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
	.4byte	0x33
	.4byte	0x7fc
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x256
	.4byte	0x81e
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x26d
	.4byte	0x687
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x6
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
	.4byte	0x2c
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
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x7
	.byte	0x33
	.4byte	0x5f5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x87d
	.uleb128 0x1e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x9
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
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x9
	.byte	0xd5
	.4byte	0x8f0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0xd8
	.4byte	0x973
	.uleb128 0x20
	.4byte	.LASF147
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF148
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF149
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF150
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF151
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF152
	.sleb128 5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
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
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0xa
	.byte	0x42
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0xa
	.byte	0x4c
	.4byte	0x4e
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0xa
	.byte	0x5b
	.4byte	0x71
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xa
	.byte	0x5c
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x2
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0xb
	.byte	0x47
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0xc
	.byte	0x32
	.4byte	0x9fa
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa00
	.uleb128 0x21
	.4byte	0xa07
	.uleb128 0x22
	.byte	0
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0xc
	.byte	0x48
	.4byte	0x9ef
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0x18
	.byte	0xc
	.byte	0x4c
	.4byte	0xa67
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xc
	.byte	0x4e
	.4byte	0xa67
	.byte	0
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xc
	.byte	0x4f
	.4byte	0xa67
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xc
	.byte	0x50
	.4byte	0xa07
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xc
	.byte	0x56
	.4byte	0xa67
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0xc
	.byte	0x56
	.4byte	0xa67
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xc
	.byte	0x5b
	.4byte	0x33
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa12
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0xc
	.byte	0x5c
	.4byte	0xa12
	.uleb128 0x1f
	.byte	0x1
	.byte	0xd
	.byte	0x2e
	.4byte	0xe1c
	.uleb128 0x20
	.4byte	.LASF177
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF178
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF179
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF180
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF181
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF182
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF183
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF184
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF185
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF186
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF187
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF188
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF189
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF190
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF191
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF192
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF193
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF194
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF195
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF196
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF197
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF198
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF199
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF200
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF201
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF202
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF203
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF204
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF205
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF206
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF207
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF208
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF209
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF210
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF211
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF212
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF213
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF214
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF215
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF216
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF217
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF218
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF219
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF220
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF221
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF222
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF223
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF224
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF225
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF226
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF227
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF228
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF229
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF230
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF231
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF232
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF233
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF234
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF235
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF236
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF237
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF238
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF239
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF240
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF241
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF242
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF243
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF244
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF245
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF246
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF247
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF248
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF249
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF250
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF251
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF252
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF253
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF254
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF255
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF256
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF257
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF258
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF259
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF260
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF261
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF262
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF263
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF264
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF265
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF266
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF267
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF268
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF269
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF270
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF271
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF272
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF273
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF274
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF275
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF276
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF277
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF278
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF279
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF280
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF281
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF282
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF283
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF284
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF285
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF286
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF287
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF288
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF289
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF290
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF291
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF292
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF293
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF294
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF295
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF296
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF297
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF298
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF299
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF300
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF301
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF302
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF303
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF304
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF305
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF306
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF307
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF308
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF309
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF310
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF311
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF312
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF313
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF314
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF315
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF316
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF317
	.sleb128 140
	.byte	0
	.uleb128 0x4
	.4byte	.LASF318
	.byte	0xd
	.byte	0xc1
	.4byte	0xa78
	.uleb128 0x1f
	.byte	0x2
	.byte	0xd
	.byte	0xc8
	.4byte	0x2a4b
	.uleb128 0x20
	.4byte	.LASF319
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF320
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF321
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF322
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF323
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF324
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF325
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF326
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF327
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF328
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF329
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF330
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF331
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF332
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF333
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF334
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF335
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF336
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF337
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF338
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF339
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF340
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF341
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF342
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF343
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF344
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF345
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF346
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF347
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF348
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF349
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF350
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF351
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF352
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF353
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF354
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF355
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF356
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF357
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF358
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF359
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF360
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF361
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF362
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF363
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF364
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF365
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF366
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF367
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF368
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF369
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF370
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF371
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF372
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF373
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF374
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF375
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF376
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF377
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF378
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF379
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF380
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF381
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF382
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF383
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF384
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF385
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF386
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF387
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF388
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF389
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF390
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF391
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF392
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF393
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF394
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF395
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF396
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF397
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF398
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF399
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF400
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF401
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF402
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF403
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF404
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF405
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF406
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF407
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF408
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF409
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF410
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF411
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF412
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF413
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF414
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF415
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF416
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF417
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF418
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF419
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF420
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF421
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF422
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF423
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF424
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF425
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF426
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF427
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF428
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF429
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF430
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF431
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF432
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF433
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF434
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF435
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF436
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF437
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF438
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF439
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF440
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF441
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF442
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF443
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF444
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF445
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF446
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF447
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF448
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF449
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF450
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF451
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF452
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF453
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF454
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF455
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF456
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF457
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF458
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF459
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF460
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF461
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF462
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF463
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF464
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF465
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF466
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF467
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF468
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF469
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF470
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF471
	.sleb128 152
	.uleb128 0x20
	.4byte	.LASF472
	.sleb128 153
	.uleb128 0x20
	.4byte	.LASF473
	.sleb128 154
	.uleb128 0x20
	.4byte	.LASF474
	.sleb128 155
	.uleb128 0x20
	.4byte	.LASF475
	.sleb128 156
	.uleb128 0x20
	.4byte	.LASF476
	.sleb128 157
	.uleb128 0x20
	.4byte	.LASF477
	.sleb128 158
	.uleb128 0x20
	.4byte	.LASF478
	.sleb128 159
	.uleb128 0x20
	.4byte	.LASF479
	.sleb128 160
	.uleb128 0x20
	.4byte	.LASF480
	.sleb128 161
	.uleb128 0x20
	.4byte	.LASF481
	.sleb128 162
	.uleb128 0x20
	.4byte	.LASF482
	.sleb128 163
	.uleb128 0x20
	.4byte	.LASF483
	.sleb128 164
	.uleb128 0x20
	.4byte	.LASF484
	.sleb128 165
	.uleb128 0x20
	.4byte	.LASF485
	.sleb128 166
	.uleb128 0x20
	.4byte	.LASF486
	.sleb128 167
	.uleb128 0x20
	.4byte	.LASF487
	.sleb128 168
	.uleb128 0x20
	.4byte	.LASF488
	.sleb128 169
	.uleb128 0x20
	.4byte	.LASF489
	.sleb128 170
	.uleb128 0x20
	.4byte	.LASF490
	.sleb128 171
	.uleb128 0x20
	.4byte	.LASF491
	.sleb128 172
	.uleb128 0x20
	.4byte	.LASF492
	.sleb128 173
	.uleb128 0x20
	.4byte	.LASF493
	.sleb128 174
	.uleb128 0x20
	.4byte	.LASF494
	.sleb128 175
	.uleb128 0x20
	.4byte	.LASF495
	.sleb128 176
	.uleb128 0x20
	.4byte	.LASF496
	.sleb128 177
	.uleb128 0x20
	.4byte	.LASF497
	.sleb128 178
	.uleb128 0x20
	.4byte	.LASF498
	.sleb128 179
	.uleb128 0x20
	.4byte	.LASF499
	.sleb128 180
	.uleb128 0x20
	.4byte	.LASF500
	.sleb128 181
	.uleb128 0x20
	.4byte	.LASF501
	.sleb128 182
	.uleb128 0x20
	.4byte	.LASF502
	.sleb128 183
	.uleb128 0x20
	.4byte	.LASF503
	.sleb128 184
	.uleb128 0x20
	.4byte	.LASF504
	.sleb128 185
	.uleb128 0x20
	.4byte	.LASF505
	.sleb128 186
	.uleb128 0x20
	.4byte	.LASF506
	.sleb128 187
	.uleb128 0x20
	.4byte	.LASF507
	.sleb128 188
	.uleb128 0x20
	.4byte	.LASF508
	.sleb128 189
	.uleb128 0x20
	.4byte	.LASF509
	.sleb128 190
	.uleb128 0x20
	.4byte	.LASF510
	.sleb128 191
	.uleb128 0x20
	.4byte	.LASF511
	.sleb128 192
	.uleb128 0x20
	.4byte	.LASF512
	.sleb128 193
	.uleb128 0x20
	.4byte	.LASF513
	.sleb128 194
	.uleb128 0x20
	.4byte	.LASF514
	.sleb128 195
	.uleb128 0x20
	.4byte	.LASF515
	.sleb128 196
	.uleb128 0x20
	.4byte	.LASF516
	.sleb128 197
	.uleb128 0x20
	.4byte	.LASF517
	.sleb128 198
	.uleb128 0x20
	.4byte	.LASF518
	.sleb128 199
	.uleb128 0x20
	.4byte	.LASF519
	.sleb128 200
	.uleb128 0x20
	.4byte	.LASF520
	.sleb128 201
	.uleb128 0x20
	.4byte	.LASF521
	.sleb128 202
	.uleb128 0x20
	.4byte	.LASF522
	.sleb128 203
	.uleb128 0x20
	.4byte	.LASF523
	.sleb128 204
	.uleb128 0x20
	.4byte	.LASF524
	.sleb128 205
	.uleb128 0x20
	.4byte	.LASF525
	.sleb128 206
	.uleb128 0x20
	.4byte	.LASF526
	.sleb128 207
	.uleb128 0x20
	.4byte	.LASF527
	.sleb128 208
	.uleb128 0x20
	.4byte	.LASF528
	.sleb128 209
	.uleb128 0x20
	.4byte	.LASF529
	.sleb128 210
	.uleb128 0x20
	.4byte	.LASF530
	.sleb128 211
	.uleb128 0x20
	.4byte	.LASF531
	.sleb128 212
	.uleb128 0x20
	.4byte	.LASF532
	.sleb128 213
	.uleb128 0x20
	.4byte	.LASF533
	.sleb128 214
	.uleb128 0x20
	.4byte	.LASF534
	.sleb128 215
	.uleb128 0x20
	.4byte	.LASF535
	.sleb128 216
	.uleb128 0x20
	.4byte	.LASF536
	.sleb128 217
	.uleb128 0x20
	.4byte	.LASF537
	.sleb128 218
	.uleb128 0x20
	.4byte	.LASF538
	.sleb128 219
	.uleb128 0x20
	.4byte	.LASF539
	.sleb128 220
	.uleb128 0x20
	.4byte	.LASF540
	.sleb128 221
	.uleb128 0x20
	.4byte	.LASF541
	.sleb128 222
	.uleb128 0x20
	.4byte	.LASF542
	.sleb128 223
	.uleb128 0x20
	.4byte	.LASF543
	.sleb128 224
	.uleb128 0x20
	.4byte	.LASF544
	.sleb128 225
	.uleb128 0x20
	.4byte	.LASF545
	.sleb128 226
	.uleb128 0x20
	.4byte	.LASF546
	.sleb128 227
	.uleb128 0x20
	.4byte	.LASF547
	.sleb128 228
	.uleb128 0x20
	.4byte	.LASF548
	.sleb128 229
	.uleb128 0x20
	.4byte	.LASF549
	.sleb128 230
	.uleb128 0x20
	.4byte	.LASF550
	.sleb128 231
	.uleb128 0x20
	.4byte	.LASF551
	.sleb128 232
	.uleb128 0x20
	.4byte	.LASF552
	.sleb128 233
	.uleb128 0x20
	.4byte	.LASF553
	.sleb128 234
	.uleb128 0x20
	.4byte	.LASF554
	.sleb128 235
	.uleb128 0x20
	.4byte	.LASF555
	.sleb128 236
	.uleb128 0x20
	.4byte	.LASF556
	.sleb128 237
	.uleb128 0x20
	.4byte	.LASF557
	.sleb128 238
	.uleb128 0x20
	.4byte	.LASF558
	.sleb128 239
	.uleb128 0x20
	.4byte	.LASF559
	.sleb128 240
	.uleb128 0x20
	.4byte	.LASF560
	.sleb128 241
	.uleb128 0x20
	.4byte	.LASF561
	.sleb128 242
	.uleb128 0x20
	.4byte	.LASF562
	.sleb128 243
	.uleb128 0x20
	.4byte	.LASF563
	.sleb128 244
	.uleb128 0x20
	.4byte	.LASF564
	.sleb128 245
	.uleb128 0x20
	.4byte	.LASF565
	.sleb128 246
	.uleb128 0x20
	.4byte	.LASF566
	.sleb128 247
	.uleb128 0x20
	.4byte	.LASF567
	.sleb128 248
	.uleb128 0x20
	.4byte	.LASF568
	.sleb128 249
	.uleb128 0x20
	.4byte	.LASF569
	.sleb128 250
	.uleb128 0x20
	.4byte	.LASF570
	.sleb128 251
	.uleb128 0x20
	.4byte	.LASF571
	.sleb128 252
	.uleb128 0x20
	.4byte	.LASF572
	.sleb128 253
	.uleb128 0x20
	.4byte	.LASF573
	.sleb128 254
	.uleb128 0x20
	.4byte	.LASF574
	.sleb128 255
	.uleb128 0x20
	.4byte	.LASF575
	.sleb128 256
	.uleb128 0x20
	.4byte	.LASF576
	.sleb128 257
	.uleb128 0x20
	.4byte	.LASF577
	.sleb128 258
	.uleb128 0x20
	.4byte	.LASF578
	.sleb128 259
	.uleb128 0x20
	.4byte	.LASF579
	.sleb128 260
	.uleb128 0x20
	.4byte	.LASF580
	.sleb128 261
	.uleb128 0x20
	.4byte	.LASF581
	.sleb128 262
	.uleb128 0x20
	.4byte	.LASF582
	.sleb128 263
	.uleb128 0x20
	.4byte	.LASF583
	.sleb128 264
	.uleb128 0x20
	.4byte	.LASF584
	.sleb128 265
	.uleb128 0x20
	.4byte	.LASF585
	.sleb128 266
	.uleb128 0x20
	.4byte	.LASF586
	.sleb128 267
	.uleb128 0x20
	.4byte	.LASF587
	.sleb128 268
	.uleb128 0x20
	.4byte	.LASF588
	.sleb128 269
	.uleb128 0x20
	.4byte	.LASF589
	.sleb128 270
	.uleb128 0x20
	.4byte	.LASF590
	.sleb128 271
	.uleb128 0x20
	.4byte	.LASF591
	.sleb128 272
	.uleb128 0x20
	.4byte	.LASF592
	.sleb128 273
	.uleb128 0x20
	.4byte	.LASF593
	.sleb128 274
	.uleb128 0x20
	.4byte	.LASF594
	.sleb128 275
	.uleb128 0x20
	.4byte	.LASF595
	.sleb128 276
	.uleb128 0x20
	.4byte	.LASF596
	.sleb128 277
	.uleb128 0x20
	.4byte	.LASF597
	.sleb128 278
	.uleb128 0x20
	.4byte	.LASF598
	.sleb128 279
	.uleb128 0x20
	.4byte	.LASF599
	.sleb128 280
	.uleb128 0x20
	.4byte	.LASF600
	.sleb128 281
	.uleb128 0x20
	.4byte	.LASF601
	.sleb128 282
	.uleb128 0x20
	.4byte	.LASF602
	.sleb128 283
	.uleb128 0x20
	.4byte	.LASF603
	.sleb128 284
	.uleb128 0x20
	.4byte	.LASF604
	.sleb128 285
	.uleb128 0x20
	.4byte	.LASF605
	.sleb128 286
	.uleb128 0x20
	.4byte	.LASF606
	.sleb128 287
	.uleb128 0x20
	.4byte	.LASF607
	.sleb128 288
	.uleb128 0x20
	.4byte	.LASF608
	.sleb128 289
	.uleb128 0x20
	.4byte	.LASF609
	.sleb128 290
	.uleb128 0x20
	.4byte	.LASF610
	.sleb128 291
	.uleb128 0x20
	.4byte	.LASF611
	.sleb128 292
	.uleb128 0x20
	.4byte	.LASF612
	.sleb128 293
	.uleb128 0x20
	.4byte	.LASF613
	.sleb128 294
	.uleb128 0x20
	.4byte	.LASF614
	.sleb128 295
	.uleb128 0x20
	.4byte	.LASF615
	.sleb128 296
	.uleb128 0x20
	.4byte	.LASF616
	.sleb128 297
	.uleb128 0x20
	.4byte	.LASF617
	.sleb128 298
	.uleb128 0x20
	.4byte	.LASF618
	.sleb128 299
	.uleb128 0x20
	.4byte	.LASF619
	.sleb128 300
	.uleb128 0x20
	.4byte	.LASF620
	.sleb128 301
	.uleb128 0x20
	.4byte	.LASF621
	.sleb128 302
	.uleb128 0x20
	.4byte	.LASF622
	.sleb128 303
	.uleb128 0x20
	.4byte	.LASF623
	.sleb128 304
	.uleb128 0x20
	.4byte	.LASF624
	.sleb128 305
	.uleb128 0x20
	.4byte	.LASF625
	.sleb128 306
	.uleb128 0x20
	.4byte	.LASF626
	.sleb128 307
	.uleb128 0x20
	.4byte	.LASF627
	.sleb128 308
	.uleb128 0x20
	.4byte	.LASF628
	.sleb128 309
	.uleb128 0x20
	.4byte	.LASF629
	.sleb128 310
	.uleb128 0x20
	.4byte	.LASF630
	.sleb128 311
	.uleb128 0x20
	.4byte	.LASF631
	.sleb128 312
	.uleb128 0x20
	.4byte	.LASF632
	.sleb128 313
	.uleb128 0x20
	.4byte	.LASF633
	.sleb128 314
	.uleb128 0x20
	.4byte	.LASF634
	.sleb128 315
	.uleb128 0x20
	.4byte	.LASF635
	.sleb128 316
	.uleb128 0x20
	.4byte	.LASF636
	.sleb128 317
	.uleb128 0x20
	.4byte	.LASF637
	.sleb128 318
	.uleb128 0x20
	.4byte	.LASF638
	.sleb128 319
	.uleb128 0x20
	.4byte	.LASF639
	.sleb128 320
	.uleb128 0x20
	.4byte	.LASF640
	.sleb128 321
	.uleb128 0x20
	.4byte	.LASF641
	.sleb128 322
	.uleb128 0x20
	.4byte	.LASF642
	.sleb128 323
	.uleb128 0x20
	.4byte	.LASF643
	.sleb128 324
	.uleb128 0x20
	.4byte	.LASF644
	.sleb128 325
	.uleb128 0x20
	.4byte	.LASF645
	.sleb128 326
	.uleb128 0x20
	.4byte	.LASF646
	.sleb128 327
	.uleb128 0x20
	.4byte	.LASF647
	.sleb128 328
	.uleb128 0x20
	.4byte	.LASF648
	.sleb128 329
	.uleb128 0x20
	.4byte	.LASF649
	.sleb128 330
	.uleb128 0x20
	.4byte	.LASF650
	.sleb128 331
	.uleb128 0x20
	.4byte	.LASF651
	.sleb128 332
	.uleb128 0x20
	.4byte	.LASF652
	.sleb128 333
	.uleb128 0x20
	.4byte	.LASF653
	.sleb128 334
	.uleb128 0x20
	.4byte	.LASF654
	.sleb128 335
	.uleb128 0x20
	.4byte	.LASF655
	.sleb128 336
	.uleb128 0x20
	.4byte	.LASF656
	.sleb128 337
	.uleb128 0x20
	.4byte	.LASF657
	.sleb128 338
	.uleb128 0x20
	.4byte	.LASF658
	.sleb128 339
	.uleb128 0x20
	.4byte	.LASF659
	.sleb128 340
	.uleb128 0x20
	.4byte	.LASF660
	.sleb128 341
	.uleb128 0x20
	.4byte	.LASF661
	.sleb128 342
	.uleb128 0x20
	.4byte	.LASF662
	.sleb128 343
	.uleb128 0x20
	.4byte	.LASF663
	.sleb128 344
	.uleb128 0x20
	.4byte	.LASF664
	.sleb128 345
	.uleb128 0x20
	.4byte	.LASF665
	.sleb128 346
	.uleb128 0x20
	.4byte	.LASF666
	.sleb128 347
	.uleb128 0x20
	.4byte	.LASF667
	.sleb128 348
	.uleb128 0x20
	.4byte	.LASF668
	.sleb128 349
	.uleb128 0x20
	.4byte	.LASF669
	.sleb128 350
	.uleb128 0x20
	.4byte	.LASF670
	.sleb128 351
	.uleb128 0x20
	.4byte	.LASF671
	.sleb128 352
	.uleb128 0x20
	.4byte	.LASF672
	.sleb128 353
	.uleb128 0x20
	.4byte	.LASF673
	.sleb128 354
	.uleb128 0x20
	.4byte	.LASF674
	.sleb128 355
	.uleb128 0x20
	.4byte	.LASF675
	.sleb128 356
	.uleb128 0x20
	.4byte	.LASF676
	.sleb128 357
	.uleb128 0x20
	.4byte	.LASF677
	.sleb128 358
	.uleb128 0x20
	.4byte	.LASF678
	.sleb128 359
	.uleb128 0x20
	.4byte	.LASF679
	.sleb128 360
	.uleb128 0x20
	.4byte	.LASF680
	.sleb128 361
	.uleb128 0x20
	.4byte	.LASF681
	.sleb128 362
	.uleb128 0x20
	.4byte	.LASF682
	.sleb128 363
	.uleb128 0x20
	.4byte	.LASF683
	.sleb128 364
	.uleb128 0x20
	.4byte	.LASF684
	.sleb128 365
	.uleb128 0x20
	.4byte	.LASF685
	.sleb128 366
	.uleb128 0x20
	.4byte	.LASF686
	.sleb128 367
	.uleb128 0x20
	.4byte	.LASF687
	.sleb128 368
	.uleb128 0x20
	.4byte	.LASF688
	.sleb128 369
	.uleb128 0x20
	.4byte	.LASF689
	.sleb128 370
	.uleb128 0x20
	.4byte	.LASF690
	.sleb128 371
	.uleb128 0x20
	.4byte	.LASF691
	.sleb128 372
	.uleb128 0x20
	.4byte	.LASF692
	.sleb128 373
	.uleb128 0x20
	.4byte	.LASF693
	.sleb128 374
	.uleb128 0x20
	.4byte	.LASF694
	.sleb128 375
	.uleb128 0x20
	.4byte	.LASF695
	.sleb128 376
	.uleb128 0x20
	.4byte	.LASF696
	.sleb128 377
	.uleb128 0x20
	.4byte	.LASF697
	.sleb128 378
	.uleb128 0x20
	.4byte	.LASF698
	.sleb128 379
	.uleb128 0x20
	.4byte	.LASF699
	.sleb128 380
	.uleb128 0x20
	.4byte	.LASF700
	.sleb128 381
	.uleb128 0x20
	.4byte	.LASF701
	.sleb128 382
	.uleb128 0x20
	.4byte	.LASF702
	.sleb128 383
	.uleb128 0x20
	.4byte	.LASF703
	.sleb128 384
	.uleb128 0x20
	.4byte	.LASF704
	.sleb128 385
	.uleb128 0x20
	.4byte	.LASF705
	.sleb128 386
	.uleb128 0x20
	.4byte	.LASF706
	.sleb128 387
	.uleb128 0x20
	.4byte	.LASF707
	.sleb128 388
	.uleb128 0x20
	.4byte	.LASF708
	.sleb128 389
	.uleb128 0x20
	.4byte	.LASF709
	.sleb128 390
	.uleb128 0x20
	.4byte	.LASF710
	.sleb128 391
	.uleb128 0x20
	.4byte	.LASF711
	.sleb128 392
	.uleb128 0x20
	.4byte	.LASF712
	.sleb128 393
	.uleb128 0x20
	.4byte	.LASF713
	.sleb128 394
	.uleb128 0x20
	.4byte	.LASF714
	.sleb128 395
	.uleb128 0x20
	.4byte	.LASF715
	.sleb128 396
	.uleb128 0x20
	.4byte	.LASF716
	.sleb128 397
	.uleb128 0x20
	.4byte	.LASF717
	.sleb128 398
	.uleb128 0x20
	.4byte	.LASF718
	.sleb128 399
	.uleb128 0x20
	.4byte	.LASF719
	.sleb128 400
	.uleb128 0x20
	.4byte	.LASF720
	.sleb128 401
	.uleb128 0x20
	.4byte	.LASF721
	.sleb128 402
	.uleb128 0x20
	.4byte	.LASF722
	.sleb128 403
	.uleb128 0x20
	.4byte	.LASF723
	.sleb128 404
	.uleb128 0x20
	.4byte	.LASF724
	.sleb128 405
	.uleb128 0x20
	.4byte	.LASF725
	.sleb128 406
	.uleb128 0x20
	.4byte	.LASF726
	.sleb128 407
	.uleb128 0x20
	.4byte	.LASF727
	.sleb128 408
	.uleb128 0x20
	.4byte	.LASF728
	.sleb128 409
	.uleb128 0x20
	.4byte	.LASF729
	.sleb128 410
	.uleb128 0x20
	.4byte	.LASF730
	.sleb128 411
	.uleb128 0x20
	.4byte	.LASF731
	.sleb128 412
	.uleb128 0x20
	.4byte	.LASF732
	.sleb128 413
	.uleb128 0x20
	.4byte	.LASF733
	.sleb128 414
	.uleb128 0x20
	.4byte	.LASF734
	.sleb128 415
	.uleb128 0x20
	.4byte	.LASF735
	.sleb128 416
	.uleb128 0x20
	.4byte	.LASF736
	.sleb128 417
	.uleb128 0x20
	.4byte	.LASF737
	.sleb128 418
	.uleb128 0x20
	.4byte	.LASF738
	.sleb128 419
	.uleb128 0x20
	.4byte	.LASF739
	.sleb128 420
	.uleb128 0x20
	.4byte	.LASF740
	.sleb128 421
	.uleb128 0x20
	.4byte	.LASF741
	.sleb128 422
	.uleb128 0x20
	.4byte	.LASF742
	.sleb128 423
	.uleb128 0x20
	.4byte	.LASF743
	.sleb128 424
	.uleb128 0x20
	.4byte	.LASF744
	.sleb128 425
	.uleb128 0x20
	.4byte	.LASF745
	.sleb128 426
	.uleb128 0x20
	.4byte	.LASF746
	.sleb128 427
	.uleb128 0x20
	.4byte	.LASF747
	.sleb128 428
	.uleb128 0x20
	.4byte	.LASF748
	.sleb128 429
	.uleb128 0x20
	.4byte	.LASF749
	.sleb128 430
	.uleb128 0x20
	.4byte	.LASF750
	.sleb128 431
	.uleb128 0x20
	.4byte	.LASF751
	.sleb128 432
	.uleb128 0x20
	.4byte	.LASF752
	.sleb128 433
	.uleb128 0x20
	.4byte	.LASF753
	.sleb128 434
	.uleb128 0x20
	.4byte	.LASF754
	.sleb128 435
	.uleb128 0x20
	.4byte	.LASF755
	.sleb128 436
	.uleb128 0x20
	.4byte	.LASF756
	.sleb128 437
	.uleb128 0x20
	.4byte	.LASF757
	.sleb128 438
	.uleb128 0x20
	.4byte	.LASF758
	.sleb128 439
	.uleb128 0x20
	.4byte	.LASF759
	.sleb128 440
	.uleb128 0x20
	.4byte	.LASF760
	.sleb128 441
	.uleb128 0x20
	.4byte	.LASF761
	.sleb128 442
	.uleb128 0x20
	.4byte	.LASF762
	.sleb128 443
	.uleb128 0x20
	.4byte	.LASF763
	.sleb128 444
	.uleb128 0x20
	.4byte	.LASF764
	.sleb128 445
	.uleb128 0x20
	.4byte	.LASF765
	.sleb128 446
	.uleb128 0x20
	.4byte	.LASF766
	.sleb128 447
	.uleb128 0x20
	.4byte	.LASF767
	.sleb128 448
	.uleb128 0x20
	.4byte	.LASF768
	.sleb128 449
	.uleb128 0x20
	.4byte	.LASF769
	.sleb128 450
	.uleb128 0x20
	.4byte	.LASF770
	.sleb128 451
	.uleb128 0x20
	.4byte	.LASF771
	.sleb128 452
	.uleb128 0x20
	.4byte	.LASF772
	.sleb128 453
	.uleb128 0x20
	.4byte	.LASF773
	.sleb128 454
	.uleb128 0x20
	.4byte	.LASF774
	.sleb128 455
	.uleb128 0x20
	.4byte	.LASF775
	.sleb128 456
	.uleb128 0x20
	.4byte	.LASF776
	.sleb128 457
	.uleb128 0x20
	.4byte	.LASF777
	.sleb128 458
	.uleb128 0x20
	.4byte	.LASF778
	.sleb128 459
	.uleb128 0x20
	.4byte	.LASF779
	.sleb128 460
	.uleb128 0x20
	.4byte	.LASF780
	.sleb128 461
	.uleb128 0x20
	.4byte	.LASF781
	.sleb128 462
	.uleb128 0x20
	.4byte	.LASF782
	.sleb128 463
	.uleb128 0x20
	.4byte	.LASF783
	.sleb128 464
	.uleb128 0x20
	.4byte	.LASF784
	.sleb128 465
	.uleb128 0x20
	.4byte	.LASF785
	.sleb128 466
	.uleb128 0x20
	.4byte	.LASF786
	.sleb128 467
	.uleb128 0x20
	.4byte	.LASF787
	.sleb128 468
	.uleb128 0x20
	.4byte	.LASF788
	.sleb128 469
	.uleb128 0x20
	.4byte	.LASF789
	.sleb128 470
	.uleb128 0x20
	.4byte	.LASF790
	.sleb128 471
	.uleb128 0x20
	.4byte	.LASF791
	.sleb128 472
	.uleb128 0x20
	.4byte	.LASF792
	.sleb128 473
	.uleb128 0x20
	.4byte	.LASF793
	.sleb128 474
	.uleb128 0x20
	.4byte	.LASF794
	.sleb128 475
	.uleb128 0x20
	.4byte	.LASF795
	.sleb128 476
	.uleb128 0x20
	.4byte	.LASF796
	.sleb128 477
	.uleb128 0x20
	.4byte	.LASF797
	.sleb128 478
	.uleb128 0x20
	.4byte	.LASF798
	.sleb128 479
	.uleb128 0x20
	.4byte	.LASF799
	.sleb128 480
	.uleb128 0x20
	.4byte	.LASF800
	.sleb128 481
	.uleb128 0x20
	.4byte	.LASF801
	.sleb128 482
	.uleb128 0x20
	.4byte	.LASF802
	.sleb128 483
	.uleb128 0x20
	.4byte	.LASF803
	.sleb128 484
	.uleb128 0x20
	.4byte	.LASF804
	.sleb128 485
	.uleb128 0x20
	.4byte	.LASF805
	.sleb128 486
	.uleb128 0x20
	.4byte	.LASF806
	.sleb128 487
	.uleb128 0x20
	.4byte	.LASF807
	.sleb128 488
	.uleb128 0x20
	.4byte	.LASF808
	.sleb128 489
	.uleb128 0x20
	.4byte	.LASF809
	.sleb128 490
	.uleb128 0x20
	.4byte	.LASF810
	.sleb128 491
	.uleb128 0x20
	.4byte	.LASF811
	.sleb128 492
	.uleb128 0x20
	.4byte	.LASF812
	.sleb128 493
	.uleb128 0x20
	.4byte	.LASF813
	.sleb128 494
	.uleb128 0x20
	.4byte	.LASF814
	.sleb128 495
	.uleb128 0x20
	.4byte	.LASF815
	.sleb128 496
	.uleb128 0x20
	.4byte	.LASF816
	.sleb128 497
	.uleb128 0x20
	.4byte	.LASF817
	.sleb128 498
	.uleb128 0x20
	.4byte	.LASF818
	.sleb128 499
	.uleb128 0x20
	.4byte	.LASF819
	.sleb128 500
	.uleb128 0x20
	.4byte	.LASF820
	.sleb128 501
	.uleb128 0x20
	.4byte	.LASF821
	.sleb128 502
	.uleb128 0x20
	.4byte	.LASF822
	.sleb128 503
	.uleb128 0x20
	.4byte	.LASF823
	.sleb128 504
	.uleb128 0x20
	.4byte	.LASF824
	.sleb128 505
	.uleb128 0x20
	.4byte	.LASF825
	.sleb128 506
	.uleb128 0x20
	.4byte	.LASF826
	.sleb128 507
	.uleb128 0x20
	.4byte	.LASF827
	.sleb128 508
	.uleb128 0x20
	.4byte	.LASF828
	.sleb128 509
	.uleb128 0x20
	.4byte	.LASF829
	.sleb128 510
	.uleb128 0x20
	.4byte	.LASF830
	.sleb128 511
	.uleb128 0x20
	.4byte	.LASF831
	.sleb128 512
	.uleb128 0x20
	.4byte	.LASF832
	.sleb128 513
	.uleb128 0x20
	.4byte	.LASF833
	.sleb128 514
	.uleb128 0x20
	.4byte	.LASF834
	.sleb128 515
	.uleb128 0x20
	.4byte	.LASF835
	.sleb128 516
	.uleb128 0x20
	.4byte	.LASF836
	.sleb128 517
	.uleb128 0x20
	.4byte	.LASF837
	.sleb128 518
	.uleb128 0x20
	.4byte	.LASF838
	.sleb128 519
	.uleb128 0x20
	.4byte	.LASF839
	.sleb128 520
	.uleb128 0x20
	.4byte	.LASF840
	.sleb128 521
	.uleb128 0x20
	.4byte	.LASF841
	.sleb128 522
	.uleb128 0x20
	.4byte	.LASF842
	.sleb128 523
	.uleb128 0x20
	.4byte	.LASF843
	.sleb128 524
	.uleb128 0x20
	.4byte	.LASF844
	.sleb128 525
	.uleb128 0x20
	.4byte	.LASF845
	.sleb128 526
	.uleb128 0x20
	.4byte	.LASF846
	.sleb128 527
	.uleb128 0x20
	.4byte	.LASF847
	.sleb128 528
	.uleb128 0x20
	.4byte	.LASF848
	.sleb128 529
	.uleb128 0x20
	.4byte	.LASF849
	.sleb128 530
	.uleb128 0x20
	.4byte	.LASF850
	.sleb128 531
	.uleb128 0x20
	.4byte	.LASF851
	.sleb128 532
	.uleb128 0x20
	.4byte	.LASF852
	.sleb128 533
	.uleb128 0x20
	.4byte	.LASF853
	.sleb128 534
	.uleb128 0x20
	.4byte	.LASF854
	.sleb128 535
	.uleb128 0x20
	.4byte	.LASF855
	.sleb128 536
	.uleb128 0x20
	.4byte	.LASF856
	.sleb128 537
	.uleb128 0x20
	.4byte	.LASF857
	.sleb128 538
	.uleb128 0x20
	.4byte	.LASF858
	.sleb128 539
	.uleb128 0x20
	.4byte	.LASF859
	.sleb128 540
	.uleb128 0x20
	.4byte	.LASF860
	.sleb128 541
	.uleb128 0x20
	.4byte	.LASF861
	.sleb128 542
	.uleb128 0x20
	.4byte	.LASF862
	.sleb128 543
	.uleb128 0x20
	.4byte	.LASF863
	.sleb128 544
	.uleb128 0x20
	.4byte	.LASF864
	.sleb128 545
	.uleb128 0x20
	.4byte	.LASF865
	.sleb128 546
	.uleb128 0x20
	.4byte	.LASF866
	.sleb128 547
	.uleb128 0x20
	.4byte	.LASF867
	.sleb128 548
	.uleb128 0x20
	.4byte	.LASF868
	.sleb128 549
	.uleb128 0x20
	.4byte	.LASF869
	.sleb128 550
	.uleb128 0x20
	.4byte	.LASF870
	.sleb128 551
	.uleb128 0x20
	.4byte	.LASF871
	.sleb128 552
	.uleb128 0x20
	.4byte	.LASF872
	.sleb128 553
	.uleb128 0x20
	.4byte	.LASF873
	.sleb128 554
	.uleb128 0x20
	.4byte	.LASF874
	.sleb128 555
	.uleb128 0x20
	.4byte	.LASF875
	.sleb128 556
	.uleb128 0x20
	.4byte	.LASF876
	.sleb128 557
	.uleb128 0x20
	.4byte	.LASF877
	.sleb128 558
	.uleb128 0x20
	.4byte	.LASF878
	.sleb128 559
	.uleb128 0x20
	.4byte	.LASF879
	.sleb128 560
	.uleb128 0x20
	.4byte	.LASF880
	.sleb128 561
	.uleb128 0x20
	.4byte	.LASF881
	.sleb128 562
	.uleb128 0x20
	.4byte	.LASF882
	.sleb128 563
	.uleb128 0x20
	.4byte	.LASF883
	.sleb128 564
	.uleb128 0x20
	.4byte	.LASF884
	.sleb128 565
	.uleb128 0x20
	.4byte	.LASF885
	.sleb128 566
	.uleb128 0x20
	.4byte	.LASF886
	.sleb128 567
	.uleb128 0x20
	.4byte	.LASF887
	.sleb128 568
	.uleb128 0x20
	.4byte	.LASF888
	.sleb128 569
	.uleb128 0x20
	.4byte	.LASF889
	.sleb128 570
	.uleb128 0x20
	.4byte	.LASF890
	.sleb128 571
	.uleb128 0x20
	.4byte	.LASF891
	.sleb128 572
	.uleb128 0x20
	.4byte	.LASF892
	.sleb128 573
	.uleb128 0x20
	.4byte	.LASF893
	.sleb128 574
	.uleb128 0x20
	.4byte	.LASF894
	.sleb128 575
	.uleb128 0x20
	.4byte	.LASF895
	.sleb128 576
	.uleb128 0x20
	.4byte	.LASF896
	.sleb128 577
	.uleb128 0x20
	.4byte	.LASF897
	.sleb128 578
	.uleb128 0x20
	.4byte	.LASF898
	.sleb128 579
	.uleb128 0x20
	.4byte	.LASF899
	.sleb128 580
	.uleb128 0x20
	.4byte	.LASF900
	.sleb128 581
	.uleb128 0x20
	.4byte	.LASF901
	.sleb128 582
	.uleb128 0x20
	.4byte	.LASF902
	.sleb128 583
	.uleb128 0x20
	.4byte	.LASF903
	.sleb128 584
	.uleb128 0x20
	.4byte	.LASF904
	.sleb128 585
	.uleb128 0x20
	.4byte	.LASF905
	.sleb128 586
	.uleb128 0x20
	.4byte	.LASF906
	.sleb128 587
	.uleb128 0x20
	.4byte	.LASF907
	.sleb128 588
	.uleb128 0x20
	.4byte	.LASF908
	.sleb128 589
	.uleb128 0x20
	.4byte	.LASF909
	.sleb128 590
	.uleb128 0x20
	.4byte	.LASF910
	.sleb128 591
	.uleb128 0x20
	.4byte	.LASF911
	.sleb128 592
	.uleb128 0x20
	.4byte	.LASF912
	.sleb128 593
	.uleb128 0x20
	.4byte	.LASF913
	.sleb128 594
	.uleb128 0x20
	.4byte	.LASF914
	.sleb128 595
	.uleb128 0x20
	.4byte	.LASF915
	.sleb128 596
	.uleb128 0x20
	.4byte	.LASF916
	.sleb128 597
	.uleb128 0x20
	.4byte	.LASF917
	.sleb128 598
	.uleb128 0x20
	.4byte	.LASF918
	.sleb128 599
	.uleb128 0x20
	.4byte	.LASF919
	.sleb128 600
	.uleb128 0x20
	.4byte	.LASF920
	.sleb128 601
	.uleb128 0x20
	.4byte	.LASF921
	.sleb128 602
	.uleb128 0x20
	.4byte	.LASF922
	.sleb128 603
	.uleb128 0x20
	.4byte	.LASF923
	.sleb128 604
	.uleb128 0x20
	.4byte	.LASF924
	.sleb128 605
	.uleb128 0x20
	.4byte	.LASF925
	.sleb128 606
	.uleb128 0x20
	.4byte	.LASF926
	.sleb128 607
	.uleb128 0x20
	.4byte	.LASF927
	.sleb128 608
	.uleb128 0x20
	.4byte	.LASF928
	.sleb128 609
	.uleb128 0x20
	.4byte	.LASF929
	.sleb128 610
	.uleb128 0x20
	.4byte	.LASF930
	.sleb128 611
	.uleb128 0x20
	.4byte	.LASF931
	.sleb128 612
	.uleb128 0x20
	.4byte	.LASF932
	.sleb128 613
	.uleb128 0x20
	.4byte	.LASF933
	.sleb128 614
	.uleb128 0x20
	.4byte	.LASF934
	.sleb128 615
	.uleb128 0x20
	.4byte	.LASF935
	.sleb128 616
	.uleb128 0x20
	.4byte	.LASF936
	.sleb128 617
	.uleb128 0x20
	.4byte	.LASF937
	.sleb128 618
	.uleb128 0x20
	.4byte	.LASF938
	.sleb128 619
	.uleb128 0x20
	.4byte	.LASF939
	.sleb128 620
	.uleb128 0x20
	.4byte	.LASF940
	.sleb128 621
	.uleb128 0x20
	.4byte	.LASF941
	.sleb128 622
	.uleb128 0x20
	.4byte	.LASF942
	.sleb128 623
	.uleb128 0x20
	.4byte	.LASF943
	.sleb128 624
	.uleb128 0x20
	.4byte	.LASF944
	.sleb128 625
	.uleb128 0x20
	.4byte	.LASF945
	.sleb128 626
	.uleb128 0x20
	.4byte	.LASF946
	.sleb128 627
	.uleb128 0x20
	.4byte	.LASF947
	.sleb128 628
	.uleb128 0x20
	.4byte	.LASF948
	.sleb128 629
	.uleb128 0x20
	.4byte	.LASF949
	.sleb128 630
	.uleb128 0x20
	.4byte	.LASF950
	.sleb128 631
	.uleb128 0x20
	.4byte	.LASF951
	.sleb128 632
	.uleb128 0x20
	.4byte	.LASF952
	.sleb128 633
	.uleb128 0x20
	.4byte	.LASF953
	.sleb128 634
	.uleb128 0x20
	.4byte	.LASF954
	.sleb128 635
	.uleb128 0x20
	.4byte	.LASF955
	.sleb128 636
	.uleb128 0x20
	.4byte	.LASF956
	.sleb128 637
	.uleb128 0x20
	.4byte	.LASF957
	.sleb128 638
	.uleb128 0x20
	.4byte	.LASF958
	.sleb128 639
	.uleb128 0x20
	.4byte	.LASF959
	.sleb128 640
	.uleb128 0x20
	.4byte	.LASF960
	.sleb128 641
	.uleb128 0x20
	.4byte	.LASF961
	.sleb128 642
	.uleb128 0x20
	.4byte	.LASF962
	.sleb128 643
	.uleb128 0x20
	.4byte	.LASF963
	.sleb128 644
	.uleb128 0x20
	.4byte	.LASF964
	.sleb128 645
	.uleb128 0x20
	.4byte	.LASF965
	.sleb128 646
	.uleb128 0x20
	.4byte	.LASF966
	.sleb128 647
	.uleb128 0x20
	.4byte	.LASF967
	.sleb128 648
	.uleb128 0x20
	.4byte	.LASF968
	.sleb128 649
	.uleb128 0x20
	.4byte	.LASF969
	.sleb128 650
	.uleb128 0x20
	.4byte	.LASF970
	.sleb128 651
	.uleb128 0x20
	.4byte	.LASF971
	.sleb128 652
	.uleb128 0x20
	.4byte	.LASF972
	.sleb128 653
	.uleb128 0x20
	.4byte	.LASF973
	.sleb128 654
	.uleb128 0x20
	.4byte	.LASF974
	.sleb128 655
	.uleb128 0x20
	.4byte	.LASF975
	.sleb128 656
	.uleb128 0x20
	.4byte	.LASF976
	.sleb128 657
	.uleb128 0x20
	.4byte	.LASF977
	.sleb128 658
	.uleb128 0x20
	.4byte	.LASF978
	.sleb128 659
	.uleb128 0x20
	.4byte	.LASF979
	.sleb128 660
	.uleb128 0x20
	.4byte	.LASF980
	.sleb128 661
	.uleb128 0x20
	.4byte	.LASF981
	.sleb128 662
	.uleb128 0x20
	.4byte	.LASF982
	.sleb128 663
	.uleb128 0x20
	.4byte	.LASF983
	.sleb128 664
	.uleb128 0x20
	.4byte	.LASF984
	.sleb128 665
	.uleb128 0x20
	.4byte	.LASF985
	.sleb128 666
	.uleb128 0x20
	.4byte	.LASF986
	.sleb128 667
	.uleb128 0x20
	.4byte	.LASF987
	.sleb128 668
	.uleb128 0x20
	.4byte	.LASF988
	.sleb128 669
	.uleb128 0x20
	.4byte	.LASF989
	.sleb128 670
	.uleb128 0x20
	.4byte	.LASF990
	.sleb128 671
	.uleb128 0x20
	.4byte	.LASF991
	.sleb128 672
	.uleb128 0x20
	.4byte	.LASF992
	.sleb128 673
	.uleb128 0x20
	.4byte	.LASF993
	.sleb128 674
	.uleb128 0x20
	.4byte	.LASF994
	.sleb128 675
	.uleb128 0x20
	.4byte	.LASF995
	.sleb128 676
	.uleb128 0x20
	.4byte	.LASF996
	.sleb128 677
	.uleb128 0x20
	.4byte	.LASF997
	.sleb128 678
	.uleb128 0x20
	.4byte	.LASF998
	.sleb128 679
	.uleb128 0x20
	.4byte	.LASF999
	.sleb128 680
	.uleb128 0x20
	.4byte	.LASF1000
	.sleb128 681
	.uleb128 0x20
	.4byte	.LASF1001
	.sleb128 682
	.uleb128 0x20
	.4byte	.LASF1002
	.sleb128 683
	.uleb128 0x20
	.4byte	.LASF1003
	.sleb128 684
	.uleb128 0x20
	.4byte	.LASF1004
	.sleb128 685
	.uleb128 0x20
	.4byte	.LASF1005
	.sleb128 686
	.uleb128 0x20
	.4byte	.LASF1006
	.sleb128 687
	.uleb128 0x20
	.4byte	.LASF1007
	.sleb128 688
	.uleb128 0x20
	.4byte	.LASF1008
	.sleb128 689
	.uleb128 0x20
	.4byte	.LASF1009
	.sleb128 690
	.uleb128 0x20
	.4byte	.LASF1010
	.sleb128 691
	.uleb128 0x20
	.4byte	.LASF1011
	.sleb128 692
	.uleb128 0x20
	.4byte	.LASF1012
	.sleb128 693
	.uleb128 0x20
	.4byte	.LASF1013
	.sleb128 694
	.uleb128 0x20
	.4byte	.LASF1014
	.sleb128 695
	.uleb128 0x20
	.4byte	.LASF1015
	.sleb128 696
	.uleb128 0x20
	.4byte	.LASF1016
	.sleb128 697
	.uleb128 0x20
	.4byte	.LASF1017
	.sleb128 698
	.uleb128 0x20
	.4byte	.LASF1018
	.sleb128 699
	.uleb128 0x20
	.4byte	.LASF1019
	.sleb128 700
	.uleb128 0x20
	.4byte	.LASF1020
	.sleb128 701
	.uleb128 0x20
	.4byte	.LASF1021
	.sleb128 702
	.uleb128 0x20
	.4byte	.LASF1022
	.sleb128 703
	.uleb128 0x20
	.4byte	.LASF1023
	.sleb128 704
	.uleb128 0x20
	.4byte	.LASF1024
	.sleb128 705
	.uleb128 0x20
	.4byte	.LASF1025
	.sleb128 706
	.uleb128 0x20
	.4byte	.LASF1026
	.sleb128 707
	.uleb128 0x20
	.4byte	.LASF1027
	.sleb128 708
	.uleb128 0x20
	.4byte	.LASF1028
	.sleb128 709
	.uleb128 0x20
	.4byte	.LASF1029
	.sleb128 710
	.uleb128 0x20
	.4byte	.LASF1030
	.sleb128 711
	.uleb128 0x20
	.4byte	.LASF1031
	.sleb128 712
	.uleb128 0x20
	.4byte	.LASF1032
	.sleb128 713
	.uleb128 0x20
	.4byte	.LASF1033
	.sleb128 714
	.uleb128 0x20
	.4byte	.LASF1034
	.sleb128 715
	.uleb128 0x20
	.4byte	.LASF1035
	.sleb128 716
	.uleb128 0x20
	.4byte	.LASF1036
	.sleb128 717
	.uleb128 0x20
	.4byte	.LASF1037
	.sleb128 718
	.uleb128 0x20
	.4byte	.LASF1038
	.sleb128 719
	.uleb128 0x20
	.4byte	.LASF1039
	.sleb128 720
	.uleb128 0x20
	.4byte	.LASF1040
	.sleb128 721
	.uleb128 0x20
	.4byte	.LASF1041
	.sleb128 722
	.uleb128 0x20
	.4byte	.LASF1042
	.sleb128 723
	.uleb128 0x20
	.4byte	.LASF1043
	.sleb128 724
	.uleb128 0x20
	.4byte	.LASF1044
	.sleb128 725
	.uleb128 0x20
	.4byte	.LASF1045
	.sleb128 726
	.uleb128 0x20
	.4byte	.LASF1046
	.sleb128 727
	.uleb128 0x20
	.4byte	.LASF1047
	.sleb128 728
	.uleb128 0x20
	.4byte	.LASF1048
	.sleb128 729
	.uleb128 0x20
	.4byte	.LASF1049
	.sleb128 730
	.uleb128 0x20
	.4byte	.LASF1050
	.sleb128 731
	.uleb128 0x20
	.4byte	.LASF1051
	.sleb128 732
	.uleb128 0x20
	.4byte	.LASF1052
	.sleb128 733
	.uleb128 0x20
	.4byte	.LASF1053
	.sleb128 734
	.uleb128 0x20
	.4byte	.LASF1054
	.sleb128 735
	.uleb128 0x20
	.4byte	.LASF1055
	.sleb128 736
	.uleb128 0x20
	.4byte	.LASF1056
	.sleb128 737
	.uleb128 0x20
	.4byte	.LASF1057
	.sleb128 738
	.uleb128 0x20
	.4byte	.LASF1058
	.sleb128 739
	.uleb128 0x20
	.4byte	.LASF1059
	.sleb128 740
	.uleb128 0x20
	.4byte	.LASF1060
	.sleb128 741
	.uleb128 0x20
	.4byte	.LASF1061
	.sleb128 742
	.uleb128 0x20
	.4byte	.LASF1062
	.sleb128 743
	.uleb128 0x20
	.4byte	.LASF1063
	.sleb128 744
	.uleb128 0x20
	.4byte	.LASF1064
	.sleb128 745
	.uleb128 0x20
	.4byte	.LASF1065
	.sleb128 746
	.uleb128 0x20
	.4byte	.LASF1066
	.sleb128 747
	.uleb128 0x20
	.4byte	.LASF1067
	.sleb128 748
	.uleb128 0x20
	.4byte	.LASF1068
	.sleb128 749
	.uleb128 0x20
	.4byte	.LASF1069
	.sleb128 750
	.uleb128 0x20
	.4byte	.LASF1070
	.sleb128 751
	.uleb128 0x20
	.4byte	.LASF1071
	.sleb128 752
	.uleb128 0x20
	.4byte	.LASF1072
	.sleb128 753
	.uleb128 0x20
	.4byte	.LASF1073
	.sleb128 754
	.uleb128 0x20
	.4byte	.LASF1074
	.sleb128 755
	.uleb128 0x20
	.4byte	.LASF1075
	.sleb128 756
	.uleb128 0x20
	.4byte	.LASF1076
	.sleb128 757
	.uleb128 0x20
	.4byte	.LASF1077
	.sleb128 758
	.uleb128 0x20
	.4byte	.LASF1078
	.sleb128 759
	.uleb128 0x20
	.4byte	.LASF1079
	.sleb128 760
	.uleb128 0x20
	.4byte	.LASF1080
	.sleb128 761
	.uleb128 0x20
	.4byte	.LASF1081
	.sleb128 762
	.uleb128 0x20
	.4byte	.LASF1082
	.sleb128 763
	.uleb128 0x20
	.4byte	.LASF1083
	.sleb128 764
	.uleb128 0x20
	.4byte	.LASF1084
	.sleb128 765
	.uleb128 0x20
	.4byte	.LASF1085
	.sleb128 766
	.uleb128 0x20
	.4byte	.LASF1086
	.sleb128 767
	.uleb128 0x20
	.4byte	.LASF1087
	.sleb128 768
	.uleb128 0x20
	.4byte	.LASF1088
	.sleb128 769
	.uleb128 0x20
	.4byte	.LASF1089
	.sleb128 770
	.uleb128 0x20
	.4byte	.LASF1090
	.sleb128 771
	.uleb128 0x20
	.4byte	.LASF1091
	.sleb128 772
	.uleb128 0x20
	.4byte	.LASF1092
	.sleb128 773
	.uleb128 0x20
	.4byte	.LASF1093
	.sleb128 774
	.uleb128 0x20
	.4byte	.LASF1094
	.sleb128 775
	.uleb128 0x20
	.4byte	.LASF1095
	.sleb128 776
	.uleb128 0x20
	.4byte	.LASF1096
	.sleb128 777
	.uleb128 0x20
	.4byte	.LASF1097
	.sleb128 778
	.uleb128 0x20
	.4byte	.LASF1098
	.sleb128 779
	.uleb128 0x20
	.4byte	.LASF1099
	.sleb128 780
	.uleb128 0x20
	.4byte	.LASF1100
	.sleb128 781
	.uleb128 0x20
	.4byte	.LASF1101
	.sleb128 782
	.uleb128 0x20
	.4byte	.LASF1102
	.sleb128 783
	.uleb128 0x20
	.4byte	.LASF1103
	.sleb128 784
	.uleb128 0x20
	.4byte	.LASF1104
	.sleb128 785
	.uleb128 0x20
	.4byte	.LASF1105
	.sleb128 786
	.uleb128 0x20
	.4byte	.LASF1106
	.sleb128 787
	.uleb128 0x20
	.4byte	.LASF1107
	.sleb128 788
	.uleb128 0x20
	.4byte	.LASF1108
	.sleb128 789
	.uleb128 0x20
	.4byte	.LASF1109
	.sleb128 790
	.uleb128 0x20
	.4byte	.LASF1110
	.sleb128 791
	.uleb128 0x20
	.4byte	.LASF1111
	.sleb128 792
	.uleb128 0x20
	.4byte	.LASF1112
	.sleb128 793
	.uleb128 0x20
	.4byte	.LASF1113
	.sleb128 794
	.uleb128 0x20
	.4byte	.LASF1114
	.sleb128 795
	.uleb128 0x20
	.4byte	.LASF1115
	.sleb128 796
	.uleb128 0x20
	.4byte	.LASF1116
	.sleb128 797
	.uleb128 0x20
	.4byte	.LASF1117
	.sleb128 798
	.uleb128 0x20
	.4byte	.LASF1118
	.sleb128 799
	.uleb128 0x20
	.4byte	.LASF1119
	.sleb128 800
	.uleb128 0x20
	.4byte	.LASF1120
	.sleb128 801
	.uleb128 0x20
	.4byte	.LASF1121
	.sleb128 802
	.uleb128 0x20
	.4byte	.LASF1122
	.sleb128 803
	.uleb128 0x20
	.4byte	.LASF1123
	.sleb128 804
	.uleb128 0x20
	.4byte	.LASF1124
	.sleb128 805
	.uleb128 0x20
	.4byte	.LASF1125
	.sleb128 806
	.uleb128 0x20
	.4byte	.LASF1126
	.sleb128 807
	.uleb128 0x20
	.4byte	.LASF1127
	.sleb128 808
	.uleb128 0x20
	.4byte	.LASF1128
	.sleb128 809
	.uleb128 0x20
	.4byte	.LASF1129
	.sleb128 810
	.uleb128 0x20
	.4byte	.LASF1130
	.sleb128 811
	.uleb128 0x20
	.4byte	.LASF1131
	.sleb128 812
	.uleb128 0x20
	.4byte	.LASF1132
	.sleb128 813
	.uleb128 0x20
	.4byte	.LASF1133
	.sleb128 814
	.uleb128 0x20
	.4byte	.LASF1134
	.sleb128 815
	.uleb128 0x20
	.4byte	.LASF1135
	.sleb128 816
	.uleb128 0x20
	.4byte	.LASF1136
	.sleb128 817
	.uleb128 0x20
	.4byte	.LASF1137
	.sleb128 818
	.uleb128 0x20
	.4byte	.LASF1138
	.sleb128 819
	.uleb128 0x20
	.4byte	.LASF1139
	.sleb128 820
	.uleb128 0x20
	.4byte	.LASF1140
	.sleb128 821
	.uleb128 0x20
	.4byte	.LASF1141
	.sleb128 822
	.uleb128 0x20
	.4byte	.LASF1142
	.sleb128 823
	.uleb128 0x20
	.4byte	.LASF1143
	.sleb128 824
	.uleb128 0x20
	.4byte	.LASF1144
	.sleb128 825
	.uleb128 0x20
	.4byte	.LASF1145
	.sleb128 826
	.uleb128 0x20
	.4byte	.LASF1146
	.sleb128 827
	.uleb128 0x20
	.4byte	.LASF1147
	.sleb128 828
	.uleb128 0x20
	.4byte	.LASF1148
	.sleb128 829
	.uleb128 0x20
	.4byte	.LASF1149
	.sleb128 830
	.uleb128 0x20
	.4byte	.LASF1150
	.sleb128 831
	.uleb128 0x20
	.4byte	.LASF1151
	.sleb128 832
	.uleb128 0x20
	.4byte	.LASF1152
	.sleb128 833
	.uleb128 0x20
	.4byte	.LASF1153
	.sleb128 834
	.uleb128 0x20
	.4byte	.LASF1154
	.sleb128 835
	.uleb128 0x20
	.4byte	.LASF1155
	.sleb128 836
	.uleb128 0x20
	.4byte	.LASF1156
	.sleb128 837
	.uleb128 0x20
	.4byte	.LASF1157
	.sleb128 838
	.uleb128 0x20
	.4byte	.LASF1158
	.sleb128 839
	.uleb128 0x20
	.4byte	.LASF1159
	.sleb128 840
	.uleb128 0x20
	.4byte	.LASF1160
	.sleb128 841
	.uleb128 0x20
	.4byte	.LASF1161
	.sleb128 842
	.uleb128 0x20
	.4byte	.LASF1162
	.sleb128 843
	.uleb128 0x20
	.4byte	.LASF1163
	.sleb128 844
	.uleb128 0x20
	.4byte	.LASF1164
	.sleb128 845
	.uleb128 0x20
	.4byte	.LASF1165
	.sleb128 846
	.uleb128 0x20
	.4byte	.LASF1166
	.sleb128 847
	.uleb128 0x20
	.4byte	.LASF1167
	.sleb128 848
	.uleb128 0x20
	.4byte	.LASF1168
	.sleb128 849
	.uleb128 0x20
	.4byte	.LASF1169
	.sleb128 850
	.uleb128 0x20
	.4byte	.LASF1170
	.sleb128 851
	.uleb128 0x20
	.4byte	.LASF1171
	.sleb128 852
	.uleb128 0x20
	.4byte	.LASF1172
	.sleb128 853
	.uleb128 0x20
	.4byte	.LASF1173
	.sleb128 854
	.uleb128 0x20
	.4byte	.LASF1174
	.sleb128 855
	.uleb128 0x20
	.4byte	.LASF1175
	.sleb128 856
	.uleb128 0x20
	.4byte	.LASF1176
	.sleb128 857
	.uleb128 0x20
	.4byte	.LASF1177
	.sleb128 858
	.uleb128 0x20
	.4byte	.LASF1178
	.sleb128 859
	.uleb128 0x20
	.4byte	.LASF1179
	.sleb128 860
	.uleb128 0x20
	.4byte	.LASF1180
	.sleb128 861
	.uleb128 0x20
	.4byte	.LASF1181
	.sleb128 862
	.uleb128 0x20
	.4byte	.LASF1182
	.sleb128 863
	.uleb128 0x20
	.4byte	.LASF1183
	.sleb128 864
	.uleb128 0x20
	.4byte	.LASF1184
	.sleb128 865
	.uleb128 0x20
	.4byte	.LASF1185
	.sleb128 866
	.uleb128 0x20
	.4byte	.LASF1186
	.sleb128 867
	.uleb128 0x20
	.4byte	.LASF1187
	.sleb128 868
	.uleb128 0x20
	.4byte	.LASF1188
	.sleb128 869
	.uleb128 0x20
	.4byte	.LASF1189
	.sleb128 870
	.uleb128 0x20
	.4byte	.LASF1190
	.sleb128 871
	.uleb128 0x20
	.4byte	.LASF1191
	.sleb128 872
	.uleb128 0x20
	.4byte	.LASF1192
	.sleb128 873
	.uleb128 0x20
	.4byte	.LASF1193
	.sleb128 874
	.uleb128 0x20
	.4byte	.LASF1194
	.sleb128 875
	.uleb128 0x20
	.4byte	.LASF1195
	.sleb128 876
	.uleb128 0x20
	.4byte	.LASF1196
	.sleb128 877
	.uleb128 0x20
	.4byte	.LASF1197
	.sleb128 878
	.uleb128 0x20
	.4byte	.LASF1198
	.sleb128 879
	.uleb128 0x20
	.4byte	.LASF1199
	.sleb128 880
	.uleb128 0x20
	.4byte	.LASF1200
	.sleb128 881
	.uleb128 0x20
	.4byte	.LASF1201
	.sleb128 882
	.uleb128 0x20
	.4byte	.LASF1202
	.sleb128 883
	.uleb128 0x20
	.4byte	.LASF1203
	.sleb128 884
	.uleb128 0x20
	.4byte	.LASF1204
	.sleb128 885
	.uleb128 0x20
	.4byte	.LASF1205
	.sleb128 886
	.uleb128 0x20
	.4byte	.LASF1206
	.sleb128 887
	.uleb128 0x20
	.4byte	.LASF1207
	.sleb128 888
	.uleb128 0x20
	.4byte	.LASF1208
	.sleb128 889
	.uleb128 0x20
	.4byte	.LASF1209
	.sleb128 890
	.uleb128 0x20
	.4byte	.LASF1210
	.sleb128 891
	.uleb128 0x20
	.4byte	.LASF1211
	.sleb128 892
	.uleb128 0x20
	.4byte	.LASF1212
	.sleb128 893
	.uleb128 0x20
	.4byte	.LASF1213
	.sleb128 894
	.uleb128 0x20
	.4byte	.LASF1214
	.sleb128 895
	.uleb128 0x20
	.4byte	.LASF1215
	.sleb128 896
	.uleb128 0x20
	.4byte	.LASF1216
	.sleb128 897
	.uleb128 0x20
	.4byte	.LASF1217
	.sleb128 898
	.uleb128 0x20
	.4byte	.LASF1218
	.sleb128 899
	.uleb128 0x20
	.4byte	.LASF1219
	.sleb128 900
	.uleb128 0x20
	.4byte	.LASF1220
	.sleb128 901
	.uleb128 0x20
	.4byte	.LASF1221
	.sleb128 902
	.uleb128 0x20
	.4byte	.LASF1222
	.sleb128 903
	.uleb128 0x20
	.4byte	.LASF1223
	.sleb128 904
	.uleb128 0x20
	.4byte	.LASF1224
	.sleb128 905
	.uleb128 0x20
	.4byte	.LASF1225
	.sleb128 906
	.uleb128 0x20
	.4byte	.LASF1226
	.sleb128 907
	.uleb128 0x20
	.4byte	.LASF1227
	.sleb128 908
	.uleb128 0x20
	.4byte	.LASF1228
	.sleb128 909
	.uleb128 0x20
	.4byte	.LASF1229
	.sleb128 910
	.uleb128 0x20
	.4byte	.LASF1230
	.sleb128 911
	.uleb128 0x20
	.4byte	.LASF1231
	.sleb128 912
	.uleb128 0x20
	.4byte	.LASF1232
	.sleb128 913
	.uleb128 0x20
	.4byte	.LASF1233
	.sleb128 914
	.uleb128 0x20
	.4byte	.LASF1234
	.sleb128 915
	.uleb128 0x20
	.4byte	.LASF1235
	.sleb128 916
	.uleb128 0x20
	.4byte	.LASF1236
	.sleb128 917
	.uleb128 0x20
	.4byte	.LASF1237
	.sleb128 918
	.uleb128 0x20
	.4byte	.LASF1238
	.sleb128 919
	.uleb128 0x20
	.4byte	.LASF1239
	.sleb128 920
	.uleb128 0x20
	.4byte	.LASF1240
	.sleb128 921
	.uleb128 0x20
	.4byte	.LASF1241
	.sleb128 922
	.uleb128 0x20
	.4byte	.LASF1242
	.sleb128 923
	.uleb128 0x20
	.4byte	.LASF1243
	.sleb128 924
	.uleb128 0x20
	.4byte	.LASF1244
	.sleb128 925
	.uleb128 0x20
	.4byte	.LASF1245
	.sleb128 926
	.uleb128 0x20
	.4byte	.LASF1246
	.sleb128 927
	.uleb128 0x20
	.4byte	.LASF1247
	.sleb128 928
	.uleb128 0x20
	.4byte	.LASF1248
	.sleb128 929
	.uleb128 0x20
	.4byte	.LASF1249
	.sleb128 930
	.uleb128 0x20
	.4byte	.LASF1250
	.sleb128 931
	.uleb128 0x20
	.4byte	.LASF1251
	.sleb128 932
	.uleb128 0x20
	.4byte	.LASF1252
	.sleb128 933
	.uleb128 0x20
	.4byte	.LASF1253
	.sleb128 934
	.uleb128 0x20
	.4byte	.LASF1254
	.sleb128 935
	.uleb128 0x20
	.4byte	.LASF1255
	.sleb128 936
	.uleb128 0x20
	.4byte	.LASF1256
	.sleb128 937
	.uleb128 0x20
	.4byte	.LASF1257
	.sleb128 938
	.uleb128 0x20
	.4byte	.LASF1258
	.sleb128 939
	.uleb128 0x20
	.4byte	.LASF1259
	.sleb128 940
	.uleb128 0x20
	.4byte	.LASF1260
	.sleb128 941
	.uleb128 0x20
	.4byte	.LASF1261
	.sleb128 942
	.uleb128 0x20
	.4byte	.LASF1262
	.sleb128 943
	.uleb128 0x20
	.4byte	.LASF1263
	.sleb128 944
	.uleb128 0x20
	.4byte	.LASF1264
	.sleb128 945
	.uleb128 0x20
	.4byte	.LASF1265
	.sleb128 946
	.uleb128 0x20
	.4byte	.LASF1266
	.sleb128 947
	.uleb128 0x20
	.4byte	.LASF1267
	.sleb128 948
	.uleb128 0x20
	.4byte	.LASF1268
	.sleb128 949
	.uleb128 0x20
	.4byte	.LASF1269
	.sleb128 950
	.uleb128 0x20
	.4byte	.LASF1270
	.sleb128 951
	.uleb128 0x20
	.4byte	.LASF1271
	.sleb128 952
	.uleb128 0x20
	.4byte	.LASF1272
	.sleb128 953
	.uleb128 0x20
	.4byte	.LASF1273
	.sleb128 954
	.uleb128 0x20
	.4byte	.LASF1274
	.sleb128 955
	.uleb128 0x20
	.4byte	.LASF1275
	.sleb128 956
	.uleb128 0x20
	.4byte	.LASF1276
	.sleb128 957
	.uleb128 0x20
	.4byte	.LASF1277
	.sleb128 958
	.uleb128 0x20
	.4byte	.LASF1278
	.sleb128 959
	.uleb128 0x20
	.4byte	.LASF1279
	.sleb128 960
	.uleb128 0x20
	.4byte	.LASF1280
	.sleb128 961
	.uleb128 0x20
	.4byte	.LASF1281
	.sleb128 962
	.uleb128 0x20
	.4byte	.LASF1282
	.sleb128 963
	.uleb128 0x20
	.4byte	.LASF1283
	.sleb128 964
	.uleb128 0x20
	.4byte	.LASF1284
	.sleb128 965
	.uleb128 0x20
	.4byte	.LASF1285
	.sleb128 966
	.uleb128 0x20
	.4byte	.LASF1286
	.sleb128 967
	.uleb128 0x20
	.4byte	.LASF1287
	.sleb128 968
	.uleb128 0x20
	.4byte	.LASF1288
	.sleb128 969
	.uleb128 0x20
	.4byte	.LASF1289
	.sleb128 970
	.uleb128 0x20
	.4byte	.LASF1290
	.sleb128 971
	.uleb128 0x20
	.4byte	.LASF1291
	.sleb128 972
	.uleb128 0x20
	.4byte	.LASF1292
	.sleb128 973
	.uleb128 0x20
	.4byte	.LASF1293
	.sleb128 974
	.uleb128 0x20
	.4byte	.LASF1294
	.sleb128 975
	.uleb128 0x20
	.4byte	.LASF1295
	.sleb128 976
	.uleb128 0x20
	.4byte	.LASF1296
	.sleb128 977
	.uleb128 0x20
	.4byte	.LASF1297
	.sleb128 978
	.uleb128 0x20
	.4byte	.LASF1298
	.sleb128 979
	.uleb128 0x20
	.4byte	.LASF1299
	.sleb128 980
	.uleb128 0x20
	.4byte	.LASF1300
	.sleb128 981
	.uleb128 0x20
	.4byte	.LASF1301
	.sleb128 982
	.uleb128 0x20
	.4byte	.LASF1302
	.sleb128 983
	.uleb128 0x20
	.4byte	.LASF1303
	.sleb128 984
	.uleb128 0x20
	.4byte	.LASF1304
	.sleb128 985
	.uleb128 0x20
	.4byte	.LASF1305
	.sleb128 986
	.uleb128 0x20
	.4byte	.LASF1306
	.sleb128 987
	.uleb128 0x20
	.4byte	.LASF1307
	.sleb128 988
	.uleb128 0x20
	.4byte	.LASF1308
	.sleb128 989
	.uleb128 0x20
	.4byte	.LASF1309
	.sleb128 990
	.uleb128 0x20
	.4byte	.LASF1310
	.sleb128 991
	.uleb128 0x20
	.4byte	.LASF1311
	.sleb128 992
	.uleb128 0x20
	.4byte	.LASF1312
	.sleb128 993
	.uleb128 0x20
	.4byte	.LASF1313
	.sleb128 994
	.uleb128 0x20
	.4byte	.LASF1314
	.sleb128 995
	.uleb128 0x20
	.4byte	.LASF1315
	.sleb128 996
	.uleb128 0x20
	.4byte	.LASF1316
	.sleb128 997
	.uleb128 0x20
	.4byte	.LASF1317
	.sleb128 998
	.uleb128 0x20
	.4byte	.LASF1318
	.sleb128 999
	.uleb128 0x20
	.4byte	.LASF1319
	.sleb128 1040
	.uleb128 0x20
	.4byte	.LASF1320
	.sleb128 1041
	.uleb128 0x20
	.4byte	.LASF1321
	.sleb128 1042
	.uleb128 0x20
	.4byte	.LASF1322
	.sleb128 1043
	.uleb128 0x20
	.4byte	.LASF1323
	.sleb128 1044
	.uleb128 0x20
	.4byte	.LASF1324
	.sleb128 1045
	.uleb128 0x20
	.4byte	.LASF1325
	.sleb128 1046
	.uleb128 0x20
	.4byte	.LASF1326
	.sleb128 1047
	.uleb128 0x20
	.4byte	.LASF1327
	.sleb128 1048
	.uleb128 0x20
	.4byte	.LASF1328
	.sleb128 1049
	.uleb128 0x20
	.4byte	.LASF1329
	.sleb128 1050
	.uleb128 0x20
	.4byte	.LASF1330
	.sleb128 1051
	.uleb128 0x20
	.4byte	.LASF1331
	.sleb128 1052
	.uleb128 0x20
	.4byte	.LASF1332
	.sleb128 1053
	.uleb128 0x20
	.4byte	.LASF1333
	.sleb128 1054
	.uleb128 0x20
	.4byte	.LASF1334
	.sleb128 1055
	.uleb128 0x20
	.4byte	.LASF1335
	.sleb128 1056
	.uleb128 0x20
	.4byte	.LASF1336
	.sleb128 1057
	.uleb128 0x20
	.4byte	.LASF1337
	.sleb128 1058
	.uleb128 0x20
	.4byte	.LASF1338
	.sleb128 1059
	.uleb128 0x20
	.4byte	.LASF1339
	.sleb128 1060
	.uleb128 0x20
	.4byte	.LASF1340
	.sleb128 1061
	.uleb128 0x20
	.4byte	.LASF1341
	.sleb128 1062
	.uleb128 0x20
	.4byte	.LASF1342
	.sleb128 1063
	.uleb128 0x20
	.4byte	.LASF1343
	.sleb128 1064
	.uleb128 0x20
	.4byte	.LASF1344
	.sleb128 1065
	.uleb128 0x20
	.4byte	.LASF1345
	.sleb128 1066
	.uleb128 0x20
	.4byte	.LASF1346
	.sleb128 1067
	.uleb128 0x20
	.4byte	.LASF1347
	.sleb128 1068
	.uleb128 0x20
	.4byte	.LASF1348
	.sleb128 1069
	.uleb128 0x20
	.4byte	.LASF1349
	.sleb128 1070
	.uleb128 0x20
	.4byte	.LASF1350
	.sleb128 1071
	.uleb128 0x20
	.4byte	.LASF1351
	.sleb128 1072
	.uleb128 0x20
	.4byte	.LASF1352
	.sleb128 1073
	.uleb128 0x20
	.4byte	.LASF1353
	.sleb128 1074
	.uleb128 0x20
	.4byte	.LASF1354
	.sleb128 1075
	.uleb128 0x20
	.4byte	.LASF1355
	.sleb128 1076
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1356
	.byte	0xd
	.2byte	0x4e3
	.4byte	0xe27
	.uleb128 0x1a
	.byte	0x1c
	.byte	0xd
	.2byte	0x4e9
	.4byte	0x2abc
	.uleb128 0x16
	.4byte	.LASF1357
	.byte	0xd
	.2byte	0x4eb
	.4byte	0xe1c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1358
	.byte	0xd
	.2byte	0x4ec
	.4byte	0x63
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1359
	.byte	0xd
	.2byte	0x4ed
	.4byte	0x63
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1360
	.byte	0xd
	.2byte	0x4ee
	.4byte	0x9ef
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1361
	.byte	0xd
	.2byte	0x4ef
	.4byte	0x2a4b
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1362
	.byte	0xd
	.2byte	0x4f0
	.4byte	0x63
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1363
	.byte	0xd
	.2byte	0x4f0
	.4byte	0x63
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1364
	.byte	0xd
	.2byte	0x4f1
	.4byte	0x2a57
	.uleb128 0x23
	.byte	0x1
	.byte	0xd
	.2byte	0x4fd
	.4byte	0x2ec1
	.uleb128 0x20
	.4byte	.LASF1365
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1366
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1367
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1368
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1369
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1370
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1371
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1372
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1373
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1374
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1375
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1376
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1377
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1378
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1379
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1380
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1381
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1382
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1383
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1384
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1385
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1386
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1387
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1388
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1389
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1390
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1391
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1392
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1393
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1394
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1395
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1396
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1397
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1398
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1399
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1400
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1401
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1402
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1403
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1404
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1405
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1406
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1407
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1408
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1409
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1410
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1411
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1412
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1413
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1414
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1415
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1416
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1417
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1418
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1419
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1420
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1421
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1422
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1423
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1424
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1425
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1426
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1427
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1428
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1429
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1430
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1431
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1432
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1433
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1434
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1435
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1436
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1437
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1438
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1439
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1440
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1441
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1442
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1443
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1444
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1445
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1446
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1447
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1448
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1449
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1450
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1451
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1452
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1453
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1454
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1455
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1456
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1457
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1458
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1459
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1460
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1461
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1462
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1463
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1464
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1465
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1466
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1467
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1468
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1469
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1470
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1471
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1472
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1473
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1474
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1475
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1476
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1477
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1478
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1479
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF1480
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF1481
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF1482
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF1483
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF1484
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF1485
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF1486
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF1487
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF1488
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF1489
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF1490
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF1491
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF1492
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF1493
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF1494
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF1495
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF1496
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF1497
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF1498
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF1499
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF1500
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF1501
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF1502
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF1503
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF1504
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF1505
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF1506
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF1507
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF1508
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF1509
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF1510
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF1511
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF1512
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF1513
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF1514
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF1515
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF1516
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF1517
	.sleb128 152
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1518
	.byte	0xd
	.2byte	0x59e
	.4byte	0x2ac8
	.uleb128 0x1a
	.byte	0x68
	.byte	0xd
	.2byte	0x5a8
	.4byte	0x3002
	.uleb128 0x16
	.4byte	.LASF1519
	.byte	0xd
	.2byte	0x5aa
	.4byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1520
	.byte	0xd
	.2byte	0x5ac
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1521
	.byte	0xd
	.2byte	0x5ae
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1522
	.byte	0xd
	.2byte	0x5af
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1523
	.byte	0xd
	.2byte	0x5b0
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1524
	.byte	0xd
	.2byte	0x5b1
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1525
	.byte	0xd
	.2byte	0x5b4
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF1526
	.byte	0xd
	.2byte	0x5b5
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF1527
	.byte	0xd
	.2byte	0x5b6
	.4byte	0x2c
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1528
	.byte	0xd
	.2byte	0x5bc
	.4byte	0x2c
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1529
	.byte	0xd
	.2byte	0x5bd
	.4byte	0x2c
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1530
	.byte	0xd
	.2byte	0x5be
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1531
	.byte	0xd
	.2byte	0x5c0
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1532
	.byte	0xd
	.2byte	0x5c1
	.4byte	0x2c
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1533
	.byte	0xd
	.2byte	0x5c3
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1534
	.byte	0xd
	.2byte	0x5c6
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF1535
	.byte	0xd
	.2byte	0x5c8
	.4byte	0x2c
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1536
	.byte	0xd
	.2byte	0x5c9
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1537
	.byte	0xd
	.2byte	0x5cb
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF1538
	.byte	0xd
	.2byte	0x5ce
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF1539
	.byte	0xd
	.2byte	0x5cf
	.4byte	0x2c
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF1540
	.byte	0xd
	.2byte	0x5d1
	.4byte	0x9ce
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF1541
	.byte	0xd
	.2byte	0x5d2
	.4byte	0x2c
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1542
	.byte	0xd
	.2byte	0x5d5
	.4byte	0x2ecd
	.uleb128 0x1f
	.byte	0x1
	.byte	0xe
	.byte	0x47
	.4byte	0x3029
	.uleb128 0x20
	.4byte	.LASF1543
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1544
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1545
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0xe
	.byte	0x4d
	.4byte	0x3060
	.uleb128 0xc
	.4byte	.LASF1546
	.byte	0xe
	.byte	0x4f
	.4byte	0x3060
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1359
	.byte	0xe
	.byte	0x50
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.ascii	"sx\000"
	.byte	0xe
	.byte	0x51
	.4byte	0x9d9
	.byte	0x8
	.uleb128 0xe
	.ascii	"sy\000"
	.byte	0xe
	.byte	0x52
	.4byte	0x9d9
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2abc
	.uleb128 0x4
	.4byte	.LASF1547
	.byte	0xe
	.byte	0x53
	.4byte	0x3029
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x3081
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0xa
	.byte	0xf
	.byte	0xc0
	.4byte	0x30c2
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0xf
	.byte	0xc1
	.4byte	0x55
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0xf
	.byte	0xc2
	.4byte	0x55
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF1548
	.byte	0xf
	.byte	0xc3
	.4byte	0x55
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1549
	.byte	0xf
	.byte	0xc4
	.4byte	0x55
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF1550
	.byte	0xf
	.byte	0xc5
	.4byte	0x55
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1551
	.byte	0xf
	.byte	0xc6
	.4byte	0x3081
	.uleb128 0xd
	.4byte	.LASF1552
	.byte	0xd0
	.byte	0x10
	.byte	0xf8
	.4byte	0x3341
	.uleb128 0xc
	.4byte	.LASF1553
	.byte	0x10
	.byte	0xfb
	.4byte	0xa6d
	.byte	0
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x10
	.byte	0xfe
	.4byte	0x9d9
	.byte	0x18
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x10
	.byte	0xff
	.4byte	0x9d9
	.byte	0x1c
	.uleb128 0x24
	.ascii	"z\000"
	.byte	0x10
	.2byte	0x100
	.4byte	0x9d9
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1554
	.byte	0x10
	.2byte	0x103
	.4byte	0x3341
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1555
	.byte	0x10
	.2byte	0x104
	.4byte	0x3347
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1548
	.byte	0x10
	.2byte	0x107
	.4byte	0x9e4
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1357
	.byte	0x10
	.2byte	0x108
	.4byte	0xe1c
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1358
	.byte	0x10
	.2byte	0x109
	.4byte	0x2c
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1556
	.byte	0x10
	.2byte	0x10d
	.4byte	0x3341
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1557
	.byte	0x10
	.2byte	0x10e
	.4byte	0x3347
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF1558
	.byte	0x10
	.2byte	0x110
	.4byte	0x3382
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1559
	.byte	0x10
	.2byte	0x113
	.4byte	0x9d9
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1560
	.byte	0x10
	.2byte	0x114
	.4byte	0x9d9
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF1561
	.byte	0x10
	.2byte	0x117
	.4byte	0x9d9
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF1535
	.byte	0x10
	.2byte	0x11a
	.4byte	0x9d9
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF1536
	.byte	0x10
	.2byte	0x11b
	.4byte	0x9d9
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF1562
	.byte	0x10
	.2byte	0x11e
	.4byte	0x9d9
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF1563
	.byte	0x10
	.2byte	0x11f
	.4byte	0x9d9
	.byte	0x5c
	.uleb128 0x16
	.4byte	.LASF1564
	.byte	0x10
	.2byte	0x120
	.4byte	0x9d9
	.byte	0x60
	.uleb128 0x16
	.4byte	.LASF1565
	.byte	0x10
	.2byte	0x123
	.4byte	0x2c
	.byte	0x64
	.uleb128 0x16
	.4byte	.LASF1549
	.byte	0x10
	.2byte	0x125
	.4byte	0x2ec1
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF1566
	.byte	0x10
	.2byte	0x126
	.4byte	0x3388
	.byte	0x6c
	.uleb128 0x16
	.4byte	.LASF1359
	.byte	0x10
	.2byte	0x128
	.4byte	0x2c
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF1546
	.byte	0x10
	.2byte	0x129
	.4byte	0x3060
	.byte	0x74
	.uleb128 0x16
	.4byte	.LASF1540
	.byte	0x10
	.2byte	0x12a
	.4byte	0x9ce
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF1567
	.byte	0x10
	.2byte	0x12b
	.4byte	0x2c
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF1568
	.byte	0x10
	.2byte	0x12c
	.4byte	0x2c
	.byte	0x84
	.uleb128 0x16
	.4byte	.LASF1569
	.byte	0x10
	.2byte	0x12f
	.4byte	0x55
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF1570
	.byte	0x10
	.2byte	0x130
	.4byte	0x55
	.byte	0x8a
	.uleb128 0x16
	.4byte	.LASF1571
	.byte	0x10
	.2byte	0x131
	.4byte	0x55
	.byte	0x8c
	.uleb128 0x16
	.4byte	.LASF1572
	.byte	0x10
	.2byte	0x135
	.4byte	0x3341
	.byte	0x90
	.uleb128 0x16
	.4byte	.LASF1524
	.byte	0x10
	.2byte	0x139
	.4byte	0x55
	.byte	0x94
	.uleb128 0x16
	.4byte	.LASF1573
	.byte	0x10
	.2byte	0x13d
	.4byte	0x55
	.byte	0x96
	.uleb128 0x16
	.4byte	.LASF1574
	.byte	0x10
	.2byte	0x140
	.4byte	0x55
	.byte	0x98
	.uleb128 0x16
	.4byte	.LASF1575
	.byte	0x10
	.2byte	0x142
	.4byte	0x55
	.byte	0x9a
	.uleb128 0x16
	.4byte	.LASF1576
	.byte	0x10
	.2byte	0x146
	.4byte	0x3558
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF1577
	.byte	0x10
	.2byte	0x149
	.4byte	0x55
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF1578
	.byte	0x10
	.2byte	0x14c
	.4byte	0x30c2
	.byte	0xa2
	.uleb128 0x16
	.4byte	.LASF1579
	.byte	0x10
	.2byte	0x14f
	.4byte	0x3341
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF1580
	.byte	0x10
	.2byte	0x152
	.4byte	0x3341
	.byte	0xb0
	.uleb128 0x16
	.4byte	.LASF1581
	.byte	0x10
	.2byte	0x158
	.4byte	0x2c
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF1582
	.byte	0x10
	.2byte	0x159
	.4byte	0x2c
	.byte	0xb8
	.uleb128 0x16
	.4byte	.LASF1583
	.byte	0x10
	.2byte	0x15c
	.4byte	0x35bf
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF1584
	.byte	0x10
	.2byte	0x15e
	.4byte	0x9d9
	.byte	0xc0
	.uleb128 0x16
	.4byte	.LASF1585
	.byte	0x10
	.2byte	0x15f
	.4byte	0x9d9
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF1586
	.byte	0x10
	.2byte	0x160
	.4byte	0x9d9
	.byte	0xc8
	.uleb128 0x24
	.ascii	"pad\000"
	.byte	0x10
	.2byte	0x162
	.4byte	0x9d9
	.byte	0xcc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30cd
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3341
	.uleb128 0x19
	.4byte	.LASF1587
	.byte	0xc
	.byte	0x11
	.2byte	0x123
	.4byte	0x3382
	.uleb128 0x16
	.4byte	.LASF1588
	.byte	0x11
	.2byte	0x125
	.4byte	0x3ca2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1589
	.byte	0x11
	.2byte	0x126
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1590
	.byte	0x11
	.2byte	0x126
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x334d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3002
	.uleb128 0x10
	.4byte	.LASF1591
	.2byte	0x11c
	.byte	0x12
	.byte	0x5d
	.4byte	0x3558
	.uleb128 0xe
	.ascii	"mo\000"
	.byte	0x12
	.byte	0x5f
	.4byte	0x3653
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1592
	.byte	0x12
	.byte	0x60
	.4byte	0x3648
	.byte	0x4
	.uleb128 0xe
	.ascii	"cmd\000"
	.byte	0x12
	.byte	0x61
	.4byte	0x3622
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF1593
	.byte	0x12
	.byte	0x66
	.4byte	0x9d9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1594
	.byte	0x12
	.byte	0x68
	.4byte	0x9d9
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1595
	.byte	0x12
	.byte	0x6a
	.4byte	0x9d9
	.byte	0x18
	.uleb128 0xe
	.ascii	"bob\000"
	.byte	0x12
	.byte	0x6c
	.4byte	0x9d9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1562
	.byte	0x12
	.byte	0x73
	.4byte	0x9d9
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1563
	.byte	0x12
	.byte	0x73
	.4byte	0x9d9
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1568
	.byte	0x12
	.byte	0x77
	.4byte	0x2c
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF1596
	.byte	0x12
	.byte	0x78
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF1597
	.byte	0x12
	.byte	0x7a
	.4byte	0x2c
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1598
	.byte	0x12
	.byte	0x7d
	.4byte	0x3659
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1599
	.byte	0x12
	.byte	0x7e
	.4byte	0x3669
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF1600
	.byte	0x12
	.byte	0x7f
	.4byte	0x9ad
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF1601
	.byte	0x12
	.byte	0x82
	.4byte	0x3679
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF1602
	.byte	0x12
	.byte	0x83
	.4byte	0x93b
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF1603
	.byte	0x12
	.byte	0x86
	.4byte	0x93b
	.byte	0x79
	.uleb128 0xc
	.4byte	.LASF1604
	.byte	0x12
	.byte	0x88
	.4byte	0x3689
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF1605
	.byte	0x12
	.byte	0x89
	.4byte	0x3679
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF1606
	.byte	0x12
	.byte	0x8a
	.4byte	0x3679
	.byte	0xb0
	.uleb128 0xc
	.4byte	.LASF1607
	.byte	0x12
	.byte	0x8d
	.4byte	0x2c
	.byte	0xc0
	.uleb128 0xc
	.4byte	.LASF1608
	.byte	0x12
	.byte	0x8e
	.4byte	0x2c
	.byte	0xc4
	.uleb128 0xc
	.4byte	.LASF1609
	.byte	0x12
	.byte	0x92
	.4byte	0x2c
	.byte	0xc8
	.uleb128 0xc
	.4byte	.LASF1610
	.byte	0x12
	.byte	0x95
	.4byte	0x2c
	.byte	0xcc
	.uleb128 0xc
	.4byte	.LASF1611
	.byte	0x12
	.byte	0x98
	.4byte	0x2c
	.byte	0xd0
	.uleb128 0xc
	.4byte	.LASF1612
	.byte	0x12
	.byte	0x99
	.4byte	0x2c
	.byte	0xd4
	.uleb128 0xc
	.4byte	.LASF1613
	.byte	0x12
	.byte	0x9a
	.4byte	0x2c
	.byte	0xd8
	.uleb128 0xc
	.4byte	.LASF1614
	.byte	0x12
	.byte	0x9d
	.4byte	0x586
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF1615
	.byte	0x12
	.byte	0xa0
	.4byte	0x2c
	.byte	0xe0
	.uleb128 0xc
	.4byte	.LASF1616
	.byte	0x12
	.byte	0xa1
	.4byte	0x2c
	.byte	0xe4
	.uleb128 0xc
	.4byte	.LASF1617
	.byte	0x12
	.byte	0xa4
	.4byte	0x3653
	.byte	0xe8
	.uleb128 0xc
	.4byte	.LASF1618
	.byte	0x12
	.byte	0xa7
	.4byte	0x2c
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF1619
	.byte	0x12
	.byte	0xab
	.4byte	0x2c
	.byte	0xf0
	.uleb128 0xc
	.4byte	.LASF1620
	.byte	0x12
	.byte	0xaf
	.4byte	0x2c
	.byte	0xf4
	.uleb128 0xc
	.4byte	.LASF1621
	.byte	0x12
	.byte	0xb2
	.4byte	0x3699
	.byte	0xf8
	.uleb128 0x11
	.4byte	.LASF1622
	.byte	0x12
	.byte	0xb5
	.4byte	0x9ad
	.2byte	0x118
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x338e
	.uleb128 0xd
	.4byte	.LASF1623
	.byte	0x1c
	.byte	0x11
	.byte	0xde
	.4byte	0x35bf
	.uleb128 0xc
	.4byte	.LASF1624
	.byte	0x11
	.byte	0xe0
	.4byte	0x3ca2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1625
	.byte	0x11
	.byte	0xe1
	.4byte	0x3341
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1626
	.byte	0x11
	.byte	0xe2
	.4byte	0x35bf
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1627
	.byte	0x11
	.byte	0xe3
	.4byte	0x35bf
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1628
	.byte	0x11
	.byte	0xe4
	.4byte	0x35bf
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1629
	.byte	0x11
	.byte	0xe5
	.4byte	0x35bf
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1630
	.byte	0x11
	.byte	0xe6
	.4byte	0x9ad
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x355e
	.uleb128 0x6
	.4byte	.LASF1631
	.byte	0x10
	.2byte	0x165
	.4byte	0x30cd
	.uleb128 0xb
	.byte	0x8
	.byte	0x13
	.byte	0x31
	.4byte	0x3622
	.uleb128 0xc
	.4byte	.LASF1632
	.byte	0x13
	.byte	0x33
	.4byte	0x47
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1633
	.byte	0x13
	.byte	0x34
	.4byte	0x47
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF1634
	.byte	0x13
	.byte	0x35
	.4byte	0x55
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF1635
	.byte	0x13
	.byte	0x36
	.4byte	0x55
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1636
	.byte	0x13
	.byte	0x37
	.4byte	0x9b8
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF1637
	.byte	0x13
	.byte	0x38
	.4byte	0x9b8
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1638
	.byte	0x13
	.byte	0x39
	.4byte	0x35d1
	.uleb128 0x1f
	.byte	0x1
	.byte	0x12
	.byte	0x40
	.4byte	0x3648
	.uleb128 0x20
	.4byte	.LASF1639
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1640
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1641
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1642
	.byte	0x12
	.byte	0x48
	.4byte	0x362d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x35c5
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x3669
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x9ad
	.4byte	0x3679
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x3689
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x9ad
	.4byte	0x3699
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x3066
	.4byte	0x36a9
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1643
	.byte	0x12
	.byte	0xb7
	.4byte	0x338e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x14
	.byte	0x57
	.4byte	0x375f
	.uleb128 0x20
	.4byte	.LASF1644
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1645
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1646
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1647
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1648
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1649
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1650
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1651
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1652
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1653
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1654
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1655
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1656
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1657
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1658
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1659
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1660
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1661
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1662
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1663
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1664
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1665
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1666
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1667
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1668
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1669
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1670
	.sleb128 32
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x15
	.byte	0x43
	.4byte	0x378c
	.uleb128 0x20
	.4byte	.LASF1671
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1672
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1673
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1674
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1675
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1676
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1677
	.byte	0x15
	.byte	0x4b
	.4byte	0x375f
	.uleb128 0xb
	.byte	0xc
	.byte	0x15
	.byte	0x50
	.4byte	0x37c4
	.uleb128 0xc
	.4byte	.LASF1678
	.byte	0x15
	.byte	0x51
	.4byte	0x586
	.byte	0
	.uleb128 0xe
	.ascii	"src\000"
	.byte	0x15
	.byte	0x52
	.4byte	0x378c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1679
	.byte	0x15
	.byte	0x53
	.4byte	0x37c4
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x4
	.4byte	.LASF1680
	.byte	0x15
	.byte	0x54
	.4byte	0x3797
	.uleb128 0x1f
	.byte	0x1
	.byte	0x15
	.byte	0x6a
	.4byte	0x3802
	.uleb128 0x20
	.4byte	.LASF1681
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1682
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1683
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1684
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1685
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1686
	.sleb128 5
	.byte	0
	.uleb128 0xb
	.byte	0x28
	.byte	0x15
	.byte	0x5f
	.4byte	0x386b
	.uleb128 0xc
	.4byte	.LASF1678
	.byte	0x15
	.byte	0x63
	.4byte	0x386b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1687
	.byte	0x15
	.byte	0x64
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1688
	.byte	0x15
	.byte	0x67
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x15
	.byte	0x67
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1689
	.byte	0x15
	.byte	0x71
	.4byte	0x37d5
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1690
	.byte	0x15
	.byte	0x73
	.4byte	0x387b
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1691
	.byte	0x15
	.byte	0x74
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1692
	.byte	0x15
	.byte	0x75
	.4byte	0x378c
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x387b
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37ca
	.uleb128 0x4
	.4byte	.LASF1693
	.byte	0x15
	.byte	0x76
	.4byte	0x3802
	.uleb128 0xb
	.byte	0x8
	.byte	0x11
	.byte	0x4d
	.4byte	0x38a9
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x11
	.byte	0x4e
	.4byte	0x9d9
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x11
	.byte	0x4e
	.4byte	0x9d9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x11
	.byte	0x4c
	.4byte	0x38c0
	.uleb128 0x25
	.4byte	0x388c
	.uleb128 0x26
	.ascii	"v\000"
	.byte	0x11
	.byte	0x50
	.4byte	0x38c0
	.byte	0
	.uleb128 0x9
	.4byte	0x9d9
	.4byte	0x38d0
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x11
	.byte	0x4a
	.4byte	0x38df
	.uleb128 0x27
	.4byte	0x38a9
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1694
	.byte	0x11
	.byte	0x52
	.4byte	0x38d0
	.uleb128 0xb
	.byte	0x24
	.byte	0x11
	.byte	0x55
	.4byte	0x391d
	.uleb128 0xc
	.4byte	.LASF1553
	.byte	0x11
	.byte	0x57
	.4byte	0xa6d
	.byte	0
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x11
	.byte	0x58
	.4byte	0x9d9
	.byte	0x18
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x11
	.byte	0x58
	.4byte	0x9d9
	.byte	0x1c
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x11
	.byte	0x58
	.4byte	0x9d9
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1695
	.byte	0x11
	.byte	0x59
	.4byte	0x38ea
	.uleb128 0xb
	.byte	0xc4
	.byte	0x11
	.byte	0x60
	.4byte	0x3b1d
	.uleb128 0xc
	.4byte	.LASF1696
	.byte	0x11
	.byte	0x62
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1697
	.byte	0x11
	.byte	0x63
	.4byte	0x9ad
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1698
	.byte	0x11
	.byte	0x64
	.4byte	0x9ad
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1699
	.byte	0x11
	.byte	0x65
	.4byte	0x9d9
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1700
	.byte	0x11
	.byte	0x66
	.4byte	0x9d9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1701
	.byte	0x11
	.byte	0x67
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1702
	.byte	0x11
	.byte	0x67
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1703
	.byte	0x11
	.byte	0x68
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1704
	.byte	0x11
	.byte	0x69
	.4byte	0x3653
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1705
	.byte	0x11
	.byte	0x6a
	.4byte	0x3679
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1706
	.byte	0x11
	.byte	0x6b
	.4byte	0x391d
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1565
	.byte	0x11
	.byte	0x6c
	.4byte	0x2c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF1707
	.byte	0x11
	.byte	0x6d
	.4byte	0x3653
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF1581
	.byte	0x11
	.byte	0x73
	.4byte	0x2c
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF1582
	.byte	0x11
	.byte	0x73
	.4byte	0x2c
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF1708
	.byte	0x11
	.byte	0x76
	.4byte	0x45
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF1709
	.byte	0x11
	.byte	0x77
	.4byte	0x45
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF1710
	.byte	0x11
	.byte	0x78
	.4byte	0x45
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF1711
	.byte	0x11
	.byte	0x7b
	.4byte	0x2c
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF1712
	.byte	0x11
	.byte	0x7c
	.4byte	0x2c
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF1713
	.byte	0x11
	.byte	0x7d
	.4byte	0x2c
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF1714
	.byte	0x11
	.byte	0x80
	.4byte	0x2c
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF1715
	.byte	0x11
	.byte	0x82
	.4byte	0x2c
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF1716
	.byte	0x11
	.byte	0x82
	.4byte	0x2c
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF1717
	.byte	0x11
	.byte	0x82
	.4byte	0x2c
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF1718
	.byte	0x11
	.byte	0x86
	.4byte	0x35bf
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF1719
	.byte	0x11
	.byte	0x88
	.4byte	0x2c
	.byte	0x94
	.uleb128 0xc
	.4byte	.LASF1720
	.byte	0x11
	.byte	0x89
	.4byte	0x3c22
	.byte	0x98
	.uleb128 0xe
	.ascii	"sky\000"
	.byte	0x11
	.byte	0x92
	.4byte	0x2c
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF1721
	.byte	0x11
	.byte	0x95
	.4byte	0x9d9
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF1722
	.byte	0x11
	.byte	0x95
	.4byte	0x9d9
	.byte	0xa4
	.uleb128 0xc
	.4byte	.LASF1723
	.byte	0x11
	.byte	0x96
	.4byte	0x9d9
	.byte	0xa8
	.uleb128 0xc
	.4byte	.LASF1724
	.byte	0x11
	.byte	0x96
	.4byte	0x9d9
	.byte	0xac
	.uleb128 0xc
	.4byte	.LASF1725
	.byte	0x11
	.byte	0x99
	.4byte	0x2c
	.byte	0xb0
	.uleb128 0xc
	.4byte	.LASF1726
	.byte	0x11
	.byte	0x99
	.4byte	0x2c
	.byte	0xb4
	.uleb128 0xc
	.4byte	.LASF1727
	.byte	0x11
	.byte	0x9b
	.4byte	0x55
	.byte	0xb8
	.uleb128 0xc
	.4byte	.LASF1728
	.byte	0x11
	.byte	0x9c
	.4byte	0x55
	.byte	0xba
	.uleb128 0xc
	.4byte	.LASF1729
	.byte	0x11
	.byte	0x9d
	.4byte	0x55
	.byte	0xbc
	.uleb128 0xc
	.4byte	.LASF1730
	.byte	0x11
	.byte	0x9e
	.4byte	0x55
	.byte	0xbe
	.uleb128 0xc
	.4byte	.LASF1731
	.byte	0x11
	.byte	0x9f
	.4byte	0x55
	.byte	0xc0
	.uleb128 0xe
	.ascii	"tag\000"
	.byte	0x11
	.byte	0xa0
	.4byte	0x55
	.byte	0xc2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1732
	.byte	0x7c
	.byte	0x11
	.byte	0xb1
	.4byte	0x3c22
	.uleb128 0xc
	.4byte	.LASF1733
	.byte	0x11
	.byte	0xb3
	.4byte	0x2c
	.byte	0
	.uleb128 0xe
	.ascii	"v1\000"
	.byte	0x11
	.byte	0xb4
	.4byte	0x3c8c
	.byte	0x4
	.uleb128 0xe
	.ascii	"v2\000"
	.byte	0x11
	.byte	0xb4
	.4byte	0x3c8c
	.byte	0x8
	.uleb128 0xe
	.ascii	"dx\000"
	.byte	0x11
	.byte	0xb5
	.4byte	0x9d9
	.byte	0xc
	.uleb128 0xe
	.ascii	"dy\000"
	.byte	0x11
	.byte	0xb5
	.4byte	0x9d9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1540
	.byte	0x11
	.byte	0xb6
	.4byte	0x5c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1730
	.byte	0x11
	.byte	0xb7
	.4byte	0x55
	.byte	0x16
	.uleb128 0xe
	.ascii	"tag\000"
	.byte	0x11
	.byte	0xb8
	.4byte	0x55
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1734
	.byte	0x11
	.byte	0xb9
	.4byte	0x3071
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF1735
	.byte	0x11
	.byte	0xba
	.4byte	0x3c92
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1736
	.byte	0x11
	.byte	0xbb
	.4byte	0x3c5a
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1737
	.byte	0x11
	.byte	0xbc
	.4byte	0x3ca2
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1738
	.byte	0x11
	.byte	0xbd
	.4byte	0x3ca2
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF1565
	.byte	0x11
	.byte	0xbe
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF1739
	.byte	0x11
	.byte	0xbf
	.4byte	0x45
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF1740
	.byte	0x11
	.byte	0xc0
	.4byte	0x2c
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF1702
	.byte	0x11
	.byte	0xc1
	.4byte	0x2c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF1701
	.byte	0x11
	.byte	0xc1
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF1741
	.byte	0x11
	.byte	0xc2
	.4byte	0x2c
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF1742
	.byte	0x11
	.byte	0xc9
	.4byte	0x3c65
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF1706
	.byte	0x11
	.byte	0xca
	.4byte	0x391d
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3c28
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3b1d
	.uleb128 0x4
	.4byte	.LASF1743
	.byte	0x11
	.byte	0xa4
	.4byte	0x3928
	.uleb128 0x1f
	.byte	0x1
	.byte	0x11
	.byte	0xaa
	.4byte	0x3c5a
	.uleb128 0x20
	.4byte	.LASF1744
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1745
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1746
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1747
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1748
	.byte	0x11
	.byte	0xaf
	.4byte	0x3c39
	.uleb128 0x1f
	.byte	0x1
	.byte	0x11
	.byte	0xc3
	.4byte	0x3c8c
	.uleb128 0x20
	.4byte	.LASF1749
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1750
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1751
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1752
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1753
	.sleb128 16
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38df
	.uleb128 0x9
	.4byte	0x9d9
	.4byte	0x3ca2
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3c2e
	.uleb128 0x4
	.4byte	.LASF1754
	.byte	0x11
	.byte	0xcb
	.4byte	0x3b1d
	.uleb128 0xb
	.byte	0x2c
	.byte	0x11
	.byte	0xec
	.4byte	0x3d3e
	.uleb128 0xe
	.ascii	"v1\000"
	.byte	0x11
	.byte	0xee
	.4byte	0x3c8c
	.byte	0
	.uleb128 0xe
	.ascii	"v2\000"
	.byte	0x11
	.byte	0xee
	.4byte	0x3c8c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1755
	.byte	0x11
	.byte	0xef
	.4byte	0x9d9
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1548
	.byte	0x11
	.byte	0xf0
	.4byte	0x9e4
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1756
	.byte	0x11
	.byte	0xf1
	.4byte	0x3db4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1757
	.byte	0x11
	.byte	0xf2
	.4byte	0x3dba
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1758
	.byte	0x11
	.byte	0xf4
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1759
	.byte	0x11
	.byte	0xf6
	.4byte	0x3dc0
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1760
	.byte	0x11
	.byte	0xf7
	.4byte	0x9ad
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1737
	.byte	0x11
	.byte	0xff
	.4byte	0x3ca2
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1738
	.byte	0x11
	.byte	0xff
	.4byte	0x3ca2
	.byte	0x28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1761
	.byte	0x44
	.byte	0x11
	.2byte	0x106
	.4byte	0x3db4
	.uleb128 0x16
	.4byte	.LASF1762
	.byte	0x11
	.2byte	0x108
	.4byte	0x9d9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1763
	.byte	0x11
	.2byte	0x109
	.4byte	0x9d9
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1764
	.byte	0x11
	.2byte	0x10a
	.4byte	0x55
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1765
	.byte	0x11
	.2byte	0x10b
	.4byte	0x55
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF1766
	.byte	0x11
	.2byte	0x10c
	.4byte	0x55
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1588
	.byte	0x11
	.2byte	0x10d
	.4byte	0x3ca2
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1730
	.byte	0x11
	.2byte	0x113
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1767
	.byte	0x11
	.2byte	0x115
	.4byte	0x3dc7
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3d3e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3ca8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1768
	.uleb128 0x6
	.4byte	.LASF1769
	.byte	0x11
	.2byte	0x100
	.4byte	0x3cb3
	.uleb128 0x6
	.4byte	.LASF1770
	.byte	0x11
	.2byte	0x127
	.4byte	0x334d
	.uleb128 0x6
	.4byte	.LASF1771
	.byte	0x11
	.2byte	0x13e
	.4byte	0x9b8
	.uleb128 0x19
	.4byte	.LASF1772
	.byte	0x3c
	.byte	0x11
	.2byte	0x144
	.4byte	0x3eba
	.uleb128 0x16
	.4byte	.LASF1773
	.byte	0x11
	.2byte	0x146
	.4byte	0x3eba
	.byte	0
	.uleb128 0x24
	.ascii	"x1\000"
	.byte	0x11
	.2byte	0x147
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x24
	.ascii	"x2\000"
	.byte	0x11
	.2byte	0x147
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1774
	.byte	0x11
	.2byte	0x148
	.4byte	0x9d9
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1775
	.byte	0x11
	.2byte	0x148
	.4byte	0x9d9
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1776
	.byte	0x11
	.2byte	0x148
	.4byte	0x9d9
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1777
	.byte	0x11
	.2byte	0x149
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF1778
	.byte	0x11
	.2byte	0x14a
	.4byte	0x9d9
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF1779
	.byte	0x11
	.2byte	0x14b
	.4byte	0x9d9
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1780
	.byte	0x11
	.2byte	0x14e
	.4byte	0x9d9
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1781
	.byte	0x11
	.2byte	0x14e
	.4byte	0x9d9
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1782
	.byte	0x11
	.2byte	0x14e
	.4byte	0x9d9
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1783
	.byte	0x11
	.2byte	0x153
	.4byte	0x3ec0
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1784
	.byte	0x11
	.2byte	0x153
	.4byte	0x3ec0
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1785
	.byte	0x11
	.2byte	0x153
	.4byte	0x3ec0
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3dc7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF1786
	.byte	0x11
	.2byte	0x154
	.4byte	0x3deb
	.uleb128 0x19
	.4byte	.LASF1787
	.byte	0x50
	.byte	0x11
	.2byte	0x163
	.4byte	0x3fb8
	.uleb128 0x16
	.4byte	.LASF1788
	.byte	0x11
	.2byte	0x165
	.4byte	0x3653
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1789
	.byte	0x11
	.2byte	0x166
	.4byte	0x9ad
	.byte	0x4
	.uleb128 0x24
	.ascii	"x1\000"
	.byte	0x11
	.2byte	0x167
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x24
	.ascii	"x2\000"
	.byte	0x11
	.2byte	0x167
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x24
	.ascii	"gx\000"
	.byte	0x11
	.2byte	0x168
	.4byte	0x9d9
	.byte	0x10
	.uleb128 0x24
	.ascii	"gy\000"
	.byte	0x11
	.2byte	0x168
	.4byte	0x9d9
	.byte	0x14
	.uleb128 0x24
	.ascii	"gz\000"
	.byte	0x11
	.2byte	0x169
	.4byte	0x9d9
	.byte	0x18
	.uleb128 0x24
	.ascii	"gzt\000"
	.byte	0x11
	.2byte	0x169
	.4byte	0x9d9
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF1790
	.byte	0x11
	.2byte	0x16a
	.4byte	0x9d9
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1791
	.byte	0x11
	.2byte	0x16b
	.4byte	0x9d9
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1792
	.byte	0x11
	.2byte	0x16c
	.4byte	0x9d9
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1793
	.byte	0x11
	.2byte	0x16d
	.4byte	0x9d9
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1794
	.byte	0x11
	.2byte	0x16e
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1795
	.byte	0x11
	.2byte	0x16f
	.4byte	0x9ce
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1620
	.byte	0x11
	.2byte	0x172
	.4byte	0x3fb8
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1714
	.byte	0x11
	.2byte	0x175
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1796
	.byte	0x11
	.2byte	0x177
	.4byte	0x9ad
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3fbe
	.uleb128 0x18
	.4byte	0x3ddf
	.uleb128 0x6
	.4byte	.LASF1797
	.byte	0x11
	.2byte	0x178
	.4byte	0x3ed2
	.uleb128 0x1a
	.byte	0x1c
	.byte	0x11
	.2byte	0x18a
	.4byte	0x4000
	.uleb128 0x16
	.4byte	.LASF1798
	.byte	0x11
	.2byte	0x18f
	.4byte	0x9ad
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1799
	.byte	0x11
	.2byte	0x192
	.4byte	0x4000
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1789
	.byte	0x11
	.2byte	0x195
	.4byte	0x4010
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x55
	.4byte	0x4010
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x9b8
	.4byte	0x4020
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1800
	.byte	0x11
	.2byte	0x197
	.4byte	0x3fcf
	.uleb128 0x1a
	.byte	0x8
	.byte	0x11
	.2byte	0x19e
	.4byte	0x4050
	.uleb128 0x16
	.4byte	.LASF1801
	.byte	0x11
	.2byte	0x1a0
	.4byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1802
	.byte	0x11
	.2byte	0x1a1
	.4byte	0x4050
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4020
	.uleb128 0x6
	.4byte	.LASF1803
	.byte	0x11
	.2byte	0x1a2
	.4byte	0x402c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x16
	.byte	0x24
	.4byte	0x408f
	.uleb128 0x20
	.4byte	.LASF1804
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1805
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1806
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1807
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1808
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1809
	.sleb128 12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1810
	.byte	0x16
	.byte	0x2b
	.4byte	0x4062
	.uleb128 0xb
	.byte	0xc
	.byte	0x16
	.byte	0x2d
	.4byte	0x40c7
	.uleb128 0xc
	.4byte	.LASF1811
	.byte	0x16
	.byte	0x2e
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1759
	.byte	0x16
	.byte	0x2f
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1812
	.byte	0x16
	.byte	0x30
	.4byte	0x408f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1813
	.byte	0x16
	.byte	0x31
	.4byte	0x409a
	.uleb128 0xb
	.byte	0xc
	.byte	0x16
	.byte	0x33
	.4byte	0x40ff
	.uleb128 0xc
	.4byte	.LASF1814
	.byte	0x16
	.byte	0x34
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1815
	.byte	0x16
	.byte	0x35
	.4byte	0x40ff
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1816
	.byte	0x16
	.byte	0x36
	.4byte	0x2cf
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x40c7
	.uleb128 0x4
	.4byte	.LASF1817
	.byte	0x16
	.byte	0x37
	.4byte	0x40d2
	.uleb128 0xb
	.byte	0x2c
	.byte	0x16
	.byte	0x39
	.4byte	0x419d
	.uleb128 0xc
	.4byte	.LASF1818
	.byte	0x16
	.byte	0x3a
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1536
	.byte	0x16
	.byte	0x3b
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1819
	.byte	0x16
	.byte	0x3c
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1820
	.byte	0x16
	.byte	0x3e
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1821
	.byte	0x16
	.byte	0x40
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1822
	.byte	0x16
	.byte	0x41
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1823
	.byte	0x16
	.byte	0x45
	.4byte	0x2cf
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1816
	.byte	0x16
	.byte	0x48
	.4byte	0x2cf
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1824
	.byte	0x16
	.byte	0x49
	.4byte	0x419d
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1815
	.byte	0x16
	.byte	0x4a
	.4byte	0x40ff
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1825
	.byte	0x16
	.byte	0x4f
	.4byte	0x33
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4105
	.uleb128 0x4
	.4byte	.LASF1826
	.byte	0x16
	.byte	0x50
	.4byte	0x4110
	.uleb128 0x28
	.4byte	.LASF1833
	.byte	0x4
	.byte	0x17
	.byte	0x2b
	.4byte	0x41e3
	.uleb128 0x20
	.4byte	.LASF1827
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1828
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1829
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1830
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1831
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1832
	.sleb128 4294967295
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1834
	.byte	0x4
	.byte	0x17
	.byte	0x35
	.4byte	0x4218
	.uleb128 0x20
	.4byte	.LASF1835
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1836
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1837
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1838
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1839
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1840
	.sleb128 4294967295
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1841
	.byte	0x4
	.byte	0x17
	.byte	0x41
	.4byte	0x423b
	.uleb128 0x20
	.4byte	.LASF1842
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1843
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1844
	.sleb128 4294967295
	.byte	0
	.uleb128 0xb
	.byte	0x44
	.byte	0x17
	.byte	0x48
	.4byte	0x430a
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x17
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0xe
	.ascii	"yl\000"
	.byte	0x17
	.byte	0x4a
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.ascii	"yh\000"
	.byte	0x17
	.byte	0x4b
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x17
	.byte	0x4c
	.4byte	0x9d9
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1845
	.byte	0x17
	.byte	0x4d
	.4byte	0x9d9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1793
	.byte	0x17
	.byte	0x4e
	.4byte	0x9d9
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1846
	.byte	0x17
	.byte	0x4f
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1847
	.byte	0x17
	.byte	0x50
	.4byte	0x9d9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1692
	.byte	0x17
	.byte	0x51
	.4byte	0x430a
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1848
	.byte	0x17
	.byte	0x52
	.4byte	0x430a
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1849
	.byte	0x17
	.byte	0x53
	.4byte	0x430a
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF1620
	.byte	0x17
	.byte	0x54
	.4byte	0x3fb8
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF1850
	.byte	0x17
	.byte	0x55
	.4byte	0x3fb8
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1851
	.byte	0x17
	.byte	0x56
	.4byte	0x430a
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1852
	.byte	0x17
	.byte	0x57
	.4byte	0x2c
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF1853
	.byte	0x17
	.byte	0x59
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF1854
	.byte	0x17
	.byte	0x5a
	.4byte	0x4218
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4310
	.uleb128 0x18
	.4byte	0x9b8
	.uleb128 0x4
	.4byte	.LASF1855
	.byte	0x17
	.byte	0x5b
	.4byte	0x423b
	.uleb128 0xb
	.byte	0x38
	.byte	0x17
	.byte	0x6f
	.4byte	0x43d1
	.uleb128 0xc
	.4byte	.LASF1856
	.byte	0x17
	.byte	0x70
	.4byte	0x43d1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1857
	.byte	0x17
	.byte	0x71
	.4byte	0x43d7
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1858
	.byte	0x17
	.byte	0x72
	.4byte	0x43dd
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1859
	.byte	0x17
	.byte	0x73
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1860
	.byte	0x17
	.byte	0x74
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1861
	.byte	0x17
	.byte	0x75
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1862
	.byte	0x17
	.byte	0x77
	.4byte	0x41e3
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1863
	.byte	0x17
	.byte	0x78
	.4byte	0x41e3
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1864
	.byte	0x17
	.byte	0x79
	.4byte	0x41e3
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1865
	.byte	0x17
	.byte	0x7a
	.4byte	0x41e3
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1866
	.byte	0x17
	.byte	0x7b
	.4byte	0x41e3
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF1867
	.byte	0x17
	.byte	0x7d
	.4byte	0x4218
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF1868
	.byte	0x17
	.byte	0x7e
	.4byte	0x4218
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1869
	.byte	0x17
	.byte	0x83
	.4byte	0x9d9
	.byte	0x34
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9b8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF1870
	.byte	0x17
	.byte	0x84
	.4byte	0x4320
	.uleb128 0x4
	.4byte	.LASF1871
	.byte	0x17
	.byte	0x8b
	.4byte	0x43f9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x43ff
	.uleb128 0x1d
	.4byte	0x440a
	.uleb128 0x14
	.4byte	0x440a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4315
	.uleb128 0xb
	.byte	0x14
	.byte	0x18
	.byte	0x34
	.4byte	0x4455
	.uleb128 0xc
	.4byte	.LASF1872
	.byte	0x18
	.byte	0x35
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x18
	.byte	0x36
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1873
	.byte	0x18
	.byte	0x37
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1874
	.byte	0x18
	.byte	0x38
	.4byte	0x9d9
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1875
	.byte	0x18
	.byte	0x39
	.4byte	0x3dc0
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1876
	.byte	0x18
	.byte	0x3a
	.4byte	0x4410
	.uleb128 0x1f
	.byte	0x1
	.byte	0x19
	.byte	0x72
	.4byte	0x448d
	.uleb128 0x20
	.4byte	.LASF1877
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1878
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1879
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1880
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1881
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1882
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1883
	.byte	0x19
	.byte	0x79
	.4byte	0x4460
	.uleb128 0x29
	.4byte	.LASF1886
	.byte	0x2
	.byte	0x38
	.4byte	0x9d9
	.byte	0x3
	.4byte	0x44c6
	.uleb128 0x2a
	.ascii	"x\000"
	.byte	0x2
	.byte	0x38
	.4byte	0x9d9
	.uleb128 0x2b
	.ascii	"_t\000"
	.byte	0x2
	.byte	0x3a
	.4byte	0x9d9
	.uleb128 0x2b
	.ascii	"_s\000"
	.byte	0x2
	.byte	0x3a
	.4byte	0x9d9
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1889
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x450a
	.uleb128 0x2d
	.4byte	.LASF1799
	.byte	0x1
	.byte	0x5e
	.4byte	0x2c
	.uleb128 0x2d
	.4byte	.LASF1358
	.byte	0x1
	.byte	0x5e
	.4byte	0x33
	.uleb128 0x2d
	.4byte	.LASF1884
	.byte	0x1
	.byte	0x5f
	.4byte	0x33
	.uleb128 0x2d
	.4byte	.LASF1885
	.byte	0x1
	.byte	0x5f
	.4byte	0x9ad
	.uleb128 0x2e
	.uleb128 0x2b
	.ascii	"r\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1887
	.byte	0x2
	.byte	0x46
	.4byte	0x9d9
	.byte	0x3
	.4byte	0x452d
	.uleb128 0x2a
	.ascii	"a\000"
	.byte	0x2
	.byte	0x46
	.4byte	0x9d9
	.uleb128 0x2a
	.ascii	"b\000"
	.byte	0x2
	.byte	0x46
	.4byte	0x9d9
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1888
	.byte	0x2
	.byte	0x52
	.4byte	0x9d9
	.byte	0x3
	.4byte	0x4550
	.uleb128 0x2a
	.ascii	"a\000"
	.byte	0x2
	.byte	0x52
	.4byte	0x9d9
	.uleb128 0x2a
	.ascii	"b\000"
	.byte	0x2
	.byte	0x52
	.4byte	0x9d9
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF1890
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	0x45d4
	.uleb128 0x30
	.ascii	"vis\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x45d4
	.uleb128 0x30
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x2c
	.uleb128 0x30
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1891
	.byte	0x1
	.2byte	0x17d
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1874
	.byte	0x1
	.2byte	0x17e
	.4byte	0x9d9
	.uleb128 0x31
	.4byte	.LASF1794
	.byte	0x1
	.2byte	0x17f
	.4byte	0x45da
	.uleb128 0x31
	.4byte	.LASF1892
	.byte	0x1
	.2byte	0x180
	.4byte	0x43ee
	.uleb128 0x31
	.4byte	.LASF1893
	.byte	0x1
	.2byte	0x181
	.4byte	0x4315
	.uleb128 0x31
	.4byte	.LASF1894
	.byte	0x1
	.2byte	0x182
	.4byte	0x41e3
	.uleb128 0x31
	.4byte	.LASF1865
	.byte	0x1
	.2byte	0x183
	.4byte	0x41e3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3fc3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x45e0
	.uleb128 0x18
	.4byte	0x41a3
	.uleb128 0x32
	.4byte	.LASF1976
	.byte	0x1
	.2byte	0x37b
	.byte	0x1
	.4byte	0x45ff
	.uleb128 0x2e
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x37f
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1910
	.byte	0x1
	.2byte	0x357
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x473c
	.uleb128 0x35
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x357
	.4byte	0x473c
	.4byte	.LLST0
	.uleb128 0x35
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x357
	.4byte	0x473c
	.4byte	.LLST1
	.uleb128 0x35
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x357
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x36
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.4byte	0x4681
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x36d
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x39
	.4byte	.LASF1895
	.byte	0x1
	.2byte	0x370
	.4byte	0x45d4
	.4byte	.LLST4
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x33
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x373
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x37
	.ascii	"n1\000"
	.byte	0x1
	.2byte	0x35b
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x37
	.ascii	"n2\000"
	.byte	0x1
	.2byte	0x35b
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x37
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x35c
	.4byte	0x473c
	.4byte	.LLST7
	.uleb128 0x37
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x35c
	.4byte	0x473c
	.4byte	.LLST8
	.uleb128 0x37
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x35c
	.4byte	0x473c
	.4byte	.LLST9
	.uleb128 0x3a
	.4byte	.LVL10
	.4byte	0x45ff
	.4byte	0x46f0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL11
	.4byte	0x45ff
	.4byte	0x4710
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL22
	.4byte	0x5b7e
	.uleb128 0x3d
	.4byte	.LVL24
	.4byte	0x5b7e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
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
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x45d4
	.uleb128 0x3e
	.4byte	0x44c6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47c4
	.uleb128 0x3f
	.4byte	0x44d2
	.4byte	.LLST10
	.uleb128 0x3f
	.4byte	0x44dd
	.4byte	.LLST11
	.uleb128 0x3f
	.4byte	0x44e8
	.4byte	.LLST12
	.uleb128 0x3f
	.4byte	0x44f3
	.4byte	.LLST13
	.uleb128 0x36
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.4byte	0x47aa
	.uleb128 0x40
	.4byte	0x44e8
	.uleb128 0x40
	.4byte	0x44f3
	.uleb128 0x40
	.4byte	0x44dd
	.uleb128 0x40
	.4byte	0x44d2
	.uleb128 0x41
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.uleb128 0x42
	.4byte	0x44ff
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL38
	.4byte	0x5b9b
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
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1896
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	0x486c
	.uleb128 0x2d
	.4byte	.LASF1897
	.byte	0x1
	.byte	0x98
	.4byte	0x486c
	.uleb128 0x44
	.4byte	.LASF1898
	.byte	0x1
	.byte	0x9a
	.4byte	0x3a
	.uleb128 0xb
	.byte	0x8
	.byte	0x1
	.byte	0x9b
	.4byte	0x4807
	.uleb128 0xc
	.4byte	.LASF1688
	.byte	0x1
	.byte	0x9b
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x1
	.byte	0x9b
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x44
	.4byte	.LASF1899
	.byte	0x1
	.byte	0x9b
	.4byte	0x4877
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c
	.uleb128 0x45
	.4byte	0x482a
	.uleb128 0x2b
	.ascii	"j\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0x2c
	.byte	0
	.uleb128 0x2e
	.uleb128 0x44
	.4byte	.LASF1900
	.byte	0x1
	.byte	0xbd
	.4byte	0x586
	.uleb128 0x2b
	.ascii	"j\000"
	.byte	0x1
	.byte	0xbe
	.4byte	0x2c
	.uleb128 0x45
	.4byte	0x4850
	.uleb128 0x44
	.4byte	.LASF1799
	.byte	0x1
	.byte	0xc6
	.4byte	0x487d
	.byte	0
	.uleb128 0x2e
	.uleb128 0x44
	.4byte	.LASF1358
	.byte	0x1
	.byte	0xe0
	.4byte	0x2c
	.uleb128 0x2e
	.uleb128 0x44
	.4byte	.LASF1884
	.byte	0x1
	.byte	0xf1
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4872
	.uleb128 0x18
	.4byte	0x586
	.uleb128 0xf
	.byte	0x4
	.4byte	0x47e6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3881
	.uleb128 0x46
	.4byte	.LASF1901
	.byte	0x1
	.2byte	0x111
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a3b
	.uleb128 0x47
	.4byte	.LASF1897
	.byte	0x1
	.2byte	0x111
	.4byte	0x486c
	.4byte	.LLST14
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x2c
	.4byte	.LLST15
	.uleb128 0x48
	.4byte	0x47c4
	.4byte	.LBB109
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x116
	.uleb128 0x3f
	.4byte	0x47d0
	.4byte	.LLST16
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x49
	.4byte	0x47db
	.4byte	.LLST17
	.uleb128 0x49
	.4byte	0x4807
	.4byte	.LLST18
	.uleb128 0x49
	.4byte	0x4812
	.4byte	.LLST19
	.uleb128 0x36
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.4byte	0x4907
	.uleb128 0x49
	.4byte	0x4820
	.4byte	.LLST20
	.byte	0
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x49f5
	.uleb128 0x49
	.4byte	0x482b
	.4byte	.LLST21
	.uleb128 0x49
	.4byte	0x4836
	.4byte	.LLST22
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0x494d
	.uleb128 0x49
	.4byte	0x4844
	.4byte	.LLST23
	.uleb128 0x3c
	.4byte	.LVL73
	.4byte	0x44c6
	.uleb128 0x43
	.4byte	.LVL75
	.4byte	0x44c6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x49d4
	.uleb128 0x49
	.4byte	0x4851
	.4byte	.LLST24
	.uleb128 0x36
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.4byte	0x498b
	.uleb128 0x42
	.4byte	0x485d
	.uleb128 0x43
	.4byte	.LVL82
	.4byte	0x5b9b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL86
	.4byte	0x5bad
	.4byte	0x49a3
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
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL87
	.4byte	0x5b7e
	.4byte	0x49ba
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0
	.uleb128 0x43
	.4byte	.LVL92
	.4byte	0x5b9b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL67
	.4byte	0x5bd2
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x32c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL48
	.4byte	0x5bad
	.4byte	0x4a0e
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
	.4byte	.LVL49
	.4byte	0x5bad
	.4byte	0x4a2f
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
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL91
	.4byte	0x5bf1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF1995
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4d
	.4byte	.LASF1902
	.byte	0x1
	.2byte	0x143
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b26
	.uleb128 0x47
	.4byte	.LASF1794
	.byte	0x1
	.2byte	0x144
	.4byte	0x45da
	.4byte	.LLST25
	.uleb128 0x47
	.4byte	.LASF1892
	.byte	0x1
	.2byte	0x145
	.4byte	0x43ee
	.4byte	.LLST26
	.uleb128 0x47
	.4byte	.LASF1893
	.byte	0x1
	.2byte	0x146
	.4byte	0x440a
	.4byte	.LLST27
	.uleb128 0x47
	.4byte	.LASF1903
	.byte	0x1
	.2byte	0x147
	.4byte	0x4b26
	.4byte	.LLST28
	.uleb128 0x4e
	.4byte	.LASF1904
	.byte	0x1
	.2byte	0x148
	.4byte	0x4b26
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4e
	.4byte	.LASF1905
	.byte	0x1
	.2byte	0x149
	.4byte	0x4b26
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x2c
	.4byte	.LLST29
	.uleb128 0x39
	.4byte	.LASF1906
	.byte	0x1
	.2byte	0x14d
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x39
	.4byte	.LASF1907
	.byte	0x1
	.2byte	0x14e
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x39
	.4byte	.LASF1908
	.byte	0x1
	.2byte	0x14f
	.4byte	0x9d9
	.4byte	.LLST32
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x39
	.4byte	.LASF1909
	.byte	0x1
	.2byte	0x153
	.4byte	0x4b31
	.4byte	.LLST33
	.uleb128 0x4f
	.4byte	.LVL112
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4b2c
	.uleb128 0x18
	.4byte	0x4105
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4b37
	.uleb128 0x18
	.4byte	0x40c7
	.uleb128 0x50
	.4byte	0x4550
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d33
	.uleb128 0x3f
	.4byte	0x455d
	.4byte	.LLST34
	.uleb128 0x51
	.4byte	0x4574
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x4574
	.byte	0x9f
	.uleb128 0x51
	.4byte	0x4569
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x4569
	.byte	0x9f
	.uleb128 0x49
	.4byte	0x457f
	.4byte	.LLST35
	.uleb128 0x49
	.4byte	0x458b
	.4byte	.LLST36
	.uleb128 0x49
	.4byte	0x4597
	.4byte	.LLST37
	.uleb128 0x49
	.4byte	0x45a3
	.4byte	.LLST38
	.uleb128 0x52
	.4byte	0x45af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x49
	.4byte	0x45bb
	.4byte	.LLST39
	.uleb128 0x49
	.4byte	0x45c7
	.4byte	.LLST40
	.uleb128 0x53
	.4byte	0x452d
	.4byte	.LBB126
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x4c0b
	.uleb128 0x3f
	.4byte	0x4546
	.4byte	.LLST41
	.uleb128 0x3f
	.4byte	0x453d
	.4byte	.LLST42
	.uleb128 0x54
	.4byte	0x4498
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x2
	.byte	0x54
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST41
	.uleb128 0x41
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST41
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST45
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB131
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x1af
	.4byte	0x4c2e
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST46
	.uleb128 0x40
	.4byte	0x451a
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL118
	.4byte	0x5c02
	.uleb128 0x3a
	.4byte	.LVL121
	.4byte	0x5c17
	.4byte	0x4c4c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL124
	.4byte	0x5c28
	.4byte	0x4c66
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
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL135
	.4byte	0x5c47
	.4byte	0x4c80
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL136
	.4byte	0x5c47
	.4byte	0x4c9a
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 -1
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL137
	.4byte	0x5c47
	.4byte	0x4cb4
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL138
	.4byte	0x4a4d
	.4byte	0x4ce2
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
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
	.uleb128 0x3b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL141
	.4byte	0x5c61
	.uleb128 0x3a
	.4byte	.LVL146
	.4byte	0x5c28
	.4byte	0x4d04
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL150
	.4byte	0x5c28
	.4byte	0x4d1d
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x43
	.4byte	.LVL153
	.4byte	0x5c28
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1911
	.byte	0x1
	.2byte	0x39a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e89
	.uleb128 0x35
	.ascii	"spr\000"
	.byte	0x1
	.2byte	0x39a
	.4byte	0x45d4
	.4byte	.LLST47
	.uleb128 0x37
	.ascii	"ds\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x4e89
	.4byte	.LLST48
	.uleb128 0x55
	.4byte	.LASF1912
	.byte	0x1
	.2byte	0x39d
	.4byte	0x4e8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3240
	.uleb128 0x55
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x39e
	.4byte	0x4e8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1640
	.uleb128 0x37
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x39f
	.4byte	0x2c
	.4byte	.LLST49
	.uleb128 0x37
	.ascii	"r1\000"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x2c
	.4byte	.LLST50
	.uleb128 0x37
	.ascii	"r2\000"
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x2c
	.4byte	.LLST51
	.uleb128 0x39
	.4byte	.LASF1791
	.byte	0x1
	.2byte	0x3a2
	.4byte	0x9d9
	.4byte	.LLST52
	.uleb128 0x39
	.4byte	.LASF1914
	.byte	0x1
	.2byte	0x3a3
	.4byte	0x9d9
	.4byte	.LLST53
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0x4e55
	.uleb128 0x37
	.ascii	"h\000"
	.byte	0x1
	.2byte	0x3e3
	.4byte	0x9d9
	.4byte	.LLST54
	.uleb128 0x37
	.ascii	"mh\000"
	.byte	0x1
	.2byte	0x3e3
	.4byte	0x9d9
	.4byte	.LLST55
	.uleb128 0x37
	.ascii	"phs\000"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x2c
	.4byte	.LLST56
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB141
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x3e6
	.4byte	0x4e31
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST57
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST58
	.byte	0
	.uleb128 0x48
	.4byte	0x450a
	.4byte	.LBB145
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x3f6
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST59
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL166
	.4byte	0x5c72
	.uleb128 0x3a
	.4byte	.LVL168
	.4byte	0x5c9c
	.4byte	0x4e78
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL182
	.4byte	0x4b3c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3ec6
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x4ea0
	.uleb128 0x56
	.4byte	0xd4
	.2byte	0x18f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF1915
	.byte	0x1
	.2byte	0x1c7
	.byte	0x1
	.4byte	0x4ff9
	.uleb128 0x57
	.4byte	.LASF1788
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x3653
	.uleb128 0x57
	.4byte	.LASF1729
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x2c
	.uleb128 0x33
	.ascii	"gzt\000"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"tx\000"
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x9d9
	.uleb128 0x31
	.4byte	.LASF1916
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x2c
	.uleb128 0x33
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1917
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x4ff9
	.uleb128 0x31
	.4byte	.LASF1918
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x4050
	.uleb128 0x31
	.4byte	.LASF1799
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1789
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x9ad
	.uleb128 0x33
	.ascii	"vis\000"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x45d4
	.uleb128 0x31
	.4byte	.LASF1845
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x9d9
	.uleb128 0x31
	.4byte	.LASF1714
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1919
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x9d9
	.uleb128 0x31
	.4byte	.LASF1920
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"fx\000"
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"fy\000"
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"fz\000"
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"gxt\000"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"gyt\000"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x9d9
	.uleb128 0x33
	.ascii	"tz\000"
	.byte	0x1
	.2byte	0x1da
	.4byte	0x9d9
	.uleb128 0x31
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x1db
	.4byte	0x2c
	.uleb128 0x45
	.4byte	0x4fd8
	.uleb128 0x33
	.ascii	"ang\000"
	.byte	0x1
	.2byte	0x216
	.4byte	0x9e4
	.uleb128 0x33
	.ascii	"rot\000"
	.byte	0x1
	.2byte	0x217
	.4byte	0x33
	.byte	0
	.uleb128 0x45
	.4byte	0x4fea
	.uleb128 0x31
	.4byte	.LASF1794
	.byte	0x1
	.2byte	0x223
	.4byte	0x45da
	.byte	0
	.uleb128 0x2e
	.uleb128 0x33
	.ascii	"phs\000"
	.byte	0x1
	.2byte	0x24a
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4056
	.uleb128 0x58
	.4byte	.LASF1921
	.byte	0x1
	.2byte	0x127
	.4byte	0x45d4
	.byte	0x1
	.4byte	0x501f
	.uleb128 0x2e
	.uleb128 0x31
	.4byte	.LASF1922
	.byte	0x1
	.2byte	0x12b
	.4byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF1923
	.byte	0x1
	.2byte	0x296
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5597
	.uleb128 0x47
	.4byte	.LASF1924
	.byte	0x1
	.2byte	0x296
	.4byte	0x5597
	.4byte	.LLST61
	.uleb128 0x47
	.4byte	.LASF1729
	.byte	0x1
	.2byte	0x296
	.4byte	0x2c
	.4byte	.LLST62
	.uleb128 0x37
	.ascii	"sec\000"
	.byte	0x1
	.2byte	0x298
	.4byte	0x3ca2
	.4byte	.LLST63
	.uleb128 0x55
	.4byte	.LASF1788
	.byte	0x1
	.2byte	0x299
	.4byte	0x3653
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x48
	.4byte	0x4ea0
	.4byte	.LBB200
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x2a9
	.uleb128 0x40
	.4byte	0x4eb9
	.uleb128 0x3f
	.4byte	0x4ead
	.4byte	.LLST64
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x158
	.uleb128 0x49
	.4byte	0x4ec5
	.4byte	.LLST65
	.uleb128 0x49
	.4byte	0x4ed1
	.4byte	.LLST66
	.uleb128 0x42
	.4byte	0x4edc
	.uleb128 0x49
	.4byte	0x4ee8
	.4byte	.LLST67
	.uleb128 0x49
	.4byte	0x4ef3
	.4byte	.LLST68
	.uleb128 0x49
	.4byte	0x4efe
	.4byte	.LLST69
	.uleb128 0x49
	.4byte	0x4f0a
	.4byte	.LLST70
	.uleb128 0x49
	.4byte	0x4f16
	.4byte	.LLST71
	.uleb128 0x49
	.4byte	0x4f22
	.4byte	.LLST72
	.uleb128 0x42
	.4byte	0x4f2e
	.uleb128 0x42
	.4byte	0x4f3a
	.uleb128 0x49
	.4byte	0x4f46
	.4byte	.LLST73
	.uleb128 0x49
	.4byte	0x4f52
	.4byte	.LLST74
	.uleb128 0x49
	.4byte	0x4f5e
	.4byte	.LLST75
	.uleb128 0x49
	.4byte	0x4f6a
	.4byte	.LLST76
	.uleb128 0x49
	.4byte	0x4f75
	.4byte	.LLST77
	.uleb128 0x49
	.4byte	0x4f80
	.4byte	.LLST78
	.uleb128 0x49
	.4byte	0x4f8b
	.4byte	.LLST79
	.uleb128 0x49
	.4byte	0x4f97
	.4byte	.LLST80
	.uleb128 0x49
	.4byte	0x4fa3
	.4byte	.LLST81
	.uleb128 0x49
	.4byte	0x4fae
	.4byte	.LLST82
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB202
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x1df
	.4byte	0x516e
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST83
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST84
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB206
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x5191
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST85
	.uleb128 0x40
	.4byte	0x451a
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB210
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x51b4
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST86
	.uleb128 0x40
	.4byte	0x451a
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB218
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x51db
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST87
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST88
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB221
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x5202
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST89
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST90
	.byte	0
	.uleb128 0x53
	.4byte	0x452d
	.4byte	.LBB226
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x525e
	.uleb128 0x3f
	.4byte	0x4546
	.4byte	.LLST91
	.uleb128 0x3f
	.4byte	0x453d
	.4byte	.LLST92
	.uleb128 0x54
	.4byte	0x4498
	.4byte	.LBB228
	.4byte	.LBE228-.LBB228
	.byte	0x2
	.byte	0x54
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST92
	.uleb128 0x41
	.4byte	.LBB229
	.4byte	.LBE229-.LBB229
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST92
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB231
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x5285
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST96
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST97
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB235
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x52ac
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST98
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST99
	.byte	0
	.uleb128 0x59
	.4byte	0x4498
	.4byte	.LBB243
	.4byte	.LBE243-.LBB243
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x52e6
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST100
	.uleb128 0x41
	.4byte	.LBB244
	.4byte	.LBE244-.LBB244
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST100
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST102
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x250
	.4byte	0x5355
	.uleb128 0x49
	.4byte	0x4fdd
	.4byte	.LLST103
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB246
	.4byte	.Ldebug_ranges0+0x288
	.byte	0x1
	.2byte	0x230
	.4byte	0x531b
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST104
	.uleb128 0x40
	.4byte	0x451a
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB250
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.2byte	0x22d
	.4byte	0x5342
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST105
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST106
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL235
	.4byte	0x5c02
	.uleb128 0x3c
	.4byte	.LVL244
	.4byte	0x5c61
	.byte	0
	.uleb128 0x53
	.4byte	0x452d
	.4byte	.LBB264
	.4byte	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.2byte	0x23e
	.4byte	0x53e2
	.uleb128 0x3f
	.4byte	0x4546
	.4byte	.LLST107
	.uleb128 0x3f
	.4byte	0x453d
	.4byte	.LLST108
	.uleb128 0x5a
	.4byte	0x4498
	.4byte	.LBB266
	.4byte	.Ldebug_ranges0+0x2f8
	.byte	0x2
	.byte	0x54
	.4byte	0x53b0
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST109
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x2f8
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST109
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST111
	.byte	0
	.byte	0
	.uleb128 0x5b
	.4byte	0x4498
	.4byte	.LBB272
	.4byte	.Ldebug_ranges0+0x320
	.byte	0x2
	.byte	0x54
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST108
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x320
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST108
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST114
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x452d
	.4byte	.LBB281
	.4byte	.Ldebug_ranges0+0x338
	.byte	0x1
	.2byte	0x23f
	.4byte	0x543e
	.uleb128 0x3f
	.4byte	0x4546
	.4byte	.LLST115
	.uleb128 0x3f
	.4byte	0x453d
	.4byte	.LLST116
	.uleb128 0x54
	.4byte	0x4498
	.4byte	.LBB283
	.4byte	.LBE283-.LBB283
	.byte	0x2
	.byte	0x54
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST116
	.uleb128 0x41
	.4byte	.LBB284
	.4byte	.LBE284-.LBB284
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST116
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST119
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x350
	.4byte	0x5451
	.uleb128 0x49
	.4byte	0x4feb
	.4byte	.LLST120
	.byte	0
	.uleb128 0x53
	.4byte	0x4fff
	.4byte	.LBB290
	.4byte	.Ldebug_ranges0+0x368
	.byte	0x1
	.2byte	0x257
	.4byte	0x54ad
	.uleb128 0x41
	.4byte	.LBB292
	.4byte	.LBE292-.LBB292
	.uleb128 0x49
	.4byte	0x5011
	.4byte	.LLST121
	.uleb128 0x3a
	.4byte	.LVL263
	.4byte	0x5cb7
	.4byte	0x548f
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
	.uleb128 0x43
	.4byte	.LVL265
	.4byte	0x5cdb
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x452d
	.4byte	.LBB299
	.4byte	.Ldebug_ranges0+0x398
	.byte	0x1
	.2byte	0x26b
	.4byte	0x5509
	.uleb128 0x3f
	.4byte	0x4546
	.4byte	.LLST122
	.uleb128 0x3f
	.4byte	0x453d
	.4byte	.LLST123
	.uleb128 0x54
	.4byte	0x4498
	.4byte	.LBB301
	.4byte	.LBE301-.LBB301
	.byte	0x2
	.byte	0x54
	.uleb128 0x3f
	.4byte	0x44a8
	.4byte	.LLST123
	.uleb128 0x41
	.4byte	.LBB302
	.4byte	.LBE302-.LBB302
	.uleb128 0x49
	.4byte	0x44b1
	.4byte	.LLST123
	.uleb128 0x49
	.4byte	0x44bb
	.4byte	.LLST126
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x452d
	.4byte	.LBB308
	.4byte	.Ldebug_ranges0+0x3b8
	.byte	0x1
	.2byte	0x273
	.4byte	0x5530
	.uleb128 0x3f
	.4byte	0x4546
	.4byte	.LLST127
	.uleb128 0x3f
	.4byte	0x453d
	.4byte	.LLST128
	.byte	0
	.uleb128 0x36
	.4byte	.LBB316
	.4byte	.LBE316-.LBB316
	.4byte	0x5566
	.uleb128 0x49
	.4byte	0x4fbf
	.4byte	.LLST129
	.uleb128 0x49
	.4byte	0x4fcb
	.4byte	.LLST130
	.uleb128 0x43
	.4byte	.LVL285
	.4byte	0x5cf8
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL297
	.4byte	0x5b9b
	.4byte	0x557d
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x43
	.4byte	.LVL311
	.4byte	0x5d12
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3dd3
	.uleb128 0x2f
	.4byte	.LASF1925
	.byte	0x1
	.2byte	0x2b0
	.byte	0x1
	.4byte	0x5652
	.uleb128 0x30
	.ascii	"psp\000"
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x5652
	.uleb128 0x57
	.4byte	.LASF1729
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x2c
	.uleb128 0x33
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x2c
	.uleb128 0x33
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1917
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x4ff9
	.uleb128 0x31
	.4byte	.LASF1918
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x4050
	.uleb128 0x31
	.4byte	.LASF1799
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1789
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x9ad
	.uleb128 0x33
	.ascii	"vis\000"
	.byte	0x1
	.2byte	0x2b7
	.4byte	0x45d4
	.uleb128 0x31
	.4byte	.LASF1926
	.byte	0x1
	.2byte	0x2b8
	.4byte	0x3fc3
	.uleb128 0x31
	.4byte	.LASF1818
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x2c
	.uleb128 0x31
	.4byte	.LASF1822
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x9d9
	.uleb128 0x2e
	.uleb128 0x31
	.4byte	.LASF1794
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x45da
	.uleb128 0x33
	.ascii	"tx\000"
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x9d9
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3066
	.uleb128 0x4d
	.4byte	.LASF1927
	.byte	0x1
	.2byte	0x333
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57eb
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x335
	.4byte	0x2c
	.uleb128 0x39
	.4byte	.LASF1729
	.byte	0x1
	.2byte	0x335
	.4byte	0x2c
	.4byte	.LLST131
	.uleb128 0x37
	.ascii	"psp\000"
	.byte	0x1
	.2byte	0x336
	.4byte	0x5652
	.4byte	.LLST132
	.uleb128 0x48
	.4byte	0x559d
	.4byte	.LBB333
	.4byte	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.2byte	0x33f
	.uleb128 0x40
	.4byte	0x55b6
	.uleb128 0x3f
	.4byte	0x55aa
	.4byte	.LLST133
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x3e0
	.uleb128 0x49
	.4byte	0x55c2
	.4byte	.LLST134
	.uleb128 0x49
	.4byte	0x55cd
	.4byte	.LLST135
	.uleb128 0x49
	.4byte	0x55d8
	.4byte	.LLST136
	.uleb128 0x49
	.4byte	0x55e4
	.4byte	.LLST137
	.uleb128 0x49
	.4byte	0x55f0
	.4byte	.LLST138
	.uleb128 0x49
	.4byte	0x55fc
	.4byte	.LLST139
	.uleb128 0x49
	.4byte	0x5608
	.4byte	.LLST140
	.uleb128 0x52
	.4byte	0x5614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x49
	.4byte	0x5620
	.4byte	.LLST141
	.uleb128 0x49
	.4byte	0x562c
	.4byte	.LLST142
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x400
	.4byte	0x5791
	.uleb128 0x49
	.4byte	0x5639
	.4byte	.LLST143
	.uleb128 0x49
	.4byte	0x5645
	.4byte	.LLST144
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB336
	.4byte	.Ldebug_ranges0+0x438
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x5757
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST145
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST146
	.byte	0
	.uleb128 0x59
	.4byte	0x450a
	.4byte	.LBB340
	.4byte	.LBE340-.LBB340
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x577e
	.uleb128 0x3f
	.4byte	0x4523
	.4byte	.LLST147
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST148
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL318
	.4byte	0x5c02
	.uleb128 0x3c
	.4byte	.LVL329
	.4byte	0x5c61
	.byte	0
	.uleb128 0x53
	.4byte	0x450a
	.4byte	.LBB347
	.4byte	.Ldebug_ranges0+0x450
	.byte	0x1
	.2byte	0x30d
	.4byte	0x57b8
	.uleb128 0x5c
	.4byte	0x4523
	.4byte	0x2b000
	.uleb128 0x3f
	.4byte	0x451a
	.4byte	.LLST149
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL333
	.4byte	0x5d2c
	.uleb128 0x3a
	.4byte	.LVL335
	.4byte	0x4b3c
	.4byte	0x57d6
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x43
	.4byte	.LVL339
	.4byte	0x5d12
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x45e5
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5843
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x468
	.4byte	0x582e
	.uleb128 0x49
	.4byte	0x45f3
	.4byte	.LLST150
	.uleb128 0x3c
	.4byte	.LVL346
	.4byte	0x5bf1
	.uleb128 0x43
	.4byte	.LVL347
	.4byte	0x5bad
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x480
	.uleb128 0x42
	.4byte	0x45f3
	.uleb128 0x4b
	.4byte	.LVL345
	.4byte	0x45ff
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF1928
	.byte	0x1
	.2byte	0x41a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58a6
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x41c
	.4byte	0x2c
	.4byte	.LLST151
	.uleb128 0x37
	.ascii	"ds\000"
	.byte	0x1
	.2byte	0x41d
	.4byte	0x4e89
	.4byte	.LLST152
	.uleb128 0x3c
	.4byte	.LVL348
	.4byte	0x45e5
	.uleb128 0x3c
	.4byte	.LVL352
	.4byte	0x4d33
	.uleb128 0x3a
	.4byte	.LVL356
	.4byte	0x5c9c
	.4byte	0x589c
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL359
	.4byte	0x5658
	.byte	0
	.uleb128 0x44
	.4byte	.LASF1929
	.byte	0xb
	.byte	0x50
	.4byte	0x58b1
	.uleb128 0x18
	.4byte	0x58b6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9d9
	.uleb128 0x9
	.4byte	0x4020
	.4byte	0x58cc
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1c
	.byte	0
	.uleb128 0x5d
	.4byte	.LASF1930
	.byte	0x1
	.byte	0x56
	.4byte	0x58bc
	.uleb128 0x5
	.byte	0x3
	.4byte	sprtemp
	.uleb128 0x5d
	.4byte	.LASF1931
	.byte	0x1
	.byte	0x57
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	maxframe
	.uleb128 0x55
	.4byte	.LASF1932
	.byte	0x1
	.2byte	0x109
	.4byte	0x45d4
	.uleb128 0x5
	.byte	0x3
	.4byte	vissprites
	.uleb128 0x55
	.4byte	.LASF1933
	.byte	0x1
	.2byte	0x109
	.4byte	0x473c
	.uleb128 0x5
	.byte	0x3
	.4byte	vissprite_ptrs
	.uleb128 0x55
	.4byte	.LASF1934
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x3
	.4byte	num_vissprite
	.uleb128 0x55
	.4byte	.LASF1935
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x3
	.4byte	num_vissprite_alloc
	.uleb128 0x55
	.4byte	.LASF1936
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x3
	.4byte	num_vissprite_ptrs
	.uleb128 0x9
	.4byte	0x9d9
	.4byte	0x5959
	.uleb128 0x56
	.4byte	0xd4
	.2byte	0x27ff
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF1937
	.byte	0xb
	.byte	0x4d
	.4byte	0x5948
	.uleb128 0x5e
	.4byte	.LASF1938
	.byte	0x14
	.byte	0x50
	.4byte	0x9ad
	.uleb128 0x5e
	.4byte	.LASF1939
	.byte	0x14
	.byte	0xc0
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1940
	.byte	0x15
	.byte	0x78
	.4byte	0x487d
	.uleb128 0x5e
	.4byte	.LASF1941
	.byte	0x1a
	.byte	0x40
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1942
	.byte	0x1a
	.byte	0x41
	.4byte	0x2c
	.uleb128 0x5f
	.4byte	.LASF1943
	.byte	0x1
	.byte	0x52
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	numsprites
	.uleb128 0x5f
	.4byte	.LASF1944
	.byte	0x1
	.byte	0x51
	.4byte	0x4ff9
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.uleb128 0x5e
	.4byte	.LASF1945
	.byte	0x1a
	.byte	0x51
	.4byte	0x3ca2
	.uleb128 0x5e
	.4byte	.LASF1946
	.byte	0x1a
	.byte	0x63
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1947
	.byte	0x1a
	.byte	0x64
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1593
	.byte	0x1a
	.byte	0x65
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1948
	.byte	0x1a
	.byte	0x67
	.4byte	0x59f4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x36a9
	.uleb128 0x5e
	.4byte	.LASF1949
	.byte	0x1b
	.byte	0x68
	.4byte	0x430a
	.uleb128 0x5e
	.4byte	.LASF1950
	.byte	0x1b
	.byte	0x68
	.4byte	0x430a
	.uleb128 0x5e
	.4byte	.LASF1951
	.byte	0x1c
	.byte	0x30
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1952
	.byte	0x1c
	.byte	0x31
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1953
	.byte	0x1c
	.byte	0x32
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1594
	.byte	0x1c
	.byte	0x33
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1954
	.byte	0x1c
	.byte	0x38
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1955
	.byte	0x1c
	.byte	0x39
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1956
	.byte	0x1c
	.byte	0x3a
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1957
	.byte	0x1c
	.byte	0x3b
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1958
	.byte	0x1c
	.byte	0x3d
	.4byte	0x9d9
	.uleb128 0x5e
	.4byte	.LASF1565
	.byte	0x1c
	.byte	0x3e
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1959
	.byte	0x1c
	.byte	0x44
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1960
	.byte	0x1c
	.byte	0x58
	.4byte	0x3fb8
	.uleb128 0x5e
	.4byte	.LASF1619
	.byte	0x1c
	.byte	0x5e
	.4byte	0x3fb8
	.uleb128 0x5e
	.4byte	.LASF1961
	.byte	0x1d
	.byte	0x32
	.4byte	0x4e89
	.uleb128 0x5e
	.4byte	.LASF1962
	.byte	0x1d
	.byte	0x37
	.4byte	0x4e89
	.uleb128 0x5e
	.4byte	.LASF1963
	.byte	0x17
	.byte	0x86
	.4byte	0x43e3
	.uleb128 0x5e
	.4byte	.LASF1964
	.byte	0x17
	.byte	0x89
	.4byte	0x43d1
	.uleb128 0x5f
	.4byte	.LASF1965
	.byte	0x1
	.byte	0x48
	.4byte	0x4e8f
	.uleb128 0x5
	.byte	0x3
	.4byte	negonearray
	.uleb128 0x5f
	.4byte	.LASF1966
	.byte	0x1
	.byte	0x49
	.4byte	0x4e8f
	.uleb128 0x5
	.byte	0x3
	.4byte	screenheightarray
	.uleb128 0x60
	.4byte	.LASF1967
	.byte	0x1
	.2byte	0x13e
	.4byte	0x3ec0
	.uleb128 0x5
	.byte	0x3
	.4byte	mfloorclip
	.uleb128 0x60
	.4byte	.LASF1968
	.byte	0x1
	.2byte	0x13f
	.4byte	0x3ec0
	.uleb128 0x5
	.byte	0x3
	.4byte	mceilingclip
	.uleb128 0x60
	.4byte	.LASF1969
	.byte	0x1
	.2byte	0x140
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	spryscale
	.uleb128 0x60
	.4byte	.LASF1970
	.byte	0x1
	.2byte	0x141
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	sprtopscreen
	.uleb128 0x5f
	.4byte	.LASF1971
	.byte	0x1
	.byte	0x40
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	pspritescale
	.uleb128 0x5f
	.4byte	.LASF1972
	.byte	0x1
	.byte	0x41
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	pspriteiscale
	.uleb128 0x5f
	.4byte	.LASF1973
	.byte	0x1
	.byte	0x43
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	pspriteyscale
	.uleb128 0x5e
	.4byte	.LASF1974
	.byte	0x18
	.byte	0x28
	.4byte	0x2c
	.uleb128 0x5e
	.4byte	.LASF1975
	.byte	0x18
	.byte	0x3c
	.4byte	0x4455
	.uleb128 0x61
	.4byte	.LASF1977
	.4byte	0x45
	.4byte	0x5b9b
	.uleb128 0x14
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x877
	.uleb128 0x14
	.4byte	0xd4
	.byte	0
	.uleb128 0x62
	.4byte	.LASF1978
	.byte	0x1e
	.byte	0x3d
	.4byte	0x5bad
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x22
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1979
	.byte	0x8
	.byte	0x49
	.4byte	0x45
	.4byte	0x5bcc
	.uleb128 0x14
	.4byte	0x3a
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x5bcc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x45
	.uleb128 0x63
	.4byte	.LASF1980
	.byte	0x1f
	.byte	0x19
	.4byte	0x45
	.4byte	0x5bf1
	.uleb128 0x14
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x3a
	.byte	0
	.uleb128 0x62
	.4byte	.LASF1981
	.byte	0x8
	.byte	0x4a
	.4byte	0x5c02
	.uleb128 0x14
	.4byte	0x45
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1982
	.byte	0x16
	.byte	0x53
	.4byte	0x45da
	.4byte	0x5c17
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x62
	.4byte	.LASF1983
	.byte	0x17
	.byte	0x5d
	.4byte	0x5c28
	.uleb128 0x14
	.4byte	0x440a
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1984
	.byte	0x17
	.byte	0x8c
	.4byte	0x43ee
	.4byte	0x5c47
	.uleb128 0x14
	.4byte	0x41ae
	.uleb128 0x14
	.4byte	0x41e3
	.uleb128 0x14
	.4byte	0x41e3
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1985
	.byte	0x16
	.byte	0x64
	.4byte	0x4b26
	.4byte	0x5c61
	.uleb128 0x14
	.4byte	0x45da
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x62
	.4byte	.LASF1986
	.byte	0x16
	.byte	0x54
	.4byte	0x5c72
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1987
	.byte	0x1c
	.byte	0x6a
	.4byte	0x2c
	.4byte	0x5c91
	.uleb128 0x14
	.4byte	0x9d9
	.uleb128 0x14
	.4byte	0x9d9
	.uleb128 0x14
	.4byte	0x5c91
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c97
	.uleb128 0x18
	.4byte	0x3dc7
	.uleb128 0x62
	.4byte	.LASF1988
	.byte	0x20
	.byte	0x29
	.4byte	0x5cb7
	.uleb128 0x14
	.4byte	0x4e89
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x2c
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1989
	.byte	0x8
	.byte	0x50
	.4byte	0x45
	.4byte	0x5cdb
	.uleb128 0x14
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x3a
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x5bcc
	.byte	0
	.uleb128 0x61
	.4byte	.LASF1980
	.4byte	0x45
	.4byte	0x5cf8
	.uleb128 0x14
	.4byte	0x45
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0xd4
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1990
	.byte	0x1c
	.byte	0x6b
	.4byte	0x9e4
	.4byte	0x5d12
	.uleb128 0x14
	.4byte	0x9d9
	.uleb128 0x14
	.4byte	0x9d9
	.byte	0
	.uleb128 0x63
	.4byte	.LASF1991
	.byte	0x1b
	.byte	0x66
	.4byte	0x3fb8
	.4byte	0x5d2c
	.uleb128 0x14
	.4byte	0x2c
	.uleb128 0x14
	.4byte	0x9d9
	.byte	0
	.uleb128 0x64
	.4byte	.LASF1996
	.byte	0x19
	.byte	0x80
	.4byte	0x448d
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x54
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x64
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x7
	.byte	0x72
	.sleb128 -1073741823
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x28
	.byte	0x76
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9
	.byte	0xfd
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x23
	.byte	0x76
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9
	.byte	0xfd
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x25
	.byte	0x76
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9
	.byte	0xfd
	.byte	0x1e
	.byte	0x76
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x2a
	.byte	0x76
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9
	.byte	0xfd
	.byte	0x1e
	.byte	0x76
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x4
	.byte	0x7a
	.sleb128 -65
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x4
	.byte	0x7a
	.sleb128 -65
	.byte	0x9f
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0x7a
	.sleb128 -65
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL115-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x11
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x5
	.byte	0x72
	.sleb128 -65280
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x5
	.byte	0x72
	.sleb128 -65535
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x11
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x18
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x77
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1c
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0xd
	.byte	0x7e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x13
	.byte	0x7e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1b
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1c
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x22
	.byte	0x77
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x6
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x29
	.byte	0x77
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x6
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	spryscale
	.byte	0x6
	.byte	0x77
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.4byte	sprtopscreen
	.byte	0x6
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x9
	.byte	0x77
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL204-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL204-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL166-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166-1-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -3252
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-1-.Ltext0
	.2byte	0x13
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x76
	.sleb128 12
	.byte	0x6
	.byte	0x76
	.sleb128 12
	.byte	0x6
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x2c
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0xc
	.byte	0x79
	.sleb128 68
	.byte	0x6
	.byte	0x8
	.byte	0xc4
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 68
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 36
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x11
	.byte	0x79
	.sleb128 68
	.byte	0x6
	.byte	0x8
	.byte	0xc4
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x11
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 68
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL276-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0xb
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL244-1-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL244-1-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL277-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL278-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x15
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x33
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x15
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x33
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x15
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x33
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 24
	.byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 24
	.byte	0x6
	.byte	0x76
	.sleb128 192
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 28
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 28
	.byte	0x6
	.byte	0x76
	.sleb128 196
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 32
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL283-1-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL310-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4d
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL313-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL336-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL329-1-.Ltext0
	.2byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x33
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL329-1-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x33
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL318-1-.Ltext0
	.2byte	0x12
	.byte	0x7b
	.sleb128 -16
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	sprites
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL318-1-.Ltext0
	.2byte	0x12
	.byte	0x7b
	.sleb128 -16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x41
	.byte	0x24
	.byte	0x41
	.byte	0x25
	.byte	0x37
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -144
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL335-1-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL329-1-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-1-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL329-1-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -140
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -140
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL329-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL329-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL329-1-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL345-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL358-.Ltext0
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
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	.LBB323-.Ltext0
	.4byte	.LBE323-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB202-.Ltext0
	.4byte	.LBE202-.Ltext0
	.4byte	.LBB213-.Ltext0
	.4byte	.LBE213-.Ltext0
	.4byte	.LBB216-.Ltext0
	.4byte	.LBE216-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB206-.Ltext0
	.4byte	.LBE206-.Ltext0
	.4byte	.LBB214-.Ltext0
	.4byte	.LBE214-.Ltext0
	.4byte	.LBB217-.Ltext0
	.4byte	.LBE217-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB210-.Ltext0
	.4byte	.LBE210-.Ltext0
	.4byte	.LBB215-.Ltext0
	.4byte	.LBE215-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB218-.Ltext0
	.4byte	.LBE218-.Ltext0
	.4byte	.LBB224-.Ltext0
	.4byte	.LBE224-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB221-.Ltext0
	.4byte	.LBE221-.Ltext0
	.4byte	.LBB225-.Ltext0
	.4byte	.LBE225-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB226-.Ltext0
	.4byte	.LBE226-.Ltext0
	.4byte	.LBB315-.Ltext0
	.4byte	.LBE315-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB231-.Ltext0
	.4byte	.LBE231-.Ltext0
	.4byte	.LBB239-.Ltext0
	.4byte	.LBE239-.Ltext0
	.4byte	.LBB241-.Ltext0
	.4byte	.LBE241-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	.LBB242-.Ltext0
	.4byte	.LBE242-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB245-.Ltext0
	.4byte	.LBE245-.Ltext0
	.4byte	.LBB262-.Ltext0
	.4byte	.LBE262-.Ltext0
	.4byte	.LBB263-.Ltext0
	.4byte	.LBE263-.Ltext0
	.4byte	.LBB286-.Ltext0
	.4byte	.LBE286-.Ltext0
	.4byte	.LBB287-.Ltext0
	.4byte	.LBE287-.Ltext0
	.4byte	.LBB288-.Ltext0
	.4byte	.LBE288-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB258-.Ltext0
	.4byte	.LBE258-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	.LBB257-.Ltext0
	.4byte	.LBE257-.Ltext0
	.4byte	.LBB259-.Ltext0
	.4byte	.LBE259-.Ltext0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	.LBB261-.Ltext0
	.4byte	.LBE261-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB264-.Ltext0
	.4byte	.LBE264-.Ltext0
	.4byte	.LBB280-.Ltext0
	.4byte	.LBE280-.Ltext0
	.4byte	.LBB317-.Ltext0
	.4byte	.LBE317-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB266-.Ltext0
	.4byte	.LBE266-.Ltext0
	.4byte	.LBB271-.Ltext0
	.4byte	.LBE271-.Ltext0
	.4byte	.LBB275-.Ltext0
	.4byte	.LBE275-.Ltext0
	.4byte	.LBB277-.Ltext0
	.4byte	.LBE277-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB272-.Ltext0
	.4byte	.LBE272-.Ltext0
	.4byte	.LBB276-.Ltext0
	.4byte	.LBE276-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB281-.Ltext0
	.4byte	.LBE281-.Ltext0
	.4byte	.LBB318-.Ltext0
	.4byte	.LBE318-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB289-.Ltext0
	.4byte	.LBE289-.Ltext0
	.4byte	.LBB319-.Ltext0
	.4byte	.LBE319-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB290-.Ltext0
	.4byte	.LBE290-.Ltext0
	.4byte	.LBB297-.Ltext0
	.4byte	.LBE297-.Ltext0
	.4byte	.LBB298-.Ltext0
	.4byte	.LBE298-.Ltext0
	.4byte	.LBB305-.Ltext0
	.4byte	.LBE305-.Ltext0
	.4byte	.LBB306-.Ltext0
	.4byte	.LBE306-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB299-.Ltext0
	.4byte	.LBE299-.Ltext0
	.4byte	.LBB307-.Ltext0
	.4byte	.LBE307-.Ltext0
	.4byte	.LBB321-.Ltext0
	.4byte	.LBE321-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB308-.Ltext0
	.4byte	.LBE308-.Ltext0
	.4byte	.LBB313-.Ltext0
	.4byte	.LBE313-.Ltext0
	.4byte	.LBB314-.Ltext0
	.4byte	.LBE314-.Ltext0
	.4byte	.LBB320-.Ltext0
	.4byte	.LBE320-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB333-.Ltext0
	.4byte	.LBE333-.Ltext0
	.4byte	.LBB353-.Ltext0
	.4byte	.LBE353-.Ltext0
	.4byte	.LBB354-.Ltext0
	.4byte	.LBE354-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB335-.Ltext0
	.4byte	.LBE335-.Ltext0
	.4byte	.LBB342-.Ltext0
	.4byte	.LBE342-.Ltext0
	.4byte	.LBB343-.Ltext0
	.4byte	.LBE343-.Ltext0
	.4byte	.LBB344-.Ltext0
	.4byte	.LBE344-.Ltext0
	.4byte	.LBB345-.Ltext0
	.4byte	.LBE345-.Ltext0
	.4byte	.LBB346-.Ltext0
	.4byte	.LBE346-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB336-.Ltext0
	.4byte	.LBE336-.Ltext0
	.4byte	.LBB339-.Ltext0
	.4byte	.LBE339-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB347-.Ltext0
	.4byte	.LBE347-.Ltext0
	.4byte	.LBB350-.Ltext0
	.4byte	.LBE350-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB359-.Ltext0
	.4byte	.LBE359-.Ltext0
	.4byte	.LBB364-.Ltext0
	.4byte	.LBE364-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB361-.Ltext0
	.4byte	.LBE361-.Ltext0
	.4byte	.LBB362-.Ltext0
	.4byte	.LBE362-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1749:
	.ascii	"RF_TOP_TILE\000"
.LASF954:
	.ascii	"S_BSPI_RUN1\000"
.LASF955:
	.ascii	"S_BSPI_RUN2\000"
.LASF956:
	.ascii	"S_BSPI_RUN3\000"
.LASF957:
	.ascii	"S_BSPI_RUN4\000"
.LASF958:
	.ascii	"S_BSPI_RUN5\000"
.LASF959:
	.ascii	"S_BSPI_RUN6\000"
.LASF960:
	.ascii	"S_BSPI_RUN7\000"
.LASF961:
	.ascii	"S_BSPI_RUN8\000"
.LASF962:
	.ascii	"S_BSPI_RUN9\000"
.LASF244:
	.ascii	"SPR_YSKU\000"
.LASF1617:
	.ascii	"attacker\000"
.LASF609:
	.ascii	"S_FIRE10\000"
.LASF610:
	.ascii	"S_FIRE11\000"
.LASF611:
	.ascii	"S_FIRE12\000"
.LASF612:
	.ascii	"S_FIRE13\000"
.LASF613:
	.ascii	"S_FIRE14\000"
.LASF614:
	.ascii	"S_FIRE15\000"
.LASF615:
	.ascii	"S_FIRE16\000"
.LASF616:
	.ascii	"S_FIRE17\000"
.LASF617:
	.ascii	"S_FIRE18\000"
.LASF618:
	.ascii	"S_FIRE19\000"
.LASF1499:
	.ascii	"MT_MISC84\000"
.LASF1432:
	.ascii	"MT_MISC20\000"
.LASF1177:
	.ascii	"S_MEGA2\000"
.LASF1178:
	.ascii	"S_MEGA3\000"
.LASF1179:
	.ascii	"S_MEGA4\000"
.LASF1436:
	.ascii	"MT_MISC24\000"
.LASF1437:
	.ascii	"MT_MISC25\000"
.LASF1439:
	.ascii	"MT_MISC26\000"
.LASF1440:
	.ascii	"MT_MISC27\000"
.LASF1441:
	.ascii	"MT_MISC28\000"
.LASF1444:
	.ascii	"MT_MISC29\000"
.LASF808:
	.ascii	"S_SARG_PAIN2\000"
.LASF1573:
	.ascii	"threshold\000"
.LASF136:
	.ascii	"wp_pistol\000"
.LASF285:
	.ascii	"SPR_COL1\000"
.LASF286:
	.ascii	"SPR_COL2\000"
.LASF287:
	.ascii	"SPR_COL3\000"
.LASF288:
	.ascii	"SPR_COL4\000"
.LASF297:
	.ascii	"SPR_COL5\000"
.LASF291:
	.ascii	"SPR_COL6\000"
.LASF1679:
	.ascii	"handle\000"
.LASF1939:
	.ascii	"viewangleoffset\000"
.LASF619:
	.ascii	"S_FIRE20\000"
.LASF620:
	.ascii	"S_FIRE21\000"
.LASF621:
	.ascii	"S_FIRE22\000"
.LASF622:
	.ascii	"S_FIRE23\000"
.LASF623:
	.ascii	"S_FIRE24\000"
.LASF271:
	.ascii	"SPR_COLU\000"
.LASF625:
	.ascii	"S_FIRE26\000"
.LASF626:
	.ascii	"S_FIRE27\000"
.LASF627:
	.ascii	"S_FIRE28\000"
.LASF628:
	.ascii	"S_FIRE29\000"
.LASF1953:
	.ascii	"viewwidth\000"
.LASF1746:
	.ascii	"ST_POSITIVE\000"
.LASF1445:
	.ascii	"MT_MISC30\000"
.LASF1360:
	.ascii	"action\000"
.LASF1447:
	.ascii	"MT_MISC32\000"
.LASF1448:
	.ascii	"MT_MISC33\000"
.LASF970:
	.ascii	"S_BSPI_PAIN\000"
.LASF1450:
	.ascii	"MT_MISC35\000"
.LASF442:
	.ascii	"S_BFGEXP\000"
.LASF150:
	.ascii	"am_misl\000"
.LASF1453:
	.ascii	"MT_MISC38\000"
.LASF1454:
	.ascii	"MT_MISC39\000"
.LASF1727:
	.ascii	"floorpic\000"
.LASF160:
	.ascii	"_Bool\000"
.LASF972:
	.ascii	"S_BSPI_DIE1\000"
.LASF973:
	.ascii	"S_BSPI_DIE2\000"
.LASF1515:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF1545:
	.ascii	"NUMPSPRITES\000"
.LASF1887:
	.ascii	"FixedMul\000"
.LASF977:
	.ascii	"S_BSPI_DIE6\000"
.LASF1685:
	.ascii	"ns_hires\000"
.LASF63:
	.ascii	"_mbstate\000"
.LASF1593:
	.ascii	"viewz\000"
.LASF42:
	.ascii	"_atexit\000"
.LASF1764:
	.ascii	"toptexture\000"
.LASF868:
	.ascii	"S_BOSS_RAISE1\000"
.LASF869:
	.ascii	"S_BOSS_RAISE2\000"
.LASF1379:
	.ascii	"MT_HEAD\000"
.LASF870:
	.ascii	"S_BOSS_RAISE3\000"
.LASF1878:
	.ascii	"VID_MODE15\000"
.LASF629:
	.ascii	"S_FIRE30\000"
.LASF774:
	.ascii	"S_TROO_PAIN\000"
.LASF1063:
	.ascii	"S_SSWV_DIE1\000"
.LASF873:
	.ascii	"S_BOSS_RAISE6\000"
.LASF1065:
	.ascii	"S_SSWV_DIE3\000"
.LASF1066:
	.ascii	"S_SSWV_DIE4\000"
.LASF1067:
	.ascii	"S_SSWV_DIE5\000"
.LASF239:
	.ascii	"SPR_BKEY\000"
.LASF1941:
	.ascii	"firstspritelump\000"
.LASF885:
	.ascii	"S_BOS2_ATK1\000"
.LASF886:
	.ascii	"S_BOS2_ATK2\000"
.LASF887:
	.ascii	"S_BOS2_ATK3\000"
.LASF273:
	.ascii	"SPR_GOR1\000"
.LASF280:
	.ascii	"SPR_GOR2\000"
.LASF281:
	.ascii	"SPR_GOR3\000"
.LASF282:
	.ascii	"SPR_GOR4\000"
.LASF283:
	.ascii	"SPR_GOR5\000"
.LASF1457:
	.ascii	"MT_MISC42\000"
.LASF1458:
	.ascii	"MT_MISC43\000"
.LASF642:
	.ascii	"S_SKEL_RUN1\000"
.LASF417:
	.ascii	"S_TBALL2\000"
.LASF644:
	.ascii	"S_SKEL_RUN3\000"
.LASF645:
	.ascii	"S_SKEL_RUN4\000"
.LASF646:
	.ascii	"S_SKEL_RUN5\000"
.LASF647:
	.ascii	"S_SKEL_RUN6\000"
.LASF648:
	.ascii	"S_SKEL_RUN7\000"
.LASF649:
	.ascii	"S_SKEL_RUN8\000"
.LASF650:
	.ascii	"S_SKEL_RUN9\000"
.LASF139:
	.ascii	"wp_missile\000"
.LASF1128:
	.ascii	"S_BEXP2\000"
.LASF1522:
	.ascii	"seestate\000"
.LASF1944:
	.ascii	"sprites\000"
.LASF1796:
	.ascii	"isplayersprite\000"
.LASF823:
	.ascii	"S_HEAD_ATK1\000"
.LASF824:
	.ascii	"S_HEAD_ATK2\000"
.LASF825:
	.ascii	"S_HEAD_ATK3\000"
.LASF1736:
	.ascii	"slopetype\000"
.LASF1077:
	.ascii	"S_SSWV_RAISE1\000"
.LASF1078:
	.ascii	"S_SSWV_RAISE2\000"
.LASF32:
	.ascii	"__tm_mon\000"
.LASF1080:
	.ascii	"S_SSWV_RAISE4\000"
.LASF40:
	.ascii	"_fntypes\000"
.LASF1548:
	.ascii	"angle\000"
.LASF1374:
	.ascii	"MT_FATSHOT\000"
.LASF1653:
	.ascii	"comp_falloff\000"
.LASF259:
	.ascii	"SPR_CELL\000"
.LASF260:
	.ascii	"SPR_CELP\000"
.LASF1243:
	.ascii	"S_HEARTCOL\000"
.LASF70:
	.ascii	"_inc\000"
.LASF43:
	.ascii	"_ind\000"
.LASF1971:
	.ascii	"pspritescale\000"
.LASF1609:
	.ascii	"cheats\000"
.LASF883:
	.ascii	"S_BOS2_RUN7\000"
.LASF1589:
	.ascii	"numlines\000"
.LASF1160:
	.ascii	"S_MEDI\000"
.LASF1873:
	.ascii	"step\000"
.LASF1167:
	.ascii	"S_PINV\000"
.LASF1423:
	.ascii	"MT_INS\000"
.LASF1466:
	.ascii	"MT_MISC51\000"
.LASF1467:
	.ascii	"MT_MISC52\000"
.LASF1421:
	.ascii	"MT_INV\000"
.LASF1469:
	.ascii	"MT_MISC54\000"
.LASF1992:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF378:
	.ascii	"S_MISSILEUP\000"
.LASF1472:
	.ascii	"MT_MISC57\000"
.LASF1473:
	.ascii	"MT_MISC58\000"
.LASF1474:
	.ascii	"MT_MISC59\000"
.LASF1835:
	.ascii	"RDRAW_FILTER_NONE\000"
.LASF555:
	.ascii	"S_SPOS_RAISE1\000"
.LASF1820:
	.ascii	"isNotTileable\000"
.LASF1893:
	.ascii	"dcvars\000"
.LASF349:
	.ascii	"S_SGUNFLASH1\000"
.LASF350:
	.ascii	"S_SGUNFLASH2\000"
.LASF897:
	.ascii	"S_BOS2_RAISE1\000"
.LASF898:
	.ascii	"S_BOS2_RAISE2\000"
.LASF899:
	.ascii	"S_BOS2_RAISE3\000"
.LASF900:
	.ascii	"S_BOS2_RAISE4\000"
.LASF901:
	.ascii	"S_BOS2_RAISE5\000"
.LASF49:
	.ascii	"_flags\000"
.LASF903:
	.ascii	"S_BOS2_RAISE7\000"
.LASF662:
	.ascii	"S_SKEL_PAIN\000"
.LASF1792:
	.ascii	"xiscale\000"
.LASF1149:
	.ascii	"S_RKEY\000"
.LASF171:
	.ascii	"next\000"
.LASF1014:
	.ascii	"S_CYBER_DIE5\000"
.LASF1759:
	.ascii	"length\000"
.LASF331:
	.ascii	"S_PISTOLUP\000"
.LASF1017:
	.ascii	"S_CYBER_DIE8\000"
.LASF1816:
	.ascii	"pixels\000"
.LASF1861:
	.ascii	"int_pitch\000"
.LASF1718:
	.ascii	"touching_thinglist\000"
.LASF1475:
	.ascii	"MT_MISC60\000"
.LASF1476:
	.ascii	"MT_MISC61\000"
.LASF1477:
	.ascii	"MT_MISC62\000"
.LASF1478:
	.ascii	"MT_MISC63\000"
.LASF80:
	.ascii	"_cvtlen\000"
.LASF1480:
	.ascii	"MT_MISC65\000"
.LASF1481:
	.ascii	"MT_MISC66\000"
.LASF1482:
	.ascii	"MT_MISC67\000"
.LASF446:
	.ascii	"S_EXPLODE1\000"
.LASF447:
	.ascii	"S_EXPLODE2\000"
.LASF448:
	.ascii	"S_EXPLODE3\000"
.LASF547:
	.ascii	"S_SPOS_XDIE2\000"
.LASF84:
	.ascii	"_sig_func\000"
.LASF637:
	.ascii	"S_TRACEEXP1\000"
.LASF638:
	.ascii	"S_TRACEEXP2\000"
.LASF639:
	.ascii	"S_TRACEEXP3\000"
.LASF1025:
	.ascii	"S_PAIN_RUN5\000"
.LASF1127:
	.ascii	"S_BEXP\000"
.LASF1026:
	.ascii	"S_PAIN_RUN6\000"
.LASF1618:
	.ascii	"extralight\000"
.LASF1987:
	.ascii	"R_PointOnSegSide\000"
.LASF1886:
	.ascii	"D_abs\000"
.LASF1869:
	.ascii	"mag_threshold\000"
.LASF1244:
	.ascii	"S_HEARTCOL2\000"
.LASF423:
	.ascii	"S_RBALLX1\000"
.LASF1875:
	.ascii	"msec\000"
.LASF1343:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1323:
	.ascii	"S_PLS1EXP\000"
.LASF1536:
	.ascii	"height\000"
.LASF1406:
	.ascii	"MT_TELEPORTMAN\000"
.LASF1874:
	.ascii	"frac\000"
.LASF62:
	.ascii	"_lock\000"
.LASF58:
	.ascii	"_nbuf\000"
.LASF117:
	.ascii	"_unused\000"
.LASF1485:
	.ascii	"MT_MISC70\000"
.LASF204:
	.ascii	"SPR_IFOG\000"
.LASF1487:
	.ascii	"MT_MISC72\000"
.LASF1488:
	.ascii	"MT_MISC73\000"
.LASF1489:
	.ascii	"MT_MISC74\000"
.LASF1490:
	.ascii	"MT_MISC75\000"
.LASF1491:
	.ascii	"MT_MISC76\000"
.LASF1250:
	.ascii	"S_GREENTORCH2\000"
.LASF1251:
	.ascii	"S_GREENTORCH3\000"
.LASF1252:
	.ascii	"S_GREENTORCH4\000"
.LASF1936:
	.ascii	"num_vissprite_ptrs\000"
.LASF1091:
	.ascii	"S_COMMKEEN9\000"
.LASF1852:
	.ascii	"edgeslope\000"
.LASF740:
	.ascii	"S_CPOS_PAIN2\000"
.LASF126:
	.ascii	"PU_NEWBLOCK\000"
.LASF963:
	.ascii	"S_BSPI_RUN10\000"
.LASF964:
	.ascii	"S_BSPI_RUN11\000"
.LASF965:
	.ascii	"S_BSPI_RUN12\000"
.LASF1824:
	.ascii	"columns\000"
.LASF1047:
	.ascii	"S_SSWV_RUN1\000"
.LASF1048:
	.ascii	"S_SSWV_RUN2\000"
.LASF1049:
	.ascii	"S_SSWV_RUN3\000"
.LASF1050:
	.ascii	"S_SSWV_RUN4\000"
.LASF1051:
	.ascii	"S_SSWV_RUN5\000"
.LASF1052:
	.ascii	"S_SSWV_RUN6\000"
.LASF1053:
	.ascii	"S_SSWV_RUN7\000"
.LASF1054:
	.ascii	"S_SSWV_RUN8\000"
.LASF1232:
	.ascii	"S_SKULLCOL\000"
.LASF1373:
	.ascii	"MT_FATSO\000"
.LASF776:
	.ascii	"S_TROO_DIE1\000"
.LASF777:
	.ascii	"S_TROO_DIE2\000"
.LASF778:
	.ascii	"S_TROO_DIE3\000"
.LASF779:
	.ascii	"S_TROO_DIE4\000"
.LASF780:
	.ascii	"S_TROO_DIE5\000"
.LASF1823:
	.ascii	"data\000"
.LASF73:
	.ascii	"_current_locale\000"
.LASF1157:
	.ascii	"S_YSKULL\000"
.LASF1158:
	.ascii	"S_YSKULL2\000"
.LASF257:
	.ascii	"SPR_ROCK\000"
.LASF1398:
	.ascii	"MT_ROCKET\000"
.LASF1496:
	.ascii	"MT_MISC81\000"
.LASF1497:
	.ascii	"MT_MISC82\000"
.LASF1498:
	.ascii	"MT_MISC83\000"
.LASF735:
	.ascii	"S_CPOS_ATK1\000"
.LASF736:
	.ascii	"S_CPOS_ATK2\000"
.LASF737:
	.ascii	"S_CPOS_ATK3\000"
.LASF738:
	.ascii	"S_CPOS_ATK4\000"
.LASF1365:
	.ascii	"MT_PLAYER\000"
.LASF1677:
	.ascii	"wad_source_t\000"
.LASF1165:
	.ascii	"S_SOUL5\000"
.LASF269:
	.ascii	"SPR_SHOT\000"
.LASF464:
	.ascii	"S_IFOG2\000"
.LASF465:
	.ascii	"S_IFOG3\000"
.LASF466:
	.ascii	"S_IFOG4\000"
.LASF467:
	.ascii	"S_IFOG5\000"
.LASF1680:
	.ascii	"wadfile_info_t\000"
.LASF198:
	.ascii	"SPR_PLSE\000"
.LASF190:
	.ascii	"SPR_PLSF\000"
.LASF189:
	.ascii	"SPR_PLSG\000"
.LASF860:
	.ascii	"S_BOSS_PAIN2\000"
.LASF560:
	.ascii	"S_VILE_STND\000"
.LASF1973:
	.ascii	"pspriteyscale\000"
.LASF1088:
	.ascii	"S_COMMKEEN6\000"
.LASF1089:
	.ascii	"S_COMMKEEN7\000"
.LASF1090:
	.ascii	"S_COMMKEEN8\000"
.LASF197:
	.ascii	"SPR_PLSS\000"
.LASF939:
	.ascii	"S_SPID_PAIN2\000"
.LASF1753:
	.ascii	"RF_CLOSED\000"
.LASF95:
	.ascii	"_add\000"
.LASF1561:
	.ascii	"dropoffz\000"
.LASF1537:
	.ascii	"mass\000"
.LASF1291:
	.ascii	"S_DOGS_STND\000"
.LASF310:
	.ascii	"SPR_POB1\000"
.LASF311:
	.ascii	"SPR_POB2\000"
.LASF1161:
	.ascii	"S_SOUL\000"
.LASF1171:
	.ascii	"S_PSTR\000"
.LASF1813:
	.ascii	"rpost_t\000"
.LASF1003:
	.ascii	"S_CYBER_ATK1\000"
.LASF1004:
	.ascii	"S_CYBER_ATK2\000"
.LASF1005:
	.ascii	"S_CYBER_ATK3\000"
.LASF1006:
	.ascii	"S_CYBER_ATK4\000"
.LASF1007:
	.ascii	"S_CYBER_ATK5\000"
.LASF1008:
	.ascii	"S_CYBER_ATK6\000"
.LASF1977:
	.ascii	"memcpy\000"
.LASF1198:
	.ascii	"S_BFUG\000"
.LASF236:
	.ascii	"SPR_FCAN\000"
.LASF1754:
	.ascii	"line_t\000"
.LASF681:
	.ascii	"S_FATT_STND\000"
.LASF1118:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1119:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1120:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF402:
	.ascii	"S_BFGUP\000"
.LASF1692:
	.ascii	"source\000"
.LASF1567:
	.ascii	"intflags\000"
.LASF1885:
	.ascii	"flipped\000"
.LASF241:
	.ascii	"SPR_YKEY\000"
.LASF1625:
	.ascii	"m_thing\000"
.LASF789:
	.ascii	"S_TROO_RAISE1\000"
.LASF790:
	.ascii	"S_TROO_RAISE2\000"
.LASF791:
	.ascii	"S_TROO_RAISE3\000"
.LASF792:
	.ascii	"S_TROO_RAISE4\000"
.LASF793:
	.ascii	"S_TROO_RAISE5\000"
.LASF1770:
	.ascii	"subsector_t\000"
.LASF1202:
	.ascii	"S_PLAS\000"
.LASF1906:
	.ascii	"topscreen\000"
.LASF1084:
	.ascii	"S_COMMKEEN2\000"
.LASF1085:
	.ascii	"S_COMMKEEN3\000"
.LASF1086:
	.ascii	"S_COMMKEEN4\000"
.LASF1087:
	.ascii	"S_COMMKEEN5\000"
.LASF468:
	.ascii	"S_PLAY\000"
.LASF1034:
	.ascii	"S_PAIN_DIE2\000"
.LASF1035:
	.ascii	"S_PAIN_DIE3\000"
.LASF1036:
	.ascii	"S_PAIN_DIE4\000"
.LASF1037:
	.ascii	"S_PAIN_DIE5\000"
.LASF1038:
	.ascii	"S_PAIN_DIE6\000"
.LASF1376:
	.ascii	"MT_TROOP\000"
.LASF589:
	.ascii	"S_VILE_PAIN2\000"
.LASF51:
	.ascii	"_lbfsize\000"
.LASF1839:
	.ascii	"RDRAW_FILTER_MAXFILTERS\000"
.LASF1963:
	.ascii	"drawvars\000"
.LASF717:
	.ascii	"S_FATT_RAISE1\000"
.LASF140:
	.ascii	"wp_plasma\000"
.LASF719:
	.ascii	"S_FATT_RAISE3\000"
.LASF720:
	.ascii	"S_FATT_RAISE4\000"
.LASF721:
	.ascii	"S_FATT_RAISE5\000"
.LASF722:
	.ascii	"S_FATT_RAISE6\000"
.LASF723:
	.ascii	"S_FATT_RAISE7\000"
.LASF724:
	.ascii	"S_FATT_RAISE8\000"
.LASF1580:
	.ascii	"lastenemy\000"
.LASF433:
	.ascii	"S_ROCKET\000"
.LASF1397:
	.ascii	"MT_HEADSHOT\000"
.LASF1626:
	.ascii	"m_tprev\000"
.LASF1719:
	.ascii	"linecount\000"
.LASF1714:
	.ascii	"heightsec\000"
.LASF1734:
	.ascii	"sidenum\000"
.LASF986:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1225:
	.ascii	"S_STALAGTITE\000"
.LASF827:
	.ascii	"S_HEAD_PAIN2\000"
.LASF828:
	.ascii	"S_HEAD_PAIN3\000"
.LASF1341:
	.ascii	"S_BSKUL_ATK2\000"
.LASF1760:
	.ascii	"miniseg\000"
.LASF162:
	.ascii	"byte\000"
.LASF375:
	.ascii	"S_CHAINFLASH2\000"
.LASF485:
	.ascii	"S_PLAY_XDIE2\000"
.LASF1672:
	.ascii	"source_pre\000"
.LASF133:
	.ascii	"it_redskull\000"
.LASF1842:
	.ascii	"RDRAW_MASKEDCOLUMNEDGE_SQUARE\000"
.LASF1404:
	.ascii	"MT_TFOG\000"
.LASF536:
	.ascii	"S_SPOS_ATK1\000"
.LASF61:
	.ascii	"_data\000"
.LASF538:
	.ascii	"S_SPOS_ATK3\000"
.LASF473:
	.ascii	"S_PLAY_ATK1\000"
.LASF474:
	.ascii	"S_PLAY_ATK2\000"
.LASF1574:
	.ascii	"pursuecount\000"
.LASF224:
	.ascii	"SPR_APLS\000"
.LASF123:
	.ascii	"PU_LEVEL\000"
.LASF1688:
	.ascii	"index\000"
.LASF1726:
	.ascii	"ceilinglightsec\000"
.LASF1098:
	.ascii	"S_BRAIN_PAIN\000"
.LASF1952:
	.ascii	"viewsin\000"
.LASF1937:
	.ascii	"finesine\000"
.LASF1972:
	.ascii	"pspriteiscale\000"
.LASF1902:
	.ascii	"R_DrawMaskedColumn\000"
.LASF1610:
	.ascii	"refire\000"
.LASF1846:
	.ascii	"texheight\000"
.LASF1650:
	.ascii	"comp_doorlight\000"
.LASF1857:
	.ascii	"short_topleft\000"
.LASF1254:
	.ascii	"S_REDTORCH2\000"
.LASF65:
	.ascii	"_reent\000"
.LASF1256:
	.ascii	"S_REDTORCH4\000"
.LASF763:
	.ascii	"S_TROO_RUN1\000"
.LASF764:
	.ascii	"S_TROO_RUN2\000"
.LASF765:
	.ascii	"S_TROO_RUN3\000"
.LASF766:
	.ascii	"S_TROO_RUN4\000"
.LASF767:
	.ascii	"S_TROO_RUN5\000"
.LASF768:
	.ascii	"S_TROO_RUN6\000"
.LASF769:
	.ascii	"S_TROO_RUN7\000"
.LASF770:
	.ascii	"S_TROO_RUN8\000"
.LASF215:
	.ascii	"SPR_CPOS\000"
.LASF678:
	.ascii	"S_FATSHOTX1\000"
.LASF679:
	.ascii	"S_FATSHOTX2\000"
.LASF680:
	.ascii	"S_FATSHOTX3\000"
.LASF758:
	.ascii	"S_CPOS_RAISE5\000"
.LASF759:
	.ascii	"S_CPOS_RAISE6\000"
.LASF86:
	.ascii	"__sf\000"
.LASF135:
	.ascii	"wp_fist\000"
.LASF1866:
	.ascii	"filterpatch\000"
.LASF46:
	.ascii	"_base\000"
.LASF245:
	.ascii	"SPR_STIM\000"
.LASF1246:
	.ascii	"S_BLUETORCH2\000"
.LASF1774:
	.ascii	"scale1\000"
.LASF1775:
	.ascii	"scale2\000"
.LASF347:
	.ascii	"S_SGUN8\000"
.LASF1248:
	.ascii	"S_BLUETORCH4\000"
.LASF1927:
	.ascii	"R_DrawPlayerSprites\000"
.LASF104:
	.ascii	"_mbtowc_state\000"
.LASF1802:
	.ascii	"spriteframes\000"
.LASF794:
	.ascii	"S_SARG_STND\000"
.LASF1019:
	.ascii	"S_CYBER_DIE10\000"
.LASF195:
	.ascii	"SPR_BAL1\000"
.LASF196:
	.ascii	"SPR_BAL2\000"
.LASF218:
	.ascii	"SPR_BAL7\000"
.LASF1566:
	.ascii	"info\000"
.LASF261:
	.ascii	"SPR_SHEL\000"
.LASF1508:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1884:
	.ascii	"rotation\000"
.LASF1560:
	.ascii	"ceilingz\000"
.LASF1848:
	.ascii	"prevsource\000"
.LASF1856:
	.ascii	"byte_topleft\000"
.LASF670:
	.ascii	"S_SKEL_RAISE1\000"
.LASF183:
	.ascii	"SPR_SHT2\000"
.LASF1511:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF324:
	.ascii	"S_PUNCH1\000"
.LASF325:
	.ascii	"S_PUNCH2\000"
.LASF326:
	.ascii	"S_PUNCH3\000"
.LASF327:
	.ascii	"S_PUNCH4\000"
.LASF328:
	.ascii	"S_PUNCH5\000"
.LASF1750:
	.ascii	"RF_MID_TILE\000"
.LASF687:
	.ascii	"S_FATT_RUN5\000"
.LASF323:
	.ascii	"S_PUNCHUP\000"
.LASF27:
	.ascii	"__tm\000"
.LASF940:
	.ascii	"S_SPID_DIE1\000"
.LASF691:
	.ascii	"S_FATT_RUN9\000"
.LASF942:
	.ascii	"S_SPID_DIE3\000"
.LASF943:
	.ascii	"S_SPID_DIE4\000"
.LASF182:
	.ascii	"SPR_SHTF\000"
.LASF178:
	.ascii	"SPR_SHTG\000"
.LASF462:
	.ascii	"S_IFOG01\000"
.LASF463:
	.ascii	"S_IFOG02\000"
.LASF948:
	.ascii	"S_SPID_DIE9\000"
.LASF1962:
	.ascii	"ds_p\000"
.LASF1342:
	.ascii	"S_BSKUL_ATK3\000"
.LASF1838:
	.ascii	"RDRAW_FILTER_ROUNDED\000"
.LASF1190:
	.ascii	"S_AMMO\000"
.LASF1674:
	.ascii	"source_pwad\000"
.LASF1686:
	.ascii	"ns_prboom\000"
.LASF151:
	.ascii	"NUMAMMO\000"
.LASF1969:
	.ascii	"spryscale\000"
.LASF1946:
	.ascii	"viewx\000"
.LASF1901:
	.ascii	"R_InitSprites\000"
.LASF1021:
	.ascii	"S_PAIN_RUN1\000"
.LASF1022:
	.ascii	"S_PAIN_RUN2\000"
.LASF1023:
	.ascii	"S_PAIN_RUN3\000"
.LASF1024:
	.ascii	"S_PAIN_RUN4\000"
.LASF35:
	.ascii	"__tm_yday\000"
.LASF305:
	.ascii	"SPR_HDB2\000"
.LASF306:
	.ascii	"SPR_HDB3\000"
.LASF307:
	.ascii	"SPR_HDB4\000"
.LASF308:
	.ascii	"SPR_HDB5\000"
.LASF309:
	.ascii	"SPR_HDB6\000"
.LASF1926:
	.ascii	"avis\000"
.LASF1366:
	.ascii	"MT_POSSESSED\000"
.LASF356:
	.ascii	"S_DSGUN3\000"
.LASF357:
	.ascii	"S_DSGUN4\000"
.LASF358:
	.ascii	"S_DSGUN5\000"
.LASF1549:
	.ascii	"type\000"
.LASF376:
	.ascii	"S_MISSILE\000"
.LASF362:
	.ascii	"S_DSGUN9\000"
.LASF1204:
	.ascii	"S_SHOT2\000"
.LASF1794:
	.ascii	"patch\000"
.LASF1271:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1569:
	.ascii	"movedir\000"
.LASF1827:
	.ascii	"RDC_PIPELINE_STANDARD\000"
.LASF1961:
	.ascii	"drawsegs\000"
.LASF748:
	.ascii	"S_CPOS_XDIE1\000"
.LASF1649:
	.ascii	"comp_blazing\000"
.LASF96:
	.ascii	"_unused_rand\000"
.LASF235:
	.ascii	"SPR_BEXP\000"
.LASF1853:
	.ascii	"drawingmasked\000"
.LASF167:
	.ascii	"actionf_t\000"
.LASF265:
	.ascii	"SPR_MGUN\000"
.LASF1378:
	.ascii	"MT_SHADOWS\000"
.LASF651:
	.ascii	"S_SKEL_RUN10\000"
.LASF652:
	.ascii	"S_SKEL_RUN11\000"
.LASF653:
	.ascii	"S_SKEL_RUN12\000"
.LASF319:
	.ascii	"S_NULL\000"
.LASF121:
	.ascii	"PU_SOUND\000"
.LASF861:
	.ascii	"S_BOSS_DIE1\000"
.LASF862:
	.ascii	"S_BOSS_DIE2\000"
.LASF863:
	.ascii	"S_BOSS_DIE3\000"
.LASF864:
	.ascii	"S_BOSS_DIE4\000"
.LASF865:
	.ascii	"S_BOSS_DIE5\000"
.LASF866:
	.ascii	"S_BOSS_DIE6\000"
.LASF867:
	.ascii	"S_BOSS_DIE7\000"
.LASF1031:
	.ascii	"S_PAIN_PAIN\000"
.LASF400:
	.ascii	"S_BFG\000"
.LASF77:
	.ascii	"_result_k\000"
.LASF69:
	.ascii	"_stderr\000"
.LASF76:
	.ascii	"_result\000"
.LASF1765:
	.ascii	"bottomtexture\000"
.LASF39:
	.ascii	"_dso_handle\000"
.LASF1730:
	.ascii	"special\000"
.LASF1046:
	.ascii	"S_SSWV_STND2\000"
.LASF266:
	.ascii	"SPR_CSAW\000"
.LASF1181:
	.ascii	"S_PMAP\000"
.LASF1627:
	.ascii	"m_tnext\000"
.LASF34:
	.ascii	"__tm_wday\000"
.LASF1187:
	.ascii	"S_PVIS\000"
.LASF36:
	.ascii	"__tm_isdst\000"
.LASF401:
	.ascii	"S_BFGDOWN\000"
.LASF1390:
	.ascii	"MT_BOSSBRAIN\000"
.LASF212:
	.ascii	"SPR_SKEL\000"
.LASF1908:
	.ascii	"basetexturemid\000"
.LASF396:
	.ascii	"S_PLASMA1\000"
.LASF397:
	.ascii	"S_PLASMA2\000"
.LASF1918:
	.ascii	"sprframe\000"
.LASF1261:
	.ascii	"S_GTORCHSHRT\000"
.LASF1519:
	.ascii	"doomednum\000"
.LASF1590:
	.ascii	"firstline\000"
.LASF1195:
	.ascii	"S_SHEL\000"
.LASF952:
	.ascii	"S_BSPI_STND2\000"
.LASF1665:
	.ascii	"comp_sound\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF68:
	.ascii	"_stdout\000"
.LASF210:
	.ascii	"SPR_FATB\000"
.LASF317:
	.ascii	"NUMSPRITES\000"
.LASF1292:
	.ascii	"S_DOGS_STND2\000"
.LASF1940:
	.ascii	"lumpinfo\000"
.LASF1996:
	.ascii	"V_GetMode\000"
.LASF435:
	.ascii	"S_BFGSHOT2\000"
.LASF214:
	.ascii	"SPR_FATT\000"
.LASF1162:
	.ascii	"S_SOUL2\000"
.LASF1163:
	.ascii	"S_SOUL3\000"
.LASF1164:
	.ascii	"S_SOUL4\000"
.LASF315:
	.ascii	"SPR_TNT1\000"
.LASF1166:
	.ascii	"S_SOUL6\000"
.LASF111:
	.ascii	"_mbsrtowcs_state\000"
.LASF922:
	.ascii	"S_SPID_RUN1\000"
.LASF923:
	.ascii	"S_SPID_RUN2\000"
.LASF25:
	.ascii	"_wds\000"
.LASF925:
	.ascii	"S_SPID_RUN4\000"
.LASF926:
	.ascii	"S_SPID_RUN5\000"
.LASF927:
	.ascii	"S_SPID_RUN6\000"
.LASF928:
	.ascii	"S_SPID_RUN7\000"
.LASF929:
	.ascii	"S_SPID_RUN8\000"
.LASF930:
	.ascii	"S_SPID_RUN9\000"
.LASF1129:
	.ascii	"S_BEXP3\000"
.LASF1889:
	.ascii	"R_InstallSpriteLump\000"
.LASF1130:
	.ascii	"S_BEXP4\000"
.LASF1311:
	.ascii	"S_DOGS_DIE6\000"
.LASF1218:
	.ascii	"S_DEADSTICK\000"
.LASF1619:
	.ascii	"fixedcolormap\000"
.LASF1722:
	.ascii	"floor_yoffs\000"
.LASF1604:
	.ascii	"weaponowned\000"
.LASF1392:
	.ascii	"MT_BOSSTARGET\000"
.LASF1407:
	.ascii	"MT_EXTRABFG\000"
.LASF508:
	.ascii	"S_POSS_DIE1\000"
.LASF509:
	.ascii	"S_POSS_DIE2\000"
.LASF510:
	.ascii	"S_POSS_DIE3\000"
.LASF511:
	.ascii	"S_POSS_DIE4\000"
.LASF512:
	.ascii	"S_POSS_DIE5\000"
.LASF338:
	.ascii	"S_SGUNDOWN\000"
.LASF47:
	.ascii	"_size\000"
.LASF1778:
	.ascii	"bsilheight\000"
.LASF185:
	.ascii	"SPR_CHGF\000"
.LASF184:
	.ascii	"SPR_CHGG\000"
.LASF989:
	.ascii	"S_ARACH_PLEX2\000"
.LASF990:
	.ascii	"S_ARACH_PLEX3\000"
.LASF991:
	.ascii	"S_ARACH_PLEX4\000"
.LASF992:
	.ascii	"S_ARACH_PLEX5\000"
.LASF733:
	.ascii	"S_CPOS_RUN7\000"
.LASF1572:
	.ascii	"target\000"
.LASF295:
	.ascii	"SPR_CEYE\000"
.LASF1777:
	.ascii	"silhouette\000"
.LASF1321:
	.ascii	"S_PLS1BALL\000"
.LASF1039:
	.ascii	"S_PAIN_RAISE1\000"
.LASF1040:
	.ascii	"S_PAIN_RAISE2\000"
.LASF1041:
	.ascii	"S_PAIN_RAISE3\000"
.LASF1043:
	.ascii	"S_PAIN_RAISE5\000"
.LASF677:
	.ascii	"S_FATSHOT2\000"
.LASF1678:
	.ascii	"name\000"
.LASF1767:
	.ascii	"sideSeg\000"
.LASF54:
	.ascii	"_write\000"
.LASF252:
	.ascii	"SPR_SUIT\000"
.LASF904:
	.ascii	"S_SKULL_STND\000"
.LASF1698:
	.ascii	"no_bottomtextures\000"
.LASF493:
	.ascii	"S_POSS_STND\000"
.LASF1781:
	.ascii	"rw_distance\000"
.LASF938:
	.ascii	"S_SPID_PAIN\000"
.LASF1517:
	.ascii	"NUMMOBJTYPES\000"
.LASF1644:
	.ascii	"comp_telefrag\000"
.LASF234:
	.ascii	"SPR_BAR1\000"
.LASF1841:
	.ascii	"sloped_edge_type_e\000"
.LASF924:
	.ascii	"S_SPID_RUN3\000"
.LASF351:
	.ascii	"S_DSGUN\000"
.LASF1230:
	.ascii	"S_CANDLESTIK\000"
.LASF157:
	.ascii	"pw_allmap\000"
.LASF1849:
	.ascii	"nextsource\000"
.LASF1355:
	.ascii	"NUMSTATES\000"
.LASF416:
	.ascii	"S_TBALL1\000"
.LASF369:
	.ascii	"S_CHAINDOWN\000"
.LASF630:
	.ascii	"S_SMOKE1\000"
.LASF631:
	.ascii	"S_SMOKE2\000"
.LASF632:
	.ascii	"S_SMOKE3\000"
.LASF633:
	.ascii	"S_SMOKE4\000"
.LASF634:
	.ascii	"S_SMOKE5\000"
.LASF853:
	.ascii	"S_BOSS_RUN6\000"
.LASF854:
	.ascii	"S_BOSS_RUN7\000"
.LASF855:
	.ascii	"S_BOSS_RUN8\000"
.LASF217:
	.ascii	"SPR_HEAD\000"
.LASF1989:
	.ascii	"Z_Realloc\000"
.LASF1557:
	.ascii	"bprev\000"
.LASF1830:
	.ascii	"RDC_PIPELINE_FUZZ\000"
.LASF278:
	.ascii	"SPR_POL1\000"
.LASF274:
	.ascii	"SPR_POL2\000"
.LASF277:
	.ascii	"SPR_POL3\000"
.LASF276:
	.ascii	"SPR_POL4\000"
.LASF275:
	.ascii	"SPR_POL5\000"
.LASF279:
	.ascii	"SPR_POL6\000"
.LASF1125:
	.ascii	"S_BAR1\000"
.LASF304:
	.ascii	"SPR_HDB1\000"
.LASF1804:
	.ascii	"RDRAW_EDGESLOPE_TOP_UP\000"
.LASF1408:
	.ascii	"MT_MISC0\000"
.LASF1211:
	.ascii	"S_DEADTORSO\000"
.LASF1981:
	.ascii	"Z_Free\000"
.LASF353:
	.ascii	"S_DSGUNUP\000"
.LASF33:
	.ascii	"__tm_year\000"
.LASF1520:
	.ascii	"spawnstate\000"
.LASF1740:
	.ascii	"tranlump\000"
.LASF762:
	.ascii	"S_TROO_STND2\000"
.LASF1903:
	.ascii	"column\000"
.LASF1282:
	.ascii	"S_TECH2LAMP\000"
.LASF1552:
	.ascii	"mobj_s\000"
.LASF1845:
	.ascii	"iscale\000"
.LASF94:
	.ascii	"_mult\000"
.LASF1793:
	.ascii	"texturemid\000"
.LASF1369:
	.ascii	"MT_FIRE\000"
.LASF1914:
	.ascii	"lowscale\000"
.LASF1798:
	.ascii	"rotate\000"
.LASF1361:
	.ascii	"nextstate\000"
.LASF1452:
	.ascii	"MT_MISC37\000"
.LASF1715:
	.ascii	"bottommap\000"
.LASF859:
	.ascii	"S_BOSS_PAIN\000"
.LASF1912:
	.ascii	"clipbot\000"
.LASF228:
	.ascii	"SPR_SSWV\000"
.LASF1993:
	.ascii	"c:/devl/prboom3ds/src/r_things.c\000"
.LASF109:
	.ascii	"_mbrlen_state\000"
.LASF421:
	.ascii	"S_RBALL1\000"
.LASF422:
	.ascii	"S_RBALL2\000"
.LASF1226:
	.ascii	"S_TALLGRNCOL\000"
.LASF1970:
	.ascii	"sprtopscreen\000"
.LASF1577:
	.ascii	"lastlook\000"
.LASF1916:
	.ascii	"xscale\000"
.LASF1642:
	.ascii	"playerstate_t\000"
.LASF1215:
	.ascii	"S_HEADONASTICK\000"
.LASF1575:
	.ascii	"gear\000"
.LASF1860:
	.ascii	"short_pitch\000"
.LASF495:
	.ascii	"S_POSS_RUN1\000"
.LASF437:
	.ascii	"S_BFGLAND2\000"
.LASF438:
	.ascii	"S_BFGLAND3\000"
.LASF439:
	.ascii	"S_BFGLAND4\000"
.LASF440:
	.ascii	"S_BFGLAND5\000"
.LASF441:
	.ascii	"S_BFGLAND6\000"
.LASF501:
	.ascii	"S_POSS_RUN7\000"
.LASF502:
	.ascii	"S_POSS_RUN8\000"
.LASF67:
	.ascii	"_stdin\000"
.LASF1819:
	.ascii	"widthmask\000"
.LASF1991:
	.ascii	"R_ColourMap\000"
.LASF484:
	.ascii	"S_PLAY_XDIE1\000"
.LASF116:
	.ascii	"_nmalloc\000"
.LASF486:
	.ascii	"S_PLAY_XDIE3\000"
.LASF487:
	.ascii	"S_PLAY_XDIE4\000"
.LASF488:
	.ascii	"S_PLAY_XDIE5\000"
.LASF489:
	.ascii	"S_PLAY_XDIE6\000"
.LASF490:
	.ascii	"S_PLAY_XDIE7\000"
.LASF491:
	.ascii	"S_PLAY_XDIE8\000"
.LASF492:
	.ascii	"S_PLAY_XDIE9\000"
.LASF1933:
	.ascii	"vissprite_ptrs\000"
.LASF1817:
	.ascii	"rcolumn_t\000"
.LASF890:
	.ascii	"S_BOS2_DIE1\000"
.LASF891:
	.ascii	"S_BOS2_DIE2\000"
.LASF892:
	.ascii	"S_BOS2_DIE3\000"
.LASF893:
	.ascii	"S_BOS2_DIE4\000"
.LASF894:
	.ascii	"S_BOS2_DIE5\000"
.LASF895:
	.ascii	"S_BOS2_DIE6\000"
.LASF896:
	.ascii	"S_BOS2_DIE7\000"
.LASF1540:
	.ascii	"flags\000"
.LASF816:
	.ascii	"S_SARG_RAISE2\000"
.LASF460:
	.ascii	"S_TFOG10\000"
.LASF818:
	.ascii	"S_SARG_RAISE4\000"
.LASF513:
	.ascii	"S_POSS_XDIE1\000"
.LASF514:
	.ascii	"S_POSS_XDIE2\000"
.LASF515:
	.ascii	"S_POSS_XDIE3\000"
.LASF516:
	.ascii	"S_POSS_XDIE4\000"
.LASF517:
	.ascii	"S_POSS_XDIE5\000"
.LASF518:
	.ascii	"S_POSS_XDIE6\000"
.LASF519:
	.ascii	"S_POSS_XDIE7\000"
.LASF147:
	.ascii	"am_clip\000"
.LASF521:
	.ascii	"S_POSS_XDIE9\000"
.LASF1214:
	.ascii	"S_GIBS\000"
.LASF829:
	.ascii	"S_HEAD_DIE1\000"
.LASF830:
	.ascii	"S_HEAD_DIE2\000"
.LASF831:
	.ascii	"S_HEAD_DIE3\000"
.LASF832:
	.ascii	"S_HEAD_DIE4\000"
.LASF833:
	.ascii	"S_HEAD_DIE5\000"
.LASF834:
	.ascii	"S_HEAD_DIE6\000"
.LASF682:
	.ascii	"S_FATT_STND2\000"
.LASF1205:
	.ascii	"S_COLU\000"
.LASF332:
	.ascii	"S_PISTOL1\000"
.LASF333:
	.ascii	"S_PISTOL2\000"
.LASF334:
	.ascii	"S_PISTOL3\000"
.LASF335:
	.ascii	"S_PISTOL4\000"
.LASF671:
	.ascii	"S_SKEL_RAISE2\000"
.LASF672:
	.ascii	"S_SKEL_RAISE3\000"
.LASF118:
	.ascii	"FILE\000"
.LASF674:
	.ascii	"S_SKEL_RAISE5\000"
.LASF675:
	.ascii	"S_SKEL_RAISE6\000"
.LASF1234:
	.ascii	"S_BIGTREE\000"
.LASF1747:
	.ascii	"ST_NEGATIVE\000"
.LASF1144:
	.ascii	"S_BON2C\000"
.LASF1145:
	.ascii	"S_BON2D\000"
.LASF450:
	.ascii	"S_TFOG01\000"
.LASF451:
	.ascii	"S_TFOG02\000"
.LASF267:
	.ascii	"SPR_LAUN\000"
.LASF506:
	.ascii	"S_POSS_PAIN\000"
.LASF841:
	.ascii	"S_BRBALL1\000"
.LASF842:
	.ascii	"S_BRBALL2\000"
.LASF1372:
	.ascii	"MT_SMOKE\000"
.LASF1386:
	.ascii	"MT_CYBORG\000"
.LASF1538:
	.ascii	"damage\000"
.LASF546:
	.ascii	"S_SPOS_XDIE1\000"
.LASF11:
	.ascii	"_off_t\000"
.LASF548:
	.ascii	"S_SPOS_XDIE3\000"
.LASF549:
	.ascii	"S_SPOS_XDIE4\000"
.LASF550:
	.ascii	"S_SPOS_XDIE5\000"
.LASF551:
	.ascii	"S_SPOS_XDIE6\000"
.LASF552:
	.ascii	"S_SPOS_XDIE7\000"
.LASF553:
	.ascii	"S_SPOS_XDIE8\000"
.LASF554:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1697:
	.ascii	"no_toptextures\000"
.LASF9:
	.ascii	"size_t\000"
.LASF99:
	.ascii	"_localtime_buf\000"
.LASF1631:
	.ascii	"mobj_t\000"
.LASF1733:
	.ascii	"iLineID\000"
.LASF1731:
	.ascii	"oldspecial\000"
.LASF1147:
	.ascii	"S_BKEY\000"
.LASF17:
	.ascii	"__count\000"
.LASF155:
	.ascii	"pw_invisibility\000"
.LASF1910:
	.ascii	"msort\000"
.LASF1516:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF1739:
	.ascii	"specialdata\000"
.LASF232:
	.ascii	"SPR_ARM1\000"
.LASF233:
	.ascii	"SPR_ARM2\000"
.LASF1368:
	.ascii	"MT_VILE\000"
.LASF131:
	.ascii	"it_blueskull\000"
.LASF1706:
	.ascii	"soundorg\000"
.LASF1509:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF394:
	.ascii	"S_PLASMADOWN\000"
.LASF1897:
	.ascii	"namelist\000"
.LASF706:
	.ascii	"S_FATT_PAIN2\000"
.LASF1104:
	.ascii	"S_BRAINEYESEE\000"
.LASF1304:
	.ascii	"S_DOGS_PAIN\000"
.LASF641:
	.ascii	"S_SKEL_STND2\000"
.LASF1335:
	.ascii	"S_BSKUL_STND\000"
.LASF994:
	.ascii	"S_CYBER_STND2\000"
.LASF1364:
	.ascii	"state_t\000"
.LASF838:
	.ascii	"S_HEAD_RAISE4\000"
.LASF1064:
	.ascii	"S_SSWV_DIE2\000"
.LASF1521:
	.ascii	"spawnhealth\000"
.LASF520:
	.ascii	"S_POSS_XDIE8\000"
.LASF1288:
	.ascii	"S_DETONATE\000"
.LASF1656:
	.ascii	"comp_pursuit\000"
.LASF1194:
	.ascii	"S_CELP\000"
.LASF1236:
	.ascii	"S_EVILEYE\000"
.LASF1262:
	.ascii	"S_GTORCHSHRT2\000"
.LASF81:
	.ascii	"_cvtbuf\000"
.LASF1264:
	.ascii	"S_GTORCHSHRT4\000"
.LASF1594:
	.ascii	"viewheight\000"
.LASF1556:
	.ascii	"bnext\000"
.LASF1785:
	.ascii	"maskedtexturecol\000"
.LASF1803:
	.ascii	"spritedef_t\000"
.LASF1810:
	.ascii	"edgeslope_t\000"
.LASF695:
	.ascii	"S_FATT_ATK1\000"
.LASF226:
	.ascii	"SPR_CYBR\000"
.LASF696:
	.ascii	"S_FATT_ATK2\000"
.LASF599:
	.ascii	"S_VILE_DIE10\000"
.LASF187:
	.ascii	"SPR_MISF\000"
.LASF186:
	.ascii	"SPR_MISG\000"
.LASF1890:
	.ascii	"R_DrawVisSprite\000"
.LASF199:
	.ascii	"SPR_MISL\000"
.LASF1153:
	.ascii	"S_BSKULL\000"
.LASF230:
	.ascii	"SPR_BBRN\000"
.LASF574:
	.ascii	"S_VILE_ATK1\000"
.LASF575:
	.ascii	"S_VILE_ATK2\000"
.LASF576:
	.ascii	"S_VILE_ATK3\000"
.LASF577:
	.ascii	"S_VILE_ATK4\000"
.LASF578:
	.ascii	"S_VILE_ATK5\000"
.LASF579:
	.ascii	"S_VILE_ATK6\000"
.LASF580:
	.ascii	"S_VILE_ATK7\000"
.LASF321:
	.ascii	"S_PUNCH\000"
.LASF582:
	.ascii	"S_VILE_ATK9\000"
.LASF301:
	.ascii	"SPR_SMBT\000"
.LASF1829:
	.ascii	"RDC_PIPELINE_TRANSLATED\000"
.LASF1571:
	.ascii	"strafecount\000"
.LASF1301:
	.ascii	"S_DOGS_ATK1\000"
.LASF1302:
	.ascii	"S_DOGS_ATK2\000"
.LASF1303:
	.ascii	"S_DOGS_ATK3\000"
.LASF877:
	.ascii	"S_BOS2_RUN1\000"
.LASF878:
	.ascii	"S_BOS2_RUN2\000"
.LASF879:
	.ascii	"S_BOS2_RUN3\000"
.LASF880:
	.ascii	"S_BOS2_RUN4\000"
.LASF881:
	.ascii	"S_BOS2_RUN5\000"
.LASF882:
	.ascii	"S_BOS2_RUN6\000"
.LASF15:
	.ascii	"__wchb\000"
.LASF884:
	.ascii	"S_BOS2_RUN8\000"
.LASF110:
	.ascii	"_mbrtowc_state\000"
.LASF1729:
	.ascii	"lightlevel\000"
.LASF30:
	.ascii	"__tm_hour\000"
.LASF293:
	.ascii	"SPR_TRE2\000"
.LASF1263:
	.ascii	"S_GTORCHSHRT3\000"
.LASF951:
	.ascii	"S_BSPI_STND\000"
.LASF1529:
	.ascii	"meleestate\000"
.LASF1605:
	.ascii	"ammo\000"
.LASF741:
	.ascii	"S_CPOS_DIE1\000"
.LASF300:
	.ascii	"SPR_TRED\000"
.LASF193:
	.ascii	"SPR_BLUD\000"
.LASF13:
	.ascii	"wint_t\000"
.LASF698:
	.ascii	"S_FATT_ATK4\000"
.LASF699:
	.ascii	"S_FATT_ATK5\000"
.LASF700:
	.ascii	"S_FATT_ATK6\000"
.LASF701:
	.ascii	"S_FATT_ATK7\000"
.LASF702:
	.ascii	"S_FATT_ATK8\000"
.LASF703:
	.ascii	"S_FATT_ATK9\000"
.LASF82:
	.ascii	"_new\000"
.LASF1512:
	.ascii	"MT_STEALTHIMP\000"
.LASF203:
	.ascii	"SPR_TFOG\000"
.LASF1344:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1345:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF409:
	.ascii	"S_BLOOD1\000"
.LASF410:
	.ascii	"S_BLOOD2\000"
.LASF411:
	.ascii	"S_BLOOD3\000"
.LASF90:
	.ascii	"_niobs\000"
.LASF1363:
	.ascii	"misc2\000"
.LASF1505:
	.ascii	"MT_STEALTHBABY\000"
.LASF1634:
	.ascii	"angleturn\000"
.LASF676:
	.ascii	"S_FATSHOT1\000"
.LASF1201:
	.ascii	"S_LAUN\000"
.LASF1881:
	.ascii	"VID_MODEGL\000"
.LASF1287:
	.ascii	"S_GRENADE\000"
.LASF1995:
	.ascii	"R_ClearSprites\000"
.LASF461:
	.ascii	"S_IFOG\000"
.LASF1847:
	.ascii	"texu\000"
.LASF206:
	.ascii	"SPR_POSS\000"
.LASF66:
	.ascii	"_errno\000"
.LASF1010:
	.ascii	"S_CYBER_DIE1\000"
.LASF1011:
	.ascii	"S_CYBER_DIE2\000"
.LASF1012:
	.ascii	"S_CYBER_DIE3\000"
.LASF1013:
	.ascii	"S_CYBER_DIE4\000"
.LASF31:
	.ascii	"__tm_mday\000"
.LASF1015:
	.ascii	"S_CYBER_DIE6\000"
.LASF1016:
	.ascii	"S_CYBER_DIE7\000"
.LASF888:
	.ascii	"S_BOS2_PAIN\000"
.LASF1018:
	.ascii	"S_CYBER_DIE9\000"
.LASF1578:
	.ascii	"spawnpoint\000"
.LASF163:
	.ascii	"int_64_t\000"
.LASF1357:
	.ascii	"sprite\000"
.LASF1623:
	.ascii	"msecnode_s\000"
.LASF1479:
	.ascii	"MT_MISC64\000"
.LASF38:
	.ascii	"_fnargs\000"
.LASF1435:
	.ascii	"MT_MISC23\000"
.LASF1713:
	.ascii	"nextsec\000"
.LASF1682:
	.ascii	"ns_sprites\000"
.LASF1712:
	.ascii	"prevsec\000"
.LASF1231:
	.ascii	"S_CANDELABRA\000"
.LASF571:
	.ascii	"S_VILE_RUN10\000"
.LASF572:
	.ascii	"S_VILE_RUN11\000"
.LASF573:
	.ascii	"S_VILE_RUN12\000"
.LASF1081:
	.ascii	"S_SSWV_RAISE5\000"
.LASF340:
	.ascii	"S_SGUN1\000"
.LASF341:
	.ascii	"S_SGUN2\000"
.LASF342:
	.ascii	"S_SGUN3\000"
.LASF343:
	.ascii	"S_SGUN4\000"
.LASF344:
	.ascii	"S_SGUN5\000"
.LASF345:
	.ascii	"S_SGUN6\000"
.LASF346:
	.ascii	"S_SGUN7\000"
.LASF164:
	.ascii	"uint_64_t\000"
.LASF348:
	.ascii	"S_SGUN9\000"
.LASF316:
	.ascii	"SPR_DOGS\000"
.LASF337:
	.ascii	"S_SGUN\000"
.LASF1227:
	.ascii	"S_SHRTGRNCOL\000"
.LASF1955:
	.ascii	"centeryfrac\000"
.LASF912:
	.ascii	"S_SKULL_PAIN\000"
.LASF1393:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1833:
	.ascii	"column_pipeline_e\000"
.LASF1528:
	.ascii	"painsound\000"
.LASF1964:
	.ascii	"translationtables\000"
.LASF636:
	.ascii	"S_TRACER2\000"
.LASF22:
	.ascii	"_next\000"
.LASF1235:
	.ascii	"S_TECHPILLAR\000"
.LASF640:
	.ascii	"S_SKEL_STND\000"
.LASF1925:
	.ascii	"R_DrawPSprite\000"
.LASF795:
	.ascii	"S_SARG_STND2\000"
.LASF107:
	.ascii	"_signal_buf\000"
.LASF541:
	.ascii	"S_SPOS_DIE1\000"
.LASF542:
	.ascii	"S_SPOS_DIE2\000"
.LASF543:
	.ascii	"S_SPOS_DIE3\000"
.LASF544:
	.ascii	"S_SPOS_DIE4\000"
.LASF545:
	.ascii	"S_SPOS_DIE5\000"
.LASF1641:
	.ascii	"PST_REBORN\000"
.LASF52:
	.ascii	"_cookie\000"
.LASF1270:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF1354:
	.ascii	"S_MUSHROOM\000"
.LASF1769:
	.ascii	"seg_t\000"
.LASF804:
	.ascii	"S_SARG_ATK1\000"
.LASF805:
	.ascii	"S_SARG_ATK2\000"
.LASF806:
	.ascii	"S_SARG_ATK3\000"
.LASF395:
	.ascii	"S_PLASMAUP\000"
.LASF1768:
	.ascii	"float\000"
.LASF1359:
	.ascii	"tics\000"
.LASF1898:
	.ascii	"numentries\000"
.LASF1151:
	.ascii	"S_YKEY\000"
.LASF1776:
	.ascii	"scalestep\000"
.LASF1534:
	.ascii	"speed\000"
.LASF1735:
	.ascii	"bbox\000"
.LASF364:
	.ascii	"S_DSNR1\000"
.LASF1033:
	.ascii	"S_PAIN_DIE1\000"
.LASF1701:
	.ascii	"nexttag\000"
.LASF1808:
	.ascii	"RDRAW_EDGESLOPE_TOP_MASK\000"
.LASF563:
	.ascii	"S_VILE_RUN2\000"
.LASF1279:
	.ascii	"S_TECHLAMP2\000"
.LASF1281:
	.ascii	"S_TECHLAMP4\000"
.LASF727:
	.ascii	"S_CPOS_RUN1\000"
.LASF728:
	.ascii	"S_CPOS_RUN2\000"
.LASF729:
	.ascii	"S_CPOS_RUN3\000"
.LASF730:
	.ascii	"S_CPOS_RUN4\000"
.LASF731:
	.ascii	"S_CPOS_RUN5\000"
.LASF732:
	.ascii	"S_CPOS_RUN6\000"
.LASF263:
	.ascii	"SPR_BPAK\000"
.LASF734:
	.ascii	"S_CPOS_RUN8\000"
.LASF1131:
	.ascii	"S_BEXP5\000"
.LASF1684:
	.ascii	"ns_colormaps\000"
.LASF1551:
	.ascii	"mapthing_t\000"
.LASF496:
	.ascii	"S_POSS_RUN2\000"
.LASF119:
	.ascii	"PU_FREE\000"
.LASF498:
	.ascii	"S_POSS_RUN4\000"
.LASF815:
	.ascii	"S_SARG_RAISE1\000"
.LASF499:
	.ascii	"S_POSS_RUN5\000"
.LASF817:
	.ascii	"S_SARG_RAISE3\000"
.LASF500:
	.ascii	"S_POSS_RUN6\000"
.LASF819:
	.ascii	"S_SARG_RAISE5\000"
.LASF820:
	.ascii	"S_SARG_RAISE6\000"
.LASF1868:
	.ascii	"patch_edges\000"
.LASF1468:
	.ascii	"MT_MISC53\000"
.LASF302:
	.ascii	"SPR_SMGT\000"
.LASF28:
	.ascii	"__tm_sec\000"
.LASF443:
	.ascii	"S_BFGEXP2\000"
.LASF444:
	.ascii	"S_BFGEXP3\000"
.LASF445:
	.ascii	"S_BFGEXP4\000"
.LASF374:
	.ascii	"S_CHAINFLASH1\000"
.LASF37:
	.ascii	"_on_exit_args\000"
.LASF330:
	.ascii	"S_PISTOLDOWN\000"
.LASF1751:
	.ascii	"RF_BOT_TILE\000"
.LASF995:
	.ascii	"S_CYBER_RUN1\000"
.LASF996:
	.ascii	"S_CYBER_RUN2\000"
.LASF997:
	.ascii	"S_CYBER_RUN3\000"
.LASF998:
	.ascii	"S_CYBER_RUN4\000"
.LASF999:
	.ascii	"S_CYBER_RUN5\000"
.LASF1000:
	.ascii	"S_CYBER_RUN6\000"
.LASF1001:
	.ascii	"S_CYBER_RUN7\000"
.LASF1002:
	.ascii	"S_CYBER_RUN8\000"
.LASF1523:
	.ascii	"seesound\000"
.LASF1799:
	.ascii	"lump\000"
.LASF1182:
	.ascii	"S_PMAP2\000"
.LASF1183:
	.ascii	"S_PMAP3\000"
.LASF1184:
	.ascii	"S_PMAP4\000"
.LASF1185:
	.ascii	"S_PMAP5\000"
.LASF1186:
	.ascii	"S_PMAP6\000"
.LASF1891:
	.ascii	"texturecolumn\000"
.LASF1745:
	.ascii	"ST_VERTICAL\000"
.LASF1616:
	.ascii	"bonuscount\000"
.LASF913:
	.ascii	"S_SKULL_PAIN2\000"
.LASF1527:
	.ascii	"painchance\000"
.LASF739:
	.ascii	"S_CPOS_PAIN\000"
.LASF1700:
	.ascii	"ceilingheight\000"
.LASF216:
	.ascii	"SPR_SARG\000"
.LASF112:
	.ascii	"_wcrtomb_state\000"
.LASF1942:
	.ascii	"lastspritelump\000"
.LASF1780:
	.ascii	"rw_offset\000"
.LASF1583:
	.ascii	"touching_sectorlist\000"
.LASF1044:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1504:
	.ascii	"MT_DOGS\000"
.LASF1451:
	.ascii	"MT_MISC36\000"
.LASF848:
	.ascii	"S_BOSS_RUN1\000"
.LASF849:
	.ascii	"S_BOSS_RUN2\000"
.LASF850:
	.ascii	"S_BOSS_RUN3\000"
.LASF124:
	.ascii	"PU_LEVSPEC\000"
.LASF851:
	.ascii	"S_BOSS_RUN4\000"
.LASF852:
	.ascii	"S_BOSS_RUN5\000"
.LASF370:
	.ascii	"S_CHAINUP\000"
.LASF322:
	.ascii	"S_PUNCHDOWN\000"
.LASF1611:
	.ascii	"killcount\000"
.LASF1595:
	.ascii	"deltaviewheight\000"
.LASF1233:
	.ascii	"S_TORCHTREE\000"
.LASF1045:
	.ascii	"S_SSWV_STND\000"
.LASF1092:
	.ascii	"S_COMMKEEN10\000"
.LASF1093:
	.ascii	"S_COMMKEEN11\000"
.LASF1094:
	.ascii	"S_COMMKEEN12\000"
.LASF1009:
	.ascii	"S_CYBER_PAIN\000"
.LASF528:
	.ascii	"S_SPOS_RUN1\000"
.LASF284:
	.ascii	"SPR_SMIT\000"
.LASF161:
	.ascii	"boolean\000"
.LASF531:
	.ascii	"S_SPOS_RUN4\000"
.LASF532:
	.ascii	"S_SPOS_RUN5\000"
.LASF221:
	.ascii	"SPR_SKUL\000"
.LASF534:
	.ascii	"S_SPOS_RUN7\000"
.LASF535:
	.ascii	"S_SPOS_RUN8\000"
.LASF1772:
	.ascii	"drawseg_s\000"
.LASF1192:
	.ascii	"S_BROK\000"
.LASF1095:
	.ascii	"S_KEENPAIN\000"
.LASF1506:
	.ascii	"MT_STEALTHVILE\000"
.LASF1935:
	.ascii	"num_vissprite_alloc\000"
.LASF988:
	.ascii	"S_ARACH_PLEX\000"
.LASF1249:
	.ascii	"S_GREENTORCH\000"
.LASF143:
	.ascii	"wp_supershotgun\000"
.LASF388:
	.ascii	"S_SAWDOWN\000"
.LASF1328:
	.ascii	"S_PLS2BALL\000"
.LASF1974:
	.ascii	"movement_smooth\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF1814:
	.ascii	"numPosts\000"
.LASF1356:
	.ascii	"statenum_t\000"
.LASF1786:
	.ascii	"drawseg_t\000"
.LASF1396:
	.ascii	"MT_TROOPSHOT\000"
.LASF1811:
	.ascii	"topdelta\000"
.LASF1711:
	.ascii	"stairlock\000"
.LASF1381:
	.ascii	"MT_BRUISERSHOT\000"
.LASF1904:
	.ascii	"prevcolumn\000"
.LASF1956:
	.ascii	"viewheightfrac\000"
.LASF1709:
	.ascii	"ceilingdata\000"
.LASF1638:
	.ascii	"ticcmd_t\000"
.LASF1779:
	.ascii	"tsilheight\000"
.LASF1501:
	.ascii	"MT_MISC86\000"
.LASF1871:
	.ascii	"R_DrawColumn_f\000"
.LASF1543:
	.ascii	"ps_weapon\000"
.LASF1959:
	.ascii	"rendered_vissprites\000"
.LASF1950:
	.ascii	"tranmap\000"
.LASF476:
	.ascii	"S_PLAY_PAIN2\000"
.LASF1771:
	.ascii	"lighttable_t\000"
.LASF1507:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF871:
	.ascii	"S_BOSS_RAISE4\000"
.LASF97:
	.ascii	"_strtok_last\000"
.LASF872:
	.ascii	"S_BOSS_RAISE5\000"
.LASF1358:
	.ascii	"frame\000"
.LASF213:
	.ascii	"SPR_MANF\000"
.LASF726:
	.ascii	"S_CPOS_STND2\000"
.LASF539:
	.ascii	"S_SPOS_PAIN\000"
.LASF137:
	.ascii	"wp_shotgun\000"
.LASF1934:
	.ascii	"num_vissprite\000"
.LASF1862:
	.ascii	"filterwall\000"
.LASF1966:
	.ascii	"screenheightarray\000"
.LASF507:
	.ascii	"S_POSS_PAIN2\000"
.LASF1402:
	.ascii	"MT_PUFF\000"
.LASF1784:
	.ascii	"sprbottomclip\000"
.LASF1651:
	.ascii	"comp_model\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF379:
	.ascii	"S_MISSILE1\000"
.LASF380:
	.ascii	"S_MISSILE2\000"
.LASF381:
	.ascii	"S_MISSILE3\000"
.LASF93:
	.ascii	"_seed\000"
.LASF756:
	.ascii	"S_CPOS_RAISE3\000"
.LASF1850:
	.ascii	"nextcolormap\000"
.LASF757:
	.ascii	"S_CPOS_RAISE4\000"
.LASF1603:
	.ascii	"pendingweapon\000"
.LASF55:
	.ascii	"_seek\000"
.LASF1199:
	.ascii	"S_MGUN\000"
.LASF760:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1380:
	.ascii	"MT_BRUISER\000"
.LASF262:
	.ascii	"SPR_SBOX\000"
.LASF1191:
	.ascii	"S_ROCK\000"
.LASF1795:
	.ascii	"mobjflags\000"
.LASF1613:
	.ascii	"secretcount\000"
.LASF1518:
	.ascii	"mobjtype_t\000"
.LASF1532:
	.ascii	"xdeathstate\000"
.LASF1598:
	.ascii	"powers\000"
.LASF908:
	.ascii	"S_SKULL_ATK1\000"
.LASF909:
	.ascii	"S_SKULL_ATK2\000"
.LASF910:
	.ascii	"S_SKULL_ATK3\000"
.LASF911:
	.ascii	"S_SKULL_ATK4\000"
.LASF889:
	.ascii	"S_BOS2_PAIN2\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF1382:
	.ascii	"MT_KNIGHT\000"
.LASF1662:
	.ascii	"comp_zerotags\000"
.LASF2:
	.ascii	"signed char\000"
.LASF1633:
	.ascii	"sidemove\000"
.LASF1539:
	.ascii	"activesound\000"
.LASF1895:
	.ascii	"temp\000"
.LASF540:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1308:
	.ascii	"S_DOGS_DIE3\000"
.LASF1872:
	.ascii	"start\000"
.LASF1690:
	.ascii	"wadfile\000"
.LASF704:
	.ascii	"S_FATT_ATK10\000"
.LASF1752:
	.ascii	"RF_IGNORE\000"
.LASF299:
	.ascii	"SPR_TGRN\000"
.LASF1865:
	.ascii	"filterz\000"
.LASF1427:
	.ascii	"MT_MEGA\000"
.LASF201:
	.ascii	"SPR_BFE1\000"
.LASF202:
	.ascii	"SPR_BFE2\000"
.LASF1459:
	.ascii	"MT_MISC44\000"
.LASF1707:
	.ascii	"thinglist\000"
.LASF1461:
	.ascii	"MT_MISC46\000"
.LASF1915:
	.ascii	"R_ProjectSprite\000"
.LASF1389:
	.ascii	"MT_KEEN\000"
.LASF1705:
	.ascii	"blockbox\000"
.LASF1105:
	.ascii	"S_BRAINEYE1\000"
.LASF1757:
	.ascii	"linedef\000"
.LASF761:
	.ascii	"S_TROO_STND\000"
.LASF708:
	.ascii	"S_FATT_DIE2\000"
.LASF399:
	.ascii	"S_PLASMAFLASH2\000"
.LASF146:
	.ascii	"weapontype_t\000"
.LASF1636:
	.ascii	"chatchar\000"
.LASF79:
	.ascii	"_freelist\000"
.LASF453:
	.ascii	"S_TFOG3\000"
.LASF454:
	.ascii	"S_TFOG4\000"
.LASF455:
	.ascii	"S_TFOG5\000"
.LASF456:
	.ascii	"S_TFOG6\000"
.LASF457:
	.ascii	"S_TFOG7\000"
.LASF458:
	.ascii	"S_TFOG8\000"
.LASF459:
	.ascii	"S_TFOG9\000"
.LASF874:
	.ascii	"S_BOSS_RAISE7\000"
.LASF1607:
	.ascii	"attackdown\000"
.LASF177:
	.ascii	"SPR_TROO\000"
.LASF1883:
	.ascii	"video_mode_t\000"
.LASF1286:
	.ascii	"S_TNT1\000"
.LASF188:
	.ascii	"SPR_SAWG\000"
.LASF1834:
	.ascii	"draw_filter_type_e\000"
.LASF237:
	.ascii	"SPR_BON1\000"
.LASF238:
	.ascii	"SPR_BON2\000"
.LASF60:
	.ascii	"_offset\000"
.LASF1748:
	.ascii	"slopetype_t\000"
.LASF130:
	.ascii	"it_redcard\000"
.LASF1228:
	.ascii	"S_TALLREDCOL\000"
.LASF1978:
	.ascii	"I_Error\000"
.LASF1652:
	.ascii	"comp_god\000"
.LASF1546:
	.ascii	"state\000"
.LASF1203:
	.ascii	"S_SHOT\000"
.LASF1059:
	.ascii	"S_SSWV_ATK5\000"
.LASF1208:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF1209:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1210:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF643:
	.ascii	"S_SKEL_RUN2\000"
.LASF950:
	.ascii	"S_SPID_DIE11\000"
.LASF45:
	.ascii	"__sbuf\000"
.LASF1907:
	.ascii	"bottomscreen\000"
.LASF1958:
	.ascii	"projectiony\000"
.LASF106:
	.ascii	"_l64a_buf\000"
.LASF673:
	.ascii	"S_SKEL_RAISE4\000"
.LASF294:
	.ascii	"SPR_ELEC\000"
.LASF1097:
	.ascii	"S_BRAIN\000"
.LASF1825:
	.ascii	"locks\000"
.LASF1815:
	.ascii	"posts\000"
.LASF1924:
	.ascii	"subsec\000"
.LASF1330:
	.ascii	"S_PLS2BALLX1\000"
.LASF1331:
	.ascii	"S_PLS2BALLX2\000"
.LASF1332:
	.ascii	"S_PLS2BALLX3\000"
.LASF1384:
	.ascii	"MT_SPIDER\000"
.LASF1180:
	.ascii	"S_SUIT\000"
.LASF192:
	.ascii	"SPR_BFGF\000"
.LASF191:
	.ascii	"SPR_BFGG\000"
.LASF1976:
	.ascii	"R_SortVisSprites\000"
.LASF1581:
	.ascii	"friction\000"
.LASF1020:
	.ascii	"S_PAIN_STND\000"
.LASF1782:
	.ascii	"rw_centerangle\000"
.LASF1836:
	.ascii	"RDRAW_FILTER_POINT\000"
.LASF436:
	.ascii	"S_BFGLAND\000"
.LASF1126:
	.ascii	"S_BAR2\000"
.LASF1293:
	.ascii	"S_DOGS_RUN1\000"
.LASF1294:
	.ascii	"S_DOGS_RUN2\000"
.LASF1295:
	.ascii	"S_DOGS_RUN3\000"
.LASF98:
	.ascii	"_asctime_buf\000"
.LASF1296:
	.ascii	"S_DOGS_RUN4\000"
.LASF172:
	.ascii	"function\000"
.LASF1297:
	.ascii	"S_DOGS_RUN5\000"
.LASF1298:
	.ascii	"S_DOGS_RUN6\000"
.LASF148:
	.ascii	"am_shell\000"
.LASF14:
	.ascii	"__wch\000"
.LASF1565:
	.ascii	"validcount\000"
.LASF1630:
	.ascii	"visited\000"
.LASF113:
	.ascii	"_wcsrtombs_state\000"
.LASF1614:
	.ascii	"message\000"
.LASF174:
	.ascii	"cprev\000"
.LASF716:
	.ascii	"S_FATT_DIE10\000"
.LASF497:
	.ascii	"S_POSS_RUN3\000"
.LASF134:
	.ascii	"NUMCARDS\000"
.LASF1253:
	.ascii	"S_REDTORCH\000"
.LASF1930:
	.ascii	"sprtemp\000"
.LASF1400:
	.ascii	"MT_BFG\000"
.LASF1717:
	.ascii	"topmap\000"
.LASF208:
	.ascii	"SPR_VILE\000"
.LASF120:
	.ascii	"PU_STATIC\000"
.LASF1403:
	.ascii	"MT_BLOOD\000"
.LASF10:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF329:
	.ascii	"S_PISTOL\000"
.LASF1837:
	.ascii	"RDRAW_FILTER_LINEAR\000"
.LASF561:
	.ascii	"S_VILE_STND2\000"
.LASF979:
	.ascii	"S_BSPI_RAISE1\000"
.LASF980:
	.ascii	"S_BSPI_RAISE2\000"
.LASF981:
	.ascii	"S_BSPI_RAISE3\000"
.LASF982:
	.ascii	"S_BSPI_RAISE4\000"
.LASF983:
	.ascii	"S_BSPI_RAISE5\000"
.LASF984:
	.ascii	"S_BSPI_RAISE6\000"
.LASF985:
	.ascii	"S_BSPI_RAISE7\000"
.LASF1562:
	.ascii	"momx\000"
.LASF1920:
	.ascii	"tr_y\000"
.LASF1563:
	.ascii	"momy\000"
.LASF6:
	.ascii	"long int\000"
.LASF1068:
	.ascii	"S_SSWV_XDIE1\000"
.LASF1069:
	.ascii	"S_SSWV_XDIE2\000"
.LASF1070:
	.ascii	"S_SSWV_XDIE3\000"
.LASF1071:
	.ascii	"S_SSWV_XDIE4\000"
.LASF1072:
	.ascii	"S_SSWV_XDIE5\000"
.LASF1073:
	.ascii	"S_SSWV_XDIE6\000"
.LASF1074:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1075:
	.ascii	"S_SSWV_XDIE8\000"
.LASF1076:
	.ascii	"S_SSWV_XDIE9\000"
.LASF366:
	.ascii	"S_DSGUNFLASH1\000"
.LASF367:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1434:
	.ascii	"MT_MISC22\000"
.LASF1622:
	.ascii	"didsecret\000"
.LASF624:
	.ascii	"S_FIRE25\000"
.LASF718:
	.ascii	"S_FATT_RAISE2\000"
.LASF1470:
	.ascii	"MT_MISC55\000"
.LASF105:
	.ascii	"_wctomb_state\000"
.LASF132:
	.ascii	"it_yellowskull\000"
.LASF1156:
	.ascii	"S_RSKULL2\000"
.LASF1579:
	.ascii	"tracer\000"
.LASF125:
	.ascii	"PU_CACHE\000"
.LASF1951:
	.ascii	"viewcos\000"
.LASF931:
	.ascii	"S_SPID_RUN10\000"
.LASF932:
	.ascii	"S_SPID_RUN11\000"
.LASF933:
	.ascii	"S_SPID_RUN12\000"
.LASF1762:
	.ascii	"textureoffset\000"
.LASF1975:
	.ascii	"tic_vars\000"
.LASF1584:
	.ascii	"PrevX\000"
.LASF1585:
	.ascii	"PrevY\000"
.LASF1586:
	.ascii	"PrevZ\000"
.LASF1541:
	.ascii	"raisestate\000"
.LASF1503:
	.ascii	"MT_PULL\000"
.LASF1340:
	.ascii	"S_BSKUL_ATK1\000"
.LASF382:
	.ascii	"S_MISSILEFLASH1\000"
.LASF383:
	.ascii	"S_MISSILEFLASH2\000"
.LASF384:
	.ascii	"S_MISSILEFLASH3\000"
.LASF385:
	.ascii	"S_MISSILEFLASH4\000"
.LASF91:
	.ascii	"_iobs\000"
.LASF243:
	.ascii	"SPR_RSKU\000"
.LASF71:
	.ascii	"_emergency\000"
.LASF1669:
	.ascii	"COMP_NUM\000"
.LASF168:
	.ascii	"think_t\000"
.LASF742:
	.ascii	"S_CPOS_DIE2\000"
.LASF743:
	.ascii	"S_CPOS_DIE3\000"
.LASF1673:
	.ascii	"source_auto_load\000"
.LASF744:
	.ascii	"S_CPOS_DIE4\000"
.LASF1766:
	.ascii	"midtexture\000"
.LASF745:
	.ascii	"S_CPOS_DIE5\000"
.LASF746:
	.ascii	"S_CPOS_DIE6\000"
.LASF115:
	.ascii	"_nextf\000"
.LASF747:
	.ascii	"S_CPOS_DIE7\000"
.LASF211:
	.ascii	"SPR_FBXP\000"
.LASF101:
	.ascii	"_rand_next\000"
.LASF1892:
	.ascii	"colfunc\000"
.LASF1863:
	.ascii	"filterfloor\000"
.LASF1188:
	.ascii	"S_PVIS2\000"
.LASF1812:
	.ascii	"slope\000"
.LASF1395:
	.ascii	"MT_BARREL\000"
.LASF1353:
	.ascii	"S_BSKUL_DIE8\000"
.LASF920:
	.ascii	"S_SPID_STND\000"
.LASF1896:
	.ascii	"R_InitSpriteDefs\000"
.LASF1683:
	.ascii	"ns_flats\000"
.LASF692:
	.ascii	"S_FATT_RUN10\000"
.LASF693:
	.ascii	"S_FATT_RUN11\000"
.LASF694:
	.ascii	"S_FATT_RUN12\000"
.LASF1387:
	.ascii	"MT_PAIN\000"
.LASF1268:
	.ascii	"S_RTORCHSHRT4\000"
.LASF537:
	.ascii	"S_SPOS_ATK2\000"
.LASF1542:
	.ascii	"mobjinfo_t\000"
.LASF1247:
	.ascii	"S_BLUETORCH3\000"
.LASF23:
	.ascii	"_maxwds\000"
.LASF303:
	.ascii	"SPR_SMRT\000"
.LASF407:
	.ascii	"S_BFGFLASH1\000"
.LASF408:
	.ascii	"S_BFGFLASH2\000"
.LASF941:
	.ascii	"S_SPID_DIE2\000"
.LASF1851:
	.ascii	"translation\000"
.LASF1947:
	.ascii	"viewy\000"
.LASF220:
	.ascii	"SPR_BOS2\000"
.LASF944:
	.ascii	"S_SPID_DIE5\000"
.LASF945:
	.ascii	"S_SPID_DIE6\000"
.LASF946:
	.ascii	"S_SPID_DIE7\000"
.LASF947:
	.ascii	"S_SPID_DIE8\000"
.LASF1237:
	.ascii	"S_EVILEYE2\000"
.LASF1238:
	.ascii	"S_EVILEYE3\000"
.LASF1239:
	.ascii	"S_EVILEYE4\000"
.LASF412:
	.ascii	"S_PUFF1\000"
.LASF413:
	.ascii	"S_PUFF2\000"
.LASF414:
	.ascii	"S_PUFF3\000"
.LASF231:
	.ascii	"SPR_BOSF\000"
.LASF1720:
	.ascii	"lines\000"
.LASF1801:
	.ascii	"numframes\000"
.LASF1666:
	.ascii	"comp_666\000"
.LASF219:
	.ascii	"SPR_BOSS\000"
.LASF1954:
	.ascii	"centerxfrac\000"
.LASF1691:
	.ascii	"position\000"
.LASF1399:
	.ascii	"MT_PLASMA\000"
.LASF966:
	.ascii	"S_BSPI_ATK1\000"
.LASF967:
	.ascii	"S_BSPI_ATK2\000"
.LASF968:
	.ascii	"S_BSPI_ATK3\000"
.LASF969:
	.ascii	"S_BSPI_ATK4\000"
.LASF1148:
	.ascii	"S_BKEY2\000"
.LASF144:
	.ascii	"NUMWEAPONS\000"
.LASF1305:
	.ascii	"S_DOGS_PAIN2\000"
.LASF953:
	.ascii	"S_BSPI_SIGHT\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF1629:
	.ascii	"m_snext\000"
.LASF1099:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1100:
	.ascii	"S_BRAIN_DIE2\000"
.LASF1101:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1102:
	.ascii	"S_BRAIN_DIE4\000"
.LASF434:
	.ascii	"S_BFGSHOT\000"
.LASF1240:
	.ascii	"S_FLOATSKULL\000"
.LASF590:
	.ascii	"S_VILE_DIE1\000"
.LASF591:
	.ascii	"S_VILE_DIE2\000"
.LASF592:
	.ascii	"S_VILE_DIE3\000"
.LASF593:
	.ascii	"S_VILE_DIE4\000"
.LASF594:
	.ascii	"S_VILE_DIE5\000"
.LASF595:
	.ascii	"S_VILE_DIE6\000"
.LASF596:
	.ascii	"S_VILE_DIE7\000"
.LASF597:
	.ascii	"S_VILE_DIE8\000"
.LASF598:
	.ascii	"S_VILE_DIE9\000"
.LASF1615:
	.ascii	"damagecount\000"
.LASF1725:
	.ascii	"floorlightsec\000"
.LASF1658:
	.ascii	"comp_staylift\000"
.LASF272:
	.ascii	"SPR_SMT2\000"
.LASF1150:
	.ascii	"S_RKEY2\000"
.LASF1121:
	.ascii	"S_ARM1\000"
.LASF1123:
	.ascii	"S_ARM2\000"
.LASF1309:
	.ascii	"S_DOGS_DIE4\000"
.LASF1310:
	.ascii	"S_DOGS_DIE5\000"
.LASF1216:
	.ascii	"S_HEADCANDLES\000"
.LASF250:
	.ascii	"SPR_PINS\000"
.LASF846:
	.ascii	"S_BOSS_STND\000"
.LASF826:
	.ascii	"S_HEAD_PAIN\000"
.LASF129:
	.ascii	"it_yellowcard\000"
.LASF1986:
	.ascii	"R_UnlockPatchNum\000"
.LASF56:
	.ascii	"_close\000"
.LASF1371:
	.ascii	"MT_TRACER\000"
.LASF707:
	.ascii	"S_FATT_DIE1\000"
.LASF87:
	.ascii	"char\000"
.LASF709:
	.ascii	"S_FATT_DIE3\000"
.LASF710:
	.ascii	"S_FATT_DIE4\000"
.LASF711:
	.ascii	"S_FATT_DIE5\000"
.LASF712:
	.ascii	"S_FATT_DIE6\000"
.LASF713:
	.ascii	"S_FATT_DIE7\000"
.LASF714:
	.ascii	"S_FATT_DIE8\000"
.LASF715:
	.ascii	"S_FATT_DIE9\000"
.LASF782:
	.ascii	"S_TROO_XDIE2\000"
.LASF783:
	.ascii	"S_TROO_XDIE3\000"
.LASF89:
	.ascii	"_glue\000"
.LASF785:
	.ascii	"S_TROO_XDIE5\000"
.LASF786:
	.ascii	"S_TROO_XDIE6\000"
.LASF787:
	.ascii	"S_TROO_XDIE7\000"
.LASF788:
	.ascii	"S_TROO_XDIE8\000"
.LASF255:
	.ascii	"SPR_CLIP\000"
.LASF1917:
	.ascii	"sprdef\000"
.LASF1229:
	.ascii	"S_SHRTREDCOL\000"
.LASF1675:
	.ascii	"source_lmp\000"
.LASF173:
	.ascii	"cnext\000"
.LASF1272:
	.ascii	"S_HANGTSKULL\000"
.LASF1894:
	.ascii	"filter\000"
.LASF1879:
	.ascii	"VID_MODE16\000"
.LASF1289:
	.ascii	"S_DETONATE2\000"
.LASF1290:
	.ascii	"S_DETONATE3\000"
.LASF159:
	.ascii	"NUMPOWERS\000"
.LASF1702:
	.ascii	"firsttag\000"
.LASF1057:
	.ascii	"S_SSWV_ATK3\000"
.LASF1931:
	.ascii	"maxframe\000"
.LASF1058:
	.ascii	"S_SSWV_ATK4\000"
.LASF363:
	.ascii	"S_DSGUN10\000"
.LASF154:
	.ascii	"pw_strength\000"
.LASF1911:
	.ascii	"R_DrawSprite\000"
.LASF289:
	.ascii	"SPR_CAND\000"
.LASF26:
	.ascii	"_Bigint\000"
.LASF1377:
	.ascii	"MT_SERGEANT\000"
.LASF175:
	.ascii	"references\000"
.LASF1219:
	.ascii	"S_LIVESTICK\000"
.LASF1159:
	.ascii	"S_STIM\000"
.LASF1787:
	.ascii	"vissprite_s\000"
.LASF1655:
	.ascii	"comp_skymap\000"
.LASF149:
	.ascii	"am_cell\000"
.LASF1983:
	.ascii	"R_SetDefaultDrawColumnVars\000"
.LASF128:
	.ascii	"it_bluecard\000"
.LASF1559:
	.ascii	"floorz\000"
.LASF1899:
	.ascii	"hash\000"
.LASF822:
	.ascii	"S_HEAD_RUN1\000"
.LASF477:
	.ascii	"S_PLAY_DIE1\000"
.LASF478:
	.ascii	"S_PLAY_DIE2\000"
.LASF479:
	.ascii	"S_PLAY_DIE3\000"
.LASF480:
	.ascii	"S_PLAY_DIE4\000"
.LASF481:
	.ascii	"S_PLAY_DIE5\000"
.LASF482:
	.ascii	"S_PLAY_DIE6\000"
.LASF483:
	.ascii	"S_PLAY_DIE7\000"
.LASF83:
	.ascii	"_atexit0\000"
.LASF1319:
	.ascii	"S_OLDBFG42\000"
.LASF1320:
	.ascii	"S_OLDBFG43\000"
.LASF449:
	.ascii	"S_TFOG\000"
.LASF1455:
	.ascii	"MT_MISC40\000"
.LASF1689:
	.ascii	"li_namespace\000"
.LASF1456:
	.ascii	"MT_MISC41\000"
.LASF1587:
	.ascii	"subsector_s\000"
.LASF809:
	.ascii	"S_SARG_DIE1\000"
.LASF810:
	.ascii	"S_SARG_DIE2\000"
.LASF1721:
	.ascii	"floor_xoffs\000"
.LASF811:
	.ascii	"S_SARG_DIE3\000"
.LASF812:
	.ascii	"S_SARG_DIE4\000"
.LASF1110:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1111:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1112:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1113:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1114:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1115:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1116:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1117:
	.ascii	"S_SPAWNFIRE8\000"
.LASF781:
	.ascii	"S_TROO_XDIE1\000"
.LASF1635:
	.ascii	"consistancy\000"
.LASF1696:
	.ascii	"iSectorID\000"
.LASF784:
	.ascii	"S_TROO_XDIE4\000"
.LASF1588:
	.ascii	"sector\000"
.LASF1274:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF108:
	.ascii	"_getdate_err\000"
.LASF1831:
	.ascii	"RDC_PIPELINE_MAXPIPELINES\000"
.LASF429:
	.ascii	"S_PLASEXP2\000"
.LASF430:
	.ascii	"S_PLASEXP3\000"
.LASF431:
	.ascii	"S_PLASEXP4\000"
.LASF432:
	.ascii	"S_PLASEXP5\000"
.LASF141:
	.ascii	"wp_bfg\000"
.LASF1258:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1259:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1260:
	.ascii	"S_BTORCHSHRT4\000"
.LASF562:
	.ascii	"S_VILE_RUN1\000"
.LASF352:
	.ascii	"S_DSGUNDOWN\000"
.LASF564:
	.ascii	"S_VILE_RUN3\000"
.LASF565:
	.ascii	"S_VILE_RUN4\000"
.LASF566:
	.ascii	"S_VILE_RUN5\000"
.LASF567:
	.ascii	"S_VILE_RUN6\000"
.LASF568:
	.ascii	"S_VILE_RUN7\000"
.LASF569:
	.ascii	"S_VILE_RUN8\000"
.LASF570:
	.ascii	"S_VILE_RUN9\000"
.LASF813:
	.ascii	"S_SARG_DIE5\000"
.LASF814:
	.ascii	"S_SARG_DIE6\000"
.LASF1599:
	.ascii	"cards\000"
.LASF1553:
	.ascii	"thinker\000"
.LASF1742:
	.ascii	"r_flags\000"
.LASF1351:
	.ascii	"S_BSKUL_DIE6\000"
.LASF654:
	.ascii	"S_SKEL_FIST1\000"
.LASF655:
	.ascii	"S_SKEL_FIST2\000"
.LASF656:
	.ascii	"S_SKEL_FIST3\000"
.LASF657:
	.ascii	"S_SKEL_FIST4\000"
.LASF393:
	.ascii	"S_PLASMA\000"
.LASF1172:
	.ascii	"S_PINS\000"
.LASF1299:
	.ascii	"S_DOGS_RUN7\000"
.LASF1300:
	.ascii	"S_DOGS_RUN8\000"
.LASF1213:
	.ascii	"S_HEADSONSTICK\000"
.LASF1329:
	.ascii	"S_PLS2BALL2\000"
.LASF1582:
	.ascii	"movefactor\000"
.LASF1758:
	.ascii	"iSegID\000"
.LASF1245:
	.ascii	"S_BLUETORCH\000"
.LASF1687:
	.ascii	"size\000"
.LASF683:
	.ascii	"S_FATT_RUN1\000"
.LASF684:
	.ascii	"S_FATT_RUN2\000"
.LASF685:
	.ascii	"S_FATT_RUN3\000"
.LASF686:
	.ascii	"S_FATT_RUN4\000"
.LASF156:
	.ascii	"pw_ironfeet\000"
.LASF688:
	.ascii	"S_FATT_RUN6\000"
.LASF689:
	.ascii	"S_FATT_RUN7\000"
.LASF690:
	.ascii	"S_FATT_RUN8\000"
.LASF1221:
	.ascii	"S_MEAT2\000"
.LASF1222:
	.ascii	"S_MEAT3\000"
.LASF1223:
	.ascii	"S_MEAT4\000"
.LASF1224:
	.ascii	"S_MEAT5\000"
.LASF59:
	.ascii	"_blksize\000"
.LASF336:
	.ascii	"S_PISTOLFLASH\000"
.LASF1699:
	.ascii	"floorheight\000"
.LASF556:
	.ascii	"S_SPOS_RAISE2\000"
.LASF557:
	.ascii	"S_SPOS_RAISE3\000"
.LASF558:
	.ascii	"S_SPOS_RAISE4\000"
.LASF559:
	.ascii	"S_SPOS_RAISE5\000"
.LASF57:
	.ascii	"_ubuf\000"
.LASF246:
	.ascii	"SPR_MEDI\000"
.LASF1832:
	.ascii	"RDC_PIPELINE_MAXPIPELINES2\000"
.LASF248:
	.ascii	"SPR_PINV\000"
.LASF1882:
	.ascii	"VID_MODEMAX\000"
.LASF103:
	.ascii	"_mblen_state\000"
.LASF85:
	.ascii	"__sglue\000"
.LASF1322:
	.ascii	"S_PLS1BALL2\000"
.LASF1318:
	.ascii	"S_OLDBFG1\000"
.LASF588:
	.ascii	"S_VILE_PAIN\000"
.LASF75:
	.ascii	"__cleanup\000"
.LASF1880:
	.ascii	"VID_MODE32\000"
.LASF635:
	.ascii	"S_TRACER\000"
.LASF1514:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF1646:
	.ascii	"comp_vile\000"
.LASF1870:
	.ascii	"draw_vars_t\000"
.LASF1055:
	.ascii	"S_SSWV_ATK1\000"
.LASF1056:
	.ascii	"S_SSWV_ATK2\000"
.LASF585:
	.ascii	"S_VILE_HEAL1\000"
.LASF586:
	.ascii	"S_VILE_HEAL2\000"
.LASF587:
	.ascii	"S_VILE_HEAL3\000"
.LASF1060:
	.ascii	"S_SSWV_ATK6\000"
.LASF1570:
	.ascii	"movecount\000"
.LASF240:
	.ascii	"SPR_RKEY\000"
.LASF1206:
	.ascii	"S_STALAG\000"
.LASF1621:
	.ascii	"psprites\000"
.LASF1716:
	.ascii	"midmap\000"
.LASF526:
	.ascii	"S_SPOS_STND\000"
.LASF1670:
	.ascii	"COMP_TOTAL\000"
.LASF1979:
	.ascii	"Z_Malloc\000"
.LASF12:
	.ascii	"_fpos_t\000"
.LASF921:
	.ascii	"S_SPID_STND2\000"
.LASF50:
	.ascii	"_file\000"
.LASF166:
	.ascii	"angle_t\000"
.LASF1728:
	.ascii	"ceilingpic\000"
.LASF1207:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1276:
	.ascii	"S_SMALLPOOL\000"
.LASF1547:
	.ascii	"pspdef_t\000"
.LASF1471:
	.ascii	"MT_MISC56\000"
.LASF705:
	.ascii	"S_FATT_PAIN\000"
.LASF1988:
	.ascii	"R_RenderMaskedSegRange\000"
.LASF1790:
	.ascii	"startfrac\000"
.LASF1932:
	.ascii	"vissprites\000"
.LASF1744:
	.ascii	"ST_HORIZONTAL\000"
.LASF48:
	.ascii	"__sFILE\000"
.LASF469:
	.ascii	"S_PLAY_RUN1\000"
.LASF470:
	.ascii	"S_PLAY_RUN2\000"
.LASF471:
	.ascii	"S_PLAY_RUN3\000"
.LASF472:
	.ascii	"S_PLAY_RUN4\000"
.LASF1985:
	.ascii	"R_GetPatchColumnClamped\000"
.LASF1773:
	.ascii	"curline\000"
.LASF1197:
	.ascii	"S_BPAK\000"
.LASF44:
	.ascii	"_fns\000"
.LASF1591:
	.ascii	"player_s\000"
.LASF1154:
	.ascii	"S_BSKULL2\000"
.LASF194:
	.ascii	"SPR_PUFF\000"
.LASF1083:
	.ascii	"S_COMMKEEN\000"
.LASF1608:
	.ascii	"usedown\000"
.LASF1788:
	.ascii	"thing\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF114:
	.ascii	"_h_errno\000"
.LASF1510:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF875:
	.ascii	"S_BOS2_STND\000"
.LASF200:
	.ascii	"SPR_BFS1\000"
.LASF1106:
	.ascii	"S_SPAWN1\000"
.LASF1107:
	.ascii	"S_SPAWN2\000"
.LASF1108:
	.ascii	"S_SPAWN3\000"
.LASF1109:
	.ascii	"S_SPAWN4\000"
.LASF1255:
	.ascii	"S_REDTORCH3\000"
.LASF1280:
	.ascii	"S_TECHLAMP3\000"
.LASF142:
	.ascii	"wp_chainsaw\000"
.LASF1385:
	.ascii	"MT_BABY\000"
.LASF1606:
	.ascii	"maxammo\000"
.LASF1028:
	.ascii	"S_PAIN_ATK2\000"
.LASF1876:
	.ascii	"tic_vars_t\000"
.LASF1424:
	.ascii	"MT_MISC14\000"
.LASF1220:
	.ascii	"S_LIVESTICK2\000"
.LASF1844:
	.ascii	"RDRAW_MASKEDCOLUMNEDGE_MAX\000"
.LASF1265:
	.ascii	"S_RTORCHSHRT\000"
.LASF1431:
	.ascii	"MT_MISC19\000"
.LASF222:
	.ascii	"SPR_SPID\000"
.LASF821:
	.ascii	"S_HEAD_STND\000"
.LASF1867:
	.ascii	"sprite_edges\000"
.LASF1791:
	.ascii	"scale\000"
.LASF1938:
	.ascii	"general_translucency\000"
.LASF796:
	.ascii	"S_SARG_RUN1\000"
.LASF797:
	.ascii	"S_SARG_RUN2\000"
.LASF798:
	.ascii	"S_SARG_RUN3\000"
.LASF799:
	.ascii	"S_SARG_RUN4\000"
.LASF800:
	.ascii	"S_SARG_RUN5\000"
.LASF801:
	.ascii	"S_SARG_RUN6\000"
.LASF802:
	.ascii	"S_SARG_RUN7\000"
.LASF803:
	.ascii	"S_SARG_RUN8\000"
.LASF1409:
	.ascii	"MT_MISC1\000"
.LASF1410:
	.ascii	"MT_MISC2\000"
.LASF1411:
	.ascii	"MT_MISC3\000"
.LASF1412:
	.ascii	"MT_MISC4\000"
.LASF1413:
	.ascii	"MT_MISC5\000"
.LASF1414:
	.ascii	"MT_MISC6\000"
.LASF1415:
	.ascii	"MT_MISC7\000"
.LASF1416:
	.ascii	"MT_MISC8\000"
.LASF1417:
	.ascii	"MT_MISC9\000"
.LASF386:
	.ascii	"S_SAW\000"
.LASF251:
	.ascii	"SPR_MEGA\000"
.LASF475:
	.ascii	"S_PLAY_PAIN\000"
.LASF1859:
	.ascii	"byte_pitch\000"
.LASF18:
	.ascii	"__value\000"
.LASF427:
	.ascii	"S_PLASBALL2\000"
.LASF1544:
	.ascii	"ps_flash\000"
.LASF1921:
	.ascii	"R_NewVisSprite\000"
.LASF1592:
	.ascii	"playerstate\000"
.LASF1741:
	.ascii	"r_validcount\000"
.LASF41:
	.ascii	"_is_cxa\000"
.LASF229:
	.ascii	"SPR_KEEN\000"
.LASF1061:
	.ascii	"S_SSWV_PAIN\000"
.LASF1526:
	.ascii	"painstate\000"
.LASF1096:
	.ascii	"S_KEENPAIN2\000"
.LASF158:
	.ascii	"pw_infrared\000"
.LASF583:
	.ascii	"S_VILE_ATK10\000"
.LASF584:
	.ascii	"S_VILE_ATK11\000"
.LASF78:
	.ascii	"_p5s\000"
.LASF1661:
	.ascii	"comp_infcheat\000"
.LASF1822:
	.ascii	"topoffset\000"
.LASF1513:
	.ascii	"MT_STEALTHFATSO\000"
.LASF1062:
	.ascii	"S_SSWV_PAIN2\000"
.LASF1495:
	.ascii	"MT_MISC80\000"
.LASF1533:
	.ascii	"deathsound\000"
.LASF1136:
	.ascii	"S_BON1A\000"
.LASF1137:
	.ascii	"S_BON1B\000"
.LASF1138:
	.ascii	"S_BON1C\000"
.LASF1139:
	.ascii	"S_BON1D\000"
.LASF1140:
	.ascii	"S_BON1E\000"
.LASF1743:
	.ascii	"sector_t\000"
.LASF1664:
	.ascii	"comp_respawn\000"
.LASF1818:
	.ascii	"width\000"
.LASF249:
	.ascii	"SPR_PSTR\000"
.LASF452:
	.ascii	"S_TFOG2\000"
.LASF1433:
	.ascii	"MT_MISC21\000"
.LASF807:
	.ascii	"S_SARG_PAIN\000"
.LASF1428:
	.ascii	"MT_CLIP\000"
.LASF1761:
	.ascii	"side_s\000"
.LASF264:
	.ascii	"SPR_BFUG\000"
.LASF1483:
	.ascii	"MT_MISC68\000"
.LASF1132:
	.ascii	"S_BBAR1\000"
.LASF1133:
	.ascii	"S_BBAR2\000"
.LASF1134:
	.ascii	"S_BBAR3\000"
.LASF320:
	.ascii	"S_LIGHTDONE\000"
.LASF1671:
	.ascii	"source_iwad\000"
.LASF971:
	.ascii	"S_BSPI_PAIN2\000"
.LASF1663:
	.ascii	"comp_moveblock\000"
.LASF1347:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1600:
	.ascii	"backpack\000"
.LASF1349:
	.ascii	"S_BSKUL_DIE4\000"
.LASF1877:
	.ascii	"VID_MODE8\000"
.LASF771:
	.ascii	"S_TROO_ATK1\000"
.LASF772:
	.ascii	"S_TROO_ATK2\000"
.LASF773:
	.ascii	"S_TROO_ATK3\000"
.LASF915:
	.ascii	"S_SKULL_DIE2\000"
.LASF916:
	.ascii	"S_SKULL_DIE3\000"
.LASF917:
	.ascii	"S_SKULL_DIE4\000"
.LASF918:
	.ascii	"S_SKULL_DIE5\000"
.LASF919:
	.ascii	"S_SKULL_DIE6\000"
.LASF268:
	.ascii	"SPR_PLAS\000"
.LASF1945:
	.ascii	"sectors\000"
.LASF1142:
	.ascii	"S_BON2A\000"
.LASF1143:
	.ascii	"S_BON2B\000"
.LASF181:
	.ascii	"SPR_PISF\000"
.LASF180:
	.ascii	"SPR_PISG\000"
.LASF1146:
	.ascii	"S_BON2E\000"
.LASF1438:
	.ascii	"MT_CHAINGUN\000"
.LASF418:
	.ascii	"S_TBALLX1\000"
.LASF419:
	.ascii	"S_TBALLX2\000"
.LASF420:
	.ascii	"S_TBALLX3\000"
.LASF145:
	.ascii	"wp_nochange\000"
.LASF292:
	.ascii	"SPR_TRE1\000"
.LASF1375:
	.ascii	"MT_CHAINGUY\000"
.LASF1957:
	.ascii	"projection\000"
.LASF1695:
	.ascii	"degenmobj_t\000"
.LASF1632:
	.ascii	"forwardmove\000"
.LASF914:
	.ascii	"S_SKULL_DIE1\000"
.LASF1640:
	.ascii	"PST_DEAD\000"
.LASF1277:
	.ascii	"S_BRAINSTEM\000"
.LASF1082:
	.ascii	"S_KEENSTND\000"
.LASF1628:
	.ascii	"m_sprev\000"
.LASF205:
	.ascii	"SPR_PLAY\000"
.LASF1602:
	.ascii	"readyweapon\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF1755:
	.ascii	"offset\000"
.LASF1217:
	.ascii	"S_HEADCANDLES2\000"
.LASF1405:
	.ascii	"MT_IFOG\000"
.LASF1667:
	.ascii	"comp_soul\000"
.LASF1079:
	.ascii	"S_SSWV_RAISE3\000"
.LASF296:
	.ascii	"SPR_FSKU\000"
.LASF533:
	.ascii	"S_SPOS_RUN6\000"
.LASF1647:
	.ascii	"comp_pain\000"
.LASF389:
	.ascii	"S_SAWUP\000"
.LASF1122:
	.ascii	"S_ARM1A\000"
.LASF725:
	.ascii	"S_CPOS_STND\000"
.LASF1446:
	.ascii	"MT_MISC31\000"
.LASF1564:
	.ascii	"momz\000"
.LASF1196:
	.ascii	"S_SBOX\000"
.LASF1703:
	.ascii	"soundtraversed\000"
.LASF1449:
	.ascii	"MT_MISC34\000"
.LASF1312:
	.ascii	"S_DOGS_RAISE1\000"
.LASF1313:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1314:
	.ascii	"S_DOGS_RAISE3\000"
.LASF428:
	.ascii	"S_PLASEXP\000"
.LASF1316:
	.ascii	"S_DOGS_RAISE5\000"
.LASF1317:
	.ascii	"S_DOGS_RAISE6\000"
.LASF100:
	.ascii	"_gamma_signgam\000"
.LASF1212:
	.ascii	"S_DEADBOTTOM\000"
.LASF1269:
	.ascii	"S_HANGNOGUTS\000"
.LASF1923:
	.ascii	"R_AddSprites\000"
.LASF1525:
	.ascii	"attacksound\000"
.LASF1173:
	.ascii	"S_PINS2\000"
.LASF1174:
	.ascii	"S_PINS3\000"
.LASF1175:
	.ascii	"S_PINS4\000"
.LASF1027:
	.ascii	"S_PAIN_ATK1\000"
.LASF1994:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF1029:
	.ascii	"S_PAIN_ATK3\000"
.LASF1030:
	.ascii	"S_PAIN_ATK4\000"
.LASF1660:
	.ascii	"comp_stairs\000"
.LASF339:
	.ascii	"S_SGUNUP\000"
.LASF1806:
	.ascii	"RDRAW_EDGESLOPE_BOT_UP\000"
.LASF72:
	.ascii	"_current_category\000"
.LASF1737:
	.ascii	"frontsector\000"
.LASF290:
	.ascii	"SPR_CBRA\000"
.LASF1531:
	.ascii	"deathstate\000"
.LASF1124:
	.ascii	"S_ARM2A\000"
.LASF993:
	.ascii	"S_CYBER_STND\000"
.LASF1821:
	.ascii	"leftoffset\000"
.LASF600:
	.ascii	"S_FIRE1\000"
.LASF1828:
	.ascii	"RDC_PIPELINE_TRANSLUCENT\000"
.LASF1152:
	.ascii	"S_YKEY2\000"
.LASF602:
	.ascii	"S_FIRE3\000"
.LASF1855:
	.ascii	"draw_column_vars_t\000"
.LASF1668:
	.ascii	"comp_maskedanim\000"
.LASF1524:
	.ascii	"reactiontime\000"
.LASF1763:
	.ascii	"rowoffset\000"
.LASF607:
	.ascii	"S_FIRE8\000"
.LASF847:
	.ascii	"S_BOSS_STND2\000"
.LASF1968:
	.ascii	"mceilingclip\000"
.LASF1809:
	.ascii	"RDRAW_EDGESLOPE_BOT_MASK\000"
.LASF1840:
	.ascii	"RDRAW_FILTER_MAXFILTERS2\000"
.LASF697:
	.ascii	"S_FATT_ATK3\000"
.LASF1960:
	.ascii	"fullcolormap\000"
.LASF1555:
	.ascii	"sprev\000"
.LASF390:
	.ascii	"S_SAW1\000"
.LASF391:
	.ascii	"S_SAW2\000"
.LASF392:
	.ascii	"S_SAW3\000"
.LASF1135:
	.ascii	"S_BON1\000"
.LASF1141:
	.ascii	"S_BON2\000"
.LASF1576:
	.ascii	"player\000"
.LASF1710:
	.ascii	"lightingdata\000"
.LASF387:
	.ascii	"S_SAWB\000"
.LASF1949:
	.ascii	"main_tranmap\000"
.LASF775:
	.ascii	"S_TROO_PAIN2\000"
.LASF1042:
	.ascii	"S_PAIN_RAISE4\000"
.LASF1391:
	.ascii	"MT_BOSSSPIT\000"
.LASF74:
	.ascii	"__sdidinit\000"
.LASF601:
	.ascii	"S_FIRE2\000"
.LASF165:
	.ascii	"fixed_t\000"
.LASF603:
	.ascii	"S_FIRE4\000"
.LASF604:
	.ascii	"S_FIRE5\000"
.LASF605:
	.ascii	"S_FIRE6\000"
.LASF606:
	.ascii	"S_FIRE7\000"
.LASF258:
	.ascii	"SPR_BROK\000"
.LASF608:
	.ascii	"S_FIRE9\000"
.LASF1333:
	.ascii	"S_BON3\000"
.LASF1334:
	.ascii	"S_BON4\000"
.LASF1460:
	.ascii	"MT_MISC45\000"
.LASF1693:
	.ascii	"lumpinfo_t\000"
.LASF1193:
	.ascii	"S_CELL\000"
.LASF1462:
	.ascii	"MT_MISC47\000"
.LASF256:
	.ascii	"SPR_AMMO\000"
.LASF1463:
	.ascii	"MT_MISC48\000"
.LASF1315:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1464:
	.ascii	"MT_MISC49\000"
.LASF906:
	.ascii	"S_SKULL_RUN1\000"
.LASF907:
	.ascii	"S_SKULL_RUN2\000"
.LASF1273:
	.ascii	"S_HANGTLOOKUP\000"
.LASF368:
	.ascii	"S_CHAIN\000"
.LASF1900:
	.ascii	"spritename\000"
.LASF398:
	.ascii	"S_PLASMAFLASH1\000"
.LASF354:
	.ascii	"S_DSGUN1\000"
.LASF355:
	.ascii	"S_DSGUN2\000"
.LASF247:
	.ascii	"SPR_SOUL\000"
.LASF207:
	.ascii	"SPR_SPOS\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF359:
	.ascii	"S_DSGUN6\000"
.LASF360:
	.ascii	"S_DSGUN7\000"
.LASF361:
	.ascii	"S_DSGUN8\000"
.LASF1990:
	.ascii	"R_PointToAngle\000"
.LASF227:
	.ascii	"SPR_PAIN\000"
.LASF754:
	.ascii	"S_CPOS_RAISE1\000"
.LASF1362:
	.ascii	"misc1\000"
.LASF1601:
	.ascii	"frags\000"
.LASF755:
	.ascii	"S_CPOS_RAISE2\000"
.LASF1502:
	.ascii	"MT_PUSH\000"
.LASF1789:
	.ascii	"flip\000"
.LASF1596:
	.ascii	"armorpoints\000"
.LASF1637:
	.ascii	"buttons\000"
.LASF1984:
	.ascii	"R_GetDrawColumnFunc\000"
.LASF1723:
	.ascii	"ceiling_xoffs\000"
.LASF403:
	.ascii	"S_BFG1\000"
.LASF404:
	.ascii	"S_BFG2\000"
.LASF405:
	.ascii	"S_BFG3\000"
.LASF406:
	.ascii	"S_BFG4\000"
.LASF318:
	.ascii	"spritenum_t\000"
.LASF365:
	.ascii	"S_DSNR2\000"
.LASF905:
	.ascii	"S_SKULL_STND2\000"
.LASF1708:
	.ascii	"floordata\000"
.LASF1168:
	.ascii	"S_PINV2\000"
.LASF1169:
	.ascii	"S_PINV3\000"
.LASF1170:
	.ascii	"S_PINV4\000"
.LASF1283:
	.ascii	"S_TECH2LAMP2\000"
.LASF1284:
	.ascii	"S_TECH2LAMP3\000"
.LASF1285:
	.ascii	"S_TECH2LAMP4\000"
.LASF1929:
	.ascii	"finecosine\000"
.LASF1732:
	.ascii	"line_s\000"
.LASF8:
	.ascii	"long long int\000"
.LASF179:
	.ascii	"SPR_PUNG\000"
.LASF749:
	.ascii	"S_CPOS_XDIE2\000"
.LASF750:
	.ascii	"S_CPOS_XDIE3\000"
.LASF751:
	.ascii	"S_CPOS_XDIE4\000"
.LASF752:
	.ascii	"S_CPOS_XDIE5\000"
.LASF753:
	.ascii	"S_CPOS_XDIE6\000"
.LASF934:
	.ascii	"S_SPID_ATK1\000"
.LASF935:
	.ascii	"S_SPID_ATK2\000"
.LASF936:
	.ascii	"S_SPID_ATK3\000"
.LASF64:
	.ascii	"_flags2\000"
.LASF1659:
	.ascii	"comp_zombie\000"
.LASF658:
	.ascii	"S_SKEL_MISS1\000"
.LASF659:
	.ascii	"S_SKEL_MISS2\000"
.LASF660:
	.ascii	"S_SKEL_MISS3\000"
.LASF661:
	.ascii	"S_SKEL_MISS4\000"
.LASF415:
	.ascii	"S_PUFF4\000"
.LASF1155:
	.ascii	"S_RSKULL\000"
.LASF987:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF1982:
	.ascii	"R_CachePatchNum\000"
.LASF1465:
	.ascii	"MT_MISC50\000"
.LASF835:
	.ascii	"S_HEAD_RAISE1\000"
.LASF1500:
	.ascii	"MT_MISC85\000"
.LASF836:
	.ascii	"S_HEAD_RAISE2\000"
.LASF1346:
	.ascii	"S_BSKUL_DIE1\000"
.LASF837:
	.ascii	"S_HEAD_RAISE3\000"
.LASF1348:
	.ascii	"S_BSKUL_DIE3\000"
.LASF242:
	.ascii	"SPR_BSKU\000"
.LASF1350:
	.ascii	"S_BSKUL_DIE5\000"
.LASF839:
	.ascii	"S_HEAD_RAISE5\000"
.LASF1352:
	.ascii	"S_BSKUL_DIE7\000"
.LASF840:
	.ascii	"S_HEAD_RAISE6\000"
.LASF1756:
	.ascii	"sidedef\000"
.LASF1980:
	.ascii	"memset\000"
.LASF1681:
	.ascii	"ns_global\000"
.LASF1443:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF253:
	.ascii	"SPR_PMAP\000"
.LASF1103:
	.ascii	"S_BRAINEYE\000"
.LASF1624:
	.ascii	"m_sector\000"
.LASF1909:
	.ascii	"post\000"
.LASF254:
	.ascii	"SPR_PVIS\000"
.LASF1257:
	.ascii	"S_BTORCHSHRT\000"
.LASF1639:
	.ascii	"PST_LIVE\000"
.LASF1913:
	.ascii	"cliptop\000"
.LASF1401:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1724:
	.ascii	"ceiling_yoffs\000"
.LASF1854:
	.ascii	"edgetype\000"
.LASF581:
	.ascii	"S_VILE_ATK8\000"
.LASF522:
	.ascii	"S_POSS_RAISE1\000"
.LASF523:
	.ascii	"S_POSS_RAISE2\000"
.LASF524:
	.ascii	"S_POSS_RAISE3\000"
.LASF525:
	.ascii	"S_POSS_RAISE4\000"
.LASF377:
	.ascii	"S_MISSILEDOWN\000"
.LASF1657:
	.ascii	"comp_doorstuck\000"
.LASF1843:
	.ascii	"RDRAW_MASKEDCOLUMNEDGE_SLOPED\000"
.LASF1783:
	.ascii	"sprtopclip\000"
.LASF1241:
	.ascii	"S_FLOATSKULL2\000"
.LASF1242:
	.ascii	"S_FLOATSKULL3\000"
.LASF1943:
	.ascii	"numsprites\000"
.LASF1176:
	.ascii	"S_MEGA\000"
.LASF856:
	.ascii	"S_BOSS_ATK1\000"
.LASF857:
	.ascii	"S_BOSS_ATK2\000"
.LASF858:
	.ascii	"S_BOSS_ATK3\000"
.LASF1558:
	.ascii	"subsector\000"
.LASF312:
	.ascii	"SPR_BRS1\000"
.LASF1694:
	.ascii	"vertex_t\000"
.LASF663:
	.ascii	"S_SKEL_PAIN2\000"
.LASF1200:
	.ascii	"S_CSAW\000"
.LASF153:
	.ascii	"pw_invulnerability\000"
.LASF843:
	.ascii	"S_BRBALLX1\000"
.LASF844:
	.ascii	"S_BRBALLX2\000"
.LASF845:
	.ascii	"S_BRBALLX3\000"
.LASF127:
	.ascii	"PU_MAX\000"
.LASF974:
	.ascii	"S_BSPI_DIE3\000"
.LASF975:
	.ascii	"S_BSPI_DIE4\000"
.LASF976:
	.ascii	"S_BSPI_DIE5\000"
.LASF138:
	.ascii	"wp_chaingun\000"
.LASF978:
	.ascii	"S_BSPI_DIE7\000"
.LASF902:
	.ascii	"S_BOS2_RAISE6\000"
.LASF529:
	.ascii	"S_SPOS_RUN2\000"
.LASF1738:
	.ascii	"backsector\000"
.LASF530:
	.ascii	"S_SPOS_RUN3\000"
.LASF1032:
	.ascii	"S_PAIN_PAIN2\000"
.LASF667:
	.ascii	"S_SKEL_DIE4\000"
.LASF88:
	.ascii	"__FILE\000"
.LASF1484:
	.ascii	"MT_MISC69\000"
.LASF1597:
	.ascii	"armortype\000"
.LASF1858:
	.ascii	"int_topleft\000"
.LASF313:
	.ascii	"SPR_TLMP\000"
.LASF1807:
	.ascii	"RDRAW_EDGESLOPE_BOT_DOWN\000"
.LASF1928:
	.ascii	"R_DrawMasked\000"
.LASF494:
	.ascii	"S_POSS_STND2\000"
.LASF1442:
	.ascii	"MT_SHOTGUN\000"
.LASF1948:
	.ascii	"viewplayer\000"
.LASF24:
	.ascii	"_sign\000"
.LASF1797:
	.ascii	"vissprite_t\000"
.LASF1367:
	.ascii	"MT_SHOTGUY\000"
.LASF1612:
	.ascii	"itemcount\000"
.LASF29:
	.ascii	"__tm_min\000"
.LASF1805:
	.ascii	"RDRAW_EDGESLOPE_TOP_DOWN\000"
.LASF1278:
	.ascii	"S_TECHLAMP\000"
.LASF1388:
	.ascii	"MT_WOLFSS\000"
.LASF1643:
	.ascii	"player_t\000"
.LASF122:
	.ascii	"PU_MUSIC\000"
.LASF1306:
	.ascii	"S_DOGS_DIE1\000"
.LASF1307:
	.ascii	"S_DOGS_DIE2\000"
.LASF1905:
	.ascii	"nextcolumn\000"
.LASF876:
	.ascii	"S_BOS2_STND2\000"
.LASF1704:
	.ascii	"soundtarget\000"
.LASF371:
	.ascii	"S_CHAIN1\000"
.LASF372:
	.ascii	"S_CHAIN2\000"
.LASF373:
	.ascii	"S_CHAIN3\000"
.LASF424:
	.ascii	"S_RBALLX2\000"
.LASF425:
	.ascii	"S_RBALLX3\000"
.LASF298:
	.ascii	"SPR_TBLU\000"
.LASF527:
	.ascii	"S_SPOS_STND2\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF1922:
	.ascii	"num_vissprite_alloc_prev\000"
.LASF102:
	.ascii	"_r48\000"
.LASF1554:
	.ascii	"snext\000"
.LASF1654:
	.ascii	"comp_floors\000"
.LASF1888:
	.ascii	"FixedDiv\000"
.LASF152:
	.ascii	"am_noammo\000"
.LASF1919:
	.ascii	"tr_x\000"
.LASF169:
	.ascii	"thinker_s\000"
.LASF176:
	.ascii	"thinker_t\000"
.LASF1648:
	.ascii	"comp_skull\000"
.LASF1864:
	.ascii	"filtersprite\000"
.LASF1336:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1337:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1338:
	.ascii	"S_BSKUL_RUN3\000"
.LASF1339:
	.ascii	"S_BSKUL_RUN4\000"
.LASF503:
	.ascii	"S_POSS_ATK1\000"
.LASF504:
	.ascii	"S_POSS_ATK2\000"
.LASF505:
	.ascii	"S_POSS_ATK3\000"
.LASF1486:
	.ascii	"MT_MISC71\000"
.LASF1266:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1267:
	.ascii	"S_RTORCHSHRT3\000"
.LASF937:
	.ascii	"S_SPID_ATK4\000"
.LASF4:
	.ascii	"short int\000"
.LASF1492:
	.ascii	"MT_MISC77\000"
.LASF1493:
	.ascii	"MT_MISC78\000"
.LASF1530:
	.ascii	"missilestate\000"
.LASF1494:
	.ascii	"MT_MISC79\000"
.LASF1800:
	.ascii	"spriteframe_t\000"
.LASF1383:
	.ascii	"MT_SKULL\000"
.LASF1645:
	.ascii	"comp_dropoff\000"
.LASF53:
	.ascii	"_read\000"
.LASF1370:
	.ascii	"MT_UNDEAD\000"
.LASF1967:
	.ascii	"mfloorclip\000"
.LASF170:
	.ascii	"prev\000"
.LASF1826:
	.ascii	"rpatch_t\000"
.LASF664:
	.ascii	"S_SKEL_DIE1\000"
.LASF665:
	.ascii	"S_SKEL_DIE2\000"
.LASF666:
	.ascii	"S_SKEL_DIE3\000"
.LASF209:
	.ascii	"SPR_FIRE\000"
.LASF668:
	.ascii	"S_SKEL_DIE5\000"
.LASF669:
	.ascii	"S_SKEL_DIE6\000"
.LASF92:
	.ascii	"_rand48\000"
.LASF1394:
	.ascii	"MT_SPAWNFIRE\000"
.LASF1965:
	.ascii	"negonearray\000"
.LASF1275:
	.ascii	"S_COLONGIBS\000"
.LASF314:
	.ascii	"SPR_TLP2\000"
.LASF426:
	.ascii	"S_PLASBALL\000"
.LASF270:
	.ascii	"SPR_SGN2\000"
.LASF1550:
	.ascii	"options\000"
.LASF223:
	.ascii	"SPR_BSPI\000"
.LASF1676:
	.ascii	"source_net\000"
.LASF225:
	.ascii	"SPR_APBX\000"
.LASF1620:
	.ascii	"colormap\000"
.LASF1418:
	.ascii	"MT_MISC10\000"
.LASF1419:
	.ascii	"MT_MISC11\000"
.LASF1420:
	.ascii	"MT_MISC12\000"
.LASF1422:
	.ascii	"MT_MISC13\000"
.LASF949:
	.ascii	"S_SPID_DIE10\000"
.LASF1425:
	.ascii	"MT_MISC15\000"
.LASF1426:
	.ascii	"MT_MISC16\000"
.LASF1429:
	.ascii	"MT_MISC17\000"
.LASF1430:
	.ascii	"MT_MISC18\000"
.LASF1189:
	.ascii	"S_CLIP\000"
.LASF1535:
	.ascii	"radius\000"
.LASF1568:
	.ascii	"health\000"
.LASF1324:
	.ascii	"S_PLS1EXP2\000"
.LASF1325:
	.ascii	"S_PLS1EXP3\000"
.LASF1326:
	.ascii	"S_PLS1EXP4\000"
.LASF1327:
	.ascii	"S_PLS1EXP5\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
