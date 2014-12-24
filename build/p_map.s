	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"p_map.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	PIT_StompThing
	.type	PIT_StompThing, %function
PIT_StompThing:
.LFB4:
	.file 1 "c:/devl/prboom3ds/src/p_map.c"
	.loc 1 104 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 111 0
	ldr	ip, .L12
	.loc 1 104 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 111 0
	ldr	r1, [ip]
	cmp	r0, r1
	beq	.L6
	.loc 1 114 0
	ldrd	r4, [r0, #120]
	mov	r5, #0
	and	r4, r4, #4
	orrs	r3, r4, r5
	beq	.L6
	.loc 1 119 0
	ldr	r4, [ip, #4]
	ldr	r3, [r0, #24]
	.loc 1 117 0
	ldr	lr, [r0, #80]
	.loc 1 119 0
	rsb	r3, r4, r3
.LBB200:
.LBB201:
	.file 2 "c:/devl/prboom3ds/src/m_fixed.h"
	.loc 2 59 0
	mov	r4, r3, asr #31
.LBE201:
.LBE200:
	.loc 1 117 0
	ldr	r5, [r1, #80]
.LBB203:
.LBB202:
	.loc 2 60 0
	eor	r3, r3, r4
	rsb	r3, r4, r3
.LBE202:
.LBE203:
	.loc 1 117 0
	add	lr, lr, r5
.LVL1:
	.loc 1 119 0
	cmp	lr, r3
	ble	.L6
	.loc 1 119 0 is_stmt 0 discriminator 1
	ldr	r2, [ip, #8]
	ldr	r3, [r0, #28]
	rsb	r3, r2, r3
.LVL2:
.LBB204:
.LBB205:
	.loc 2 59 0 is_stmt 1 discriminator 1
	mov	r2, r3, asr #31
.LVL3:
	.loc 2 60 0 discriminator 1
	eor	r3, r3, r2
.LVL4:
	rsb	r3, r2, r3
.LBE205:
.LBE204:
	.loc 1 119 0 discriminator 1
	cmp	lr, r3
	ble	.L6
	.loc 1 123 0
	ldr	r3, [ip, #12]
	cmp	r3, #0
	beq	.L2
	.loc 1 126 0
	ldr	r3, .L12+4
	mov	r2, r1
.LVL5:
	bl	P_DamageMobj
.LVL6:
	.loc 1 128 0
	mov	r3, #1
	b	.L2
.LVL7:
.L6:
	.loc 1 112 0
	mov	r3, #1
.LVL8:
.L2:
	.loc 1 129 0
	mov	r0, r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	10000
	.cfi_endproc
.LFE4:
	.size	PIT_StompThing, .-PIT_StompThing
	.align	2
	.type	PIT_CrossLine, %function
PIT_CrossLine:
.LFB8:
	.loc 1 357 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	.loc 1 358 0
	ldrh	r3, [r0, #20]
	and	r3, r3, #7
	cmp	r3, #4
	beq	.L20
	.loc 1 360 0
	ldr	r3, .L23
	ldr	r2, [r0, #44]
	ldr	r1, [r3, #8]
	cmp	r1, r2
	bgt	.L20
	.loc 1 360 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #12]
	ldr	r2, [r0, #40]
	cmp	r1, r2
	blt	.L20
	.loc 1 361 0 is_stmt 1
	ldr	r1, [r3]
	ldr	r2, [r0, #36]
	cmp	r1, r2
	blt	.L20
	.loc 1 360 0
	ldr	r2, [r3, #4]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bgt	.L20
	.loc 1 357 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 364 0
	ldr	r6, .L23+4
	mov	r4, r0
	mov	r2, r0
	ldr	r1, [r6, #20]
	ldr	r0, [r6, #16]
.LVL10:
	bl	P_PointOnLineSide
.LVL11:
	mov	r2, r4
	mov	r5, r0
	ldr	r1, [r6, #28]
	ldr	r0, [r6, #24]
	bl	P_PointOnLineSide
.LVL12:
	rsb	r0, r0, r5
	clz	r0, r0
	mov	r0, r0, lsr #5
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL13:
.L20:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 1 366 0
	mov	r0, #1
.LVL14:
	bx	lr
.L24:
	.align	2
.L23:
	.word	tmbbox
	.word	.LANCHOR0
	.cfi_endproc
.LFE8:
	.size	PIT_CrossLine, .-PIT_CrossLine
	.align	2
	.type	untouched, %function
untouched:
.LFB9:
	.loc 1 375 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL15:
	.loc 1 378 0
	ldr	r3, .L30
	.loc 1 375 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 378 0
	ldr	r2, [r3]
	.loc 1 381 0
	ldr	lr, [r0, #40]
	.loc 1 378 0
	ldr	r3, [r2, #24]
.LVL16:
	ldr	r1, [r2, #80]
	.loc 1 375 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 1 378 0
	add	ip, r3, r1
	.loc 1 381 0
	cmp	ip, lr
	.loc 1 378 0
	str	ip, [sp, #12]
	.loc 1 381 0
	ble	.L28
	.loc 1 378 0
	ldr	ip, [r0, #44]
	.loc 1 379 0
	rsb	r3, r1, r3
.LVL17:
	.loc 1 378 0
	cmp	r3, ip
	.loc 1 379 0
	str	r3, [sp, #8]
	.loc 1 378 0
	bge	.L28
	.loc 1 380 0
	ldr	r3, [r2, #28]
.LVL18:
	.loc 1 379 0
	ldr	ip, [r0, #36]
	.loc 1 380 0
	add	r2, r1, r3
.LVL19:
	.loc 1 379 0
	cmp	r2, ip
	.loc 1 380 0
	str	r2, [sp]
	.loc 1 379 0
	ble	.L28
	.loc 1 380 0
	ldr	r2, [r0, #32]
	.loc 1 381 0
	rsb	r1, r1, r3
	.loc 1 380 0
	cmp	r1, r2
	.loc 1 381 0
	str	r1, [sp, #4]
	.loc 1 380 0
	bge	.L28
	mov	r1, r0
	.loc 1 382 0 discriminator 2
	mov	r0, sp
.LVL20:
	bl	P_BoxOnLineSide
.LVL21:
	.loc 1 381 0 discriminator 2
	adds	r0, r0, #1
	movne	r0, #1
	.loc 1 383 0 discriminator 2
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL22:
.L28:
	.cfi_restore_state
	.loc 1 381 0
	mov	r0, #1
.LVL23:
	.loc 1 383 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.cfi_endproc
.LFE9:
	.size	untouched, .-untouched
	.global	__aeabi_ldivmod
	.align	2
	.type	PIT_ApplyTorque, %function
PIT_ApplyTorque:
.LFB15:
	.loc 1 895 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL24:
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
	.loc 1 896 0
	ldr	r5, [r0, #56]
	cmp	r5, #0
	beq	.L33
	.loc 1 897 0 discriminator 1
	ldr	r3, .L62
	.loc 1 896 0 discriminator 1
	ldr	r2, [r0, #40]
	ldr	r1, [r3, #12]
	cmp	r1, r2
	ble	.L33
	.loc 1 897 0
	ldr	r1, [r3, #8]
	ldr	r2, [r0, #44]
	cmp	r1, r2
	bge	.L33
	.loc 1 898 0
	ldr	r1, [r3]
	ldr	r2, [r0, #36]
	cmp	r1, r2
	ble	.L33
	.loc 1 899 0
	ldr	r1, [r3, #4]
	ldr	r2, [r0, #32]
	cmp	r1, r2
	bge	.L33
	mov	r4, r0
	.loc 1 901 0
	mov	r0, r3
.LVL25:
	mov	r1, r4
	bl	P_BoxOnLineSide
.LVL26:
	.loc 1 900 0
	cmn	r0, #1
	beq	.L59
.LVL27:
.L33:
	.loc 1 962 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL28:
.L59:
.LBB206:
	.loc 1 903 0
	ldr	r3, .L62+4
	.loc 1 908 0
	ldr	r9, [r4, #4]
	.loc 1 903 0
	ldr	r6, [r3]
.LVL29:
	.loc 1 906 0
	ldr	r8, [r4, #12]
	.loc 1 907 0
	ldr	r7, [r4, #16]
	.loc 1 906 0
	ldrsh	r2, [r6, #30]
	.loc 1 907 0
	ldrsh	ip, [r6, #26]
	.loc 1 906 0
	mov	r3, r8, asr #16
	.loc 1 907 0
	mov	lr, r7, asr #16
	.loc 1 908 0
	ldrsh	r0, [r9, #6]
	.loc 1 906 0
	mul	r1, r2, r3
	.loc 1 907 0
	mul	r2, ip, lr
	.loc 1 908 0
	mul	r0, r0, r3
	.loc 1 907 0
	rsb	r2, r2, r1
	.loc 1 909 0
	ldrsh	r9, [r9, #2]
	.loc 1 908 0
	rsb	r3, r0, r2
.LVL30:
	.loc 1 911 0
	mlas	r9, lr, r9, r3
.LVL31:
	bmi	.L60
	.loc 1 914 0
	ldr	r2, [r5, #12]
	ldr	r3, [r6, #32]
	cmp	r2, r3
	bge	.L33
	.loc 1 915 0 discriminator 1
	ldr	r2, [r4, #52]
	.loc 1 914 0 discriminator 1
	ldr	r2, [r2, #12]
	cmp	r3, r2
	movgt	r3, #0
	movle	r3, #1
.L36:
	.loc 1 911 0 discriminator 1
	cmp	r3, #0
	beq	.L33
.LVL32:
.LBB207:
.LBB208:
.LBB209:
	.loc 2 59 0
	mov	r10, r8, asr #31
.LBE209:
.LBE208:
.LBB212:
.LBB213:
	mov	r3, r7, asr #31
.LBE213:
.LBE212:
.LBB216:
.LBB210:
	.loc 2 60 0
	eor	r2, r10, r8
.LBE210:
.LBE216:
.LBB217:
.LBB214:
	eor	r0, r3, r7
.LBE214:
.LBE217:
.LBB218:
.LBB211:
	rsb	r10, r10, r2
.LVL33:
.LBE211:
.LBE218:
.LBB219:
.LBB215:
	rsb	r3, r3, r0
.LVL34:
.LBE215:
.LBE219:
	.loc 1 923 0
	cmp	r10, r3
	movlt	r2, r10
	movlt	r10, r3
	movlt	r3, r2
.LVL35:
.LBB220:
.LBB221:
.LBB222:
.LBB223:
	.loc 2 59 0
	mov	fp, r10, asr #31
.LBE223:
.LBE222:
.LBB226:
.LBB227:
	mov	r2, r3, asr #31
.LVL36:
	.loc 2 60 0
	eor	r1, r2, r3
.LBE227:
.LBE226:
.LBB229:
.LBB224:
	eor	r0, fp, r10
.LBE224:
.LBE229:
.LBB230:
.LBB228:
	rsb	r2, r2, r1
.LBE228:
.LBE230:
.LBB231:
.LBB225:
	rsb	fp, fp, r0
.LVL37:
.LBE225:
.LBE231:
	.loc 2 84 0
	cmp	fp, r2, asr #14
	bgt	.L39
	eor	r0, r3, r10
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL38:
.L40:
.LBE221:
.LBE220:
	.loc 1 930 0
	ldr	r3, .L62+8
	mov	r0, r0, asr #5
	ldr	r3, [r3, r0, asl #2]
	.loc 1 941 0
	ldrh	r4, [r6, #154]
.LVL39:
	.loc 1 930 0
	add	r3, r3, #1073741824
	ldr	r2, .L62+12
	.loc 1 931 0
	mov	r3, r3, lsr #19
	.loc 1 941 0
	sxth	r5, r4
	cmp	r5, #5
	.loc 1 930 0
	ldr	r2, [r2, r3, asl #2]
.LVL40:
	.loc 1 942 0
	rsble	r3, r5, #6
	.loc 1 943 0
	subgt	r3, r5, #6
	.loc 1 941 0
	movle	r2, r2, asl r3
.LVL41:
	movgt	r2, r2, asr r3
.LVL42:
.LBB233:
.LBB234:
	.loc 2 72 0
	smull	r2, r3, r9, r2
.LVL43:
	mov	r0, r2, lsr #16
.LVL44:
	orr	r0, r0, r3, asl #16
.LVL45:
.LBE234:
.LBE233:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
	.loc 2 59 0
	mov	r2, r0, asr #31
.LVL46:
	.loc 2 60 0
	eor	r3, r2, r0
	rsb	r3, r2, r3
.LBE238:
.LBE237:
	.loc 2 84 0
	cmp	fp, r3, asr #14
	bgt	.L43
	eor	r0, r0, r10
.LVL47:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL48:
.L44:
.LBE236:
.LBE235:
.LBB240:
.LBB241:
	.loc 2 72 0
	smull	r2, r3, r7, r0
.LBE241:
.LBE240:
.LBB244:
.LBB245:
	smull	r0, r1, r0, r8
.LVL49:
.LBE245:
.LBE244:
.LBB248:
.LBB242:
	mov	ip, r2, lsr #16
.LBE242:
.LBE248:
.LBB249:
.LBB246:
	mov	r2, r0, lsr #16
.LBE246:
.LBE249:
.LBB250:
.LBB243:
	orr	ip, ip, r3, asl #16
.LVL50:
.LBE243:
.LBE250:
.LBB251:
.LBB247:
	orr	r1, r2, r1, asl #16
.LVL51:
.LBE247:
.LBE251:
.LBB252:
.LBB253:
	smull	r10, fp, ip, ip
.LVL52:
.LBE253:
.LBE252:
.LBB256:
.LBB257:
	smull	r8, r9, r1, r1
.LVL53:
.LBE257:
.LBE256:
.LBB260:
.LBB254:
	mov	r3, r10, lsr #16
.LBE254:
.LBE260:
.LBB261:
.LBB258:
	mov	r2, r8, lsr #16
.LBE258:
.LBE261:
.LBB262:
.LBB255:
	orr	r3, r3, fp, asl #16
.LBE255:
.LBE262:
.LBB263:
.LBB259:
	orr	r2, r2, r9, asl #16
.LBE259:
.LBE263:
	.loc 1 952 0
	add	r2, r3, r2
.LVL54:
	.loc 1 954 0
	cmp	r2, #262144
	ble	.L45
	cmp	r5, #21
	bgt	.L45
	add	r3, r4, #1
	uxth	r3, r3
	b	.L47
.LVL55:
.L61:
	.loc 1 954 0 is_stmt 0 discriminator 1
	cmp	r3, #23
	beq	.L58
.L47:
	.loc 1 955 0 is_stmt 1
	mov	r2, r2, asr #1
.LVL56:
	add	r0, r3, #1
	.loc 1 954 0
	cmp	r2, #262144
	.loc 1 955 0
	uxth	lr, r3
	mov	ip, ip, asr #1
.LVL57:
	mov	r1, r1, asr #1
.LVL58:
	uxth	r3, r0
	.loc 1 954 0
	bgt	.L61
.L58:
	strh	lr, [r6, #154]	@ movhi
.L45:
	.loc 1 957 0
	ldr	r2, [r6, #88]
.LVL59:
	.loc 1 958 0
	ldr	r3, [r6, #92]
	.loc 1 957 0
	rsb	ip, ip, r2
.LVL60:
	.loc 1 958 0
	add	r1, r3, r1
.LVL61:
	.loc 1 957 0
	str	ip, [r6, #88]
	.loc 1 958 0
	str	r1, [r6, #92]
	b	.L33
.LVL62:
.L43:
.LBB264:
.LBB239:
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, r10
.LVL63:
	mov	r3, r10, asr #31
	mov	r0, r0, asl #16
.LVL64:
	bl	__aeabi_ldivmod
.LVL65:
	b	.L44
.LVL66:
.L39:
.LBE239:
.LBE264:
.LBB265:
.LBB232:
	mov	r1, r3, asr #31
	mov	r1, r1, asl #16
	orr	r1, r1, r3, lsr #16
	mov	r0, r3, asl #16
	mov	r2, r10
	mov	r3, r10, asr #31
.LVL67:
	bl	__aeabi_ldivmod
.LVL68:
	b	.L40
.LVL69:
.L60:
.LBE232:
.LBE265:
.LBE207:
	.loc 1 912 0
	ldr	r2, [r4, #52]
	ldr	r3, [r6, #32]
	ldr	r2, [r2, #12]
	cmp	r2, r3
	bge	.L33
	.loc 1 912 0 is_stmt 0 discriminator 1
	ldr	r2, [r5, #12]
	cmp	r3, r2
	movgt	r3, #0
	movle	r3, #1
	b	.L36
.L63:
	.align	2
.L62:
	.word	tmbbox
	.word	.LANCHOR0
	.word	tantoangle
	.word	finesine
.LBE206:
	.cfi_endproc
.LFE15:
	.size	PIT_ApplyTorque, .-PIT_ApplyTorque
	.align	2
	.global	PTR_AimTraverse
	.type	PTR_AimTraverse, %function
PTR_AimTraverse:
.LFB21:
	.loc 1 1389 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL70:
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
	.loc 1 1397 0
	ldr	r4, [r0, #4]
	.loc 1 1389 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 1397 0
	cmp	r4, #0
	.loc 1 1389 0
	mov	r9, r0
	.loc 1 1397 0
	beq	.L65
	.loc 1 1399 0
	ldr	r4, [r0, #8]
.LVL71:
	.loc 1 1401 0
	ldrh	r3, [r4, #20]
	tst	r3, #4
	bne	.L66
.LVL72:
.L68:
	.loc 1 1402 0
	mov	r4, #0
.LVL73:
.L67:
	.loc 1 1475 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL74:
.L65:
	.cfi_restore_state
	.loc 1 1438 0
	ldr	r8, .L94
	.loc 1 1437 0
	ldr	r5, [r0, #8]
.LVL75:
	.loc 1 1438 0
	ldr	ip, [r8, #40]
	cmp	r5, ip
	beq	.L86
	.loc 1 1441 0
	ldrd	r2, [r5, #120]
	mov	r1, #0
	and	r0, r2, #4
.LVL76:
	orrs	r1, r0, r1
	beq	.L86
	.loc 1 1447 0
	ldrd	r10, [ip, #120]
	ldrd	r6, [r8, #48]
	and	r3, r3, fp
	and	r2, r2, r10
	and	r6, r6, r2
	and	r7, r7, r3
	orrs	r3, r6, r7
	beq	.L77
	.loc 1 1447 0 is_stmt 0 discriminator 1
	ldr	r3, [r5, #156]
	cmp	r3, #0
	beq	.L86
.L77:
	.loc 1 1452 0 is_stmt 1
	ldr	r2, .L94+4
	ldr	r3, [r9]
	ldr	r2, [r2]
.LVL77:
	.loc 1 1453 0
	ldr	r1, .L94+8
.LBB266:
.LBB267:
	.loc 2 72 0
	smull	r2, r3, r2, r3
.LVL78:
.LBE267:
.LBE266:
	.loc 1 1453 0
	ldr	fp, [r5, #32]
	ldr	r0, [r5, #84]
	ldr	r7, [r1]
.LBB270:
.LBB268:
	.loc 2 72 0
	mov	r9, r2, lsr #16
.LVL79:
.LBE268:
.LBE270:
	.loc 1 1453 0
	add	r0, fp, r0
.LBB271:
.LBB269:
	.loc 2 72 0
	orr	r9, r9, r3, asl #16
.LBE269:
.LBE271:
	.loc 1 1453 0
	rsb	r0, r7, r0
.LVL80:
.LBB272:
.LBB273:
.LBB274:
.LBB275:
	.loc 2 59 0
	mov	r1, r9, asr #31
.LBE275:
.LBE274:
.LBB278:
.LBB279:
	mov	r2, r0, asr #31
.LVL81:
.LBE279:
.LBE278:
.LBB282:
.LBB276:
	.loc 2 60 0
	eor	r10, r1, r9
.LBE276:
.LBE282:
.LBB283:
.LBB280:
	eor	r3, r2, r0
.LVL82:
.LBE280:
.LBE283:
.LBB284:
.LBB277:
	rsb	r10, r1, r10
.LBE277:
.LBE284:
.LBB285:
.LBB281:
	rsb	r3, r2, r3
.LBE281:
.LBE285:
	.loc 2 84 0
	cmp	r10, r3, asr #14
	ble	.L91
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
.LVL83:
	orr	r1, r1, r0, lsr #16
	mov	r2, r9
.LVL84:
	mov	r0, r0, asl #16
.LVL85:
	mov	r3, r9, asr #31
.LVL86:
	bl	__aeabi_ldivmod
.LVL87:
	mov	r6, r0
.L79:
.LBE273:
.LBE272:
	.loc 1 1455 0
	ldr	ip, [r8, #32]
	cmp	ip, r6
	bgt	.L86
	.loc 1 1458 0
	rsb	r0, r7, fp
.LVL88:
.LBB287:
.LBB288:
.LBB289:
.LBB290:
	.loc 2 59 0
	mov	r2, r0, asr #31
.LVL89:
	.loc 2 60 0
	eor	r3, r2, r0
	rsb	r3, r2, r3
.LBE290:
.LBE289:
	.loc 2 84 0
	cmp	r10, r3, asr #14
	bgt	.L80
	eor	r0, r0, r9
.LVL90:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL91:
.L81:
.LBE288:
.LBE287:
	.loc 1 1460 0
	ldr	r3, [r8, #36]
	ldr	r2, .L94
	cmp	r3, r0
	blt	.L86
.LVL92:
	cmp	r0, ip
	movlt	r0, ip
.LVL93:
	.loc 1 1471 0
	cmp	r6, r3
	addle	r6, r0, r6
	addgt	r6, r0, r3
.LVL94:
	.loc 1 1472 0
	ldr	r3, .L94+12
	.loc 1 1471 0
	add	r6, r6, r6, lsr #31
	mov	r6, r6, asr #1
	str	r6, [r2, #56]
	.loc 1 1472 0
	str	r5, [r3]
	.loc 1 1474 0
	b	.L67
.LVL95:
.L86:
	.loc 1 1439 0
	mov	r4, #1
	.loc 1 1475 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL96:
.L66:
	.cfi_restore_state
	.loc 1 1408 0
	mov	r0, r4
.LVL97:
	bl	P_LineOpening
.LVL98:
	.loc 1 1410 0
	ldr	r2, .L94+16
	ldr	r3, .L94+20
	ldr	r1, [r2]
	ldr	r5, [r3]
	cmp	r1, r5
	bge	.L68
	.loc 1 1413 0
	ldr	r2, .L94+4
	ldr	r3, [r9]
	ldr	r2, [r2]
.LVL99:
	.loc 1 1415 0
	ldr	r7, [r4, #52]
.LBB292:
.LBB293:
	.loc 2 72 0
	smull	r2, r3, r2, r3
.LVL100:
.LBE293:
.LBE292:
	.loc 1 1415 0
	ldr	r9, [r4, #56]
.LVL101:
	ldr	lr, [r7, #12]
	ldr	ip, [r9, #12]
.LBB296:
.LBB294:
	.loc 2 72 0
	mov	r0, r2, lsr #16
.LBE294:
.LBE296:
	.loc 1 1415 0
	cmp	lr, ip
.LBB297:
.LBB295:
	.loc 2 72 0
	orr	r6, r0, r3, asl #16
.LBE295:
.LBE297:
	.loc 1 1415 0
	beq	.L92
	.loc 1 1417 0
	ldr	r3, .L94+8
.LVL102:
.LBB298:
.LBB299:
.LBB300:
.LBB301:
	.loc 2 59 0
	mov	r2, r6, asr #31
.LBE301:
.LBE300:
.LBE299:
.LBE298:
	.loc 1 1417 0
	ldr	r3, [r3]
.LBB311:
.LBB308:
.LBB304:
.LBB302:
	.loc 2 60 0
	eor	ip, r2, r6
.LBE302:
.LBE304:
.LBE308:
.LBE311:
	.loc 1 1417 0
	rsb	r3, r3, r1
.LVL103:
.LBB312:
.LBB309:
.LBB305:
.LBB306:
	.loc 2 59 0
	mov	r0, r3, asr #31
.LVL104:
	.loc 2 60 0
	eor	r1, r0, r3
	rsb	r1, r0, r1
.LBE306:
.LBE305:
.LBB307:
.LBB303:
	rsb	r2, r2, ip
.LVL105:
.LBE303:
.LBE307:
	.loc 2 84 0
	cmp	r2, r1, asr #14
	ble	.L93
	.loc 2 85 0
	mov	r1, r3, asr #31
	mov	r1, r1, asl #16
	orr	r1, r1, r3, lsr #16
	mov	r0, r3, asl #16
.LVL106:
	mov	r2, r6
	mov	r3, r6, asr #31
.LVL107:
	bl	__aeabi_ldivmod
.LVL108:
.L72:
.LBE309:
.LBE312:
	.loc 1 1418 0
	ldr	r8, .L94
	ldr	r4, [r8, #32]
.LVL109:
	cmp	r4, r0
	.loc 1 1419 0
	movlt	r4, r0
	strlt	r0, [r8, #32]
.LVL110:
.L70:
	.loc 1 1422 0
	ldr	r3, [r9, #16]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	ldreq	r3, [r8, #36]
	beq	.L74
	.loc 1 1424 0
	ldr	r2, .L94+8
.LBB313:
.LBB314:
.LBB315:
.LBB316:
	.loc 2 59 0
	mov	r3, r6, asr #31
.LBE316:
.LBE315:
.LBE314:
.LBE313:
	.loc 1 1424 0
	ldr	r0, [r2]
.LBB326:
.LBB323:
.LBB319:
.LBB317:
	.loc 2 60 0
	eor	r2, r3, r6
.LBE317:
.LBE319:
.LBE323:
.LBE326:
	.loc 1 1424 0
	rsb	r0, r0, r5
.LVL111:
.LBB327:
.LBB324:
.LBB320:
.LBB321:
	.loc 2 59 0
	mov	ip, r0, asr #31
.LVL112:
	.loc 2 60 0
	eor	r1, ip, r0
	rsb	r1, ip, r1
.LBE321:
.LBE320:
.LBB322:
.LBB318:
	rsb	r3, r3, r2
.LVL113:
.LBE318:
.LBE322:
	.loc 2 84 0
	cmp	r3, r1, asr #14
	bgt	.L75
	eor	r0, r0, r6
.LVL114:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL115:
.L76:
.LBE324:
.LBE327:
	.loc 1 1425 0
	ldr	r3, [r8, #36]
	ldr	r2, .L94
	cmp	r3, r0
	.loc 1 1426 0
	movgt	r3, r0
	strgt	r0, [r2, #36]
.LVL116:
.L74:
	.loc 1 1429 0
	cmp	r4, r3
	movge	r4, #0
	movlt	r4, #1
	.loc 1 1475 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL117:
.L91:
	.cfi_restore_state
.LBB328:
.LBB286:
	.loc 2 84 0
	eor	r6, r9, r0
	mov	r6, r6, asr #31
	eor	r6, r6, #-2147483648
	mvn	r6, r6
	b	.L79
.LVL118:
.L80:
.LBE286:
.LBE328:
.LBB329:
.LBB291:
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, r9
.LVL119:
	mov	r0, r0, asl #16
.LVL120:
	mov	r3, r9, asr #31
	str	ip, [sp, #4]
	bl	__aeabi_ldivmod
.LVL121:
	ldr	ip, [sp, #4]
	b	.L81
.LVL122:
.L93:
.LBE291:
.LBE329:
.LBB330:
.LBB310:
	.loc 2 84 0
	eor	r3, r3, r6
.LVL123:
	mov	r3, r3, asr #31
	eor	r0, r3, #-2147483648
.LVL124:
	mvn	r0, r0
	b	.L72
.LVL125:
.L75:
.LBE310:
.LBE330:
.LBB331:
.LBB325:
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, r6
	mov	r3, r6, asr #31
	mov	r0, r0, asl #16
.LVL126:
	bl	__aeabi_ldivmod
.LVL127:
	b	.L76
.LVL128:
.L92:
	ldr	r8, .L94
	ldr	r4, [r8, #32]
.LVL129:
	b	.L70
.L95:
	.align	2
.L94:
	.word	.LANCHOR0
	.word	attackrange
	.word	shootz
	.word	linetarget
	.word	openbottom
	.word	opentop
.LBE325:
.LBE331:
	.cfi_endproc
.LFE21:
	.size	PTR_AimTraverse, .-PTR_AimTraverse
	.align	2
	.global	PTR_NoWayTraverse
	.type	PTR_NoWayTraverse, %function
PTR_NoWayTraverse:
.LFB26:
	.loc 1 1713 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL130:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 1714 0
	ldr	r0, [r0, #8]
.LVL131:
	.loc 1 1716 0
	ldrsh	r3, [r0, #22]
	cmp	r3, #0
	bne	.L100
	.loc 1 1717 0 discriminator 2
	ldrh	r3, [r0, #20]
	.loc 1 1716 0 discriminator 2
	tst	r3, #1
	beq	.L98
.LVL132:
.L99:
	.loc 1 1716 0 is_stmt 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
.LVL133:
.L98:
	.loc 1 1718 0 is_stmt 1
	bl	P_LineOpening
.LVL134:
	.loc 1 1719 0
	ldr	r3, .L102
	.loc 1 1720 0
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L99
	.loc 1 1720 0 is_stmt 0 discriminator 2
	ldr	r2, .L102+4
	ldr	r3, .L102+8
	ldr	r2, [r2]
	.loc 1 1719 0 is_stmt 1 discriminator 2
	ldr	r1, [r3]
	.loc 1 1720 0 discriminator 2
	ldr	r3, [r2, #32]
	add	r0, r3, #1572864
	.loc 1 1719 0 discriminator 2
	cmp	r0, r1
	blt	.L99
	.loc 1 1721 0 discriminator 3
	ldr	r1, .L102+12
	ldr	r0, [r2, #84]
	.loc 1 1720 0 discriminator 3
	ldr	r2, [r1]
	.loc 1 1721 0 discriminator 3
	add	r3, r3, r0
	.loc 1 1720 0 discriminator 3
	cmp	r3, r2
	movgt	r0, #0
	movle	r0, #1
	ldmfd	sp!, {r3, pc}
.LVL135:
.L100:
	.loc 1 1716 0
	mov	r0, #1
.LVL136:
	.loc 1 1724 0
	ldmfd	sp!, {r3, pc}
.L103:
	.align	2
.L102:
	.word	openrange
	.word	usething
	.word	openbottom
	.word	opentop
	.cfi_endproc
.LFE26:
	.size	PTR_NoWayTraverse, .-PTR_NoWayTraverse
	.align	2
	.type	PIT_CheckThing, %function
PIT_CheckThing:
.LFB11:
	.loc 1 479 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL137:
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
	.loc 1 484 0
	ldrd	r6, [r0, #120]
	and	r2, r6, #7
	and	r3, r7, #1
	orrs	r3, r2, r3
	beq	.L132
	.loc 1 487 0
	ldr	r5, .L170
	.loc 1 489 0
	ldr	r3, [r0, #24]
	ldr	r2, [r5, #4]
	.loc 1 487 0
	ldr	ip, [r5]
	.loc 1 489 0
	rsb	r3, r2, r3
.LBB332:
.LBB333:
	.loc 2 59 0
	mov	r1, r3, asr #31
.LBE333:
.LBE332:
	.loc 1 487 0
	ldr	lr, [ip, #80]
	ldr	r2, [r0, #80]
.LBB335:
.LBB334:
	.loc 2 60 0
	eor	r3, r3, r1
	rsb	r3, r1, r3
.LBE334:
.LBE335:
	.loc 1 487 0
	add	r2, r2, lr
.LVL138:
	.loc 1 489 0
	cmp	r2, r3
	ble	.L132
	.loc 1 489 0 is_stmt 0 discriminator 1
	ldr	r1, [r5, #8]
.LVL139:
	ldr	r3, [r0, #28]
	rsb	r3, r1, r3
.LVL140:
.LBB336:
.LBB337:
	.loc 2 59 0 is_stmt 1 discriminator 1
	mov	r1, r3, asr #31
.LVL141:
	.loc 2 60 0 discriminator 1
	eor	r3, r3, r1
.LVL142:
	rsb	r3, r1, r3
.LBE337:
.LBE336:
	.loc 1 499 0 discriminator 1
	cmp	r0, ip
	cmpne	r2, r3
	ble	.L132
	.loc 1 510 0
	mov	r2, #0
.LVL143:
	and	r3, r7, #1
	orrs	r3, r2, r3
	mov	r4, r0
	.loc 1 511 0
	ldrd	r2, [ip, #120]
	.loc 1 510 0
	beq	.L107
	.loc 1 511 0 discriminator 1
	mov	r1, #0
.LVL144:
	and	r0, r2, #2
.LVL145:
	.loc 1 510 0 discriminator 1
	orrs	r1, r0, r1
	beq	.L107
	.loc 1 512 0
	ldr	lr, [r4, #132]
.LVL146:
	.loc 1 511 0
	cmp	lr, #0
	ble	.L107
	.loc 1 513 0
	ldr	r1, [r4, #128]
	.loc 1 512 0
	tst	r1, #2
	bne	.L108
	.loc 1 514 0
	ldr	r1, [r4, #108]
	ldr	r1, [r1, #12]
	cmp	r1, #0
	beq	.L107
.L108:
	.loc 1 515 0 discriminator 1
	ldrb	r0, [r4, #104]	@ zero_extendqisi2
	ldrb	r8, [ip, #104]	@ zero_extendqisi2
	clz	r1, r0
	mov	r1, r1, lsr #5
	cmp	r0, r8
	orrne	r1, r1, #1
	cmp	r1, #0
	beq	.L107
	.loc 1 517 0
	ldr	r10, [r4, #32]
	ldr	r1, [r4, #84]
	ldr	r9, [ip, #32]
	add	r1, r10, r1
	.loc 1 516 0
	cmp	r1, r9
	blt	.L107
	.loc 1 518 0
	ldr	r1, [ip, #84]
	add	r9, r9, r1
	.loc 1 517 0
	cmp	r10, r9
	bgt	.L107
	.loc 1 518 0
	eor	r1, r8, #18
	eor	r9, r0, #22
	orrs	r1, r1, r9
	beq	.L107
	.loc 1 520 0
	eor	r8, r8, #22
	eor	r0, r0, #18
	orrs	r1, r8, r0
	beq	.L107
	.loc 1 524 0
	mov	r1, #0
	mov	r0, r4
	mov	r3, lr
	mov	r2, r1
	bl	P_DamageMobj
.LVL147:
	.loc 1 525 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL148:
.L107:
	.loc 1 530 0
	mov	r1, #0
	and	r0, r2, #16777216
	orrs	r1, r0, r1
	bne	.L166
	.loc 1 550 0
	mov	r9, #0
	and	r8, r2, #65536
	orrs	r1, r8, r9
	bne	.L110
	.loc 1 550 0 is_stmt 0 discriminator 1
	mov	r0, #0
	and	r1, r3, #2
	orrs	r1, r0, r1
	beq	.L111
	.loc 1 551 0 is_stmt 1 discriminator 2
	mov	r1, #0
	and	r0, r2, #2
	.loc 1 550 0 discriminator 2
	orrs	r1, r0, r1
	bne	.L111
.L110:
	.loc 1 555 0
	ldr	lr, [r4, #32]
	ldr	r1, [r4, #84]
	ldr	r0, [ip, #32]
	add	r1, lr, r1
	cmp	r0, r1
	bgt	.L132
	.loc 1 558 0
	ldr	r1, [ip, #84]
	add	r0, r0, r1
	cmp	lr, r0
	ble	.L167
.LVL149:
.L132:
	.loc 1 485 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL150:
.L111:
	.loc 1 605 0
	mov	r1, #0
	and	r0, r6, #1
	orrs	r1, r0, r1
	bne	.L168
	.loc 1 619 0
	mov	r1, #0
	and	r0, r6, #2
	.loc 1 620 0
	orrs	r1, r0, r1
	beq	.L132
	.loc 1 620 0 is_stmt 0 discriminator 2
	ldr	r1, .L170+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #6
	bls	.L130
	.loc 1 621 0 is_stmt 1
	mov	r7, #0
	and	r6, r6, #4096
	orrs	r1, r6, r7
	bne	.L132
	.loc 1 621 0 is_stmt 0 discriminator 1
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	eor	r2, r2, #1
	and	r0, r2, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L166:
.LBB338:
	.loc 1 535 0 is_stmt 1
	mov	r0, #0
	bl	P_Random
.LVL151:
	mov	r2, r0, asr #31
	mov	r2, r2, lsr #29
	add	r0, r0, r2
	and	r0, r0, #7
	rsb	r2, r2, r0
	.loc 1 537 0
	mov	r0, r4
	.loc 1 540 0
	mov	r4, #0
.LVL152:
	.loc 1 535 0
	ldr	r1, [r5]
	ldr	r3, [r1, #108]
	ldr	r3, [r3, #76]
	.loc 1 537 0
	mla	r3, r2, r3, r3
	mov	r2, r1
	bl	P_DamageMobj
.LVL153:
	.loc 1 539 0
	ldr	r0, [r5]
	.loc 1 542 0
	ldr	r1, [r0, #108]
	.loc 1 539 0
	ldrd	r2, [r0, #120]
	bic	r2, r2, #16777216
	.loc 1 542 0
	ldrh	r1, [r1, #4]
	.loc 1 539 0
	strd	r2, [r0, #120]
	.loc 1 540 0
	str	r4, [r0, #96]
	str	r4, [r0, #92]
	str	r4, [r0, #88]
	.loc 1 542 0
	bl	P_SetMobjState
.LVL154:
	.loc 1 544 0
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL155:
.L167:
.LBE338:
	.loc 1 561 0
	ldr	r1, [ip, #144]
	cmp	r1, #0
	beq	.L112
	.loc 1 561 0 is_stmt 0 discriminator 1
	ldrb	r0, [r1, #104]	@ zero_extendqisi2
	ldrb	lr, [r4, #104]	@ zero_extendqisi2
	cmp	r0, lr
	beq	.L113
	.loc 1 561 0 discriminator 2
	cmp	r0, #17
	beq	.L169
	.loc 1 563 0 is_stmt 1
	cmp	r0, #15
	cmpeq	lr, #17
	beq	.L113
.L112:
	.loc 1 576 0
	orrs	r1, r8, r9
	bne	.L116
	.loc 1 577 0
	mov	r7, #0
	and	r6, r6, #2
	orrs	r1, r6, r7
	beq	.L132
	.loc 1 582 0
	mov	r1, #0
	and	r0, r2, #512
	.loc 1 581 0
	ldr	r3, [ip, #92]
	.loc 1 580 0
	ldr	r2, [ip, #88]
	.loc 1 581 0
	rsb	r3, r3, #0
	.loc 1 580 0
	rsb	r2, r2, #0
	.loc 1 582 0
	orrs	r1, r0, r1
	.loc 1 580 0
	str	r2, [ip, #88]
	.loc 1 581 0
	str	r3, [ip, #92]
	.loc 1 582 0
	bne	.L130
	.loc 1 584 0
	mov	r2, r2, asr #2
	.loc 1 585 0
	mov	r3, r3, asr #2
	.loc 1 584 0
	str	r2, [ip, #88]
	.loc 1 585 0
	str	r3, [ip, #92]
	.loc 1 587 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L168:
.LBB339:
	.loc 1 608 0
	mov	r3, #0
	and	r2, r2, #2048
	orrs	r3, r2, r3
	.loc 1 607 0
	and	r6, r6, #2
	mov	r7, #0
.LVL156:
	.loc 1 608 0
	beq	.L120
	.loc 1 609 0
	mov	r0, r4
	mov	r1, ip
	bl	P_TouchSpecialThing
.LVL157:
.L120:
	.loc 1 610 0
	orrs	r3, r6, r7
	moveq	r0, #1
	movne	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL158:
.L116:
.LBE339:
	.loc 1 591 0
	mov	r3, #0
	and	r2, r6, #4
	orrs	r3, r2, r3
	bne	.L118
	.loc 1 592 0
	movs	r3, r7, lsr #1
	mov	r2, r6, rrx
	eor	r2, r2, #1
	and	r0, r2, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L113:
	.loc 1 565 0
	cmp	r4, r1
	beq	.L132
	.loc 1 569 0
	cmp	lr, #0
	beq	.L112
.L121:
	.loc 1 569 0 is_stmt 0 discriminator 1
	ldr	r1, .L170+8
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L112
.L130:
	.loc 1 620 0 is_stmt 1
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L169:
	.loc 1 562 0
	cmp	lr, #15
	bne	.L112
	.loc 1 565 0
	cmp	r4, r1
	bne	.L121
	b	.L132
.L118:
	.loc 1 596 0
	mov	r0, #1
	bl	P_Random
.LVL159:
	ldr	r1, [r5]
.LVL160:
	mov	r2, r0, asr #31
	mov	ip, r2, lsr #29
	ldr	r3, [r1, #108]
	add	r2, r0, ip
	ldr	r3, [r3, #76]
	and	r2, r2, #7
	rsb	r2, ip, r2
	.loc 1 597 0
	mov	r0, r4
.LVL161:
	mla	r3, r2, r3, r3
	ldr	r2, [r1, #144]
	bl	P_DamageMobj
.LVL162:
	.loc 1 600 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L171:
	.align	2
.L170:
	.word	.LANCHOR0
	.word	compatibility_level
	.word	monsters_infight
	.cfi_endproc
.LFE11:
	.size	PIT_CheckThing, .-PIT_CheckThing
	.align	2
	.global	PTR_SlideTraverse
	.type	PTR_SlideTraverse, %function
PTR_SlideTraverse:
.LFB19:
	.loc 1 1195 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL163:
	.loc 1 1198 0
	ldr	r3, [r0, #4]
	.loc 1 1195 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1198 0
	cmp	r3, #0
	.loc 1 1195 0
	mov	r4, r0
	.loc 1 1198 0
	beq	.L180
.LVL164:
.L173:
	.loc 1 1201 0
	ldr	r5, [r4, #8]
.LVL165:
	.loc 1 1205 0
	ldr	r6, .L182
	.loc 1 1203 0
	ldrh	r3, [r5, #20]
	tst	r3, #4
	bne	.L174
	.loc 1 1205 0
	ldr	r3, [r6, #60]
	mov	r2, r5
	ldr	r0, [r3, #24]
	ldr	r1, [r3, #28]
	bl	P_PointOnLineSide
.LVL166:
	cmp	r0, #0
	bne	.L175
.L178:
.LDL1:
	.loc 1 1233 0
	ldr	r3, [r4]
	ldr	r1, [r6, #64]
	ldr	r2, .L182
	cmp	r3, r1
	.loc 1 1239 0
	mov	r0, #0
	.loc 1 1233 0
	bge	.L181
	.loc 1 1235 0
	str	r3, [r2, #64]
	.loc 1 1236 0
	str	r5, [r2, #68]
	.loc 1 1240 0
	ldmfd	sp!, {r4, r5, r6, pc}
.L174:
	.loc 1 1213 0
	mov	r0, r5
	bl	P_LineOpening
.LVL167:
	.loc 1 1215 0
	ldr	r2, [r6, #60]
	ldr	r1, .L182+4
	ldr	r3, [r2, #84]
	ldr	r1, [r1]
	cmp	r3, r1
	bgt	.L178
	.loc 1 1218 0
	ldr	r0, .L182+8
	ldr	r1, [r2, #32]
	ldr	r2, [r0]
	rsb	r2, r1, r2
	cmp	r3, r2
	bgt	.L178
	.loc 1 1221 0
	ldr	r3, .L182+12
	ldr	r3, [r3]
	rsb	r1, r1, r3
	cmp	r1, #1572864
	bgt	.L178
.L175:
	.loc 1 1206 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L181:
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL168:
.L180:
	.loc 1 1199 0
	ldr	r0, .L182+16
.LVL169:
	bl	I_Error
.LVL170:
	b	.L173
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.word	openrange
	.word	opentop
	.word	openbottom
	.word	.LC0
	.cfi_endproc
.LFE19:
	.size	PTR_SlideTraverse, .-PTR_SlideTraverse
	.align	2
	.global	PTR_ShootTraverse
	.type	PTR_ShootTraverse, %function
PTR_ShootTraverse:
.LFB22:
	.loc 1 1482 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL171:
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
	.loc 1 1495 0
	ldr	r4, [r0, #4]
	.loc 1 1482 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 1495 0
	cmp	r4, #0
	.loc 1 1482 0
	mov	r6, r0
	.loc 1 1495 0
	beq	.L185
.LBB340:
	.loc 1 1497 0
	ldr	r5, [r0, #8]
.LVL172:
	.loc 1 1499 0
	ldrsh	r3, [r5, #22]
	cmp	r3, #0
	bne	.L224
	.loc 1 1502 0
	ldrh	r3, [r5, #20]
	tst	r3, #4
	bne	.L187
.LVL173:
.L227:
	ldr	r3, .L228
	ldr	fp, [r6]
	ldr	r4, [r3]
	ldr	r2, .L228+4
	mov	r6, r4
.LVL174:
	ldr	r3, .L228+8
	ldr	r10, [r2, #56]
	ldr	r9, [r3]
	ldr	r8, [r5, #52]
	mov	r7, r4, asr #31
.L188:
.LVL175:
.LBB341:
.LBB342:
.LBB343:
.LBB344:
	.loc 2 59 0
	mov	r2, r4, asr #31
.LVL176:
	.loc 2 60 0
	eor	r3, r2, r4
	rsb	r3, r2, r3
.LBE344:
.LBE343:
	.loc 2 84 0
	cmp	r3, #16
	bgt	.L197
	eor	r0, r2, #-2147483648
	mvn	r0, r0
.LVL177:
.L198:
.LBE342:
.LBE341:
	.loc 1 1519 0
	rsb	fp, r0, fp
.LVL178:
.LBB346:
.LBB347:
	.loc 2 72 0
	mul	r0, fp, r7
.LBE347:
.LBE346:
.LBB349:
.LBB350:
	mov	r1, fp, asr #31
.LBE350:
.LBE349:
.LBB354:
.LBB348:
	umull	r2, r3, fp, r6
	mla	r6, r6, r1, r0
	mov	r2, r2, lsr #16
	add	r3, r6, r3
	orr	r2, r2, r3, asl #16
.LBE348:
.LBE354:
.LBB355:
.LBB356:
	smull	r0, r1, r10, r2
.LBE356:
.LBE355:
	.loc 1 1524 0
	ldr	r3, .L228+12
	ldrsh	lr, [r8, #186]
	ldr	ip, [r3]
.LBB359:
.LBB357:
	.loc 2 72 0
	mov	r2, r0, lsr #16
.LBE357:
.LBE359:
	.loc 1 1520 0
	ldr	r3, .L228+16
.LBB360:
.LBB358:
	.loc 2 72 0
	orr	r2, r2, r1, asl #16
.LBE358:
.LBE360:
	.loc 1 1524 0
	cmp	lr, ip
	.loc 1 1522 0
	add	r2, r9, r2
	.loc 1 1520 0
	ldr	ip, [r3]
	.loc 1 1521 0
	ldmib	r3, {r1, r6}
	ldr	r4, [r3, #12]
.LVL179:
	.loc 1 1524 0
	bne	.L199
	.loc 1 1528 0
	ldr	r3, [r8, #16]
	cmp	r2, r3
	bgt	.L223
	.loc 1 1533 0
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L199
	.loc 1 1533 0 is_stmt 0 discriminator 1
	ldrsh	r0, [r3, #186]
	cmp	lr, r0
	bne	.L199
	.loc 1 1538 0 is_stmt 1
	ldr	r0, .L228+20
	ldrb	r0, [r0]	@ zero_extendqisi2
	cmp	r0, #6
	bls	.L223
	.loc 1 1538 0 is_stmt 0 discriminator 1
	ldr	r3, [r3, #16]
	cmp	r2, r3
	ble	.L199
.LVL180:
.L223:
	.loc 1 1548 0 is_stmt 1
	mov	r4, #0
.L193:
.LBE340:
	.loc 1 1594 0
	mov	r0, r4
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL181:
.L185:
	.cfi_restore_state
	.loc 1 1554 0
	ldr	ip, .L228+4
	.loc 1 1553 0
	ldr	r5, [r0, #8]
.LVL182:
	.loc 1 1554 0
	ldr	r3, [ip, #40]
	cmp	r5, r3
	beq	.L196
	.loc 1 1557 0
	ldrd	r2, [r5, #120]
	strd	r2, [sp]
	mov	r3, #0
	and	r2, r2, #4
	orrs	r3, r2, r3
	beq	.L196
	.loc 1 1562 0
	ldr	r3, .L228
	ldr	fp, [r0]
	ldr	r9, [r3]
.LVL183:
	.loc 1 1563 0
	ldr	r1, .L228+8
.LBB409:
.LBB410:
	.loc 2 72 0
	smull	r2, r3, r9, fp
.LBE410:
.LBE409:
	.loc 1 1563 0
	ldr	r6, [r5, #32]
	ldr	r0, [r5, #84]
.LVL184:
	ldr	r1, [r1]
	add	r0, r6, r0
	rsb	r0, r1, r0
.LBB415:
.LBB411:
	.loc 2 72 0
	mov	r7, r2, lsr #16
.LBE411:
.LBE415:
.LBB416:
.LBB417:
.LBB418:
.LBB419:
	.loc 2 59 0
	mov	r2, r0, asr #31
.LBE419:
.LBE418:
.LBE417:
.LBE416:
.LBB428:
.LBB412:
	.loc 2 72 0
	orr	r7, r7, r3, asl #16
.LVL185:
.LBE412:
.LBE428:
.LBB429:
.LBB424:
.LBB421:
.LBB420:
	.loc 2 60 0
	eor	r3, r2, r0
	rsb	r3, r2, r3
.LBE420:
.LBE421:
.LBE424:
.LBE429:
.LBB430:
.LBB413:
	.loc 2 72 0
	mov	r2, r9
.LVL186:
.LBE413:
.LBE430:
	.loc 1 1563 0
	str	r1, [sp, #16]
.LBB431:
.LBB425:
.LBB422:
.LBB423:
	.loc 2 59 0
	mov	r1, r7, asr #31
.LVL187:
	.loc 2 60 0
	eor	r10, r1, r7
	rsb	r10, r1, r10
.LBE423:
.LBE422:
	.loc 2 84 0
	cmp	r10, r3, asr #14
.LBE425:
.LBE431:
.LBB432:
.LBB414:
	.loc 2 72 0
	mov	r3, r9, asr #31
	strd	r2, [sp, #8]
.LBE414:
.LBE432:
.LBB433:
.LBB426:
	.loc 2 84 0
	ble	.L225
	.loc 2 85 0
	mov	r3, r0, asr #31
.LVL188:
	mov	r1, r3, asl #16
.LVL189:
	orr	r1, r1, r0, lsr #16
	mov	r2, r7
	mov	r0, r0, asl #16
.LVL190:
	mov	r3, r7, asr #31
.LVL191:
	str	ip, [sp, #20]
	bl	__aeabi_ldivmod
.LVL192:
	ldr	ip, [sp, #20]
.L203:
.LBE426:
.LBE433:
	.loc 1 1565 0
	ldr	r8, [ip, #56]
	cmp	r8, r0
	bgt	.L196
	.loc 1 1568 0
	ldr	r3, [sp, #16]
	rsb	r0, r3, r6
.LVL193:
.LBB434:
.LBB435:
.LBB436:
.LBB437:
	.loc 2 59 0
	mov	r2, r0, asr #31
.LVL194:
	.loc 2 60 0
	eor	r3, r2, r0
	rsb	r3, r2, r3
.LBE437:
.LBE436:
	.loc 2 84 0
	cmp	r10, r3, asr #14
	bgt	.L204
	eor	r0, r0, r7
.LVL195:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL196:
.L205:
.LBE435:
.LBE434:
	.loc 1 1570 0
	cmp	r8, r0
	blt	.L196
.LVL197:
.LBB439:
.LBB440:
.LBB441:
.LBB442:
	.loc 2 59 0
	mov	r2, r9, asr #31
.LVL198:
	.loc 2 60 0
	eor	r3, r2, r9
	rsb	r3, r2, r3
.LBE442:
.LBE441:
	.loc 2 84 0
	cmp	r3, #40
	bgt	.L206
	eor	r0, r2, #-2147483648
	mvn	r0, r0
.LVL199:
.L207:
.LBE440:
.LBE439:
	.loc 1 1584 0
	ldrd	r6, [sp]
.LVL200:
	mov	r7, #0
.LVL201:
	.loc 1 1576 0
	rsb	r10, r0, fp
.LVL202:
.LBB444:
.LBB445:
	.loc 2 72 0
	smull	r0, r1, r9, r10
.LBE445:
.LBE444:
	.loc 1 1578 0
	ldr	lr, .L228+16
.LBB448:
.LBB446:
	.loc 2 72 0
	mov	r3, r0, lsr #16
.LBE446:
.LBE448:
	.loc 1 1578 0
	ldr	r2, [lr, #8]
.LVL203:
.LBB449:
.LBB447:
	.loc 2 72 0
	orr	r3, r3, r1, asl #16
.LBE447:
.LBE449:
	.loc 1 1579 0
	ldr	r0, [lr, #12]
.LBB450:
.LBB451:
	.loc 2 72 0
	smull	r8, r9, r8, r3
.LBE451:
.LBE450:
.LBB454:
.LBB455:
	smull	r2, r3, r2, r10
.LVL204:
.LBE455:
.LBE454:
.LBB458:
.LBB459:
	smull	r10, fp, r10, r0
.LVL205:
.LBE459:
.LBE458:
	.loc 1 1584 0
	and	r6, r6, #524288
	orrs	r1, r6, r7
.LBB462:
.LBB456:
	.loc 2 72 0
	mov	r6, r2, lsr #16
.LBE456:
.LBE462:
	.loc 1 1579 0
	ldmia	lr, {r0, r1}
.LBB463:
.LBB457:
	.loc 2 72 0
	orr	r6, r6, r3, asl #16
.LBE457:
.LBE463:
.LBB464:
.LBB452:
	mov	r8, r8, lsr #16
.LBE452:
.LBE464:
.LBB465:
.LBB460:
	mov	lr, r10, lsr #16
.LVL206:
.LBE460:
.LBE465:
	.loc 1 1580 0
	ldr	r3, [sp, #16]
.LBB466:
.LBB453:
	.loc 2 72 0
	orr	r8, r8, r9, asl #16
.LBE453:
.LBE466:
.LBB467:
.LBB461:
	orr	lr, lr, fp, asl #16
.LBE461:
.LBE467:
	.loc 1 1580 0
	add	r2, r3, r8
	.loc 1 1578 0
	add	r0, r0, r6
.LVL207:
	.loc 1 1579 0
	add	r1, r1, lr
.LVL208:
	str	ip, [sp]
	.loc 1 1584 0
	beq	.L208
	.loc 1 1585 0
	bl	P_SpawnPuff
.LVL209:
	ldr	r6, .L228+24
	ldr	ip, [sp]
.L209:
	.loc 1 1589 0
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L223
	.loc 1 1590 0
	ldr	r1, [ip, #40]
	mov	r0, r5
	mov	r2, r1
	bl	P_DamageMobj
.LVL210:
	b	.L193
.LVL211:
.L187:
.LBB468:
	.loc 1 1504 0
	mov	r0, r5
	bl	P_LineOpening
.LVL212:
	.loc 1 1505 0
	ldr	r3, .L228
	ldr	fp, [r6]
.LVL213:
	ldr	r4, [r3]
	.loc 1 1509 0
	ldr	r1, [r5, #56]
.LBB361:
.LBB362:
	.loc 2 72 0
	smull	r2, r3, r4, fp
.LBE362:
.LBE361:
	.loc 1 1509 0
	ldr	r8, [r5, #52]
	str	r1, [sp]
	ldr	r0, [r8, #12]
	ldr	r1, [r1, #12]
.LBB365:
.LBB363:
	.loc 2 72 0
	mov	ip, r2, lsr #16
.LBE363:
.LBE365:
	.loc 1 1509 0
	cmp	r0, r1
.LBB366:
.LBB364:
	.loc 2 72 0
	orr	ip, ip, r3, asl #16
	mov	r6, r4
.LVL214:
	mov	r7, r4, asr #31
.LBE364:
.LBE366:
	.loc 1 1509 0
	beq	.L189
	.loc 1 1510 0 discriminator 1
	ldr	r2, .L228+8
	ldr	r3, .L228+28
.LVL215:
	ldr	r9, [r2]
	ldr	r0, [r3]
.LBB367:
.LBB368:
.LBB369:
.LBB370:
	.loc 2 59 0 discriminator 1
	mov	r3, ip, asr #31
.LBE370:
.LBE369:
.LBE368:
.LBE367:
	.loc 1 1510 0 discriminator 1
	rsb	r0, r9, r0
.LVL216:
.LBB381:
.LBB379:
.LBB373:
.LBB374:
	.loc 2 59 0 discriminator 1
	mov	lr, r0, asr #31
.LVL217:
	.loc 2 60 0 discriminator 1
	eor	r2, lr, r0
.LBE374:
.LBE373:
.LBB376:
.LBB371:
	eor	r1, r3, ip
.LBE371:
.LBE376:
.LBB377:
.LBB375:
	rsb	r2, lr, r2
.LBE375:
.LBE377:
.LBB378:
.LBB372:
	rsb	r3, r3, r1
.LBE372:
.LBE378:
	.loc 2 84 0 discriminator 1
	cmp	r3, r2, asr #14
	bgt	.L190
	.loc 2 84 0 is_stmt 0
	eor	r0, r0, ip
.LVL218:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
.LVL219:
.L191:
.LBE379:
.LBE381:
	.loc 1 1510 0 is_stmt 1
	ldr	r3, .L228+4
	ldr	r10, [r3, #56]
	.loc 1 1509 0
	cmp	r10, r0
	blt	.L188
.LVL220:
.L189:
	.loc 1 1510 0
	ldr	r3, [sp]
	ldr	r2, [r8, #16]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	beq	.L196
	.loc 1 1512 0
	ldr	r2, .L228+8
	ldr	r3, .L228+32
	ldr	r9, [r2]
	ldr	r0, [r3]
.LBB382:
.LBB383:
.LBB384:
.LBB385:
	.loc 2 59 0
	mov	r3, ip, asr #31
.LBE385:
.LBE384:
.LBE383:
.LBE382:
	.loc 1 1512 0
	rsb	r0, r9, r0
.LVL221:
.LBB396:
.LBB394:
.LBB388:
.LBB389:
	.loc 2 59 0
	mov	lr, r0, asr #31
.LVL222:
	.loc 2 60 0
	eor	r1, lr, r0
.LBE389:
.LBE388:
.LBB391:
.LBB386:
	eor	r2, r3, ip
.LBE386:
.LBE391:
.LBB392:
.LBB390:
	rsb	r1, lr, r1
.LBE390:
.LBE392:
.LBB393:
.LBB387:
	rsb	r3, r3, r2
.LBE387:
.LBE393:
	.loc 2 84 0
	cmp	r3, r1, asr #14
	ble	.L226
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, ip
	mov	r0, r0, asl #16
.LVL223:
	mov	r3, ip, asr #31
	bl	__aeabi_ldivmod
.LVL224:
.L195:
.LBE394:
.LBE396:
	.loc 1 1512 0
	ldr	r3, .L228+4
	ldr	r10, [r3, #56]
	.loc 1 1511 0
	cmp	r10, r0
	bgt	.L188
.LVL225:
.L196:
	.loc 1 1513 0
	mov	r4, #1
.LBE468:
	.loc 1 1594 0
	mov	r0, r4
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL226:
.L199:
	.cfi_restore_state
.LBB469:
.LBB397:
.LBB351:
	.loc 2 72 0
	smull	r6, r7, r6, fp
.LBE351:
.LBE397:
.LBB398:
.LBB399:
	smull	r4, r5, fp, r4
.LVL227:
.LBE399:
.LBE398:
.LBB402:
.LBB352:
	mov	r0, r6, lsr #16
.LBE352:
.LBE402:
.LBB403:
.LBB400:
	mov	r3, r4, lsr #16
.LBE400:
.LBE403:
.LBB404:
.LBB353:
	orr	r0, r0, r7, asl #16
.LBE353:
.LBE404:
.LBB405:
.LBB401:
	orr	r3, r3, r5, asl #16
.LBE401:
.LBE405:
	.loc 1 1544 0
	add	r0, ip, r0
	add	r1, r1, r3
.LVL228:
	bl	P_SpawnPuff
.LVL229:
	b	.L223
.LVL230:
.L197:
.LBB406:
.LBB345:
	.loc 2 85 0
	mov	r2, r6
.LVL231:
	mov	r3, r7
	mov	r0, #0
	mov	r1, #4
	bl	__aeabi_ldivmod
.LVL232:
	b	.L198
.LVL233:
.L224:
.LBE345:
.LBE406:
	.loc 1 1500 0
	ldr	r3, .L228+4
	mov	r1, r5
	ldr	r0, [r3, #40]
.LVL234:
	bl	P_ShootSpecialLine
.LVL235:
	.loc 1 1502 0
	ldrh	r3, [r5, #20]
	tst	r3, #4
	beq	.L227
	b	.L187
.LVL236:
.L225:
.LBE469:
.LBB470:
.LBB427:
	.loc 2 84 0
	eor	r0, r0, r7
.LVL237:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
	b	.L203
.LVL238:
.L204:
.LBE427:
.LBE470:
.LBB471:
.LBB438:
	.loc 2 85 0
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, r7
.LVL239:
	mov	r0, r0, asl #16
.LVL240:
	mov	r3, r7, asr #31
	str	ip, [sp, #20]
	bl	__aeabi_ldivmod
.LVL241:
	ldr	ip, [sp, #20]
	b	.L205
.LVL242:
.L190:
.LBE438:
.LBE471:
.LBB472:
.LBB407:
.LBB380:
	mov	r3, r0, asr #31
	mov	r1, r3, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, ip
	mov	r3, ip, asr #31
	mov	r0, r0, asl #16
.LVL243:
	str	ip, [sp, #16]
	bl	__aeabi_ldivmod
.LVL244:
	ldr	ip, [sp, #16]
	b	.L191
.LVL245:
.L206:
.LBE380:
.LBE407:
.LBE472:
.LBB473:
.LBB443:
	ldrd	r2, [sp, #8]
.LVL246:
	mov	r0, #0
	mov	r1, #10
	str	ip, [sp, #20]
	bl	__aeabi_ldivmod
.LVL247:
	ldr	ip, [sp, #20]
	b	.L207
.LVL248:
.L208:
.LBE443:
.LBE473:
	.loc 1 1587 0
	ldr	r6, .L228+24
	ldr	r3, [r6]
	bl	P_SpawnBlood
.LVL249:
	ldr	ip, [sp]
	b	.L209
.LVL250:
.L226:
.LBB474:
.LBB408:
.LBB395:
	.loc 2 84 0
	eor	r0, r0, ip
.LVL251:
	mov	r0, r0, asr #31
	eor	r0, r0, #-2147483648
	mvn	r0, r0
	b	.L195
.L229:
	.align	2
.L228:
	.word	attackrange
	.word	.LANCHOR0
	.word	shootz
	.word	skyflatnum
	.word	trace
	.word	compatibility_level
	.word	la_damage
	.word	openbottom
	.word	opentop
.LBE395:
.LBE408:
.LBE474:
	.cfi_endproc
.LFE22:
	.size	PTR_ShootTraverse, .-PTR_ShootTraverse
	.align	2
	.type	PIT_CheckLine, %function
PIT_CheckLine:
.LFB10:
	.loc 1 392 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL252:
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
	.loc 1 393 0
	ldr	r5, .L271
	ldr	r3, [r0, #40]
	ldr	r2, [r5, #12]
	cmp	r2, r3
	ble	.L257
	.loc 1 394 0
	ldr	r2, [r5, #8]
	ldr	r3, [r0, #44]
	cmp	r2, r3
	bge	.L257
	.loc 1 395 0
	ldr	r2, [r5]
	ldr	r3, [r0, #36]
	cmp	r2, r3
	ble	.L257
	.loc 1 396 0
	ldr	r2, [r5, #4]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bge	.L257
	mov	r4, r0
	.loc 1 399 0
	mov	r0, r5
.LVL253:
	mov	r1, r4
	bl	P_BoxOnLineSide
.LVL254:
	cmn	r0, #1
	bne	.L257
.LVL255:
.LBB483:
.LBB484:
	.loc 1 413 0
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L269
	.loc 1 421 0
	ldr	r6, .L271+4
	ldr	r1, [r6]
	ldrd	r2, [r1, #120]
	and	r8, r2, #65536
	and	r9, r3, #2
	orrs	r0, r8, r9
	bne	.L237
	.loc 1 423 0
	ldrh	r0, [r4, #20]
	tst	r0, #1
	beq	.L238
	.loc 1 424 0
	ldr	r3, [r6, #72]
	cmp	r3, #0
	beq	.L254
	mov	r0, r4
	bl	untouched
.LVL256:
	cmp	r0, #0
	beq	.L257
.L254:
	.loc 1 429 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L269:
	.loc 1 416 0
	ldr	r5, .L271+4
	.loc 1 415 0
	ldr	r2, .L271+8
	.loc 1 416 0
	ldr	r3, [r5, #72]
	.loc 1 415 0
	str	r4, [r2]
	.loc 1 416 0
	cmp	r3, #0
	beq	.L254
	mov	r0, r4
	bl	untouched
.LVL257:
	cmp	r0, #0
	bne	.L254
	.loc 1 417 0
	ldr	r3, [r5]
	ldr	r1, [r5, #4]
	ldr	lr, [r3, #24]
	ldr	ip, [r3, #28]
	ldr	r3, [r5, #8]
	ldr	r0, [r4, #16]
	ldr	r2, [r4, #12]
	rsb	r1, lr, r1
.LVL258:
	rsb	r3, ip, r3
.LVL259:
.LBB485:
.LBB486:
	.loc 2 72 0
	smull	r0, r1, r1, r0
.LVL260:
.LBE486:
.LBE485:
.LBB489:
.LBB490:
	smull	r2, r3, r3, r2
.LVL261:
.LBE490:
.LBE489:
.LBB493:
.LBB487:
	mov	r0, r0, lsr #16
.LBE487:
.LBE493:
.LBB494:
.LBB491:
	mov	r2, r2, lsr #16
.LBE491:
.LBE494:
.LBB495:
.LBB488:
	orr	r0, r0, r1, asl #16
.LBE488:
.LBE495:
.LBB496:
.LBB492:
	orr	r2, r2, r3, asl #16
.LBE492:
.LBE496:
	.loc 1 416 0
	cmp	r0, r2
	ble	.L254
.LVL262:
.L257:
	.loc 1 471 0
	mov	r0, #1
.LBE484:
.LBE483:
	.loc 1 472 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL263:
.L238:
.LBB510:
.LBB509:
	.loc 1 427 0
	mov	r2, #0
	and	r3, r3, #4
	orrs	r3, r2, r3
	bne	.L237
	ldr	r3, [r1, #156]
	cmp	r3, #0
	bne	.L237
	.loc 1 428 0
	tst	r0, #2
	bne	.L254
.L237:
	.loc 1 435 0
	mov	r0, r4
	bl	P_LineOpening
.LVL264:
	.loc 1 439 0
	ldr	r7, .L271+12
	ldr	r3, .L271+16
	ldr	r2, [r7]
	ldr	r3, [r3]
	.loc 1 446 0
	ldr	r8, .L271+20
	.loc 1 439 0
	cmp	r3, r2
	.loc 1 443 0
	ldrlt	r2, .L271+8
	.loc 1 441 0
	strlt	r3, [r7]
	.loc 1 446 0
	ldr	r3, .L271+24
	.loc 1 442 0
	ldrlt	r1, .L271+28
	.loc 1 443 0
	strlt	r4, [r2]
	.loc 1 446 0
	ldr	r3, [r3]
	ldr	r2, [r8]
	.loc 1 442 0
	strlt	r4, [r1]
	.loc 1 446 0
	cmp	r3, r2
	.loc 1 450 0
	ldrgt	r2, .L271+8
	.loc 1 449 0
	ldrgt	r1, .L271+32
	.loc 1 450 0
	strgt	r4, [r2]
	.loc 1 448 0
	strgt	r3, [r8]
	.loc 1 453 0
	ldr	r2, .L271+36
	ldr	r3, .L271+40
	.loc 1 449 0
	strgt	r4, [r1]
	.loc 1 453 0
	ldr	r2, [r2]
	ldr	r1, [r3]
	cmp	r2, r1
	.loc 1 454 0
	strlt	r2, [r3]
	.loc 1 458 0
	ldrsh	r3, [r4, #22]
	cmp	r3, #0
	beq	.L257
	.loc 1 461 0
	ldr	r9, .L271+44
	ldr	r3, [r6, #76]
	ldr	r1, [r9]
	cmp	r1, r3
	bge	.L242
	ldr	r3, .L271+48
	ldr	r3, [r3]
.L243:
	.loc 1 465 0
	add	r2, r1, #1
	.loc 1 467 0
	cmp	r2, #7
	.loc 1 465 0
	str	r2, [r9]
	str	r4, [r3, r1, asl #2]
	.loc 1 467 0
	ble	.L257
	ldr	r3, .L271+52
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L257
.LVL265:
.LBB497:
.LBB498:
	.loc 1 2283 0
	ldr	ip, .L271+56
	.loc 1 2285 0
	sub	r0, r3, #5
	.loc 1 2283 0
	ldr	r3, [ip]
	ldr	ip, .L271+60
	rsb	r3, r3, r4
	mov	r3, r3, asr #1
	.loc 1 2285 0
	cmp	r0, #1
	.loc 1 2283 0
	add	ip, r3, ip
.LVL266:
	.loc 1 2285 0
	bls	.L270
	.loc 1 2313 0
	sub	r3, r1, #7
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L249
.L250:
	.word	.L257
	.word	.L251
	.word	.L251
	.word	.L251
	.word	.L251
	.word	.L252
	.word	.L253
.L253:
	.loc 1 2326 0
	str	ip, [r6, #84]
.LBE498:
.LBE497:
	.loc 1 471 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L252:
.LBB504:
.LBB499:
	.loc 1 2323 0
	str	ip, [r6, #80]
.LBE499:
.LBE504:
	.loc 1 471 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L251:
.LBB505:
.LBB500:
	.loc 1 2320 0
	sub	r1, r1, #8
	str	ip, [r5, r1, asl #2]
.LBE500:
.LBE505:
	.loc 1 471 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL267:
.L242:
	.loc 1 462 0
	cmp	r3, #0
	moveq	ip, #8
	.loc 1 463 0
	ldr	r10, .L271+48
	.loc 1 462 0
	movne	ip, r3, asl #1
	movne	r1, r3, asl #3
	moveq	r1, #32
	.loc 1 463 0
	mov	r3, #0
	ldr	r0, [r10]
	mov	r2, #1
	.loc 1 462 0
	str	ip, [r6, #76]
	.loc 1 463 0
	bl	Z_Realloc
.LVL268:
	ldr	r1, [r9]
	mov	r3, r0
	str	r0, [r10]
	b	.L243
.LVL269:
.L270:
.LBB506:
.LBB501:
	.loc 1 2294 0
	cmp	r2, #9
	beq	.L247
	cmp	r2, #10
	beq	.L248
	cmp	r2, #8
	beq	.L257
.L249:
	.loc 1 2329 0
	ldr	r1, .L271+64
	mov	r0, #8
	bl	lprintf
.LVL270:
.LBE501:
.LBE506:
	.loc 1 471 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL271:
.L248:
.LBB507:
.LBB502:
	.loc 1 2301 0
	str	ip, [r7]
.LBE502:
.LBE507:
	.loc 1 471 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L247:
.LBB508:
.LBB503:
	.loc 1 2298 0
	str	ip, [r8]
.LBE503:
.LBE508:
	.loc 1 471 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L272:
	.align	2
.L271:
	.word	tmbbox
	.word	.LANCHOR0
	.word	blockline
	.word	tmceilingz
	.word	opentop
	.word	tmfloorz
	.word	openbottom
	.word	ceilingline
	.word	floorline
	.word	lowfloor
	.word	tmdropoffz
	.word	numspechit
	.word	spechit
	.word	compatibility_level
	.word	lines
	.word	12623000
	.word	.LC1
.LBE509:
.LBE510:
	.cfi_endproc
.LFE10:
	.size	PIT_CheckLine, .-PIT_CheckLine
	.align	2
	.global	PTR_UseTraverse
	.type	PTR_UseTraverse, %function
PTR_UseTraverse:
.LFB25:
	.loc 1 1668 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL272:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1671 0
	ldr	r5, [r0, #8]
	.loc 1 1668 0
	mov	r6, r0
	.loc 1 1671 0
	ldrsh	r4, [r5, #22]
	cmp	r4, #0
	beq	.L280
.LVL273:
	.loc 1 1688 0
	ldr	r3, .L282
	mov	r2, r5
	ldr	r4, [r3]
	ldr	r1, [r4, #28]
	ldr	r0, [r4, #24]
.LVL274:
	bl	P_PointOnLineSide
.LVL275:
	sub	r2, r0, #1
	clz	r2, r2
	.loc 1 1693 0
	mov	r1, r5
	.loc 1 1688 0
	mov	r2, r2, lsr #5
	.loc 1 1693 0
	mov	r0, r4
.LVL276:
	bl	P_UseSpecialLine
.LVL277:
	.loc 1 1698 0
	ldr	r3, .L282+4
	.loc 1 1699 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L278
	.loc 1 1698 0 discriminator 1
	ldr	r3, [r6, #8]
	ldrh	r0, [r3, #20]
	and	r0, r0, #512
	.loc 1 1699 0 discriminator 1
	uxth	r0, r0
	cmp	r0, #0
	beq	.L281
.L277:
	.loc 1 1684 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L278:
	.loc 1 1699 0
	mov	r0, #0
	.loc 1 1700 0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL278:
.L280:
	.loc 1 1673 0
	mov	r0, r5
.LVL279:
	bl	P_LineOpening
.LVL280:
	.loc 1 1674 0
	ldr	r3, .L282+8
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L277
.LVL281:
.LBB513:
.LBB514:
	.loc 1 1676 0
	ldr	r3, .L282
	mov	r1, #81
	ldr	r0, [r3]
	bl	S_StartSound
.LVL282:
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL283:
.L281:
.LBE514:
.LBE513:
	ldmfd	sp!, {r4, r5, r6, pc}
.L283:
	.align	2
.L282:
	.word	usething
	.word	compatibility_level
	.word	openrange
	.cfi_endproc
.LFE25:
	.size	PTR_UseTraverse, .-PTR_UseTraverse
	.align	2
	.global	PIT_RadiusAttack
	.type	PIT_RadiusAttack, %function
PIT_RadiusAttack:
.LFB28:
	.loc 1 1774 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL284:
	.loc 1 1783 0
	ldrd	r2, [r0, #120]
	and	r2, r2, #4
	and	r3, r3, #2
	orrs	r3, r2, r3
	.loc 1 1774 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1783 0
	beq	.L286
.LVL285:
.LBB521:
.LBB522:
	.loc 1 1792 0
	ldr	ip, .L299
	ldr	r1, [ip, #88]
	ldrd	r2, [r1, #120]
	mov	r2, #0
	and	r3, r3, #2
	orrs	r3, r2, r3
	.loc 1 1793 0
	ldrb	r3, [r0, #104]	@ zero_extendqisi2
	.loc 1 1792 0
	bne	.L297
	.loc 1 1794 0
	sub	r3, r3, #19
	tst	r3, #253
	moveq	r3, #1
	movne	r3, #0
.L289:
	.loc 1 1792 0
	cmp	r3, #0
	bne	.L286
.L294:
	.loc 1 1797 0
	ldr	r4, [r1, #24]
	.loc 1 1798 0
	ldr	lr, [r1, #28]
	.loc 1 1797 0
	ldr	r3, [r0, #24]
	.loc 1 1798 0
	ldr	r2, [r0, #28]
	.loc 1 1797 0
	rsb	r3, r4, r3
.LVL286:
	.loc 1 1798 0
	rsb	r2, lr, r2
.LBB523:
.LBB524:
	.loc 2 59 0
	mov	r4, r3, asr #31
.LVL287:
.LBE524:
.LBE523:
.LBB527:
.LBB528:
	mov	lr, r2, asr #31
.LVL288:
.LBE528:
.LBE527:
.LBB531:
.LBB525:
	.loc 2 60 0
	eor	r3, r3, r4
.LVL289:
.LBE525:
.LBE531:
.LBB532:
.LBB529:
	eor	r2, r2, lr
.LVL290:
.LBE529:
.LBE532:
	.loc 1 1801 0
	ldr	r5, [r0, #80]
.LBB533:
.LBB526:
	.loc 2 60 0
	rsb	r3, r4, r3
.LBE526:
.LBE533:
.LBB534:
.LBB530:
	rsb	r2, lr, r2
.LBE530:
.LBE534:
	.loc 1 1801 0
	cmp	r2, r3
	rsbge	r5, r5, r2
	rsblt	r5, r5, r3
	.loc 1 1806 0
	ldr	r3, [ip, #96]
	.loc 1 1801 0
	mov	r5, r5, asr #16
.LVL291:
	bic	r5, r5, r5, asr #31
.LVL292:
	.loc 1 1806 0
	cmp	r3, r5
	ldr	r6, .L299
	bgt	.L298
.LVL293:
.L286:
.LBE522:
.LBE521:
	.loc 1 1816 0
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL294:
.L297:
.LBB536:
.LBB535:
	.loc 1 1793 0
	cmp	r3, #21
	bne	.L294
	ldr	r3, [ip, #92]
	ldrb	r3, [r3, #104]	@ zero_extendqisi2
	sub	r3, r3, #21
	clz	r3, r3
	mov	r3, r3, lsr #5
	b	.L289
.LVL295:
.L298:
	mov	r4, r0
.LVL296:
	.loc 1 1809 0
	bl	P_CheckSight
.LVL297:
	cmp	r0, #0
	beq	.L286
	.loc 1 1812 0
	ldr	r3, [r6, #96]
	mov	r0, r4
	rsb	r3, r5, r3
	ldr	r1, [r6, #88]
	ldr	r2, [r6, #92]
	bl	P_DamageMobj
.LVL298:
	b	.L286
.L300:
	.align	2
.L299:
	.word	.LANCHOR0
.LBE535:
.LBE536:
	.cfi_endproc
.LFE28:
	.size	PIT_RadiusAttack, .-PIT_RadiusAttack
	.align	2
	.global	P_GetFriction
	.type	P_GetFriction, %function
P_GetFriction:
.LFB5:
	.loc 1 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL299:
	.loc 1 156 0
	ldrd	r2, [r0, #120]
	mov	r3, #0
	and	r2, r2, #4608
	orrs	r3, r2, r3
	.loc 1 141 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 156 0
	beq	.L329
.L310:
	.loc 1 143 0
	mov	lr, #2048
	.loc 1 142 0
	mov	r2, #59392
.LVL300:
.L302:
	.loc 1 168 0
	cmp	r1, #0
	.loc 1 169 0
	strne	lr, [r1]
	.loc 1 172 0
	mov	r0, r2
.LVL301:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL302:
.L329:
	.loc 1 157 0
	ldr	r3, .L331
	ldrb	r5, [r3]	@ zero_extendqisi2
	cmp	r5, #10
	bls	.L330
.L303:
	.loc 1 157 0 is_stmt 0 discriminator 4
	ldr	r3, .L331+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L310
	.loc 1 159 0 is_stmt 1
	ldr	r3, [r0, #188]
.LVL303:
	.loc 1 164 0
	mov	lr, #2048
	.loc 1 159 0
	cmp	r3, #0
	.loc 1 164 0
	mov	r2, #59392
	.loc 1 159 0
	beq	.L302
	.loc 1 164 0
	ldr	ip, .L331+8
	mov	r8, #196
	ldr	r7, [ip]
	b	.L306
.LVL304:
.L304:
	.loc 1 159 0 discriminator 2
	ldr	r3, [r3, #12]
.LVL305:
	cmp	r3, #0
	beq	.L302
.LVL306:
.L306:
	.loc 1 160 0
	ldr	ip, [r3]
.LVL307:
	ldrh	r4, [ip, #190]
	tst	r4, #256
	beq	.L304
	.loc 1 161 0 discriminator 1
	sub	r4, r2, #59392
	clz	r4, r4
	ldr	r6, [ip, #96]
	mov	r4, r4, lsr #5
	cmp	r2, r6
	orrgt	r4, r4, #1
	cmp	r4, #0
	beq	.L304
.LVL308:
	.loc 1 162 0 discriminator 1
	ldr	r4, [r0, #32]
	.loc 1 161 0 discriminator 1
	ldr	r9, [ip, #12]
	cmp	r4, r9
	ble	.L305
	.loc 1 163 0
	ldr	r9, [ip, #128]
	.loc 1 162 0
	cmn	r9, #1
	beq	.L304
	.loc 1 164 0
	mla	r9, r8, r9, r7
	.loc 1 163 0
	ldr	r9, [r9, #12]
	.loc 1 164 0
	cmp	r4, r9
	movgt	r4, #0
	movle	r4, #1
	cmp	r5, #10
	movls	r4, #0
	cmp	r4, #0
	beq	.L304
.L305:
	.loc 1 161 0
	mov	r2, r6
	.loc 1 166 0
	ldr	lr, [ip, #100]
.LVL309:
	b	.L304
.LVL310:
.L330:
	.loc 1 157 0 discriminator 2
	ldr	r3, [r0, #156]
	cmp	r3, #0
	cmpne	r5, #7
	bls	.L310
	b	.L303
.L332:
	.align	2
.L331:
	.word	compatibility_level
	.word	variable_friction
	.word	sectors
	.cfi_endproc
.LFE5:
	.size	P_GetFriction, .-P_GetFriction
	.align	2
	.global	P_GetMoveFactor
	.type	P_GetMoveFactor, %function
P_GetMoveFactor:
.LFB6:
	.loc 1 182 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL311:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 186 0
	ldr	r3, .L356
	.loc 1 182 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 186 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 182 0
	mov	r4, r0
	.loc 1 186 0
	cmp	r3, #10
	bhi	.L334
.LBB537:
	.loc 1 192 0
	cmp	r3, #7
	.loc 1 190 0
	mov	r3, #2048
	.loc 1 192 0
	bls	.L350
	.loc 1 192 0 is_stmt 0 discriminator 1
	ldr	r2, .L356+4
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L350
	.loc 1 193 0 is_stmt 1 discriminator 2
	ldrd	r0, [r0, #120]
.LVL312:
	mov	r1, #0
.LVL313:
	and	r0, r0, #4608
	.loc 1 192 0 discriminator 2
	orrs	r2, r0, r1
	bne	.L350
	.loc 1 195 0
	ldr	r2, [r4, #180]
.LVL314:
	.loc 1 196 0
	cmp	r2, #59392
	beq	.L350
	.loc 1 198 0
	ble	.L336
	.loc 1 200 0
	ldr	r0, [r4, #184]
.LVL315:
	.loc 1 201 0
	str	r3, [r4, #184]
	b	.L340
.LVL316:
.L350:
	mov	r0, r3
.L340:
.LBE537:
	.loc 1 250 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL317:
.L334:
	.cfi_restore_state
	mov	r5, r1
	.loc 1 231 0
	add	r1, sp, #4
.LVL318:
	bl	P_GetFriction
.LVL319:
	cmp	r0, #59392
	mov	r6, r0
.LVL320:
	bge	.L345
.LBB538:
	.loc 1 236 0
	ldr	r0, [r4, #88]
.LVL321:
	ldr	r1, [r4, #92]
	bl	P_AproxDistance
.LVL322:
	.loc 1 238 0
	ldr	r3, .L356+8
	cmp	r0, r3
	ble	.L343
	.loc 1 239 0
	ldr	r3, [sp, #4]
	mov	r0, r3, asl #3
.LVL323:
	b	.L342
.LVL324:
.L345:
	ldr	r0, [sp, #4]
.L342:
.LBE538:
	.loc 1 246 0
	cmp	r5, #0
	.loc 1 247 0
	strne	r6, [r5]
	.loc 1 250 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL325:
.L343:
	.cfi_restore_state
.LBB539:
	.loc 1 240 0
	ldr	r3, .L356+12
	cmp	r0, r3
	bgt	.L355
	.loc 1 242 0
	ldr	r3, .L356+16
	cmp	r0, r3
	ble	.L345
	.loc 1 243 0
	ldr	r3, [sp, #4]
	mov	r0, r3, asl #1
.LVL326:
	b	.L342
.LVL327:
.L336:
.LBE539:
.LBB540:
	.loc 1 209 0
	ldr	r0, [r4, #88]
	ldr	r1, [r4, #92]
	bl	P_AproxDistance
.LVL328:
	mov	r3, r0
.LVL329:
	.loc 1 211 0
	ldr	r2, .L356+8
	.loc 1 210 0
	ldr	r0, [r4, #184]
.LVL330:
	.loc 1 211 0
	cmp	r3, r2
	.loc 1 212 0
	movgt	r0, r0, asl #3
	.loc 1 211 0
	bgt	.L338
	.loc 1 214 0
	ldr	r2, .L356+12
	cmp	r3, r2
	.loc 1 215 0
	movgt	r0, r0, asl #2
	.loc 1 214 0
	bgt	.L338
	.loc 1 217 0
	ldr	r2, .L356+16
	cmp	r3, r2
	.loc 1 218 0
	movgt	r0, r0, asl #1
.LVL331:
.L338:
	.loc 1 220 0
	mov	r3, #2048
.LVL332:
	str	r3, [r4, #184]
	b	.L340
.LVL333:
.L355:
.LBE540:
.LBB541:
	.loc 1 241 0
	ldr	r3, [sp, #4]
	mov	r0, r3, asl #2
.LVL334:
	b	.L342
.L357:
	.align	2
.L356:
	.word	compatibility_level
	.word	variable_friction
	.word	60000
	.word	30000
	.word	15000
.LBE541:
	.cfi_endproc
.LFE6:
	.size	P_GetMoveFactor, .-P_GetMoveFactor
	.align	2
	.global	P_TeleportMove
	.type	P_TeleportMove, %function
P_TeleportMove:
.LFB7:
	.loc 1 257 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL335:
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
	.loc 1 257 0
	mov	r10, r0
	.loc 1 268 0
	ldr	r0, [r0, #156]
.LVL336:
	.loc 1 257 0
	mov	r9, r1
	.loc 1 268 0
	cmp	r0, #0
	.loc 1 257 0
	mov	r8, r2
	.loc 1 268 0
	movne	ip, #1
	beq	.L378
.LVL337:
.L359:
	.loc 1 278 0 discriminator 10
	ldr	r3, [r10, #80]
	ldr	r5, .L379
	.loc 1 268 0 discriminator 10
	ldr	r2, .L379+4
	.loc 1 280 0 discriminator 10
	add	lr, r9, r3
	.loc 1 278 0 discriminator 10
	add	r6, r3, r8
	.loc 1 279 0 discriminator 10
	rsb	r4, r3, r8
	.loc 1 283 0 discriminator 10
	mov	r1, r8
.LVL338:
	.loc 1 281 0 discriminator 10
	rsb	r3, r3, r9
	.loc 1 283 0 discriminator 10
	mov	r0, r9
	.loc 1 279 0 discriminator 10
	str	r4, [r5, #4]
	.loc 1 280 0 discriminator 10
	str	lr, [r5, #12]
	.loc 1 281 0 discriminator 10
	str	r3, [r5, #8]
	.loc 1 268 0 discriminator 10
	str	ip, [r2, #12]
	.loc 1 278 0 discriminator 10
	str	r6, [r5]
	.loc 1 273 0 discriminator 10
	str	r10, [r2]
	.loc 1 275 0 discriminator 10
	str	r9, [r2, #4]
	.loc 1 276 0 discriminator 10
	str	r8, [r2, #8]
	.loc 1 283 0 discriminator 10
	bl	R_PointInSubsector
.LVL339:
	.loc 1 284 0 discriminator 10
	mov	r2, #0
	.loc 1 299 0 discriminator 10
	ldr	r3, .L379+8
	.loc 1 291 0 discriminator 10
	ldr	ip, [r0]
	.loc 1 299 0 discriminator 10
	ldr	r7, [r3]
	ldr	r4, [r5, #8]
	.loc 1 300 0 discriminator 10
	ldr	r3, [r5, #12]
	.loc 1 301 0 discriminator 10
	ldr	lr, .L379+12
	.loc 1 291 0 discriminator 10
	ldr	r0, [ip, #12]
.LVL340:
	.loc 1 299 0 discriminator 10
	rsb	r4, r7, r4
	.loc 1 292 0 discriminator 10
	ldr	ip, [ip, #16]
	.loc 1 300 0 discriminator 10
	rsb	r7, r7, r3
	.loc 1 301 0 discriminator 10
	ldr	r3, [lr]
	.loc 1 292 0 discriminator 10
	ldr	lr, .L379+16
	.loc 1 294 0 discriminator 10
	ldr	r1, .L379+20
	.loc 1 292 0 discriminator 10
	str	ip, [lr]
	.loc 1 291 0 discriminator 10
	ldr	ip, .L379+24
	.loc 1 302 0 discriminator 10
	ldmia	r5, {r5, r6}
	.loc 1 301 0 discriminator 10
	rsb	r6, r3, r6
	.loc 1 302 0 discriminator 10
	rsb	r5, r3, r5
	.loc 1 294 0 discriminator 10
	ldr	r3, [r1]
	.loc 1 291 0 discriminator 10
	str	r0, [ip]
	ldr	ip, .L379+28
	.loc 1 294 0 discriminator 10
	add	r3, r3, #1
	.loc 1 299 0 discriminator 10
	sub	r4, r4, #2097152
	.loc 1 300 0 discriminator 10
	add	r7, r7, #2097152
	.loc 1 299 0 discriminator 10
	mov	r4, r4, asr #23
.LVL341:
	.loc 1 300 0 discriminator 10
	mov	r7, r7, asr #23
.LVL342:
	.loc 1 291 0 discriminator 10
	str	r0, [ip]
	.loc 1 294 0 discriminator 10
	str	r3, [r1]
	.loc 1 284 0 discriminator 10
	ldr	r0, .L379+32
	.loc 1 295 0 discriminator 10
	ldr	r3, .L379+36
	.loc 1 301 0 discriminator 10
	sub	r6, r6, #2097152
	.loc 1 302 0 discriminator 10
	add	r5, r5, #2097152
	.loc 1 304 0 discriminator 10
	cmp	r4, r7
	.loc 1 301 0 discriminator 10
	mov	r6, r6, asr #23
.LVL343:
	.loc 1 302 0 discriminator 10
	mov	r5, r5, asr #23
.LVL344:
	.loc 1 284 0 discriminator 10
	str	r2, [r0]
	.loc 1 295 0 discriminator 10
	str	r2, [r3]
	.loc 1 304 0 discriminator 10
	bgt	.L362
.LVL345:
.L365:
	.loc 1 305 0 discriminator 1
	cmp	r6, r5
	movle	fp, r6
	bgt	.L367
.LVL346:
.L364:
	.loc 1 306 0
	mov	r1, fp
	mov	r0, r4
	ldr	r2, .L379+40
	bl	P_BlockThingsIterator
.LVL347:
	cmp	r0, #0
	.loc 1 305 0
	add	fp, fp, #1
.LVL348:
	.loc 1 306 0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 1 305 0 discriminator 2
	cmp	r5, fp
	bge	.L364
.LVL349:
.L367:
	.loc 1 304 0
	add	r4, r4, #1
.LVL350:
	cmp	r7, r4
	bge	.L365
.L362:
	.loc 1 312 0
	mov	r0, r10
	bl	P_UnsetThingPosition
.LVL351:
	.loc 1 314 0
	ldr	r3, .L379+28
	.loc 1 321 0
	mov	r0, r10
	.loc 1 314 0
	ldr	r1, [r3]
	.loc 1 315 0
	ldr	r3, .L379+16
	.loc 1 314 0
	str	r1, [r10, #68]
	.loc 1 315 0
	ldr	r2, [r3]
	.loc 1 316 0
	ldr	r3, .L379+24
	.loc 1 315 0
	str	r2, [r10, #72]
	.loc 1 316 0
	ldr	r3, [r3]
	.loc 1 318 0
	str	r9, [r10, #24]
	.loc 1 316 0
	str	r3, [r10, #76]
	.loc 1 319 0
	str	r8, [r10, #28]
	.loc 1 321 0
	bl	P_SetThingPosition
.LVL352:
	.loc 1 325 0
	ldr	r3, [r10, #68]
	.loc 1 327 0
	mov	r0, #1
	.loc 1 323 0
	str	r9, [r10, #192]
	.loc 1 324 0
	str	r8, [r10, #196]
	.loc 1 325 0
	str	r3, [r10, #200]
	.loc 1 328 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL353:
.L378:
	.loc 1 269 0 discriminator 2
	ldr	r2, .L379+44
.LVL354:
	.loc 1 268 0 discriminator 2
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L360
	.loc 1 268 0 is_stmt 0 discriminator 3
	adds	ip, r3, #0
	movne	ip, #1
	b	.L359
.L360:
	.loc 1 268 0 discriminator 4
	ldr	r3, .L379+48
.LVL355:
	ldr	ip, [r3]
	sub	ip, ip, #30
	clz	ip, ip
	mov	ip, ip, lsr #5
	b	.L359
.L380:
	.align	2
.L379:
	.word	tmbbox
	.word	.LANCHOR0
	.word	bmaporgx
	.word	bmaporgy
	.word	tmceilingz
	.word	validcount
	.word	tmdropoffz
	.word	tmfloorz
	.word	ceilingline
	.word	numspechit
	.word	PIT_StompThing
	.word	comp
	.word	gamemap
	.cfi_endproc
.LFE7:
	.size	P_TeleportMove, .-P_TeleportMove
	.align	2
	.global	Check_Sides
	.type	Check_Sides, %function
Check_Sides:
.LFB12:
	.loc 1 640 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL356:
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
	.loc 1 643 0
	ldr	r3, [r0, #24]
	.loc 1 644 0
	ldr	r8, [r0, #28]
	.loc 1 650 0
	cmp	r1, r3
	movge	fp, r3
	.loc 1 651 0
	movlt	r10, r3
	.loc 1 650 0
	movlt	fp, r1
	.loc 1 651 0
	movge	r10, r1
	.loc 1 652 0
	cmp	r2, r8
	movlt	r9, r8
	movge	r9, r2
	.loc 1 653 0
	movlt	r4, r2
	movge	r4, r8
	.loc 1 657 0
	ldr	ip, .L394
	.loc 1 659 0
	ldr	r0, .L394+4
.LVL357:
	.loc 1 657 0
	ldr	r7, [ip]
	.loc 1 664 0
	ldr	lr, .L394+8
	.loc 1 659 0
	ldr	r5, [r0]
	.loc 1 643 0
	ldr	r0, .L394+12
	.loc 1 657 0
	rsb	r6, r7, fp
	.loc 1 664 0
	ldr	ip, [lr]
	.loc 1 658 0
	rsb	r7, r7, r10
	.loc 1 657 0
	mov	r6, r6, asr #23
.LVL358:
	.loc 1 658 0
	mov	r7, r7, asr #23
.LVL359:
	.loc 1 643 0
	str	r3, [r0, #16]
	.loc 1 650 0
	ldr	r3, .L394+16
	.loc 1 664 0
	add	ip, ip, #1
	.loc 1 644 0
	str	r8, [r0, #20]
	.loc 1 665 0
	cmp	r6, r7
	.loc 1 659 0
	rsb	r8, r5, r4
	.loc 1 660 0
	rsb	r5, r5, r9
	.loc 1 645 0
	str	r1, [r0, #24]
	.loc 1 646 0
	str	r2, [r0, #28]
	.loc 1 650 0
	str	fp, [r3, #8]
	.loc 1 651 0
	str	r10, [r3, #12]
	.loc 1 652 0
	str	r9, [r3]
	.loc 1 653 0
	str	r4, [r3, #4]
	.loc 1 659 0
	mov	r8, r8, asr #23
.LVL360:
	.loc 1 660 0
	mov	r5, r5, asr #23
.LVL361:
	.loc 1 664 0
	str	ip, [lr]
.LVL362:
	.loc 1 665 0
	bgt	.L383
.LVL363:
.L386:
	.loc 1 666 0 discriminator 1
	cmp	r8, r5
	movle	r4, r8
	ble	.L385
	b	.L388
.LVL364:
.L393:
	.loc 1 666 0 is_stmt 0 discriminator 2
	cmp	r5, r4
	blt	.L388
.LVL365:
.L385:
	.loc 1 667 0 is_stmt 1
	mov	r1, r4
	mov	r0, r6
	ldr	r2, .L394+20
	bl	P_BlockLinesIterator
.LVL366:
	cmp	r0, #0
	.loc 1 666 0
	add	r4, r4, #1
.LVL367:
	.loc 1 667 0
	bne	.L393
	.loc 1 668 0
	mov	r0, #1
	.loc 1 670 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL368:
.L388:
	.loc 1 665 0
	add	r6, r6, #1
.LVL369:
	cmp	r7, r6
	bge	.L386
.L383:
	.loc 1 669 0
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L395:
	.align	2
.L394:
	.word	bmaporgx
	.word	bmaporgy
	.word	validcount
	.word	.LANCHOR0
	.word	tmbbox
	.word	PIT_CrossLine
	.cfi_endproc
.LFE12:
	.size	Check_Sides, .-Check_Sides
	.align	2
	.global	P_CheckPosition
	.type	P_CheckPosition, %function
P_CheckPosition:
.LFB13:
	.loc 1 702 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL370:
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
	.loc 1 702 0
	mov	ip, r1
	mov	r4, r0
	.loc 1 716 0
	ldr	r3, [r0, #80]
	ldr	r7, .L425
	.loc 1 711 0
	ldr	r5, .L425+4
	.loc 1 718 0
	add	lr, r1, r3
	.loc 1 716 0
	add	r8, r3, r2
	.loc 1 717 0
	rsb	r6, r3, r2
	.loc 1 721 0
	mov	r0, r1
.LVL371:
	.loc 1 719 0
	rsb	r3, r3, r1
	.loc 1 721 0
	mov	r1, r2
.LVL372:
	.loc 1 718 0
	str	lr, [r7, #12]
	.loc 1 719 0
	str	r3, [r7, #8]
	.loc 1 711 0
	stmia	r5, {r4, ip}
	.loc 1 714 0
	str	r2, [r5, #8]
	.loc 1 716 0
	str	r8, [r7]
	.loc 1 717 0
	str	r6, [r7, #4]
	.loc 1 721 0
	bl	R_PointInSubsector
.LVL373:
	.loc 1 722 0
	mov	r3, #0
	.loc 1 725 0
	ldr	r2, [r4, #156]
	.loc 1 722 0
	ldr	lr, .L425+8
	ldr	ip, .L425+12
	ldr	r1, .L425+16
	.loc 1 726 0
	cmp	r2, r3
	.loc 1 722 0
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r1]
	.loc 1 726 0
	moveq	r3, r2
	beq	.L397
	.loc 1 725 0 discriminator 1
	ldr	r2, [r2]
	cmp	r2, r4
	beq	.L423
.L397:
	.loc 1 739 0
	ldr	r2, [r5]
	.loc 1 737 0
	mov	lr, #0
	.loc 1 739 0
	ldrd	r8, [r2, #120]
	mov	r9, #0
	.loc 1 736 0
	ldr	ip, .L425+20
	.loc 1 734 0
	ldr	r0, [r0]
.LVL374:
	.loc 1 736 0
	ldr	r2, [ip]
	.loc 1 734 0
	ldr	r1, [r0, #12]
	.loc 1 735 0
	ldr	r6, [r0, #16]
	.loc 1 739 0
	and	r8, r8, #4096
	.loc 1 734 0
	ldr	fp, .L425+24
	ldr	r10, .L425+28
	.loc 1 735 0
	ldr	r4, .L425+32
.LVL375:
	.loc 1 737 0
	ldr	r0, .L425+36
	.loc 1 736 0
	add	r2, r2, #1
	.loc 1 739 0
	orrs	r8, r8, r9
	.loc 1 725 0
	str	r3, [r5, #72]
	.loc 1 736 0
	str	r2, [ip]
	.loc 1 734 0
	str	r1, [fp]
	str	r1, [r10]
	.loc 1 735 0
	str	r6, [r4]
	.loc 1 737 0
	str	lr, [r0]
	.loc 1 739 0
	bne	.L398
	.loc 1 748 0
	ldr	fp, .L425+40
	ldr	r6, [r7, #8]
	ldr	r3, [fp]
	.loc 1 749 0
	ldr	r0, [r7, #12]
	.loc 1 750 0
	ldr	r10, .L425+44
	.loc 1 748 0
	rsb	r2, r3, r6
	.loc 1 749 0
	rsb	r0, r3, r0
	.loc 1 750 0
	ldr	ip, [r10]
	ldr	r1, [r7, #4]
	.loc 1 751 0
	ldr	r3, [r7]
	.loc 1 748 0
	sub	r5, r2, #2097152
	.loc 1 749 0
	add	r9, r0, #2097152
	.loc 1 748 0
	mov	r5, r5, asr #23
.LVL376:
	.loc 1 749 0
	mov	r9, r9, asr #23
.LVL377:
	.loc 1 750 0
	rsb	r1, ip, r1
	.loc 1 751 0
	rsb	r3, ip, r3
	.loc 1 750 0
	sub	r8, r1, #2097152
	.loc 1 751 0
	add	r6, r3, #2097152
	.loc 1 754 0
	cmp	r5, r9
	.loc 1 750 0
	mov	r8, r8, asr #23
.LVL378:
	.loc 1 751 0
	mov	r6, r6, asr #23
.LVL379:
	.loc 1 754 0
	bgt	.L400
.LVL380:
.L404:
	.loc 1 755 0 discriminator 1
	cmp	r8, r6
	movle	r4, r8
	ble	.L403
	b	.L406
.LVL381:
.L401:
	.loc 1 755 0 is_stmt 0 discriminator 2
	cmp	r6, r4
	blt	.L406
.LVL382:
.L403:
	.loc 1 756 0 is_stmt 1
	mov	r1, r4
	mov	r0, r5
	ldr	r2, .L425+48
	bl	P_BlockThingsIterator
.LVL383:
	cmp	r0, #0
	.loc 1 755 0
	add	r4, r4, #1
.LVL384:
	.loc 1 756 0
	bne	.L401
.LVL385:
.L408:
	.loc 1 757 0
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL386:
.L406:
	.loc 1 754 0
	add	r5, r5, #1
.LVL387:
	cmp	r9, r5
	bge	.L404
	ldr	r0, [fp]
	ldr	ip, [r10]
	ldr	r3, [r7]
	ldmib	r7, {r1, r2, lr}
	rsb	r3, ip, r3
	rsb	r2, r0, r2
	rsb	r1, ip, r1
	rsb	r0, r0, lr
.L400:
	.loc 1 761 0
	mov	r6, r2, asr #23
.LVL388:
	.loc 1 762 0
	mov	r8, r0, asr #23
.LVL389:
	.loc 1 766 0
	cmp	r6, r8
	.loc 1 763 0
	mov	r7, r1, asr #23
.LVL390:
	.loc 1 764 0
	mov	r5, r3, asr #23
.LVL391:
	.loc 1 766 0
	bgt	.L398
.LVL392:
.L410:
	.loc 1 767 0 discriminator 1
	cmp	r7, r5
	movle	r4, r7
	ble	.L409
	b	.L412
.LVL393:
.L424:
	.loc 1 767 0 is_stmt 0 discriminator 2
	cmp	r5, r4
	blt	.L412
.LVL394:
.L409:
	.loc 1 768 0 is_stmt 1
	mov	r1, r4
	mov	r0, r6
	ldr	r2, .L425+52
	bl	P_BlockLinesIterator
.LVL395:
	cmp	r0, #0
	.loc 1 767 0
	add	r4, r4, #1
.LVL396:
	.loc 1 768 0
	bne	.L424
	b	.L408
.LVL397:
.L412:
	.loc 1 766 0
	add	r6, r6, #1
.LVL398:
	cmp	r8, r6
	bge	.L410
.LVL399:
.L398:
	.loc 1 740 0
	mov	r0, #1
	.loc 1 772 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL400:
.L423:
	.loc 1 727 0 discriminator 4
	ldr	r3, .L425+56
	.loc 1 726 0 discriminator 4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	movls	r3, #0
	movhi	r3, #1
	b	.L397
.L426:
	.align	2
.L425:
	.word	tmbbox
	.word	.LANCHOR0
	.word	ceilingline
	.word	blockline
	.word	floorline
	.word	validcount
	.word	tmdropoffz
	.word	tmfloorz
	.word	tmceilingz
	.word	numspechit
	.word	bmaporgx
	.word	bmaporgy
	.word	PIT_CheckThing
	.word	PIT_CheckLine
	.word	compatibility_level
	.cfi_endproc
.LFE13:
	.size	P_CheckPosition, .-P_CheckPosition
	.align	2
	.global	P_TryMove
	.type	P_TryMove, %function
P_TryMove:
.LFB14:
	.loc 1 782 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL401:
	.loc 1 786 0
	mov	ip, #0
	.loc 1 782 0
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
	.loc 1 786 0
	ldr	r5, .L485
	ldr	r6, .L485+4
	.loc 1 782 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 782 0
	mov	fp, r3
	.loc 1 786 0
	str	ip, [r5]
	str	ip, [r6]
	.loc 1 782 0
	mov	r4, r0
	mov	r9, r1
	mov	r10, r2
	.loc 1 788 0
	bl	P_CheckPosition
.LVL402:
	cmp	r0, #0
	beq	.L456
.LVL403:
.LBB549:
.LBB550:
	.loc 1 791 0
	ldrd	r2, [r4, #120]
	strd	r2, [sp]
	mov	r3, #0
	and	r2, r2, #4096
	orrs	r3, r2, r3
	bne	.L483
	.loc 1 796 0
	ldr	r8, .L485+8
	ldr	r7, .L485+12
	ldr	r0, [r8]
	ldr	r3, [r7]
	ldr	ip, [r4, #84]
	str	r3, [sp, #12]
	rsb	r3, r3, r0
	cmp	r3, ip
	blt	.L436
	.loc 1 798 0
	ldrd	r2, [sp]
	mov	r3, #0
	mov	lr, #1
	and	r2, r2, #32768
	orrs	r3, r2, r3
	str	lr, [r5]
	bne	.L435
	.loc 1 799 0
	ldr	r3, [r4, #32]
	rsb	r0, r3, r0
	.loc 1 798 0
	cmp	ip, r0
	bgt	.L436
	.loc 1 802 0
	ldr	r2, [sp, #12]
	rsb	r3, r3, r2
	.loc 1 801 0
	cmp	r3, #1572864
	ble	.L435
.L436:
	.loc 1 803 0
	ldr	r3, .L485+16
	ldr	r0, [r3, #72]
	.loc 1 805 0
	cmp	r0, #0
	beq	.L429
	.loc 1 804 0
	ldr	r3, .L485+20
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L437
	bl	untouched
.LVL404:
	cmp	r0, #0
	bne	.L456
.L437:
	.loc 1 805 0
	ldr	r3, .L485+24
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L432
	bl	untouched
.LVL405:
	cmp	r0, #0
	beq	.L432
.LVL406:
.L456:
	mov	r0, #0
.L429:
.LBE550:
.LBE549:
	.loc 1 879 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL407:
.L483:
	.cfi_restore_state
	ldr	r7, .L485+12
	ldr	r8, .L485+8
.L452:
.LBB566:
.LBB564:
	.loc 1 854 0
	mov	r0, r4
	bl	P_UnsetThingPosition
.LVL408:
	.loc 1 860 0
	ldr	r3, .L485+28
	.loc 1 859 0
	ldr	r2, [r8]
	.loc 1 858 0
	ldr	r1, [r7]
	.loc 1 860 0
	ldr	r3, [r3]
	.loc 1 859 0
	str	r2, [r4, #72]
	.loc 1 860 0
	str	r3, [r4, #76]
	.loc 1 856 0
	ldr	r7, [r4, #24]
.LVL409:
	.loc 1 857 0
	ldr	r8, [r4, #28]
.LVL410:
	.loc 1 858 0
	str	r1, [r4, #68]
	.loc 1 861 0
	str	r9, [r4, #24]
	.loc 1 862 0
	str	r10, [r4, #28]
	.loc 1 864 0
	mov	r0, r4
	bl	P_SetThingPosition
.LVL411:
	.loc 1 868 0
	ldrd	r2, [r4, #120]
	mov	r3, #0
	and	r2, r2, #36864
	orrs	r3, r2, r3
	bne	.L432
	ldr	r9, .L485+32
.LVL412:
	.loc 1 870 0
	ldr	fp, .L485+36
.LVL413:
	ldr	r5, [r9]
.LVL414:
.L453:
	.loc 1 869 0
	cmp	r5, #0
	sub	r5, r5, #1
	str	r5, [r9]
	beq	.L432
.L455:
	.loc 1 870 0
	ldr	r3, [fp]
	ldr	r6, [r3, r5, asl #2]
	ldrsh	r3, [r6, #22]
	cmp	r3, #0
	beq	.L453
.LBB551:
	.loc 1 873 0
	mov	r1, r8
	mov	r2, r6
	mov	r0, r7
	bl	P_PointOnLineSide
.LVL415:
	.loc 1 874 0
	ldr	r1, [r4, #28]
	.loc 1 873 0
	mov	r10, r0
.LVL416:
	.loc 1 874 0
	mov	r2, r6
	ldr	r0, [r4, #24]
.LVL417:
	bl	P_PointOnLineSide
.LVL418:
	.loc 1 873 0
	cmp	r10, r0
	beq	.L453
	.loc 1 875 0
	mov	r0, r6
	mov	r1, r10
	mov	r2, r4
	bl	P_CrossSpecialLine
.LVL419:
	ldr	r3, .L485+32
	ldr	r5, [r3]
.LBE551:
	.loc 1 869 0
	cmp	r5, #0
	sub	r5, r5, #1
	str	r5, [r9]
	bne	.L455
.LVL420:
.L432:
	.loc 1 805 0
	mov	r0, #1
.LBE564:
.LBE566:
	.loc 1 879 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL421:
.L435:
	.cfi_restore_state
.LBB567:
.LBB565:
	.loc 1 814 0
	ldrd	r2, [sp]
	mov	r3, #0
	and	r2, r2, #17408
	orrs	r3, r2, r3
	bne	.L439
	.loc 1 815 0
	ldr	r3, .L485+40
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L440
	.loc 1 817 0
	ldr	r3, .L485+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	fp, #0
	cmpne	r3, #7
	bls	.L441
	.loc 1 819 0
	sub	r3, r3, #11
	cmp	r3, #2
	bhi	.L439
.L441:
	.loc 1 820 0
	ldr	r3, .L485+28
	ldr	r2, [sp, #12]
	ldr	r3, [r3]
	rsb	r3, r3, r2
	cmp	r3, #1572864
	bgt	.L456
.L439:
	.loc 1 840 0
	ldrd	r2, [sp]
	mov	r2, #0
	and	r3, r3, #2
	orrs	r3, r2, r3
	beq	.L450
	.loc 1 841 0
	ldrd	r0, [sp]
	mov	r3, #0
	ldr	r2, .L485+48
	and	r1, r1, r3
	and	r0, r0, r2
	mov	r2, r0
	mov	r3, r1
	.loc 1 840 0
	orrs	r3, r2, r3
	bne	.L450
	.loc 1 841 0
	ldr	r3, [r4, #132]
	cmp	r3, #0
	ble	.L451
	.loc 1 842 0
	ldr	r3, [r4, #108]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L450
.L451:
	ldr	r3, [r4, #32]
	ldr	r2, [sp, #12]
	rsb	r3, r3, r2
	cmp	r3, #1048576
	bgt	.L456
.L450:
	.loc 1 846 0
	ldr	r3, [r4, #128]
	tst	r3, #1
	beq	.L452
	.loc 1 847 0
	ldr	r2, [r4, #88]
.LVL422:
	ldr	r0, [r4, #92]
.LVL423:
.LBB552:
.LBB553:
	.loc 2 72 0
	smull	r2, r3, r2, r2
.LVL424:
.LBE553:
.LBE552:
.LBB556:
.LBB557:
	smull	r0, r1, r0, r0
.LVL425:
.LBE557:
.LBE556:
.LBB560:
.LBB554:
	mov	r2, r2, lsr #16
.LBE554:
.LBE560:
.LBB561:
.LBB558:
	strd	r0, [sp]
.LBE558:
.LBE561:
.LBB562:
.LBB555:
	orr	r2, r2, r3, asl #16
.LBE555:
.LBE562:
.LBB563:
.LBB559:
	ldr	r3, [sp, #4]
	mov	r0, r0, lsr #16
	orr	r0, r0, r3, asl #16
.LBE559:
.LBE563:
	.loc 1 846 0
	ldr	ip, [r4, #32]
	ldr	r3, [sp, #12]
	.loc 1 847 0
	add	r2, r2, r0
	.loc 1 846 0
	rsb	r1, ip, r3
	cmp	r1, r2
	ble	.L452
	b	.L456
.LVL426:
.L440:
	.loc 1 824 0
	cmp	fp, #0
	beq	.L443
	cmp	fp, #2
	beq	.L484
.L444:
	.loc 1 835 0
	ldrd	r2, [sp]
	mov	r3, #0
	and	r2, r2, #512
	orrs	r3, r2, r3
	bne	.L449
	.loc 1 836 0
	ldr	r0, [r4, #32]
	ldr	r3, [sp, #12]
	rsb	r0, r3, r0
	.loc 1 835 0
	cmp	r0, #1572864
	movle	r0, #0
	movgt	r0, #1
.L449:
	str	r0, [r6]
	b	.L439
.L484:
	.loc 1 825 0
	ldr	r3, .L485+28
	ldr	r2, [sp, #12]
	ldr	r3, [r3]
	rsb	r2, r3, r2
	.loc 1 824 0
	cmp	r2, #8388608
	bgt	.L443
	.loc 1 826 0
	ldr	r2, [r4, #144]
	.loc 1 825 0
	cmp	r2, #0
	beq	.L443
	.loc 1 826 0
	ldr	r2, [r2, #32]
	cmp	r3, r2
	bge	.L444
.L443:
	.loc 1 828 0
	ldr	r3, .L485+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L445
	ldr	r3, .L485+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	bls	.L445
	.loc 1 830 0
	ldr	r3, [r4, #68]
	ldr	r2, [sp, #12]
	rsb	r3, r2, r3
	cmp	r3, #1572864
	bgt	.L456
	.loc 1 831 0
	ldr	r2, .L485+28
	ldr	r3, [r4, #76]
	ldr	r2, [r2]
	rsb	r3, r2, r3
	cmp	r3, #1572864
	movle	r3, #0
	movgt	r3, #1
.L447:
	.loc 1 828 0
	cmp	r3, #0
	beq	.L439
	b	.L456
.L445:
	.loc 1 829 0
	ldr	r3, .L485+28
	ldr	r2, [sp, #12]
	ldr	r3, [r3]
	rsb	r3, r3, r2
	.loc 1 828 0
	cmp	r3, #1572864
	movle	r3, #0
	movgt	r3, #1
	b	.L447
.L486:
	.align	2
.L485:
	.word	floatok
	.word	felldown
	.word	tmceilingz
	.word	tmfloorz
	.word	.LANCHOR0
	.word	ceilingline
	.word	floorline
	.word	tmdropoffz
	.word	numspechit
	.word	spechit
	.word	comp
	.word	compatibility_level
	.word	66048
	.word	monkeys
.LBE565:
.LBE567:
	.cfi_endproc
.LFE14:
	.size	P_TryMove, .-P_TryMove
	.align	2
	.global	P_ApplyTorque
	.type	P_ApplyTorque, %function
P_ApplyTorque:
.LFB16:
	.loc 1 971 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL427:
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
	.loc 1 971 0
	mov	r8, r0
	.loc 1 973 0
	ldr	r1, .L502
	ldr	r3, [r0, #80]
	ldr	r2, [r0, #24]
	ldr	r1, [r1]
	.loc 1 977 0
	ldr	r0, .L502+4
.LVL428:
	.loc 1 983 0
	ldr	ip, .L502+8
	.loc 1 973 0
	rsb	r4, r3, r2
	.loc 1 977 0
	ldr	r10, [r8, #28]
	.loc 1 975 0
	add	r2, r2, r3
	.loc 1 982 0
	ldr	r9, .L502+12
	.loc 1 977 0
	ldr	r6, [r0]
	.loc 1 973 0
	rsb	r5, r1, r4
	.loc 1 983 0
	ldr	r0, [ip]
	.loc 1 975 0
	rsb	r1, r1, r2
	.loc 1 977 0
	rsb	lr, r3, r10
	.loc 1 974 0
	mov	r7, r1, asr #23
	.loc 1 979 0
	add	r3, r3, r10
	.loc 1 972 0
	ldr	r1, .L502+16
	mov	r5, r5, asr #23
.LVL429:
	.loc 1 982 0
	str	r8, [r9]
	.loc 1 980 0
	ldr	r9, [r8, #128]
	.loc 1 977 0
	rsb	r10, r6, lr
	.loc 1 985 0
	cmp	r5, r7
	.loc 1 979 0
	rsb	r6, r6, r3
	.loc 1 983 0
	add	r0, r0, #1
	.loc 1 978 0
	stmia	r1, {r3, lr}
	.loc 1 972 0
	str	r4, [r1, #8]
	.loc 1 974 0
	str	r2, [r1, #12]
	.loc 1 976 0
	mov	r10, r10, asr #23
.LVL430:
	.loc 1 978 0
	mov	r6, r6, asr #23
.LVL431:
	.loc 1 983 0
	str	r0, [ip]
	.loc 1 985 0
	movgt	r3, r9
	bgt	.L489
.LVL432:
.L491:
	.loc 1 986 0 discriminator 1
	cmp	r10, r6
	movle	r4, r10
	bgt	.L493
.LVL433:
.L490:
	.loc 1 987 0 discriminator 3
	mov	r1, r4
	mov	r0, r5
	ldr	r2, .L502+20
	.loc 1 986 0 discriminator 3
	add	r4, r4, #1
.LVL434:
	.loc 1 987 0 discriminator 3
	bl	P_BlockLinesIterator
.LVL435:
	.loc 1 986 0 discriminator 3
	cmp	r6, r4
	bge	.L490
.LVL436:
.L493:
	.loc 1 985 0
	add	r5, r5, #1
.LVL437:
	cmp	r7, r5
	bge	.L491
	ldr	r3, [r8, #128]
.L489:
	.loc 1 990 0
	ldr	r1, [r8, #92]
	ldr	r2, [r8, #88]
	orrs	r2, r1, r2
	.loc 1 991 0
	orrne	r3, r3, #1
	.loc 1 993 0
	biceq	r3, r3, #1
	str	r3, [r8, #128]
	.loc 1 1003 0
	orr	r3, r3, r9
	ands	r3, r3, #1
	beq	.L501
	.loc 1 1006 0
	ldrh	r3, [r8, #154]
	sxth	r2, r3
	cmp	r2, #21
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	.loc 1 1007 0
	add	r3, r3, #1
.L501:
	strh	r3, [r8, #154]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L503:
	.align	2
.L502:
	.word	bmaporgx
	.word	bmaporgy
	.word	validcount
	.word	.LANCHOR0
	.word	tmbbox
	.word	PIT_ApplyTorque
	.cfi_endproc
.LFE16:
	.size	P_ApplyTorque, .-P_ApplyTorque
	.align	2
	.global	P_ThingHeightClip
	.type	P_ThingHeightClip, %function
P_ThingHeightClip:
.LFB17:
	.loc 1 1022 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL438:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1022 0
	mov	r4, r0
	.loc 1 1025 0
	add	r1, r0, #24
	ldmia	r1, {r1, r2, r6}
	ldr	r5, [r0, #68]
.LVL439:
	.loc 1 1027 0
	bl	P_CheckPosition
.LVL440:
	.loc 1 1035 0
	ldr	r1, .L511
	.loc 1 1033 0
	ldr	r2, .L511+4
	.loc 1 1034 0
	ldr	r3, .L511+8
	.loc 1 1035 0
	ldr	r1, [r1]
	.loc 1 1033 0
	ldr	r2, [r2]
	.loc 1 1034 0
	ldr	r3, [r3]
	.loc 1 1037 0
	cmp	r6, r5
	.loc 1 1035 0
	str	r1, [r4, #76]
	.loc 1 1033 0
	str	r2, [r4, #68]
	.loc 1 1034 0
	str	r3, [r4, #72]
	.loc 1 1037 0
	beq	.L510
	.loc 1 1053 0
	ldr	r0, [r4, #84]
	ldr	r1, [r4, #32]
	add	r1, r0, r1
	cmp	r3, r1
	.loc 1 1054 0
	rsblt	r1, r0, r3
	strlt	r1, [r4, #32]
.L507:
	.loc 1 1057 0
	rsb	r3, r2, r3
	.loc 1 1058 0
	cmp	r3, r0
	movlt	r0, #0
	movge	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L510:
	.loc 1 1045 0
	ldr	r1, [r4, #128]
	.loc 1 1042 0
	str	r2, [r4, #32]
	.loc 1 1045 0
	tst	r1, #1
	beq	.L508
	.loc 1 1045 0 is_stmt 0 discriminator 1
	ldrsh	r1, [r4, #154]
	cmp	r1, #21
	.loc 1 1046 0 is_stmt 1
	movgt	r1, #0
	ldrgt	r0, [r4, #84]
	strgth	r1, [r4, #154]	@ movhi
	bgt	.L507
.L508:
	ldr	r0, [r4, #84]
	b	.L507
.L512:
	.align	2
.L511:
	.word	tmdropoffz
	.word	tmfloorz
	.word	tmceilingz
	.cfi_endproc
.LFE17:
	.size	P_ThingHeightClip, .-P_ThingHeightClip
	.align	2
	.global	PIT_ChangeSector
	.type	PIT_ChangeSector, %function
PIT_ChangeSector:
.LFB30:
	.loc 1 1872 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL441:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 1872 0
	mov	r4, r0
	.loc 1 1875 0
	bl	P_ThingHeightClip
.LVL442:
	subs	r5, r0, #0
	bne	.L515
.LVL443:
.LBB571:
.LBB572:
	.loc 1 1880 0
	ldr	ip, [r4, #132]
	cmp	ip, #0
	ble	.L534
	.loc 1 1892 0
	ldrd	r2, [r4, #120]
	mov	r1, #0
	and	r0, r2, #131072
	orrs	r1, r0, r1
	bne	.L535
	.loc 1 1901 0
	mov	r0, #0
	and	r1, r3, #1
	orrs	r1, r0, r1
	beq	.L518
	.loc 1 1902 0
	ldr	r1, [r4, #128]
	.loc 1 1901 0
	tst	r1, #2
	bne	.L519
	.loc 1 1902 0
	ldr	r1, [r4, #108]
	ldr	r1, [r1, #12]
	cmp	r1, #0
	bne	.L519
.L518:
	.loc 1 1908 0
	mov	r3, #0
	and	r2, r2, #4
	orrs	r3, r2, r3
	beq	.L515
	.loc 1 1914 0
	mov	r1, #1
	ldr	r3, .L536
	.loc 1 1916 0
	ldr	r2, [r3, #84]
	.loc 1 1914 0
	str	r1, [r3, #80]
	.loc 1 1916 0
	cmp	r2, #0
	beq	.L515
	ldr	r3, .L536+4
	ldr	r1, [r3]
	ands	r1, r1, #3
	bne	.L515
.LBB573:
	.loc 1 1918 0
	mov	r0, r4
	mov	r2, r1
	mov	r3, #10
	bl	P_DamageMobj
.LVL444:
	.loc 1 1923 0
	ldr	r3, [r4, #84]
	.loc 1 1921 0
	ldr	r2, [r4, #32]
	.loc 1 1923 0
	add	r3, r3, r3, lsr #31
	.loc 1 1921 0
	add	r2, r2, r3, asr #1
	ldr	r1, [r4, #28]
	mov	r3, #38
	ldr	r0, [r4, #24]
	bl	P_SpawnMobj
.LVL445:
	mov	r5, r0
.LVL446:
	.loc 1 1926 0
	mov	r0, #2
.LVL447:
	bl	P_Random
.LVL448:
	mov	r4, r0
.LVL449:
	.loc 1 1927 0
	mov	r0, #2
.LVL450:
	bl	P_Random
.LVL451:
	rsb	r0, r0, r4
	mov	r4, r0, asl #12
.LVL452:
	str	r4, [r5, #88]
	.loc 1 1928 0
	mov	r0, #2
	bl	P_Random
.LVL453:
	mov	r4, r0
.LVL454:
	.loc 1 1929 0
	mov	r0, #2
.LVL455:
	bl	P_Random
.LVL456:
	rsb	r0, r0, r4
	mov	r4, r0, asl #12
.LVL457:
	str	r4, [r5, #92]
.LVL458:
.L515:
.LBE573:
.LBE572:
.LBE571:
	.loc 1 1934 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL459:
.L535:
.LBB576:
.LBB574:
	.loc 1 1894 0
	mov	r0, r4
	bl	P_RemoveMobj
.LVL460:
.LBE574:
.LBE576:
	.loc 1 1934 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L519:
.LBB577:
.LBB575:
	.loc 1 1904 0
	mov	r1, #0
	mov	r0, r4
	mov	r3, ip
	mov	r2, r1
	bl	P_DamageMobj
.LVL461:
	b	.L515
.L534:
	.loc 1 1882 0
	mov	r0, r4
	ldr	r1, .L536+8
	bl	P_SetMobjState
.LVL462:
	.loc 1 1884 0
	ldrd	r2, [r4, #120]
	bic	r2, r2, #2
	.loc 1 1885 0
	str	r5, [r4, #84]
	.loc 1 1886 0
	str	r5, [r4, #80]
	.loc 1 1884 0
	strd	r2, [r4, #120]
	b	.L515
.L537:
	.align	2
.L536:
	.word	.LANCHOR0
	.word	leveltime
	.word	895
.LBE575:
.LBE577:
	.cfi_endproc
.LFE30:
	.size	PIT_ChangeSector, .-PIT_ChangeSector
	.align	2
	.global	P_HitSlideLine
	.type	P_HitSlideLine, %function
P_HitSlideLine:
.LFB18:
	.loc 1 1082 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL463:
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
	.loc 1 1102 0
	ldr	r6, .L584
	.loc 1 1082 0
	mov	r5, r0
	.loc 1 1102 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #10
	bls	.L539
	.loc 1 1105 0
	ldr	r4, .L584+4
	ldr	r0, [r4, #100]
.LVL464:
	ldr	r1, [r4, #104]
	bl	P_AproxDistance
.LVL465:
	.loc 1 1107 0
	cmp	r0, #262144
	ble	.L540
	.loc 1 1105 0
	ldr	r3, .L584+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L540
	.loc 1 1107 0
	ldr	r0, [r4, #60]
	.loc 1 1106 0
	ldr	r2, [r0, #32]
	ldr	r3, [r0, #68]
	cmp	r2, r3
	ble	.L580
.L540:
.LVL466:
	.loc 1 1120 0
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L542
.L583:
	.loc 1 1133 0
	cmp	r3, #1
	movne	r8, #0
	beq	.L544
.LVL467:
.L553:
	.loc 1 1149 0
	ldr	r3, [r4, #60]
	mov	r2, r5
	ldr	r1, [r3, #28]
	ldr	r0, [r3, #24]
	bl	P_PointOnLineSide
.LVL468:
	mov	r9, r0
.LVL469:
	.loc 1 1151 0
	mov	r0, #0
.LVL470:
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #16]
	mov	r1, r0
	bl	R_PointToAngle2
.LVL471:
	.loc 1 1152 0
	cmp	r9, #1
	.loc 1 1151 0
	mov	r7, r0
.LVL472:
	.loc 1 1153 0
	addeq	r7, r0, #-2147483648
.LVL473:
	.loc 1 1154 0
	mov	r0, #0
	ldr	r2, [r4, #100]
	mov	r1, r0
	ldr	r3, [r4, #104]
	bl	R_PointToAngle2
.LVL474:
	.loc 1 1160 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 1164 0
	ldr	r1, [r4, #104]
	.loc 1 1160 0
	cmp	r3, #6
	.loc 1 1161 0
	addhi	r0, r0, #10
.LVL475:
	.loc 1 1163 0
	rsb	r5, r7, r0
.LVL476:
	.loc 1 1164 0
	ldr	r0, [r4, #100]
.LVL477:
	bl	P_AproxDistance
.LVL478:
	.loc 1 1165 0
	sub	r3, r5, #536870913
	cmn	r3, #-1073741822
	movhi	r3, #0
	movls	r3, #1
	tst	r8, r3
	.loc 1 1164 0
	ldr	r6, .L584+4
	.loc 1 1165 0
	bne	.L581
	.loc 1 1176 0
	cmp	r5, #-2147483648
	.loc 1 1177 0
	addhi	r5, r5, #-2147483648
.LVL479:
	.loc 1 1183 0
	ldr	r2, .L584+12
	.loc 1 1182 0
	mov	r5, r5, lsr #19
.LVL480:
	.loc 1 1183 0
	add	r5, r5, #2048
	ldr	r3, [r2, r5, asl #2]
	.loc 1 1181 0
	mov	r5, r7, lsr #19
.LVL481:
.LBB578:
.LBB579:
	.loc 2 72 0
	smull	r0, r1, r0, r3
.LVL482:
.LBE579:
.LBE578:
	.loc 1 1184 0
	add	ip, r5, #2048
.LBB582:
.LBB580:
	.loc 2 72 0
	mov	r3, r0, lsr #16
.LVL483:
.LBE580:
.LBE582:
	.loc 1 1184 0
	ldr	r0, [r2, ip, asl #2]
	.loc 1 1185 0
	ldr	r2, [r2, r5, asl #2]
.LBB583:
.LBB581:
	.loc 2 72 0
	orr	r3, r3, r1, asl #16
.LVL484:
.LBE581:
.LBE583:
.LBB584:
.LBB585:
	smull	r0, r1, r3, r0
.LVL485:
.LBE585:
.LBE584:
.LBB589:
.LBB590:
	smull	r2, r3, r3, r2
.LVL486:
.LBE590:
.LBE589:
.LBB594:
.LBB586:
	mov	r0, r0, lsr #16
.LBE586:
.LBE594:
.LBB595:
.LBB591:
	mov	r2, r2, lsr #16
.LBE591:
.LBE595:
.LBB596:
.LBB587:
	orr	r0, r0, r1, asl #16
.LBE587:
.LBE596:
.LBB597:
.LBB592:
	orr	r2, r2, r3, asl #16
.LBE592:
.LBE597:
.LBB598:
.LBB588:
	str	r0, [r4, #100]
.LBE588:
.LBE598:
.LBB599:
.LBB593:
	str	r2, [r4, #104]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.LVL487:
.L542:
.LBE593:
.LBE599:
	.loc 1 1129 0
	mov	r3, #0
	str	r3, [r4, #104]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.LVL488:
.L539:
.LBB600:
	.loc 1 1116 0
	cmp	r3, #7
	bls	.L582
	.loc 1 1113 0
	ldr	r3, .L584+8
	.loc 1 1115 0
	ldr	r4, .L584+4
	.loc 1 1113 0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L540
	.loc 1 1115 0
	ldr	r3, [r4, #60]
	.loc 1 1114 0
	ldr	r2, [r3, #156]
	cmp	r2, #0
	beq	.L540
	.loc 1 1115 0
	ldr	r2, .L584+16
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L540
	.loc 1 1116 0 discriminator 3
	ldr	r3, [r3, #180]
	cmp	r3, #59392
	bgt	.L541
	b	.L540
.L582:
.LBE600:
	.loc 1 1120 0
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	ldr	r4, .L584+4
.LVL489:
	cmp	r3, #0
	beq	.L542
	b	.L583
.LVL490:
.L544:
	.loc 1 1142 0
	mov	r3, #0
	str	r3, [r4, #100]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L580:
	.loc 1 1108 0 discriminator 3
	mov	r1, #0
	bl	P_GetFriction
.LVL491:
	.loc 1 1107 0 discriminator 3
	cmp	r0, #59392
	ble	.L540
.L541:
.LVL492:
	.loc 1 1120 0
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L549
	.loc 1 1133 0
	cmp	r3, #1
	movne	r8, #1
	bne	.L553
	.loc 1 1135 0 discriminator 1
	ldr	r3, [r4, #100]
.LVL493:
	ldr	r2, [r4, #104]
.LBB601:
.LBB602:
	.loc 2 59 0 discriminator 1
	mov	lr, r3, asr #31
.LVL494:
.LBE602:
.LBE601:
.LBB605:
.LBB606:
	mov	ip, r2, asr #31
.LVL495:
	.loc 2 60 0 discriminator 1
	eor	r1, ip, r2
.LBE606:
.LBE605:
.LBB608:
.LBB603:
	eor	r0, lr, r3
.LBE603:
.LBE608:
.LBB609:
.LBB607:
	rsb	r1, ip, r1
.LBE607:
.LBE609:
.LBB610:
.LBB604:
	rsb	r0, lr, r0
.LBE604:
.LBE610:
	.loc 1 1135 0 discriminator 1
	cmp	r0, r1
	ldr	ip, .L584+4
.LVL496:
	ble	.L544
	.loc 1 1137 0
	add	r3, r3, r3, lsr #31
.LVL497:
	mov	r3, r3, asr #1
	rsb	r3, r3, #0
	.loc 1 1138 0
	add	r2, r2, r2, lsr #31
.LVL498:
	mov	r2, r2, asr #1
	.loc 1 1137 0
	str	r3, [ip, #100]
	.loc 1 1139 0
	ldr	r0, [ip, #60]
	mov	r1, #34
	.loc 1 1187 0
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
.LVL499:
	.loc 1 1138 0
	str	r2, [ip, #104]
	.loc 1 1139 0
	b	S_StartSound
.LVL500:
.L549:
	.cfi_restore_state
	.loc 1 1122 0 discriminator 1
	ldr	r3, [r4, #104]
.LVL501:
	ldr	r2, [r4, #100]
.LBB611:
.LBB612:
	.loc 2 59 0 discriminator 1
	mov	lr, r3, asr #31
.LVL502:
.LBE612:
.LBE611:
.LBB615:
.LBB616:
	mov	ip, r2, asr #31
.LVL503:
	.loc 2 60 0 discriminator 1
	eor	r1, ip, r2
.LBE616:
.LBE615:
.LBB618:
.LBB613:
	eor	r0, lr, r3
.LBE613:
.LBE618:
.LBB619:
.LBB617:
	rsb	r1, ip, r1
.LBE617:
.LBE619:
.LBB620:
.LBB614:
	rsb	r0, lr, r0
.LBE614:
.LBE620:
	.loc 1 1122 0 discriminator 1
	cmp	r0, r1
	ldr	ip, .L584+4
.LVL504:
	ble	.L542
	.loc 1 1125 0
	add	r3, r3, r3, lsr #31
.LVL505:
	mov	r3, r3, asr #1
	rsb	r3, r3, #0
	.loc 1 1124 0
	add	r2, r2, r2, lsr #31
.LVL506:
	mov	r2, r2, asr #1
	.loc 1 1125 0
	str	r3, [ip, #104]
	.loc 1 1126 0
	ldr	r0, [ip, #60]
	mov	r1, #34
	.loc 1 1187 0
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
.LVL507:
	.loc 1 1124 0
	str	r2, [ip, #100]
	.loc 1 1126 0
	b	S_StartSound
.LVL508:
.L581:
	.cfi_restore_state
	.loc 1 1168 0
	add	r2, r0, r0, lsr #31
	.loc 1 1169 0
	mov	r1, #34
	ldr	r0, [r6, #60]
.LVL509:
	.loc 1 1167 0
	rsb	r5, r5, r7
.LVL510:
	.loc 1 1168 0
	mov	r4, r2, asr #1
.LVL511:
	.loc 1 1170 0
	mov	r5, r5, lsr #19
.LVL512:
	.loc 1 1169 0
	bl	S_StartSound
.LVL513:
	.loc 1 1171 0
	ldr	r3, .L584+12
	add	r2, r5, #2048
	ldr	r0, [r3, r2, asl #2]
.LVL514:
	.loc 1 1172 0
	ldr	r2, [r3, r5, asl #2]
.LVL515:
.LBB621:
.LBB622:
	.loc 2 72 0
	smull	r0, r1, r4, r0
.LVL516:
.LBE622:
.LBE621:
.LBB626:
.LBB627:
	smull	r2, r3, r4, r2
.LVL517:
.LBE627:
.LBE626:
.LBB631:
.LBB623:
	mov	r0, r0, lsr #16
.LBE623:
.LBE631:
.LBB632:
.LBB628:
	mov	r2, r2, lsr #16
.LBE628:
.LBE632:
.LBB633:
.LBB624:
	orr	r0, r0, r1, asl #16
.LBE624:
.LBE633:
.LBB634:
.LBB629:
	orr	r2, r2, r3, asl #16
.LBE629:
.LBE634:
.LBB635:
.LBB625:
	str	r0, [r6, #100]
.LBE625:
.LBE635:
.LBB636:
.LBB630:
	str	r2, [r6, #104]
.LBE630:
.LBE636:
	.loc 1 1172 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L585:
	.align	2
.L584:
	.word	compatibility_level
	.word	.LANCHOR0
	.word	variable_friction
	.word	finesine
	.word	onground
	.cfi_endproc
.LFE18:
	.size	P_HitSlideLine, .-P_HitSlideLine
	.align	2
	.global	P_SlideMove
	.type	P_SlideMove, %function
P_SlideMove:
.LFB20:
	.loc 1 1255 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL518:
	.loc 1 1258 0
	mov	r3, #2
	.loc 1 1255 0
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
	mov	r4, r0
.LBB637:
	.loc 1 1281 0
	mov	r7, #1
.LBE637:
	.loc 1 1258 0
	ldr	r5, .L615
	.loc 1 1255 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	ldr	r6, .L615+4
.LBB703:
	.loc 1 1279 0
	ldr	r10, .L615+8
.LBE703:
	.loc 1 1258 0
	str	r3, [sp, #12]
	str	r0, [r5, #60]
.LVL519:
.L587:
.LBB704:
	.loc 1 1269 0
	ldr	r2, [r4, #88]
	.loc 1 1270 0
	ldr	r1, [r4, #80]
	ldr	r9, [r4, #24]
	.loc 1 1274 0
	ldr	r3, [r4, #92]
	.loc 1 1275 0
	ldr	r8, [r4, #28]
	.loc 1 1269 0
	cmp	r2, #0
	.loc 1 1270 0
	addgt	fp, r9, r1
.LVL520:
	.loc 1 1272 0
	rsble	fp, r1, r9
.LVL521:
	.loc 1 1270 0
	rsbgt	r9, r1, r9
.LVL522:
	.loc 1 1272 0
	addle	r9, r9, r1
.LVL523:
	.loc 1 1274 0
	cmp	r3, #0
	.loc 1 1275 0
	addgt	ip, r8, r1
.LVL524:
	.loc 1 1277 0
	rsble	ip, r1, r8
.LVL525:
	.loc 1 1275 0
	rsbgt	r8, r1, r8
.LVL526:
	.loc 1 1277 0
	addle	r8, r8, r1
.LVL527:
	.loc 1 1281 0
	add	r3, ip, r3
	mov	r1, ip
	add	r2, fp, r2
	str	r7, [sp]
	str	r6, [sp, #4]
	mov	r0, fp
	str	ip, [sp, #8]
	.loc 1 1279 0
	str	r10, [r5, #64]
	.loc 1 1281 0
	bl	P_PathTraverse
.LVL528:
	.loc 1 1283 0
	ldr	r2, [r4, #88]
	ldr	r3, [r4, #92]
	ldr	ip, [sp, #8]
	add	r2, r9, r2
	add	r3, ip, r3
	mov	r1, ip
	str	r7, [sp]
	str	r6, [sp, #4]
	mov	r0, r9
	bl	P_PathTraverse
.LVL529:
	.loc 1 1285 0
	ldr	r2, [r4, #88]
	ldr	r3, [r4, #92]
	add	r2, fp, r2
	str	r7, [sp]
	str	r6, [sp, #4]
	mov	r0, fp
	add	r3, r8, r3
	mov	r1, r8
	bl	P_PathTraverse
.LVL530:
	.loc 1 1290 0
	ldr	r2, [r5, #64]
	cmp	r2, r10
	beq	.L594
	.loc 1 1317 0
	sub	r2, r2, #2048
	ldr	r3, .L615
	cmp	r2, #0
	str	r2, [r3, #64]
	ble	.L597
.LBB638:
	.loc 1 1319 0
	ldr	r8, [r4, #88]
.LVL531:
	.loc 1 1320 0
	ldr	r0, [r4, #92]
.LVL532:
.LBB639:
.LBB640:
	.loc 2 72 0
	smull	r8, r9, r8, r2
.LVL533:
.LBE640:
.LBE639:
.LBB643:
.LBB644:
	smull	r0, r1, r2, r0
.LVL534:
.LBE644:
.LBE643:
	.loc 1 1324 0
	ldr	lr, [r4, #24]
.LBB647:
.LBB645:
	.loc 2 72 0
	mov	r3, r0, lsr #16
.LBE645:
.LBE647:
	.loc 1 1324 0
	ldr	r2, [r4, #28]
.LVL535:
.LBB648:
.LBB641:
	.loc 2 72 0
	mov	ip, r8, lsr #16
.LBE641:
.LBE648:
.LBB649:
.LBB646:
	orr	r3, r3, r1, asl #16
.LBE646:
.LBE649:
.LBB650:
.LBB642:
	orr	ip, ip, r9, asl #16
.LBE642:
.LBE650:
	.loc 1 1324 0
	add	r2, r2, r3
	add	r1, lr, ip
	mov	r0, r4
	mov	r3, #1
	bl	P_TryMove
.LVL536:
	cmp	r0, #0
	beq	.L594
	ldr	r3, .L615
	ldr	r2, [r3, #64]
.L597:
.LBE638:
	.loc 1 1331 0
	rsb	r2, r2, #63488
	.loc 1 1333 0
	cmp	r2, #65536
	.loc 1 1331 0
	str	r2, [r5, #64]
	.loc 1 1333 0
	ble	.L598
	.loc 1 1334 0
	mov	r2, #65536
	ldr	r3, .L615
	str	r2, [r3, #64]
	mov	r2, #65536
	mov	r3, #0
.L599:
.LVL537:
.LBB651:
.LBB652:
	.loc 2 72 0
	ldr	ip, [r4, #92]
.LBE652:
.LBE651:
.LBB660:
.LBB661:
	ldr	fp, [r4, #88]
.LVL538:
.LBE661:
.LBE660:
.LBB669:
.LBB653:
	mul	r8, ip, r3
.LBE653:
.LBE669:
.LBB670:
.LBB662:
	mul	lr, fp, r3
	mov	r1, fp, asr #31
.LBE662:
.LBE670:
.LBB671:
.LBB654:
	mov	r9, ip, asr #31
.LVL539:
.LBE654:
.LBE671:
.LBB672:
.LBB663:
	mla	lr, r2, r1, lr
.LBE663:
.LBE672:
.LBB673:
.LBB655:
	mla	r8, r2, r9, r8
.LBE655:
.LBE673:
.LBB674:
.LBB664:
	umull	r0, r1, fp, r2
.LBE664:
.LBE674:
.LBB675:
.LBB656:
	umull	r2, r3, ip, r2
.LBE656:
.LBE675:
.LBB676:
.LBB665:
	add	r1, lr, r1
.LBE665:
.LBE676:
.LBB677:
.LBB657:
	add	r3, r8, r3
.LBE657:
.LBE677:
.LBB678:
.LBB666:
	mov	ip, r0, lsr #16
.LBE666:
.LBE678:
.LBB679:
.LBB658:
	mov	r2, r2, lsr #16
	orr	r2, r2, r3, asl #16
.LBE658:
.LBE679:
.LBB680:
.LBB667:
	orr	ip, ip, r1, asl #16
.LBE667:
.LBE680:
	.loc 1 1342 0
	ldr	r0, [r5, #68]
.LBB681:
.LBB659:
	.loc 2 72 0
	str	r2, [r5, #104]
.LBE659:
.LBE681:
.LBB682:
.LBB668:
	str	ip, [r5, #100]
.LVL540:
.LBE668:
.LBE682:
	.loc 1 1342 0
	bl	P_HitSlideLine
.LVL541:
	.loc 1 1349 0
	ldr	r2, [r4, #156]
	.loc 1 1344 0
	ldr	r1, [r5, #100]
	.loc 1 1345 0
	ldr	r3, [r5, #104]
	.loc 1 1349 0
	cmp	r2, #0
	.loc 1 1344 0
	str	r1, [r4, #88]
	.loc 1 1345 0
	str	r3, [r4, #92]
	.loc 1 1349 0
	beq	.L601
	.loc 1 1349 0 is_stmt 0 discriminator 1
	ldr	r0, [r2]
	cmp	r0, r4
	beq	.L613
.L601:
.LBE704:
	.loc 1 1357 0 is_stmt 1
	ldr	r0, [r4, #24]
	ldr	r2, [r4, #28]
	add	r1, r1, r0
	add	r2, r3, r2
	mov	r0, r4
	mov	r3, #1
	bl	P_TryMove
.LVL542:
	cmp	r0, #0
	bne	.L586
.LVL543:
.LBB705:
	.loc 1 1264 0
	ldr	r3, [sp, #12]
	cmp	r3, #1
	bne	.L605
.LVL544:
.L594:
.LDL2:
	.loc 1 1307 0
	ldr	r3, [r4, #92]
	ldr	r2, [r4, #28]
	mov	r0, r4
	add	r2, r2, r3
	ldr	r1, [r4, #24]
	mov	r3, #1
	bl	P_TryMove
.LVL545:
	cmp	r0, #0
	beq	.L614
.L586:
.LBE705:
	.loc 1 1358 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL546:
.L598:
	.cfi_restore_state
.LBB706:
	.loc 1 1336 0
	cmp	r2, #0
	ble	.L586
	mov	r3, r2, asr #31
	b	.L599
.LVL547:
.L605:
	mov	r3, #1
.LVL548:
	str	r3, [sp, #12]
.LVL549:
	b	.L587
.LVL550:
.L614:
	.loc 1 1308 0
	ldr	r3, [r4, #88]
	ldr	r1, [r4, #24]
	mov	r0, r4
	add	r1, r1, r3
	ldr	r2, [r4, #28]
	mov	r3, #1
	bl	P_TryMove
.LVL551:
	cmp	r0, #0
	bne	.L586
	.loc 1 1309 0
	ldr	r3, .L615+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #8
	.loc 1 1310 0
	streq	r0, [r4, #92]
	streq	r0, [r4, #88]
.LBE706:
	.loc 1 1358 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL552:
.L613:
	.cfi_restore_state
.LBB707:
	.loc 1 1351 0
	ldr	r0, [r2, #32]
.LVL553:
.LBB683:
.LBB684:
	.loc 2 59 0
	mov	ip, r1, asr #31
.LBE684:
.LBE683:
.LBB687:
.LBB688:
	mov	lr, r0, asr #31
.LVL554:
	.loc 2 60 0
	eor	r0, r0, lr
.LVL555:
.LBE688:
.LBE687:
.LBB690:
.LBB685:
	eor	r8, ip, r1
.LBE685:
.LBE690:
.LBB691:
.LBB689:
	rsb	r0, lr, r0
.LBE689:
.LBE691:
.LBB692:
.LBB686:
	rsb	ip, ip, r8
.LBE686:
.LBE692:
	.loc 1 1351 0
	cmp	r0, ip
	.loc 1 1353 0
	ldr	r0, [r2, #36]
.LVL556:
.LBB693:
.LBB694:
	.loc 2 59 0
	mov	ip, r3, asr #31
.LBE694:
.LBE693:
.LBB697:
.LBB698:
	mov	lr, r0, asr #31
.LVL557:
	.loc 2 60 0
	eor	r0, r0, lr
.LVL558:
.LBE698:
.LBE697:
.LBB700:
.LBB695:
	eor	r8, ip, r3
.LBE695:
.LBE700:
.LBB701:
.LBB699:
	rsb	r0, lr, r0
.LBE699:
.LBE701:
.LBB702:
.LBB696:
	rsb	ip, ip, r8
.LBE696:
.LBE702:
	.loc 1 1352 0
	strgt	r1, [r2, #32]
.LVL559:
	.loc 1 1353 0
	cmp	r0, ip
	.loc 1 1354 0
	strgt	r3, [r2, #36]
.LVL560:
	b	.L601
.L616:
	.align	2
.L615:
	.word	.LANCHOR0
	.word	PTR_SlideTraverse
	.word	65537
	.word	compatibility_level
.LBE707:
	.cfi_endproc
.LFE20:
	.size	P_SlideMove, .-P_SlideMove
	.align	2
	.global	P_AimLineAttack
	.type	P_AimLineAttack, %function
P_AimLineAttack:
.LFB23:
	.loc 1 1601 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL561:
	mov	ip, r0
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
	.loc 1 1623 0
	mov	r3, #3
	.loc 1 1601 0
	mov	r5, r2
	.loc 1 1618 0
	mov	r6, #0
	.loc 1 1614 0
	mov	r7, #40960
	.loc 1 1610 0
	ldr	r4, [ip, #84]
	ldr	lr, [ip, #32]
	.loc 1 1605 0
	mov	r1, r1, lsr #19
.LVL562:
	.loc 1 1608 0
	ldr	r0, .L621
.LVL563:
	add	r2, r1, #2048
.LVL564:
	.loc 1 1609 0
	ldr	r9, [r0, r1, asl #2]
	.loc 1 1601 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 1608 0
	ldr	r2, [r0, r2, asl #2]
	.loc 1 1609 0
	ldr	r1, [ip, #28]
.LVL565:
	.loc 1 1608 0
	ldr	r0, [ip, #24]
	.loc 1 1617 0
	ldr	r8, .L621+4
	.loc 1 1610 0
	add	lr, lr, r4, asr #1
	.loc 1 1623 0
	ldr	r4, .L621+8
	str	r3, [sp]
	.loc 1 1608 0
	mov	r3, r5, asr #16
.LVL566:
	.loc 1 1623 0
	str	r4, [sp, #4]
	mla	r2, r2, r3, r0
.LVL567:
	.loc 1 1601 0
	ldrd	r10, [sp, #48]
	.loc 1 1606 0
	ldr	r4, .L621+12
	.loc 1 1623 0
	mla	r3, r9, r3, r1
.LVL568:
	.loc 1 1617 0
	str	r5, [r8]
	.loc 1 1610 0
	ldr	r9, .L621+16
	.loc 1 1618 0
	ldr	r5, .L621+20
.LVL569:
	.loc 1 1615 0
	ldr	r8, .L621+24
	.loc 1 1610 0
	add	lr, lr, #524288
	str	lr, [r9]
	.loc 1 1606 0
	str	ip, [r4, #40]
	.loc 1 1614 0
	str	r7, [r4, #36]
	.loc 1 1615 0
	str	r8, [r4, #32]
	.loc 1 1621 0
	strd	r10, [r4, #48]
	.loc 1 1618 0
	str	r6, [r5]
	.loc 1 1623 0
	bl	P_PathTraverse
.LVL570:
	.loc 1 1625 0
	ldr	r0, [r5]
	cmp	r0, r6
	.loc 1 1626 0
	ldrne	r0, [r4, #56]
	.loc 1 1629 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L622:
	.align	2
.L621:
	.word	finesine
	.word	attackrange
	.word	PTR_AimTraverse
	.word	.LANCHOR0
	.word	shootz
	.word	linetarget
	.word	-40960
	.cfi_endproc
.LFE23:
	.size	P_AimLineAttack, .-P_AimLineAttack
	.align	2
	.global	P_LineAttack
	.type	P_LineAttack, %function
P_LineAttack:
.LFB24:
	.loc 1 1644 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL571:
	mov	ip, r0
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
	mov	r5, r2
	.loc 1 1657 0
	mov	r10, #3
	.loc 1 1648 0
	mov	r1, r1, lsr #19
.LVL572:
	.loc 1 1651 0
	ldr	r0, .L625
.LVL573:
	.loc 1 1653 0
	ldr	r6, [ip, #84]
	ldr	lr, [ip, #32]
	.loc 1 1651 0
	add	r2, r1, #2048
.LVL574:
	.loc 1 1652 0
	ldr	fp, [r0, r1, asl #2]
	.loc 1 1651 0
	ldr	r2, [r0, r2, asl #2]
	.loc 1 1652 0
	ldr	r1, [ip, #28]
.LVL575:
	.loc 1 1651 0
	ldr	r0, [ip, #24]
	.loc 1 1649 0
	ldr	r4, .L625+4
	.loc 1 1644 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 1653 0
	add	lr, lr, r6, asr #1
	.loc 1 1651 0
	mov	r6, r5, asr #16
.LVL576:
	.loc 1 1657 0
	mla	r2, r2, r6, r0
.LVL577:
	.loc 1 1655 0
	str	r3, [r4, #56]
	.loc 1 1649 0
	str	ip, [r4, #40]
	.loc 1 1657 0
	mla	r3, fp, r6, r1
.LVL578:
	.loc 1 1650 0
	ldr	ip, [sp, #48]
.LVL579:
	.loc 1 1657 0
	ldr	r9, .L625+8
	.loc 1 1650 0
	ldr	r6, .L625+12
	.loc 1 1654 0
	ldr	r8, .L625+16
	.loc 1 1653 0
	ldr	r7, .L625+20
	add	lr, lr, #524288
	.loc 1 1657 0
	str	r10, [sp]
	str	r9, [sp, #4]
	.loc 1 1650 0
	str	ip, [r6]
	.loc 1 1654 0
	str	r5, [r8]
	.loc 1 1653 0
	str	lr, [r7]
	.loc 1 1657 0
	bl	P_PathTraverse
.LVL580:
	.loc 1 1658 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL581:
.L626:
	.align	2
.L625:
	.word	finesine
	.word	.LANCHOR0
	.word	PTR_ShootTraverse
	.word	la_damage
	.word	attackrange
	.word	shootz
	.cfi_endproc
.LFE24:
	.size	P_LineAttack, .-P_LineAttack
	.align	2
	.global	P_UseLines
	.type	P_UseLines, %function
P_UseLines:
.LFB27:
	.loc 1 1731 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL582:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 1753 0
	mov	r6, #1
	.loc 1 1738 0
	ldr	ip, [r0]
	.loc 1 1744 0
	ldr	r1, .L633
	.loc 1 1740 0
	ldr	r3, [ip, #44]
	.loc 1 1742 0
	ldr	r5, [ip, #24]
	.loc 1 1740 0
	mov	r3, r3, lsr #19
.LVL583:
	.loc 1 1744 0
	add	r2, r3, #2048
	ldr	r7, [r1, r2, asl #2]
	.loc 1 1745 0
	ldr	r4, [r1, r3, asl #2]
	.loc 1 1743 0
	ldr	r8, [ip, #28]
.LVL584:
	.loc 1 1753 0
	ldr	lr, .L633+4
	.loc 1 1731 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 1744 0
	add	r7, r5, r7, asl #6
.LVL585:
	.loc 1 1745 0
	add	r4, r8, r4, asl #6
.LVL586:
	.loc 1 1738 0
	ldr	r9, .L633+8
	.loc 1 1753 0
	mov	r2, r7
	mov	r3, r4
.LVL587:
	mov	r0, r5
.LVL588:
	mov	r1, r8
	stmia	sp, {r6, lr}
.LVL589:
	.loc 1 1738 0
	str	ip, [r9]
	.loc 1 1753 0
	bl	P_PathTraverse
.LVL590:
	cmp	r0, #0
	beq	.L627
	.loc 1 1754 0
	ldr	r3, .L633+12
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L632
.L627:
	.loc 1 1756 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL591:
.L632:
	.cfi_restore_state
	.loc 1 1754 0 discriminator 1
	ldr	ip, .L633+16
	str	r6, [sp]
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, r4
	str	ip, [sp, #4]
	bl	P_PathTraverse
.LVL592:
	cmp	r0, #0
	bne	.L627
	.loc 1 1755 0
	mov	r1, #81
	ldr	r0, [r9]
	.loc 1 1756 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL593:
	.loc 1 1755 0
	b	S_StartSound
.LVL594:
.L634:
	.align	2
.L633:
	.word	finesine
	.word	PTR_UseTraverse
	.word	usething
	.word	comp
	.word	PTR_NoWayTraverse
	.cfi_endproc
.LFE27:
	.size	P_UseLines, .-P_UseLines
	.align	2
	.global	P_RadiusAttack
	.type	P_RadiusAttack, %function
P_RadiusAttack:
.LFB29:
	.loc 1 1824 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL595:
	.loc 1 1836 0
	ldr	r3, .L646
	ldr	ip, [r0, #28]
	.loc 1 1824 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 1835 0
	mov	lr, r2, asl #16
.LVL596:
	.loc 1 1836 0
	ldr	r5, [r3]
	.loc 1 1838 0
	ldr	r4, .L646+4
	.loc 1 1836 0
	add	r8, ip, lr
	.loc 1 1838 0
	ldr	r3, [r0, #24]
	.loc 1 1837 0
	rsb	ip, lr, ip
	.loc 1 1836 0
	rsb	r8, r5, r8
	.loc 1 1838 0
	ldr	r7, [r4]
	.loc 1 1837 0
	rsb	r5, r5, ip
	.loc 1 1838 0
	add	r6, r3, lr
	.loc 1 1840 0
	ldr	ip, .L646+8
	.loc 1 1836 0
	mov	r8, r8, asr #23
.LVL597:
	.loc 1 1837 0
	mov	r5, r5, asr #23
.LVL598:
	.loc 1 1839 0
	rsb	r3, lr, r3
	.loc 1 1838 0
	rsb	r6, r7, r6
	.loc 1 1844 0
	cmp	r8, r5
	.loc 1 1839 0
	rsb	r7, r7, r3
	.loc 1 1842 0
	str	r2, [ip, #96]
	.loc 1 1840 0
	str	r0, [ip, #88]
	.loc 1 1841 0
	str	r1, [ip, #92]
	.loc 1 1838 0
	mov	r6, r6, asr #23
.LVL599:
	.loc 1 1839 0
	mov	r7, r7, asr #23
.LVL600:
	.loc 1 1844 0
	blt	.L645
.LVL601:
.L639:
	.loc 1 1845 0 discriminator 1
	cmp	r6, r7
	movge	r4, r7
	blt	.L641
.LVL602:
.L638:
	.loc 1 1846 0 discriminator 3
	mov	r0, r4
	mov	r1, r5
	.loc 1 1845 0 discriminator 3
	add	r4, r4, #1
.LVL603:
	.loc 1 1846 0 discriminator 3
	ldr	r2, .L646+12
	bl	P_BlockThingsIterator
.LVL604:
	.loc 1 1845 0 discriminator 3
	cmp	r6, r4
	bge	.L638
.LVL605:
.L641:
	.loc 1 1844 0
	add	r5, r5, #1
.LVL606:
	cmp	r8, r5
	bge	.L639
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL607:
.L645:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L647:
	.align	2
.L646:
	.word	bmaporgy
	.word	bmaporgx
	.word	.LANCHOR0
	.word	PIT_RadiusAttack
	.cfi_endproc
.LFE29:
	.size	P_RadiusAttack, .-P_RadiusAttack
	.align	2
	.global	P_ChangeSector
	.type	P_ChangeSector, %function
P_ChangeSector:
.LFB31:
	.loc 1 1941 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL608:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 1945 0
	mov	r3, #0
	.loc 1 1954 0
	ldr	r5, [r0, #44]
.LVL609:
	ldr	r2, [r0, #48]
	.loc 1 1945 0
	ldr	r7, .L661
	.loc 1 1954 0
	cmp	r5, r2
	.loc 1 1945 0
	str	r3, [r7, #80]
	.loc 1 1946 0
	str	r1, [r7, #84]
	.loc 1 1954 0
	bgt	.L655
	mov	r6, r0
	ldr	r3, [r0, #36]
.LVL610:
.L651:
	.loc 1 1955 0
	ldr	r4, [r6, #40]
.LVL611:
	cmp	r4, r3
	bgt	.L654
.L653:
	.loc 1 1956 0 discriminator 3
	mov	r1, r4
	mov	r0, r5
	ldr	r2, .L661+4
	bl	P_BlockThingsIterator
.LVL612:
	.loc 1 1955 0 discriminator 3
	ldr	r3, [r6, #36]
	add	r4, r4, #1
.LVL613:
	cmp	r3, r4
	bge	.L653
	ldr	r2, [r6, #48]
.L654:
	.loc 1 1954 0
	add	r5, r5, #1
.LVL614:
	cmp	r2, r5
	bge	.L651
	ldr	r0, [r7, #80]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL615:
.L655:
	mov	r0, r3
.LVL616:
	.loc 1 1959 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L662:
	.align	2
.L661:
	.word	.LANCHOR0
	.word	PIT_ChangeSector
	.cfi_endproc
.LFE31:
	.size	P_ChangeSector, .-P_ChangeSector
	.align	2
	.global	P_CheckSector
	.type	P_CheckSector, %function
P_CheckSector:
.LFB32:
	.loc 1 1969 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL617:
	.loc 1 1972 0
	ldr	r3, .L686
	ldr	r2, [r3, #40]
	cmp	r2, #0
	bne	.L685
	.loc 1 1988 0
	ldr	ip, [r0, #144]
.LVL618:
	.loc 1 1969 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1975 0
	ldr	r5, .L686+4
	.loc 1 1988 0
	cmp	ip, #0
	mov	r3, r1
	mov	r4, r0
	.loc 1 1975 0
	str	r2, [r5, #80]
	.loc 1 1976 0
	str	r1, [r5, #84]
	.loc 1 1988 0
	movne	r3, ip
	beq	.L668
.LVL619:
.L667:
	.loc 1 1989 0 discriminator 3
	str	r2, [r3, #24]
	.loc 1 1988 0 discriminator 3
	ldr	r3, [r3, #20]
.LVL620:
	cmp	r3, #0
	bne	.L667
.LVL621:
.L668:
	.loc 1 1995 0
	mov	r6, #1
.LVL622:
.L666:
	.loc 1 1992 0
	cmp	ip, #0
	beq	.L669
	.loc 1 1993 0
	ldr	r3, [ip, #24]
	cmp	r3, #0
	mov	r3, ip
	bne	.L672
	b	.L670
.LVL623:
.L674:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L670
.L672:
	.loc 1 1992 0 discriminator 2
	ldr	r3, [r3, #20]
.LVL624:
	cmp	r3, #0
	bne	.L674
.LVL625:
.L669:
	.loc 1 2002 0
	ldr	r0, [r5, #80]
	.loc 1 2003 0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL626:
.L670:
	.loc 1 1996 0
	ldr	r0, [r3, #4]
	.loc 1 1995 0
	str	r6, [r3, #24]
	.loc 1 1996 0
	ldrd	r2, [r0, #120]
	mov	r3, #0
.LVL627:
	and	r2, r2, #16
	orrs	r3, r2, r3
	bne	.L666
	.loc 1 1997 0
	bl	PIT_ChangeSector
.LVL628:
	ldr	ip, [r4, #144]
	b	.L666
.LVL629:
.L685:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 1 1973 0
	b	P_ChangeSector
.LVL630:
.L687:
	.align	2
.L686:
	.word	comp
	.word	.LANCHOR0
	.cfi_endproc
.LFE32:
	.size	P_CheckSector, .-P_CheckSector
	.align	2
	.global	P_AddSecnode
	.type	P_AddSecnode, %function
P_AddSecnode:
.LFB36:
	.loc 1 2033 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL631:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 2037 0
	subs	r6, r2, #0
	.loc 1 2033 0
	mov	r5, r0
.LVL632:
	mov	r7, r1
	.loc 1 2037 0
	beq	.L689
	.loc 1 2039 0
	ldr	r3, [r6]
	mov	r4, r6
	cmp	r3, r0
	bne	.L692
	b	.L690
.LVL633:
.L694:
	ldr	r3, [r4]
	cmp	r3, r5
	beq	.L690
.LVL634:
.L692:
	.loc 1 2044 0
	ldr	r4, [r4, #12]
.LVL635:
	.loc 1 2037 0
	cmp	r4, #0
	bne	.L694
.LVL636:
.LBB712:
.LBB713:
.LBB714:
.LBB715:
	.loc 1 2015 0
	ldr	r0, .L707
.LVL637:
	bl	Z_BMalloc
.LVL638:
.LBE715:
.LBE714:
	.loc 1 2053 0
	str	r4, [r0, #24]
	.loc 1 2056 0
	stmia	r0, {r5, r7}
	.loc 1 2057 0
	str	r4, [r0, #8]
	.loc 1 2058 0
	str	r6, [r0, #12]
	.loc 1 2060 0
	str	r0, [r6, #8]
.LVL639:
.L697:
	.loc 1 2064 0
	mov	r2, #0
	.loc 1 2065 0
	ldr	r3, [r5, #144]
	.loc 1 2064 0
	str	r2, [r0, #16]
	.loc 1 2066 0
	cmp	r3, r2
	.loc 1 2065 0
	str	r3, [r0, #20]
	.loc 1 2067 0
	strne	r0, [r3, #16]
	.loc 1 2068 0
	str	r0, [r5, #144]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL640:
.L690:
.LBE713:
.LBE712:
	.loc 1 2041 0
	str	r7, [r4, #4]
	.loc 1 2042 0
	mov	r0, r6
.LVL641:
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL642:
.L689:
.LBB719:
.LBB718:
.LBB717:
.LBB716:
	.loc 1 2015 0
	ldr	r0, .L707
.LVL643:
	bl	Z_BMalloc
.LVL644:
.LBE716:
.LBE717:
	.loc 1 2053 0
	str	r6, [r0, #24]
	.loc 1 2056 0
	stmia	r0, {r5, r7}
	.loc 1 2057 0
	str	r6, [r0, #8]
	.loc 1 2058 0
	str	r6, [r0, #12]
	b	.L697
.L708:
	.align	2
.L707:
	.word	.LANCHOR1
.LBE718:
.LBE719:
	.cfi_endproc
.LFE36:
	.size	P_AddSecnode, .-P_AddSecnode
	.align	2
	.global	PIT_GetSectors
	.type	PIT_GetSectors, %function
PIT_GetSectors:
.LFB39:
	.loc 1 2136 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL645:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2137 0
	ldr	r3, .L718
	ldr	r2, [r0, #40]
	ldr	r1, [r3, #12]
	cmp	r1, r2
	ble	.L711
	.loc 1 2137 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #8]
	ldr	r2, [r0, #44]
	cmp	r1, r2
	bge	.L711
	.loc 1 2138 0 is_stmt 1
	ldr	r1, [r3]
	ldr	r2, [r0, #36]
	cmp	r1, r2
	ble	.L711
	.loc 1 2139 0
	ldr	r1, [r3, #4]
	ldr	r2, [r0, #32]
	cmp	r1, r2
	bge	.L711
	mov	r4, r0
	.loc 1 2143 0
	mov	r0, r3
.LVL646:
	mov	r1, r4
	bl	P_BoxOnLineSide
.LVL647:
	cmn	r0, #1
	beq	.L717
.LVL648:
.L711:
	.loc 1 2168 0
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL649:
.L717:
.LBB722:
.LBB723:
	.loc 1 2153 0
	ldr	r5, .L718+4
	ldr	r0, [r4, #52]
	ldr	r2, [r5, #108]
	ldr	r1, [r5]
	bl	P_AddSecnode
.LVL650:
	mov	r2, r0
	.loc 1 2164 0
	ldr	r0, [r4, #56]
	.loc 1 2153 0
	str	r2, [r5, #108]
	.loc 1 2164 0
	cmp	r0, #0
	beq	.L711
	ldr	r1, [r4, #52]
	cmp	r0, r1
	beq	.L711
	.loc 1 2165 0
	ldr	r1, [r5]
	bl	P_AddSecnode
.LVL651:
	str	r0, [r5, #108]
	b	.L711
.L719:
	.align	2
.L718:
	.word	tmbbox
	.word	.LANCHOR0
.LBE723:
.LBE722:
	.cfi_endproc
.LFE39:
	.size	PIT_GetSectors, .-PIT_GetSectors
	.align	2
	.global	P_DelSecnode
	.type	P_DelSecnode, %function
P_DelSecnode:
.LFB37:
	.loc 1 2078 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL652:
	.loc 1 2084 0
	cmp	r0, #0
	bxeq	lr
	.loc 1 2090 0
	ldr	r3, [r0, #8]
.LVL653:
	.loc 1 2078 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 2091 0
	ldr	r4, [r0, #12]
.LVL654:
	.loc 1 2100 0
	ldr	r2, [r0, #16]
.LVL655:
	.loc 1 2092 0
	cmp	r3, #0
	.loc 1 2093 0
	strne	r4, [r3, #12]
	.loc 1 2094 0
	cmp	r4, #0
	.loc 1 2095 0
	strne	r3, [r4, #8]
	.loc 1 2102 0
	cmp	r2, #0
	.loc 1 2101 0
	ldr	r3, [r0, #20]
.LVL656:
	.loc 1 2105 0
	ldreq	r1, [r0]
	.loc 1 2103 0
	strne	r3, [r2, #20]
	.loc 1 2105 0
	streq	r3, [r1, #144]
	.loc 1 2106 0
	cmp	r3, #0
	mov	r1, r0
.LVL657:
	.loc 1 2107 0
	strne	r2, [r3, #16]
.LBB724:
.LBB725:
	.loc 1 2022 0
	ldr	r0, .L739
.LVL658:
	bl	Z_BFree
.LVL659:
.LBE725:
.LBE724:
	.loc 1 2091 0
	mov	r0, r4
	.loc 1 2115 0
	ldmfd	sp!, {r4, pc}
.L740:
	.align	2
.L739:
	.word	.LANCHOR1
	.cfi_endproc
.LFE37:
	.size	P_DelSecnode, .-P_DelSecnode
	.align	2
	.global	P_DelSeclist
	.type	P_DelSeclist, %function
P_DelSeclist:
.LFB38:
	.loc 1 2121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL660:
	.loc 1 2122 0
	cmp	r0, #0
	bxeq	lr
	.loc 1 2121 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.L743:
	.loc 1 2123 0
	bl	P_DelSecnode
.LVL661:
	.loc 1 2122 0
	cmp	r0, #0
	bne	.L743
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE38:
	.size	P_DelSeclist, .-P_DelSeclist
	.align	2
	.global	P_CreateSecNodeList
	.type	P_CreateSecNodeList, %function
P_CreateSecNodeList:
.LFB40:
	.loc 1 2177 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL662:
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
	.loc 1 2185 0
	ldr	r8, .L776
	.loc 1 2177 0
	mov	r10, r0
	.loc 1 2185 0
	ldr	r0, [r8]
.LVL663:
	.loc 1 2177 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 2185 0
	str	r0, [sp, #12]
.LVL664:
	.loc 1 2186 0
	ldr	r0, [r8, #4]
.LVL665:
	.loc 1 2193 0
	ldr	r3, [r8, #108]
	.loc 1 2186 0
	str	r0, [sp, #4]
.LVL666:
	ldr	r0, [r8, #8]
.LVL667:
	.loc 1 2194 0
	cmp	r3, #0
	.loc 1 2186 0
	str	r0, [sp, #8]
.LVL668:
	.loc 1 2196 0
	movne	ip, #0
	.loc 1 2194 0
	movne	r0, r3
.LVL669:
	beq	.L753
.LVL670:
.L752:
	.loc 1 2196 0
	str	ip, [r0, #4]
	.loc 1 2197 0
	ldr	r0, [r0, #12]
.LVL671:
	.loc 1 2194 0
	cmp	r0, #0
	bne	.L752
.LVL672:
.L753:
	.loc 1 2212 0
	ldr	r0, .L776+4
	.loc 1 2205 0
	ldr	ip, [r10, #80]
	.loc 1 2212 0
	ldr	r7, [r0]
	.loc 1 2210 0
	ldr	lr, .L776+8
	.loc 1 2214 0
	ldr	r0, .L776+12
	.loc 1 2208 0
	rsb	r5, ip, r1
	.loc 1 2207 0
	add	r6, r1, ip
	.loc 1 2205 0
	ldr	r9, .L776+16
	.loc 1 2212 0
	rsb	r4, r7, r5
	.loc 1 2214 0
	ldr	r0, [r0]
	.loc 1 2213 0
	rsb	r7, r7, r6
	.loc 1 2202 0
	str	r1, [r8, #4]
	.loc 1 2210 0
	ldr	r1, [lr]
.LVL673:
	.loc 1 2212 0
	mov	r4, r4, asr #23
.LVL674:
	.loc 1 2213 0
	mov	r7, r7, asr #23
.LVL675:
	.loc 1 2203 0
	str	r2, [r8, #8]
	.loc 1 2208 0
	str	r5, [r9, #8]
	.loc 1 2205 0
	add	r5, ip, r2
	.loc 1 2206 0
	rsb	r2, ip, r2
.LVL676:
	.loc 1 2217 0
	cmp	r4, r7
	.loc 1 2210 0
	add	r1, r1, #1
	.loc 1 2205 0
	str	r5, [r9]
	.loc 1 2215 0
	rsb	r5, r0, r5
	.loc 1 2214 0
	rsb	r0, r0, r2
	.loc 1 2207 0
	str	r6, [r9, #12]
	.loc 1 2206 0
	str	r2, [r9, #4]
	.loc 1 2200 0
	str	r10, [r8]
	.loc 1 2214 0
	mov	r6, r0, asr #23
.LVL677:
	.loc 1 2215 0
	mov	r5, r5, asr #23
.LVL678:
	.loc 1 2210 0
	str	r1, [lr]
	.loc 1 2193 0
	movgt	r2, r3
	.loc 1 2217 0
	bgt	.L751
.LVL679:
.L755:
	.loc 1 2218 0 discriminator 1
	cmp	r6, r5
	movle	fp, r6
	bgt	.L757
.LVL680:
.L754:
	.loc 1 2219 0 discriminator 3
	mov	r1, fp
	mov	r0, r4
	ldr	r2, .L776+20
	.loc 1 2218 0 discriminator 3
	add	fp, fp, #1
.LVL681:
	.loc 1 2219 0 discriminator 3
	bl	P_BlockLinesIterator
.LVL682:
	.loc 1 2218 0 discriminator 3
	cmp	r5, fp
	bge	.L754
.LVL683:
.L757:
	.loc 1 2217 0
	add	r4, r4, #1
.LVL684:
	cmp	r7, r4
	bge	.L755
	ldr	r2, [r8, #108]
.L751:
	.loc 1 2223 0
	ldr	r3, [r10, #64]
	mov	r1, r10
	ldr	r0, [r3]
	bl	P_AddSecnode
.LVL685:
	.loc 1 2229 0
	cmp	r0, #0
	.loc 1 2223 0
	mov	r3, r0
	str	r0, [r8, #108]
.LVL686:
	.loc 1 2233 0
	ldrne	r4, .L776
.LVL687:
	.loc 1 2229 0
	bne	.L764
	b	.L765
.LVL688:
.L763:
	cmp	r3, #0
	beq	.L765
.L764:
	.loc 1 2231 0
	ldr	r2, [r3, #4]
	cmp	r2, #0
	.loc 1 2238 0
	ldrne	r3, [r3, #12]
.LVL689:
	.loc 1 2231 0
	bne	.L763
	.loc 1 2233 0
	ldr	r2, [r8, #108]
	.loc 1 2235 0
	mov	r0, r3
	.loc 1 2233 0
	cmp	r3, r2
	.loc 1 2234 0
	ldreq	r3, [r3, #12]
	streq	r3, [r4, #108]
	.loc 1 2235 0
	bl	P_DelSecnode
.LVL690:
	mov	r3, r0
.LVL691:
	.loc 1 2229 0
	cmp	r3, #0
	bne	.L764
.LVL692:
.L765:
	.loc 1 2249 0
	ldr	r3, .L776+24
.LVL693:
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #7
	cmp	r2, #6
	bls	.L748
	.loc 1 2251 0
	ldr	r1, [sp, #12]
	.loc 1 2254 0
	cmp	r3, #6
	.loc 1 2251 0
	str	r1, [r8]
	ldr	r3, .L776
	.loc 1 2254 0
	bhi	.L748
	.loc 1 2256 0
	ldr	ip, [sp, #4]
	ldr	r2, [sp, #8]
	.loc 1 2257 0
	cmp	r1, #0
	.loc 1 2256 0
	str	ip, [r3, #4]
	str	r2, [r3, #8]
	.loc 1 2257 0
	beq	.L748
	.loc 1 2258 0
	ldr	r3, [r1, #80]
	add	r0, r2, r3
	.loc 1 2259 0
	rsb	r2, r3, r2
	stmia	r9, {r0, r2}
	.loc 1 2260 0
	add	r1, ip, r3
	.loc 1 2261 0
	rsb	r3, r3, ip
	.loc 1 2260 0
	str	r1, [r9, #12]
	.loc 1 2261 0
	str	r3, [r9, #8]
.L748:
	.loc 1 2264 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL694:
.L777:
	.align	2
.L776:
	.word	.LANCHOR0
	.word	bmaporgx
	.word	validcount
	.word	bmaporgy
	.word	tmbbox
	.word	PIT_GetSectors
	.word	compatibility_level
	.cfi_endproc
.LFE40:
	.size	P_CreateSecNodeList, .-P_CreateSecNodeList
	.align	2
	.global	P_MapStart
	.type	P_MapStart, %function
P_MapStart:
.LFB41:
	.loc 1 2268 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 2269 0
	ldr	r3, .L780
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	.loc 1 2269 0 is_stmt 0 discriminator 1
	ldr	r0, .L780+4
	b	I_Error
.LVL695:
.L781:
	.align	2
.L780:
	.word	.LANCHOR0
	.word	.LC2
	.cfi_endproc
.LFE41:
	.size	P_MapStart, .-P_MapStart
	.align	2
	.global	P_MapEnd
	.type	P_MapEnd, %function
P_MapEnd:
.LFB42:
	.loc 1 2271 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 2272 0
	mov	r2, #0
	ldr	r3, .L783
	str	r2, [r3]
	bx	lr
.L784:
	.align	2
.L783:
	.word	.LANCHOR0
	.cfi_endproc
.LFE42:
	.size	P_MapEnd, .-P_MapEnd
	.global	secnodezone
	.comm	usething,4,4
	.comm	attackrange,4,4
	.comm	la_damage,4,4
	.comm	shootz,4,4
	.comm	linetarget,4,4
	.global	sector_list
	.comm	numspechit,4,4
	.comm	spechit,4,4
	.comm	floorline,4,4
	.comm	blockline,4,4
	.comm	ceilingline,4,4
	.comm	tmdropoffz,4,4
	.comm	tmceilingz,4,4
	.comm	tmfloorz,4,4
	.comm	tmbbox,16,4
	.comm	felldown,4,4
	.comm	floatok,4,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	secnodezone, %object
	.size	secnodezone, 20
secnodezone:
	.word	0
	.word	28
	.word	32
	.word	4
	.word	.LC3
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"PTR_SlideTraverse: not a line?\000"
	.space	1
.LC1:
	.ascii	"SpechitOverrun: Warning: unable to emulate an overr"
	.ascii	"un where numspechit=%i\012\000"
	.space	1
.LC2:
	.ascii	"P_MapStart: tmthing set!\000"
	.space	3
.LC3:
	.ascii	"SecNodes\000"
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	tmthing, %object
	.size	tmthing, 4
tmthing:
	.space	4
	.type	tmx, %object
	.size	tmx, 4
tmx:
	.space	4
	.type	tmy, %object
	.size	tmy, 4
tmy:
	.space	4
	.type	telefrag, %object
	.size	telefrag, 4
telefrag:
	.space	4
	.type	pe_x, %object
	.size	pe_x, 4
pe_x:
	.space	4
	.type	pe_y, %object
	.size	pe_y, 4
pe_y:
	.space	4
	.type	ls_x, %object
	.size	ls_x, 4
ls_x:
	.space	4
	.type	ls_y, %object
	.size	ls_y, 4
ls_y:
	.space	4
	.type	bottomslope, %object
	.size	bottomslope, 4
bottomslope:
	.space	4
	.type	topslope, %object
	.size	topslope, 4
topslope:
	.space	4
	.type	shootthing, %object
	.size	shootthing, 4
shootthing:
	.space	4
	.space	4
	.type	aim_flags_mask, %object
	.size	aim_flags_mask, 8
aim_flags_mask:
	.space	8
	.type	aimslope, %object
	.size	aimslope, 4
aimslope:
	.space	4
	.type	slidemo, %object
	.size	slidemo, 4
slidemo:
	.space	4
	.type	bestslidefrac, %object
	.size	bestslidefrac, 4
bestslidefrac:
	.space	4
	.type	bestslideline, %object
	.size	bestslideline, 4
bestslideline:
	.space	4
	.type	tmunstuck, %object
	.size	tmunstuck, 4
tmunstuck:
	.space	4
	.type	spechit_max, %object
	.size	spechit_max, 4
spechit_max:
	.space	4
	.type	nofit, %object
	.size	nofit, 4
nofit:
	.space	4
	.type	crushchange, %object
	.size	crushchange, 4
crushchange:
	.space	4
	.type	bombspot, %object
	.size	bombspot, 4
bombspot:
	.space	4
	.type	bombsource, %object
	.size	bombsource, 4
bombsource:
	.space	4
	.type	bombdamage, %object
	.size	bombdamage, 4
bombdamage:
	.space	4
	.type	tmxmove, %object
	.size	tmxmove, 4
tmxmove:
	.space	4
	.type	tmymove, %object
	.size	tmymove, 4
tmymove:
	.space	4
	.type	sector_list, %object
	.size	sector_list, 4
sector_list:
	.space	4
	.text
.Letext0:
	.file 3 "c:/devl/prboom3ds/src/z_zone.h"
	.file 4 "c:/devl/prboom3ds/src/doomdef.h"
	.file 5 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 6 "c:/devl/prboom3ds/src/doomtype.h"
	.file 7 "c:/devl/prboom3ds/src/tables.h"
	.file 8 "c:/devl/prboom3ds/src/d_think.h"
	.file 9 "c:/devl/prboom3ds/src/info.h"
	.file 10 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 11 "c:/devl/prboom3ds/src/doomdata.h"
	.file 12 "c:/devl/prboom3ds/src/p_mobj.h"
	.file 13 "c:/devl/prboom3ds/src/r_defs.h"
	.file 14 "c:/devl/prboom3ds/src/d_player.h"
	.file 15 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 16 "c:/devl/prboom3ds/src/doomstat.h"
	.file 17 "c:/devl/prboom3ds/src/p_maputl.h"
	.file 18 "c:/devl/prboom3ds/src/sounds.h"
	.file 19 "c:/devl/prboom3ds/src/m_random.h"
	.file 20 "c:/devl/prboom3ds/src/m_bbox.h"
	.file 21 "c:/devl/prboom3ds/src/lprintf.h"
	.file 22 "c:/devl/prboom3ds/src/z_bmalloc.h"
	.file 23 "c:/devl/prboom3ds/src/r_state.h"
	.file 24 "c:/devl/prboom3ds/src/r_main.h"
	.file 25 "c:/devl/prboom3ds/src/p_setup.h"
	.file 26 "c:/devl/prboom3ds/src/p_inter.h"
	.file 27 "c:/devl/prboom3ds/src/p_spec.h"
	.file 28 "c:/devl/prboom3ds/src/s_sound.h"
	.file 29 "c:/devl/prboom3ds/src/p_map.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x696f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2027
	.byte	0x1
	.4byte	.LASF2028
	.4byte	.LASF2029
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
	.4byte	.LASF38
	.byte	0x5
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
	.byte	0x3
	.byte	0x3c
	.4byte	0xd0
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
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0xbc
	.4byte	0x103
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0xc8
	.4byte	0x14e
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0xd5
	.4byte	0x103
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0xd8
	.4byte	0x186
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF44
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 5
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0xe2
	.4byte	0x1b9
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF53
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x6
	.byte	0x42
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x6
	.byte	0x4c
	.4byte	0x4e
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x6
	.byte	0x5b
	.4byte	0x71
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x6
	.byte	0x5c
	.4byte	0x25
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x77
	.4byte	0x273
	.uleb128 0x9
	.4byte	.LASF58
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF59
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF60
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF61
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF62
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF63
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF64
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF65
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF66
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF67
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF68
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF69
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF70
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF71
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF72
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF73
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF74
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF75
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF76
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF77
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF78
	.sleb128 17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x6
	.byte	0x8e
	.4byte	0x1ec
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x2
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x7
	.byte	0x47
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x8
	.byte	0x32
	.4byte	0x29f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a5
	.uleb128 0xa
	.4byte	0x2ac
	.uleb128 0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x8
	.byte	0x48
	.4byte	0x294
	.uleb128 0xc
	.4byte	.LASF1468
	.byte	0x18
	.byte	0x8
	.byte	0x4c
	.4byte	0x30c
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x8
	.byte	0x4e
	.4byte	0x30c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x8
	.byte	0x4f
	.4byte	0x30c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x8
	.byte	0x50
	.4byte	0x2ac
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x8
	.byte	0x56
	.4byte	0x30c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x8
	.byte	0x56
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x8
	.byte	0x5b
	.4byte	0x33
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b7
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x8
	.byte	0x5c
	.4byte	0x2b7
	.uleb128 0x8
	.byte	0x1
	.byte	0x9
	.byte	0x2e
	.4byte	0x6c1
	.uleb128 0x9
	.4byte	.LASF91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF92
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF93
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF94
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF95
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF96
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF97
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF98
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF99
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF100
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF101
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF102
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF103
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF104
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF105
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF106
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF107
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF108
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF109
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF110
	.sleb128 19
	.uleb128 0x9
	.4byte	.LASF111
	.sleb128 20
	.uleb128 0x9
	.4byte	.LASF112
	.sleb128 21
	.uleb128 0x9
	.4byte	.LASF113
	.sleb128 22
	.uleb128 0x9
	.4byte	.LASF114
	.sleb128 23
	.uleb128 0x9
	.4byte	.LASF115
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF116
	.sleb128 25
	.uleb128 0x9
	.4byte	.LASF117
	.sleb128 26
	.uleb128 0x9
	.4byte	.LASF118
	.sleb128 27
	.uleb128 0x9
	.4byte	.LASF119
	.sleb128 28
	.uleb128 0x9
	.4byte	.LASF120
	.sleb128 29
	.uleb128 0x9
	.4byte	.LASF121
	.sleb128 30
	.uleb128 0x9
	.4byte	.LASF122
	.sleb128 31
	.uleb128 0x9
	.4byte	.LASF123
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF124
	.sleb128 33
	.uleb128 0x9
	.4byte	.LASF125
	.sleb128 34
	.uleb128 0x9
	.4byte	.LASF126
	.sleb128 35
	.uleb128 0x9
	.4byte	.LASF127
	.sleb128 36
	.uleb128 0x9
	.4byte	.LASF128
	.sleb128 37
	.uleb128 0x9
	.4byte	.LASF129
	.sleb128 38
	.uleb128 0x9
	.4byte	.LASF130
	.sleb128 39
	.uleb128 0x9
	.4byte	.LASF131
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF132
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF133
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF134
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF135
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF136
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF137
	.sleb128 46
	.uleb128 0x9
	.4byte	.LASF138
	.sleb128 47
	.uleb128 0x9
	.4byte	.LASF139
	.sleb128 48
	.uleb128 0x9
	.4byte	.LASF140
	.sleb128 49
	.uleb128 0x9
	.4byte	.LASF141
	.sleb128 50
	.uleb128 0x9
	.4byte	.LASF142
	.sleb128 51
	.uleb128 0x9
	.4byte	.LASF143
	.sleb128 52
	.uleb128 0x9
	.4byte	.LASF144
	.sleb128 53
	.uleb128 0x9
	.4byte	.LASF145
	.sleb128 54
	.uleb128 0x9
	.4byte	.LASF146
	.sleb128 55
	.uleb128 0x9
	.4byte	.LASF147
	.sleb128 56
	.uleb128 0x9
	.4byte	.LASF148
	.sleb128 57
	.uleb128 0x9
	.4byte	.LASF149
	.sleb128 58
	.uleb128 0x9
	.4byte	.LASF150
	.sleb128 59
	.uleb128 0x9
	.4byte	.LASF151
	.sleb128 60
	.uleb128 0x9
	.4byte	.LASF152
	.sleb128 61
	.uleb128 0x9
	.4byte	.LASF153
	.sleb128 62
	.uleb128 0x9
	.4byte	.LASF154
	.sleb128 63
	.uleb128 0x9
	.4byte	.LASF155
	.sleb128 64
	.uleb128 0x9
	.4byte	.LASF156
	.sleb128 65
	.uleb128 0x9
	.4byte	.LASF157
	.sleb128 66
	.uleb128 0x9
	.4byte	.LASF158
	.sleb128 67
	.uleb128 0x9
	.4byte	.LASF159
	.sleb128 68
	.uleb128 0x9
	.4byte	.LASF160
	.sleb128 69
	.uleb128 0x9
	.4byte	.LASF161
	.sleb128 70
	.uleb128 0x9
	.4byte	.LASF162
	.sleb128 71
	.uleb128 0x9
	.4byte	.LASF163
	.sleb128 72
	.uleb128 0x9
	.4byte	.LASF164
	.sleb128 73
	.uleb128 0x9
	.4byte	.LASF165
	.sleb128 74
	.uleb128 0x9
	.4byte	.LASF166
	.sleb128 75
	.uleb128 0x9
	.4byte	.LASF167
	.sleb128 76
	.uleb128 0x9
	.4byte	.LASF168
	.sleb128 77
	.uleb128 0x9
	.4byte	.LASF169
	.sleb128 78
	.uleb128 0x9
	.4byte	.LASF170
	.sleb128 79
	.uleb128 0x9
	.4byte	.LASF171
	.sleb128 80
	.uleb128 0x9
	.4byte	.LASF172
	.sleb128 81
	.uleb128 0x9
	.4byte	.LASF173
	.sleb128 82
	.uleb128 0x9
	.4byte	.LASF174
	.sleb128 83
	.uleb128 0x9
	.4byte	.LASF175
	.sleb128 84
	.uleb128 0x9
	.4byte	.LASF176
	.sleb128 85
	.uleb128 0x9
	.4byte	.LASF177
	.sleb128 86
	.uleb128 0x9
	.4byte	.LASF178
	.sleb128 87
	.uleb128 0x9
	.4byte	.LASF179
	.sleb128 88
	.uleb128 0x9
	.4byte	.LASF180
	.sleb128 89
	.uleb128 0x9
	.4byte	.LASF181
	.sleb128 90
	.uleb128 0x9
	.4byte	.LASF182
	.sleb128 91
	.uleb128 0x9
	.4byte	.LASF183
	.sleb128 92
	.uleb128 0x9
	.4byte	.LASF184
	.sleb128 93
	.uleb128 0x9
	.4byte	.LASF185
	.sleb128 94
	.uleb128 0x9
	.4byte	.LASF186
	.sleb128 95
	.uleb128 0x9
	.4byte	.LASF187
	.sleb128 96
	.uleb128 0x9
	.4byte	.LASF188
	.sleb128 97
	.uleb128 0x9
	.4byte	.LASF189
	.sleb128 98
	.uleb128 0x9
	.4byte	.LASF190
	.sleb128 99
	.uleb128 0x9
	.4byte	.LASF191
	.sleb128 100
	.uleb128 0x9
	.4byte	.LASF192
	.sleb128 101
	.uleb128 0x9
	.4byte	.LASF193
	.sleb128 102
	.uleb128 0x9
	.4byte	.LASF194
	.sleb128 103
	.uleb128 0x9
	.4byte	.LASF195
	.sleb128 104
	.uleb128 0x9
	.4byte	.LASF196
	.sleb128 105
	.uleb128 0x9
	.4byte	.LASF197
	.sleb128 106
	.uleb128 0x9
	.4byte	.LASF198
	.sleb128 107
	.uleb128 0x9
	.4byte	.LASF199
	.sleb128 108
	.uleb128 0x9
	.4byte	.LASF200
	.sleb128 109
	.uleb128 0x9
	.4byte	.LASF201
	.sleb128 110
	.uleb128 0x9
	.4byte	.LASF202
	.sleb128 111
	.uleb128 0x9
	.4byte	.LASF203
	.sleb128 112
	.uleb128 0x9
	.4byte	.LASF204
	.sleb128 113
	.uleb128 0x9
	.4byte	.LASF205
	.sleb128 114
	.uleb128 0x9
	.4byte	.LASF206
	.sleb128 115
	.uleb128 0x9
	.4byte	.LASF207
	.sleb128 116
	.uleb128 0x9
	.4byte	.LASF208
	.sleb128 117
	.uleb128 0x9
	.4byte	.LASF209
	.sleb128 118
	.uleb128 0x9
	.4byte	.LASF210
	.sleb128 119
	.uleb128 0x9
	.4byte	.LASF211
	.sleb128 120
	.uleb128 0x9
	.4byte	.LASF212
	.sleb128 121
	.uleb128 0x9
	.4byte	.LASF213
	.sleb128 122
	.uleb128 0x9
	.4byte	.LASF214
	.sleb128 123
	.uleb128 0x9
	.4byte	.LASF215
	.sleb128 124
	.uleb128 0x9
	.4byte	.LASF216
	.sleb128 125
	.uleb128 0x9
	.4byte	.LASF217
	.sleb128 126
	.uleb128 0x9
	.4byte	.LASF218
	.sleb128 127
	.uleb128 0x9
	.4byte	.LASF219
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF220
	.sleb128 129
	.uleb128 0x9
	.4byte	.LASF221
	.sleb128 130
	.uleb128 0x9
	.4byte	.LASF222
	.sleb128 131
	.uleb128 0x9
	.4byte	.LASF223
	.sleb128 132
	.uleb128 0x9
	.4byte	.LASF224
	.sleb128 133
	.uleb128 0x9
	.4byte	.LASF225
	.sleb128 134
	.uleb128 0x9
	.4byte	.LASF226
	.sleb128 135
	.uleb128 0x9
	.4byte	.LASF227
	.sleb128 136
	.uleb128 0x9
	.4byte	.LASF228
	.sleb128 137
	.uleb128 0x9
	.4byte	.LASF229
	.sleb128 138
	.uleb128 0x9
	.4byte	.LASF230
	.sleb128 139
	.uleb128 0x9
	.4byte	.LASF231
	.sleb128 140
	.byte	0
	.uleb128 0x4
	.4byte	.LASF232
	.byte	0x9
	.byte	0xc1
	.4byte	0x31d
	.uleb128 0x8
	.byte	0x2
	.byte	0x9
	.byte	0xc8
	.4byte	0x22f0
	.uleb128 0x9
	.4byte	.LASF233
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF234
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF235
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF236
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF237
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF238
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF239
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF240
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF241
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF242
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF243
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF244
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF245
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF246
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF247
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF248
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF249
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF250
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF251
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF252
	.sleb128 19
	.uleb128 0x9
	.4byte	.LASF253
	.sleb128 20
	.uleb128 0x9
	.4byte	.LASF254
	.sleb128 21
	.uleb128 0x9
	.4byte	.LASF255
	.sleb128 22
	.uleb128 0x9
	.4byte	.LASF256
	.sleb128 23
	.uleb128 0x9
	.4byte	.LASF257
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF258
	.sleb128 25
	.uleb128 0x9
	.4byte	.LASF259
	.sleb128 26
	.uleb128 0x9
	.4byte	.LASF260
	.sleb128 27
	.uleb128 0x9
	.4byte	.LASF261
	.sleb128 28
	.uleb128 0x9
	.4byte	.LASF262
	.sleb128 29
	.uleb128 0x9
	.4byte	.LASF263
	.sleb128 30
	.uleb128 0x9
	.4byte	.LASF264
	.sleb128 31
	.uleb128 0x9
	.4byte	.LASF265
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF266
	.sleb128 33
	.uleb128 0x9
	.4byte	.LASF267
	.sleb128 34
	.uleb128 0x9
	.4byte	.LASF268
	.sleb128 35
	.uleb128 0x9
	.4byte	.LASF269
	.sleb128 36
	.uleb128 0x9
	.4byte	.LASF270
	.sleb128 37
	.uleb128 0x9
	.4byte	.LASF271
	.sleb128 38
	.uleb128 0x9
	.4byte	.LASF272
	.sleb128 39
	.uleb128 0x9
	.4byte	.LASF273
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF274
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF275
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF276
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF277
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF278
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF279
	.sleb128 46
	.uleb128 0x9
	.4byte	.LASF280
	.sleb128 47
	.uleb128 0x9
	.4byte	.LASF281
	.sleb128 48
	.uleb128 0x9
	.4byte	.LASF282
	.sleb128 49
	.uleb128 0x9
	.4byte	.LASF283
	.sleb128 50
	.uleb128 0x9
	.4byte	.LASF284
	.sleb128 51
	.uleb128 0x9
	.4byte	.LASF285
	.sleb128 52
	.uleb128 0x9
	.4byte	.LASF286
	.sleb128 53
	.uleb128 0x9
	.4byte	.LASF287
	.sleb128 54
	.uleb128 0x9
	.4byte	.LASF288
	.sleb128 55
	.uleb128 0x9
	.4byte	.LASF289
	.sleb128 56
	.uleb128 0x9
	.4byte	.LASF290
	.sleb128 57
	.uleb128 0x9
	.4byte	.LASF291
	.sleb128 58
	.uleb128 0x9
	.4byte	.LASF292
	.sleb128 59
	.uleb128 0x9
	.4byte	.LASF293
	.sleb128 60
	.uleb128 0x9
	.4byte	.LASF294
	.sleb128 61
	.uleb128 0x9
	.4byte	.LASF295
	.sleb128 62
	.uleb128 0x9
	.4byte	.LASF296
	.sleb128 63
	.uleb128 0x9
	.4byte	.LASF297
	.sleb128 64
	.uleb128 0x9
	.4byte	.LASF298
	.sleb128 65
	.uleb128 0x9
	.4byte	.LASF299
	.sleb128 66
	.uleb128 0x9
	.4byte	.LASF300
	.sleb128 67
	.uleb128 0x9
	.4byte	.LASF301
	.sleb128 68
	.uleb128 0x9
	.4byte	.LASF302
	.sleb128 69
	.uleb128 0x9
	.4byte	.LASF303
	.sleb128 70
	.uleb128 0x9
	.4byte	.LASF304
	.sleb128 71
	.uleb128 0x9
	.4byte	.LASF305
	.sleb128 72
	.uleb128 0x9
	.4byte	.LASF306
	.sleb128 73
	.uleb128 0x9
	.4byte	.LASF307
	.sleb128 74
	.uleb128 0x9
	.4byte	.LASF308
	.sleb128 75
	.uleb128 0x9
	.4byte	.LASF309
	.sleb128 76
	.uleb128 0x9
	.4byte	.LASF310
	.sleb128 77
	.uleb128 0x9
	.4byte	.LASF311
	.sleb128 78
	.uleb128 0x9
	.4byte	.LASF312
	.sleb128 79
	.uleb128 0x9
	.4byte	.LASF313
	.sleb128 80
	.uleb128 0x9
	.4byte	.LASF314
	.sleb128 81
	.uleb128 0x9
	.4byte	.LASF315
	.sleb128 82
	.uleb128 0x9
	.4byte	.LASF316
	.sleb128 83
	.uleb128 0x9
	.4byte	.LASF317
	.sleb128 84
	.uleb128 0x9
	.4byte	.LASF318
	.sleb128 85
	.uleb128 0x9
	.4byte	.LASF319
	.sleb128 86
	.uleb128 0x9
	.4byte	.LASF320
	.sleb128 87
	.uleb128 0x9
	.4byte	.LASF321
	.sleb128 88
	.uleb128 0x9
	.4byte	.LASF322
	.sleb128 89
	.uleb128 0x9
	.4byte	.LASF323
	.sleb128 90
	.uleb128 0x9
	.4byte	.LASF324
	.sleb128 91
	.uleb128 0x9
	.4byte	.LASF325
	.sleb128 92
	.uleb128 0x9
	.4byte	.LASF326
	.sleb128 93
	.uleb128 0x9
	.4byte	.LASF327
	.sleb128 94
	.uleb128 0x9
	.4byte	.LASF328
	.sleb128 95
	.uleb128 0x9
	.4byte	.LASF329
	.sleb128 96
	.uleb128 0x9
	.4byte	.LASF330
	.sleb128 97
	.uleb128 0x9
	.4byte	.LASF331
	.sleb128 98
	.uleb128 0x9
	.4byte	.LASF332
	.sleb128 99
	.uleb128 0x9
	.4byte	.LASF333
	.sleb128 100
	.uleb128 0x9
	.4byte	.LASF334
	.sleb128 101
	.uleb128 0x9
	.4byte	.LASF335
	.sleb128 102
	.uleb128 0x9
	.4byte	.LASF336
	.sleb128 103
	.uleb128 0x9
	.4byte	.LASF337
	.sleb128 104
	.uleb128 0x9
	.4byte	.LASF338
	.sleb128 105
	.uleb128 0x9
	.4byte	.LASF339
	.sleb128 106
	.uleb128 0x9
	.4byte	.LASF340
	.sleb128 107
	.uleb128 0x9
	.4byte	.LASF341
	.sleb128 108
	.uleb128 0x9
	.4byte	.LASF342
	.sleb128 109
	.uleb128 0x9
	.4byte	.LASF343
	.sleb128 110
	.uleb128 0x9
	.4byte	.LASF344
	.sleb128 111
	.uleb128 0x9
	.4byte	.LASF345
	.sleb128 112
	.uleb128 0x9
	.4byte	.LASF346
	.sleb128 113
	.uleb128 0x9
	.4byte	.LASF347
	.sleb128 114
	.uleb128 0x9
	.4byte	.LASF348
	.sleb128 115
	.uleb128 0x9
	.4byte	.LASF349
	.sleb128 116
	.uleb128 0x9
	.4byte	.LASF350
	.sleb128 117
	.uleb128 0x9
	.4byte	.LASF351
	.sleb128 118
	.uleb128 0x9
	.4byte	.LASF352
	.sleb128 119
	.uleb128 0x9
	.4byte	.LASF353
	.sleb128 120
	.uleb128 0x9
	.4byte	.LASF354
	.sleb128 121
	.uleb128 0x9
	.4byte	.LASF355
	.sleb128 122
	.uleb128 0x9
	.4byte	.LASF356
	.sleb128 123
	.uleb128 0x9
	.4byte	.LASF357
	.sleb128 124
	.uleb128 0x9
	.4byte	.LASF358
	.sleb128 125
	.uleb128 0x9
	.4byte	.LASF359
	.sleb128 126
	.uleb128 0x9
	.4byte	.LASF360
	.sleb128 127
	.uleb128 0x9
	.4byte	.LASF361
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF362
	.sleb128 129
	.uleb128 0x9
	.4byte	.LASF363
	.sleb128 130
	.uleb128 0x9
	.4byte	.LASF364
	.sleb128 131
	.uleb128 0x9
	.4byte	.LASF365
	.sleb128 132
	.uleb128 0x9
	.4byte	.LASF366
	.sleb128 133
	.uleb128 0x9
	.4byte	.LASF367
	.sleb128 134
	.uleb128 0x9
	.4byte	.LASF368
	.sleb128 135
	.uleb128 0x9
	.4byte	.LASF369
	.sleb128 136
	.uleb128 0x9
	.4byte	.LASF370
	.sleb128 137
	.uleb128 0x9
	.4byte	.LASF371
	.sleb128 138
	.uleb128 0x9
	.4byte	.LASF372
	.sleb128 139
	.uleb128 0x9
	.4byte	.LASF373
	.sleb128 140
	.uleb128 0x9
	.4byte	.LASF374
	.sleb128 141
	.uleb128 0x9
	.4byte	.LASF375
	.sleb128 142
	.uleb128 0x9
	.4byte	.LASF376
	.sleb128 143
	.uleb128 0x9
	.4byte	.LASF377
	.sleb128 144
	.uleb128 0x9
	.4byte	.LASF378
	.sleb128 145
	.uleb128 0x9
	.4byte	.LASF379
	.sleb128 146
	.uleb128 0x9
	.4byte	.LASF380
	.sleb128 147
	.uleb128 0x9
	.4byte	.LASF381
	.sleb128 148
	.uleb128 0x9
	.4byte	.LASF382
	.sleb128 149
	.uleb128 0x9
	.4byte	.LASF383
	.sleb128 150
	.uleb128 0x9
	.4byte	.LASF384
	.sleb128 151
	.uleb128 0x9
	.4byte	.LASF385
	.sleb128 152
	.uleb128 0x9
	.4byte	.LASF386
	.sleb128 153
	.uleb128 0x9
	.4byte	.LASF387
	.sleb128 154
	.uleb128 0x9
	.4byte	.LASF388
	.sleb128 155
	.uleb128 0x9
	.4byte	.LASF389
	.sleb128 156
	.uleb128 0x9
	.4byte	.LASF390
	.sleb128 157
	.uleb128 0x9
	.4byte	.LASF391
	.sleb128 158
	.uleb128 0x9
	.4byte	.LASF392
	.sleb128 159
	.uleb128 0x9
	.4byte	.LASF393
	.sleb128 160
	.uleb128 0x9
	.4byte	.LASF394
	.sleb128 161
	.uleb128 0x9
	.4byte	.LASF395
	.sleb128 162
	.uleb128 0x9
	.4byte	.LASF396
	.sleb128 163
	.uleb128 0x9
	.4byte	.LASF397
	.sleb128 164
	.uleb128 0x9
	.4byte	.LASF398
	.sleb128 165
	.uleb128 0x9
	.4byte	.LASF399
	.sleb128 166
	.uleb128 0x9
	.4byte	.LASF400
	.sleb128 167
	.uleb128 0x9
	.4byte	.LASF401
	.sleb128 168
	.uleb128 0x9
	.4byte	.LASF402
	.sleb128 169
	.uleb128 0x9
	.4byte	.LASF403
	.sleb128 170
	.uleb128 0x9
	.4byte	.LASF404
	.sleb128 171
	.uleb128 0x9
	.4byte	.LASF405
	.sleb128 172
	.uleb128 0x9
	.4byte	.LASF406
	.sleb128 173
	.uleb128 0x9
	.4byte	.LASF407
	.sleb128 174
	.uleb128 0x9
	.4byte	.LASF408
	.sleb128 175
	.uleb128 0x9
	.4byte	.LASF409
	.sleb128 176
	.uleb128 0x9
	.4byte	.LASF410
	.sleb128 177
	.uleb128 0x9
	.4byte	.LASF411
	.sleb128 178
	.uleb128 0x9
	.4byte	.LASF412
	.sleb128 179
	.uleb128 0x9
	.4byte	.LASF413
	.sleb128 180
	.uleb128 0x9
	.4byte	.LASF414
	.sleb128 181
	.uleb128 0x9
	.4byte	.LASF415
	.sleb128 182
	.uleb128 0x9
	.4byte	.LASF416
	.sleb128 183
	.uleb128 0x9
	.4byte	.LASF417
	.sleb128 184
	.uleb128 0x9
	.4byte	.LASF418
	.sleb128 185
	.uleb128 0x9
	.4byte	.LASF419
	.sleb128 186
	.uleb128 0x9
	.4byte	.LASF420
	.sleb128 187
	.uleb128 0x9
	.4byte	.LASF421
	.sleb128 188
	.uleb128 0x9
	.4byte	.LASF422
	.sleb128 189
	.uleb128 0x9
	.4byte	.LASF423
	.sleb128 190
	.uleb128 0x9
	.4byte	.LASF424
	.sleb128 191
	.uleb128 0x9
	.4byte	.LASF425
	.sleb128 192
	.uleb128 0x9
	.4byte	.LASF426
	.sleb128 193
	.uleb128 0x9
	.4byte	.LASF427
	.sleb128 194
	.uleb128 0x9
	.4byte	.LASF428
	.sleb128 195
	.uleb128 0x9
	.4byte	.LASF429
	.sleb128 196
	.uleb128 0x9
	.4byte	.LASF430
	.sleb128 197
	.uleb128 0x9
	.4byte	.LASF431
	.sleb128 198
	.uleb128 0x9
	.4byte	.LASF432
	.sleb128 199
	.uleb128 0x9
	.4byte	.LASF433
	.sleb128 200
	.uleb128 0x9
	.4byte	.LASF434
	.sleb128 201
	.uleb128 0x9
	.4byte	.LASF435
	.sleb128 202
	.uleb128 0x9
	.4byte	.LASF436
	.sleb128 203
	.uleb128 0x9
	.4byte	.LASF437
	.sleb128 204
	.uleb128 0x9
	.4byte	.LASF438
	.sleb128 205
	.uleb128 0x9
	.4byte	.LASF439
	.sleb128 206
	.uleb128 0x9
	.4byte	.LASF440
	.sleb128 207
	.uleb128 0x9
	.4byte	.LASF441
	.sleb128 208
	.uleb128 0x9
	.4byte	.LASF442
	.sleb128 209
	.uleb128 0x9
	.4byte	.LASF443
	.sleb128 210
	.uleb128 0x9
	.4byte	.LASF444
	.sleb128 211
	.uleb128 0x9
	.4byte	.LASF445
	.sleb128 212
	.uleb128 0x9
	.4byte	.LASF446
	.sleb128 213
	.uleb128 0x9
	.4byte	.LASF447
	.sleb128 214
	.uleb128 0x9
	.4byte	.LASF448
	.sleb128 215
	.uleb128 0x9
	.4byte	.LASF449
	.sleb128 216
	.uleb128 0x9
	.4byte	.LASF450
	.sleb128 217
	.uleb128 0x9
	.4byte	.LASF451
	.sleb128 218
	.uleb128 0x9
	.4byte	.LASF452
	.sleb128 219
	.uleb128 0x9
	.4byte	.LASF453
	.sleb128 220
	.uleb128 0x9
	.4byte	.LASF454
	.sleb128 221
	.uleb128 0x9
	.4byte	.LASF455
	.sleb128 222
	.uleb128 0x9
	.4byte	.LASF456
	.sleb128 223
	.uleb128 0x9
	.4byte	.LASF457
	.sleb128 224
	.uleb128 0x9
	.4byte	.LASF458
	.sleb128 225
	.uleb128 0x9
	.4byte	.LASF459
	.sleb128 226
	.uleb128 0x9
	.4byte	.LASF460
	.sleb128 227
	.uleb128 0x9
	.4byte	.LASF461
	.sleb128 228
	.uleb128 0x9
	.4byte	.LASF462
	.sleb128 229
	.uleb128 0x9
	.4byte	.LASF463
	.sleb128 230
	.uleb128 0x9
	.4byte	.LASF464
	.sleb128 231
	.uleb128 0x9
	.4byte	.LASF465
	.sleb128 232
	.uleb128 0x9
	.4byte	.LASF466
	.sleb128 233
	.uleb128 0x9
	.4byte	.LASF467
	.sleb128 234
	.uleb128 0x9
	.4byte	.LASF468
	.sleb128 235
	.uleb128 0x9
	.4byte	.LASF469
	.sleb128 236
	.uleb128 0x9
	.4byte	.LASF470
	.sleb128 237
	.uleb128 0x9
	.4byte	.LASF471
	.sleb128 238
	.uleb128 0x9
	.4byte	.LASF472
	.sleb128 239
	.uleb128 0x9
	.4byte	.LASF473
	.sleb128 240
	.uleb128 0x9
	.4byte	.LASF474
	.sleb128 241
	.uleb128 0x9
	.4byte	.LASF475
	.sleb128 242
	.uleb128 0x9
	.4byte	.LASF476
	.sleb128 243
	.uleb128 0x9
	.4byte	.LASF477
	.sleb128 244
	.uleb128 0x9
	.4byte	.LASF478
	.sleb128 245
	.uleb128 0x9
	.4byte	.LASF479
	.sleb128 246
	.uleb128 0x9
	.4byte	.LASF480
	.sleb128 247
	.uleb128 0x9
	.4byte	.LASF481
	.sleb128 248
	.uleb128 0x9
	.4byte	.LASF482
	.sleb128 249
	.uleb128 0x9
	.4byte	.LASF483
	.sleb128 250
	.uleb128 0x9
	.4byte	.LASF484
	.sleb128 251
	.uleb128 0x9
	.4byte	.LASF485
	.sleb128 252
	.uleb128 0x9
	.4byte	.LASF486
	.sleb128 253
	.uleb128 0x9
	.4byte	.LASF487
	.sleb128 254
	.uleb128 0x9
	.4byte	.LASF488
	.sleb128 255
	.uleb128 0x9
	.4byte	.LASF489
	.sleb128 256
	.uleb128 0x9
	.4byte	.LASF490
	.sleb128 257
	.uleb128 0x9
	.4byte	.LASF491
	.sleb128 258
	.uleb128 0x9
	.4byte	.LASF492
	.sleb128 259
	.uleb128 0x9
	.4byte	.LASF493
	.sleb128 260
	.uleb128 0x9
	.4byte	.LASF494
	.sleb128 261
	.uleb128 0x9
	.4byte	.LASF495
	.sleb128 262
	.uleb128 0x9
	.4byte	.LASF496
	.sleb128 263
	.uleb128 0x9
	.4byte	.LASF497
	.sleb128 264
	.uleb128 0x9
	.4byte	.LASF498
	.sleb128 265
	.uleb128 0x9
	.4byte	.LASF499
	.sleb128 266
	.uleb128 0x9
	.4byte	.LASF500
	.sleb128 267
	.uleb128 0x9
	.4byte	.LASF501
	.sleb128 268
	.uleb128 0x9
	.4byte	.LASF502
	.sleb128 269
	.uleb128 0x9
	.4byte	.LASF503
	.sleb128 270
	.uleb128 0x9
	.4byte	.LASF504
	.sleb128 271
	.uleb128 0x9
	.4byte	.LASF505
	.sleb128 272
	.uleb128 0x9
	.4byte	.LASF506
	.sleb128 273
	.uleb128 0x9
	.4byte	.LASF507
	.sleb128 274
	.uleb128 0x9
	.4byte	.LASF508
	.sleb128 275
	.uleb128 0x9
	.4byte	.LASF509
	.sleb128 276
	.uleb128 0x9
	.4byte	.LASF510
	.sleb128 277
	.uleb128 0x9
	.4byte	.LASF511
	.sleb128 278
	.uleb128 0x9
	.4byte	.LASF512
	.sleb128 279
	.uleb128 0x9
	.4byte	.LASF513
	.sleb128 280
	.uleb128 0x9
	.4byte	.LASF514
	.sleb128 281
	.uleb128 0x9
	.4byte	.LASF515
	.sleb128 282
	.uleb128 0x9
	.4byte	.LASF516
	.sleb128 283
	.uleb128 0x9
	.4byte	.LASF517
	.sleb128 284
	.uleb128 0x9
	.4byte	.LASF518
	.sleb128 285
	.uleb128 0x9
	.4byte	.LASF519
	.sleb128 286
	.uleb128 0x9
	.4byte	.LASF520
	.sleb128 287
	.uleb128 0x9
	.4byte	.LASF521
	.sleb128 288
	.uleb128 0x9
	.4byte	.LASF522
	.sleb128 289
	.uleb128 0x9
	.4byte	.LASF523
	.sleb128 290
	.uleb128 0x9
	.4byte	.LASF524
	.sleb128 291
	.uleb128 0x9
	.4byte	.LASF525
	.sleb128 292
	.uleb128 0x9
	.4byte	.LASF526
	.sleb128 293
	.uleb128 0x9
	.4byte	.LASF527
	.sleb128 294
	.uleb128 0x9
	.4byte	.LASF528
	.sleb128 295
	.uleb128 0x9
	.4byte	.LASF529
	.sleb128 296
	.uleb128 0x9
	.4byte	.LASF530
	.sleb128 297
	.uleb128 0x9
	.4byte	.LASF531
	.sleb128 298
	.uleb128 0x9
	.4byte	.LASF532
	.sleb128 299
	.uleb128 0x9
	.4byte	.LASF533
	.sleb128 300
	.uleb128 0x9
	.4byte	.LASF534
	.sleb128 301
	.uleb128 0x9
	.4byte	.LASF535
	.sleb128 302
	.uleb128 0x9
	.4byte	.LASF536
	.sleb128 303
	.uleb128 0x9
	.4byte	.LASF537
	.sleb128 304
	.uleb128 0x9
	.4byte	.LASF538
	.sleb128 305
	.uleb128 0x9
	.4byte	.LASF539
	.sleb128 306
	.uleb128 0x9
	.4byte	.LASF540
	.sleb128 307
	.uleb128 0x9
	.4byte	.LASF541
	.sleb128 308
	.uleb128 0x9
	.4byte	.LASF542
	.sleb128 309
	.uleb128 0x9
	.4byte	.LASF543
	.sleb128 310
	.uleb128 0x9
	.4byte	.LASF544
	.sleb128 311
	.uleb128 0x9
	.4byte	.LASF545
	.sleb128 312
	.uleb128 0x9
	.4byte	.LASF546
	.sleb128 313
	.uleb128 0x9
	.4byte	.LASF547
	.sleb128 314
	.uleb128 0x9
	.4byte	.LASF548
	.sleb128 315
	.uleb128 0x9
	.4byte	.LASF549
	.sleb128 316
	.uleb128 0x9
	.4byte	.LASF550
	.sleb128 317
	.uleb128 0x9
	.4byte	.LASF551
	.sleb128 318
	.uleb128 0x9
	.4byte	.LASF552
	.sleb128 319
	.uleb128 0x9
	.4byte	.LASF553
	.sleb128 320
	.uleb128 0x9
	.4byte	.LASF554
	.sleb128 321
	.uleb128 0x9
	.4byte	.LASF555
	.sleb128 322
	.uleb128 0x9
	.4byte	.LASF556
	.sleb128 323
	.uleb128 0x9
	.4byte	.LASF557
	.sleb128 324
	.uleb128 0x9
	.4byte	.LASF558
	.sleb128 325
	.uleb128 0x9
	.4byte	.LASF559
	.sleb128 326
	.uleb128 0x9
	.4byte	.LASF560
	.sleb128 327
	.uleb128 0x9
	.4byte	.LASF561
	.sleb128 328
	.uleb128 0x9
	.4byte	.LASF562
	.sleb128 329
	.uleb128 0x9
	.4byte	.LASF563
	.sleb128 330
	.uleb128 0x9
	.4byte	.LASF564
	.sleb128 331
	.uleb128 0x9
	.4byte	.LASF565
	.sleb128 332
	.uleb128 0x9
	.4byte	.LASF566
	.sleb128 333
	.uleb128 0x9
	.4byte	.LASF567
	.sleb128 334
	.uleb128 0x9
	.4byte	.LASF568
	.sleb128 335
	.uleb128 0x9
	.4byte	.LASF569
	.sleb128 336
	.uleb128 0x9
	.4byte	.LASF570
	.sleb128 337
	.uleb128 0x9
	.4byte	.LASF571
	.sleb128 338
	.uleb128 0x9
	.4byte	.LASF572
	.sleb128 339
	.uleb128 0x9
	.4byte	.LASF573
	.sleb128 340
	.uleb128 0x9
	.4byte	.LASF574
	.sleb128 341
	.uleb128 0x9
	.4byte	.LASF575
	.sleb128 342
	.uleb128 0x9
	.4byte	.LASF576
	.sleb128 343
	.uleb128 0x9
	.4byte	.LASF577
	.sleb128 344
	.uleb128 0x9
	.4byte	.LASF578
	.sleb128 345
	.uleb128 0x9
	.4byte	.LASF579
	.sleb128 346
	.uleb128 0x9
	.4byte	.LASF580
	.sleb128 347
	.uleb128 0x9
	.4byte	.LASF581
	.sleb128 348
	.uleb128 0x9
	.4byte	.LASF582
	.sleb128 349
	.uleb128 0x9
	.4byte	.LASF583
	.sleb128 350
	.uleb128 0x9
	.4byte	.LASF584
	.sleb128 351
	.uleb128 0x9
	.4byte	.LASF585
	.sleb128 352
	.uleb128 0x9
	.4byte	.LASF586
	.sleb128 353
	.uleb128 0x9
	.4byte	.LASF587
	.sleb128 354
	.uleb128 0x9
	.4byte	.LASF588
	.sleb128 355
	.uleb128 0x9
	.4byte	.LASF589
	.sleb128 356
	.uleb128 0x9
	.4byte	.LASF590
	.sleb128 357
	.uleb128 0x9
	.4byte	.LASF591
	.sleb128 358
	.uleb128 0x9
	.4byte	.LASF592
	.sleb128 359
	.uleb128 0x9
	.4byte	.LASF593
	.sleb128 360
	.uleb128 0x9
	.4byte	.LASF594
	.sleb128 361
	.uleb128 0x9
	.4byte	.LASF595
	.sleb128 362
	.uleb128 0x9
	.4byte	.LASF596
	.sleb128 363
	.uleb128 0x9
	.4byte	.LASF597
	.sleb128 364
	.uleb128 0x9
	.4byte	.LASF598
	.sleb128 365
	.uleb128 0x9
	.4byte	.LASF599
	.sleb128 366
	.uleb128 0x9
	.4byte	.LASF600
	.sleb128 367
	.uleb128 0x9
	.4byte	.LASF601
	.sleb128 368
	.uleb128 0x9
	.4byte	.LASF602
	.sleb128 369
	.uleb128 0x9
	.4byte	.LASF603
	.sleb128 370
	.uleb128 0x9
	.4byte	.LASF604
	.sleb128 371
	.uleb128 0x9
	.4byte	.LASF605
	.sleb128 372
	.uleb128 0x9
	.4byte	.LASF606
	.sleb128 373
	.uleb128 0x9
	.4byte	.LASF607
	.sleb128 374
	.uleb128 0x9
	.4byte	.LASF608
	.sleb128 375
	.uleb128 0x9
	.4byte	.LASF609
	.sleb128 376
	.uleb128 0x9
	.4byte	.LASF610
	.sleb128 377
	.uleb128 0x9
	.4byte	.LASF611
	.sleb128 378
	.uleb128 0x9
	.4byte	.LASF612
	.sleb128 379
	.uleb128 0x9
	.4byte	.LASF613
	.sleb128 380
	.uleb128 0x9
	.4byte	.LASF614
	.sleb128 381
	.uleb128 0x9
	.4byte	.LASF615
	.sleb128 382
	.uleb128 0x9
	.4byte	.LASF616
	.sleb128 383
	.uleb128 0x9
	.4byte	.LASF617
	.sleb128 384
	.uleb128 0x9
	.4byte	.LASF618
	.sleb128 385
	.uleb128 0x9
	.4byte	.LASF619
	.sleb128 386
	.uleb128 0x9
	.4byte	.LASF620
	.sleb128 387
	.uleb128 0x9
	.4byte	.LASF621
	.sleb128 388
	.uleb128 0x9
	.4byte	.LASF622
	.sleb128 389
	.uleb128 0x9
	.4byte	.LASF623
	.sleb128 390
	.uleb128 0x9
	.4byte	.LASF624
	.sleb128 391
	.uleb128 0x9
	.4byte	.LASF625
	.sleb128 392
	.uleb128 0x9
	.4byte	.LASF626
	.sleb128 393
	.uleb128 0x9
	.4byte	.LASF627
	.sleb128 394
	.uleb128 0x9
	.4byte	.LASF628
	.sleb128 395
	.uleb128 0x9
	.4byte	.LASF629
	.sleb128 396
	.uleb128 0x9
	.4byte	.LASF630
	.sleb128 397
	.uleb128 0x9
	.4byte	.LASF631
	.sleb128 398
	.uleb128 0x9
	.4byte	.LASF632
	.sleb128 399
	.uleb128 0x9
	.4byte	.LASF633
	.sleb128 400
	.uleb128 0x9
	.4byte	.LASF634
	.sleb128 401
	.uleb128 0x9
	.4byte	.LASF635
	.sleb128 402
	.uleb128 0x9
	.4byte	.LASF636
	.sleb128 403
	.uleb128 0x9
	.4byte	.LASF637
	.sleb128 404
	.uleb128 0x9
	.4byte	.LASF638
	.sleb128 405
	.uleb128 0x9
	.4byte	.LASF639
	.sleb128 406
	.uleb128 0x9
	.4byte	.LASF640
	.sleb128 407
	.uleb128 0x9
	.4byte	.LASF641
	.sleb128 408
	.uleb128 0x9
	.4byte	.LASF642
	.sleb128 409
	.uleb128 0x9
	.4byte	.LASF643
	.sleb128 410
	.uleb128 0x9
	.4byte	.LASF644
	.sleb128 411
	.uleb128 0x9
	.4byte	.LASF645
	.sleb128 412
	.uleb128 0x9
	.4byte	.LASF646
	.sleb128 413
	.uleb128 0x9
	.4byte	.LASF647
	.sleb128 414
	.uleb128 0x9
	.4byte	.LASF648
	.sleb128 415
	.uleb128 0x9
	.4byte	.LASF649
	.sleb128 416
	.uleb128 0x9
	.4byte	.LASF650
	.sleb128 417
	.uleb128 0x9
	.4byte	.LASF651
	.sleb128 418
	.uleb128 0x9
	.4byte	.LASF652
	.sleb128 419
	.uleb128 0x9
	.4byte	.LASF653
	.sleb128 420
	.uleb128 0x9
	.4byte	.LASF654
	.sleb128 421
	.uleb128 0x9
	.4byte	.LASF655
	.sleb128 422
	.uleb128 0x9
	.4byte	.LASF656
	.sleb128 423
	.uleb128 0x9
	.4byte	.LASF657
	.sleb128 424
	.uleb128 0x9
	.4byte	.LASF658
	.sleb128 425
	.uleb128 0x9
	.4byte	.LASF659
	.sleb128 426
	.uleb128 0x9
	.4byte	.LASF660
	.sleb128 427
	.uleb128 0x9
	.4byte	.LASF661
	.sleb128 428
	.uleb128 0x9
	.4byte	.LASF662
	.sleb128 429
	.uleb128 0x9
	.4byte	.LASF663
	.sleb128 430
	.uleb128 0x9
	.4byte	.LASF664
	.sleb128 431
	.uleb128 0x9
	.4byte	.LASF665
	.sleb128 432
	.uleb128 0x9
	.4byte	.LASF666
	.sleb128 433
	.uleb128 0x9
	.4byte	.LASF667
	.sleb128 434
	.uleb128 0x9
	.4byte	.LASF668
	.sleb128 435
	.uleb128 0x9
	.4byte	.LASF669
	.sleb128 436
	.uleb128 0x9
	.4byte	.LASF670
	.sleb128 437
	.uleb128 0x9
	.4byte	.LASF671
	.sleb128 438
	.uleb128 0x9
	.4byte	.LASF672
	.sleb128 439
	.uleb128 0x9
	.4byte	.LASF673
	.sleb128 440
	.uleb128 0x9
	.4byte	.LASF674
	.sleb128 441
	.uleb128 0x9
	.4byte	.LASF675
	.sleb128 442
	.uleb128 0x9
	.4byte	.LASF676
	.sleb128 443
	.uleb128 0x9
	.4byte	.LASF677
	.sleb128 444
	.uleb128 0x9
	.4byte	.LASF678
	.sleb128 445
	.uleb128 0x9
	.4byte	.LASF679
	.sleb128 446
	.uleb128 0x9
	.4byte	.LASF680
	.sleb128 447
	.uleb128 0x9
	.4byte	.LASF681
	.sleb128 448
	.uleb128 0x9
	.4byte	.LASF682
	.sleb128 449
	.uleb128 0x9
	.4byte	.LASF683
	.sleb128 450
	.uleb128 0x9
	.4byte	.LASF684
	.sleb128 451
	.uleb128 0x9
	.4byte	.LASF685
	.sleb128 452
	.uleb128 0x9
	.4byte	.LASF686
	.sleb128 453
	.uleb128 0x9
	.4byte	.LASF687
	.sleb128 454
	.uleb128 0x9
	.4byte	.LASF688
	.sleb128 455
	.uleb128 0x9
	.4byte	.LASF689
	.sleb128 456
	.uleb128 0x9
	.4byte	.LASF690
	.sleb128 457
	.uleb128 0x9
	.4byte	.LASF691
	.sleb128 458
	.uleb128 0x9
	.4byte	.LASF692
	.sleb128 459
	.uleb128 0x9
	.4byte	.LASF693
	.sleb128 460
	.uleb128 0x9
	.4byte	.LASF694
	.sleb128 461
	.uleb128 0x9
	.4byte	.LASF695
	.sleb128 462
	.uleb128 0x9
	.4byte	.LASF696
	.sleb128 463
	.uleb128 0x9
	.4byte	.LASF697
	.sleb128 464
	.uleb128 0x9
	.4byte	.LASF698
	.sleb128 465
	.uleb128 0x9
	.4byte	.LASF699
	.sleb128 466
	.uleb128 0x9
	.4byte	.LASF700
	.sleb128 467
	.uleb128 0x9
	.4byte	.LASF701
	.sleb128 468
	.uleb128 0x9
	.4byte	.LASF702
	.sleb128 469
	.uleb128 0x9
	.4byte	.LASF703
	.sleb128 470
	.uleb128 0x9
	.4byte	.LASF704
	.sleb128 471
	.uleb128 0x9
	.4byte	.LASF705
	.sleb128 472
	.uleb128 0x9
	.4byte	.LASF706
	.sleb128 473
	.uleb128 0x9
	.4byte	.LASF707
	.sleb128 474
	.uleb128 0x9
	.4byte	.LASF708
	.sleb128 475
	.uleb128 0x9
	.4byte	.LASF709
	.sleb128 476
	.uleb128 0x9
	.4byte	.LASF710
	.sleb128 477
	.uleb128 0x9
	.4byte	.LASF711
	.sleb128 478
	.uleb128 0x9
	.4byte	.LASF712
	.sleb128 479
	.uleb128 0x9
	.4byte	.LASF713
	.sleb128 480
	.uleb128 0x9
	.4byte	.LASF714
	.sleb128 481
	.uleb128 0x9
	.4byte	.LASF715
	.sleb128 482
	.uleb128 0x9
	.4byte	.LASF716
	.sleb128 483
	.uleb128 0x9
	.4byte	.LASF717
	.sleb128 484
	.uleb128 0x9
	.4byte	.LASF718
	.sleb128 485
	.uleb128 0x9
	.4byte	.LASF719
	.sleb128 486
	.uleb128 0x9
	.4byte	.LASF720
	.sleb128 487
	.uleb128 0x9
	.4byte	.LASF721
	.sleb128 488
	.uleb128 0x9
	.4byte	.LASF722
	.sleb128 489
	.uleb128 0x9
	.4byte	.LASF723
	.sleb128 490
	.uleb128 0x9
	.4byte	.LASF724
	.sleb128 491
	.uleb128 0x9
	.4byte	.LASF725
	.sleb128 492
	.uleb128 0x9
	.4byte	.LASF726
	.sleb128 493
	.uleb128 0x9
	.4byte	.LASF727
	.sleb128 494
	.uleb128 0x9
	.4byte	.LASF728
	.sleb128 495
	.uleb128 0x9
	.4byte	.LASF729
	.sleb128 496
	.uleb128 0x9
	.4byte	.LASF730
	.sleb128 497
	.uleb128 0x9
	.4byte	.LASF731
	.sleb128 498
	.uleb128 0x9
	.4byte	.LASF732
	.sleb128 499
	.uleb128 0x9
	.4byte	.LASF733
	.sleb128 500
	.uleb128 0x9
	.4byte	.LASF734
	.sleb128 501
	.uleb128 0x9
	.4byte	.LASF735
	.sleb128 502
	.uleb128 0x9
	.4byte	.LASF736
	.sleb128 503
	.uleb128 0x9
	.4byte	.LASF737
	.sleb128 504
	.uleb128 0x9
	.4byte	.LASF738
	.sleb128 505
	.uleb128 0x9
	.4byte	.LASF739
	.sleb128 506
	.uleb128 0x9
	.4byte	.LASF740
	.sleb128 507
	.uleb128 0x9
	.4byte	.LASF741
	.sleb128 508
	.uleb128 0x9
	.4byte	.LASF742
	.sleb128 509
	.uleb128 0x9
	.4byte	.LASF743
	.sleb128 510
	.uleb128 0x9
	.4byte	.LASF744
	.sleb128 511
	.uleb128 0x9
	.4byte	.LASF745
	.sleb128 512
	.uleb128 0x9
	.4byte	.LASF746
	.sleb128 513
	.uleb128 0x9
	.4byte	.LASF747
	.sleb128 514
	.uleb128 0x9
	.4byte	.LASF748
	.sleb128 515
	.uleb128 0x9
	.4byte	.LASF749
	.sleb128 516
	.uleb128 0x9
	.4byte	.LASF750
	.sleb128 517
	.uleb128 0x9
	.4byte	.LASF751
	.sleb128 518
	.uleb128 0x9
	.4byte	.LASF752
	.sleb128 519
	.uleb128 0x9
	.4byte	.LASF753
	.sleb128 520
	.uleb128 0x9
	.4byte	.LASF754
	.sleb128 521
	.uleb128 0x9
	.4byte	.LASF755
	.sleb128 522
	.uleb128 0x9
	.4byte	.LASF756
	.sleb128 523
	.uleb128 0x9
	.4byte	.LASF757
	.sleb128 524
	.uleb128 0x9
	.4byte	.LASF758
	.sleb128 525
	.uleb128 0x9
	.4byte	.LASF759
	.sleb128 526
	.uleb128 0x9
	.4byte	.LASF760
	.sleb128 527
	.uleb128 0x9
	.4byte	.LASF761
	.sleb128 528
	.uleb128 0x9
	.4byte	.LASF762
	.sleb128 529
	.uleb128 0x9
	.4byte	.LASF763
	.sleb128 530
	.uleb128 0x9
	.4byte	.LASF764
	.sleb128 531
	.uleb128 0x9
	.4byte	.LASF765
	.sleb128 532
	.uleb128 0x9
	.4byte	.LASF766
	.sleb128 533
	.uleb128 0x9
	.4byte	.LASF767
	.sleb128 534
	.uleb128 0x9
	.4byte	.LASF768
	.sleb128 535
	.uleb128 0x9
	.4byte	.LASF769
	.sleb128 536
	.uleb128 0x9
	.4byte	.LASF770
	.sleb128 537
	.uleb128 0x9
	.4byte	.LASF771
	.sleb128 538
	.uleb128 0x9
	.4byte	.LASF772
	.sleb128 539
	.uleb128 0x9
	.4byte	.LASF773
	.sleb128 540
	.uleb128 0x9
	.4byte	.LASF774
	.sleb128 541
	.uleb128 0x9
	.4byte	.LASF775
	.sleb128 542
	.uleb128 0x9
	.4byte	.LASF776
	.sleb128 543
	.uleb128 0x9
	.4byte	.LASF777
	.sleb128 544
	.uleb128 0x9
	.4byte	.LASF778
	.sleb128 545
	.uleb128 0x9
	.4byte	.LASF779
	.sleb128 546
	.uleb128 0x9
	.4byte	.LASF780
	.sleb128 547
	.uleb128 0x9
	.4byte	.LASF781
	.sleb128 548
	.uleb128 0x9
	.4byte	.LASF782
	.sleb128 549
	.uleb128 0x9
	.4byte	.LASF783
	.sleb128 550
	.uleb128 0x9
	.4byte	.LASF784
	.sleb128 551
	.uleb128 0x9
	.4byte	.LASF785
	.sleb128 552
	.uleb128 0x9
	.4byte	.LASF786
	.sleb128 553
	.uleb128 0x9
	.4byte	.LASF787
	.sleb128 554
	.uleb128 0x9
	.4byte	.LASF788
	.sleb128 555
	.uleb128 0x9
	.4byte	.LASF789
	.sleb128 556
	.uleb128 0x9
	.4byte	.LASF790
	.sleb128 557
	.uleb128 0x9
	.4byte	.LASF791
	.sleb128 558
	.uleb128 0x9
	.4byte	.LASF792
	.sleb128 559
	.uleb128 0x9
	.4byte	.LASF793
	.sleb128 560
	.uleb128 0x9
	.4byte	.LASF794
	.sleb128 561
	.uleb128 0x9
	.4byte	.LASF795
	.sleb128 562
	.uleb128 0x9
	.4byte	.LASF796
	.sleb128 563
	.uleb128 0x9
	.4byte	.LASF797
	.sleb128 564
	.uleb128 0x9
	.4byte	.LASF798
	.sleb128 565
	.uleb128 0x9
	.4byte	.LASF799
	.sleb128 566
	.uleb128 0x9
	.4byte	.LASF800
	.sleb128 567
	.uleb128 0x9
	.4byte	.LASF801
	.sleb128 568
	.uleb128 0x9
	.4byte	.LASF802
	.sleb128 569
	.uleb128 0x9
	.4byte	.LASF803
	.sleb128 570
	.uleb128 0x9
	.4byte	.LASF804
	.sleb128 571
	.uleb128 0x9
	.4byte	.LASF805
	.sleb128 572
	.uleb128 0x9
	.4byte	.LASF806
	.sleb128 573
	.uleb128 0x9
	.4byte	.LASF807
	.sleb128 574
	.uleb128 0x9
	.4byte	.LASF808
	.sleb128 575
	.uleb128 0x9
	.4byte	.LASF809
	.sleb128 576
	.uleb128 0x9
	.4byte	.LASF810
	.sleb128 577
	.uleb128 0x9
	.4byte	.LASF811
	.sleb128 578
	.uleb128 0x9
	.4byte	.LASF812
	.sleb128 579
	.uleb128 0x9
	.4byte	.LASF813
	.sleb128 580
	.uleb128 0x9
	.4byte	.LASF814
	.sleb128 581
	.uleb128 0x9
	.4byte	.LASF815
	.sleb128 582
	.uleb128 0x9
	.4byte	.LASF816
	.sleb128 583
	.uleb128 0x9
	.4byte	.LASF817
	.sleb128 584
	.uleb128 0x9
	.4byte	.LASF818
	.sleb128 585
	.uleb128 0x9
	.4byte	.LASF819
	.sleb128 586
	.uleb128 0x9
	.4byte	.LASF820
	.sleb128 587
	.uleb128 0x9
	.4byte	.LASF821
	.sleb128 588
	.uleb128 0x9
	.4byte	.LASF822
	.sleb128 589
	.uleb128 0x9
	.4byte	.LASF823
	.sleb128 590
	.uleb128 0x9
	.4byte	.LASF824
	.sleb128 591
	.uleb128 0x9
	.4byte	.LASF825
	.sleb128 592
	.uleb128 0x9
	.4byte	.LASF826
	.sleb128 593
	.uleb128 0x9
	.4byte	.LASF827
	.sleb128 594
	.uleb128 0x9
	.4byte	.LASF828
	.sleb128 595
	.uleb128 0x9
	.4byte	.LASF829
	.sleb128 596
	.uleb128 0x9
	.4byte	.LASF830
	.sleb128 597
	.uleb128 0x9
	.4byte	.LASF831
	.sleb128 598
	.uleb128 0x9
	.4byte	.LASF832
	.sleb128 599
	.uleb128 0x9
	.4byte	.LASF833
	.sleb128 600
	.uleb128 0x9
	.4byte	.LASF834
	.sleb128 601
	.uleb128 0x9
	.4byte	.LASF835
	.sleb128 602
	.uleb128 0x9
	.4byte	.LASF836
	.sleb128 603
	.uleb128 0x9
	.4byte	.LASF837
	.sleb128 604
	.uleb128 0x9
	.4byte	.LASF838
	.sleb128 605
	.uleb128 0x9
	.4byte	.LASF839
	.sleb128 606
	.uleb128 0x9
	.4byte	.LASF840
	.sleb128 607
	.uleb128 0x9
	.4byte	.LASF841
	.sleb128 608
	.uleb128 0x9
	.4byte	.LASF842
	.sleb128 609
	.uleb128 0x9
	.4byte	.LASF843
	.sleb128 610
	.uleb128 0x9
	.4byte	.LASF844
	.sleb128 611
	.uleb128 0x9
	.4byte	.LASF845
	.sleb128 612
	.uleb128 0x9
	.4byte	.LASF846
	.sleb128 613
	.uleb128 0x9
	.4byte	.LASF847
	.sleb128 614
	.uleb128 0x9
	.4byte	.LASF848
	.sleb128 615
	.uleb128 0x9
	.4byte	.LASF849
	.sleb128 616
	.uleb128 0x9
	.4byte	.LASF850
	.sleb128 617
	.uleb128 0x9
	.4byte	.LASF851
	.sleb128 618
	.uleb128 0x9
	.4byte	.LASF852
	.sleb128 619
	.uleb128 0x9
	.4byte	.LASF853
	.sleb128 620
	.uleb128 0x9
	.4byte	.LASF854
	.sleb128 621
	.uleb128 0x9
	.4byte	.LASF855
	.sleb128 622
	.uleb128 0x9
	.4byte	.LASF856
	.sleb128 623
	.uleb128 0x9
	.4byte	.LASF857
	.sleb128 624
	.uleb128 0x9
	.4byte	.LASF858
	.sleb128 625
	.uleb128 0x9
	.4byte	.LASF859
	.sleb128 626
	.uleb128 0x9
	.4byte	.LASF860
	.sleb128 627
	.uleb128 0x9
	.4byte	.LASF861
	.sleb128 628
	.uleb128 0x9
	.4byte	.LASF862
	.sleb128 629
	.uleb128 0x9
	.4byte	.LASF863
	.sleb128 630
	.uleb128 0x9
	.4byte	.LASF864
	.sleb128 631
	.uleb128 0x9
	.4byte	.LASF865
	.sleb128 632
	.uleb128 0x9
	.4byte	.LASF866
	.sleb128 633
	.uleb128 0x9
	.4byte	.LASF867
	.sleb128 634
	.uleb128 0x9
	.4byte	.LASF868
	.sleb128 635
	.uleb128 0x9
	.4byte	.LASF869
	.sleb128 636
	.uleb128 0x9
	.4byte	.LASF870
	.sleb128 637
	.uleb128 0x9
	.4byte	.LASF871
	.sleb128 638
	.uleb128 0x9
	.4byte	.LASF872
	.sleb128 639
	.uleb128 0x9
	.4byte	.LASF873
	.sleb128 640
	.uleb128 0x9
	.4byte	.LASF874
	.sleb128 641
	.uleb128 0x9
	.4byte	.LASF875
	.sleb128 642
	.uleb128 0x9
	.4byte	.LASF876
	.sleb128 643
	.uleb128 0x9
	.4byte	.LASF877
	.sleb128 644
	.uleb128 0x9
	.4byte	.LASF878
	.sleb128 645
	.uleb128 0x9
	.4byte	.LASF879
	.sleb128 646
	.uleb128 0x9
	.4byte	.LASF880
	.sleb128 647
	.uleb128 0x9
	.4byte	.LASF881
	.sleb128 648
	.uleb128 0x9
	.4byte	.LASF882
	.sleb128 649
	.uleb128 0x9
	.4byte	.LASF883
	.sleb128 650
	.uleb128 0x9
	.4byte	.LASF884
	.sleb128 651
	.uleb128 0x9
	.4byte	.LASF885
	.sleb128 652
	.uleb128 0x9
	.4byte	.LASF886
	.sleb128 653
	.uleb128 0x9
	.4byte	.LASF887
	.sleb128 654
	.uleb128 0x9
	.4byte	.LASF888
	.sleb128 655
	.uleb128 0x9
	.4byte	.LASF889
	.sleb128 656
	.uleb128 0x9
	.4byte	.LASF890
	.sleb128 657
	.uleb128 0x9
	.4byte	.LASF891
	.sleb128 658
	.uleb128 0x9
	.4byte	.LASF892
	.sleb128 659
	.uleb128 0x9
	.4byte	.LASF893
	.sleb128 660
	.uleb128 0x9
	.4byte	.LASF894
	.sleb128 661
	.uleb128 0x9
	.4byte	.LASF895
	.sleb128 662
	.uleb128 0x9
	.4byte	.LASF896
	.sleb128 663
	.uleb128 0x9
	.4byte	.LASF897
	.sleb128 664
	.uleb128 0x9
	.4byte	.LASF898
	.sleb128 665
	.uleb128 0x9
	.4byte	.LASF899
	.sleb128 666
	.uleb128 0x9
	.4byte	.LASF900
	.sleb128 667
	.uleb128 0x9
	.4byte	.LASF901
	.sleb128 668
	.uleb128 0x9
	.4byte	.LASF902
	.sleb128 669
	.uleb128 0x9
	.4byte	.LASF903
	.sleb128 670
	.uleb128 0x9
	.4byte	.LASF904
	.sleb128 671
	.uleb128 0x9
	.4byte	.LASF905
	.sleb128 672
	.uleb128 0x9
	.4byte	.LASF906
	.sleb128 673
	.uleb128 0x9
	.4byte	.LASF907
	.sleb128 674
	.uleb128 0x9
	.4byte	.LASF908
	.sleb128 675
	.uleb128 0x9
	.4byte	.LASF909
	.sleb128 676
	.uleb128 0x9
	.4byte	.LASF910
	.sleb128 677
	.uleb128 0x9
	.4byte	.LASF911
	.sleb128 678
	.uleb128 0x9
	.4byte	.LASF912
	.sleb128 679
	.uleb128 0x9
	.4byte	.LASF913
	.sleb128 680
	.uleb128 0x9
	.4byte	.LASF914
	.sleb128 681
	.uleb128 0x9
	.4byte	.LASF915
	.sleb128 682
	.uleb128 0x9
	.4byte	.LASF916
	.sleb128 683
	.uleb128 0x9
	.4byte	.LASF917
	.sleb128 684
	.uleb128 0x9
	.4byte	.LASF918
	.sleb128 685
	.uleb128 0x9
	.4byte	.LASF919
	.sleb128 686
	.uleb128 0x9
	.4byte	.LASF920
	.sleb128 687
	.uleb128 0x9
	.4byte	.LASF921
	.sleb128 688
	.uleb128 0x9
	.4byte	.LASF922
	.sleb128 689
	.uleb128 0x9
	.4byte	.LASF923
	.sleb128 690
	.uleb128 0x9
	.4byte	.LASF924
	.sleb128 691
	.uleb128 0x9
	.4byte	.LASF925
	.sleb128 692
	.uleb128 0x9
	.4byte	.LASF926
	.sleb128 693
	.uleb128 0x9
	.4byte	.LASF927
	.sleb128 694
	.uleb128 0x9
	.4byte	.LASF928
	.sleb128 695
	.uleb128 0x9
	.4byte	.LASF929
	.sleb128 696
	.uleb128 0x9
	.4byte	.LASF930
	.sleb128 697
	.uleb128 0x9
	.4byte	.LASF931
	.sleb128 698
	.uleb128 0x9
	.4byte	.LASF932
	.sleb128 699
	.uleb128 0x9
	.4byte	.LASF933
	.sleb128 700
	.uleb128 0x9
	.4byte	.LASF934
	.sleb128 701
	.uleb128 0x9
	.4byte	.LASF935
	.sleb128 702
	.uleb128 0x9
	.4byte	.LASF936
	.sleb128 703
	.uleb128 0x9
	.4byte	.LASF937
	.sleb128 704
	.uleb128 0x9
	.4byte	.LASF938
	.sleb128 705
	.uleb128 0x9
	.4byte	.LASF939
	.sleb128 706
	.uleb128 0x9
	.4byte	.LASF940
	.sleb128 707
	.uleb128 0x9
	.4byte	.LASF941
	.sleb128 708
	.uleb128 0x9
	.4byte	.LASF942
	.sleb128 709
	.uleb128 0x9
	.4byte	.LASF943
	.sleb128 710
	.uleb128 0x9
	.4byte	.LASF944
	.sleb128 711
	.uleb128 0x9
	.4byte	.LASF945
	.sleb128 712
	.uleb128 0x9
	.4byte	.LASF946
	.sleb128 713
	.uleb128 0x9
	.4byte	.LASF947
	.sleb128 714
	.uleb128 0x9
	.4byte	.LASF948
	.sleb128 715
	.uleb128 0x9
	.4byte	.LASF949
	.sleb128 716
	.uleb128 0x9
	.4byte	.LASF950
	.sleb128 717
	.uleb128 0x9
	.4byte	.LASF951
	.sleb128 718
	.uleb128 0x9
	.4byte	.LASF952
	.sleb128 719
	.uleb128 0x9
	.4byte	.LASF953
	.sleb128 720
	.uleb128 0x9
	.4byte	.LASF954
	.sleb128 721
	.uleb128 0x9
	.4byte	.LASF955
	.sleb128 722
	.uleb128 0x9
	.4byte	.LASF956
	.sleb128 723
	.uleb128 0x9
	.4byte	.LASF957
	.sleb128 724
	.uleb128 0x9
	.4byte	.LASF958
	.sleb128 725
	.uleb128 0x9
	.4byte	.LASF959
	.sleb128 726
	.uleb128 0x9
	.4byte	.LASF960
	.sleb128 727
	.uleb128 0x9
	.4byte	.LASF961
	.sleb128 728
	.uleb128 0x9
	.4byte	.LASF962
	.sleb128 729
	.uleb128 0x9
	.4byte	.LASF963
	.sleb128 730
	.uleb128 0x9
	.4byte	.LASF964
	.sleb128 731
	.uleb128 0x9
	.4byte	.LASF965
	.sleb128 732
	.uleb128 0x9
	.4byte	.LASF966
	.sleb128 733
	.uleb128 0x9
	.4byte	.LASF967
	.sleb128 734
	.uleb128 0x9
	.4byte	.LASF968
	.sleb128 735
	.uleb128 0x9
	.4byte	.LASF969
	.sleb128 736
	.uleb128 0x9
	.4byte	.LASF970
	.sleb128 737
	.uleb128 0x9
	.4byte	.LASF971
	.sleb128 738
	.uleb128 0x9
	.4byte	.LASF972
	.sleb128 739
	.uleb128 0x9
	.4byte	.LASF973
	.sleb128 740
	.uleb128 0x9
	.4byte	.LASF974
	.sleb128 741
	.uleb128 0x9
	.4byte	.LASF975
	.sleb128 742
	.uleb128 0x9
	.4byte	.LASF976
	.sleb128 743
	.uleb128 0x9
	.4byte	.LASF977
	.sleb128 744
	.uleb128 0x9
	.4byte	.LASF978
	.sleb128 745
	.uleb128 0x9
	.4byte	.LASF979
	.sleb128 746
	.uleb128 0x9
	.4byte	.LASF980
	.sleb128 747
	.uleb128 0x9
	.4byte	.LASF981
	.sleb128 748
	.uleb128 0x9
	.4byte	.LASF982
	.sleb128 749
	.uleb128 0x9
	.4byte	.LASF983
	.sleb128 750
	.uleb128 0x9
	.4byte	.LASF984
	.sleb128 751
	.uleb128 0x9
	.4byte	.LASF985
	.sleb128 752
	.uleb128 0x9
	.4byte	.LASF986
	.sleb128 753
	.uleb128 0x9
	.4byte	.LASF987
	.sleb128 754
	.uleb128 0x9
	.4byte	.LASF988
	.sleb128 755
	.uleb128 0x9
	.4byte	.LASF989
	.sleb128 756
	.uleb128 0x9
	.4byte	.LASF990
	.sleb128 757
	.uleb128 0x9
	.4byte	.LASF991
	.sleb128 758
	.uleb128 0x9
	.4byte	.LASF992
	.sleb128 759
	.uleb128 0x9
	.4byte	.LASF993
	.sleb128 760
	.uleb128 0x9
	.4byte	.LASF994
	.sleb128 761
	.uleb128 0x9
	.4byte	.LASF995
	.sleb128 762
	.uleb128 0x9
	.4byte	.LASF996
	.sleb128 763
	.uleb128 0x9
	.4byte	.LASF997
	.sleb128 764
	.uleb128 0x9
	.4byte	.LASF998
	.sleb128 765
	.uleb128 0x9
	.4byte	.LASF999
	.sleb128 766
	.uleb128 0x9
	.4byte	.LASF1000
	.sleb128 767
	.uleb128 0x9
	.4byte	.LASF1001
	.sleb128 768
	.uleb128 0x9
	.4byte	.LASF1002
	.sleb128 769
	.uleb128 0x9
	.4byte	.LASF1003
	.sleb128 770
	.uleb128 0x9
	.4byte	.LASF1004
	.sleb128 771
	.uleb128 0x9
	.4byte	.LASF1005
	.sleb128 772
	.uleb128 0x9
	.4byte	.LASF1006
	.sleb128 773
	.uleb128 0x9
	.4byte	.LASF1007
	.sleb128 774
	.uleb128 0x9
	.4byte	.LASF1008
	.sleb128 775
	.uleb128 0x9
	.4byte	.LASF1009
	.sleb128 776
	.uleb128 0x9
	.4byte	.LASF1010
	.sleb128 777
	.uleb128 0x9
	.4byte	.LASF1011
	.sleb128 778
	.uleb128 0x9
	.4byte	.LASF1012
	.sleb128 779
	.uleb128 0x9
	.4byte	.LASF1013
	.sleb128 780
	.uleb128 0x9
	.4byte	.LASF1014
	.sleb128 781
	.uleb128 0x9
	.4byte	.LASF1015
	.sleb128 782
	.uleb128 0x9
	.4byte	.LASF1016
	.sleb128 783
	.uleb128 0x9
	.4byte	.LASF1017
	.sleb128 784
	.uleb128 0x9
	.4byte	.LASF1018
	.sleb128 785
	.uleb128 0x9
	.4byte	.LASF1019
	.sleb128 786
	.uleb128 0x9
	.4byte	.LASF1020
	.sleb128 787
	.uleb128 0x9
	.4byte	.LASF1021
	.sleb128 788
	.uleb128 0x9
	.4byte	.LASF1022
	.sleb128 789
	.uleb128 0x9
	.4byte	.LASF1023
	.sleb128 790
	.uleb128 0x9
	.4byte	.LASF1024
	.sleb128 791
	.uleb128 0x9
	.4byte	.LASF1025
	.sleb128 792
	.uleb128 0x9
	.4byte	.LASF1026
	.sleb128 793
	.uleb128 0x9
	.4byte	.LASF1027
	.sleb128 794
	.uleb128 0x9
	.4byte	.LASF1028
	.sleb128 795
	.uleb128 0x9
	.4byte	.LASF1029
	.sleb128 796
	.uleb128 0x9
	.4byte	.LASF1030
	.sleb128 797
	.uleb128 0x9
	.4byte	.LASF1031
	.sleb128 798
	.uleb128 0x9
	.4byte	.LASF1032
	.sleb128 799
	.uleb128 0x9
	.4byte	.LASF1033
	.sleb128 800
	.uleb128 0x9
	.4byte	.LASF1034
	.sleb128 801
	.uleb128 0x9
	.4byte	.LASF1035
	.sleb128 802
	.uleb128 0x9
	.4byte	.LASF1036
	.sleb128 803
	.uleb128 0x9
	.4byte	.LASF1037
	.sleb128 804
	.uleb128 0x9
	.4byte	.LASF1038
	.sleb128 805
	.uleb128 0x9
	.4byte	.LASF1039
	.sleb128 806
	.uleb128 0x9
	.4byte	.LASF1040
	.sleb128 807
	.uleb128 0x9
	.4byte	.LASF1041
	.sleb128 808
	.uleb128 0x9
	.4byte	.LASF1042
	.sleb128 809
	.uleb128 0x9
	.4byte	.LASF1043
	.sleb128 810
	.uleb128 0x9
	.4byte	.LASF1044
	.sleb128 811
	.uleb128 0x9
	.4byte	.LASF1045
	.sleb128 812
	.uleb128 0x9
	.4byte	.LASF1046
	.sleb128 813
	.uleb128 0x9
	.4byte	.LASF1047
	.sleb128 814
	.uleb128 0x9
	.4byte	.LASF1048
	.sleb128 815
	.uleb128 0x9
	.4byte	.LASF1049
	.sleb128 816
	.uleb128 0x9
	.4byte	.LASF1050
	.sleb128 817
	.uleb128 0x9
	.4byte	.LASF1051
	.sleb128 818
	.uleb128 0x9
	.4byte	.LASF1052
	.sleb128 819
	.uleb128 0x9
	.4byte	.LASF1053
	.sleb128 820
	.uleb128 0x9
	.4byte	.LASF1054
	.sleb128 821
	.uleb128 0x9
	.4byte	.LASF1055
	.sleb128 822
	.uleb128 0x9
	.4byte	.LASF1056
	.sleb128 823
	.uleb128 0x9
	.4byte	.LASF1057
	.sleb128 824
	.uleb128 0x9
	.4byte	.LASF1058
	.sleb128 825
	.uleb128 0x9
	.4byte	.LASF1059
	.sleb128 826
	.uleb128 0x9
	.4byte	.LASF1060
	.sleb128 827
	.uleb128 0x9
	.4byte	.LASF1061
	.sleb128 828
	.uleb128 0x9
	.4byte	.LASF1062
	.sleb128 829
	.uleb128 0x9
	.4byte	.LASF1063
	.sleb128 830
	.uleb128 0x9
	.4byte	.LASF1064
	.sleb128 831
	.uleb128 0x9
	.4byte	.LASF1065
	.sleb128 832
	.uleb128 0x9
	.4byte	.LASF1066
	.sleb128 833
	.uleb128 0x9
	.4byte	.LASF1067
	.sleb128 834
	.uleb128 0x9
	.4byte	.LASF1068
	.sleb128 835
	.uleb128 0x9
	.4byte	.LASF1069
	.sleb128 836
	.uleb128 0x9
	.4byte	.LASF1070
	.sleb128 837
	.uleb128 0x9
	.4byte	.LASF1071
	.sleb128 838
	.uleb128 0x9
	.4byte	.LASF1072
	.sleb128 839
	.uleb128 0x9
	.4byte	.LASF1073
	.sleb128 840
	.uleb128 0x9
	.4byte	.LASF1074
	.sleb128 841
	.uleb128 0x9
	.4byte	.LASF1075
	.sleb128 842
	.uleb128 0x9
	.4byte	.LASF1076
	.sleb128 843
	.uleb128 0x9
	.4byte	.LASF1077
	.sleb128 844
	.uleb128 0x9
	.4byte	.LASF1078
	.sleb128 845
	.uleb128 0x9
	.4byte	.LASF1079
	.sleb128 846
	.uleb128 0x9
	.4byte	.LASF1080
	.sleb128 847
	.uleb128 0x9
	.4byte	.LASF1081
	.sleb128 848
	.uleb128 0x9
	.4byte	.LASF1082
	.sleb128 849
	.uleb128 0x9
	.4byte	.LASF1083
	.sleb128 850
	.uleb128 0x9
	.4byte	.LASF1084
	.sleb128 851
	.uleb128 0x9
	.4byte	.LASF1085
	.sleb128 852
	.uleb128 0x9
	.4byte	.LASF1086
	.sleb128 853
	.uleb128 0x9
	.4byte	.LASF1087
	.sleb128 854
	.uleb128 0x9
	.4byte	.LASF1088
	.sleb128 855
	.uleb128 0x9
	.4byte	.LASF1089
	.sleb128 856
	.uleb128 0x9
	.4byte	.LASF1090
	.sleb128 857
	.uleb128 0x9
	.4byte	.LASF1091
	.sleb128 858
	.uleb128 0x9
	.4byte	.LASF1092
	.sleb128 859
	.uleb128 0x9
	.4byte	.LASF1093
	.sleb128 860
	.uleb128 0x9
	.4byte	.LASF1094
	.sleb128 861
	.uleb128 0x9
	.4byte	.LASF1095
	.sleb128 862
	.uleb128 0x9
	.4byte	.LASF1096
	.sleb128 863
	.uleb128 0x9
	.4byte	.LASF1097
	.sleb128 864
	.uleb128 0x9
	.4byte	.LASF1098
	.sleb128 865
	.uleb128 0x9
	.4byte	.LASF1099
	.sleb128 866
	.uleb128 0x9
	.4byte	.LASF1100
	.sleb128 867
	.uleb128 0x9
	.4byte	.LASF1101
	.sleb128 868
	.uleb128 0x9
	.4byte	.LASF1102
	.sleb128 869
	.uleb128 0x9
	.4byte	.LASF1103
	.sleb128 870
	.uleb128 0x9
	.4byte	.LASF1104
	.sleb128 871
	.uleb128 0x9
	.4byte	.LASF1105
	.sleb128 872
	.uleb128 0x9
	.4byte	.LASF1106
	.sleb128 873
	.uleb128 0x9
	.4byte	.LASF1107
	.sleb128 874
	.uleb128 0x9
	.4byte	.LASF1108
	.sleb128 875
	.uleb128 0x9
	.4byte	.LASF1109
	.sleb128 876
	.uleb128 0x9
	.4byte	.LASF1110
	.sleb128 877
	.uleb128 0x9
	.4byte	.LASF1111
	.sleb128 878
	.uleb128 0x9
	.4byte	.LASF1112
	.sleb128 879
	.uleb128 0x9
	.4byte	.LASF1113
	.sleb128 880
	.uleb128 0x9
	.4byte	.LASF1114
	.sleb128 881
	.uleb128 0x9
	.4byte	.LASF1115
	.sleb128 882
	.uleb128 0x9
	.4byte	.LASF1116
	.sleb128 883
	.uleb128 0x9
	.4byte	.LASF1117
	.sleb128 884
	.uleb128 0x9
	.4byte	.LASF1118
	.sleb128 885
	.uleb128 0x9
	.4byte	.LASF1119
	.sleb128 886
	.uleb128 0x9
	.4byte	.LASF1120
	.sleb128 887
	.uleb128 0x9
	.4byte	.LASF1121
	.sleb128 888
	.uleb128 0x9
	.4byte	.LASF1122
	.sleb128 889
	.uleb128 0x9
	.4byte	.LASF1123
	.sleb128 890
	.uleb128 0x9
	.4byte	.LASF1124
	.sleb128 891
	.uleb128 0x9
	.4byte	.LASF1125
	.sleb128 892
	.uleb128 0x9
	.4byte	.LASF1126
	.sleb128 893
	.uleb128 0x9
	.4byte	.LASF1127
	.sleb128 894
	.uleb128 0x9
	.4byte	.LASF1128
	.sleb128 895
	.uleb128 0x9
	.4byte	.LASF1129
	.sleb128 896
	.uleb128 0x9
	.4byte	.LASF1130
	.sleb128 897
	.uleb128 0x9
	.4byte	.LASF1131
	.sleb128 898
	.uleb128 0x9
	.4byte	.LASF1132
	.sleb128 899
	.uleb128 0x9
	.4byte	.LASF1133
	.sleb128 900
	.uleb128 0x9
	.4byte	.LASF1134
	.sleb128 901
	.uleb128 0x9
	.4byte	.LASF1135
	.sleb128 902
	.uleb128 0x9
	.4byte	.LASF1136
	.sleb128 903
	.uleb128 0x9
	.4byte	.LASF1137
	.sleb128 904
	.uleb128 0x9
	.4byte	.LASF1138
	.sleb128 905
	.uleb128 0x9
	.4byte	.LASF1139
	.sleb128 906
	.uleb128 0x9
	.4byte	.LASF1140
	.sleb128 907
	.uleb128 0x9
	.4byte	.LASF1141
	.sleb128 908
	.uleb128 0x9
	.4byte	.LASF1142
	.sleb128 909
	.uleb128 0x9
	.4byte	.LASF1143
	.sleb128 910
	.uleb128 0x9
	.4byte	.LASF1144
	.sleb128 911
	.uleb128 0x9
	.4byte	.LASF1145
	.sleb128 912
	.uleb128 0x9
	.4byte	.LASF1146
	.sleb128 913
	.uleb128 0x9
	.4byte	.LASF1147
	.sleb128 914
	.uleb128 0x9
	.4byte	.LASF1148
	.sleb128 915
	.uleb128 0x9
	.4byte	.LASF1149
	.sleb128 916
	.uleb128 0x9
	.4byte	.LASF1150
	.sleb128 917
	.uleb128 0x9
	.4byte	.LASF1151
	.sleb128 918
	.uleb128 0x9
	.4byte	.LASF1152
	.sleb128 919
	.uleb128 0x9
	.4byte	.LASF1153
	.sleb128 920
	.uleb128 0x9
	.4byte	.LASF1154
	.sleb128 921
	.uleb128 0x9
	.4byte	.LASF1155
	.sleb128 922
	.uleb128 0x9
	.4byte	.LASF1156
	.sleb128 923
	.uleb128 0x9
	.4byte	.LASF1157
	.sleb128 924
	.uleb128 0x9
	.4byte	.LASF1158
	.sleb128 925
	.uleb128 0x9
	.4byte	.LASF1159
	.sleb128 926
	.uleb128 0x9
	.4byte	.LASF1160
	.sleb128 927
	.uleb128 0x9
	.4byte	.LASF1161
	.sleb128 928
	.uleb128 0x9
	.4byte	.LASF1162
	.sleb128 929
	.uleb128 0x9
	.4byte	.LASF1163
	.sleb128 930
	.uleb128 0x9
	.4byte	.LASF1164
	.sleb128 931
	.uleb128 0x9
	.4byte	.LASF1165
	.sleb128 932
	.uleb128 0x9
	.4byte	.LASF1166
	.sleb128 933
	.uleb128 0x9
	.4byte	.LASF1167
	.sleb128 934
	.uleb128 0x9
	.4byte	.LASF1168
	.sleb128 935
	.uleb128 0x9
	.4byte	.LASF1169
	.sleb128 936
	.uleb128 0x9
	.4byte	.LASF1170
	.sleb128 937
	.uleb128 0x9
	.4byte	.LASF1171
	.sleb128 938
	.uleb128 0x9
	.4byte	.LASF1172
	.sleb128 939
	.uleb128 0x9
	.4byte	.LASF1173
	.sleb128 940
	.uleb128 0x9
	.4byte	.LASF1174
	.sleb128 941
	.uleb128 0x9
	.4byte	.LASF1175
	.sleb128 942
	.uleb128 0x9
	.4byte	.LASF1176
	.sleb128 943
	.uleb128 0x9
	.4byte	.LASF1177
	.sleb128 944
	.uleb128 0x9
	.4byte	.LASF1178
	.sleb128 945
	.uleb128 0x9
	.4byte	.LASF1179
	.sleb128 946
	.uleb128 0x9
	.4byte	.LASF1180
	.sleb128 947
	.uleb128 0x9
	.4byte	.LASF1181
	.sleb128 948
	.uleb128 0x9
	.4byte	.LASF1182
	.sleb128 949
	.uleb128 0x9
	.4byte	.LASF1183
	.sleb128 950
	.uleb128 0x9
	.4byte	.LASF1184
	.sleb128 951
	.uleb128 0x9
	.4byte	.LASF1185
	.sleb128 952
	.uleb128 0x9
	.4byte	.LASF1186
	.sleb128 953
	.uleb128 0x9
	.4byte	.LASF1187
	.sleb128 954
	.uleb128 0x9
	.4byte	.LASF1188
	.sleb128 955
	.uleb128 0x9
	.4byte	.LASF1189
	.sleb128 956
	.uleb128 0x9
	.4byte	.LASF1190
	.sleb128 957
	.uleb128 0x9
	.4byte	.LASF1191
	.sleb128 958
	.uleb128 0x9
	.4byte	.LASF1192
	.sleb128 959
	.uleb128 0x9
	.4byte	.LASF1193
	.sleb128 960
	.uleb128 0x9
	.4byte	.LASF1194
	.sleb128 961
	.uleb128 0x9
	.4byte	.LASF1195
	.sleb128 962
	.uleb128 0x9
	.4byte	.LASF1196
	.sleb128 963
	.uleb128 0x9
	.4byte	.LASF1197
	.sleb128 964
	.uleb128 0x9
	.4byte	.LASF1198
	.sleb128 965
	.uleb128 0x9
	.4byte	.LASF1199
	.sleb128 966
	.uleb128 0x9
	.4byte	.LASF1200
	.sleb128 967
	.uleb128 0x9
	.4byte	.LASF1201
	.sleb128 968
	.uleb128 0x9
	.4byte	.LASF1202
	.sleb128 969
	.uleb128 0x9
	.4byte	.LASF1203
	.sleb128 970
	.uleb128 0x9
	.4byte	.LASF1204
	.sleb128 971
	.uleb128 0x9
	.4byte	.LASF1205
	.sleb128 972
	.uleb128 0x9
	.4byte	.LASF1206
	.sleb128 973
	.uleb128 0x9
	.4byte	.LASF1207
	.sleb128 974
	.uleb128 0x9
	.4byte	.LASF1208
	.sleb128 975
	.uleb128 0x9
	.4byte	.LASF1209
	.sleb128 976
	.uleb128 0x9
	.4byte	.LASF1210
	.sleb128 977
	.uleb128 0x9
	.4byte	.LASF1211
	.sleb128 978
	.uleb128 0x9
	.4byte	.LASF1212
	.sleb128 979
	.uleb128 0x9
	.4byte	.LASF1213
	.sleb128 980
	.uleb128 0x9
	.4byte	.LASF1214
	.sleb128 981
	.uleb128 0x9
	.4byte	.LASF1215
	.sleb128 982
	.uleb128 0x9
	.4byte	.LASF1216
	.sleb128 983
	.uleb128 0x9
	.4byte	.LASF1217
	.sleb128 984
	.uleb128 0x9
	.4byte	.LASF1218
	.sleb128 985
	.uleb128 0x9
	.4byte	.LASF1219
	.sleb128 986
	.uleb128 0x9
	.4byte	.LASF1220
	.sleb128 987
	.uleb128 0x9
	.4byte	.LASF1221
	.sleb128 988
	.uleb128 0x9
	.4byte	.LASF1222
	.sleb128 989
	.uleb128 0x9
	.4byte	.LASF1223
	.sleb128 990
	.uleb128 0x9
	.4byte	.LASF1224
	.sleb128 991
	.uleb128 0x9
	.4byte	.LASF1225
	.sleb128 992
	.uleb128 0x9
	.4byte	.LASF1226
	.sleb128 993
	.uleb128 0x9
	.4byte	.LASF1227
	.sleb128 994
	.uleb128 0x9
	.4byte	.LASF1228
	.sleb128 995
	.uleb128 0x9
	.4byte	.LASF1229
	.sleb128 996
	.uleb128 0x9
	.4byte	.LASF1230
	.sleb128 997
	.uleb128 0x9
	.4byte	.LASF1231
	.sleb128 998
	.uleb128 0x9
	.4byte	.LASF1232
	.sleb128 999
	.uleb128 0x9
	.4byte	.LASF1233
	.sleb128 1040
	.uleb128 0x9
	.4byte	.LASF1234
	.sleb128 1041
	.uleb128 0x9
	.4byte	.LASF1235
	.sleb128 1042
	.uleb128 0x9
	.4byte	.LASF1236
	.sleb128 1043
	.uleb128 0x9
	.4byte	.LASF1237
	.sleb128 1044
	.uleb128 0x9
	.4byte	.LASF1238
	.sleb128 1045
	.uleb128 0x9
	.4byte	.LASF1239
	.sleb128 1046
	.uleb128 0x9
	.4byte	.LASF1240
	.sleb128 1047
	.uleb128 0x9
	.4byte	.LASF1241
	.sleb128 1048
	.uleb128 0x9
	.4byte	.LASF1242
	.sleb128 1049
	.uleb128 0x9
	.4byte	.LASF1243
	.sleb128 1050
	.uleb128 0x9
	.4byte	.LASF1244
	.sleb128 1051
	.uleb128 0x9
	.4byte	.LASF1245
	.sleb128 1052
	.uleb128 0x9
	.4byte	.LASF1246
	.sleb128 1053
	.uleb128 0x9
	.4byte	.LASF1247
	.sleb128 1054
	.uleb128 0x9
	.4byte	.LASF1248
	.sleb128 1055
	.uleb128 0x9
	.4byte	.LASF1249
	.sleb128 1056
	.uleb128 0x9
	.4byte	.LASF1250
	.sleb128 1057
	.uleb128 0x9
	.4byte	.LASF1251
	.sleb128 1058
	.uleb128 0x9
	.4byte	.LASF1252
	.sleb128 1059
	.uleb128 0x9
	.4byte	.LASF1253
	.sleb128 1060
	.uleb128 0x9
	.4byte	.LASF1254
	.sleb128 1061
	.uleb128 0x9
	.4byte	.LASF1255
	.sleb128 1062
	.uleb128 0x9
	.4byte	.LASF1256
	.sleb128 1063
	.uleb128 0x9
	.4byte	.LASF1257
	.sleb128 1064
	.uleb128 0x9
	.4byte	.LASF1258
	.sleb128 1065
	.uleb128 0x9
	.4byte	.LASF1259
	.sleb128 1066
	.uleb128 0x9
	.4byte	.LASF1260
	.sleb128 1067
	.uleb128 0x9
	.4byte	.LASF1261
	.sleb128 1068
	.uleb128 0x9
	.4byte	.LASF1262
	.sleb128 1069
	.uleb128 0x9
	.4byte	.LASF1263
	.sleb128 1070
	.uleb128 0x9
	.4byte	.LASF1264
	.sleb128 1071
	.uleb128 0x9
	.4byte	.LASF1265
	.sleb128 1072
	.uleb128 0x9
	.4byte	.LASF1266
	.sleb128 1073
	.uleb128 0x9
	.4byte	.LASF1267
	.sleb128 1074
	.uleb128 0x9
	.4byte	.LASF1268
	.sleb128 1075
	.uleb128 0x9
	.4byte	.LASF1269
	.sleb128 1076
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1270
	.byte	0x9
	.2byte	0x4e3
	.4byte	0x6cc
	.uleb128 0xf
	.byte	0x1c
	.byte	0x9
	.2byte	0x4e9
	.4byte	0x2361
	.uleb128 0x10
	.4byte	.LASF1271
	.byte	0x9
	.2byte	0x4eb
	.4byte	0x6c1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1272
	.byte	0x9
	.2byte	0x4ec
	.4byte	0x63
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF1273
	.byte	0x9
	.2byte	0x4ed
	.4byte	0x63
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF1274
	.byte	0x9
	.2byte	0x4ee
	.4byte	0x294
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF1275
	.byte	0x9
	.2byte	0x4ef
	.4byte	0x22f0
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF1276
	.byte	0x9
	.2byte	0x4f0
	.4byte	0x63
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF1277
	.byte	0x9
	.2byte	0x4f0
	.4byte	0x63
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1278
	.byte	0x9
	.2byte	0x4f1
	.4byte	0x22fc
	.uleb128 0x11
	.byte	0x1
	.byte	0x9
	.2byte	0x4fd
	.4byte	0x2766
	.uleb128 0x9
	.4byte	.LASF1279
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1280
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1281
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1282
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF1283
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF1284
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF1285
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF1286
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF1287
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF1288
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF1289
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF1290
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF1291
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF1292
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF1293
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF1294
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF1295
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF1296
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF1297
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF1298
	.sleb128 19
	.uleb128 0x9
	.4byte	.LASF1299
	.sleb128 20
	.uleb128 0x9
	.4byte	.LASF1300
	.sleb128 21
	.uleb128 0x9
	.4byte	.LASF1301
	.sleb128 22
	.uleb128 0x9
	.4byte	.LASF1302
	.sleb128 23
	.uleb128 0x9
	.4byte	.LASF1303
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF1304
	.sleb128 25
	.uleb128 0x9
	.4byte	.LASF1305
	.sleb128 26
	.uleb128 0x9
	.4byte	.LASF1306
	.sleb128 27
	.uleb128 0x9
	.4byte	.LASF1307
	.sleb128 28
	.uleb128 0x9
	.4byte	.LASF1308
	.sleb128 29
	.uleb128 0x9
	.4byte	.LASF1309
	.sleb128 30
	.uleb128 0x9
	.4byte	.LASF1310
	.sleb128 31
	.uleb128 0x9
	.4byte	.LASF1311
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF1312
	.sleb128 33
	.uleb128 0x9
	.4byte	.LASF1313
	.sleb128 34
	.uleb128 0x9
	.4byte	.LASF1314
	.sleb128 35
	.uleb128 0x9
	.4byte	.LASF1315
	.sleb128 36
	.uleb128 0x9
	.4byte	.LASF1316
	.sleb128 37
	.uleb128 0x9
	.4byte	.LASF1317
	.sleb128 38
	.uleb128 0x9
	.4byte	.LASF1318
	.sleb128 39
	.uleb128 0x9
	.4byte	.LASF1319
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF1320
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF1321
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF1322
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF1323
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF1324
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF1325
	.sleb128 46
	.uleb128 0x9
	.4byte	.LASF1326
	.sleb128 47
	.uleb128 0x9
	.4byte	.LASF1327
	.sleb128 48
	.uleb128 0x9
	.4byte	.LASF1328
	.sleb128 49
	.uleb128 0x9
	.4byte	.LASF1329
	.sleb128 50
	.uleb128 0x9
	.4byte	.LASF1330
	.sleb128 51
	.uleb128 0x9
	.4byte	.LASF1331
	.sleb128 52
	.uleb128 0x9
	.4byte	.LASF1332
	.sleb128 53
	.uleb128 0x9
	.4byte	.LASF1333
	.sleb128 54
	.uleb128 0x9
	.4byte	.LASF1334
	.sleb128 55
	.uleb128 0x9
	.4byte	.LASF1335
	.sleb128 56
	.uleb128 0x9
	.4byte	.LASF1336
	.sleb128 57
	.uleb128 0x9
	.4byte	.LASF1337
	.sleb128 58
	.uleb128 0x9
	.4byte	.LASF1338
	.sleb128 59
	.uleb128 0x9
	.4byte	.LASF1339
	.sleb128 60
	.uleb128 0x9
	.4byte	.LASF1340
	.sleb128 61
	.uleb128 0x9
	.4byte	.LASF1341
	.sleb128 62
	.uleb128 0x9
	.4byte	.LASF1342
	.sleb128 63
	.uleb128 0x9
	.4byte	.LASF1343
	.sleb128 64
	.uleb128 0x9
	.4byte	.LASF1344
	.sleb128 65
	.uleb128 0x9
	.4byte	.LASF1345
	.sleb128 66
	.uleb128 0x9
	.4byte	.LASF1346
	.sleb128 67
	.uleb128 0x9
	.4byte	.LASF1347
	.sleb128 68
	.uleb128 0x9
	.4byte	.LASF1348
	.sleb128 69
	.uleb128 0x9
	.4byte	.LASF1349
	.sleb128 70
	.uleb128 0x9
	.4byte	.LASF1350
	.sleb128 71
	.uleb128 0x9
	.4byte	.LASF1351
	.sleb128 72
	.uleb128 0x9
	.4byte	.LASF1352
	.sleb128 73
	.uleb128 0x9
	.4byte	.LASF1353
	.sleb128 74
	.uleb128 0x9
	.4byte	.LASF1354
	.sleb128 75
	.uleb128 0x9
	.4byte	.LASF1355
	.sleb128 76
	.uleb128 0x9
	.4byte	.LASF1356
	.sleb128 77
	.uleb128 0x9
	.4byte	.LASF1357
	.sleb128 78
	.uleb128 0x9
	.4byte	.LASF1358
	.sleb128 79
	.uleb128 0x9
	.4byte	.LASF1359
	.sleb128 80
	.uleb128 0x9
	.4byte	.LASF1360
	.sleb128 81
	.uleb128 0x9
	.4byte	.LASF1361
	.sleb128 82
	.uleb128 0x9
	.4byte	.LASF1362
	.sleb128 83
	.uleb128 0x9
	.4byte	.LASF1363
	.sleb128 84
	.uleb128 0x9
	.4byte	.LASF1364
	.sleb128 85
	.uleb128 0x9
	.4byte	.LASF1365
	.sleb128 86
	.uleb128 0x9
	.4byte	.LASF1366
	.sleb128 87
	.uleb128 0x9
	.4byte	.LASF1367
	.sleb128 88
	.uleb128 0x9
	.4byte	.LASF1368
	.sleb128 89
	.uleb128 0x9
	.4byte	.LASF1369
	.sleb128 90
	.uleb128 0x9
	.4byte	.LASF1370
	.sleb128 91
	.uleb128 0x9
	.4byte	.LASF1371
	.sleb128 92
	.uleb128 0x9
	.4byte	.LASF1372
	.sleb128 93
	.uleb128 0x9
	.4byte	.LASF1373
	.sleb128 94
	.uleb128 0x9
	.4byte	.LASF1374
	.sleb128 95
	.uleb128 0x9
	.4byte	.LASF1375
	.sleb128 96
	.uleb128 0x9
	.4byte	.LASF1376
	.sleb128 97
	.uleb128 0x9
	.4byte	.LASF1377
	.sleb128 98
	.uleb128 0x9
	.4byte	.LASF1378
	.sleb128 99
	.uleb128 0x9
	.4byte	.LASF1379
	.sleb128 100
	.uleb128 0x9
	.4byte	.LASF1380
	.sleb128 101
	.uleb128 0x9
	.4byte	.LASF1381
	.sleb128 102
	.uleb128 0x9
	.4byte	.LASF1382
	.sleb128 103
	.uleb128 0x9
	.4byte	.LASF1383
	.sleb128 104
	.uleb128 0x9
	.4byte	.LASF1384
	.sleb128 105
	.uleb128 0x9
	.4byte	.LASF1385
	.sleb128 106
	.uleb128 0x9
	.4byte	.LASF1386
	.sleb128 107
	.uleb128 0x9
	.4byte	.LASF1387
	.sleb128 108
	.uleb128 0x9
	.4byte	.LASF1388
	.sleb128 109
	.uleb128 0x9
	.4byte	.LASF1389
	.sleb128 110
	.uleb128 0x9
	.4byte	.LASF1390
	.sleb128 111
	.uleb128 0x9
	.4byte	.LASF1391
	.sleb128 112
	.uleb128 0x9
	.4byte	.LASF1392
	.sleb128 113
	.uleb128 0x9
	.4byte	.LASF1393
	.sleb128 114
	.uleb128 0x9
	.4byte	.LASF1394
	.sleb128 115
	.uleb128 0x9
	.4byte	.LASF1395
	.sleb128 116
	.uleb128 0x9
	.4byte	.LASF1396
	.sleb128 117
	.uleb128 0x9
	.4byte	.LASF1397
	.sleb128 118
	.uleb128 0x9
	.4byte	.LASF1398
	.sleb128 119
	.uleb128 0x9
	.4byte	.LASF1399
	.sleb128 120
	.uleb128 0x9
	.4byte	.LASF1400
	.sleb128 121
	.uleb128 0x9
	.4byte	.LASF1401
	.sleb128 122
	.uleb128 0x9
	.4byte	.LASF1402
	.sleb128 123
	.uleb128 0x9
	.4byte	.LASF1403
	.sleb128 124
	.uleb128 0x9
	.4byte	.LASF1404
	.sleb128 125
	.uleb128 0x9
	.4byte	.LASF1405
	.sleb128 126
	.uleb128 0x9
	.4byte	.LASF1406
	.sleb128 127
	.uleb128 0x9
	.4byte	.LASF1407
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF1408
	.sleb128 129
	.uleb128 0x9
	.4byte	.LASF1409
	.sleb128 130
	.uleb128 0x9
	.4byte	.LASF1410
	.sleb128 131
	.uleb128 0x9
	.4byte	.LASF1411
	.sleb128 132
	.uleb128 0x9
	.4byte	.LASF1412
	.sleb128 133
	.uleb128 0x9
	.4byte	.LASF1413
	.sleb128 134
	.uleb128 0x9
	.4byte	.LASF1414
	.sleb128 135
	.uleb128 0x9
	.4byte	.LASF1415
	.sleb128 136
	.uleb128 0x9
	.4byte	.LASF1416
	.sleb128 137
	.uleb128 0x9
	.4byte	.LASF1417
	.sleb128 138
	.uleb128 0x9
	.4byte	.LASF1418
	.sleb128 139
	.uleb128 0x9
	.4byte	.LASF1419
	.sleb128 140
	.uleb128 0x9
	.4byte	.LASF1420
	.sleb128 141
	.uleb128 0x9
	.4byte	.LASF1421
	.sleb128 142
	.uleb128 0x9
	.4byte	.LASF1422
	.sleb128 143
	.uleb128 0x9
	.4byte	.LASF1423
	.sleb128 144
	.uleb128 0x9
	.4byte	.LASF1424
	.sleb128 145
	.uleb128 0x9
	.4byte	.LASF1425
	.sleb128 146
	.uleb128 0x9
	.4byte	.LASF1426
	.sleb128 147
	.uleb128 0x9
	.4byte	.LASF1427
	.sleb128 148
	.uleb128 0x9
	.4byte	.LASF1428
	.sleb128 149
	.uleb128 0x9
	.4byte	.LASF1429
	.sleb128 150
	.uleb128 0x9
	.4byte	.LASF1430
	.sleb128 151
	.uleb128 0x9
	.4byte	.LASF1431
	.sleb128 152
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1432
	.byte	0x9
	.2byte	0x59e
	.4byte	0x236d
	.uleb128 0xf
	.byte	0x68
	.byte	0x9
	.2byte	0x5a8
	.4byte	0x28a7
	.uleb128 0x10
	.4byte	.LASF1433
	.byte	0x9
	.2byte	0x5aa
	.4byte	0x2c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1434
	.byte	0x9
	.2byte	0x5ac
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF1435
	.byte	0x9
	.2byte	0x5ae
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF1436
	.byte	0x9
	.2byte	0x5af
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF1437
	.byte	0x9
	.2byte	0x5b0
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF1438
	.byte	0x9
	.2byte	0x5b1
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF1439
	.byte	0x9
	.2byte	0x5b4
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF1440
	.byte	0x9
	.2byte	0x5b5
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF1441
	.byte	0x9
	.2byte	0x5b6
	.4byte	0x2c
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF1442
	.byte	0x9
	.2byte	0x5bc
	.4byte	0x2c
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF1443
	.byte	0x9
	.2byte	0x5bd
	.4byte	0x2c
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF1444
	.byte	0x9
	.2byte	0x5be
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF1445
	.byte	0x9
	.2byte	0x5c0
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF1446
	.byte	0x9
	.2byte	0x5c1
	.4byte	0x2c
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF1447
	.byte	0x9
	.2byte	0x5c3
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF1448
	.byte	0x9
	.2byte	0x5c6
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0x10
	.4byte	.LASF1449
	.byte	0x9
	.2byte	0x5c8
	.4byte	0x2c
	.byte	0x40
	.uleb128 0x10
	.4byte	.LASF1450
	.byte	0x9
	.2byte	0x5c9
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF1451
	.byte	0x9
	.2byte	0x5cb
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF1452
	.byte	0x9
	.2byte	0x5ce
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF1453
	.byte	0x9
	.2byte	0x5cf
	.4byte	0x2c
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF1454
	.byte	0x9
	.2byte	0x5d1
	.4byte	0x1e1
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF1455
	.byte	0x9
	.2byte	0x5d2
	.4byte	0x2c
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.4byte	.LASF1456
	.byte	0x9
	.2byte	0x5d5
	.4byte	0x2772
	.uleb128 0x8
	.byte	0x1
	.byte	0xa
	.byte	0x47
	.4byte	0x28ce
	.uleb128 0x9
	.4byte	.LASF1457
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1458
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1459
	.sleb128 2
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x4d
	.4byte	0x2905
	.uleb128 0xd
	.4byte	.LASF1460
	.byte	0xa
	.byte	0x4f
	.4byte	0x2905
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1273
	.byte	0xa
	.byte	0x50
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x13
	.ascii	"sx\000"
	.byte	0xa
	.byte	0x51
	.4byte	0x27e
	.byte	0x8
	.uleb128 0x13
	.ascii	"sy\000"
	.byte	0xa
	.byte	0x52
	.4byte	0x27e
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2361
	.uleb128 0x4
	.4byte	.LASF1461
	.byte	0xa
	.byte	0x53
	.4byte	0x28ce
	.uleb128 0x14
	.4byte	0x5c
	.4byte	0x2926
	.uleb128 0x15
	.4byte	0x78
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0xa
	.byte	0xb
	.byte	0xc0
	.4byte	0x2967
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x55
	.byte	0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xb
	.byte	0xc2
	.4byte	0x55
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF1462
	.byte	0xb
	.byte	0xc3
	.4byte	0x55
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF1463
	.byte	0xb
	.byte	0xc4
	.4byte	0x55
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF1464
	.byte	0xb
	.byte	0xc5
	.4byte	0x55
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1465
	.byte	0xb
	.byte	0xc6
	.4byte	0x2926
	.uleb128 0x8
	.byte	0x1
	.byte	0xc
	.byte	0xe0
	.4byte	0x2987
	.uleb128 0x9
	.4byte	.LASF1466
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1467
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1469
	.byte	0xd0
	.byte	0xc
	.byte	0xf8
	.4byte	0x2bfb
	.uleb128 0xd
	.4byte	.LASF1470
	.byte	0xc
	.byte	0xfb
	.4byte	0x312
	.byte	0
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xc
	.byte	0xfe
	.4byte	0x27e
	.byte	0x18
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xc
	.byte	0xff
	.4byte	0x27e
	.byte	0x1c
	.uleb128 0x16
	.ascii	"z\000"
	.byte	0xc
	.2byte	0x100
	.4byte	0x27e
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF1471
	.byte	0xc
	.2byte	0x103
	.4byte	0x2bfb
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF1472
	.byte	0xc
	.2byte	0x104
	.4byte	0x2c01
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF1462
	.byte	0xc
	.2byte	0x107
	.4byte	0x289
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF1271
	.byte	0xc
	.2byte	0x108
	.4byte	0x6c1
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF1272
	.byte	0xc
	.2byte	0x109
	.4byte	0x2c
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF1473
	.byte	0xc
	.2byte	0x10d
	.4byte	0x2bfb
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF1474
	.byte	0xc
	.2byte	0x10e
	.4byte	0x2c01
	.byte	0x3c
	.uleb128 0x10
	.4byte	.LASF1475
	.byte	0xc
	.2byte	0x110
	.4byte	0x2c3c
	.byte	0x40
	.uleb128 0x10
	.4byte	.LASF1476
	.byte	0xc
	.2byte	0x113
	.4byte	0x27e
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF1477
	.byte	0xc
	.2byte	0x114
	.4byte	0x27e
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF1478
	.byte	0xc
	.2byte	0x117
	.4byte	0x27e
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF1449
	.byte	0xc
	.2byte	0x11a
	.4byte	0x27e
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF1450
	.byte	0xc
	.2byte	0x11b
	.4byte	0x27e
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF1479
	.byte	0xc
	.2byte	0x11e
	.4byte	0x27e
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF1480
	.byte	0xc
	.2byte	0x11f
	.4byte	0x27e
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LASF1481
	.byte	0xc
	.2byte	0x120
	.4byte	0x27e
	.byte	0x60
	.uleb128 0x10
	.4byte	.LASF1482
	.byte	0xc
	.2byte	0x123
	.4byte	0x2c
	.byte	0x64
	.uleb128 0x10
	.4byte	.LASF1463
	.byte	0xc
	.2byte	0x125
	.4byte	0x2766
	.byte	0x68
	.uleb128 0x10
	.4byte	.LASF1483
	.byte	0xc
	.2byte	0x126
	.4byte	0x2c42
	.byte	0x6c
	.uleb128 0x10
	.4byte	.LASF1273
	.byte	0xc
	.2byte	0x128
	.4byte	0x2c
	.byte	0x70
	.uleb128 0x10
	.4byte	.LASF1460
	.byte	0xc
	.2byte	0x129
	.4byte	0x2905
	.byte	0x74
	.uleb128 0x10
	.4byte	.LASF1454
	.byte	0xc
	.2byte	0x12a
	.4byte	0x1e1
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF1484
	.byte	0xc
	.2byte	0x12b
	.4byte	0x2c
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF1485
	.byte	0xc
	.2byte	0x12c
	.4byte	0x2c
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF1486
	.byte	0xc
	.2byte	0x12f
	.4byte	0x55
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF1487
	.byte	0xc
	.2byte	0x130
	.4byte	0x55
	.byte	0x8a
	.uleb128 0x10
	.4byte	.LASF1488
	.byte	0xc
	.2byte	0x131
	.4byte	0x55
	.byte	0x8c
	.uleb128 0x10
	.4byte	.LASF1489
	.byte	0xc
	.2byte	0x135
	.4byte	0x2bfb
	.byte	0x90
	.uleb128 0x10
	.4byte	.LASF1438
	.byte	0xc
	.2byte	0x139
	.4byte	0x55
	.byte	0x94
	.uleb128 0x10
	.4byte	.LASF1490
	.byte	0xc
	.2byte	0x13d
	.4byte	0x55
	.byte	0x96
	.uleb128 0x10
	.4byte	.LASF1491
	.byte	0xc
	.2byte	0x140
	.4byte	0x55
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF1492
	.byte	0xc
	.2byte	0x142
	.4byte	0x55
	.byte	0x9a
	.uleb128 0x10
	.4byte	.LASF1493
	.byte	0xc
	.2byte	0x146
	.4byte	0x2e12
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF1494
	.byte	0xc
	.2byte	0x149
	.4byte	0x55
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF1495
	.byte	0xc
	.2byte	0x14c
	.4byte	0x2967
	.byte	0xa2
	.uleb128 0x10
	.4byte	.LASF1496
	.byte	0xc
	.2byte	0x14f
	.4byte	0x2bfb
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF1497
	.byte	0xc
	.2byte	0x152
	.4byte	0x2bfb
	.byte	0xb0
	.uleb128 0x10
	.4byte	.LASF1498
	.byte	0xc
	.2byte	0x158
	.4byte	0x2c
	.byte	0xb4
	.uleb128 0x10
	.4byte	.LASF1499
	.byte	0xc
	.2byte	0x159
	.4byte	0x2c
	.byte	0xb8
	.uleb128 0x10
	.4byte	.LASF1500
	.byte	0xc
	.2byte	0x15c
	.4byte	0x2e79
	.byte	0xbc
	.uleb128 0x10
	.4byte	.LASF1501
	.byte	0xc
	.2byte	0x15e
	.4byte	0x27e
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF1502
	.byte	0xc
	.2byte	0x15f
	.4byte	0x27e
	.byte	0xc4
	.uleb128 0x10
	.4byte	.LASF1503
	.byte	0xc
	.2byte	0x160
	.4byte	0x27e
	.byte	0xc8
	.uleb128 0x16
	.ascii	"pad\000"
	.byte	0xc
	.2byte	0x162
	.4byte	0x27e
	.byte	0xcc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2987
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bfb
	.uleb128 0x17
	.4byte	.LASF1504
	.byte	0xc
	.byte	0xd
	.2byte	0x123
	.4byte	0x2c3c
	.uleb128 0x10
	.4byte	.LASF1505
	.byte	0xd
	.2byte	0x125
	.4byte	0x342f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1506
	.byte	0xd
	.2byte	0x126
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF1507
	.byte	0xd
	.2byte	0x126
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c07
	.uleb128 0x6
	.byte	0x4
	.4byte	0x28a7
	.uleb128 0x18
	.4byte	.LASF1508
	.2byte	0x11c
	.byte	0xe
	.byte	0x5d
	.4byte	0x2e12
	.uleb128 0x13
	.ascii	"mo\000"
	.byte	0xe
	.byte	0x5f
	.4byte	0x2f0d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1509
	.byte	0xe
	.byte	0x60
	.4byte	0x2f02
	.byte	0x4
	.uleb128 0x13
	.ascii	"cmd\000"
	.byte	0xe
	.byte	0x61
	.4byte	0x2edc
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF1510
	.byte	0xe
	.byte	0x66
	.4byte	0x27e
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF1511
	.byte	0xe
	.byte	0x68
	.4byte	0x27e
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF1512
	.byte	0xe
	.byte	0x6a
	.4byte	0x27e
	.byte	0x18
	.uleb128 0x13
	.ascii	"bob\000"
	.byte	0xe
	.byte	0x6c
	.4byte	0x27e
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF1479
	.byte	0xe
	.byte	0x73
	.4byte	0x27e
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF1480
	.byte	0xe
	.byte	0x73
	.4byte	0x27e
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF1485
	.byte	0xe
	.byte	0x77
	.4byte	0x2c
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF1513
	.byte	0xe
	.byte	0x78
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF1514
	.byte	0xe
	.byte	0x7a
	.4byte	0x2c
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF1515
	.byte	0xe
	.byte	0x7d
	.4byte	0x2f13
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF1516
	.byte	0xe
	.byte	0x7e
	.4byte	0x2f23
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF1517
	.byte	0xe
	.byte	0x7f
	.4byte	0x1c0
	.byte	0x64
	.uleb128 0xd
	.4byte	.LASF1518
	.byte	0xe
	.byte	0x82
	.4byte	0x2f33
	.byte	0x68
	.uleb128 0xd
	.4byte	.LASF1519
	.byte	0xe
	.byte	0x83
	.4byte	0x14e
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF1520
	.byte	0xe
	.byte	0x86
	.4byte	0x14e
	.byte	0x79
	.uleb128 0xd
	.4byte	.LASF1521
	.byte	0xe
	.byte	0x88
	.4byte	0x2f43
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF1522
	.byte	0xe
	.byte	0x89
	.4byte	0x2f33
	.byte	0xa0
	.uleb128 0xd
	.4byte	.LASF1523
	.byte	0xe
	.byte	0x8a
	.4byte	0x2f33
	.byte	0xb0
	.uleb128 0xd
	.4byte	.LASF1524
	.byte	0xe
	.byte	0x8d
	.4byte	0x2c
	.byte	0xc0
	.uleb128 0xd
	.4byte	.LASF1525
	.byte	0xe
	.byte	0x8e
	.4byte	0x2c
	.byte	0xc4
	.uleb128 0xd
	.4byte	.LASF1526
	.byte	0xe
	.byte	0x92
	.4byte	0x2c
	.byte	0xc8
	.uleb128 0xd
	.4byte	.LASF1527
	.byte	0xe
	.byte	0x95
	.4byte	0x2c
	.byte	0xcc
	.uleb128 0xd
	.4byte	.LASF1528
	.byte	0xe
	.byte	0x98
	.4byte	0x2c
	.byte	0xd0
	.uleb128 0xd
	.4byte	.LASF1529
	.byte	0xe
	.byte	0x99
	.4byte	0x2c
	.byte	0xd4
	.uleb128 0xd
	.4byte	.LASF1530
	.byte	0xe
	.byte	0x9a
	.4byte	0x2c
	.byte	0xd8
	.uleb128 0xd
	.4byte	.LASF1531
	.byte	0xe
	.byte	0x9d
	.4byte	0x86
	.byte	0xdc
	.uleb128 0xd
	.4byte	.LASF1532
	.byte	0xe
	.byte	0xa0
	.4byte	0x2c
	.byte	0xe0
	.uleb128 0xd
	.4byte	.LASF1533
	.byte	0xe
	.byte	0xa1
	.4byte	0x2c
	.byte	0xe4
	.uleb128 0xd
	.4byte	.LASF1534
	.byte	0xe
	.byte	0xa4
	.4byte	0x2f0d
	.byte	0xe8
	.uleb128 0xd
	.4byte	.LASF1535
	.byte	0xe
	.byte	0xa7
	.4byte	0x2c
	.byte	0xec
	.uleb128 0xd
	.4byte	.LASF1536
	.byte	0xe
	.byte	0xab
	.4byte	0x2c
	.byte	0xf0
	.uleb128 0xd
	.4byte	.LASF1537
	.byte	0xe
	.byte	0xaf
	.4byte	0x2c
	.byte	0xf4
	.uleb128 0xd
	.4byte	.LASF1538
	.byte	0xe
	.byte	0xb2
	.4byte	0x2f53
	.byte	0xf8
	.uleb128 0x19
	.4byte	.LASF1539
	.byte	0xe
	.byte	0xb5
	.4byte	0x1c0
	.2byte	0x118
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c48
	.uleb128 0xc
	.4byte	.LASF1540
	.byte	0x1c
	.byte	0xd
	.byte	0xde
	.4byte	0x2e79
	.uleb128 0xd
	.4byte	.LASF1541
	.byte	0xd
	.byte	0xe0
	.4byte	0x342f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1542
	.byte	0xd
	.byte	0xe1
	.4byte	0x2bfb
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF1543
	.byte	0xd
	.byte	0xe2
	.4byte	0x2e79
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF1544
	.byte	0xd
	.byte	0xe3
	.4byte	0x2e79
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF1545
	.byte	0xd
	.byte	0xe4
	.4byte	0x2e79
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF1546
	.byte	0xd
	.byte	0xe5
	.4byte	0x2e79
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF1547
	.byte	0xd
	.byte	0xe6
	.4byte	0x1c0
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e18
	.uleb128 0xe
	.4byte	.LASF1548
	.byte	0xc
	.2byte	0x165
	.4byte	0x2987
	.uleb128 0x12
	.byte	0x8
	.byte	0xf
	.byte	0x31
	.4byte	0x2edc
	.uleb128 0xd
	.4byte	.LASF1549
	.byte	0xf
	.byte	0x33
	.4byte	0x47
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1550
	.byte	0xf
	.byte	0x34
	.4byte	0x47
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF1551
	.byte	0xf
	.byte	0x35
	.4byte	0x55
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF1552
	.byte	0xf
	.byte	0x36
	.4byte	0x55
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF1553
	.byte	0xf
	.byte	0x37
	.4byte	0x1cb
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF1554
	.byte	0xf
	.byte	0x38
	.4byte	0x1cb
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1555
	.byte	0xf
	.byte	0x39
	.4byte	0x2e8b
	.uleb128 0x8
	.byte	0x1
	.byte	0xe
	.byte	0x40
	.4byte	0x2f02
	.uleb128 0x9
	.4byte	.LASF1556
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1557
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1558
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1559
	.byte	0xe
	.byte	0x48
	.4byte	0x2ee7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e7f
	.uleb128 0x14
	.4byte	0x2c
	.4byte	0x2f23
	.uleb128 0x15
	.4byte	0x78
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	0x1c0
	.4byte	0x2f33
	.uleb128 0x15
	.4byte	0x78
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	0x2c
	.4byte	0x2f43
	.uleb128 0x15
	.4byte	0x78
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	0x1c0
	.4byte	0x2f53
	.uleb128 0x15
	.4byte	0x78
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	0x290b
	.4byte	0x2f63
	.uleb128 0x15
	.4byte	0x78
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1560
	.byte	0xe
	.byte	0xb7
	.4byte	0x2c48
	.uleb128 0x8
	.byte	0x1
	.byte	0x10
	.byte	0x57
	.4byte	0x3019
	.uleb128 0x9
	.4byte	.LASF1561
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1562
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1563
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1564
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF1565
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF1566
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF1567
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF1568
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF1569
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF1570
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF1571
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF1572
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF1573
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF1574
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF1575
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF1576
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF1577
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF1578
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF1579
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF1580
	.sleb128 19
	.uleb128 0x9
	.4byte	.LASF1581
	.sleb128 20
	.uleb128 0x9
	.4byte	.LASF1582
	.sleb128 21
	.uleb128 0x9
	.4byte	.LASF1583
	.sleb128 22
	.uleb128 0x9
	.4byte	.LASF1584
	.sleb128 23
	.uleb128 0x9
	.4byte	.LASF1585
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF1586
	.sleb128 25
	.uleb128 0x9
	.4byte	.LASF1587
	.sleb128 32
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0xd
	.byte	0x4d
	.4byte	0x3036
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xd
	.byte	0x4e
	.4byte	0x27e
	.byte	0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xd
	.byte	0x4e
	.4byte	0x27e
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.byte	0xd
	.byte	0x4c
	.4byte	0x304d
	.uleb128 0x1b
	.4byte	0x3019
	.uleb128 0x1c
	.ascii	"v\000"
	.byte	0xd
	.byte	0x50
	.4byte	0x304d
	.byte	0
	.uleb128 0x14
	.4byte	0x27e
	.4byte	0x305d
	.uleb128 0x15
	.4byte	0x78
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0xd
	.byte	0x4a
	.4byte	0x306c
	.uleb128 0x1d
	.4byte	0x3036
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1588
	.byte	0xd
	.byte	0x52
	.4byte	0x305d
	.uleb128 0x12
	.byte	0x24
	.byte	0xd
	.byte	0x55
	.4byte	0x30aa
	.uleb128 0xd
	.4byte	.LASF1470
	.byte	0xd
	.byte	0x57
	.4byte	0x312
	.byte	0
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0xd
	.byte	0x58
	.4byte	0x27e
	.byte	0x18
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0xd
	.byte	0x58
	.4byte	0x27e
	.byte	0x1c
	.uleb128 0x13
	.ascii	"z\000"
	.byte	0xd
	.byte	0x58
	.4byte	0x27e
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1589
	.byte	0xd
	.byte	0x59
	.4byte	0x3077
	.uleb128 0x12
	.byte	0xc4
	.byte	0xd
	.byte	0x60
	.4byte	0x32aa
	.uleb128 0xd
	.4byte	.LASF1590
	.byte	0xd
	.byte	0x62
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1591
	.byte	0xd
	.byte	0x63
	.4byte	0x1c0
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF1592
	.byte	0xd
	.byte	0x64
	.4byte	0x1c0
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF1593
	.byte	0xd
	.byte	0x65
	.4byte	0x27e
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF1594
	.byte	0xd
	.byte	0x66
	.4byte	0x27e
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF1595
	.byte	0xd
	.byte	0x67
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF1596
	.byte	0xd
	.byte	0x67
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF1597
	.byte	0xd
	.byte	0x68
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF1598
	.byte	0xd
	.byte	0x69
	.4byte	0x2f0d
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF1599
	.byte	0xd
	.byte	0x6a
	.4byte	0x2f33
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF1600
	.byte	0xd
	.byte	0x6b
	.4byte	0x30aa
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF1482
	.byte	0xd
	.byte	0x6c
	.4byte	0x2c
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF1601
	.byte	0xd
	.byte	0x6d
	.4byte	0x2f0d
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF1498
	.byte	0xd
	.byte	0x73
	.4byte	0x2c
	.byte	0x60
	.uleb128 0xd
	.4byte	.LASF1499
	.byte	0xd
	.byte	0x73
	.4byte	0x2c
	.byte	0x64
	.uleb128 0xd
	.4byte	.LASF1602
	.byte	0xd
	.byte	0x76
	.4byte	0x45
	.byte	0x68
	.uleb128 0xd
	.4byte	.LASF1603
	.byte	0xd
	.byte	0x77
	.4byte	0x45
	.byte	0x6c
	.uleb128 0xd
	.4byte	.LASF1604
	.byte	0xd
	.byte	0x78
	.4byte	0x45
	.byte	0x70
	.uleb128 0xd
	.4byte	.LASF1605
	.byte	0xd
	.byte	0x7b
	.4byte	0x2c
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF1606
	.byte	0xd
	.byte	0x7c
	.4byte	0x2c
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF1607
	.byte	0xd
	.byte	0x7d
	.4byte	0x2c
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF1608
	.byte	0xd
	.byte	0x80
	.4byte	0x2c
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF1609
	.byte	0xd
	.byte	0x82
	.4byte	0x2c
	.byte	0x84
	.uleb128 0xd
	.4byte	.LASF1610
	.byte	0xd
	.byte	0x82
	.4byte	0x2c
	.byte	0x88
	.uleb128 0xd
	.4byte	.LASF1611
	.byte	0xd
	.byte	0x82
	.4byte	0x2c
	.byte	0x8c
	.uleb128 0xd
	.4byte	.LASF1612
	.byte	0xd
	.byte	0x86
	.4byte	0x2e79
	.byte	0x90
	.uleb128 0xd
	.4byte	.LASF1613
	.byte	0xd
	.byte	0x88
	.4byte	0x2c
	.byte	0x94
	.uleb128 0xd
	.4byte	.LASF1614
	.byte	0xd
	.byte	0x89
	.4byte	0x33af
	.byte	0x98
	.uleb128 0x13
	.ascii	"sky\000"
	.byte	0xd
	.byte	0x92
	.4byte	0x2c
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF1615
	.byte	0xd
	.byte	0x95
	.4byte	0x27e
	.byte	0xa0
	.uleb128 0xd
	.4byte	.LASF1616
	.byte	0xd
	.byte	0x95
	.4byte	0x27e
	.byte	0xa4
	.uleb128 0xd
	.4byte	.LASF1617
	.byte	0xd
	.byte	0x96
	.4byte	0x27e
	.byte	0xa8
	.uleb128 0xd
	.4byte	.LASF1618
	.byte	0xd
	.byte	0x96
	.4byte	0x27e
	.byte	0xac
	.uleb128 0xd
	.4byte	.LASF1619
	.byte	0xd
	.byte	0x99
	.4byte	0x2c
	.byte	0xb0
	.uleb128 0xd
	.4byte	.LASF1620
	.byte	0xd
	.byte	0x99
	.4byte	0x2c
	.byte	0xb4
	.uleb128 0xd
	.4byte	.LASF1621
	.byte	0xd
	.byte	0x9b
	.4byte	0x55
	.byte	0xb8
	.uleb128 0xd
	.4byte	.LASF1622
	.byte	0xd
	.byte	0x9c
	.4byte	0x55
	.byte	0xba
	.uleb128 0xd
	.4byte	.LASF1623
	.byte	0xd
	.byte	0x9d
	.4byte	0x55
	.byte	0xbc
	.uleb128 0xd
	.4byte	.LASF1624
	.byte	0xd
	.byte	0x9e
	.4byte	0x55
	.byte	0xbe
	.uleb128 0xd
	.4byte	.LASF1625
	.byte	0xd
	.byte	0x9f
	.4byte	0x55
	.byte	0xc0
	.uleb128 0x13
	.ascii	"tag\000"
	.byte	0xd
	.byte	0xa0
	.4byte	0x55
	.byte	0xc2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1626
	.byte	0x7c
	.byte	0xd
	.byte	0xb1
	.4byte	0x33af
	.uleb128 0xd
	.4byte	.LASF1627
	.byte	0xd
	.byte	0xb3
	.4byte	0x2c
	.byte	0
	.uleb128 0x13
	.ascii	"v1\000"
	.byte	0xd
	.byte	0xb4
	.4byte	0x3419
	.byte	0x4
	.uleb128 0x13
	.ascii	"v2\000"
	.byte	0xd
	.byte	0xb4
	.4byte	0x3419
	.byte	0x8
	.uleb128 0x13
	.ascii	"dx\000"
	.byte	0xd
	.byte	0xb5
	.4byte	0x27e
	.byte	0xc
	.uleb128 0x13
	.ascii	"dy\000"
	.byte	0xd
	.byte	0xb5
	.4byte	0x27e
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF1454
	.byte	0xd
	.byte	0xb6
	.4byte	0x5c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF1624
	.byte	0xd
	.byte	0xb7
	.4byte	0x55
	.byte	0x16
	.uleb128 0x13
	.ascii	"tag\000"
	.byte	0xd
	.byte	0xb8
	.4byte	0x55
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF1628
	.byte	0xd
	.byte	0xb9
	.4byte	0x2916
	.byte	0x1a
	.uleb128 0xd
	.4byte	.LASF1629
	.byte	0xd
	.byte	0xba
	.4byte	0x341f
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF1630
	.byte	0xd
	.byte	0xbb
	.4byte	0x33e7
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF1631
	.byte	0xd
	.byte	0xbc
	.4byte	0x342f
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF1632
	.byte	0xd
	.byte	0xbd
	.4byte	0x342f
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF1482
	.byte	0xd
	.byte	0xbe
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF1633
	.byte	0xd
	.byte	0xbf
	.4byte	0x45
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF1634
	.byte	0xd
	.byte	0xc0
	.4byte	0x2c
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF1596
	.byte	0xd
	.byte	0xc1
	.4byte	0x2c
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF1595
	.byte	0xd
	.byte	0xc1
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF1635
	.byte	0xd
	.byte	0xc2
	.4byte	0x2c
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF1636
	.byte	0xd
	.byte	0xc9
	.4byte	0x33f2
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF1600
	.byte	0xd
	.byte	0xca
	.4byte	0x30aa
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32aa
	.uleb128 0x4
	.4byte	.LASF1637
	.byte	0xd
	.byte	0xa4
	.4byte	0x30b5
	.uleb128 0x8
	.byte	0x1
	.byte	0xd
	.byte	0xaa
	.4byte	0x33e7
	.uleb128 0x9
	.4byte	.LASF1638
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1639
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1640
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1641
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1642
	.byte	0xd
	.byte	0xaf
	.4byte	0x33c6
	.uleb128 0x8
	.byte	0x1
	.byte	0xd
	.byte	0xc3
	.4byte	0x3419
	.uleb128 0x9
	.4byte	.LASF1643
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1644
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1645
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF1646
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF1647
	.sleb128 16
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x306c
	.uleb128 0x14
	.4byte	0x27e
	.4byte	0x342f
	.uleb128 0x15
	.4byte	0x78
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33bb
	.uleb128 0x4
	.4byte	.LASF1648
	.byte	0xd
	.byte	0xcb
	.4byte	0x32aa
	.uleb128 0x4
	.4byte	.LASF1649
	.byte	0xd
	.byte	0xe7
	.4byte	0x2e18
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3435
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1650
	.uleb128 0xe
	.4byte	.LASF1651
	.byte	0xd
	.2byte	0x127
	.4byte	0x2c07
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x12
	.byte	0x10
	.byte	0x11
	.byte	0x32
	.4byte	0x349d
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0x11
	.byte	0x33
	.4byte	0x27e
	.byte	0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0x11
	.byte	0x34
	.4byte	0x27e
	.byte	0x4
	.uleb128 0x13
	.ascii	"dx\000"
	.byte	0x11
	.byte	0x35
	.4byte	0x27e
	.byte	0x8
	.uleb128 0x13
	.ascii	"dy\000"
	.byte	0x11
	.byte	0x36
	.4byte	0x27e
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1652
	.byte	0x11
	.byte	0x37
	.4byte	0x346a
	.uleb128 0x1a
	.byte	0x4
	.byte	0x11
	.byte	0x3c
	.4byte	0x34c7
	.uleb128 0x1e
	.4byte	.LASF1653
	.byte	0x11
	.byte	0x3d
	.4byte	0x2f0d
	.uleb128 0x1e
	.4byte	.LASF1654
	.byte	0x11
	.byte	0x3e
	.4byte	0x344b
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x11
	.byte	0x39
	.4byte	0x34f2
	.uleb128 0xd
	.4byte	.LASF1655
	.byte	0x11
	.byte	0x3a
	.4byte	0x27e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1656
	.byte	0x11
	.byte	0x3b
	.4byte	0x1c0
	.byte	0x4
	.uleb128 0x13
	.ascii	"d\000"
	.byte	0x11
	.byte	0x3f
	.4byte	0x34a8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1657
	.byte	0x11
	.byte	0x40
	.4byte	0x34c7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3503
	.uleb128 0x1f
	.4byte	0x1c0
	.4byte	0x3512
	.uleb128 0x20
	.4byte	0x3512
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34f2
	.uleb128 0x8
	.byte	0x1
	.byte	0x12
	.byte	0xb6
	.4byte	0x3806
	.uleb128 0x9
	.4byte	.LASF1658
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1659
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1660
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1661
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF1662
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF1663
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF1664
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF1665
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF1666
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF1667
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF1668
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF1669
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF1670
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF1671
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF1672
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF1673
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF1674
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF1675
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF1676
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF1677
	.sleb128 19
	.uleb128 0x9
	.4byte	.LASF1678
	.sleb128 20
	.uleb128 0x9
	.4byte	.LASF1679
	.sleb128 21
	.uleb128 0x9
	.4byte	.LASF1680
	.sleb128 22
	.uleb128 0x9
	.4byte	.LASF1681
	.sleb128 23
	.uleb128 0x9
	.4byte	.LASF1682
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF1683
	.sleb128 25
	.uleb128 0x9
	.4byte	.LASF1684
	.sleb128 26
	.uleb128 0x9
	.4byte	.LASF1685
	.sleb128 27
	.uleb128 0x9
	.4byte	.LASF1686
	.sleb128 28
	.uleb128 0x9
	.4byte	.LASF1687
	.sleb128 29
	.uleb128 0x9
	.4byte	.LASF1688
	.sleb128 30
	.uleb128 0x9
	.4byte	.LASF1689
	.sleb128 31
	.uleb128 0x9
	.4byte	.LASF1690
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF1691
	.sleb128 33
	.uleb128 0x9
	.4byte	.LASF1692
	.sleb128 34
	.uleb128 0x9
	.4byte	.LASF1693
	.sleb128 35
	.uleb128 0x9
	.4byte	.LASF1694
	.sleb128 36
	.uleb128 0x9
	.4byte	.LASF1695
	.sleb128 37
	.uleb128 0x9
	.4byte	.LASF1696
	.sleb128 38
	.uleb128 0x9
	.4byte	.LASF1697
	.sleb128 39
	.uleb128 0x9
	.4byte	.LASF1698
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF1699
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF1700
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF1701
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF1702
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF1703
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF1704
	.sleb128 46
	.uleb128 0x9
	.4byte	.LASF1705
	.sleb128 47
	.uleb128 0x9
	.4byte	.LASF1706
	.sleb128 48
	.uleb128 0x9
	.4byte	.LASF1707
	.sleb128 49
	.uleb128 0x9
	.4byte	.LASF1708
	.sleb128 50
	.uleb128 0x9
	.4byte	.LASF1709
	.sleb128 51
	.uleb128 0x9
	.4byte	.LASF1710
	.sleb128 52
	.uleb128 0x9
	.4byte	.LASF1711
	.sleb128 53
	.uleb128 0x9
	.4byte	.LASF1712
	.sleb128 54
	.uleb128 0x9
	.4byte	.LASF1713
	.sleb128 55
	.uleb128 0x9
	.4byte	.LASF1714
	.sleb128 56
	.uleb128 0x9
	.4byte	.LASF1715
	.sleb128 57
	.uleb128 0x9
	.4byte	.LASF1716
	.sleb128 58
	.uleb128 0x9
	.4byte	.LASF1717
	.sleb128 59
	.uleb128 0x9
	.4byte	.LASF1718
	.sleb128 60
	.uleb128 0x9
	.4byte	.LASF1719
	.sleb128 61
	.uleb128 0x9
	.4byte	.LASF1720
	.sleb128 62
	.uleb128 0x9
	.4byte	.LASF1721
	.sleb128 63
	.uleb128 0x9
	.4byte	.LASF1722
	.sleb128 64
	.uleb128 0x9
	.4byte	.LASF1723
	.sleb128 65
	.uleb128 0x9
	.4byte	.LASF1724
	.sleb128 66
	.uleb128 0x9
	.4byte	.LASF1725
	.sleb128 67
	.uleb128 0x9
	.4byte	.LASF1726
	.sleb128 68
	.uleb128 0x9
	.4byte	.LASF1727
	.sleb128 69
	.uleb128 0x9
	.4byte	.LASF1728
	.sleb128 70
	.uleb128 0x9
	.4byte	.LASF1729
	.sleb128 71
	.uleb128 0x9
	.4byte	.LASF1730
	.sleb128 72
	.uleb128 0x9
	.4byte	.LASF1731
	.sleb128 73
	.uleb128 0x9
	.4byte	.LASF1732
	.sleb128 74
	.uleb128 0x9
	.4byte	.LASF1733
	.sleb128 75
	.uleb128 0x9
	.4byte	.LASF1734
	.sleb128 76
	.uleb128 0x9
	.4byte	.LASF1735
	.sleb128 77
	.uleb128 0x9
	.4byte	.LASF1736
	.sleb128 78
	.uleb128 0x9
	.4byte	.LASF1737
	.sleb128 79
	.uleb128 0x9
	.4byte	.LASF1738
	.sleb128 80
	.uleb128 0x9
	.4byte	.LASF1739
	.sleb128 81
	.uleb128 0x9
	.4byte	.LASF1740
	.sleb128 82
	.uleb128 0x9
	.4byte	.LASF1741
	.sleb128 83
	.uleb128 0x9
	.4byte	.LASF1742
	.sleb128 84
	.uleb128 0x9
	.4byte	.LASF1743
	.sleb128 85
	.uleb128 0x9
	.4byte	.LASF1744
	.sleb128 86
	.uleb128 0x9
	.4byte	.LASF1745
	.sleb128 87
	.uleb128 0x9
	.4byte	.LASF1746
	.sleb128 88
	.uleb128 0x9
	.4byte	.LASF1747
	.sleb128 89
	.uleb128 0x9
	.4byte	.LASF1748
	.sleb128 90
	.uleb128 0x9
	.4byte	.LASF1749
	.sleb128 91
	.uleb128 0x9
	.4byte	.LASF1750
	.sleb128 92
	.uleb128 0x9
	.4byte	.LASF1751
	.sleb128 93
	.uleb128 0x9
	.4byte	.LASF1752
	.sleb128 94
	.uleb128 0x9
	.4byte	.LASF1753
	.sleb128 95
	.uleb128 0x9
	.4byte	.LASF1754
	.sleb128 96
	.uleb128 0x9
	.4byte	.LASF1755
	.sleb128 97
	.uleb128 0x9
	.4byte	.LASF1756
	.sleb128 98
	.uleb128 0x9
	.4byte	.LASF1757
	.sleb128 99
	.uleb128 0x9
	.4byte	.LASF1758
	.sleb128 100
	.uleb128 0x9
	.4byte	.LASF1759
	.sleb128 101
	.uleb128 0x9
	.4byte	.LASF1760
	.sleb128 102
	.uleb128 0x9
	.4byte	.LASF1761
	.sleb128 103
	.uleb128 0x9
	.4byte	.LASF1762
	.sleb128 104
	.uleb128 0x9
	.4byte	.LASF1763
	.sleb128 105
	.uleb128 0x9
	.4byte	.LASF1764
	.sleb128 106
	.uleb128 0x9
	.4byte	.LASF1765
	.sleb128 107
	.uleb128 0x9
	.4byte	.LASF1766
	.sleb128 108
	.uleb128 0x9
	.4byte	.LASF1767
	.sleb128 109
	.uleb128 0x9
	.4byte	.LASF1768
	.sleb128 110
	.uleb128 0x9
	.4byte	.LASF1769
	.sleb128 111
	.uleb128 0x9
	.4byte	.LASF1770
	.sleb128 112
	.uleb128 0x9
	.4byte	.LASF1771
	.sleb128 113
	.uleb128 0x9
	.4byte	.LASF1772
	.sleb128 114
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x13
	.byte	0x3e
	.4byte	0x3989
	.uleb128 0x9
	.4byte	.LASF1773
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1774
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1775
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1776
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF1777
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF1778
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF1779
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF1780
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF1781
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF1782
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF1783
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF1784
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF1785
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF1786
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF1787
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF1788
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF1789
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF1790
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF1791
	.sleb128 18
	.uleb128 0x9
	.4byte	.LASF1792
	.sleb128 19
	.uleb128 0x9
	.4byte	.LASF1793
	.sleb128 20
	.uleb128 0x9
	.4byte	.LASF1794
	.sleb128 21
	.uleb128 0x9
	.4byte	.LASF1795
	.sleb128 22
	.uleb128 0x9
	.4byte	.LASF1796
	.sleb128 23
	.uleb128 0x9
	.4byte	.LASF1797
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF1798
	.sleb128 25
	.uleb128 0x9
	.4byte	.LASF1799
	.sleb128 26
	.uleb128 0x9
	.4byte	.LASF1800
	.sleb128 27
	.uleb128 0x9
	.4byte	.LASF1801
	.sleb128 28
	.uleb128 0x9
	.4byte	.LASF1802
	.sleb128 29
	.uleb128 0x9
	.4byte	.LASF1803
	.sleb128 30
	.uleb128 0x9
	.4byte	.LASF1804
	.sleb128 31
	.uleb128 0x9
	.4byte	.LASF1805
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF1806
	.sleb128 33
	.uleb128 0x9
	.4byte	.LASF1807
	.sleb128 34
	.uleb128 0x9
	.4byte	.LASF1808
	.sleb128 35
	.uleb128 0x9
	.4byte	.LASF1809
	.sleb128 36
	.uleb128 0x9
	.4byte	.LASF1810
	.sleb128 37
	.uleb128 0x9
	.4byte	.LASF1811
	.sleb128 38
	.uleb128 0x9
	.4byte	.LASF1812
	.sleb128 39
	.uleb128 0x9
	.4byte	.LASF1813
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF1814
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF1815
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF1816
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF1817
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF1818
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF1819
	.sleb128 46
	.uleb128 0x9
	.4byte	.LASF1820
	.sleb128 47
	.uleb128 0x9
	.4byte	.LASF1821
	.sleb128 48
	.uleb128 0x9
	.4byte	.LASF1822
	.sleb128 49
	.uleb128 0x9
	.4byte	.LASF1823
	.sleb128 50
	.uleb128 0x9
	.4byte	.LASF1824
	.sleb128 51
	.uleb128 0x9
	.4byte	.LASF1825
	.sleb128 52
	.uleb128 0x9
	.4byte	.LASF1826
	.sleb128 53
	.uleb128 0x9
	.4byte	.LASF1827
	.sleb128 54
	.uleb128 0x9
	.4byte	.LASF1828
	.sleb128 55
	.uleb128 0x9
	.4byte	.LASF1829
	.sleb128 56
	.uleb128 0x9
	.4byte	.LASF1830
	.sleb128 57
	.uleb128 0x9
	.4byte	.LASF1831
	.sleb128 58
	.uleb128 0x9
	.4byte	.LASF1832
	.sleb128 59
	.uleb128 0x9
	.4byte	.LASF1833
	.sleb128 60
	.uleb128 0x9
	.4byte	.LASF1834
	.sleb128 61
	.uleb128 0x9
	.4byte	.LASF1835
	.sleb128 62
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1836
	.byte	0x13
	.byte	0x81
	.4byte	0x3806
	.uleb128 0x8
	.byte	0x1
	.byte	0x14
	.byte	0x2b
	.4byte	0x39b5
	.uleb128 0x9
	.4byte	.LASF1837
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF1838
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1839
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1840
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x15
	.byte	0x28
	.4byte	0x39e9
	.uleb128 0x9
	.4byte	.LASF1841
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF1842
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF1843
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF1844
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF1845
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF1846
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF1847
	.sleb128 64
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1848
	.byte	0x15
	.byte	0x30
	.4byte	0x39b5
	.uleb128 0xc
	.4byte	.LASF1849
	.byte	0x14
	.byte	0x16
	.byte	0x22
	.4byte	0x3a3d
	.uleb128 0xd
	.4byte	.LASF1850
	.byte	0x16
	.byte	0x23
	.4byte	0x45
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1851
	.byte	0x16
	.byte	0x24
	.4byte	0x3a
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF1852
	.byte	0x16
	.byte	0x25
	.4byte	0x3a
	.byte	0x8
	.uleb128 0x13
	.ascii	"tag\000"
	.byte	0x16
	.byte	0x26
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF1853
	.byte	0x16
	.byte	0x27
	.4byte	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1854
	.byte	0x2
	.byte	0x38
	.4byte	0x27e
	.byte	0x3
	.4byte	0x3a6b
	.uleb128 0x22
	.ascii	"x\000"
	.byte	0x2
	.byte	0x38
	.4byte	0x27e
	.uleb128 0x23
	.ascii	"_t\000"
	.byte	0x2
	.byte	0x3a
	.4byte	0x27e
	.uleb128 0x23
	.ascii	"_s\000"
	.byte	0x2
	.byte	0x3a
	.4byte	0x27e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1855
	.byte	0x2
	.byte	0x52
	.4byte	0x27e
	.byte	0x3
	.4byte	0x3a8e
	.uleb128 0x22
	.ascii	"a\000"
	.byte	0x2
	.byte	0x52
	.4byte	0x27e
	.uleb128 0x22
	.ascii	"b\000"
	.byte	0x2
	.byte	0x52
	.4byte	0x27e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1856
	.byte	0x2
	.byte	0x46
	.4byte	0x27e
	.byte	0x3
	.4byte	0x3ab1
	.uleb128 0x22
	.ascii	"a\000"
	.byte	0x2
	.byte	0x46
	.4byte	0x27e
	.uleb128 0x22
	.ascii	"b\000"
	.byte	0x2
	.byte	0x46
	.4byte	0x27e
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1857
	.byte	0x1
	.2byte	0x187
	.4byte	0x1c0
	.byte	0x1
	.4byte	0x3ace
	.uleb128 0x25
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x187
	.4byte	0x344b
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1859
	.byte	0x1
	.2byte	0x683
	.4byte	0x1c0
	.byte	0x1
	.4byte	0x3af7
	.uleb128 0x25
	.ascii	"in\000"
	.byte	0x1
	.2byte	0x683
	.4byte	0x3512
	.uleb128 0x27
	.4byte	.LASF1858
	.byte	0x1
	.2byte	0x685
	.4byte	0x2c
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1860
	.byte	0x1
	.2byte	0x6ed
	.4byte	0x1c0
	.byte	0x1
	.4byte	0x3b37
	.uleb128 0x28
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x6ed
	.4byte	0x2f0d
	.uleb128 0x29
	.ascii	"dx\000"
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x27e
	.uleb128 0x29
	.ascii	"dy\000"
	.byte	0x1
	.2byte	0x6f0
	.4byte	0x27e
	.uleb128 0x27
	.4byte	.LASF1861
	.byte	0x1
	.2byte	0x6f1
	.4byte	0x27e
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1862
	.byte	0x1
	.2byte	0x30c
	.4byte	0x1c0
	.byte	0x1
	.4byte	0x3b9b
	.uleb128 0x28
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x30c
	.4byte	0x2f0d
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x27e
	.uleb128 0x25
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x27e
	.uleb128 0x28
	.4byte	.LASF1863
	.byte	0x1
	.2byte	0x30d
	.4byte	0x1c0
	.uleb128 0x27
	.4byte	.LASF1864
	.byte	0x1
	.2byte	0x30f
	.4byte	0x27e
	.uleb128 0x27
	.4byte	.LASF1865
	.byte	0x1
	.2byte	0x310
	.4byte	0x27e
	.uleb128 0x2a
	.uleb128 0x27
	.4byte	.LASF1866
	.byte	0x1
	.2byte	0x368
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1867
	.byte	0x1
	.2byte	0x74f
	.4byte	0x1c0
	.byte	0x1
	.4byte	0x3bd0
	.uleb128 0x28
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x74f
	.4byte	0x2f0d
	.uleb128 0x29
	.ascii	"mo\000"
	.byte	0x1
	.2byte	0x751
	.4byte	0x2f0d
	.uleb128 0x2a
	.uleb128 0x29
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x77d
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF2030
	.byte	0x1
	.2byte	0x7dd
	.4byte	0x3bdd
	.byte	0x3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3440
	.uleb128 0x26
	.4byte	.LASF1868
	.byte	0x1
	.2byte	0x7f0
	.4byte	0x3bdd
	.byte	0x1
	.4byte	0x3c23
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x7f0
	.4byte	0x342f
	.uleb128 0x28
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x7f0
	.4byte	0x2f0d
	.uleb128 0x28
	.4byte	.LASF1869
	.byte	0x1
	.2byte	0x7f0
	.4byte	0x3bdd
	.uleb128 0x27
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0x7f2
	.4byte	0x3bdd
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1871
	.byte	0x1
	.2byte	0x857
	.4byte	0x1c0
	.byte	0x1
	.4byte	0x3c40
	.uleb128 0x25
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x857
	.4byte	0x344b
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1887
	.byte	0x1
	.2byte	0x7e4
	.byte	0x3
	.4byte	0x3c5a
	.uleb128 0x28
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0x7e4
	.4byte	0x3bdd
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF1877
	.byte	0x1
	.byte	0x67
	.4byte	0x1c0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d18
	.uleb128 0x2e
	.4byte	.LASF1653
	.byte	0x1
	.byte	0x67
	.4byte	0x2f0d
	.4byte	.LLST0
	.uleb128 0x2f
	.4byte	.LASF1874
	.byte	0x1
	.byte	0x69
	.4byte	0x27e
	.4byte	.LLST1
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB200
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x77
	.4byte	0x3cc6
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST2
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST2
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x3a3d
	.4byte	.LBB204
	.4byte	.LBE204-.LBB204
	.byte	0x1
	.byte	0x77
	.4byte	0x3cff
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST5
	.uleb128 0x35
	.4byte	.LBB205
	.4byte	.LBE205-.LBB205
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST5
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL6
	.4byte	0x6621
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2710
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1872
	.byte	0x1
	.2byte	0x164
	.4byte	0x1c0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d66
	.uleb128 0x39
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x164
	.4byte	0x344b
	.4byte	.LLST8
	.uleb128 0x3a
	.4byte	.LVL11
	.4byte	0x6641
	.4byte	0x3d55
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL12
	.4byte	0x6641
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1873
	.byte	0x1
	.2byte	0x176
	.4byte	0x2c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd2
	.uleb128 0x39
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x176
	.4byte	0x344b
	.4byte	.LLST9
	.uleb128 0x3b
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0x27e
	.4byte	.LLST10
	.uleb128 0x3b
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0x27e
	.4byte	.LLST11
	.uleb128 0x3c
	.4byte	.LASF1875
	.byte	0x1
	.2byte	0x178
	.4byte	0x341f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.4byte	.LVL21
	.4byte	0x666b
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF1876
	.byte	0x1
	.2byte	0x37e
	.4byte	0x1c0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4072
	.uleb128 0x39
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x37e
	.4byte	0x344b
	.4byte	.LLST12
	.uleb128 0x3e
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.4byte	0x4058
	.uleb128 0x3f
	.ascii	"mo\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x2f0d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x40
	.4byte	.LASF1861
	.byte	0x1
	.2byte	0x389
	.4byte	0x27e
	.4byte	.LLST13
	.uleb128 0x35
	.4byte	.LBB207
	.4byte	.LBE207-.LBB207
	.uleb128 0x3b
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x399
	.4byte	0x27e
	.4byte	.LLST14
	.uleb128 0x3b
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x399
	.4byte	0x27e
	.4byte	.LLST15
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB208
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x399
	.4byte	0x3e7e
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST16
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST16
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB212
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x399
	.4byte	0x3eb4
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST18
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB220
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x3a2
	.4byte	0x3f3f
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST22
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB222
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x2
	.byte	0x54
	.4byte	0x3f0f
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST23
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST23
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	0x3a3d
	.4byte	.LBB226
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST22
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST22
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	0x3a8e
	.4byte	.LBB233
	.4byte	.LBE233-.LBB233
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x3f66
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST28
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST29
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB235
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x3fc2
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST30
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST31
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB237
	.4byte	.LBE237-.LBB237
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST31
	.uleb128 0x35
	.4byte	.LBB238
	.4byte	.LBE238-.LBB238
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB240
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x3fe9
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST35
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST36
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB244
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x3b4
	.4byte	0x400c
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST37
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB252
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.2byte	0x3b8
	.4byte	0x4033
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST38
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST38
	.byte	0
	.uleb128 0x47
	.4byte	0x3a8e
	.4byte	.LBB256
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.2byte	0x3b8
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST40
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL26
	.4byte	0x666b
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	tmbbox
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LASF1878
	.byte	0x1
	.2byte	0x56c
	.4byte	0x1c0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x435b
	.uleb128 0x39
	.ascii	"in\000"
	.byte	0x1
	.2byte	0x56c
	.4byte	0x3512
	.4byte	.LLST42
	.uleb128 0x3b
	.ascii	"li\000"
	.byte	0x1
	.2byte	0x56e
	.4byte	0x344b
	.4byte	.LLST43
	.uleb128 0x3b
	.ascii	"th\000"
	.byte	0x1
	.2byte	0x56f
	.4byte	0x2f0d
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LASF1879
	.byte	0x1
	.2byte	0x570
	.4byte	0x27e
	.uleb128 0x40
	.4byte	.LASF1880
	.byte	0x1
	.2byte	0x571
	.4byte	0x27e
	.4byte	.LLST45
	.uleb128 0x40
	.4byte	.LASF1881
	.byte	0x1
	.2byte	0x572
	.4byte	0x27e
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	.LASF1861
	.byte	0x1
	.2byte	0x573
	.4byte	0x27e
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB266
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x5ac
	.4byte	0x4118
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST47
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST48
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB272
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0x5ad
	.4byte	0x41a5
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST49
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST50
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB274
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x2
	.byte	0x54
	.4byte	0x4173
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST51
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x178
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST51
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	0x3a3d
	.4byte	.LBB278
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST50
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x198
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST50
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB287
	.4byte	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.2byte	0x5b2
	.4byte	0x4201
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST57
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST58
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB289
	.4byte	.LBE289-.LBB289
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST58
	.uleb128 0x35
	.4byte	.LBB290
	.4byte	.LBE290-.LBB290
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST58
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB292
	.4byte	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.2byte	0x585
	.4byte	0x4228
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST62
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST63
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB298
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x589
	.4byte	0x42b9
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST64
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST65
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB300
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x2
	.byte	0x54
	.4byte	0x4283
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST66
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x218
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST66
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB305
	.4byte	.LBE305-.LBB305
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST65
	.uleb128 0x35
	.4byte	.LBB306
	.4byte	.LBE306-.LBB306
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST65
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST71
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB313
	.4byte	.Ldebug_ranges0+0x238
	.byte	0x1
	.2byte	0x590
	.4byte	0x434a
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST72
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST73
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB315
	.4byte	.Ldebug_ranges0+0x260
	.byte	0x2
	.byte	0x54
	.4byte	0x4314
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST74
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x260
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST74
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST76
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB320
	.4byte	.LBE320-.LBB320
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST73
	.uleb128 0x35
	.4byte	.LBB321
	.4byte	.LBE321-.LBB321
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST73
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST79
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL98
	.4byte	0x6690
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1882
	.byte	0x1
	.2byte	0x6b0
	.4byte	0x1c0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x439d
	.uleb128 0x39
	.ascii	"in\000"
	.byte	0x1
	.2byte	0x6b0
	.4byte	0x3512
	.4byte	.LLST80
	.uleb128 0x3b
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x6b2
	.4byte	0x344b
	.4byte	.LLST81
	.uleb128 0x4a
	.4byte	.LVL134
	.4byte	0x6690
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1883
	.byte	0x1
	.2byte	0x1de
	.4byte	0x1c0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4512
	.uleb128 0x4b
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x1de
	.4byte	0x2f0d
	.4byte	.LLST82
	.uleb128 0x40
	.4byte	.LASF1874
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x27e
	.4byte	.LLST83
	.uleb128 0x40
	.4byte	.LASF1452
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x2c
	.4byte	.LLST84
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB332
	.4byte	.Ldebug_ranges0+0x280
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x441d
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST85
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x280
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST85
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST87
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	0x3a3d
	.4byte	.LBB336
	.4byte	.LBE336-.LBB336
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x4457
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST88
	.uleb128 0x35
	.4byte	.LBB337
	.4byte	.LBE337-.LBB337
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST88
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST90
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LBB338
	.4byte	.LBE338-.LBB338
	.4byte	0x44a2
	.uleb128 0x27
	.4byte	.LASF1452
	.byte	0x1
	.2byte	0x217
	.4byte	0x2c
	.uleb128 0x3a
	.4byte	.LVL151
	.4byte	0x66a1
	.4byte	0x4483
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL153
	.4byte	0x6621
	.4byte	0x4498
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL154
	.4byte	0x66b6
	.byte	0
	.uleb128 0x3e
	.4byte	.LBB339
	.4byte	.LBE339-.LBB339
	.4byte	0x44d0
	.uleb128 0x40
	.4byte	.LASF1884
	.byte	0x1
	.2byte	0x25f
	.4byte	0x1e1
	.4byte	.LLST91
	.uleb128 0x36
	.4byte	.LVL157
	.4byte	0x66d1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL147
	.4byte	0x6621
	.4byte	0x44ee
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL159
	.4byte	0x66a1
	.4byte	0x4501
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.4byte	.LVL162
	.4byte	0x6621
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1885
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x1c0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4592
	.uleb128 0x39
	.ascii	"in\000"
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x3512
	.4byte	.LLST92
	.uleb128 0x3b
	.ascii	"li\000"
	.byte	0x1
	.2byte	0x4ac
	.4byte	0x344b
	.4byte	.LLST93
	.uleb128 0x4c
	.4byte	.LASF1913
	.byte	0x1
	.2byte	0x4cf
	.4byte	.LDL1
	.uleb128 0x3a
	.4byte	.LVL166
	.4byte	0x6641
	.4byte	0x456a
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL167
	.4byte	0x6690
	.4byte	0x457e
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL170
	.4byte	0x66e7
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LASF1886
	.byte	0x1
	.2byte	0x5c9
	.4byte	0x1c0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4acd
	.uleb128 0x39
	.ascii	"in\000"
	.byte	0x1
	.2byte	0x5c9
	.4byte	0x3512
	.4byte	.LLST94
	.uleb128 0x3b
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x5cb
	.4byte	0x27e
	.4byte	.LLST95
	.uleb128 0x3b
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x27e
	.4byte	.LLST96
	.uleb128 0x3b
	.ascii	"z\000"
	.byte	0x1
	.2byte	0x5cd
	.4byte	0x27e
	.4byte	.LLST97
	.uleb128 0x40
	.4byte	.LASF1655
	.byte	0x1
	.2byte	0x5ce
	.4byte	0x27e
	.4byte	.LLST98
	.uleb128 0x3b
	.ascii	"th\000"
	.byte	0x1
	.2byte	0x5d0
	.4byte	0x2f0d
	.4byte	.LLST99
	.uleb128 0x27
	.4byte	.LASF1879
	.byte	0x1
	.2byte	0x5d2
	.4byte	0x27e
	.uleb128 0x27
	.4byte	.LASF1861
	.byte	0x1
	.2byte	0x5d3
	.4byte	0x27e
	.uleb128 0x27
	.4byte	.LASF1880
	.byte	0x1
	.2byte	0x5d4
	.4byte	0x27e
	.uleb128 0x27
	.4byte	.LASF1881
	.byte	0x1
	.2byte	0x5d5
	.4byte	0x27e
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x298
	.4byte	0x489f
	.uleb128 0x3b
	.ascii	"li\000"
	.byte	0x1
	.2byte	0x5d9
	.4byte	0x344b
	.4byte	.LLST100
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB341
	.4byte	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.2byte	0x5ef
	.4byte	0x46a8
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST101
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST102
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB343
	.4byte	.LBE343-.LBB343
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST101
	.uleb128 0x35
	.4byte	.LBB344
	.4byte	.LBE344-.LBB344
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST101
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST105
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB346
	.4byte	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x46cb
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST106
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB349
	.4byte	.Ldebug_ranges0+0x2f8
	.byte	0x1
	.2byte	0x5f0
	.4byte	0x46ea
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x46
	.4byte	0x3a9e
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB355
	.4byte	.Ldebug_ranges0+0x320
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x470d
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST107
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB361
	.4byte	.Ldebug_ranges0+0x340
	.byte	0x1
	.2byte	0x5e1
	.4byte	0x4734
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST108
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST109
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB367
	.4byte	.Ldebug_ranges0+0x360
	.byte	0x1
	.2byte	0x5e5
	.4byte	0x47bf
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST110
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST111
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB369
	.4byte	.Ldebug_ranges0+0x380
	.byte	0x2
	.byte	0x54
	.4byte	0x478d
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST112
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x380
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST112
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	0x3a3d
	.4byte	.LBB373
	.4byte	.Ldebug_ranges0+0x3a0
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST111
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x3a0
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST111
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB382
	.4byte	.Ldebug_ranges0+0x3b8
	.byte	0x1
	.2byte	0x5e7
	.4byte	0x484a
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST117
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST118
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB384
	.4byte	.Ldebug_ranges0+0x3d8
	.byte	0x2
	.byte	0x54
	.4byte	0x4818
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST119
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x3d8
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST119
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	0x3a3d
	.4byte	.LBB388
	.4byte	.Ldebug_ranges0+0x3f8
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST118
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x3f8
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST118
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST123
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB398
	.4byte	.Ldebug_ranges0+0x410
	.byte	0x1
	.2byte	0x5f1
	.4byte	0x4871
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST106
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST125
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL212
	.4byte	0x6690
	.4byte	0x4885
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL229
	.4byte	0x66f9
	.uleb128 0x36
	.4byte	.LVL235
	.4byte	0x6715
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB409
	.4byte	.Ldebug_ranges0+0x430
	.byte	0x1
	.2byte	0x61a
	.4byte	0x48c6
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST126
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST127
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB416
	.4byte	.Ldebug_ranges0+0x460
	.byte	0x1
	.2byte	0x61b
	.4byte	0x4957
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST128
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST129
	.uleb128 0x30
	.4byte	0x3a3d
	.4byte	.LBB418
	.4byte	.Ldebug_ranges0+0x490
	.byte	0x2
	.byte	0x54
	.4byte	0x4921
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST129
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x490
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST129
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST132
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB422
	.4byte	.LBE422-.LBB422
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST128
	.uleb128 0x35
	.4byte	.LBB423
	.4byte	.LBE423-.LBB423
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST128
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST135
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB434
	.4byte	.Ldebug_ranges0+0x4a8
	.byte	0x1
	.2byte	0x620
	.4byte	0x49b3
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST136
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST137
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB436
	.4byte	.LBE436-.LBB436
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST137
	.uleb128 0x35
	.4byte	.LBB437
	.4byte	.LBE437-.LBB437
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST137
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a6b
	.4byte	.LBB439
	.4byte	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.2byte	0x628
	.4byte	0x4a0f
	.uleb128 0x31
	.4byte	0x3a84
	.4byte	.LLST141
	.uleb128 0x31
	.4byte	0x3a7b
	.4byte	.LLST142
	.uleb128 0x45
	.4byte	0x3a3d
	.4byte	.LBB441
	.4byte	.LBE441-.LBB441
	.byte	0x2
	.byte	0x54
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST141
	.uleb128 0x35
	.4byte	.LBB442
	.4byte	.LBE442-.LBB442
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST141
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST145
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB444
	.4byte	.Ldebug_ranges0+0x4d8
	.byte	0x1
	.2byte	0x62c
	.4byte	0x4a32
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST146
	.uleb128 0x46
	.4byte	0x3a9e
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB450
	.4byte	.Ldebug_ranges0+0x4f8
	.byte	0x1
	.2byte	0x62c
	.4byte	0x4a51
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x46
	.4byte	0x3a9e
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB454
	.4byte	.Ldebug_ranges0+0x518
	.byte	0x1
	.2byte	0x62a
	.4byte	0x4a78
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST147
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST148
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB458
	.4byte	.Ldebug_ranges0+0x538
	.byte	0x1
	.2byte	0x62b
	.4byte	0x4a97
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x46
	.4byte	0x3a9e
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL209
	.4byte	0x66f9
	.4byte	0x4aaf
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL210
	.4byte	0x6621
	.4byte	0x4ac3
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL249
	.4byte	0x672c
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1888
	.byte	0x1
	.2byte	0x8e8
	.byte	0x1
	.4byte	0x4af2
	.uleb128 0x25
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x8e8
	.4byte	0x344b
	.uleb128 0x27
	.4byte	.LASF1889
	.byte	0x1
	.2byte	0x8eb
	.4byte	0x2c
	.byte	0
	.uleb128 0x4e
	.4byte	0x3ab1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c1b
	.uleb128 0x31
	.4byte	0x3ac2
	.4byte	.LLST149
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x558
	.4byte	0x4c04
	.uleb128 0x31
	.4byte	0x3ac2
	.4byte	.LLST150
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB485
	.4byte	.Ldebug_ranges0+0x570
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x4b47
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST151
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST152
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB489
	.4byte	.Ldebug_ranges0+0x590
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x4b6e
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST153
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST154
	.byte	0
	.uleb128 0x41
	.4byte	0x4acd
	.4byte	.LBB497
	.4byte	.Ldebug_ranges0+0x5b0
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x4bb3
	.uleb128 0x31
	.4byte	0x4ada
	.4byte	.LLST155
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x5b0
	.uleb128 0x33
	.4byte	0x4ae5
	.4byte	.LLST156
	.uleb128 0x36
	.4byte	.LVL270
	.4byte	0x674d
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL256
	.4byte	0x3d66
	.4byte	0x4bc7
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL257
	.4byte	0x3d66
	.4byte	0x4bdb
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL264
	.4byte	0x6690
	.4byte	0x4bef
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL268
	.4byte	0x6768
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL254
	.4byte	0x666b
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	0x3ace
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cb5
	.uleb128 0x31
	.4byte	0x3adf
	.4byte	.LLST157
	.uleb128 0x33
	.4byte	0x3aea
	.4byte	.LLST158
	.uleb128 0x3e
	.4byte	.LBB513
	.4byte	.LBE513-.LBB513
	.4byte	0x4c76
	.uleb128 0x31
	.4byte	0x3adf
	.4byte	.LLST159
	.uleb128 0x35
	.4byte	.LBB514
	.4byte	.LBE514-.LBB514
	.uleb128 0x4f
	.4byte	0x3aea
	.uleb128 0x36
	.4byte	.LVL282
	.4byte	0x6792
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL275
	.4byte	0x6641
	.4byte	0x4c8a
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL277
	.4byte	0x67a8
	.4byte	0x4ca4
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL280
	.4byte	0x6690
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	0x3af7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d99
	.uleb128 0x31
	.4byte	0x3b08
	.4byte	.LLST160
	.uleb128 0x4f
	.4byte	0x3b14
	.uleb128 0x4f
	.4byte	0x3b1f
	.uleb128 0x4f
	.4byte	0x3b2a
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x5e8
	.uleb128 0x31
	.4byte	0x3b08
	.4byte	.LLST161
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x5e8
	.uleb128 0x4f
	.4byte	0x3b14
	.uleb128 0x4f
	.4byte	0x3b1f
	.uleb128 0x33
	.4byte	0x3b2a
	.4byte	.LLST162
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB523
	.4byte	.Ldebug_ranges0+0x600
	.byte	0x1
	.2byte	0x705
	.4byte	0x4d3c
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST163
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x600
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST163
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST165
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB527
	.4byte	.Ldebug_ranges0+0x620
	.byte	0x1
	.2byte	0x706
	.4byte	0x4d72
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST166
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x620
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST166
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST168
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL297
	.4byte	0x67c8
	.4byte	0x4d86
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL298
	.4byte	0x6621
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF1890
	.byte	0x1
	.byte	0x8c
	.4byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e08
	.uleb128 0x50
	.ascii	"mo\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x4e08
	.4byte	.LLST169
	.uleb128 0x51
	.4byte	.LASF1891
	.byte	0x1
	.byte	0x8c
	.4byte	0x3464
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2f
	.4byte	.LASF1498
	.byte	0x1
	.byte	0x8e
	.4byte	0x2c
	.4byte	.LLST170
	.uleb128 0x2f
	.4byte	.LASF1499
	.byte	0x1
	.byte	0x8f
	.4byte	0x2c
	.4byte	.LLST171
	.uleb128 0x52
	.ascii	"m\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x4e13
	.4byte	.LLST172
	.uleb128 0x52
	.ascii	"sec\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x4e1e
	.4byte	.LLST173
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e0e
	.uleb128 0x7
	.4byte	0x2e7f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e19
	.uleb128 0x7
	.4byte	0x3440
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e24
	.uleb128 0x7
	.4byte	0x33bb
	.uleb128 0x2d
	.4byte	.LASF1892
	.byte	0x1
	.byte	0xb5
	.4byte	0x2c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ed2
	.uleb128 0x50
	.ascii	"mo\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0x2f0d
	.4byte	.LLST174
	.uleb128 0x2e
	.4byte	.LASF1893
	.byte	0x1
	.byte	0xb5
	.4byte	0x3464
	.4byte	.LLST175
	.uleb128 0x2f
	.4byte	.LASF1499
	.byte	0x1
	.byte	0xb7
	.4byte	0x2c
	.4byte	.LLST176
	.uleb128 0x2f
	.4byte	.LASF1498
	.byte	0x1
	.byte	0xb7
	.4byte	0x2c
	.4byte	.LLST177
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x640
	.4byte	0x4e9f
	.uleb128 0x2f
	.4byte	.LASF1894
	.byte	0x1
	.byte	0xbc
	.4byte	0x2c
	.4byte	.LLST178
	.uleb128 0x4a
	.4byte	.LVL328
	.4byte	0x67e2
	.byte	0
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x658
	.4byte	0x4ec1
	.uleb128 0x2f
	.4byte	.LASF1894
	.byte	0x1
	.byte	0xec
	.4byte	0x2c
	.4byte	.LLST179
	.uleb128 0x4a
	.4byte	.LVL322
	.4byte	0x67e2
	.byte	0
	.uleb128 0x36
	.4byte	.LVL319
	.4byte	0x4d99
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1895
	.byte	0x1
	.2byte	0x100
	.4byte	0x1c0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ff4
	.uleb128 0x4b
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x100
	.4byte	0x2f0d
	.4byte	.LLST180
	.uleb128 0x39
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0x27e
	.4byte	.LLST181
	.uleb128 0x39
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0x27e
	.4byte	.LLST182
	.uleb128 0x4b
	.4byte	.LASF1896
	.byte	0x1
	.2byte	0x100
	.4byte	0x1c0
	.4byte	.LLST183
	.uleb128 0x3b
	.ascii	"xl\000"
	.byte	0x1
	.2byte	0x102
	.4byte	0x2c
	.4byte	.LLST184
	.uleb128 0x3b
	.ascii	"xh\000"
	.byte	0x1
	.2byte	0x103
	.4byte	0x2c
	.4byte	.LLST185
	.uleb128 0x3b
	.ascii	"yl\000"
	.byte	0x1
	.2byte	0x104
	.4byte	0x2c
	.4byte	.LLST186
	.uleb128 0x3b
	.ascii	"yh\000"
	.byte	0x1
	.2byte	0x105
	.4byte	0x2c
	.4byte	.LLST187
	.uleb128 0x3b
	.ascii	"bx\000"
	.byte	0x1
	.2byte	0x106
	.4byte	0x2c
	.4byte	.LLST188
	.uleb128 0x3b
	.ascii	"by\000"
	.byte	0x1
	.2byte	0x107
	.4byte	0x2c
	.4byte	.LLST189
	.uleb128 0x40
	.4byte	.LASF1897
	.byte	0x1
	.2byte	0x109
	.4byte	0x4ff4
	.4byte	.LLST190
	.uleb128 0x3a
	.4byte	.LVL339
	.4byte	0x67fc
	.4byte	0x4fac
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL347
	.4byte	0x6816
	.4byte	0x4fcf
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_StompThing
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL351
	.4byte	0x684a
	.4byte	0x4fe3
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL352
	.4byte	0x685b
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3458
	.uleb128 0x49
	.4byte	.LASF1898
	.byte	0x1
	.2byte	0x27f
	.4byte	0x1c0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b2
	.uleb128 0x4b
	.4byte	.LASF1899
	.byte	0x1
	.2byte	0x27f
	.4byte	0x2f0d
	.4byte	.LLST191
	.uleb128 0x39
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x27f
	.4byte	0x2c
	.4byte	.LLST192
	.uleb128 0x39
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x27f
	.4byte	0x2c
	.4byte	.LLST193
	.uleb128 0x3f
	.ascii	"bx\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3b
	.ascii	"by\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.4byte	.LLST194
	.uleb128 0x3b
	.ascii	"xl\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.4byte	.LLST195
	.uleb128 0x3f
	.ascii	"xh\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3f
	.ascii	"yl\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3f
	.ascii	"yh\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x36
	.4byte	.LVL366
	.4byte	0x686c
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_CrossLine
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1900
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x1c0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c1
	.uleb128 0x4b
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x2f0d
	.4byte	.LLST196
	.uleb128 0x39
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x27e
	.4byte	.LLST197
	.uleb128 0x39
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x27e
	.4byte	.LLST198
	.uleb128 0x3b
	.ascii	"xl\000"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x2c
	.4byte	.LLST199
	.uleb128 0x3b
	.ascii	"xh\000"
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x2c
	.4byte	.LLST200
	.uleb128 0x3b
	.ascii	"yl\000"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x2c
	.4byte	.LLST201
	.uleb128 0x3b
	.ascii	"yh\000"
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x2c
	.4byte	.LLST202
	.uleb128 0x3b
	.ascii	"bx\000"
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x2c
	.4byte	.LLST203
	.uleb128 0x3b
	.ascii	"by\000"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x2c
	.4byte	.LLST204
	.uleb128 0x40
	.4byte	.LASF1897
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x4ff4
	.4byte	.LLST205
	.uleb128 0x3a
	.4byte	.LVL373
	.4byte	0x67fc
	.4byte	0x517e
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL383
	.4byte	0x6816
	.4byte	0x51a1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_CheckThing
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL395
	.4byte	0x686c
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_CheckLine
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	0x3b37
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5350
	.uleb128 0x31
	.4byte	0x3b48
	.4byte	.LLST206
	.uleb128 0x31
	.4byte	0x3b54
	.4byte	.LLST207
	.uleb128 0x31
	.4byte	0x3b5e
	.4byte	.LLST208
	.uleb128 0x31
	.4byte	0x3b68
	.4byte	.LLST209
	.uleb128 0x4f
	.4byte	0x3b74
	.uleb128 0x4f
	.4byte	0x3b80
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x678
	.4byte	0x5333
	.uleb128 0x31
	.4byte	0x3b68
	.4byte	.LLST210
	.uleb128 0x31
	.4byte	0x3b5e
	.4byte	.LLST211
	.uleb128 0x31
	.4byte	0x3b54
	.4byte	.LLST212
	.uleb128 0x31
	.4byte	0x3b48
	.4byte	.LLST213
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x678
	.uleb128 0x33
	.4byte	0x3b74
	.4byte	.LLST214
	.uleb128 0x33
	.4byte	0x3b80
	.4byte	.LLST215
	.uleb128 0x3e
	.4byte	.LBB551
	.4byte	.LBE551-.LBB551
	.4byte	0x52ad
	.uleb128 0x33
	.4byte	0x3b8d
	.4byte	.LLST216
	.uleb128 0x3a
	.4byte	.LVL415
	.4byte	0x6641
	.4byte	0x527c
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL418
	.4byte	0x6641
	.4byte	0x5290
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL419
	.4byte	0x68a0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB552
	.4byte	.Ldebug_ranges0+0x698
	.byte	0x1
	.2byte	0x34f
	.4byte	0x52d4
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST217
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST217
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB556
	.4byte	.Ldebug_ranges0+0x6b8
	.byte	0x1
	.2byte	0x34f
	.4byte	0x52fb
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST219
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST219
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL404
	.4byte	0x3d66
	.uleb128 0x4a
	.4byte	.LVL405
	.4byte	0x3d66
	.uleb128 0x3a
	.4byte	.LVL408
	.4byte	0x684a
	.4byte	0x5321
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL411
	.4byte	0x685b
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL402
	.4byte	0x50b2
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1903
	.byte	0x1
	.2byte	0x3ca
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53f5
	.uleb128 0x39
	.ascii	"mo\000"
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x2f0d
	.4byte	.LLST221
	.uleb128 0x3b
	.ascii	"xl\000"
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x2c
	.4byte	.LLST222
	.uleb128 0x3f
	.ascii	"xh\000"
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3f
	.ascii	"yl\000"
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3f
	.ascii	"yh\000"
	.byte	0x1
	.2byte	0x3d2
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3f
	.ascii	"bx\000"
	.byte	0x1
	.2byte	0x3d4
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.ascii	"by\000"
	.byte	0x1
	.2byte	0x3d4
	.4byte	0x2c
	.4byte	.LLST223
	.uleb128 0x3c
	.4byte	.LASF1454
	.byte	0x1
	.2byte	0x3d4
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x36
	.4byte	.LVL435
	.4byte	0x686c
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_ApplyTorque
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1901
	.byte	0x1
	.2byte	0x3fd
	.4byte	0x1c0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5446
	.uleb128 0x4b
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x3fd
	.4byte	0x2f0d
	.4byte	.LLST224
	.uleb128 0x3c
	.4byte	.LASF1902
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x1c0
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x36
	.4byte	.LVL440
	.4byte	0x50b2
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	0x3b9b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x556f
	.uleb128 0x31
	.4byte	0x3bac
	.4byte	.LLST225
	.uleb128 0x4f
	.4byte	0x3bb8
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x6d8
	.4byte	0x555e
	.uleb128 0x31
	.4byte	0x3bac
	.4byte	.LLST226
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x6d8
	.uleb128 0x33
	.4byte	0x3bb8
	.4byte	.LLST227
	.uleb128 0x3e
	.4byte	.LBB573
	.4byte	.LBE573-.LBB573
	.4byte	0x5513
	.uleb128 0x33
	.4byte	0x3bc4
	.4byte	.LLST228
	.uleb128 0x3a
	.4byte	.LVL444
	.4byte	0x6621
	.4byte	0x54b6
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL445
	.4byte	0x68bc
	.4byte	0x54ca
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL448
	.4byte	0x66a1
	.4byte	0x54dd
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL451
	.4byte	0x66a1
	.4byte	0x54f0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL453
	.4byte	0x66a1
	.4byte	0x5503
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x36
	.4byte	.LVL456
	.4byte	0x66a1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL460
	.4byte	0x68e1
	.4byte	0x5527
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL461
	.4byte	0x6621
	.4byte	0x5545
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL462
	.4byte	0x66b6
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x37f
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL442
	.4byte	0x53f5
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1904
	.byte	0x1
	.2byte	0x439
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5853
	.uleb128 0x39
	.ascii	"ld\000"
	.byte	0x1
	.2byte	0x439
	.4byte	0x344b
	.4byte	.LLST229
	.uleb128 0x40
	.4byte	.LASF1858
	.byte	0x1
	.2byte	0x43b
	.4byte	0x2c
	.4byte	.LLST230
	.uleb128 0x40
	.4byte	.LASF1905
	.byte	0x1
	.2byte	0x43c
	.4byte	0x289
	.4byte	.LLST231
	.uleb128 0x40
	.4byte	.LASF1906
	.byte	0x1
	.2byte	0x43d
	.4byte	0x289
	.4byte	.LLST232
	.uleb128 0x40
	.4byte	.LASF1907
	.byte	0x1
	.2byte	0x43e
	.4byte	0x289
	.4byte	.LLST233
	.uleb128 0x40
	.4byte	.LASF1908
	.byte	0x1
	.2byte	0x43f
	.4byte	0x27e
	.4byte	.LLST234
	.uleb128 0x27
	.4byte	.LASF1909
	.byte	0x1
	.2byte	0x440
	.4byte	0x27e
	.uleb128 0x40
	.4byte	.LASF1910
	.byte	0x1
	.2byte	0x441
	.4byte	0x1c0
	.4byte	.LLST235
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB578
	.4byte	.Ldebug_ranges0+0x6f8
	.byte	0x1
	.2byte	0x49f
	.4byte	0x5627
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST236
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST237
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB584
	.4byte	.Ldebug_ranges0+0x718
	.byte	0x1
	.2byte	0x4a0
	.4byte	0x564e
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST238
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST239
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB589
	.4byte	.Ldebug_ranges0+0x740
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x5675
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST240
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST239
	.byte	0
	.uleb128 0x3e
	.4byte	.LBB600
	.4byte	.LBE600-.LBB600
	.4byte	0x568f
	.uleb128 0x54
	.4byte	.LASF1963
	.byte	0x1
	.2byte	0x458
	.4byte	0x1c0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB601
	.4byte	.Ldebug_ranges0+0x768
	.byte	0x1
	.2byte	0x46f
	.4byte	0x56c5
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST242
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x768
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST242
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST244
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB605
	.4byte	.Ldebug_ranges0+0x788
	.byte	0x1
	.2byte	0x46f
	.4byte	0x56fb
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST245
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x788
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST245
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST247
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB611
	.4byte	.Ldebug_ranges0+0x7a0
	.byte	0x1
	.2byte	0x462
	.4byte	0x5731
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST248
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x7a0
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST248
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST250
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB615
	.4byte	.Ldebug_ranges0+0x7c0
	.byte	0x1
	.2byte	0x462
	.4byte	0x5767
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST251
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x7c0
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST251
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST253
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB621
	.4byte	.Ldebug_ranges0+0x7d8
	.byte	0x1
	.2byte	0x493
	.4byte	0x578c
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST254
	.uleb128 0x55
	.4byte	0x3a9e
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB626
	.4byte	.Ldebug_ranges0+0x800
	.byte	0x1
	.2byte	0x494
	.4byte	0x57b1
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST255
	.uleb128 0x55
	.4byte	0x3a9e
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL465
	.4byte	0x67e2
	.uleb128 0x3a
	.4byte	.LVL468
	.4byte	0x6641
	.4byte	0x57ce
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL471
	.4byte	0x68f3
	.4byte	0x57e6
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL474
	.4byte	0x68f3
	.4byte	0x57fe
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL478
	.4byte	0x67e2
	.uleb128 0x3a
	.4byte	.LVL491
	.4byte	0x4d99
	.4byte	0x581a
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x56
	.4byte	.LVL500
	.4byte	0x6792
	.4byte	0x582e
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x56
	.4byte	.LVL508
	.4byte	0x6792
	.4byte	0x5842
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x36
	.4byte	.LVL513
	.4byte	0x6792
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1911
	.byte	0x1
	.2byte	0x4e6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b42
	.uleb128 0x39
	.ascii	"mo\000"
	.byte	0x1
	.2byte	0x4e6
	.4byte	0x2f0d
	.4byte	.LLST256
	.uleb128 0x40
	.4byte	.LASF1912
	.byte	0x1
	.2byte	0x4e8
	.4byte	0x2c
	.4byte	.LLST257
	.uleb128 0x4c
	.4byte	.LASF1914
	.byte	0x1
	.2byte	0x50e
	.4byte	.LDL2
	.uleb128 0x4d
	.4byte	.Ldebug_ranges0+0x828
	.4byte	0x5b2b
	.uleb128 0x40
	.4byte	.LASF1915
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x27e
	.4byte	.LLST258
	.uleb128 0x40
	.4byte	.LASF1916
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x27e
	.4byte	.LLST259
	.uleb128 0x40
	.4byte	.LASF1917
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x27e
	.4byte	.LLST260
	.uleb128 0x40
	.4byte	.LASF1918
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x27e
	.4byte	.LLST261
	.uleb128 0x3e
	.4byte	.LBB638
	.4byte	.LBE638-.LBB638
	.4byte	0x5967
	.uleb128 0x27
	.4byte	.LASF1919
	.byte	0x1
	.2byte	0x527
	.4byte	0x27e
	.uleb128 0x27
	.4byte	.LASF1920
	.byte	0x1
	.2byte	0x528
	.4byte	0x27e
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB639
	.4byte	.Ldebug_ranges0+0x860
	.byte	0x1
	.2byte	0x527
	.4byte	0x5929
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST262
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST263
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB643
	.4byte	.Ldebug_ranges0+0x880
	.byte	0x1
	.2byte	0x528
	.4byte	0x5950
	.uleb128 0x31
	.4byte	0x3aa7
	.4byte	.LLST264
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST265
	.byte	0
	.uleb128 0x36
	.4byte	.LVL536
	.4byte	0x3b37
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB651
	.4byte	.Ldebug_ranges0+0x8a0
	.byte	0x1
	.2byte	0x53c
	.4byte	0x598a
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST266
	.byte	0
	.uleb128 0x41
	.4byte	0x3a8e
	.4byte	.LBB660
	.4byte	.Ldebug_ranges0+0x8e8
	.byte	0x1
	.2byte	0x53b
	.4byte	0x59ad
	.uleb128 0x46
	.4byte	0x3aa7
	.uleb128 0x31
	.4byte	0x3a9e
	.4byte	.LLST267
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB683
	.4byte	.Ldebug_ranges0+0x930
	.byte	0x1
	.2byte	0x547
	.4byte	0x59dd
	.uleb128 0x55
	.4byte	0x3a4d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x930
	.uleb128 0x42
	.4byte	0x3a56
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB687
	.4byte	.Ldebug_ranges0+0x950
	.byte	0x1
	.2byte	0x547
	.4byte	0x5a13
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST268
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x950
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST268
	.uleb128 0x33
	.4byte	0x3a60
	.4byte	.LLST270
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB693
	.4byte	.Ldebug_ranges0+0x968
	.byte	0x1
	.2byte	0x549
	.4byte	0x5a43
	.uleb128 0x55
	.4byte	0x3a4d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x968
	.uleb128 0x42
	.4byte	0x3a56
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3a3d
	.4byte	.LBB697
	.4byte	.Ldebug_ranges0+0x988
	.byte	0x1
	.2byte	0x549
	.4byte	0x5a77
	.uleb128 0x31
	.4byte	0x3a4d
	.4byte	.LLST271
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x988
	.uleb128 0x33
	.4byte	0x3a56
	.4byte	.LLST271
	.uleb128 0x42
	.4byte	0x3a60
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL528
	.4byte	0x6917
	.4byte	0x5aa0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL529
	.4byte	0x6917
	.4byte	0x5ac9
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL530
	.4byte	0x6917
	.4byte	0x5af1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL541
	.4byte	0x556f
	.uleb128 0x3a
	.4byte	.LVL545
	.4byte	0x3b37
	.4byte	0x5b14
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL551
	.4byte	0x3b37
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL542
	.4byte	0x3b37
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1921
	.byte	0x1
	.2byte	0x640
	.4byte	0x27e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5bc2
	.uleb128 0x39
	.ascii	"t1\000"
	.byte	0x1
	.2byte	0x640
	.4byte	0x2f0d
	.4byte	.LLST273
	.uleb128 0x4b
	.4byte	.LASF1462
	.byte	0x1
	.2byte	0x640
	.4byte	0x289
	.4byte	.LLST274
	.uleb128 0x4b
	.4byte	.LASF1922
	.byte	0x1
	.2byte	0x640
	.4byte	0x27e
	.4byte	.LLST275
	.uleb128 0x57
	.4byte	.LASF1923
	.byte	0x1
	.2byte	0x640
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x642
	.4byte	0x27e
	.4byte	.LLST276
	.uleb128 0x3b
	.ascii	"y2\000"
	.byte	0x1
	.2byte	0x643
	.4byte	0x27e
	.4byte	.LLST277
	.uleb128 0x4a
	.4byte	.LVL570
	.4byte	0x6917
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1924
	.byte	0x1
	.2byte	0x666
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c4e
	.uleb128 0x39
	.ascii	"t1\000"
	.byte	0x1
	.2byte	0x667
	.4byte	0x2f0d
	.4byte	.LLST278
	.uleb128 0x4b
	.4byte	.LASF1462
	.byte	0x1
	.2byte	0x668
	.4byte	0x289
	.4byte	.LLST279
	.uleb128 0x4b
	.4byte	.LASF1922
	.byte	0x1
	.2byte	0x669
	.4byte	0x27e
	.4byte	.LLST280
	.uleb128 0x4b
	.4byte	.LASF1879
	.byte	0x1
	.2byte	0x66a
	.4byte	0x27e
	.4byte	.LLST281
	.uleb128 0x57
	.4byte	.LASF1452
	.byte	0x1
	.2byte	0x66b
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x66d
	.4byte	0x27e
	.4byte	.LLST282
	.uleb128 0x3b
	.ascii	"y2\000"
	.byte	0x1
	.2byte	0x66e
	.4byte	0x27e
	.4byte	.LLST283
	.uleb128 0x4a
	.4byte	.LVL580
	.4byte	0x6917
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1925
	.byte	0x1
	.2byte	0x6c2
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d3f
	.uleb128 0x4b
	.4byte	.LASF1493
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x5d3f
	.4byte	.LLST284
	.uleb128 0x40
	.4byte	.LASF1462
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x2c
	.4byte	.LLST285
	.uleb128 0x3b
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x27e
	.4byte	.LLST286
	.uleb128 0x3b
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0x6c6
	.4byte	0x27e
	.4byte	.LLST287
	.uleb128 0x3b
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x6c7
	.4byte	0x27e
	.4byte	.LLST288
	.uleb128 0x3b
	.ascii	"y2\000"
	.byte	0x1
	.2byte	0x6c8
	.4byte	0x27e
	.4byte	.LLST289
	.uleb128 0x3a
	.4byte	.LVL590
	.4byte	0x6917
	.4byte	0x5cf7
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	PTR_UseTraverse
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL592
	.4byte	0x6917
	.4byte	0x5d2e
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	PTR_NoWayTraverse
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x58
	.4byte	.LVL594
	.4byte	0x6792
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f63
	.uleb128 0x53
	.4byte	.LASF1926
	.byte	0x1
	.2byte	0x71f
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e0b
	.uleb128 0x4b
	.4byte	.LASF1927
	.byte	0x1
	.2byte	0x71f
	.4byte	0x2f0d
	.4byte	.LLST290
	.uleb128 0x4b
	.4byte	.LASF1928
	.byte	0x1
	.2byte	0x71f
	.4byte	0x2f0d
	.4byte	.LLST291
	.uleb128 0x4b
	.4byte	.LASF1452
	.byte	0x1
	.2byte	0x71f
	.4byte	0x2c
	.4byte	.LLST292
	.uleb128 0x3b
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x721
	.4byte	0x2c
	.4byte	.LLST293
	.uleb128 0x3f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x722
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3f
	.ascii	"xl\000"
	.byte	0x1
	.2byte	0x724
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3f
	.ascii	"xh\000"
	.byte	0x1
	.2byte	0x725
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3b
	.ascii	"yl\000"
	.byte	0x1
	.2byte	0x726
	.4byte	0x2c
	.4byte	.LLST294
	.uleb128 0x3f
	.ascii	"yh\000"
	.byte	0x1
	.2byte	0x727
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x40
	.4byte	.LASF1861
	.byte	0x1
	.2byte	0x729
	.4byte	0x27e
	.4byte	.LLST295
	.uleb128 0x36
	.4byte	.LVL604
	.4byte	0x6816
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_RadiusAttack
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1929
	.byte	0x1
	.2byte	0x794
	.4byte	0x1c0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e7f
	.uleb128 0x4b
	.4byte	.LASF1505
	.byte	0x1
	.2byte	0x794
	.4byte	0x342f
	.4byte	.LLST296
	.uleb128 0x4b
	.4byte	.LASF1930
	.byte	0x1
	.2byte	0x794
	.4byte	0x1c0
	.4byte	.LLST297
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x796
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x797
	.4byte	0x2c
	.4byte	.LLST298
	.uleb128 0x36
	.4byte	.LVL612
	.4byte	0x6816
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_ChangeSector
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1931
	.byte	0x1
	.2byte	0x7b0
	.4byte	0x1c0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5eda
	.uleb128 0x4b
	.4byte	.LASF1505
	.byte	0x1
	.2byte	0x7b0
	.4byte	0x342f
	.4byte	.LLST299
	.uleb128 0x4b
	.4byte	.LASF1930
	.byte	0x1
	.2byte	0x7b0
	.4byte	0x1c0
	.4byte	.LLST300
	.uleb128 0x3b
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x7b2
	.4byte	0x3bdd
	.4byte	.LLST301
	.uleb128 0x4a
	.4byte	.LVL628
	.4byte	0x3b9b
	.uleb128 0x59
	.4byte	.LVL630
	.4byte	0x5e0b
	.byte	0
	.uleb128 0x4e
	.4byte	0x3be3
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f79
	.uleb128 0x31
	.4byte	0x3bf4
	.4byte	.LLST302
	.uleb128 0x31
	.4byte	0x3bfe
	.4byte	.LLST303
	.uleb128 0x31
	.4byte	0x3c0a
	.4byte	.LLST304
	.uleb128 0x33
	.4byte	0x3c16
	.4byte	.LLST305
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x9a0
	.uleb128 0x31
	.4byte	0x3c0a
	.4byte	.LLST306
	.uleb128 0x31
	.4byte	0x3bfe
	.4byte	.LLST307
	.uleb128 0x31
	.4byte	0x3bf4
	.4byte	.LLST308
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x9a0
	.uleb128 0x4f
	.4byte	0x3c16
	.uleb128 0x47
	.4byte	0x3bd0
	.4byte	.LBB714
	.4byte	.Ldebug_ranges0+0x9b8
	.byte	0x1
	.2byte	0x802
	.uleb128 0x3a
	.4byte	.LVL638
	.4byte	0x6945
	.4byte	0x5f62
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.uleb128 0x36
	.4byte	.LVL644
	.4byte	0x6945
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	0x3c23
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fd6
	.uleb128 0x31
	.4byte	0x3c34
	.4byte	.LLST309
	.uleb128 0x3e
	.4byte	.LBB722
	.4byte	.LBE722-.LBB722
	.4byte	0x5fbc
	.uleb128 0x55
	.4byte	0x3c34
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4a
	.4byte	.LVL650
	.4byte	0x3be3
	.uleb128 0x4a
	.4byte	.LVL651
	.4byte	0x3be3
	.byte	0
	.uleb128 0x36
	.4byte	.LVL647
	.4byte	0x666b
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	tmbbox
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF1932
	.byte	0x1
	.2byte	0x81d
	.4byte	0x3bdd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x606f
	.uleb128 0x4b
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0x81d
	.4byte	0x3bdd
	.4byte	.LLST310
	.uleb128 0x3b
	.ascii	"tp\000"
	.byte	0x1
	.2byte	0x81f
	.4byte	0x3bdd
	.4byte	.LLST311
	.uleb128 0x3f
	.ascii	"tn\000"
	.byte	0x1
	.2byte	0x820
	.4byte	0x3bdd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3b
	.ascii	"sp\000"
	.byte	0x1
	.2byte	0x821
	.4byte	0x3bdd
	.4byte	.LLST312
	.uleb128 0x3b
	.ascii	"sn\000"
	.byte	0x1
	.2byte	0x822
	.4byte	0x3bdd
	.4byte	.LLST313
	.uleb128 0x5a
	.4byte	0x3c40
	.4byte	.LBB724
	.4byte	.LBE724-.LBB724
	.byte	0x1
	.2byte	0x83f
	.uleb128 0x31
	.4byte	0x3c4d
	.4byte	.LLST314
	.uleb128 0x36
	.4byte	.LVL659
	.4byte	0x6960
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1933
	.byte	0x1
	.2byte	0x847
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x609f
	.uleb128 0x4b
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0x847
	.4byte	0x3bdd
	.4byte	.LLST315
	.uleb128 0x4a
	.4byte	.LVL661
	.4byte	0x5fd6
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1934
	.byte	0x1
	.2byte	0x880
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61bc
	.uleb128 0x4b
	.4byte	.LASF1653
	.byte	0x1
	.2byte	0x880
	.4byte	0x2f0d
	.4byte	.LLST316
	.uleb128 0x39
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x880
	.4byte	0x27e
	.4byte	.LLST317
	.uleb128 0x39
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x880
	.4byte	0x27e
	.4byte	.LLST318
	.uleb128 0x3b
	.ascii	"xl\000"
	.byte	0x1
	.2byte	0x882
	.4byte	0x2c
	.4byte	.LLST319
	.uleb128 0x3b
	.ascii	"xh\000"
	.byte	0x1
	.2byte	0x883
	.4byte	0x2c
	.4byte	.LLST320
	.uleb128 0x3b
	.ascii	"yl\000"
	.byte	0x1
	.2byte	0x884
	.4byte	0x2c
	.4byte	.LLST321
	.uleb128 0x3b
	.ascii	"yh\000"
	.byte	0x1
	.2byte	0x885
	.4byte	0x2c
	.4byte	.LLST322
	.uleb128 0x3b
	.ascii	"bx\000"
	.byte	0x1
	.2byte	0x886
	.4byte	0x2c
	.4byte	.LLST323
	.uleb128 0x3b
	.ascii	"by\000"
	.byte	0x1
	.2byte	0x887
	.4byte	0x2c
	.4byte	.LLST324
	.uleb128 0x40
	.4byte	.LASF1870
	.byte	0x1
	.2byte	0x888
	.4byte	0x3bdd
	.4byte	.LLST325
	.uleb128 0x40
	.4byte	.LASF1935
	.byte	0x1
	.2byte	0x889
	.4byte	0x2f0d
	.4byte	.LLST326
	.uleb128 0x40
	.4byte	.LASF1936
	.byte	0x1
	.2byte	0x88a
	.4byte	0x27e
	.4byte	.LLST327
	.uleb128 0x40
	.4byte	.LASF1937
	.byte	0x1
	.2byte	0x88a
	.4byte	0x27e
	.4byte	.LLST328
	.uleb128 0x3a
	.4byte	.LVL682
	.4byte	0x686c
	.4byte	0x619e
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	PIT_GetSectors
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -1
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL685
	.4byte	0x3be3
	.4byte	0x61b2
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL690
	.4byte	0x5fd6
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1938
	.byte	0x1
	.2byte	0x8dc
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61e6
	.uleb128 0x58
	.4byte	.LVL695
	.4byte	0x66e7
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF2031
	.byte	0x1
	.2byte	0x8df
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5c
	.4byte	.LASF1939
	.byte	0x7
	.byte	0x50
	.4byte	0x6203
	.uleb128 0x7
	.4byte	0x6208
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x5d
	.4byte	.LASF1940
	.byte	0x1
	.byte	0x31
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	tmthing
	.uleb128 0x5e
	.ascii	"tmx\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmx
	.uleb128 0x5e
	.ascii	"tmy\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmy
	.uleb128 0x5d
	.4byte	.LASF1941
	.byte	0x1
	.byte	0x34
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	pe_x
	.uleb128 0x5d
	.4byte	.LASF1942
	.byte	0x1
	.byte	0x35
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	pe_y
	.uleb128 0x5d
	.4byte	.LASF1943
	.byte	0x1
	.byte	0x36
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	ls_x
	.uleb128 0x5d
	.4byte	.LASF1944
	.byte	0x1
	.byte	0x37
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	ls_y
	.uleb128 0x5d
	.4byte	.LASF1945
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	tmunstuck
	.uleb128 0x5d
	.4byte	.LASF1946
	.byte	0x1
	.byte	0x56
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	spechit_max
	.uleb128 0x5d
	.4byte	.LASF1947
	.byte	0x1
	.byte	0x65
	.4byte	0x1c0
	.uleb128 0x5
	.byte	0x3
	.4byte	telefrag
	.uleb128 0x3c
	.4byte	.LASF1948
	.byte	0x1
	.2byte	0x42b
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	bestslidefrac
	.uleb128 0x3c
	.4byte	.LASF1949
	.byte	0x1
	.2byte	0x42c
	.4byte	0x344b
	.uleb128 0x5
	.byte	0x3
	.4byte	bestslideline
	.uleb128 0x3c
	.4byte	.LASF1950
	.byte	0x1
	.2byte	0x42d
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	slidemo
	.uleb128 0x3c
	.4byte	.LASF1951
	.byte	0x1
	.2byte	0x42e
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmxmove
	.uleb128 0x3c
	.4byte	.LASF1952
	.byte	0x1
	.2byte	0x42f
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmymove
	.uleb128 0x3c
	.4byte	.LASF1953
	.byte	0x1
	.2byte	0x554
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	shootthing
	.uleb128 0x3c
	.4byte	.LASF1954
	.byte	0x1
	.2byte	0x557
	.4byte	0x1e1
	.uleb128 0x5
	.byte	0x3
	.4byte	aim_flags_mask
	.uleb128 0x3c
	.4byte	.LASF1955
	.byte	0x1
	.2byte	0x55f
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	aimslope
	.uleb128 0x3c
	.4byte	.LASF1956
	.byte	0x1
	.2byte	0x564
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	topslope
	.uleb128 0x3c
	.4byte	.LASF1957
	.byte	0x1
	.2byte	0x565
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	bottomslope
	.uleb128 0x3c
	.4byte	.LASF1958
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	bombsource
	.uleb128 0x3c
	.4byte	.LASF1959
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	bombspot
	.uleb128 0x3c
	.4byte	.LASF1960
	.byte	0x1
	.2byte	0x6e4
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	bombdamage
	.uleb128 0x3c
	.4byte	.LASF1961
	.byte	0x1
	.2byte	0x749
	.4byte	0x1c0
	.uleb128 0x5
	.byte	0x3
	.4byte	crushchange
	.uleb128 0x3c
	.4byte	.LASF1962
	.byte	0x1
	.2byte	0x749
	.4byte	0x1c0
	.uleb128 0x5
	.byte	0x3
	.4byte	nofit
	.uleb128 0x14
	.4byte	0x27e
	.4byte	0x63d7
	.uleb128 0x5f
	.4byte	0x78
	.2byte	0x27ff
	.byte	0
	.uleb128 0x60
	.4byte	.LASF1964
	.byte	0x7
	.byte	0x4d
	.4byte	0x63c6
	.uleb128 0x14
	.4byte	0x289
	.4byte	0x63f3
	.uleb128 0x5f
	.4byte	0x78
	.2byte	0x800
	.byte	0
	.uleb128 0x60
	.4byte	.LASF1965
	.byte	0x7
	.byte	0x58
	.4byte	0x63e2
	.uleb128 0x60
	.4byte	.LASF1966
	.byte	0x10
	.byte	0x45
	.4byte	0x273
	.uleb128 0x14
	.4byte	0x2c
	.4byte	0x6419
	.uleb128 0x15
	.4byte	0x78
	.byte	0x1f
	.byte	0
	.uleb128 0x60
	.4byte	.LASF1967
	.byte	0x10
	.byte	0x75
	.4byte	0x6409
	.uleb128 0x60
	.4byte	.LASF1968
	.byte	0x10
	.byte	0x89
	.4byte	0x2c
	.uleb128 0x60
	.4byte	.LASF1969
	.byte	0x10
	.byte	0xd0
	.4byte	0x2c
	.uleb128 0x54
	.4byte	.LASF1970
	.byte	0x10
	.2byte	0x118
	.4byte	0x2c
	.uleb128 0x54
	.4byte	.LASF1971
	.byte	0x10
	.2byte	0x127
	.4byte	0x2c
	.uleb128 0x54
	.4byte	.LASF1972
	.byte	0x10
	.2byte	0x14e
	.4byte	0x2c
	.uleb128 0x60
	.4byte	.LASF1973
	.byte	0x17
	.byte	0x51
	.4byte	0x342f
	.uleb128 0x60
	.4byte	.LASF1614
	.byte	0x17
	.byte	0x5a
	.4byte	0x344b
	.uleb128 0x60
	.4byte	.LASF1482
	.byte	0x18
	.byte	0x3e
	.4byte	0x2c
	.uleb128 0x60
	.4byte	.LASF1974
	.byte	0x11
	.byte	0x53
	.4byte	0x27e
	.uleb128 0x60
	.4byte	.LASF1975
	.byte	0x11
	.byte	0x54
	.4byte	0x27e
	.uleb128 0x60
	.4byte	.LASF1976
	.byte	0x11
	.byte	0x55
	.4byte	0x27e
	.uleb128 0x60
	.4byte	.LASF1977
	.byte	0x11
	.byte	0x56
	.4byte	0x27e
	.uleb128 0x60
	.4byte	.LASF1978
	.byte	0x11
	.byte	0x57
	.4byte	0x349d
	.uleb128 0x61
	.4byte	.LASF1979
	.byte	0x1
	.byte	0x3c
	.4byte	0x1c0
	.uleb128 0x5
	.byte	0x3
	.4byte	floatok
	.uleb128 0x61
	.4byte	.LASF1980
	.byte	0x1
	.byte	0x3f
	.4byte	0x1c0
	.uleb128 0x5
	.byte	0x3
	.4byte	felldown
	.uleb128 0x61
	.4byte	.LASF1981
	.byte	0x1
	.byte	0x45
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmfloorz
	.uleb128 0x61
	.4byte	.LASF1982
	.byte	0x1
	.byte	0x46
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmceilingz
	.uleb128 0x61
	.4byte	.LASF1983
	.byte	0x1
	.byte	0x4c
	.4byte	0x344b
	.uleb128 0x5
	.byte	0x3
	.4byte	ceilingline
	.uleb128 0x61
	.4byte	.LASF1984
	.byte	0x1
	.byte	0x4e
	.4byte	0x344b
	.uleb128 0x5
	.byte	0x3
	.4byte	floorline
	.uleb128 0x62
	.4byte	.LASF1985
	.byte	0x1
	.2byte	0x553
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	linetarget
	.uleb128 0x61
	.4byte	.LASF1986
	.byte	0x1
	.byte	0x5b
	.4byte	0x3bdd
	.uleb128 0x5
	.byte	0x3
	.4byte	sector_list
	.uleb128 0x61
	.4byte	.LASF1875
	.byte	0x1
	.byte	0x44
	.4byte	0x341f
	.uleb128 0x5
	.byte	0x3
	.4byte	tmbbox
	.uleb128 0x61
	.4byte	.LASF1987
	.byte	0x1
	.byte	0x4d
	.4byte	0x344b
	.uleb128 0x5
	.byte	0x3
	.4byte	blockline
	.uleb128 0x60
	.4byte	.LASF1988
	.byte	0x19
	.byte	0x35
	.4byte	0x27e
	.uleb128 0x60
	.4byte	.LASF1989
	.byte	0x19
	.byte	0x36
	.4byte	0x27e
	.uleb128 0x60
	.4byte	.LASF1990
	.byte	0x1a
	.byte	0x48
	.4byte	0x2c
	.uleb128 0x61
	.4byte	.LASF1991
	.byte	0x1
	.byte	0x47
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	tmdropoffz
	.uleb128 0x61
	.4byte	.LASF1992
	.byte	0x1
	.byte	0x55
	.4byte	0x65a4
	.uleb128 0x5
	.byte	0x3
	.4byte	spechit
	.uleb128 0x6
	.byte	0x4
	.4byte	0x344b
	.uleb128 0x61
	.4byte	.LASF1993
	.byte	0x1
	.byte	0x58
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	numspechit
	.uleb128 0x54
	.4byte	.LASF1963
	.byte	0x1
	.2byte	0x458
	.4byte	0x1c0
	.uleb128 0x62
	.4byte	.LASF1994
	.byte	0x1
	.2byte	0x55a
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	shootz
	.uleb128 0x62
	.4byte	.LASF1995
	.byte	0x1
	.2byte	0x55c
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	la_damage
	.uleb128 0x62
	.4byte	.LASF1996
	.byte	0x1
	.2byte	0x55d
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	attackrange
	.uleb128 0x62
	.4byte	.LASF1997
	.byte	0x1
	.2byte	0x681
	.4byte	0x2f0d
	.uleb128 0x5
	.byte	0x3
	.4byte	usething
	.uleb128 0x62
	.4byte	.LASF1998
	.byte	0x1
	.2byte	0x7db
	.4byte	0x39f4
	.uleb128 0x5
	.byte	0x3
	.4byte	secnodezone
	.uleb128 0x63
	.4byte	.LASF2001
	.byte	0x1a
	.byte	0x34
	.4byte	0x6641
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x2c
	.byte	0
	.uleb128 0x64
	.4byte	.LASF1999
	.byte	0x11
	.byte	0x45
	.4byte	0x2c
	.4byte	0x6660
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x6660
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6666
	.uleb128 0x7
	.4byte	0x3435
	.uleb128 0x64
	.4byte	.LASF2000
	.byte	0x11
	.byte	0x46
	.4byte	0x2c
	.4byte	0x6685
	.uleb128 0x20
	.4byte	0x6685
	.uleb128 0x20
	.4byte	0x6660
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x668b
	.uleb128 0x7
	.4byte	0x27e
	.uleb128 0x63
	.4byte	.LASF2002
	.byte	0x11
	.byte	0x4b
	.4byte	0x66a1
	.uleb128 0x20
	.4byte	0x6660
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2003
	.byte	0x13
	.byte	0x8e
	.4byte	0x2c
	.4byte	0x66b6
	.uleb128 0x20
	.4byte	0x3989
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2004
	.byte	0xc
	.2byte	0x187
	.4byte	0x1c0
	.4byte	0x66d1
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x22f0
	.byte	0
	.uleb128 0x63
	.4byte	.LASF2005
	.byte	0x1a
	.byte	0x33
	.4byte	0x66e7
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x63
	.4byte	.LASF2006
	.byte	0x15
	.byte	0x3d
	.4byte	0x66f9
	.uleb128 0x20
	.4byte	0x86
	.uleb128 0xb
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2007
	.byte	0xc
	.2byte	0x189
	.4byte	0x6715
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2008
	.byte	0x1b
	.2byte	0x435
	.4byte	0x672c
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x344b
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2009
	.byte	0xc
	.2byte	0x18a
	.4byte	0x674d
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x2c
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2010
	.byte	0x15
	.byte	0x36
	.4byte	0x2c
	.4byte	0x6768
	.uleb128 0x20
	.4byte	0x39e9
	.uleb128 0x20
	.4byte	0x86
	.uleb128 0xb
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2011
	.byte	0x3
	.byte	0x50
	.4byte	0x45
	.4byte	0x678c
	.uleb128 0x20
	.4byte	0x45
	.uleb128 0x20
	.4byte	0x3a
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x678c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45
	.uleb128 0x63
	.4byte	.LASF2012
	.byte	0x1c
	.byte	0x3e
	.4byte	0x67a8
	.uleb128 0x20
	.4byte	0x45
	.uleb128 0x20
	.4byte	0x2c
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2013
	.byte	0x1b
	.2byte	0x430
	.4byte	0x1c0
	.4byte	0x67c8
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x344b
	.uleb128 0x20
	.4byte	0x2c
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2014
	.byte	0x1d
	.byte	0x36
	.4byte	0x1c0
	.4byte	0x67e2
	.uleb128 0x20
	.4byte	0x2f0d
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2015
	.byte	0x11
	.byte	0x44
	.4byte	0x27e
	.4byte	0x67fc
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2016
	.byte	0x18
	.byte	0x6d
	.4byte	0x4ff4
	.4byte	0x6816
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2017
	.byte	0x11
	.byte	0x4f
	.4byte	0x1c0
	.4byte	0x6835
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x6835
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x683b
	.uleb128 0x1f
	.4byte	0x1c0
	.4byte	0x684a
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x63
	.4byte	.LASF2018
	.byte	0x11
	.byte	0x4c
	.4byte	0x685b
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x63
	.4byte	.LASF2019
	.byte	0x11
	.byte	0x4d
	.4byte	0x686c
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2020
	.byte	0x11
	.byte	0x4e
	.4byte	0x1c0
	.4byte	0x688b
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x688b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6891
	.uleb128 0x1f
	.4byte	0x1c0
	.4byte	0x68a0
	.uleb128 0x20
	.4byte	0x344b
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2021
	.byte	0x1b
	.2byte	0x439
	.4byte	0x68bc
	.uleb128 0x20
	.4byte	0x344b
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2022
	.byte	0xc
	.2byte	0x185
	.4byte	0x2f0d
	.4byte	0x68e1
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x2766
	.byte	0
	.uleb128 0x66
	.4byte	.LASF2023
	.byte	0xc
	.2byte	0x186
	.4byte	0x68f3
	.uleb128 0x20
	.4byte	0x2f0d
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2024
	.byte	0x18
	.byte	0x6c
	.4byte	0x289
	.4byte	0x6917
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2025
	.byte	0x11
	.byte	0x50
	.4byte	0x1c0
	.4byte	0x6945
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x27e
	.uleb128 0x20
	.4byte	0x2c
	.uleb128 0x20
	.4byte	0x34fd
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2026
	.byte	0x16
	.byte	0x2f
	.4byte	0x45
	.4byte	0x695a
	.uleb128 0x20
	.4byte	0x695a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39f4
	.uleb128 0x67
	.4byte	.LASF2032
	.byte	0x16
	.byte	0x34
	.uleb128 0x20
	.4byte	0x695a
	.uleb128 0x20
	.4byte	0x45
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x39
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.byte	0
	.byte	0
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x64
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
	.uleb128 0x65
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
	.uleb128 0x66
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
	.uleb128 0x67
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
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0xb
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0xb
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0xd
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-1-.Ltext0
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
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 24
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	tmthing
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	tmthing
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x5c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x5c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x37
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x5c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x5c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x5c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x37
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x39
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x37
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79-.Ltext0
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
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0xe
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0xb
	.byte	0x7b
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 84
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-1-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0xd
	.byte	0x7b
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 84
	.byte	0x6
	.byte	0x22
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-1-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	shootz
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-1-.Ltext0
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	shootz
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL131-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL153-1-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 80
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x7c
	.sleb128 80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x7c
	.sleb128 80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x7c
	.sleb128 80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x7c
	.sleb128 80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x7c
	.sleb128 80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x13
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x71
	.sleb128 108
	.byte	0x6
	.byte	0x23
	.uleb128 0x4c
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0xb
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0xd
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	tmx
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0xb
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0xd
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0xd
	.byte	0x74
	.sleb128 28
	.byte	0x6
	.byte	0x3
	.4byte	tmy
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL169-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL236-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x17
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x74
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
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x17
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x74
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
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209-1-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL229-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL249-1-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x4
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x4
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL244-1-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL244-1-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL224-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-1-.Ltext0
	.2byte	0xf
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 84
	.byte	0x6
	.byte	0x22
	.byte	0x3
	.4byte	shootz
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0xf
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 84
	.byte	0x6
	.byte	0x22
	.byte	0x3
	.4byte	shootz
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-1-.Ltext0
	.2byte	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 84
	.byte	0x6
	.byte	0x22
	.byte	0x3
	.4byte	shootz
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 84
	.byte	0x6
	.byte	0x22
	.byte	0x3
	.4byte	shootz
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192-1-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x4
	.byte	0x44
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x4
	.byte	0x44
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL263-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL263-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL269-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL271-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL279-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL297-1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL297-1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x27
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1f
	.byte	0x7e
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x27
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x24
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x27
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL295-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0xa
	.byte	0x70
	.sleb128 24
	.byte	0x6
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL302-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xe800
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xe800
	.byte	0x9f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL310-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xe800
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL310-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL319-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL319-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL333-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL334-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL333-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL336-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL353-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL354-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL355-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL357-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL363-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL363-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL373-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL373-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL373-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL402-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL402-1-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL402-1-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL402-1-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL407-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL423-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 92
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL428-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL434-.Ltext0
	.4byte	.LVL435-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL435-1-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL435-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL440-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL440-1-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL442-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL442-1-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL459-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL459-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL457-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL463-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL476-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL488-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL507-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL508-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL508-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL510-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL513-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL480-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL509-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL511-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL467-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL489-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL483-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL486-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL497-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL500-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmxmove
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL494-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-1-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	tmxmove
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL494-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL500-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmymove
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL496-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL500-1-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	tmymove
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL508-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmymove
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL507-.Ltext0
	.4byte	.LVL508-1-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	tmymove
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL508-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmxmove
	.4byte	0
	.4byte	0
.LLST253:
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL508-1-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	tmxmove
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST254:
	.4byte	.LVL514-.Ltext0
	.4byte	.LVL516-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL516-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x8
	.byte	0x75
	.sleb128 2048
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST255:
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL517-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST256:
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL519-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST257:
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL543-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL544-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL552-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST258:
	.4byte	.LVL520-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST259:
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL528-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL528-1-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST260:
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST261:
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL531-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST262:
	.4byte	.LVL531-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL536-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	bestslidefrac
	.4byte	0
	.4byte	0
.LLST263:
	.4byte	.LVL531-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL536-1-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST264:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL536-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	bestslidefrac
	.4byte	0
	.4byte	0
.LLST265:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL534-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL534-.Ltext0
	.4byte	.LVL536-1-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 92
	.4byte	0
	.4byte	0
.LLST266:
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL541-1-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 92
	.4byte	0
	.4byte	0
.LLST267:
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL541-1-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 88
	.4byte	.LVL541-1-.Ltext0
	.4byte	.LVL544-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL552-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST268:
	.4byte	.LVL553-.Ltext0
	.4byte	.LVL555-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL555-.Ltext0
	.4byte	.LVL559-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST270:
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL557-.Ltext0
	.4byte	.LVL559-.Ltext0
	.2byte	0x6
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST271:
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL558-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL558-.Ltext0
	.4byte	.LVL560-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST273:
	.4byte	.LVL561-.Ltext0
	.4byte	.LVL563-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL570-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL570-1-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST274:
	.4byte	.LVL561-.Ltext0
	.4byte	.LVL562-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL562-.Ltext0
	.4byte	.LVL565-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL565-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x43
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST275:
	.4byte	.LVL561-.Ltext0
	.4byte	.LVL564-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL564-.Ltext0
	.4byte	.LVL569-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL569-.Ltext0
	.4byte	.LVL570-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	attackrange
	.4byte	.LVL570-1-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST276:
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL570-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST277:
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL568-.Ltext0
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL570-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST278:
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL573-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL579-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL580-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	shootthing
	.4byte	.LVL580-1-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST279:
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL575-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL575-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x43
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST280:
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL581-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST281:
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL578-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	aimslope
	.4byte	.LVL580-1-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST282:
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL577-.Ltext0
	.4byte	.LVL580-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST283:
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL578-.Ltext0
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST284:
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL588-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL588-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST285:
	.4byte	.LVL583-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL587-.Ltext0
	.4byte	.LVL589-.Ltext0
	.2byte	0x6
	.byte	0x7c
	.sleb128 44
	.byte	0x6
	.byte	0x43
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST286:
	.4byte	.LVL583-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST287:
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST288:
	.4byte	.LVL585-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST289:
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST290:
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL607-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST291:
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL607-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST292:
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL607-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST293:
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL602-.Ltext0
	.4byte	.LVL603-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL603-.Ltext0
	.4byte	.LVL604-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL604-1-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL604-.Ltext0
	.4byte	.LVL605-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST294:
	.4byte	.LVL598-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL607-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST295:
	.4byte	.LVL596-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL607-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST296:
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL610-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL616-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL616-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST297:
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL610-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL615-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST298:
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST299:
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL622-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL622-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL629-.Ltext0
	.4byte	.LVL630-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL630-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST300:
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL622-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL622-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL629-.Ltext0
	.4byte	.LVL630-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL630-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST301:
	.4byte	.LVL618-.Ltext0
	.4byte	.LVL619-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL621-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL622-.Ltext0
	.4byte	.LVL623-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL626-.Ltext0
	.4byte	.LVL627-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST302:
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL637-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL637-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL640-.Ltext0
	.4byte	.LVL641-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL641-.Ltext0
	.4byte	.LVL642-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL642-.Ltext0
	.4byte	.LVL643-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL643-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST303:
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL638-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL638-1-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL640-.Ltext0
	.4byte	.LVL644-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL644-1-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST304:
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL638-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL638-1-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL640-.Ltext0
	.4byte	.LVL644-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL644-1-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST305:
	.4byte	.LVL632-.Ltext0
	.4byte	.LVL633-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL633-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL642-.Ltext0
	.4byte	.LVL644-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL644-1-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST306:
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL638-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL638-1-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL642-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST307:
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL638-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL638-1-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL642-.Ltext0
	.4byte	.LVL644-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL644-1-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST308:
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL637-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL637-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL642-.Ltext0
	.4byte	.LVL643-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL643-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST309:
	.4byte	.LVL645-.Ltext0
	.4byte	.LVL646-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL648-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL648-.Ltext0
	.4byte	.LVL649-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL649-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST310:
	.4byte	.LVL652-.Ltext0
	.4byte	.LVL658-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL658-.Ltext0
	.4byte	.LVL659-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL659-1-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST311:
	.4byte	.LVL653-.Ltext0
	.4byte	.LVL656-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST312:
	.4byte	.LVL655-.Ltext0
	.4byte	.LVL659-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST313:
	.4byte	.LVL656-.Ltext0
	.4byte	.LVL659-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST314:
	.4byte	.LVL657-.Ltext0
	.4byte	.LVL658-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL658-.Ltext0
	.4byte	.LVL659-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL659-1-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST315:
	.4byte	.LVL660-.Ltext0
	.4byte	.LVL661-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL661-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST316:
	.4byte	.LVL662-.Ltext0
	.4byte	.LVL663-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL663-.Ltext0
	.4byte	.LVL694-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL694-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST317:
	.4byte	.LVL662-.Ltext0
	.4byte	.LVL673-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL673-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmx
	.4byte	.LVL679-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST318:
	.4byte	.LVL662-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL676-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmy
	.4byte	.LVL679-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST319:
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST320:
	.4byte	.LVL675-.Ltext0
	.4byte	.LVL694-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST321:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL694-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST322:
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL694-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST323:
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST324:
	.4byte	.LVL679-.Ltext0
	.4byte	.LVL680-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL681-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL681-.Ltext0
	.4byte	.LVL682-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL682-1-.Ltext0
	.4byte	.LVL682-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL682-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST325:
	.4byte	.LVL668-.Ltext0
	.4byte	.LVL670-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL670-.Ltext0
	.4byte	.LVL672-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL688-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL688-.Ltext0
	.4byte	.LVL689-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL691-.Ltext0
	.4byte	.LVL692-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL692-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST326:
	.4byte	.LVL664-.Ltext0
	.4byte	.LVL665-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL665-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmthing
	.4byte	.LVL679-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST327:
	.4byte	.LVL666-.Ltext0
	.4byte	.LVL667-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmx
	.4byte	.LVL679-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST328:
	.4byte	.LVL668-.Ltext0
	.4byte	.LVL669-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL669-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tmy
	.4byte	.LVL679-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
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
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	.LBB203-.Ltext0
	.4byte	.LBE203-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB208-.Ltext0
	.4byte	.LBE208-.Ltext0
	.4byte	.LBB216-.Ltext0
	.4byte	.LBE216-.Ltext0
	.4byte	.LBB218-.Ltext0
	.4byte	.LBE218-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB212-.Ltext0
	.4byte	.LBE212-.Ltext0
	.4byte	.LBB217-.Ltext0
	.4byte	.LBE217-.Ltext0
	.4byte	.LBB219-.Ltext0
	.4byte	.LBE219-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB220-.Ltext0
	.4byte	.LBE220-.Ltext0
	.4byte	.LBB265-.Ltext0
	.4byte	.LBE265-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB222-.Ltext0
	.4byte	.LBE222-.Ltext0
	.4byte	.LBB229-.Ltext0
	.4byte	.LBE229-.Ltext0
	.4byte	.LBB231-.Ltext0
	.4byte	.LBE231-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB226-.Ltext0
	.4byte	.LBE226-.Ltext0
	.4byte	.LBB230-.Ltext0
	.4byte	.LBE230-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	.LBB264-.Ltext0
	.4byte	.LBE264-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	.LBB248-.Ltext0
	.4byte	.LBE248-.Ltext0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB244-.Ltext0
	.4byte	.LBE244-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	.LBB251-.Ltext0
	.4byte	.LBE251-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB252-.Ltext0
	.4byte	.LBE252-.Ltext0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	.LBB262-.Ltext0
	.4byte	.LBE262-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB261-.Ltext0
	.4byte	.LBE261-.Ltext0
	.4byte	.LBB263-.Ltext0
	.4byte	.LBE263-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB266-.Ltext0
	.4byte	.LBE266-.Ltext0
	.4byte	.LBB270-.Ltext0
	.4byte	.LBE270-.Ltext0
	.4byte	.LBB271-.Ltext0
	.4byte	.LBE271-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB272-.Ltext0
	.4byte	.LBE272-.Ltext0
	.4byte	.LBB328-.Ltext0
	.4byte	.LBE328-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB274-.Ltext0
	.4byte	.LBE274-.Ltext0
	.4byte	.LBB282-.Ltext0
	.4byte	.LBE282-.Ltext0
	.4byte	.LBB284-.Ltext0
	.4byte	.LBE284-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB278-.Ltext0
	.4byte	.LBE278-.Ltext0
	.4byte	.LBB283-.Ltext0
	.4byte	.LBE283-.Ltext0
	.4byte	.LBB285-.Ltext0
	.4byte	.LBE285-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB287-.Ltext0
	.4byte	.LBE287-.Ltext0
	.4byte	.LBB329-.Ltext0
	.4byte	.LBE329-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB292-.Ltext0
	.4byte	.LBE292-.Ltext0
	.4byte	.LBB296-.Ltext0
	.4byte	.LBE296-.Ltext0
	.4byte	.LBB297-.Ltext0
	.4byte	.LBE297-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB298-.Ltext0
	.4byte	.LBE298-.Ltext0
	.4byte	.LBB311-.Ltext0
	.4byte	.LBE311-.Ltext0
	.4byte	.LBB312-.Ltext0
	.4byte	.LBE312-.Ltext0
	.4byte	.LBB330-.Ltext0
	.4byte	.LBE330-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB300-.Ltext0
	.4byte	.LBE300-.Ltext0
	.4byte	.LBB304-.Ltext0
	.4byte	.LBE304-.Ltext0
	.4byte	.LBB307-.Ltext0
	.4byte	.LBE307-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB313-.Ltext0
	.4byte	.LBE313-.Ltext0
	.4byte	.LBB326-.Ltext0
	.4byte	.LBE326-.Ltext0
	.4byte	.LBB327-.Ltext0
	.4byte	.LBE327-.Ltext0
	.4byte	.LBB331-.Ltext0
	.4byte	.LBE331-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB315-.Ltext0
	.4byte	.LBE315-.Ltext0
	.4byte	.LBB319-.Ltext0
	.4byte	.LBE319-.Ltext0
	.4byte	.LBB322-.Ltext0
	.4byte	.LBE322-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB332-.Ltext0
	.4byte	.LBE332-.Ltext0
	.4byte	.LBB335-.Ltext0
	.4byte	.LBE335-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB340-.Ltext0
	.4byte	.LBE340-.Ltext0
	.4byte	.LBB468-.Ltext0
	.4byte	.LBE468-.Ltext0
	.4byte	.LBB469-.Ltext0
	.4byte	.LBE469-.Ltext0
	.4byte	.LBB472-.Ltext0
	.4byte	.LBE472-.Ltext0
	.4byte	.LBB474-.Ltext0
	.4byte	.LBE474-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB341-.Ltext0
	.4byte	.LBE341-.Ltext0
	.4byte	.LBB406-.Ltext0
	.4byte	.LBE406-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB346-.Ltext0
	.4byte	.LBE346-.Ltext0
	.4byte	.LBB354-.Ltext0
	.4byte	.LBE354-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB349-.Ltext0
	.4byte	.LBE349-.Ltext0
	.4byte	.LBB397-.Ltext0
	.4byte	.LBE397-.Ltext0
	.4byte	.LBB402-.Ltext0
	.4byte	.LBE402-.Ltext0
	.4byte	.LBB404-.Ltext0
	.4byte	.LBE404-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB355-.Ltext0
	.4byte	.LBE355-.Ltext0
	.4byte	.LBB359-.Ltext0
	.4byte	.LBE359-.Ltext0
	.4byte	.LBB360-.Ltext0
	.4byte	.LBE360-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB361-.Ltext0
	.4byte	.LBE361-.Ltext0
	.4byte	.LBB365-.Ltext0
	.4byte	.LBE365-.Ltext0
	.4byte	.LBB366-.Ltext0
	.4byte	.LBE366-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB367-.Ltext0
	.4byte	.LBE367-.Ltext0
	.4byte	.LBB381-.Ltext0
	.4byte	.LBE381-.Ltext0
	.4byte	.LBB407-.Ltext0
	.4byte	.LBE407-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB369-.Ltext0
	.4byte	.LBE369-.Ltext0
	.4byte	.LBB376-.Ltext0
	.4byte	.LBE376-.Ltext0
	.4byte	.LBB378-.Ltext0
	.4byte	.LBE378-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB373-.Ltext0
	.4byte	.LBE373-.Ltext0
	.4byte	.LBB377-.Ltext0
	.4byte	.LBE377-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB382-.Ltext0
	.4byte	.LBE382-.Ltext0
	.4byte	.LBB396-.Ltext0
	.4byte	.LBE396-.Ltext0
	.4byte	.LBB408-.Ltext0
	.4byte	.LBE408-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB384-.Ltext0
	.4byte	.LBE384-.Ltext0
	.4byte	.LBB391-.Ltext0
	.4byte	.LBE391-.Ltext0
	.4byte	.LBB393-.Ltext0
	.4byte	.LBE393-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB388-.Ltext0
	.4byte	.LBE388-.Ltext0
	.4byte	.LBB392-.Ltext0
	.4byte	.LBE392-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB398-.Ltext0
	.4byte	.LBE398-.Ltext0
	.4byte	.LBB403-.Ltext0
	.4byte	.LBE403-.Ltext0
	.4byte	.LBB405-.Ltext0
	.4byte	.LBE405-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB409-.Ltext0
	.4byte	.LBE409-.Ltext0
	.4byte	.LBB415-.Ltext0
	.4byte	.LBE415-.Ltext0
	.4byte	.LBB428-.Ltext0
	.4byte	.LBE428-.Ltext0
	.4byte	.LBB430-.Ltext0
	.4byte	.LBE430-.Ltext0
	.4byte	.LBB432-.Ltext0
	.4byte	.LBE432-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB416-.Ltext0
	.4byte	.LBE416-.Ltext0
	.4byte	.LBB429-.Ltext0
	.4byte	.LBE429-.Ltext0
	.4byte	.LBB431-.Ltext0
	.4byte	.LBE431-.Ltext0
	.4byte	.LBB433-.Ltext0
	.4byte	.LBE433-.Ltext0
	.4byte	.LBB470-.Ltext0
	.4byte	.LBE470-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB418-.Ltext0
	.4byte	.LBE418-.Ltext0
	.4byte	.LBB421-.Ltext0
	.4byte	.LBE421-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB434-.Ltext0
	.4byte	.LBE434-.Ltext0
	.4byte	.LBB471-.Ltext0
	.4byte	.LBE471-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB439-.Ltext0
	.4byte	.LBE439-.Ltext0
	.4byte	.LBB473-.Ltext0
	.4byte	.LBE473-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB444-.Ltext0
	.4byte	.LBE444-.Ltext0
	.4byte	.LBB448-.Ltext0
	.4byte	.LBE448-.Ltext0
	.4byte	.LBB449-.Ltext0
	.4byte	.LBE449-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB450-.Ltext0
	.4byte	.LBE450-.Ltext0
	.4byte	.LBB464-.Ltext0
	.4byte	.LBE464-.Ltext0
	.4byte	.LBB466-.Ltext0
	.4byte	.LBE466-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB454-.Ltext0
	.4byte	.LBE454-.Ltext0
	.4byte	.LBB462-.Ltext0
	.4byte	.LBE462-.Ltext0
	.4byte	.LBB463-.Ltext0
	.4byte	.LBE463-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB458-.Ltext0
	.4byte	.LBE458-.Ltext0
	.4byte	.LBB465-.Ltext0
	.4byte	.LBE465-.Ltext0
	.4byte	.LBB467-.Ltext0
	.4byte	.LBE467-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB483-.Ltext0
	.4byte	.LBE483-.Ltext0
	.4byte	.LBB510-.Ltext0
	.4byte	.LBE510-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB485-.Ltext0
	.4byte	.LBE485-.Ltext0
	.4byte	.LBB493-.Ltext0
	.4byte	.LBE493-.Ltext0
	.4byte	.LBB495-.Ltext0
	.4byte	.LBE495-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB489-.Ltext0
	.4byte	.LBE489-.Ltext0
	.4byte	.LBB494-.Ltext0
	.4byte	.LBE494-.Ltext0
	.4byte	.LBB496-.Ltext0
	.4byte	.LBE496-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB497-.Ltext0
	.4byte	.LBE497-.Ltext0
	.4byte	.LBB504-.Ltext0
	.4byte	.LBE504-.Ltext0
	.4byte	.LBB505-.Ltext0
	.4byte	.LBE505-.Ltext0
	.4byte	.LBB506-.Ltext0
	.4byte	.LBE506-.Ltext0
	.4byte	.LBB507-.Ltext0
	.4byte	.LBE507-.Ltext0
	.4byte	.LBB508-.Ltext0
	.4byte	.LBE508-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB521-.Ltext0
	.4byte	.LBE521-.Ltext0
	.4byte	.LBB536-.Ltext0
	.4byte	.LBE536-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB523-.Ltext0
	.4byte	.LBE523-.Ltext0
	.4byte	.LBB531-.Ltext0
	.4byte	.LBE531-.Ltext0
	.4byte	.LBB533-.Ltext0
	.4byte	.LBE533-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB527-.Ltext0
	.4byte	.LBE527-.Ltext0
	.4byte	.LBB532-.Ltext0
	.4byte	.LBE532-.Ltext0
	.4byte	.LBB534-.Ltext0
	.4byte	.LBE534-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB537-.Ltext0
	.4byte	.LBE537-.Ltext0
	.4byte	.LBB540-.Ltext0
	.4byte	.LBE540-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB538-.Ltext0
	.4byte	.LBE538-.Ltext0
	.4byte	.LBB539-.Ltext0
	.4byte	.LBE539-.Ltext0
	.4byte	.LBB541-.Ltext0
	.4byte	.LBE541-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB549-.Ltext0
	.4byte	.LBE549-.Ltext0
	.4byte	.LBB566-.Ltext0
	.4byte	.LBE566-.Ltext0
	.4byte	.LBB567-.Ltext0
	.4byte	.LBE567-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB552-.Ltext0
	.4byte	.LBE552-.Ltext0
	.4byte	.LBB560-.Ltext0
	.4byte	.LBE560-.Ltext0
	.4byte	.LBB562-.Ltext0
	.4byte	.LBE562-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB556-.Ltext0
	.4byte	.LBE556-.Ltext0
	.4byte	.LBB561-.Ltext0
	.4byte	.LBE561-.Ltext0
	.4byte	.LBB563-.Ltext0
	.4byte	.LBE563-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB571-.Ltext0
	.4byte	.LBE571-.Ltext0
	.4byte	.LBB576-.Ltext0
	.4byte	.LBE576-.Ltext0
	.4byte	.LBB577-.Ltext0
	.4byte	.LBE577-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB578-.Ltext0
	.4byte	.LBE578-.Ltext0
	.4byte	.LBB582-.Ltext0
	.4byte	.LBE582-.Ltext0
	.4byte	.LBB583-.Ltext0
	.4byte	.LBE583-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB584-.Ltext0
	.4byte	.LBE584-.Ltext0
	.4byte	.LBB594-.Ltext0
	.4byte	.LBE594-.Ltext0
	.4byte	.LBB596-.Ltext0
	.4byte	.LBE596-.Ltext0
	.4byte	.LBB598-.Ltext0
	.4byte	.LBE598-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB589-.Ltext0
	.4byte	.LBE589-.Ltext0
	.4byte	.LBB595-.Ltext0
	.4byte	.LBE595-.Ltext0
	.4byte	.LBB597-.Ltext0
	.4byte	.LBE597-.Ltext0
	.4byte	.LBB599-.Ltext0
	.4byte	.LBE599-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB601-.Ltext0
	.4byte	.LBE601-.Ltext0
	.4byte	.LBB608-.Ltext0
	.4byte	.LBE608-.Ltext0
	.4byte	.LBB610-.Ltext0
	.4byte	.LBE610-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB605-.Ltext0
	.4byte	.LBE605-.Ltext0
	.4byte	.LBB609-.Ltext0
	.4byte	.LBE609-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB611-.Ltext0
	.4byte	.LBE611-.Ltext0
	.4byte	.LBB618-.Ltext0
	.4byte	.LBE618-.Ltext0
	.4byte	.LBB620-.Ltext0
	.4byte	.LBE620-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB615-.Ltext0
	.4byte	.LBE615-.Ltext0
	.4byte	.LBB619-.Ltext0
	.4byte	.LBE619-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB621-.Ltext0
	.4byte	.LBE621-.Ltext0
	.4byte	.LBB631-.Ltext0
	.4byte	.LBE631-.Ltext0
	.4byte	.LBB633-.Ltext0
	.4byte	.LBE633-.Ltext0
	.4byte	.LBB635-.Ltext0
	.4byte	.LBE635-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB626-.Ltext0
	.4byte	.LBE626-.Ltext0
	.4byte	.LBB632-.Ltext0
	.4byte	.LBE632-.Ltext0
	.4byte	.LBB634-.Ltext0
	.4byte	.LBE634-.Ltext0
	.4byte	.LBB636-.Ltext0
	.4byte	.LBE636-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB637-.Ltext0
	.4byte	.LBE637-.Ltext0
	.4byte	.LBB703-.Ltext0
	.4byte	.LBE703-.Ltext0
	.4byte	.LBB704-.Ltext0
	.4byte	.LBE704-.Ltext0
	.4byte	.LBB705-.Ltext0
	.4byte	.LBE705-.Ltext0
	.4byte	.LBB706-.Ltext0
	.4byte	.LBE706-.Ltext0
	.4byte	.LBB707-.Ltext0
	.4byte	.LBE707-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB639-.Ltext0
	.4byte	.LBE639-.Ltext0
	.4byte	.LBB648-.Ltext0
	.4byte	.LBE648-.Ltext0
	.4byte	.LBB650-.Ltext0
	.4byte	.LBE650-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB643-.Ltext0
	.4byte	.LBE643-.Ltext0
	.4byte	.LBB647-.Ltext0
	.4byte	.LBE647-.Ltext0
	.4byte	.LBB649-.Ltext0
	.4byte	.LBE649-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB651-.Ltext0
	.4byte	.LBE651-.Ltext0
	.4byte	.LBB669-.Ltext0
	.4byte	.LBE669-.Ltext0
	.4byte	.LBB671-.Ltext0
	.4byte	.LBE671-.Ltext0
	.4byte	.LBB673-.Ltext0
	.4byte	.LBE673-.Ltext0
	.4byte	.LBB675-.Ltext0
	.4byte	.LBE675-.Ltext0
	.4byte	.LBB677-.Ltext0
	.4byte	.LBE677-.Ltext0
	.4byte	.LBB679-.Ltext0
	.4byte	.LBE679-.Ltext0
	.4byte	.LBB681-.Ltext0
	.4byte	.LBE681-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB660-.Ltext0
	.4byte	.LBE660-.Ltext0
	.4byte	.LBB670-.Ltext0
	.4byte	.LBE670-.Ltext0
	.4byte	.LBB672-.Ltext0
	.4byte	.LBE672-.Ltext0
	.4byte	.LBB674-.Ltext0
	.4byte	.LBE674-.Ltext0
	.4byte	.LBB676-.Ltext0
	.4byte	.LBE676-.Ltext0
	.4byte	.LBB678-.Ltext0
	.4byte	.LBE678-.Ltext0
	.4byte	.LBB680-.Ltext0
	.4byte	.LBE680-.Ltext0
	.4byte	.LBB682-.Ltext0
	.4byte	.LBE682-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB683-.Ltext0
	.4byte	.LBE683-.Ltext0
	.4byte	.LBB690-.Ltext0
	.4byte	.LBE690-.Ltext0
	.4byte	.LBB692-.Ltext0
	.4byte	.LBE692-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB687-.Ltext0
	.4byte	.LBE687-.Ltext0
	.4byte	.LBB691-.Ltext0
	.4byte	.LBE691-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB693-.Ltext0
	.4byte	.LBE693-.Ltext0
	.4byte	.LBB700-.Ltext0
	.4byte	.LBE700-.Ltext0
	.4byte	.LBB702-.Ltext0
	.4byte	.LBE702-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB697-.Ltext0
	.4byte	.LBE697-.Ltext0
	.4byte	.LBB701-.Ltext0
	.4byte	.LBE701-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB712-.Ltext0
	.4byte	.LBE712-.Ltext0
	.4byte	.LBB719-.Ltext0
	.4byte	.LBE719-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB714-.Ltext0
	.4byte	.LBE714-.Ltext0
	.4byte	.LBB717-.Ltext0
	.4byte	.LBE717-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1643:
	.ascii	"RF_TOP_TILE\000"
.LASF868:
	.ascii	"S_BSPI_RUN1\000"
.LASF869:
	.ascii	"S_BSPI_RUN2\000"
.LASF870:
	.ascii	"S_BSPI_RUN3\000"
.LASF871:
	.ascii	"S_BSPI_RUN4\000"
.LASF872:
	.ascii	"S_BSPI_RUN5\000"
.LASF873:
	.ascii	"S_BSPI_RUN6\000"
.LASF874:
	.ascii	"S_BSPI_RUN7\000"
.LASF875:
	.ascii	"S_BSPI_RUN8\000"
.LASF876:
	.ascii	"S_BSPI_RUN9\000"
.LASF158:
	.ascii	"SPR_YSKU\000"
.LASF1668:
	.ascii	"sfx_sawup\000"
.LASF1534:
	.ascii	"attacker\000"
.LASF523:
	.ascii	"S_FIRE10\000"
.LASF524:
	.ascii	"S_FIRE11\000"
.LASF525:
	.ascii	"S_FIRE12\000"
.LASF526:
	.ascii	"S_FIRE13\000"
.LASF527:
	.ascii	"S_FIRE14\000"
.LASF528:
	.ascii	"S_FIRE15\000"
.LASF529:
	.ascii	"S_FIRE16\000"
.LASF530:
	.ascii	"S_FIRE17\000"
.LASF531:
	.ascii	"S_FIRE18\000"
.LASF532:
	.ascii	"S_FIRE19\000"
.LASF1413:
	.ascii	"MT_MISC84\000"
.LASF1346:
	.ascii	"MT_MISC20\000"
.LASF1091:
	.ascii	"S_MEGA2\000"
.LASF1092:
	.ascii	"S_MEGA3\000"
.LASF1093:
	.ascii	"S_MEGA4\000"
.LASF1350:
	.ascii	"MT_MISC24\000"
.LASF1351:
	.ascii	"MT_MISC25\000"
.LASF1353:
	.ascii	"MT_MISC26\000"
.LASF1354:
	.ascii	"MT_MISC27\000"
.LASF1355:
	.ascii	"MT_MISC28\000"
.LASF1358:
	.ascii	"MT_MISC29\000"
.LASF722:
	.ascii	"S_SARG_PAIN2\000"
.LASF1833:
	.ascii	"pr_randomjump\000"
.LASF1490:
	.ascii	"threshold\000"
.LASF28:
	.ascii	"wp_pistol\000"
.LASF199:
	.ascii	"SPR_COL1\000"
.LASF200:
	.ascii	"SPR_COL2\000"
.LASF201:
	.ascii	"SPR_COL3\000"
.LASF202:
	.ascii	"SPR_COL4\000"
.LASF211:
	.ascii	"SPR_COL5\000"
.LASF205:
	.ascii	"SPR_COL6\000"
.LASF1656:
	.ascii	"isaline\000"
.LASF1823:
	.ascii	"pr_opendoor\000"
.LASF1806:
	.ascii	"pr_posattack\000"
.LASF1764:
	.ascii	"sfx_skesit\000"
.LASF1745:
	.ascii	"sfx_tink\000"
.LASF533:
	.ascii	"S_FIRE20\000"
.LASF534:
	.ascii	"S_FIRE21\000"
.LASF535:
	.ascii	"S_FIRE22\000"
.LASF536:
	.ascii	"S_FIRE23\000"
.LASF537:
	.ascii	"S_FIRE24\000"
.LASF185:
	.ascii	"SPR_COLU\000"
.LASF539:
	.ascii	"S_FIRE26\000"
.LASF540:
	.ascii	"S_FIRE27\000"
.LASF541:
	.ascii	"S_FIRE28\000"
.LASF542:
	.ascii	"S_FIRE29\000"
.LASF1837:
	.ascii	"BOXTOP\000"
.LASF1359:
	.ascii	"MT_MISC30\000"
.LASF1274:
	.ascii	"action\000"
.LASF1361:
	.ascii	"MT_MISC32\000"
.LASF1362:
	.ascii	"MT_MISC33\000"
.LASF884:
	.ascii	"S_BSPI_PAIN\000"
.LASF1364:
	.ascii	"MT_MISC35\000"
.LASF356:
	.ascii	"S_BFGEXP\000"
.LASF43:
	.ascii	"am_misl\000"
.LASF1367:
	.ascii	"MT_MISC38\000"
.LASF1368:
	.ascii	"MT_MISC39\000"
.LASF1621:
	.ascii	"floorpic\000"
.LASF53:
	.ascii	"_Bool\000"
.LASF65:
	.ascii	"boom_compatibility_compatibility\000"
.LASF887:
	.ascii	"S_BSPI_DIE2\000"
.LASF1429:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF1459:
	.ascii	"NUMPSPRITES\000"
.LASF1856:
	.ascii	"FixedMul\000"
.LASF891:
	.ascii	"S_BSPI_DIE6\000"
.LASF1751:
	.ascii	"sfx_getpow\000"
.LASF1640:
	.ascii	"ST_POSITIVE\000"
.LASF1510:
	.ascii	"viewz\000"
.LASF782:
	.ascii	"S_BOSS_RAISE1\000"
.LASF783:
	.ascii	"S_BOSS_RAISE2\000"
.LASF1293:
	.ascii	"MT_HEAD\000"
.LASF784:
	.ascii	"S_BOSS_RAISE3\000"
.LASF543:
	.ascii	"S_FIRE30\000"
.LASF688:
	.ascii	"S_TROO_PAIN\000"
.LASF977:
	.ascii	"S_SSWV_DIE1\000"
.LASF787:
	.ascii	"S_BOSS_RAISE6\000"
.LASF979:
	.ascii	"S_SSWV_DIE3\000"
.LASF980:
	.ascii	"S_SSWV_DIE4\000"
.LASF981:
	.ascii	"S_SSWV_DIE5\000"
.LASF153:
	.ascii	"SPR_BKEY\000"
.LASF799:
	.ascii	"S_BOS2_ATK1\000"
.LASF800:
	.ascii	"S_BOS2_ATK2\000"
.LASF801:
	.ascii	"S_BOS2_ATK3\000"
.LASF187:
	.ascii	"SPR_GOR1\000"
.LASF194:
	.ascii	"SPR_GOR2\000"
.LASF195:
	.ascii	"SPR_GOR3\000"
.LASF196:
	.ascii	"SPR_GOR4\000"
.LASF197:
	.ascii	"SPR_GOR5\000"
.LASF1371:
	.ascii	"MT_MISC42\000"
.LASF1372:
	.ascii	"MT_MISC43\000"
.LASF556:
	.ascii	"S_SKEL_RUN1\000"
.LASF557:
	.ascii	"S_SKEL_RUN2\000"
.LASF558:
	.ascii	"S_SKEL_RUN3\000"
.LASF559:
	.ascii	"S_SKEL_RUN4\000"
.LASF560:
	.ascii	"S_SKEL_RUN5\000"
.LASF561:
	.ascii	"S_SKEL_RUN6\000"
.LASF562:
	.ascii	"S_SKEL_RUN7\000"
.LASF563:
	.ascii	"S_SKEL_RUN8\000"
.LASF564:
	.ascii	"S_SKEL_RUN9\000"
.LASF31:
	.ascii	"wp_missile\000"
.LASF1042:
	.ascii	"S_BEXP2\000"
.LASF1436:
	.ascii	"seestate\000"
.LASF737:
	.ascii	"S_HEAD_ATK1\000"
.LASF738:
	.ascii	"S_HEAD_ATK2\000"
.LASF739:
	.ascii	"S_HEAD_ATK3\000"
.LASF1630:
	.ascii	"slopetype\000"
.LASF991:
	.ascii	"S_SSWV_RAISE1\000"
.LASF992:
	.ascii	"S_SSWV_RAISE2\000"
.LASF993:
	.ascii	"S_SSWV_RAISE3\000"
.LASF994:
	.ascii	"S_SSWV_RAISE4\000"
.LASF995:
	.ascii	"S_SSWV_RAISE5\000"
.LASF1462:
	.ascii	"angle\000"
.LASF1777:
	.ascii	"pr_killtics\000"
.LASF1288:
	.ascii	"MT_FATSHOT\000"
.LASF1570:
	.ascii	"comp_falloff\000"
.LASF173:
	.ascii	"SPR_CELL\000"
.LASF1936:
	.ascii	"saved_tmx\000"
.LASF1768:
	.ascii	"sfx_dgatk\000"
.LASF174:
	.ascii	"SPR_CELP\000"
.LASF1157:
	.ascii	"S_HEARTCOL\000"
.LASF1920:
	.ascii	"newy\000"
.LASF12:
	.ascii	"PU_STATIC\000"
.LASF1795:
	.ascii	"pr_misfire\000"
.LASF1702:
	.ascii	"sfx_cybsit\000"
.LASF1526:
	.ascii	"cheats\000"
.LASF1506:
	.ascii	"numlines\000"
.LASF1074:
	.ascii	"S_MEDI\000"
.LASF2030:
	.ascii	"P_GetSecnode\000"
.LASF1081:
	.ascii	"S_PINV\000"
.LASF1337:
	.ascii	"MT_INS\000"
.LASF1380:
	.ascii	"MT_MISC51\000"
.LASF1381:
	.ascii	"MT_MISC52\000"
.LASF1335:
	.ascii	"MT_INV\000"
.LASF1383:
	.ascii	"MT_MISC54\000"
.LASF2027:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF292:
	.ascii	"S_MISSILEUP\000"
.LASF1386:
	.ascii	"MT_MISC57\000"
.LASF1387:
	.ascii	"MT_MISC58\000"
.LASF1388:
	.ascii	"MT_MISC59\000"
.LASF469:
	.ascii	"S_SPOS_RAISE1\000"
.LASF1712:
	.ascii	"sfx_vilatk\000"
.LASF1932:
	.ascii	"P_DelSecnode\000"
.LASF1662:
	.ascii	"sfx_dshtgn\000"
.LASF263:
	.ascii	"S_SGUNFLASH1\000"
.LASF264:
	.ascii	"S_SGUNFLASH2\000"
.LASF811:
	.ascii	"S_BOS2_RAISE1\000"
.LASF812:
	.ascii	"S_BOS2_RAISE2\000"
.LASF813:
	.ascii	"S_BOS2_RAISE3\000"
.LASF814:
	.ascii	"S_BOS2_RAISE4\000"
.LASF815:
	.ascii	"S_BOS2_RAISE5\000"
.LASF816:
	.ascii	"S_BOS2_RAISE6\000"
.LASF817:
	.ascii	"S_BOS2_RAISE7\000"
.LASF576:
	.ascii	"S_SKEL_PAIN\000"
.LASF1063:
	.ascii	"S_RKEY\000"
.LASF85:
	.ascii	"next\000"
.LASF2012:
	.ascii	"S_StartSound\000"
.LASF1674:
	.ascii	"sfx_firsht\000"
.LASF1666:
	.ascii	"sfx_plasma\000"
.LASF245:
	.ascii	"S_PISTOLUP\000"
.LASF931:
	.ascii	"S_CYBER_DIE8\000"
.LASF1612:
	.ascii	"touching_thinglist\000"
.LASF1389:
	.ascii	"MT_MISC60\000"
.LASF1390:
	.ascii	"MT_MISC61\000"
.LASF1391:
	.ascii	"MT_MISC62\000"
.LASF1392:
	.ascii	"MT_MISC63\000"
.LASF1393:
	.ascii	"MT_MISC64\000"
.LASF1394:
	.ascii	"MT_MISC65\000"
.LASF1395:
	.ascii	"MT_MISC66\000"
.LASF1396:
	.ascii	"MT_MISC67\000"
.LASF360:
	.ascii	"S_EXPLODE1\000"
.LASF361:
	.ascii	"S_EXPLODE2\000"
.LASF362:
	.ascii	"S_EXPLODE3\000"
.LASF1757:
	.ascii	"sfx_manatk\000"
.LASF551:
	.ascii	"S_TRACEEXP1\000"
.LASF552:
	.ascii	"S_TRACEEXP2\000"
.LASF553:
	.ascii	"S_TRACEEXP3\000"
.LASF1898:
	.ascii	"Check_Sides\000"
.LASF939:
	.ascii	"S_PAIN_RUN5\000"
.LASF1041:
	.ascii	"S_BEXP\000"
.LASF940:
	.ascii	"S_PAIN_RUN6\000"
.LASF1535:
	.ascii	"extralight\000"
.LASF1923:
	.ascii	"mask\000"
.LASF1854:
	.ascii	"D_abs\000"
.LASF1158:
	.ascii	"S_HEARTCOL2\000"
.LASF337:
	.ascii	"S_RBALLX1\000"
.LASF1831:
	.ascii	"pr_helpfriend\000"
.LASF1257:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1237:
	.ascii	"S_PLS1EXP\000"
.LASF1450:
	.ascii	"height\000"
.LASF1320:
	.ascii	"MT_TELEPORTMAN\000"
.LASF1655:
	.ascii	"frac\000"
.LASF1399:
	.ascii	"MT_MISC70\000"
.LASF118:
	.ascii	"SPR_IFOG\000"
.LASF1401:
	.ascii	"MT_MISC72\000"
.LASF1402:
	.ascii	"MT_MISC73\000"
.LASF1403:
	.ascii	"MT_MISC74\000"
.LASF1404:
	.ascii	"MT_MISC75\000"
.LASF1405:
	.ascii	"MT_MISC76\000"
.LASF1164:
	.ascii	"S_GREENTORCH2\000"
.LASF1165:
	.ascii	"S_GREENTORCH3\000"
.LASF1166:
	.ascii	"S_GREENTORCH4\000"
.LASF1774:
	.ascii	"pr_damage\000"
.LASF1776:
	.ascii	"pr_genlift\000"
.LASF1005:
	.ascii	"S_COMMKEEN9\000"
.LASF2010:
	.ascii	"lprintf\000"
.LASF654:
	.ascii	"S_CPOS_PAIN2\000"
.LASF1644:
	.ascii	"RF_MID_TILE\000"
.LASF877:
	.ascii	"S_BSPI_RUN10\000"
.LASF878:
	.ascii	"S_BSPI_RUN11\000"
.LASF879:
	.ascii	"S_BSPI_RUN12\000"
.LASF961:
	.ascii	"S_SSWV_RUN1\000"
.LASF962:
	.ascii	"S_SSWV_RUN2\000"
.LASF963:
	.ascii	"S_SSWV_RUN3\000"
.LASF964:
	.ascii	"S_SSWV_RUN4\000"
.LASF965:
	.ascii	"S_SSWV_RUN5\000"
.LASF966:
	.ascii	"S_SSWV_RUN6\000"
.LASF967:
	.ascii	"S_SSWV_RUN7\000"
.LASF968:
	.ascii	"S_SSWV_RUN8\000"
.LASF1146:
	.ascii	"S_SKULLCOL\000"
.LASF1287:
	.ascii	"MT_FATSO\000"
.LASF1899:
	.ascii	"actor\000"
.LASF690:
	.ascii	"S_TROO_DIE1\000"
.LASF691:
	.ascii	"S_TROO_DIE2\000"
.LASF692:
	.ascii	"S_TROO_DIE3\000"
.LASF693:
	.ascii	"S_TROO_DIE4\000"
.LASF694:
	.ascii	"S_TROO_DIE5\000"
.LASF1911:
	.ascii	"P_SlideMove\000"
.LASF1071:
	.ascii	"S_YSKULL\000"
.LASF1072:
	.ascii	"S_YSKULL2\000"
.LASF171:
	.ascii	"SPR_ROCK\000"
.LASF1312:
	.ascii	"MT_ROCKET\000"
.LASF1410:
	.ascii	"MT_MISC81\000"
.LASF1411:
	.ascii	"MT_MISC82\000"
.LASF1412:
	.ascii	"MT_MISC83\000"
.LASF649:
	.ascii	"S_CPOS_ATK1\000"
.LASF650:
	.ascii	"S_CPOS_ATK2\000"
.LASF651:
	.ascii	"S_CPOS_ATK3\000"
.LASF652:
	.ascii	"S_CPOS_ATK4\000"
.LASF1279:
	.ascii	"MT_PLAYER\000"
.LASF1874:
	.ascii	"blockdist\000"
.LASF1079:
	.ascii	"S_SOUL5\000"
.LASF183:
	.ascii	"SPR_SHOT\000"
.LASF378:
	.ascii	"S_IFOG2\000"
.LASF71:
	.ascii	"prboom_2_compatibility\000"
.LASF380:
	.ascii	"S_IFOG4\000"
.LASF381:
	.ascii	"S_IFOG5\000"
.LASF112:
	.ascii	"SPR_PLSE\000"
.LASF104:
	.ascii	"SPR_PLSF\000"
.LASF103:
	.ascii	"SPR_PLSG\000"
.LASF774:
	.ascii	"S_BOSS_PAIN2\000"
.LASF474:
	.ascii	"S_VILE_STND\000"
.LASF1002:
	.ascii	"S_COMMKEEN6\000"
.LASF1003:
	.ascii	"S_COMMKEEN7\000"
.LASF1867:
	.ascii	"PIT_ChangeSector\000"
.LASF1004:
	.ascii	"S_COMMKEEN8\000"
.LASF111:
	.ascii	"SPR_PLSS\000"
.LASF853:
	.ascii	"S_SPID_PAIN2\000"
.LASF2021:
	.ascii	"P_CrossSpecialLine\000"
.LASF1478:
	.ascii	"dropoffz\000"
.LASF1692:
	.ascii	"sfx_oof\000"
.LASF1451:
	.ascii	"mass\000"
.LASF1733:
	.ascii	"sfx_posact\000"
.LASF886:
	.ascii	"S_BSPI_DIE1\000"
.LASF1205:
	.ascii	"S_DOGS_STND\000"
.LASF224:
	.ascii	"SPR_POB1\000"
.LASF225:
	.ascii	"SPR_POB2\000"
.LASF1770:
	.ascii	"sfx_dgdth\000"
.LASF1075:
	.ascii	"S_SOUL\000"
.LASF1724:
	.ascii	"sfx_skldth\000"
.LASF1175:
	.ascii	"S_GTORCHSHRT\000"
.LASF1085:
	.ascii	"S_PSTR\000"
.LASF917:
	.ascii	"S_CYBER_ATK1\000"
.LASF918:
	.ascii	"S_CYBER_ATK2\000"
.LASF919:
	.ascii	"S_CYBER_ATK3\000"
.LASF920:
	.ascii	"S_CYBER_ATK4\000"
.LASF921:
	.ascii	"S_CYBER_ATK5\000"
.LASF922:
	.ascii	"S_CYBER_ATK6\000"
.LASF1112:
	.ascii	"S_BFUG\000"
.LASF150:
	.ascii	"SPR_FCAN\000"
.LASF1947:
	.ascii	"telefrag\000"
.LASF1648:
	.ascii	"line_t\000"
.LASF595:
	.ascii	"S_FATT_STND\000"
.LASF1807:
	.ascii	"pr_sposattack\000"
.LASF1032:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1033:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1034:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF316:
	.ascii	"S_BFGUP\000"
.LASF1928:
	.ascii	"source\000"
.LASF1929:
	.ascii	"P_ChangeSector\000"
.LASF1484:
	.ascii	"intflags\000"
.LASF155:
	.ascii	"SPR_YKEY\000"
.LASF1542:
	.ascii	"m_thing\000"
.LASF703:
	.ascii	"S_TROO_RAISE1\000"
.LASF704:
	.ascii	"S_TROO_RAISE2\000"
.LASF705:
	.ascii	"S_TROO_RAISE3\000"
.LASF706:
	.ascii	"S_TROO_RAISE4\000"
.LASF707:
	.ascii	"S_TROO_RAISE5\000"
.LASF1651:
	.ascii	"subsector_t\000"
.LASF1116:
	.ascii	"S_PLAS\000"
.LASF998:
	.ascii	"S_COMMKEEN2\000"
.LASF999:
	.ascii	"S_COMMKEEN3\000"
.LASF1000:
	.ascii	"S_COMMKEEN4\000"
.LASF1001:
	.ascii	"S_COMMKEEN5\000"
.LASF382:
	.ascii	"S_PLAY\000"
.LASF948:
	.ascii	"S_PAIN_DIE2\000"
.LASF949:
	.ascii	"S_PAIN_DIE3\000"
.LASF950:
	.ascii	"S_PAIN_DIE4\000"
.LASF951:
	.ascii	"S_PAIN_DIE5\000"
.LASF952:
	.ascii	"S_PAIN_DIE6\000"
.LASF1290:
	.ascii	"MT_TROOP\000"
.LASF503:
	.ascii	"S_VILE_PAIN2\000"
.LASF1957:
	.ascii	"bottomslope\000"
.LASF631:
	.ascii	"S_FATT_RAISE1\000"
.LASF32:
	.ascii	"wp_plasma\000"
.LASF633:
	.ascii	"S_FATT_RAISE3\000"
.LASF634:
	.ascii	"S_FATT_RAISE4\000"
.LASF635:
	.ascii	"S_FATT_RAISE5\000"
.LASF636:
	.ascii	"S_FATT_RAISE6\000"
.LASF637:
	.ascii	"S_FATT_RAISE7\000"
.LASF638:
	.ascii	"S_FATT_RAISE8\000"
.LASF1792:
	.ascii	"pr_saw\000"
.LASF1497:
	.ascii	"lastenemy\000"
.LASF347:
	.ascii	"S_ROCKET\000"
.LASF1311:
	.ascii	"MT_HEADSHOT\000"
.LASF1893:
	.ascii	"frictionp\000"
.LASF1543:
	.ascii	"m_tprev\000"
.LASF1613:
	.ascii	"linecount\000"
.LASF1608:
	.ascii	"heightsec\000"
.LASF1628:
	.ascii	"sidenum\000"
.LASF900:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1139:
	.ascii	"S_STALAGTITE\000"
.LASF741:
	.ascii	"S_HEAD_PAIN2\000"
.LASF742:
	.ascii	"S_HEAD_PAIN3\000"
.LASF1255:
	.ascii	"S_BSKUL_ATK2\000"
.LASF55:
	.ascii	"byte\000"
.LASF1825:
	.ascii	"pr_friends\000"
.LASF1843:
	.ascii	"LO_WARN\000"
.LASF25:
	.ascii	"it_redskull\000"
.LASF1786:
	.ascii	"pr_spawnblood\000"
.LASF1734:
	.ascii	"sfx_bgact\000"
.LASF1318:
	.ascii	"MT_TFOG\000"
.LASF450:
	.ascii	"S_SPOS_ATK1\000"
.LASF451:
	.ascii	"S_SPOS_ATK2\000"
.LASF452:
	.ascii	"S_SPOS_ATK3\000"
.LASF387:
	.ascii	"S_PLAY_ATK1\000"
.LASF388:
	.ascii	"S_PLAY_ATK2\000"
.LASF1491:
	.ascii	"pursuecount\000"
.LASF138:
	.ascii	"SPR_APLS\000"
.LASF15:
	.ascii	"PU_LEVEL\000"
.LASF1620:
	.ascii	"ceilinglightsec\000"
.LASF1964:
	.ascii	"finesine\000"
.LASF1527:
	.ascii	"refire\000"
.LASF1853:
	.ascii	"desc\000"
.LASF1567:
	.ascii	"comp_doorlight\000"
.LASF1903:
	.ascii	"P_ApplyTorque\000"
.LASF1168:
	.ascii	"S_REDTORCH2\000"
.LASF1169:
	.ascii	"S_REDTORCH3\000"
.LASF1170:
	.ascii	"S_REDTORCH4\000"
.LASF677:
	.ascii	"S_TROO_RUN1\000"
.LASF678:
	.ascii	"S_TROO_RUN2\000"
.LASF679:
	.ascii	"S_TROO_RUN3\000"
.LASF680:
	.ascii	"S_TROO_RUN4\000"
.LASF681:
	.ascii	"S_TROO_RUN5\000"
.LASF682:
	.ascii	"S_TROO_RUN6\000"
.LASF683:
	.ascii	"S_TROO_RUN7\000"
.LASF684:
	.ascii	"S_TROO_RUN8\000"
.LASF1758:
	.ascii	"sfx_mandth\000"
.LASF1840:
	.ascii	"BOXRIGHT\000"
.LASF1896:
	.ascii	"boss\000"
.LASF129:
	.ascii	"SPR_CPOS\000"
.LASF592:
	.ascii	"S_FATSHOTX1\000"
.LASF593:
	.ascii	"S_FATSHOTX2\000"
.LASF594:
	.ascii	"S_FATSHOTX3\000"
.LASF672:
	.ascii	"S_CPOS_RAISE5\000"
.LASF673:
	.ascii	"S_CPOS_RAISE6\000"
.LASF674:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1846:
	.ascii	"LO_DEBUG\000"
.LASF27:
	.ascii	"wp_fist\000"
.LASF1444:
	.ascii	"missilestate\000"
.LASF159:
	.ascii	"SPR_STIM\000"
.LASF261:
	.ascii	"S_SGUN8\000"
.LASF1836:
	.ascii	"pr_class_t\000"
.LASF708:
	.ascii	"S_SARG_STND\000"
.LASF933:
	.ascii	"S_CYBER_DIE10\000"
.LASF109:
	.ascii	"SPR_BAL1\000"
.LASF110:
	.ascii	"SPR_BAL2\000"
.LASF132:
	.ascii	"SPR_BAL7\000"
.LASF1483:
	.ascii	"info\000"
.LASF1728:
	.ascii	"sfx_bspdth\000"
.LASF1127:
	.ascii	"S_HEADSONSTICK\000"
.LASF1422:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1763:
	.ascii	"sfx_skeact\000"
.LASF1477:
	.ascii	"ceilingz\000"
.LASF1759:
	.ascii	"sfx_sssit\000"
.LASF584:
	.ascii	"S_SKEL_RAISE1\000"
.LASF97:
	.ascii	"SPR_SHT2\000"
.LASF1425:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF238:
	.ascii	"S_PUNCH1\000"
.LASF239:
	.ascii	"S_PUNCH2\000"
.LASF240:
	.ascii	"S_PUNCH3\000"
.LASF241:
	.ascii	"S_PUNCH4\000"
.LASF242:
	.ascii	"S_PUNCH5\000"
.LASF601:
	.ascii	"S_FATT_RUN5\000"
.LASF237:
	.ascii	"S_PUNCHUP\000"
.LASF1810:
	.ascii	"pr_troopattack\000"
.LASF854:
	.ascii	"S_SPID_DIE1\000"
.LASF605:
	.ascii	"S_FATT_RUN9\000"
.LASF856:
	.ascii	"S_SPID_DIE3\000"
.LASF857:
	.ascii	"S_SPID_DIE4\000"
.LASF96:
	.ascii	"SPR_SHTF\000"
.LASF92:
	.ascii	"SPR_SHTG\000"
.LASF376:
	.ascii	"S_IFOG01\000"
.LASF377:
	.ascii	"S_IFOG02\000"
.LASF862:
	.ascii	"S_SPID_DIE9\000"
.LASF1827:
	.ascii	"pr_skiptarget\000"
.LASF1256:
	.ascii	"S_BSKUL_ATK3\000"
.LASF1104:
	.ascii	"S_AMMO\000"
.LASF1784:
	.ascii	"pr_spawnthing\000"
.LASF44:
	.ascii	"NUMAMMO\000"
.LASF935:
	.ascii	"S_PAIN_RUN1\000"
.LASF936:
	.ascii	"S_PAIN_RUN2\000"
.LASF937:
	.ascii	"S_PAIN_RUN3\000"
.LASF938:
	.ascii	"S_PAIN_RUN4\000"
.LASF218:
	.ascii	"SPR_HDB1\000"
.LASF219:
	.ascii	"SPR_HDB2\000"
.LASF220:
	.ascii	"SPR_HDB3\000"
.LASF221:
	.ascii	"SPR_HDB4\000"
.LASF222:
	.ascii	"SPR_HDB5\000"
.LASF223:
	.ascii	"SPR_HDB6\000"
.LASF1280:
	.ascii	"MT_POSSESSED\000"
.LASF270:
	.ascii	"S_DSGUN3\000"
.LASF271:
	.ascii	"S_DSGUN4\000"
.LASF1463:
	.ascii	"type\000"
.LASF1989:
	.ascii	"bmaporgy\000"
.LASF290:
	.ascii	"S_MISSILE\000"
.LASF275:
	.ascii	"S_DSGUN8\000"
.LASF1974:
	.ascii	"opentop\000"
.LASF1804:
	.ascii	"pr_see\000"
.LASF1652:
	.ascii	"divline_t\000"
.LASF59:
	.ascii	"doom_1666_compatibility\000"
.LASF1185:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1844:
	.ascii	"LO_ERROR\000"
.LASF1486:
	.ascii	"movedir\000"
.LASF1800:
	.ascii	"pr_missrange\000"
.LASF662:
	.ascii	"S_CPOS_XDIE1\000"
.LASF1566:
	.ascii	"comp_blazing\000"
.LASF1941:
	.ascii	"pe_x\000"
.LASF1942:
	.ascii	"pe_y\000"
.LASF1803:
	.ascii	"pr_newchasedir\000"
.LASF1799:
	.ascii	"pr_dmspawn\000"
.LASF1693:
	.ascii	"sfx_telept\000"
.LASF2032:
	.ascii	"Z_BFree\000"
.LASF82:
	.ascii	"actionf_t\000"
.LASF179:
	.ascii	"SPR_MGUN\000"
.LASF1292:
	.ascii	"MT_SHADOWS\000"
.LASF565:
	.ascii	"S_SKEL_RUN10\000"
.LASF566:
	.ascii	"S_SKEL_RUN11\000"
.LASF567:
	.ascii	"S_SKEL_RUN12\000"
.LASF233:
	.ascii	"S_NULL\000"
.LASF13:
	.ascii	"PU_SOUND\000"
.LASF775:
	.ascii	"S_BOSS_DIE1\000"
.LASF776:
	.ascii	"S_BOSS_DIE2\000"
.LASF777:
	.ascii	"S_BOSS_DIE3\000"
.LASF778:
	.ascii	"S_BOSS_DIE4\000"
.LASF779:
	.ascii	"S_BOSS_DIE5\000"
.LASF780:
	.ascii	"S_BOSS_DIE6\000"
.LASF781:
	.ascii	"S_BOSS_DIE7\000"
.LASF1826:
	.ascii	"pr_threshold\000"
.LASF945:
	.ascii	"S_PAIN_PAIN\000"
.LASF1951:
	.ascii	"tmxmove\000"
.LASF314:
	.ascii	"S_BFG\000"
.LASF1442:
	.ascii	"painsound\000"
.LASF1841:
	.ascii	"LO_INFO\000"
.LASF1787:
	.ascii	"pr_missile\000"
.LASF1560:
	.ascii	"player_t\000"
.LASF1624:
	.ascii	"special\000"
.LASF960:
	.ascii	"S_SSWV_STND2\000"
.LASF1924:
	.ascii	"P_LineAttack\000"
.LASF180:
	.ascii	"SPR_CSAW\000"
.LASF1095:
	.ascii	"S_PMAP\000"
.LASF1544:
	.ascii	"m_tnext\000"
.LASF1926:
	.ascii	"P_RadiusAttack\000"
.LASF988:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1101:
	.ascii	"S_PVIS\000"
.LASF315:
	.ascii	"S_BFGDOWN\000"
.LASF1706:
	.ascii	"sfx_vilsit\000"
.LASF1304:
	.ascii	"MT_BOSSBRAIN\000"
.LASF126:
	.ascii	"SPR_SKEL\000"
.LASF310:
	.ascii	"S_PLASMA1\000"
.LASF311:
	.ascii	"S_PLASMA2\000"
.LASF68:
	.ascii	"lxdoom_1_compatibility\000"
.LASF1970:
	.ascii	"skyflatnum\000"
.LASF1997:
	.ascii	"usething\000"
.LASF1433:
	.ascii	"doomednum\000"
.LASF1507:
	.ascii	"firstline\000"
.LASF1109:
	.ascii	"S_SHEL\000"
.LASF1815:
	.ascii	"pr_skelfist\000"
.LASF866:
	.ascii	"S_BSPI_STND2\000"
.LASF1582:
	.ascii	"comp_sound\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF1727:
	.ascii	"sfx_spidth\000"
.LASF124:
	.ascii	"SPR_FATB\000"
.LASF231:
	.ascii	"NUMSPRITES\000"
.LASF1849:
	.ascii	"block_memory_alloc_s\000"
.LASF1206:
	.ascii	"S_DOGS_STND2\000"
.LASF349:
	.ascii	"S_BFGSHOT2\000"
.LASF128:
	.ascii	"SPR_FATT\000"
.LASF1714:
	.ascii	"sfx_skeswg\000"
.LASF1076:
	.ascii	"S_SOUL2\000"
.LASF1077:
	.ascii	"S_SOUL3\000"
.LASF1078:
	.ascii	"S_SOUL4\000"
.LASF229:
	.ascii	"SPR_TNT1\000"
.LASF1080:
	.ascii	"S_SOUL6\000"
.LASF1876:
	.ascii	"PIT_ApplyTorque\000"
.LASF836:
	.ascii	"S_SPID_RUN1\000"
.LASF837:
	.ascii	"S_SPID_RUN2\000"
.LASF838:
	.ascii	"S_SPID_RUN3\000"
.LASF839:
	.ascii	"S_SPID_RUN4\000"
.LASF840:
	.ascii	"S_SPID_RUN5\000"
.LASF841:
	.ascii	"S_SPID_RUN6\000"
.LASF842:
	.ascii	"S_SPID_RUN7\000"
.LASF843:
	.ascii	"S_SPID_RUN8\000"
.LASF844:
	.ascii	"S_SPID_RUN9\000"
.LASF1043:
	.ascii	"S_BEXP3\000"
.LASF1044:
	.ascii	"S_BEXP4\000"
.LASF1672:
	.ascii	"sfx_rlaunc\000"
.LASF1225:
	.ascii	"S_DOGS_DIE6\000"
.LASF1885:
	.ascii	"PTR_SlideTraverse\000"
.LASF1132:
	.ascii	"S_DEADSTICK\000"
.LASF1536:
	.ascii	"fixedcolormap\000"
.LASF1616:
	.ascii	"floor_yoffs\000"
.LASF1521:
	.ascii	"weaponowned\000"
.LASF1306:
	.ascii	"MT_BOSSTARGET\000"
.LASF1952:
	.ascii	"tmymove\000"
.LASF1321:
	.ascii	"MT_EXTRABFG\000"
.LASF976:
	.ascii	"S_SSWV_PAIN2\000"
.LASF422:
	.ascii	"S_POSS_DIE1\000"
.LASF423:
	.ascii	"S_POSS_DIE2\000"
.LASF424:
	.ascii	"S_POSS_DIE3\000"
.LASF425:
	.ascii	"S_POSS_DIE4\000"
.LASF426:
	.ascii	"S_POSS_DIE5\000"
.LASF252:
	.ascii	"S_SGUNDOWN\000"
.LASF1761:
	.ascii	"sfx_keenpn\000"
.LASF99:
	.ascii	"SPR_CHGF\000"
.LASF98:
	.ascii	"SPR_CHGG\000"
.LASF903:
	.ascii	"S_ARACH_PLEX2\000"
.LASF904:
	.ascii	"S_ARACH_PLEX3\000"
.LASF905:
	.ascii	"S_ARACH_PLEX4\000"
.LASF906:
	.ascii	"S_ARACH_PLEX5\000"
.LASF647:
	.ascii	"S_CPOS_RUN7\000"
.LASF1489:
	.ascii	"target\000"
.LASF209:
	.ascii	"SPR_CEYE\000"
.LASF1235:
	.ascii	"S_PLS1BALL\000"
.LASF953:
	.ascii	"S_PAIN_RAISE1\000"
.LASF954:
	.ascii	"S_PAIN_RAISE2\000"
.LASF955:
	.ascii	"S_PAIN_RAISE3\000"
.LASF956:
	.ascii	"S_PAIN_RAISE4\000"
.LASF957:
	.ascii	"S_PAIN_RAISE5\000"
.LASF590:
	.ascii	"S_FATSHOT1\000"
.LASF591:
	.ascii	"S_FATSHOT2\000"
.LASF1814:
	.ascii	"pr_tracer\000"
.LASF1726:
	.ascii	"sfx_cybdth\000"
.LASF1639:
	.ascii	"ST_VERTICAL\000"
.LASF1922:
	.ascii	"distance\000"
.LASF166:
	.ascii	"SPR_SUIT\000"
.LASF818:
	.ascii	"S_SKULL_STND\000"
.LASF1996:
	.ascii	"attackrange\000"
.LASF1658:
	.ascii	"sfx_None\000"
.LASF1982:
	.ascii	"tmceilingz\000"
.LASF852:
	.ascii	"S_SPID_PAIN\000"
.LASF1431:
	.ascii	"NUMMOBJTYPES\000"
.LASF1561:
	.ascii	"comp_telefrag\000"
.LASF1954:
	.ascii	"aim_flags_mask\000"
.LASF148:
	.ascii	"SPR_BAR1\000"
.LASF1773:
	.ascii	"pr_skullfly\000"
.LASF265:
	.ascii	"S_DSGUN\000"
.LASF1144:
	.ascii	"S_CANDLESTIK\000"
.LASF50:
	.ascii	"pw_allmap\000"
.LASF1269:
	.ascii	"NUMSTATES\000"
.LASF330:
	.ascii	"S_TBALL1\000"
.LASF331:
	.ascii	"S_TBALL2\000"
.LASF544:
	.ascii	"S_SMOKE1\000"
.LASF545:
	.ascii	"S_SMOKE2\000"
.LASF546:
	.ascii	"S_SMOKE3\000"
.LASF547:
	.ascii	"S_SMOKE4\000"
.LASF548:
	.ascii	"S_SMOKE5\000"
.LASF767:
	.ascii	"S_BOSS_RUN6\000"
.LASF768:
	.ascii	"S_BOSS_RUN7\000"
.LASF769:
	.ascii	"S_BOSS_RUN8\000"
.LASF131:
	.ascii	"SPR_HEAD\000"
.LASF1845:
	.ascii	"LO_FATAL\000"
.LASF2011:
	.ascii	"Z_Realloc\000"
.LASF1474:
	.ascii	"bprev\000"
.LASF1882:
	.ascii	"PTR_NoWayTraverse\000"
.LASF192:
	.ascii	"SPR_POL1\000"
.LASF188:
	.ascii	"SPR_POL2\000"
.LASF191:
	.ascii	"SPR_POL3\000"
.LASF190:
	.ascii	"SPR_POL4\000"
.LASF189:
	.ascii	"SPR_POL5\000"
.LASF193:
	.ascii	"SPR_POL6\000"
.LASF1039:
	.ascii	"S_BAR1\000"
.LASF1731:
	.ascii	"sfx_pedth\000"
.LASF1690:
	.ascii	"sfx_itemup\000"
.LASF1950:
	.ascii	"slidemo\000"
.LASF1993:
	.ascii	"numspechit\000"
.LASF1322:
	.ascii	"MT_MISC0\000"
.LASF1125:
	.ascii	"S_DEADTORSO\000"
.LASF267:
	.ascii	"S_DSGUNUP\000"
.LASF1753:
	.ascii	"sfx_boscub\000"
.LASF1863:
	.ascii	"dropoff\000"
.LASF1715:
	.ascii	"sfx_pldeth\000"
.LASF1434:
	.ascii	"spawnstate\000"
.LASF1634:
	.ascii	"tranlump\000"
.LASF1834:
	.ascii	"pr_defect\000"
.LASF1824:
	.ascii	"pr_targetsearch\000"
.LASF676:
	.ascii	"S_TROO_STND2\000"
.LASF1196:
	.ascii	"S_TECH2LAMP\000"
.LASF1675:
	.ascii	"sfx_firxpl\000"
.LASF1678:
	.ascii	"sfx_doropn\000"
.LASF1819:
	.ascii	"pr_brainexp\000"
.LASF1308:
	.ascii	"MT_SPAWNFIRE\000"
.LASF1283:
	.ascii	"MT_FIRE\000"
.LASF1275:
	.ascii	"nextstate\000"
.LASF1366:
	.ascii	"MT_MISC37\000"
.LASF1609:
	.ascii	"bottommap\000"
.LASF1870:
	.ascii	"node\000"
.LASF773:
	.ascii	"S_BOSS_PAIN\000"
.LASF142:
	.ascii	"SPR_SSWV\000"
.LASF335:
	.ascii	"S_RBALL1\000"
.LASF336:
	.ascii	"S_RBALL2\000"
.LASF1688:
	.ascii	"sfx_pepain\000"
.LASF1140:
	.ascii	"S_TALLGRNCOL\000"
.LASF73:
	.ascii	"prboom_4_compatibility\000"
.LASF1494:
	.ascii	"lastlook\000"
.LASF1725:
	.ascii	"sfx_brsdth\000"
.LASF1661:
	.ascii	"sfx_sgcock\000"
.LASF1559:
	.ascii	"playerstate_t\000"
.LASF1129:
	.ascii	"S_HEADONASTICK\000"
.LASF1492:
	.ascii	"gear\000"
.LASF409:
	.ascii	"S_POSS_RUN1\000"
.LASF351:
	.ascii	"S_BFGLAND2\000"
.LASF352:
	.ascii	"S_BFGLAND3\000"
.LASF353:
	.ascii	"S_BFGLAND4\000"
.LASF354:
	.ascii	"S_BFGLAND5\000"
.LASF355:
	.ascii	"S_BFGLAND6\000"
.LASF415:
	.ascii	"S_POSS_RUN7\000"
.LASF416:
	.ascii	"S_POSS_RUN8\000"
.LASF2002:
	.ascii	"P_LineOpening\000"
.LASF398:
	.ascii	"S_PLAY_XDIE1\000"
.LASF399:
	.ascii	"S_PLAY_XDIE2\000"
.LASF400:
	.ascii	"S_PLAY_XDIE3\000"
.LASF401:
	.ascii	"S_PLAY_XDIE4\000"
.LASF402:
	.ascii	"S_PLAY_XDIE5\000"
.LASF403:
	.ascii	"S_PLAY_XDIE6\000"
.LASF404:
	.ascii	"S_PLAY_XDIE7\000"
.LASF405:
	.ascii	"S_PLAY_XDIE8\000"
.LASF406:
	.ascii	"S_PLAY_XDIE9\000"
.LASF804:
	.ascii	"S_BOS2_DIE1\000"
.LASF805:
	.ascii	"S_BOS2_DIE2\000"
.LASF806:
	.ascii	"S_BOS2_DIE3\000"
.LASF807:
	.ascii	"S_BOS2_DIE4\000"
.LASF808:
	.ascii	"S_BOS2_DIE5\000"
.LASF809:
	.ascii	"S_BOS2_DIE6\000"
.LASF810:
	.ascii	"S_BOS2_DIE7\000"
.LASF1454:
	.ascii	"flags\000"
.LASF730:
	.ascii	"S_SARG_RAISE2\000"
.LASF1918:
	.ascii	"traily\000"
.LASF374:
	.ascii	"S_TFOG10\000"
.LASF732:
	.ascii	"S_SARG_RAISE4\000"
.LASF1979:
	.ascii	"floatok\000"
.LASF427:
	.ascii	"S_POSS_XDIE1\000"
.LASF428:
	.ascii	"S_POSS_XDIE2\000"
.LASF429:
	.ascii	"S_POSS_XDIE3\000"
.LASF430:
	.ascii	"S_POSS_XDIE4\000"
.LASF431:
	.ascii	"S_POSS_XDIE5\000"
.LASF432:
	.ascii	"S_POSS_XDIE6\000"
.LASF433:
	.ascii	"S_POSS_XDIE7\000"
.LASF40:
	.ascii	"am_clip\000"
.LASF435:
	.ascii	"S_POSS_XDIE9\000"
.LASF1128:
	.ascii	"S_GIBS\000"
.LASF743:
	.ascii	"S_HEAD_DIE1\000"
.LASF744:
	.ascii	"S_HEAD_DIE2\000"
.LASF745:
	.ascii	"S_HEAD_DIE3\000"
.LASF746:
	.ascii	"S_HEAD_DIE4\000"
.LASF747:
	.ascii	"S_HEAD_DIE5\000"
.LASF748:
	.ascii	"S_HEAD_DIE6\000"
.LASF596:
	.ascii	"S_FATT_STND2\000"
.LASF1119:
	.ascii	"S_COLU\000"
.LASF246:
	.ascii	"S_PISTOL1\000"
.LASF247:
	.ascii	"S_PISTOL2\000"
.LASF248:
	.ascii	"S_PISTOL3\000"
.LASF249:
	.ascii	"S_PISTOL4\000"
.LASF585:
	.ascii	"S_SKEL_RAISE2\000"
.LASF586:
	.ascii	"S_SKEL_RAISE3\000"
.LASF587:
	.ascii	"S_SKEL_RAISE4\000"
.LASF588:
	.ascii	"S_SKEL_RAISE5\000"
.LASF589:
	.ascii	"S_SKEL_RAISE6\000"
.LASF1148:
	.ascii	"S_BIGTREE\000"
.LASF1641:
	.ascii	"ST_NEGATIVE\000"
.LASF1058:
	.ascii	"S_BON2C\000"
.LASF1059:
	.ascii	"S_BON2D\000"
.LASF364:
	.ascii	"S_TFOG01\000"
.LASF365:
	.ascii	"S_TFOG02\000"
.LASF181:
	.ascii	"SPR_LAUN\000"
.LASF2022:
	.ascii	"P_SpawnMobj\000"
.LASF420:
	.ascii	"S_POSS_PAIN\000"
.LASF755:
	.ascii	"S_BRBALL1\000"
.LASF756:
	.ascii	"S_BRBALL2\000"
.LASF1286:
	.ascii	"MT_SMOKE\000"
.LASF1300:
	.ascii	"MT_CYBORG\000"
.LASF1881:
	.ascii	"thingbottomslope\000"
.LASF1452:
	.ascii	"damage\000"
.LASF460:
	.ascii	"S_SPOS_XDIE1\000"
.LASF461:
	.ascii	"S_SPOS_XDIE2\000"
.LASF462:
	.ascii	"S_SPOS_XDIE3\000"
.LASF463:
	.ascii	"S_SPOS_XDIE4\000"
.LASF464:
	.ascii	"S_SPOS_XDIE5\000"
.LASF465:
	.ascii	"S_SPOS_XDIE6\000"
.LASF466:
	.ascii	"S_SPOS_XDIE7\000"
.LASF467:
	.ascii	"S_SPOS_XDIE8\000"
.LASF468:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1591:
	.ascii	"no_toptextures\000"
.LASF1686:
	.ascii	"sfx_vipain\000"
.LASF38:
	.ascii	"size_t\000"
.LASF1469:
	.ascii	"mobj_s\000"
.LASF1548:
	.ascii	"mobj_t\000"
.LASF1627:
	.ascii	"iLineID\000"
.LASF2026:
	.ascii	"Z_BMalloc\000"
.LASF1625:
	.ascii	"oldspecial\000"
.LASF1061:
	.ascii	"S_BKEY\000"
.LASF1960:
	.ascii	"bombdamage\000"
.LASF48:
	.ascii	"pw_invisibility\000"
.LASF1430:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF1633:
	.ascii	"specialdata\000"
.LASF146:
	.ascii	"SPR_ARM1\000"
.LASF147:
	.ascii	"SPR_ARM2\000"
.LASF1282:
	.ascii	"MT_VILE\000"
.LASF1677:
	.ascii	"sfx_pstop\000"
.LASF23:
	.ascii	"it_blueskull\000"
.LASF1600:
	.ascii	"soundorg\000"
.LASF1423:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF1990:
	.ascii	"monsters_infight\000"
.LASF308:
	.ascii	"S_PLASMADOWN\000"
.LASF620:
	.ascii	"S_FATT_PAIN2\000"
.LASF1762:
	.ascii	"sfx_keendt\000"
.LASF1018:
	.ascii	"S_BRAINEYESEE\000"
.LASF1218:
	.ascii	"S_DOGS_PAIN\000"
.LASF555:
	.ascii	"S_SKEL_STND2\000"
.LASF1249:
	.ascii	"S_BSKUL_STND\000"
.LASF908:
	.ascii	"S_CYBER_STND2\000"
.LASF1278:
	.ascii	"state_t\000"
.LASF752:
	.ascii	"S_HEAD_RAISE4\000"
.LASF978:
	.ascii	"S_SSWV_DIE2\000"
.LASF1737:
	.ascii	"sfx_bspwlk\000"
.LASF434:
	.ascii	"S_POSS_XDIE8\000"
.LASF1202:
	.ascii	"S_DETONATE\000"
.LASF1573:
	.ascii	"comp_pursuit\000"
.LASF1108:
	.ascii	"S_CELP\000"
.LASF1150:
	.ascii	"S_EVILEYE\000"
.LASF69:
	.ascii	"mbf_compatibility\000"
.LASF1177:
	.ascii	"S_GTORCHSHRT3\000"
.LASF1178:
	.ascii	"S_GTORCHSHRT4\000"
.LASF70:
	.ascii	"prboom_1_compatibility\000"
.LASF1857:
	.ascii	"PIT_CheckLine\000"
.LASF1511:
	.ascii	"viewheight\000"
.LASF1473:
	.ascii	"bnext\000"
.LASF1862:
	.ascii	"P_TryMove\000"
.LASF1756:
	.ascii	"sfx_bosdth\000"
.LASF609:
	.ascii	"S_FATT_ATK1\000"
.LASF140:
	.ascii	"SPR_CYBR\000"
.LASF1889:
	.ascii	"addr\000"
.LASF610:
	.ascii	"S_FATT_ATK2\000"
.LASF513:
	.ascii	"S_VILE_DIE10\000"
.LASF101:
	.ascii	"SPR_MISF\000"
.LASF100:
	.ascii	"SPR_MISG\000"
.LASF113:
	.ascii	"SPR_MISL\000"
.LASF1067:
	.ascii	"S_BSKULL\000"
.LASF1466:
	.ascii	"MIF_FALLING\000"
.LASF144:
	.ascii	"SPR_BBRN\000"
.LASF488:
	.ascii	"S_VILE_ATK1\000"
.LASF489:
	.ascii	"S_VILE_ATK2\000"
.LASF490:
	.ascii	"S_VILE_ATK3\000"
.LASF491:
	.ascii	"S_VILE_ATK4\000"
.LASF492:
	.ascii	"S_VILE_ATK5\000"
.LASF493:
	.ascii	"S_VILE_ATK6\000"
.LASF494:
	.ascii	"S_VILE_ATK7\000"
.LASF235:
	.ascii	"S_PUNCH\000"
.LASF496:
	.ascii	"S_VILE_ATK9\000"
.LASF215:
	.ascii	"SPR_SMBT\000"
.LASF1742:
	.ascii	"sfx_hoof\000"
.LASF1488:
	.ascii	"strafecount\000"
.LASF1215:
	.ascii	"S_DOGS_ATK1\000"
.LASF1216:
	.ascii	"S_DOGS_ATK2\000"
.LASF1217:
	.ascii	"S_DOGS_ATK3\000"
.LASF791:
	.ascii	"S_BOS2_RUN1\000"
.LASF792:
	.ascii	"S_BOS2_RUN2\000"
.LASF793:
	.ascii	"S_BOS2_RUN3\000"
.LASF794:
	.ascii	"S_BOS2_RUN4\000"
.LASF795:
	.ascii	"S_BOS2_RUN5\000"
.LASF796:
	.ascii	"S_BOS2_RUN6\000"
.LASF797:
	.ascii	"S_BOS2_RUN7\000"
.LASF798:
	.ascii	"S_BOS2_RUN8\000"
.LASF1623:
	.ascii	"lightlevel\000"
.LASF206:
	.ascii	"SPR_TRE1\000"
.LASF207:
	.ascii	"SPR_TRE2\000"
.LASF76:
	.ascii	"MAX_COMPATIBILITY_LEVEL\000"
.LASF865:
	.ascii	"S_BSPI_STND\000"
.LASF1673:
	.ascii	"sfx_rxplod\000"
.LASF1816:
	.ascii	"pr_scream\000"
.LASF1443:
	.ascii	"meleestate\000"
.LASF1522:
	.ascii	"ammo\000"
.LASF655:
	.ascii	"S_CPOS_DIE1\000"
.LASF214:
	.ascii	"SPR_TRED\000"
.LASF107:
	.ascii	"SPR_BLUD\000"
.LASF611:
	.ascii	"S_FATT_ATK3\000"
.LASF612:
	.ascii	"S_FATT_ATK4\000"
.LASF613:
	.ascii	"S_FATT_ATK5\000"
.LASF614:
	.ascii	"S_FATT_ATK6\000"
.LASF615:
	.ascii	"S_FATT_ATK7\000"
.LASF616:
	.ascii	"S_FATT_ATK8\000"
.LASF617:
	.ascii	"S_FATT_ATK9\000"
.LASF1986:
	.ascii	"sector_list\000"
.LASF1426:
	.ascii	"MT_STEALTHIMP\000"
.LASF117:
	.ascii	"SPR_TFOG\000"
.LASF1258:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1259:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF323:
	.ascii	"S_BLOOD1\000"
.LASF324:
	.ascii	"S_BLOOD2\000"
.LASF325:
	.ascii	"S_BLOOD3\000"
.LASF1963:
	.ascii	"onground\000"
.LASF1276:
	.ascii	"misc1\000"
.LASF1277:
	.ascii	"misc2\000"
.LASF1684:
	.ascii	"sfx_dmpain\000"
.LASF1419:
	.ascii	"MT_STEALTHBABY\000"
.LASF1551:
	.ascii	"angleturn\000"
.LASF1900:
	.ascii	"P_CheckPosition\000"
.LASF1914:
	.ascii	"stairstep\000"
.LASF1115:
	.ascii	"S_LAUN\000"
.LASF1998:
	.ascii	"secnodezone\000"
.LASF1201:
	.ascii	"S_GRENADE\000"
.LASF1915:
	.ascii	"leadx\000"
.LASF375:
	.ascii	"S_IFOG\000"
.LASF2031:
	.ascii	"P_MapEnd\000"
.LASF120:
	.ascii	"SPR_POSS\000"
.LASF125:
	.ascii	"SPR_FBXP\000"
.LASF924:
	.ascii	"S_CYBER_DIE1\000"
.LASF925:
	.ascii	"S_CYBER_DIE2\000"
.LASF926:
	.ascii	"S_CYBER_DIE3\000"
.LASF927:
	.ascii	"S_CYBER_DIE4\000"
.LASF928:
	.ascii	"S_CYBER_DIE5\000"
.LASF929:
	.ascii	"S_CYBER_DIE6\000"
.LASF930:
	.ascii	"S_CYBER_DIE7\000"
.LASF802:
	.ascii	"S_BOS2_PAIN\000"
.LASF932:
	.ascii	"S_CYBER_DIE9\000"
.LASF1495:
	.ascii	"spawnpoint\000"
.LASF56:
	.ascii	"int_64_t\000"
.LASF1271:
	.ascii	"sprite\000"
.LASF1540:
	.ascii	"msecnode_s\000"
.LASF1649:
	.ascii	"msecnode_t\000"
.LASF1349:
	.ascii	"MT_MISC23\000"
.LASF2008:
	.ascii	"P_ShootSpecialLine\000"
.LASF1820:
	.ascii	"pr_spawnfly\000"
.LASF1607:
	.ascii	"nextsec\000"
.LASF1606:
	.ascii	"prevsec\000"
.LASF75:
	.ascii	"prboom_6_compatibility\000"
.LASF1145:
	.ascii	"S_CANDELABRA\000"
.LASF485:
	.ascii	"S_VILE_RUN10\000"
.LASF486:
	.ascii	"S_VILE_RUN11\000"
.LASF487:
	.ascii	"S_VILE_RUN12\000"
.LASF2001:
	.ascii	"P_DamageMobj\000"
.LASF1105:
	.ascii	"S_ROCK\000"
.LASF254:
	.ascii	"S_SGUN1\000"
.LASF255:
	.ascii	"S_SGUN2\000"
.LASF256:
	.ascii	"S_SGUN3\000"
.LASF257:
	.ascii	"S_SGUN4\000"
.LASF258:
	.ascii	"S_SGUN5\000"
.LASF259:
	.ascii	"S_SGUN6\000"
.LASF260:
	.ascii	"S_SGUN7\000"
.LASF57:
	.ascii	"uint_64_t\000"
.LASF262:
	.ascii	"S_SGUN9\000"
.LASF230:
	.ascii	"SPR_DOGS\000"
.LASF251:
	.ascii	"S_SGUN\000"
.LASF1141:
	.ascii	"S_SHRTGRNCOL\000"
.LASF1760:
	.ascii	"sfx_ssdth\000"
.LASF1750:
	.ascii	"sfx_flamst\000"
.LASF826:
	.ascii	"S_SKULL_PAIN\000"
.LASF1307:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1871:
	.ascii	"PIT_GetSectors\000"
.LASF550:
	.ascii	"S_TRACER2\000"
.LASF1149:
	.ascii	"S_TECHPILLAR\000"
.LASF554:
	.ascii	"S_SKEL_STND\000"
.LASF709:
	.ascii	"S_SARG_STND2\000"
.LASF2007:
	.ascii	"P_SpawnPuff\000"
.LASF1743:
	.ascii	"sfx_metal\000"
.LASF1592:
	.ascii	"no_bottomtextures\000"
.LASF455:
	.ascii	"S_SPOS_DIE1\000"
.LASF456:
	.ascii	"S_SPOS_DIE2\000"
.LASF457:
	.ascii	"S_SPOS_DIE3\000"
.LASF458:
	.ascii	"S_SPOS_DIE4\000"
.LASF459:
	.ascii	"S_SPOS_DIE5\000"
.LASF1558:
	.ascii	"PST_REBORN\000"
.LASF1710:
	.ascii	"sfx_sgtatk\000"
.LASF18:
	.ascii	"PU_NEWBLOCK\000"
.LASF1184:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF1268:
	.ascii	"S_MUSHROOM\000"
.LASF1828:
	.ascii	"pr_enemystrafe\000"
.LASF1707:
	.ascii	"sfx_mansit\000"
.LASF718:
	.ascii	"S_SARG_ATK1\000"
.LASF719:
	.ascii	"S_SARG_ATK2\000"
.LASF720:
	.ascii	"S_SARG_ATK3\000"
.LASF309:
	.ascii	"S_PLASMAUP\000"
.LASF2016:
	.ascii	"R_PointInSubsector\000"
.LASF1273:
	.ascii	"tics\000"
.LASF379:
	.ascii	"S_IFOG3\000"
.LASF1065:
	.ascii	"S_YKEY\000"
.LASF1681:
	.ascii	"sfx_swtchn\000"
.LASF1448:
	.ascii	"speed\000"
.LASF1629:
	.ascii	"bbox\000"
.LASF278:
	.ascii	"S_DSNR1\000"
.LASF947:
	.ascii	"S_PAIN_DIE1\000"
.LASF1682:
	.ascii	"sfx_swtchx\000"
.LASF1916:
	.ascii	"leady\000"
.LASF1595:
	.ascii	"nexttag\000"
.LASF1955:
	.ascii	"aimslope\000"
.LASF477:
	.ascii	"S_VILE_RUN2\000"
.LASF1748:
	.ascii	"sfx_itmbk\000"
.LASF1195:
	.ascii	"S_TECHLAMP4\000"
.LASF641:
	.ascii	"S_CPOS_RUN1\000"
.LASF642:
	.ascii	"S_CPOS_RUN2\000"
.LASF643:
	.ascii	"S_CPOS_RUN3\000"
.LASF644:
	.ascii	"S_CPOS_RUN4\000"
.LASF645:
	.ascii	"S_CPOS_RUN5\000"
.LASF646:
	.ascii	"S_CPOS_RUN6\000"
.LASF177:
	.ascii	"SPR_BPAK\000"
.LASF648:
	.ascii	"S_CPOS_RUN8\000"
.LASF1045:
	.ascii	"S_BEXP5\000"
.LASF1765:
	.ascii	"sfx_skeatk\000"
.LASF1465:
	.ascii	"mapthing_t\000"
.LASF410:
	.ascii	"S_POSS_RUN2\000"
.LASF1921:
	.ascii	"P_AimLineAttack\000"
.LASF11:
	.ascii	"PU_FREE\000"
.LASF412:
	.ascii	"S_POSS_RUN4\000"
.LASF729:
	.ascii	"S_SARG_RAISE1\000"
.LASF413:
	.ascii	"S_POSS_RUN5\000"
.LASF731:
	.ascii	"S_SARG_RAISE3\000"
.LASF414:
	.ascii	"S_POSS_RUN6\000"
.LASF733:
	.ascii	"S_SARG_RAISE5\000"
.LASF734:
	.ascii	"S_SARG_RAISE6\000"
.LASF1821:
	.ascii	"pr_misc\000"
.LASF1717:
	.ascii	"sfx_podth1\000"
.LASF1718:
	.ascii	"sfx_podth2\000"
.LASF1719:
	.ascii	"sfx_podth3\000"
.LASF1382:
	.ascii	"MT_MISC53\000"
.LASF1772:
	.ascii	"NUMSFX\000"
.LASF216:
	.ascii	"SPR_SMGT\000"
.LASF1956:
	.ascii	"topslope\000"
.LASF1009:
	.ascii	"S_KEENPAIN\000"
.LASF357:
	.ascii	"S_BFGEXP2\000"
.LASF358:
	.ascii	"S_BFGEXP3\000"
.LASF359:
	.ascii	"S_BFGEXP4\000"
.LASF288:
	.ascii	"S_CHAINFLASH1\000"
.LASF289:
	.ascii	"S_CHAINFLASH2\000"
.LASF244:
	.ascii	"S_PISTOLDOWN\000"
.LASF1654:
	.ascii	"line\000"
.LASF1645:
	.ascii	"RF_BOT_TILE\000"
.LASF909:
	.ascii	"S_CYBER_RUN1\000"
.LASF910:
	.ascii	"S_CYBER_RUN2\000"
.LASF911:
	.ascii	"S_CYBER_RUN3\000"
.LASF912:
	.ascii	"S_CYBER_RUN4\000"
.LASF913:
	.ascii	"S_CYBER_RUN5\000"
.LASF914:
	.ascii	"S_CYBER_RUN6\000"
.LASF915:
	.ascii	"S_CYBER_RUN7\000"
.LASF916:
	.ascii	"S_CYBER_RUN8\000"
.LASF1437:
	.ascii	"seesound\000"
.LASF1949:
	.ascii	"bestslideline\000"
.LASF1096:
	.ascii	"S_PMAP2\000"
.LASF1097:
	.ascii	"S_PMAP3\000"
.LASF1098:
	.ascii	"S_PMAP4\000"
.LASF1099:
	.ascii	"S_PMAP5\000"
.LASF1100:
	.ascii	"S_PMAP6\000"
.LASF1533:
	.ascii	"bonuscount\000"
.LASF827:
	.ascii	"S_SKULL_PAIN2\000"
.LASF72:
	.ascii	"prboom_3_compatibility\000"
.LASF1794:
	.ascii	"pr_gunshot\000"
.LASF1441:
	.ascii	"painchance\000"
.LASF653:
	.ascii	"S_CPOS_PAIN\000"
.LASF1720:
	.ascii	"sfx_bgdth1\000"
.LASF1594:
	.ascii	"ceilingheight\000"
.LASF130:
	.ascii	"SPR_SARG\000"
.LASF1665:
	.ascii	"sfx_dbload\000"
.LASF1500:
	.ascii	"touching_sectorlist\000"
.LASF958:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1418:
	.ascii	"MT_DOGS\000"
.LASF1365:
	.ascii	"MT_MISC36\000"
.LASF762:
	.ascii	"S_BOSS_RUN1\000"
.LASF763:
	.ascii	"S_BOSS_RUN2\000"
.LASF764:
	.ascii	"S_BOSS_RUN3\000"
.LASF16:
	.ascii	"PU_LEVSPEC\000"
.LASF765:
	.ascii	"S_BOSS_RUN4\000"
.LASF766:
	.ascii	"S_BOSS_RUN5\000"
.LASF284:
	.ascii	"S_CHAINUP\000"
.LASF236:
	.ascii	"S_PUNCHDOWN\000"
.LASF1528:
	.ascii	"killcount\000"
.LASF1147:
	.ascii	"S_TORCHTREE\000"
.LASF959:
	.ascii	"S_SSWV_STND\000"
.LASF1992:
	.ascii	"spechit\000"
.LASF1006:
	.ascii	"S_COMMKEEN10\000"
.LASF1007:
	.ascii	"S_COMMKEEN11\000"
.LASF1008:
	.ascii	"S_COMMKEEN12\000"
.LASF923:
	.ascii	"S_CYBER_PAIN\000"
.LASF442:
	.ascii	"S_SPOS_RUN1\000"
.LASF198:
	.ascii	"SPR_SMIT\000"
.LASF54:
	.ascii	"boolean\000"
.LASF445:
	.ascii	"S_SPOS_RUN4\000"
.LASF446:
	.ascii	"S_SPOS_RUN5\000"
.LASF135:
	.ascii	"SPR_SKUL\000"
.LASF448:
	.ascii	"S_SPOS_RUN7\000"
.LASF449:
	.ascii	"S_SPOS_RUN8\000"
.LASF1106:
	.ascii	"S_BROK\000"
.LASF1435:
	.ascii	"spawnhealth\000"
.LASF1420:
	.ascii	"MT_STEALTHVILE\000"
.LASF2000:
	.ascii	"P_BoxOnLineSide\000"
.LASF902:
	.ascii	"S_ARACH_PLEX\000"
.LASF1163:
	.ascii	"S_GREENTORCH\000"
.LASF35:
	.ascii	"wp_supershotgun\000"
.LASF302:
	.ascii	"S_SAWDOWN\000"
.LASF1242:
	.ascii	"S_PLS2BALL\000"
.LASF2025:
	.ascii	"P_PathTraverse\000"
.LASF1671:
	.ascii	"sfx_sawhit\000"
.LASF1670:
	.ascii	"sfx_sawful\000"
.LASF1270:
	.ascii	"statenum_t\000"
.LASF1310:
	.ascii	"MT_TROOPSHOT\000"
.LASF1605:
	.ascii	"stairlock\000"
.LASF1295:
	.ascii	"MT_BRUISERSHOT\000"
.LASF1738:
	.ascii	"sfx_vilact\000"
.LASF1603:
	.ascii	"ceilingdata\000"
.LASF1925:
	.ascii	"P_UseLines\000"
.LASF2019:
	.ascii	"P_SetThingPosition\000"
.LASF1555:
	.ascii	"ticcmd_t\000"
.LASF1415:
	.ascii	"MT_MISC86\000"
.LASF1457:
	.ascii	"ps_weapon\000"
.LASF1703:
	.ascii	"sfx_spisit\000"
.LASF390:
	.ascii	"S_PLAY_PAIN2\000"
.LASF1421:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF1669:
	.ascii	"sfx_sawidl\000"
.LASF785:
	.ascii	"S_BOSS_RAISE4\000"
.LASF786:
	.ascii	"S_BOSS_RAISE5\000"
.LASF1272:
	.ascii	"frame\000"
.LASF1975:
	.ascii	"openbottom\000"
.LASF127:
	.ascii	"SPR_MANF\000"
.LASF640:
	.ascii	"S_CPOS_STND2\000"
.LASF1736:
	.ascii	"sfx_bspact\000"
.LASF453:
	.ascii	"S_SPOS_PAIN\000"
.LASF29:
	.ascii	"wp_shotgun\000"
.LASF1938:
	.ascii	"P_MapStart\000"
.LASF421:
	.ascii	"S_POSS_PAIN2\000"
.LASF1316:
	.ascii	"MT_PUFF\000"
.LASF1568:
	.ascii	"comp_model\000"
.LASF1868:
	.ascii	"P_AddSecnode\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF293:
	.ascii	"S_MISSILE1\000"
.LASF294:
	.ascii	"S_MISSILE2\000"
.LASF295:
	.ascii	"S_MISSILE3\000"
.LASF669:
	.ascii	"S_CPOS_RAISE2\000"
.LASF670:
	.ascii	"S_CPOS_RAISE3\000"
.LASF671:
	.ascii	"S_CPOS_RAISE4\000"
.LASF1520:
	.ascii	"pendingweapon\000"
.LASF1793:
	.ascii	"pr_plasma\000"
.LASF1113:
	.ascii	"S_MGUN\000"
.LASF1978:
	.ascii	"trace\000"
.LASF1294:
	.ascii	"MT_BRUISER\000"
.LASF176:
	.ascii	"SPR_SBOX\000"
.LASF1530:
	.ascii	"secretcount\000"
.LASF1432:
	.ascii	"mobjtype_t\000"
.LASF1446:
	.ascii	"xdeathstate\000"
.LASF1961:
	.ascii	"crushchange\000"
.LASF1904:
	.ascii	"P_HitSlideLine\000"
.LASF1515:
	.ascii	"powers\000"
.LASF2005:
	.ascii	"P_TouchSpecialThing\000"
.LASF822:
	.ascii	"S_SKULL_ATK1\000"
.LASF823:
	.ascii	"S_SKULL_ATK2\000"
.LASF824:
	.ascii	"S_SKULL_ATK3\000"
.LASF825:
	.ascii	"S_SKULL_ATK4\000"
.LASF803:
	.ascii	"S_BOS2_PAIN2\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF1296:
	.ascii	"MT_KNIGHT\000"
.LASF1579:
	.ascii	"comp_zerotags\000"
.LASF2:
	.ascii	"signed char\000"
.LASF1888:
	.ascii	"SpechitOverrun\000"
.LASF1985:
	.ascii	"linetarget\000"
.LASF1798:
	.ascii	"pr_slimehurt\000"
.LASF1550:
	.ascii	"sidemove\000"
.LASF1453:
	.ascii	"activesound\000"
.LASF1878:
	.ascii	"PTR_AimTraverse\000"
.LASF1872:
	.ascii	"PIT_CrossLine\000"
.LASF454:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1222:
	.ascii	"S_DOGS_DIE3\000"
.LASF1835:
	.ascii	"NUMPRCLASS\000"
.LASF1741:
	.ascii	"sfx_punch\000"
.LASF618:
	.ascii	"S_FATT_ATK10\000"
.LASF1646:
	.ascii	"RF_IGNORE\000"
.LASF213:
	.ascii	"SPR_TGRN\000"
.LASF1838:
	.ascii	"BOXBOTTOM\000"
.LASF1959:
	.ascii	"bombspot\000"
.LASF1341:
	.ascii	"MT_MEGA\000"
.LASF115:
	.ascii	"SPR_BFE1\000"
.LASF116:
	.ascii	"SPR_BFE2\000"
.LASF1373:
	.ascii	"MT_MISC44\000"
.LASF1374:
	.ascii	"MT_MISC45\000"
.LASF1994:
	.ascii	"shootz\000"
.LASF1375:
	.ascii	"MT_MISC46\000"
.LASF1967:
	.ascii	"comp\000"
.LASF1303:
	.ascii	"MT_KEEN\000"
.LASF1599:
	.ascii	"blockbox\000"
.LASF1019:
	.ascii	"S_BRAINEYE1\000"
.LASF675:
	.ascii	"S_TROO_STND\000"
.LASF622:
	.ascii	"S_FATT_DIE2\000"
.LASF313:
	.ascii	"S_PLASMAFLASH2\000"
.LASF39:
	.ascii	"weapontype_t\000"
.LASF1553:
	.ascii	"chatchar\000"
.LASF366:
	.ascii	"S_TFOG2\000"
.LASF367:
	.ascii	"S_TFOG3\000"
.LASF368:
	.ascii	"S_TFOG4\000"
.LASF369:
	.ascii	"S_TFOG5\000"
.LASF370:
	.ascii	"S_TFOG6\000"
.LASF371:
	.ascii	"S_TFOG7\000"
.LASF372:
	.ascii	"S_TFOG8\000"
.LASF373:
	.ascii	"S_TFOG9\000"
.LASF788:
	.ascii	"S_BOSS_RAISE7\000"
.LASF1524:
	.ascii	"attackdown\000"
.LASF91:
	.ascii	"SPR_TROO\000"
.LASF1200:
	.ascii	"S_TNT1\000"
.LASF1771:
	.ascii	"sfx_dgpain\000"
.LASF102:
	.ascii	"SPR_SAWG\000"
.LASF1699:
	.ascii	"sfx_sgtsit\000"
.LASF2003:
	.ascii	"P_Random\000"
.LASF151:
	.ascii	"SPR_BON1\000"
.LASF152:
	.ascii	"SPR_BON2\000"
.LASF1783:
	.ascii	"pr_lastlook\000"
.LASF1991:
	.ascii	"tmdropoffz\000"
.LASF1722:
	.ascii	"sfx_sgtdth\000"
.LASF1642:
	.ascii	"slopetype_t\000"
.LASF22:
	.ascii	"it_redcard\000"
.LASF1142:
	.ascii	"S_TALLREDCOL\000"
.LASF2006:
	.ascii	"I_Error\000"
.LASF1785:
	.ascii	"pr_spawnpuff\000"
.LASF1782:
	.ascii	"pr_respawn\000"
.LASF1569:
	.ascii	"comp_god\000"
.LASF1460:
	.ascii	"state\000"
.LASF1117:
	.ascii	"S_SHOT\000"
.LASF973:
	.ascii	"S_SSWV_ATK5\000"
.LASF1122:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF1123:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1124:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF863:
	.ascii	"S_SPID_DIE10\000"
.LASF864:
	.ascii	"S_SPID_DIE11\000"
.LASF1516:
	.ascii	"cards\000"
.LASF1797:
	.ascii	"pr_bfg\000"
.LASF1839:
	.ascii	"BOXLEFT\000"
.LASF208:
	.ascii	"SPR_ELEC\000"
.LASF1011:
	.ascii	"S_BRAIN\000"
.LASF2004:
	.ascii	"P_SetMobjState\000"
.LASF1244:
	.ascii	"S_PLS2BALLX1\000"
.LASF1245:
	.ascii	"S_PLS2BALLX2\000"
.LASF1246:
	.ascii	"S_PLS2BALLX3\000"
.LASF1298:
	.ascii	"MT_SPIDER\000"
.LASF74:
	.ascii	"prboom_5_compatibility\000"
.LASF106:
	.ascii	"SPR_BFGF\000"
.LASF105:
	.ascii	"SPR_BFGG\000"
.LASF1966:
	.ascii	"compatibility_level\000"
.LASF1601:
	.ascii	"thinglist\000"
.LASF1498:
	.ascii	"friction\000"
.LASF934:
	.ascii	"S_PAIN_STND\000"
.LASF1701:
	.ascii	"sfx_brssit\000"
.LASF1980:
	.ascii	"felldown\000"
.LASF350:
	.ascii	"S_BFGLAND\000"
.LASF1040:
	.ascii	"S_BAR2\000"
.LASF1207:
	.ascii	"S_DOGS_RUN1\000"
.LASF1208:
	.ascii	"S_DOGS_RUN2\000"
.LASF1209:
	.ascii	"S_DOGS_RUN3\000"
.LASF1210:
	.ascii	"S_DOGS_RUN4\000"
.LASF86:
	.ascii	"function\000"
.LASF1211:
	.ascii	"S_DOGS_RUN5\000"
.LASF1212:
	.ascii	"S_DOGS_RUN6\000"
.LASF1744:
	.ascii	"sfx_chgun\000"
.LASF41:
	.ascii	"am_shell\000"
.LASF1482:
	.ascii	"validcount\000"
.LASF1895:
	.ascii	"P_TeleportMove\000"
.LASF1953:
	.ascii	"shootthing\000"
.LASF1940:
	.ascii	"tmthing\000"
.LASF1531:
	.ascii	"message\000"
.LASF88:
	.ascii	"cprev\000"
.LASF79:
	.ascii	"complevel_t\000"
.LASF630:
	.ascii	"S_FATT_DIE10\000"
.LASF411:
	.ascii	"S_POSS_RUN3\000"
.LASF26:
	.ascii	"NUMCARDS\000"
.LASF1167:
	.ascii	"S_REDTORCH\000"
.LASF1314:
	.ascii	"MT_BFG\000"
.LASF1611:
	.ascii	"topmap\000"
.LASF1912:
	.ascii	"hitcount\000"
.LASF122:
	.ascii	"SPR_VILE\000"
.LASF1747:
	.ascii	"sfx_bdcls\000"
.LASF1317:
	.ascii	"MT_BLOOD\000"
.LASF243:
	.ascii	"S_PISTOL\000"
.LASF1873:
	.ascii	"untouched\000"
.LASF1933:
	.ascii	"P_DelSeclist\000"
.LASF2018:
	.ascii	"P_UnsetThingPosition\000"
.LASF475:
	.ascii	"S_VILE_STND2\000"
.LASF61:
	.ascii	"ultdoom_compatibility\000"
.LASF893:
	.ascii	"S_BSPI_RAISE1\000"
.LASF894:
	.ascii	"S_BSPI_RAISE2\000"
.LASF895:
	.ascii	"S_BSPI_RAISE3\000"
.LASF896:
	.ascii	"S_BSPI_RAISE4\000"
.LASF897:
	.ascii	"S_BSPI_RAISE5\000"
.LASF898:
	.ascii	"S_BSPI_RAISE6\000"
.LASF899:
	.ascii	"S_BSPI_RAISE7\000"
.LASF1479:
	.ascii	"momx\000"
.LASF1480:
	.ascii	"momy\000"
.LASF6:
	.ascii	"long int\000"
.LASF982:
	.ascii	"S_SSWV_XDIE1\000"
.LASF983:
	.ascii	"S_SSWV_XDIE2\000"
.LASF984:
	.ascii	"S_SSWV_XDIE3\000"
.LASF985:
	.ascii	"S_SSWV_XDIE4\000"
.LASF986:
	.ascii	"S_SSWV_XDIE5\000"
.LASF987:
	.ascii	"S_SSWV_XDIE6\000"
.LASF62:
	.ascii	"finaldoom_compatibility\000"
.LASF989:
	.ascii	"S_SSWV_XDIE8\000"
.LASF990:
	.ascii	"S_SSWV_XDIE9\000"
.LASF280:
	.ascii	"S_DSGUNFLASH1\000"
.LASF281:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1348:
	.ascii	"MT_MISC22\000"
.LASF1539:
	.ascii	"didsecret\000"
.LASF538:
	.ascii	"S_FIRE25\000"
.LASF632:
	.ascii	"S_FATT_RAISE2\000"
.LASF1384:
	.ascii	"MT_MISC55\000"
.LASF1512:
	.ascii	"deltaviewheight\000"
.LASF24:
	.ascii	"it_yellowskull\000"
.LASF58:
	.ascii	"doom_12_compatibility\000"
.LASF1070:
	.ascii	"S_RSKULL2\000"
.LASF1496:
	.ascii	"tracer\000"
.LASF17:
	.ascii	"PU_CACHE\000"
.LASF845:
	.ascii	"S_SPID_RUN10\000"
.LASF846:
	.ascii	"S_SPID_RUN11\000"
.LASF847:
	.ascii	"S_SPID_RUN12\000"
.LASF1691:
	.ascii	"sfx_wpnup\000"
.LASF1769:
	.ascii	"sfx_dgact\000"
.LASF1972:
	.ascii	"monkeys\000"
.LASF1501:
	.ascii	"PrevX\000"
.LASF1502:
	.ascii	"PrevY\000"
.LASF1503:
	.ascii	"PrevZ\000"
.LASF1455:
	.ascii	"raisestate\000"
.LASF1417:
	.ascii	"MT_PULL\000"
.LASF1254:
	.ascii	"S_BSKUL_ATK1\000"
.LASF296:
	.ascii	"S_MISSILEFLASH1\000"
.LASF297:
	.ascii	"S_MISSILEFLASH2\000"
.LASF298:
	.ascii	"S_MISSILEFLASH3\000"
.LASF299:
	.ascii	"S_MISSILEFLASH4\000"
.LASF157:
	.ascii	"SPR_RSKU\000"
.LASF1586:
	.ascii	"COMP_NUM\000"
.LASF1711:
	.ascii	"sfx_skepch\000"
.LASF1664:
	.ascii	"sfx_dbcls\000"
.LASF83:
	.ascii	"think_t\000"
.LASF656:
	.ascii	"S_CPOS_DIE2\000"
.LASF1962:
	.ascii	"nofit\000"
.LASF657:
	.ascii	"S_CPOS_DIE3\000"
.LASF658:
	.ascii	"S_CPOS_DIE4\000"
.LASF659:
	.ascii	"S_CPOS_DIE5\000"
.LASF660:
	.ascii	"S_CPOS_DIE6\000"
.LASF1935:
	.ascii	"saved_tmthing\000"
.LASF661:
	.ascii	"S_CPOS_DIE7\000"
.LASF1861:
	.ascii	"dist\000"
.LASF1102:
	.ascii	"S_PVIS2\000"
.LASF1879:
	.ascii	"slope\000"
.LASF1309:
	.ascii	"MT_BARREL\000"
.LASF1267:
	.ascii	"S_BSKUL_DIE8\000"
.LASF834:
	.ascii	"S_SPID_STND\000"
.LASF2014:
	.ascii	"P_CheckSight\000"
.LASF606:
	.ascii	"S_FATT_RUN10\000"
.LASF607:
	.ascii	"S_FATT_RUN11\000"
.LASF608:
	.ascii	"S_FATT_RUN12\000"
.LASF2028:
	.ascii	"c:/devl/prboom3ds/src/p_map.c\000"
.LASF1830:
	.ascii	"pr_stayonlift\000"
.LASF1301:
	.ascii	"MT_PAIN\000"
.LASF1160:
	.ascii	"S_BLUETORCH2\000"
.LASF1456:
	.ascii	"mobjinfo_t\000"
.LASF1161:
	.ascii	"S_BLUETORCH3\000"
.LASF1694:
	.ascii	"sfx_posit1\000"
.LASF1162:
	.ascii	"S_BLUETORCH4\000"
.LASF217:
	.ascii	"SPR_SMRT\000"
.LASF1696:
	.ascii	"sfx_posit3\000"
.LASF321:
	.ascii	"S_BFGFLASH1\000"
.LASF322:
	.ascii	"S_BFGFLASH2\000"
.LASF855:
	.ascii	"S_SPID_DIE2\000"
.LASF134:
	.ascii	"SPR_BOS2\000"
.LASF858:
	.ascii	"S_SPID_DIE5\000"
.LASF859:
	.ascii	"S_SPID_DIE6\000"
.LASF1754:
	.ascii	"sfx_bossit\000"
.LASF860:
	.ascii	"S_SPID_DIE7\000"
.LASF861:
	.ascii	"S_SPID_DIE8\000"
.LASF1151:
	.ascii	"S_EVILEYE2\000"
.LASF1152:
	.ascii	"S_EVILEYE3\000"
.LASF1153:
	.ascii	"S_EVILEYE4\000"
.LASF326:
	.ascii	"S_PUFF1\000"
.LASF327:
	.ascii	"S_PUFF2\000"
.LASF328:
	.ascii	"S_PUFF3\000"
.LASF145:
	.ascii	"SPR_BOSF\000"
.LASF1614:
	.ascii	"lines\000"
.LASF1809:
	.ascii	"pr_spidrefire\000"
.LASF1583:
	.ascii	"comp_666\000"
.LASF1781:
	.ascii	"pr_explode\000"
.LASF133:
	.ascii	"SPR_BOSS\000"
.LASF1313:
	.ascii	"MT_PLASMA\000"
.LASF1766:
	.ascii	"sfx_radio\000"
.LASF880:
	.ascii	"S_BSPI_ATK1\000"
.LASF881:
	.ascii	"S_BSPI_ATK2\000"
.LASF882:
	.ascii	"S_BSPI_ATK3\000"
.LASF883:
	.ascii	"S_BSPI_ATK4\000"
.LASF1062:
	.ascii	"S_BKEY2\000"
.LASF36:
	.ascii	"NUMWEAPONS\000"
.LASF1219:
	.ascii	"S_DOGS_PAIN2\000"
.LASF1859:
	.ascii	"PTR_UseTraverse\000"
.LASF867:
	.ascii	"S_BSPI_SIGHT\000"
.LASF1683:
	.ascii	"sfx_plpain\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF1546:
	.ascii	"m_snext\000"
.LASF1013:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1014:
	.ascii	"S_BRAIN_DIE2\000"
.LASF1015:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1016:
	.ascii	"S_BRAIN_DIE4\000"
.LASF1984:
	.ascii	"floorline\000"
.LASF348:
	.ascii	"S_BFGSHOT\000"
.LASF1154:
	.ascii	"S_FLOATSKULL\000"
.LASF504:
	.ascii	"S_VILE_DIE1\000"
.LASF505:
	.ascii	"S_VILE_DIE2\000"
.LASF506:
	.ascii	"S_VILE_DIE3\000"
.LASF507:
	.ascii	"S_VILE_DIE4\000"
.LASF508:
	.ascii	"S_VILE_DIE5\000"
.LASF509:
	.ascii	"S_VILE_DIE6\000"
.LASF510:
	.ascii	"S_VILE_DIE7\000"
.LASF511:
	.ascii	"S_VILE_DIE8\000"
.LASF512:
	.ascii	"S_VILE_DIE9\000"
.LASF1532:
	.ascii	"damagecount\000"
.LASF1619:
	.ascii	"floorlightsec\000"
.LASF1575:
	.ascii	"comp_staylift\000"
.LASF186:
	.ascii	"SPR_SMT2\000"
.LASF1064:
	.ascii	"S_RKEY2\000"
.LASF1035:
	.ascii	"S_ARM1\000"
.LASF1037:
	.ascii	"S_ARM2\000"
.LASF1223:
	.ascii	"S_DOGS_DIE4\000"
.LASF1224:
	.ascii	"S_DOGS_DIE5\000"
.LASF1130:
	.ascii	"S_HEADCANDLES\000"
.LASF164:
	.ascii	"SPR_PINS\000"
.LASF760:
	.ascii	"S_BOSS_STND\000"
.LASF1735:
	.ascii	"sfx_dmact\000"
.LASF740:
	.ascii	"S_HEAD_PAIN\000"
.LASF21:
	.ascii	"it_yellowcard\000"
.LASF63:
	.ascii	"dosdoom_compatibility\000"
.LASF1877:
	.ascii	"PIT_StompThing\000"
.LASF1285:
	.ascii	"MT_TRACER\000"
.LASF2009:
	.ascii	"P_SpawnBlood\000"
.LASF621:
	.ascii	"S_FATT_DIE1\000"
.LASF10:
	.ascii	"char\000"
.LASF623:
	.ascii	"S_FATT_DIE3\000"
.LASF624:
	.ascii	"S_FATT_DIE4\000"
.LASF625:
	.ascii	"S_FATT_DIE5\000"
.LASF626:
	.ascii	"S_FATT_DIE6\000"
.LASF627:
	.ascii	"S_FATT_DIE7\000"
.LASF628:
	.ascii	"S_FATT_DIE8\000"
.LASF629:
	.ascii	"S_FATT_DIE9\000"
.LASF696:
	.ascii	"S_TROO_XDIE2\000"
.LASF697:
	.ascii	"S_TROO_XDIE3\000"
.LASF698:
	.ascii	"S_TROO_XDIE4\000"
.LASF699:
	.ascii	"S_TROO_XDIE5\000"
.LASF700:
	.ascii	"S_TROO_XDIE6\000"
.LASF701:
	.ascii	"S_TROO_XDIE7\000"
.LASF702:
	.ascii	"S_TROO_XDIE8\000"
.LASF169:
	.ascii	"SPR_CLIP\000"
.LASF1143:
	.ascii	"S_SHRTREDCOL\000"
.LASF87:
	.ascii	"cnext\000"
.LASF1186:
	.ascii	"S_HANGTSKULL\000"
.LASF2017:
	.ascii	"P_BlockThingsIterator\000"
.LASF1907:
	.ascii	"deltaangle\000"
.LASF1909:
	.ascii	"newlen\000"
.LASF1203:
	.ascii	"S_DETONATE2\000"
.LASF1204:
	.ascii	"S_DETONATE3\000"
.LASF52:
	.ascii	"NUMPOWERS\000"
.LASF1596:
	.ascii	"firsttag\000"
.LASF971:
	.ascii	"S_SSWV_ATK3\000"
.LASF972:
	.ascii	"S_SSWV_ATK4\000"
.LASF1968:
	.ascii	"gamemap\000"
.LASF277:
	.ascii	"S_DSGUN10\000"
.LASF1723:
	.ascii	"sfx_cacdth\000"
.LASF47:
	.ascii	"pw_strength\000"
.LASF203:
	.ascii	"SPR_CAND\000"
.LASF1680:
	.ascii	"sfx_stnmov\000"
.LASF1291:
	.ascii	"MT_SERGEANT\000"
.LASF1917:
	.ascii	"trailx\000"
.LASF89:
	.ascii	"references\000"
.LASF1133:
	.ascii	"S_LIVESTICK\000"
.LASF1073:
	.ascii	"S_STIM\000"
.LASF1886:
	.ascii	"PTR_ShootTraverse\000"
.LASF1572:
	.ascii	"comp_skymap\000"
.LASF42:
	.ascii	"am_cell\000"
.LASF20:
	.ascii	"it_bluecard\000"
.LASF1476:
	.ascii	"floorz\000"
.LASF2020:
	.ascii	"P_BlockLinesIterator\000"
.LASF736:
	.ascii	"S_HEAD_RUN1\000"
.LASF1796:
	.ascii	"pr_shotgun\000"
.LASF391:
	.ascii	"S_PLAY_DIE1\000"
.LASF392:
	.ascii	"S_PLAY_DIE2\000"
.LASF393:
	.ascii	"S_PLAY_DIE3\000"
.LASF394:
	.ascii	"S_PLAY_DIE4\000"
.LASF395:
	.ascii	"S_PLAY_DIE5\000"
.LASF396:
	.ascii	"S_PLAY_DIE6\000"
.LASF397:
	.ascii	"S_PLAY_DIE7\000"
.LASF407:
	.ascii	"S_POSS_STND\000"
.LASF1233:
	.ascii	"S_OLDBFG42\000"
.LASF1234:
	.ascii	"S_OLDBFG43\000"
.LASF363:
	.ascii	"S_TFOG\000"
.LASF1369:
	.ascii	"MT_MISC40\000"
.LASF1370:
	.ascii	"MT_MISC41\000"
.LASF1504:
	.ascii	"subsector_s\000"
.LASF723:
	.ascii	"S_SARG_DIE1\000"
.LASF724:
	.ascii	"S_SARG_DIE2\000"
.LASF1615:
	.ascii	"floor_xoffs\000"
.LASF725:
	.ascii	"S_SARG_DIE3\000"
.LASF726:
	.ascii	"S_SARG_DIE4\000"
.LASF1024:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1025:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1026:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1027:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1028:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1029:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1030:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1031:
	.ascii	"S_SPAWNFIRE8\000"
.LASF695:
	.ascii	"S_TROO_XDIE1\000"
.LASF1552:
	.ascii	"consistancy\000"
.LASF1590:
	.ascii	"iSectorID\000"
.LASF1890:
	.ascii	"P_GetFriction\000"
.LASF1505:
	.ascii	"sector\000"
.LASF1883:
	.ascii	"PIT_CheckThing\000"
.LASF1188:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF343:
	.ascii	"S_PLASEXP2\000"
.LASF344:
	.ascii	"S_PLASEXP3\000"
.LASF345:
	.ascii	"S_PLASEXP4\000"
.LASF346:
	.ascii	"S_PLASEXP5\000"
.LASF33:
	.ascii	"wp_bfg\000"
.LASF1172:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1173:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1174:
	.ascii	"S_BTORCHSHRT4\000"
.LASF1976:
	.ascii	"openrange\000"
.LASF1730:
	.ascii	"sfx_kntdth\000"
.LASF476:
	.ascii	"S_VILE_RUN1\000"
.LASF266:
	.ascii	"S_DSGUNDOWN\000"
.LASF478:
	.ascii	"S_VILE_RUN3\000"
.LASF479:
	.ascii	"S_VILE_RUN4\000"
.LASF480:
	.ascii	"S_VILE_RUN5\000"
.LASF481:
	.ascii	"S_VILE_RUN6\000"
.LASF482:
	.ascii	"S_VILE_RUN7\000"
.LASF483:
	.ascii	"S_VILE_RUN8\000"
.LASF484:
	.ascii	"S_VILE_RUN9\000"
.LASF727:
	.ascii	"S_SARG_DIE5\000"
.LASF728:
	.ascii	"S_SARG_DIE6\000"
.LASF1547:
	.ascii	"visited\000"
.LASF1470:
	.ascii	"thinker\000"
.LASF1752:
	.ascii	"sfx_bospit\000"
.LASF1636:
	.ascii	"r_flags\000"
.LASF1265:
	.ascii	"S_BSKUL_DIE6\000"
.LASF1977:
	.ascii	"lowfloor\000"
.LASF568:
	.ascii	"S_SKEL_FIST1\000"
.LASF569:
	.ascii	"S_SKEL_FIST2\000"
.LASF570:
	.ascii	"S_SKEL_FIST3\000"
.LASF571:
	.ascii	"S_SKEL_FIST4\000"
.LASF307:
	.ascii	"S_PLASMA\000"
.LASF1086:
	.ascii	"S_PINS\000"
.LASF1213:
	.ascii	"S_DOGS_RUN7\000"
.LASF1214:
	.ascii	"S_DOGS_RUN8\000"
.LASF1243:
	.ascii	"S_PLS2BALL2\000"
.LASF1864:
	.ascii	"oldx\000"
.LASF1865:
	.ascii	"oldy\000"
.LASF1499:
	.ascii	"movefactor\000"
.LASF1687:
	.ascii	"sfx_mnpain\000"
.LASF1937:
	.ascii	"saved_tmy\000"
.LASF1802:
	.ascii	"pr_newchase\000"
.LASF1973:
	.ascii	"sectors\000"
.LASF1159:
	.ascii	"S_BLUETORCH\000"
.LASF1866:
	.ascii	"oldside\000"
.LASF1851:
	.ascii	"size\000"
.LASF597:
	.ascii	"S_FATT_RUN1\000"
.LASF598:
	.ascii	"S_FATT_RUN2\000"
.LASF599:
	.ascii	"S_FATT_RUN3\000"
.LASF600:
	.ascii	"S_FATT_RUN4\000"
.LASF49:
	.ascii	"pw_ironfeet\000"
.LASF602:
	.ascii	"S_FATT_RUN6\000"
.LASF603:
	.ascii	"S_FATT_RUN7\000"
.LASF604:
	.ascii	"S_FATT_RUN8\000"
.LASF1135:
	.ascii	"S_MEAT2\000"
.LASF1136:
	.ascii	"S_MEAT3\000"
.LASF1137:
	.ascii	"S_MEAT4\000"
.LASF1138:
	.ascii	"S_MEAT5\000"
.LASF1801:
	.ascii	"pr_trywalk\000"
.LASF1708:
	.ascii	"sfx_pesit\000"
.LASF250:
	.ascii	"S_PISTOLFLASH\000"
.LASF1593:
	.ascii	"floorheight\000"
.LASF470:
	.ascii	"S_SPOS_RAISE2\000"
.LASF471:
	.ascii	"S_SPOS_RAISE3\000"
.LASF472:
	.ascii	"S_SPOS_RAISE4\000"
.LASF473:
	.ascii	"S_SPOS_RAISE5\000"
.LASF1910:
	.ascii	"icyfloor\000"
.LASF160:
	.ascii	"SPR_MEDI\000"
.LASF162:
	.ascii	"SPR_PINV\000"
.LASF1697:
	.ascii	"sfx_bgsit1\000"
.LASF2015:
	.ascii	"P_AproxDistance\000"
.LASF1698:
	.ascii	"sfx_bgsit2\000"
.LASF1732:
	.ascii	"sfx_skedth\000"
.LASF1012:
	.ascii	"S_BRAIN_PAIN\000"
.LASF283:
	.ascii	"S_CHAINDOWN\000"
.LASF1236:
	.ascii	"S_PLS1BALL2\000"
.LASF1232:
	.ascii	"S_OLDBFG1\000"
.LASF1829:
	.ascii	"pr_avoidcrush\000"
.LASF502:
	.ascii	"S_VILE_PAIN\000"
.LASF549:
	.ascii	"S_TRACER\000"
.LASF1891:
	.ascii	"frictionfactor\000"
.LASF1428:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF1563:
	.ascii	"comp_vile\000"
.LASF969:
	.ascii	"S_SSWV_ATK1\000"
.LASF970:
	.ascii	"S_SSWV_ATK2\000"
.LASF499:
	.ascii	"S_VILE_HEAL1\000"
.LASF500:
	.ascii	"S_VILE_HEAL2\000"
.LASF501:
	.ascii	"S_VILE_HEAL3\000"
.LASF974:
	.ascii	"S_SSWV_ATK6\000"
.LASF1487:
	.ascii	"movecount\000"
.LASF154:
	.ascii	"SPR_RKEY\000"
.LASF1704:
	.ascii	"sfx_bspsit\000"
.LASF1120:
	.ascii	"S_STALAG\000"
.LASF1538:
	.ascii	"psprites\000"
.LASF1610:
	.ascii	"midmap\000"
.LASF1587:
	.ascii	"COMP_TOTAL\000"
.LASF1685:
	.ascii	"sfx_popain\000"
.LASF835:
	.ascii	"S_SPID_STND2\000"
.LASF81:
	.ascii	"angle_t\000"
.LASF1842:
	.ascii	"LO_CONFIRM\000"
.LASF1622:
	.ascii	"ceilingpic\000"
.LASF1121:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1190:
	.ascii	"S_SMALLPOOL\000"
.LASF1461:
	.ascii	"pspdef_t\000"
.LASF1385:
	.ascii	"MT_MISC56\000"
.LASF619:
	.ascii	"S_FATT_PAIN\000"
.LASF1892:
	.ascii	"P_GetMoveFactor\000"
.LASF1638:
	.ascii	"ST_HORIZONTAL\000"
.LASF383:
	.ascii	"S_PLAY_RUN1\000"
.LASF384:
	.ascii	"S_PLAY_RUN2\000"
.LASF385:
	.ascii	"S_PLAY_RUN3\000"
.LASF386:
	.ascii	"S_PLAY_RUN4\000"
.LASF1111:
	.ascii	"S_BPAK\000"
.LASF149:
	.ascii	"SPR_BEXP\000"
.LASF1508:
	.ascii	"player_s\000"
.LASF1068:
	.ascii	"S_BSKULL2\000"
.LASF108:
	.ascii	"SPR_PUFF\000"
.LASF997:
	.ascii	"S_COMMKEEN\000"
.LASF1676:
	.ascii	"sfx_pstart\000"
.LASF1525:
	.ascii	"usedown\000"
.LASF1653:
	.ascii	"thing\000"
.LASF2023:
	.ascii	"P_RemoveMobj\000"
.LASF1424:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF789:
	.ascii	"S_BOS2_STND\000"
.LASF114:
	.ascii	"SPR_BFS1\000"
.LASF1020:
	.ascii	"S_SPAWN1\000"
.LASF1021:
	.ascii	"S_SPAWN2\000"
.LASF1022:
	.ascii	"S_SPAWN3\000"
.LASF1023:
	.ascii	"S_SPAWN4\000"
.LASF1193:
	.ascii	"S_TECHLAMP2\000"
.LASF1194:
	.ascii	"S_TECHLAMP3\000"
.LASF34:
	.ascii	"wp_chainsaw\000"
.LASF1299:
	.ascii	"MT_BABY\000"
.LASF1523:
	.ascii	"maxammo\000"
.LASF942:
	.ascii	"S_PAIN_ATK2\000"
.LASF1749:
	.ascii	"sfx_flame\000"
.LASF1134:
	.ascii	"S_LIVESTICK2\000"
.LASF1822:
	.ascii	"pr_all_in_one\000"
.LASF1179:
	.ascii	"S_RTORCHSHRT\000"
.LASF1345:
	.ascii	"MT_MISC19\000"
.LASF136:
	.ascii	"SPR_SPID\000"
.LASF1467:
	.ascii	"MIF_ARMED\000"
.LASF735:
	.ascii	"S_HEAD_STND\000"
.LASF710:
	.ascii	"S_SARG_RUN1\000"
.LASF711:
	.ascii	"S_SARG_RUN2\000"
.LASF712:
	.ascii	"S_SARG_RUN3\000"
.LASF713:
	.ascii	"S_SARG_RUN4\000"
.LASF714:
	.ascii	"S_SARG_RUN5\000"
.LASF715:
	.ascii	"S_SARG_RUN6\000"
.LASF716:
	.ascii	"S_SARG_RUN7\000"
.LASF717:
	.ascii	"S_SARG_RUN8\000"
.LASF1323:
	.ascii	"MT_MISC1\000"
.LASF1324:
	.ascii	"MT_MISC2\000"
.LASF1325:
	.ascii	"MT_MISC3\000"
.LASF1326:
	.ascii	"MT_MISC4\000"
.LASF1327:
	.ascii	"MT_MISC5\000"
.LASF1328:
	.ascii	"MT_MISC6\000"
.LASF1329:
	.ascii	"MT_MISC7\000"
.LASF1330:
	.ascii	"MT_MISC8\000"
.LASF1331:
	.ascii	"MT_MISC9\000"
.LASF300:
	.ascii	"S_SAW\000"
.LASF165:
	.ascii	"SPR_MEGA\000"
.LASF389:
	.ascii	"S_PLAY_PAIN\000"
.LASF1789:
	.ascii	"pr_plats\000"
.LASF1713:
	.ascii	"sfx_claw\000"
.LASF341:
	.ascii	"S_PLASBALL2\000"
.LASF1458:
	.ascii	"ps_flash\000"
.LASF1509:
	.ascii	"playerstate\000"
.LASF1635:
	.ascii	"r_validcount\000"
.LASF1869:
	.ascii	"nextnode\000"
.LASF1780:
	.ascii	"pr_lights\000"
.LASF1778:
	.ascii	"pr_damagemobj\000"
.LASF143:
	.ascii	"SPR_KEEN\000"
.LASF1931:
	.ascii	"P_CheckSector\000"
.LASF1767:
	.ascii	"sfx_dgsit\000"
.LASF975:
	.ascii	"S_SSWV_PAIN\000"
.LASF1440:
	.ascii	"painstate\000"
.LASF1010:
	.ascii	"S_KEENPAIN2\000"
.LASF51:
	.ascii	"pw_infrared\000"
.LASF1943:
	.ascii	"ls_x\000"
.LASF497:
	.ascii	"S_VILE_ATK10\000"
.LASF498:
	.ascii	"S_VILE_ATK11\000"
.LASF1578:
	.ascii	"comp_infcheat\000"
.LASF1427:
	.ascii	"MT_STEALTHFATSO\000"
.LASF1945:
	.ascii	"tmunstuck\000"
.LASF60:
	.ascii	"doom2_19_compatibility\000"
.LASF1409:
	.ascii	"MT_MISC80\000"
.LASF1447:
	.ascii	"deathsound\000"
.LASF1050:
	.ascii	"S_BON1A\000"
.LASF1051:
	.ascii	"S_BON1B\000"
.LASF1052:
	.ascii	"S_BON1C\000"
.LASF1053:
	.ascii	"S_BON1D\000"
.LASF1054:
	.ascii	"S_BON1E\000"
.LASF1969:
	.ascii	"leveltime\000"
.LASF67:
	.ascii	"boom_202_compatibility\000"
.LASF1637:
	.ascii	"sector_t\000"
.LASF1581:
	.ascii	"comp_respawn\000"
.LASF163:
	.ascii	"SPR_PSTR\000"
.LASF1689:
	.ascii	"sfx_slop\000"
.LASF1847:
	.ascii	"LO_ALWAYS\000"
.LASF1347:
	.ascii	"MT_MISC21\000"
.LASF721:
	.ascii	"S_SARG_PAIN\000"
.LASF1342:
	.ascii	"MT_CLIP\000"
.LASF1958:
	.ascii	"bombsource\000"
.LASF178:
	.ascii	"SPR_BFUG\000"
.LASF1397:
	.ascii	"MT_MISC68\000"
.LASF1852:
	.ascii	"perpool\000"
.LASF1046:
	.ascii	"S_BBAR1\000"
.LASF1047:
	.ascii	"S_BBAR2\000"
.LASF1048:
	.ascii	"S_BBAR3\000"
.LASF234:
	.ascii	"S_LIGHTDONE\000"
.LASF1894:
	.ascii	"momentum\000"
.LASF885:
	.ascii	"S_BSPI_PAIN2\000"
.LASF1580:
	.ascii	"comp_moveblock\000"
.LASF1261:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1517:
	.ascii	"backpack\000"
.LASF1263:
	.ascii	"S_BSKUL_DIE4\000"
.LASF1813:
	.ascii	"pr_bruisattack\000"
.LASF685:
	.ascii	"S_TROO_ATK1\000"
.LASF686:
	.ascii	"S_TROO_ATK2\000"
.LASF687:
	.ascii	"S_TROO_ATK3\000"
.LASF829:
	.ascii	"S_SKULL_DIE2\000"
.LASF830:
	.ascii	"S_SKULL_DIE3\000"
.LASF831:
	.ascii	"S_SKULL_DIE4\000"
.LASF832:
	.ascii	"S_SKULL_DIE5\000"
.LASF833:
	.ascii	"S_SKULL_DIE6\000"
.LASF182:
	.ascii	"SPR_PLAS\000"
.LASF1860:
	.ascii	"PIT_RadiusAttack\000"
.LASF1056:
	.ascii	"S_BON2A\000"
.LASF1057:
	.ascii	"S_BON2B\000"
.LASF95:
	.ascii	"SPR_PISF\000"
.LASF94:
	.ascii	"SPR_PISG\000"
.LASF1060:
	.ascii	"S_BON2E\000"
.LASF1352:
	.ascii	"MT_CHAINGUN\000"
.LASF332:
	.ascii	"S_TBALLX1\000"
.LASF333:
	.ascii	"S_TBALLX2\000"
.LASF334:
	.ascii	"S_TBALLX3\000"
.LASF37:
	.ascii	"wp_nochange\000"
.LASF1884:
	.ascii	"solid\000"
.LASF1289:
	.ascii	"MT_CHAINGUY\000"
.LASF1995:
	.ascii	"la_damage\000"
.LASF1589:
	.ascii	"degenmobj_t\000"
.LASF1695:
	.ascii	"sfx_posit2\000"
.LASF1549:
	.ascii	"forwardmove\000"
.LASF828:
	.ascii	"S_SKULL_DIE1\000"
.LASF1557:
	.ascii	"PST_DEAD\000"
.LASF1191:
	.ascii	"S_BRAINSTEM\000"
.LASF996:
	.ascii	"S_KEENSTND\000"
.LASF1545:
	.ascii	"m_sprev\000"
.LASF119:
	.ascii	"SPR_PLAY\000"
.LASF1519:
	.ascii	"readyweapon\000"
.LASF1700:
	.ascii	"sfx_cacsit\000"
.LASF1709:
	.ascii	"sfx_sklatk\000"
.LASF1971:
	.ascii	"variable_friction\000"
.LASF1927:
	.ascii	"spot\000"
.LASF1908:
	.ascii	"movelen\000"
.LASF1832:
	.ascii	"pr_dropoff\000"
.LASF1811:
	.ascii	"pr_sargattack\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF1805:
	.ascii	"pr_facetarget\000"
.LASF1131:
	.ascii	"S_HEADCANDLES2\000"
.LASF1319:
	.ascii	"MT_IFOG\000"
.LASF1584:
	.ascii	"comp_soul\000"
.LASF210:
	.ascii	"SPR_FSKU\000"
.LASF1755:
	.ascii	"sfx_bospn\000"
.LASF447:
	.ascii	"S_SPOS_RUN6\000"
.LASF1564:
	.ascii	"comp_pain\000"
.LASF303:
	.ascii	"S_SAWUP\000"
.LASF1036:
	.ascii	"S_ARM1A\000"
.LASF639:
	.ascii	"S_CPOS_STND\000"
.LASF1360:
	.ascii	"MT_MISC31\000"
.LASF1481:
	.ascii	"momz\000"
.LASF1110:
	.ascii	"S_SBOX\000"
.LASF1597:
	.ascii	"soundtraversed\000"
.LASF1363:
	.ascii	"MT_MISC34\000"
.LASF1226:
	.ascii	"S_DOGS_RAISE1\000"
.LASF1227:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1228:
	.ascii	"S_DOGS_RAISE3\000"
.LASF342:
	.ascii	"S_PLASEXP\000"
.LASF1230:
	.ascii	"S_DOGS_RAISE5\000"
.LASF1231:
	.ascii	"S_DOGS_RAISE6\000"
.LASF1650:
	.ascii	"float\000"
.LASF1126:
	.ascii	"S_DEADBOTTOM\000"
.LASF1746:
	.ascii	"sfx_bdopn\000"
.LASF1183:
	.ascii	"S_HANGNOGUTS\000"
.LASF1439:
	.ascii	"attacksound\000"
.LASF1087:
	.ascii	"S_PINS2\000"
.LASF1088:
	.ascii	"S_PINS3\000"
.LASF1089:
	.ascii	"S_PINS4\000"
.LASF941:
	.ascii	"S_PAIN_ATK1\000"
.LASF2029:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF943:
	.ascii	"S_PAIN_ATK3\000"
.LASF944:
	.ascii	"S_PAIN_ATK4\000"
.LASF1577:
	.ascii	"comp_stairs\000"
.LASF253:
	.ascii	"S_SGUNUP\000"
.LASF1631:
	.ascii	"frontsector\000"
.LASF204:
	.ascii	"SPR_CBRA\000"
.LASF1445:
	.ascii	"deathstate\000"
.LASF1038:
	.ascii	"S_ARM2A\000"
.LASF907:
	.ascii	"S_CYBER_STND\000"
.LASF1066:
	.ascii	"S_YKEY2\000"
.LASF516:
	.ascii	"S_FIRE3\000"
.LASF1585:
	.ascii	"comp_maskedanim\000"
.LASF1438:
	.ascii	"reactiontime\000"
.LASF521:
	.ascii	"S_FIRE8\000"
.LASF761:
	.ascii	"S_BOSS_STND2\000"
.LASF1739:
	.ascii	"sfx_noway\000"
.LASF1905:
	.ascii	"lineangle\000"
.LASF1983:
	.ascii	"ceilingline\000"
.LASF1818:
	.ascii	"pr_cposrefire\000"
.LASF1472:
	.ascii	"sprev\000"
.LASF304:
	.ascii	"S_SAW1\000"
.LASF305:
	.ascii	"S_SAW2\000"
.LASF306:
	.ascii	"S_SAW3\000"
.LASF1049:
	.ascii	"S_BON1\000"
.LASF1055:
	.ascii	"S_BON2\000"
.LASF1493:
	.ascii	"player\000"
.LASF1604:
	.ascii	"lightingdata\000"
.LASF301:
	.ascii	"S_SAWB\000"
.LASF689:
	.ascii	"S_TROO_PAIN2\000"
.LASF1906:
	.ascii	"moveangle\000"
.LASF1305:
	.ascii	"MT_BOSSSPIT\000"
.LASF514:
	.ascii	"S_FIRE1\000"
.LASF515:
	.ascii	"S_FIRE2\000"
.LASF80:
	.ascii	"fixed_t\000"
.LASF517:
	.ascii	"S_FIRE4\000"
.LASF518:
	.ascii	"S_FIRE5\000"
.LASF519:
	.ascii	"S_FIRE6\000"
.LASF520:
	.ascii	"S_FIRE7\000"
.LASF172:
	.ascii	"SPR_BROK\000"
.LASF522:
	.ascii	"S_FIRE9\000"
.LASF1247:
	.ascii	"S_BON3\000"
.LASF1248:
	.ascii	"S_BON4\000"
.LASF1176:
	.ascii	"S_GTORCHSHRT2\000"
.LASF1107:
	.ascii	"S_CELL\000"
.LASF1775:
	.ascii	"pr_crush\000"
.LASF1376:
	.ascii	"MT_MISC47\000"
.LASF170:
	.ascii	"SPR_AMMO\000"
.LASF1377:
	.ascii	"MT_MISC48\000"
.LASF1229:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1378:
	.ascii	"MT_MISC49\000"
.LASF820:
	.ascii	"S_SKULL_RUN1\000"
.LASF821:
	.ascii	"S_SKULL_RUN2\000"
.LASF1187:
	.ascii	"S_HANGTLOOKUP\000"
.LASF282:
	.ascii	"S_CHAIN\000"
.LASF1965:
	.ascii	"tantoangle\000"
.LASF77:
	.ascii	"boom_compatibility\000"
.LASF312:
	.ascii	"S_PLASMAFLASH1\000"
.LASF268:
	.ascii	"S_DSGUN1\000"
.LASF269:
	.ascii	"S_DSGUN2\000"
.LASF161:
	.ascii	"SPR_SOUL\000"
.LASF121:
	.ascii	"SPR_SPOS\000"
.LASF272:
	.ascii	"S_DSGUN5\000"
.LASF273:
	.ascii	"S_DSGUN6\000"
.LASF274:
	.ascii	"S_DSGUN7\000"
.LASF78:
	.ascii	"best_compatibility\000"
.LASF276:
	.ascii	"S_DSGUN9\000"
.LASF440:
	.ascii	"S_SPOS_STND\000"
.LASF141:
	.ascii	"SPR_PAIN\000"
.LASF668:
	.ascii	"S_CPOS_RAISE1\000"
.LASF1518:
	.ascii	"frags\000"
.LASF1416:
	.ascii	"MT_PUSH\000"
.LASF1791:
	.ascii	"pr_punchangle\000"
.LASF1729:
	.ascii	"sfx_vildth\000"
.LASF1513:
	.ascii	"armorpoints\000"
.LASF1554:
	.ascii	"buttons\000"
.LASF1617:
	.ascii	"ceiling_xoffs\000"
.LASF1779:
	.ascii	"pr_painchance\000"
.LASF317:
	.ascii	"S_BFG1\000"
.LASF318:
	.ascii	"S_BFG2\000"
.LASF319:
	.ascii	"S_BFG3\000"
.LASF320:
	.ascii	"S_BFG4\000"
.LASF1788:
	.ascii	"pr_shadow\000"
.LASF1094:
	.ascii	"S_SUIT\000"
.LASF232:
	.ascii	"spritenum_t\000"
.LASF279:
	.ascii	"S_DSNR2\000"
.LASF819:
	.ascii	"S_SKULL_STND2\000"
.LASF1602:
	.ascii	"floordata\000"
.LASF1082:
	.ascii	"S_PINV2\000"
.LASF1083:
	.ascii	"S_PINV3\000"
.LASF1084:
	.ascii	"S_PINV4\000"
.LASF1657:
	.ascii	"intercept_t\000"
.LASF1197:
	.ascii	"S_TECH2LAMP2\000"
.LASF1198:
	.ascii	"S_TECH2LAMP3\000"
.LASF1199:
	.ascii	"S_TECH2LAMP4\000"
.LASF1939:
	.ascii	"finecosine\000"
.LASF1626:
	.ascii	"line_s\000"
.LASF8:
	.ascii	"long long int\000"
.LASF93:
	.ascii	"SPR_PUNG\000"
.LASF663:
	.ascii	"S_CPOS_XDIE2\000"
.LASF664:
	.ascii	"S_CPOS_XDIE3\000"
.LASF665:
	.ascii	"S_CPOS_XDIE4\000"
.LASF666:
	.ascii	"S_CPOS_XDIE5\000"
.LASF667:
	.ascii	"S_CPOS_XDIE6\000"
.LASF848:
	.ascii	"S_SPID_ATK1\000"
.LASF849:
	.ascii	"S_SPID_ATK2\000"
.LASF850:
	.ascii	"S_SPID_ATK3\000"
.LASF851:
	.ascii	"S_SPID_ATK4\000"
.LASF1576:
	.ascii	"comp_zombie\000"
.LASF572:
	.ascii	"S_SKEL_MISS1\000"
.LASF573:
	.ascii	"S_SKEL_MISS2\000"
.LASF574:
	.ascii	"S_SKEL_MISS3\000"
.LASF575:
	.ascii	"S_SKEL_MISS4\000"
.LASF329:
	.ascii	"S_PUFF4\000"
.LASF1069:
	.ascii	"S_RSKULL\000"
.LASF901:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF1379:
	.ascii	"MT_MISC50\000"
.LASF749:
	.ascii	"S_HEAD_RAISE1\000"
.LASF1414:
	.ascii	"MT_MISC85\000"
.LASF750:
	.ascii	"S_HEAD_RAISE2\000"
.LASF1260:
	.ascii	"S_BSKUL_DIE1\000"
.LASF751:
	.ascii	"S_HEAD_RAISE3\000"
.LASF1262:
	.ascii	"S_BSKUL_DIE3\000"
.LASF156:
	.ascii	"SPR_BSKU\000"
.LASF1264:
	.ascii	"S_BSKUL_DIE5\000"
.LASF753:
	.ascii	"S_HEAD_RAISE5\000"
.LASF1266:
	.ascii	"S_BSKUL_DIE7\000"
.LASF754:
	.ascii	"S_HEAD_RAISE6\000"
.LASF1988:
	.ascii	"bmaporgx\000"
.LASF1357:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF167:
	.ascii	"SPR_PMAP\000"
.LASF1017:
	.ascii	"S_BRAINEYE\000"
.LASF1541:
	.ascii	"m_sector\000"
.LASF1981:
	.ascii	"tmfloorz\000"
.LASF168:
	.ascii	"SPR_PVIS\000"
.LASF1171:
	.ascii	"S_BTORCHSHRT\000"
.LASF1790:
	.ascii	"pr_punch\000"
.LASF1556:
	.ascii	"PST_LIVE\000"
.LASF1808:
	.ascii	"pr_cposattack\000"
.LASF2024:
	.ascii	"R_PointToAngle2\000"
.LASF1315:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1618:
	.ascii	"ceiling_yoffs\000"
.LASF1817:
	.ascii	"pr_brainscream\000"
.LASF495:
	.ascii	"S_VILE_ATK8\000"
.LASF1944:
	.ascii	"ls_y\000"
.LASF436:
	.ascii	"S_POSS_RAISE1\000"
.LASF437:
	.ascii	"S_POSS_RAISE2\000"
.LASF438:
	.ascii	"S_POSS_RAISE3\000"
.LASF439:
	.ascii	"S_POSS_RAISE4\000"
.LASF291:
	.ascii	"S_MISSILEDOWN\000"
.LASF1987:
	.ascii	"blockline\000"
.LASF1574:
	.ascii	"comp_doorstuck\000"
.LASF1740:
	.ascii	"sfx_barexp\000"
.LASF1155:
	.ascii	"S_FLOATSKULL2\000"
.LASF1156:
	.ascii	"S_FLOATSKULL3\000"
.LASF1663:
	.ascii	"sfx_dbopn\000"
.LASF1934:
	.ascii	"P_CreateSecNodeList\000"
.LASF1667:
	.ascii	"sfx_bfg\000"
.LASF1902:
	.ascii	"onfloor\000"
.LASF1090:
	.ascii	"S_MEGA\000"
.LASF770:
	.ascii	"S_BOSS_ATK1\000"
.LASF771:
	.ascii	"S_BOSS_ATK2\000"
.LASF772:
	.ascii	"S_BOSS_ATK3\000"
.LASF1475:
	.ascii	"subsector\000"
.LASF226:
	.ascii	"SPR_BRS1\000"
.LASF1588:
	.ascii	"vertex_t\000"
.LASF577:
	.ascii	"S_SKEL_PAIN2\000"
.LASF1114:
	.ascii	"S_CSAW\000"
.LASF46:
	.ascii	"pw_invulnerability\000"
.LASF757:
	.ascii	"S_BRBALLX1\000"
.LASF758:
	.ascii	"S_BRBALLX2\000"
.LASF759:
	.ascii	"S_BRBALLX3\000"
.LASF19:
	.ascii	"PU_MAX\000"
.LASF888:
	.ascii	"S_BSPI_DIE3\000"
.LASF889:
	.ascii	"S_BSPI_DIE4\000"
.LASF890:
	.ascii	"S_BSPI_DIE5\000"
.LASF30:
	.ascii	"wp_chaingun\000"
.LASF892:
	.ascii	"S_BSPI_DIE7\000"
.LASF443:
	.ascii	"S_SPOS_RUN2\000"
.LASF1632:
	.ascii	"backsector\000"
.LASF444:
	.ascii	"S_SPOS_RUN3\000"
.LASF946:
	.ascii	"S_PAIN_PAIN2\000"
.LASF581:
	.ascii	"S_SKEL_DIE4\000"
.LASF1659:
	.ascii	"sfx_pistol\000"
.LASF175:
	.ascii	"SPR_SHEL\000"
.LASF1398:
	.ascii	"MT_MISC69\000"
.LASF1514:
	.ascii	"armortype\000"
.LASF227:
	.ascii	"SPR_TLMP\000"
.LASF1887:
	.ascii	"P_PutSecnode\000"
.LASF1880:
	.ascii	"thingtopslope\000"
.LASF408:
	.ascii	"S_POSS_STND2\000"
.LASF1356:
	.ascii	"MT_SHOTGUN\000"
.LASF1948:
	.ascii	"bestslidefrac\000"
.LASF1281:
	.ascii	"MT_SHOTGUY\000"
.LASF1529:
	.ascii	"itemcount\000"
.LASF1192:
	.ascii	"S_TECHLAMP\000"
.LASF1302:
	.ascii	"MT_WOLFSS\000"
.LASF1913:
	.ascii	"isblocking\000"
.LASF1679:
	.ascii	"sfx_dorcls\000"
.LASF14:
	.ascii	"PU_MUSIC\000"
.LASF2013:
	.ascii	"P_UseSpecialLine\000"
.LASF1220:
	.ascii	"S_DOGS_DIE1\000"
.LASF1999:
	.ascii	"P_PointOnLineSide\000"
.LASF1221:
	.ascii	"S_DOGS_DIE2\000"
.LASF790:
	.ascii	"S_BOS2_STND2\000"
.LASF1598:
	.ascii	"soundtarget\000"
.LASF285:
	.ascii	"S_CHAIN1\000"
.LASF286:
	.ascii	"S_CHAIN2\000"
.LASF287:
	.ascii	"S_CHAIN3\000"
.LASF338:
	.ascii	"S_RBALLX2\000"
.LASF339:
	.ascii	"S_RBALLX3\000"
.LASF212:
	.ascii	"SPR_TBLU\000"
.LASF441:
	.ascii	"S_SPOS_STND2\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF1660:
	.ascii	"sfx_shotgn\000"
.LASF1471:
	.ascii	"snext\000"
.LASF1571:
	.ascii	"comp_floors\000"
.LASF1855:
	.ascii	"FixedDiv\000"
.LASF45:
	.ascii	"am_noammo\000"
.LASF1468:
	.ascii	"thinker_s\000"
.LASF90:
	.ascii	"thinker_t\000"
.LASF1565:
	.ascii	"comp_skull\000"
.LASF1901:
	.ascii	"P_ThingHeightClip\000"
.LASF1250:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1251:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1252:
	.ascii	"S_BSKUL_RUN3\000"
.LASF1253:
	.ascii	"S_BSKUL_RUN4\000"
.LASF1721:
	.ascii	"sfx_bgdth2\000"
.LASF1812:
	.ascii	"pr_headattack\000"
.LASF66:
	.ascii	"boom_201_compatibility\000"
.LASF417:
	.ascii	"S_POSS_ATK1\000"
.LASF418:
	.ascii	"S_POSS_ATK2\000"
.LASF419:
	.ascii	"S_POSS_ATK3\000"
.LASF1858:
	.ascii	"side\000"
.LASF1400:
	.ascii	"MT_MISC71\000"
.LASF1897:
	.ascii	"newsubsec\000"
.LASF1180:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1181:
	.ascii	"S_RTORCHSHRT3\000"
.LASF1182:
	.ascii	"S_RTORCHSHRT4\000"
.LASF4:
	.ascii	"short int\000"
.LASF1406:
	.ascii	"MT_MISC77\000"
.LASF1407:
	.ascii	"MT_MISC78\000"
.LASF1647:
	.ascii	"RF_CLOSED\000"
.LASF1408:
	.ascii	"MT_MISC79\000"
.LASF1297:
	.ascii	"MT_SKULL\000"
.LASF1562:
	.ascii	"comp_dropoff\000"
.LASF1930:
	.ascii	"crunch\000"
.LASF1284:
	.ascii	"MT_UNDEAD\000"
.LASF84:
	.ascii	"prev\000"
.LASF578:
	.ascii	"S_SKEL_DIE1\000"
.LASF579:
	.ascii	"S_SKEL_DIE2\000"
.LASF580:
	.ascii	"S_SKEL_DIE3\000"
.LASF123:
	.ascii	"SPR_FIRE\000"
.LASF582:
	.ascii	"S_SKEL_DIE5\000"
.LASF583:
	.ascii	"S_SKEL_DIE6\000"
.LASF1850:
	.ascii	"firstpool\000"
.LASF1118:
	.ascii	"S_SHOT2\000"
.LASF1189:
	.ascii	"S_COLONGIBS\000"
.LASF1875:
	.ascii	"tmbbox\000"
.LASF228:
	.ascii	"SPR_TLP2\000"
.LASF64:
	.ascii	"tasdoom_compatibility\000"
.LASF340:
	.ascii	"S_PLASBALL\000"
.LASF1716:
	.ascii	"sfx_pdiehi\000"
.LASF184:
	.ascii	"SPR_SGN2\000"
.LASF1464:
	.ascii	"options\000"
.LASF137:
	.ascii	"SPR_BSPI\000"
.LASF1946:
	.ascii	"spechit_max\000"
.LASF139:
	.ascii	"SPR_APBX\000"
.LASF1537:
	.ascii	"colormap\000"
.LASF1332:
	.ascii	"MT_MISC10\000"
.LASF1333:
	.ascii	"MT_MISC11\000"
.LASF1334:
	.ascii	"MT_MISC12\000"
.LASF1336:
	.ascii	"MT_MISC13\000"
.LASF1338:
	.ascii	"MT_MISC14\000"
.LASF1339:
	.ascii	"MT_MISC15\000"
.LASF1340:
	.ascii	"MT_MISC16\000"
.LASF1343:
	.ascii	"MT_MISC17\000"
.LASF1344:
	.ascii	"MT_MISC18\000"
.LASF1103:
	.ascii	"S_CLIP\000"
.LASF1449:
	.ascii	"radius\000"
.LASF1485:
	.ascii	"health\000"
.LASF1919:
	.ascii	"newx\000"
.LASF1238:
	.ascii	"S_PLS1EXP2\000"
.LASF1239:
	.ascii	"S_PLS1EXP3\000"
.LASF1240:
	.ascii	"S_PLS1EXP4\000"
.LASF1241:
	.ascii	"S_PLS1EXP5\000"
.LASF1705:
	.ascii	"sfx_kntsit\000"
.LASF1848:
	.ascii	"OutputLevels\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
