	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"m_menu.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	M_ReadThis
	.type	M_ReadThis, %function
M_ReadThis:
.LFB11:
	.file 1 "c:/devl/prboom3ds/src/m_menu.c"
	.loc 1 444 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
.LBB276:
.LBB277:
	.loc 1 5385 0
	ldr	r3, .L2
	ldr	r0, .L2+4
.LVL1:
	.loc 1 5386 0
	ldrh	r1, [r3, #20]
	ldr	r2, .L2+8
	.loc 1 5385 0
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE277:
.LBE276:
	.cfi_endproc
.LFE11:
	.size	M_ReadThis, .-M_ReadThis
	.align	2
	.global	M_ReadThis2
	.type	M_ReadThis2, %function
M_ReadThis2:
.LFB12:
	.loc 1 449 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
.LBB278:
.LBB279:
	.loc 1 5385 0
	ldr	r3, .L5
	ldr	r0, .L5+4
.LVL3:
	.loc 1 5386 0
	ldrh	r1, [r3, #44]
	ldr	r2, .L5+8
	.loc 1 5385 0
	add	r3, r3, #24
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE279:
.LBE278:
	.cfi_endproc
.LFE12:
	.size	M_ReadThis2, .-M_ReadThis2
	.align	2
	.global	M_FinishReadThis
	.type	M_FinishReadThis, %function
M_FinishReadThis:
.LFB13:
	.loc 1 454 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
.LBB280:
.LBB281:
	.loc 1 5385 0
	ldr	r3, .L8
	ldr	r0, .L8+4
.LVL5:
	.loc 1 5386 0
	ldrh	r1, [r3, #68]
	ldr	r2, .L8+8
	.loc 1 5385 0
	add	r3, r3, #48
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE281:
.LBE280:
	.cfi_endproc
.LFE13:
	.size	M_FinishReadThis, .-M_FinishReadThis
	.align	2
	.global	M_FinishHelp
	.type	M_FinishHelp, %function
M_FinishHelp:
.LFB14:
	.loc 1 459 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
.LBB282:
.LBB283:
	.loc 1 5385 0
	ldr	r3, .L11
	ldr	r0, .L11+4
.LVL7:
	.loc 1 5386 0
	ldrh	r1, [r3, #68]
	ldr	r2, .L11+8
	.loc 1 5385 0
	add	r3, r3, #48
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE283:
.LBE282:
	.cfi_endproc
.LFE14:
	.size	M_FinishHelp, .-M_FinishHelp
	.align	2
	.global	M_Options
	.type	M_Options, %function
M_Options:
.LFB36:
	.loc 1 1014 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
.LBB284:
.LBB285:
	.loc 1 5385 0
	ldr	r3, .L14
	ldr	r0, .L14+4
.LVL9:
	.loc 1 5386 0
	ldrh	r1, [r3, #92]
	ldr	r2, .L14+8
	.loc 1 5385 0
	add	r3, r3, #72
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE285:
.LBE284:
	.cfi_endproc
.LFE36:
	.size	M_Options, .-M_Options
	.align	2
	.global	M_Sound
	.type	M_Sound, %function
M_Sound:
.LFB40:
	.loc 1 1139 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL10:
.LBB286:
.LBB287:
	.loc 1 5385 0
	ldr	r3, .L17
	ldr	r0, .L17+4
.LVL11:
	.loc 1 5386 0
	ldrh	r1, [r3, #116]
	ldr	r2, .L17+8
	.loc 1 5385 0
	add	r3, r3, #96
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE287:
.LBE286:
	.cfi_endproc
.LFE40:
	.size	M_Sound, .-M_Sound
	.align	2
	.global	M_ChangeSensitivity
	.type	M_ChangeSensitivity, %function
M_ChangeSensitivity:
.LFB44:
	.loc 1 1239 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL12:
.LBB288:
.LBB289:
	.loc 1 5385 0
	ldr	r3, .L20
	ldr	r0, .L20+4
.LVL13:
	.loc 1 5386 0
	ldrh	r1, [r3, #140]
	ldr	r2, .L20+8
	.loc 1 5385 0
	add	r3, r3, #120
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE289:
.LBE288:
	.cfi_endproc
.LFE44:
	.size	M_ChangeSensitivity, .-M_ChangeSensitivity
	.align	2
	.global	M_ChangeMessages
	.type	M_ChangeMessages, %function
M_ChangeMessages:
.LFB54:
	.loc 1 1383 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL14:
	.loc 1 1389 0
	mov	r0, #284
	.loc 1 1386 0
	ldr	r2, .L25
	ldr	r3, [r2]
	rsb	r3, r3, #1
	str	r3, [r2]
	.loc 1 1389 0
	ldr	r2, .L25+4
	.loc 1 1388 0
	cmp	r3, #0
	.loc 1 1389 0
	ldr	r2, [r2]
	ldr	r3, .L25+8
	ldreq	r1, .L25+12
	.loc 1 1391 0
	mla	r3, r0, r2, r3
	ldrne	r1, .L25+16
	ldr	r2, [r1]
	str	r2, [r3, #220]
	.loc 1 1393 0
	mov	r2, #1
	ldr	r3, .L25+20
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	showMessages
	.word	consoleplayer
	.word	players
	.word	s_MSGOFF
	.word	s_MSGON
	.word	message_dontfuckwithme
	.cfi_endproc
.LFE54:
	.size	M_ChangeMessages, .-M_ChangeMessages
	.align	2
	.type	M_DoNothing, %function
M_DoNothing:
.LFB56:
	.loc 1 1533 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL15:
	bx	lr
	.cfi_endproc
.LFE56:
	.size	M_DoNothing, .-M_DoNothing
	.align	2
	.global	M_Setup
	.type	M_Setup, %function
M_Setup:
.LFB58:
	.loc 1 1687 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL16:
.LBB290:
.LBB291:
	.loc 1 5385 0
	ldr	r3, .L29
	ldr	r0, .L29+4
.LVL17:
	.loc 1 5386 0
	ldrh	r1, [r3, #164]
	ldr	r2, .L29+8
	.loc 1 5385 0
	add	r3, r3, #144
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE291:
.LBE290:
	.cfi_endproc
.LFE58:
	.size	M_Setup, .-M_Setup
	.align	2
	.global	M_KeyBindings
	.type	M_KeyBindings, %function
M_KeyBindings:
.LFB64:
	.loc 1 2312 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	.loc 1 2318 0
	mov	r2, #0
	.loc 1 2315 0
	mov	r0, #1
.LVL19:
.LBB292:
.LBB293:
	.loc 1 5385 0
	ldr	r1, .L36
.LBE293:
.LBE292:
	.loc 1 2312 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 2322 0
	ldr	r3, [r1, #192]
	.loc 1 2315 0
	ldr	lr, .L36+4
.LBB296:
.LBB294:
	.loc 1 5386 0
	ldrh	r8, [r1, #188]
	ldr	r7, .L36+8
	.loc 1 5385 0
	ldr	r6, .L36+12
.LBE294:
.LBE296:
	.loc 1 2322 0
	ldr	r5, .L36+16
	.loc 1 2316 0
	ldr	r4, .L36+20
	.loc 1 2321 0
	ldr	ip, .L36+24
.LBB297:
.LBB295:
	.loc 1 5385 0
	add	r1, r1, #168
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
	.loc 1 5385 0
	str	r1, [r6]
.LBE295:
.LBE297:
	.loc 1 2322 0
	str	r3, [r5]
	.loc 1 2316 0
	str	r0, [r4]
	.loc 1 2315 0
	str	r0, [lr]
	.loc 1 2318 0
	stmib	lr, {r0, r2}
	.loc 1 2319 0
	str	r2, [lr, #12]
	.loc 1 2320 0
	str	r2, [lr, #16]
	.loc 1 2321 0
	str	r2, [ip]
	.loc 1 2324 0
	b	.L32
.L33:
	mov	r2, r0
.L32:
	.loc 1 2324 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L33
	.loc 1 2325 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	itemOn
	.word	currentMenu
	.word	current_setup_menu
	.word	setup_screen
	.word	mult_screens_index
	.cfi_endproc
.LFE64:
	.size	M_KeyBindings, .-M_KeyBindings
	.align	2
	.global	M_Weapons
	.type	M_Weapons, %function
M_Weapons:
.LFB66:
	.loc 1 2423 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL20:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 2429 0
	mov	r2, #0
	.loc 1 2426 0
	mov	r0, #1
.LVL21:
	.loc 1 2427 0
	mov	r4, #2
.LBB298:
.LBB299:
	.loc 1 5385 0
	ldr	r1, .L42
.LBE299:
.LBE298:
	.loc 1 2426 0
	ldr	lr, .L42+4
.LBB303:
.LBB300:
	.loc 1 5386 0
	ldrh	r9, [r1, #232]
.LBE300:
.LBE303:
	.loc 1 2433 0
	ldr	r3, [r1, #236]
.LBB304:
.LBB301:
	.loc 1 5386 0
	ldr	r8, .L42+8
	.loc 1 5385 0
	ldr	r7, .L42+12
.LBE301:
.LBE304:
	.loc 1 2433 0
	ldr	r6, .L42+16
	.loc 1 2432 0
	ldr	r5, .L42+20
	.loc 1 2427 0
	ldr	ip, .L42+24
.LBB305:
.LBB302:
	.loc 1 5385 0
	add	r1, r1, #212
	.loc 1 5386 0
	strh	r9, [r8]	@ movhi
	.loc 1 5385 0
	str	r1, [r7]
.LBE302:
.LBE305:
	.loc 1 2433 0
	str	r3, [r6]
	.loc 1 2426 0
	str	r0, [lr]
	.loc 1 2428 0
	str	r0, [lr, #24]
	.loc 1 2429 0
	str	r2, [lr, #8]
	.loc 1 2430 0
	str	r2, [lr, #12]
	.loc 1 2431 0
	str	r2, [lr, #16]
	.loc 1 2432 0
	str	r2, [r5]
	.loc 1 2427 0
	str	r4, [ip]
	.loc 1 2435 0
	b	.L39
.L40:
	mov	r2, r0
.L39:
	.loc 1 2435 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L40
	.loc 1 2436 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	itemOn
	.word	currentMenu
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE66:
	.size	M_Weapons, .-M_Weapons
	.align	2
	.global	M_StatusBar
	.type	M_StatusBar, %function
M_StatusBar:
.LFB68:
	.loc 1 2510 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL22:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 2516 0
	mov	r2, #0
	.loc 1 2513 0
	mov	r0, #1
.LVL23:
	.loc 1 2514 0
	mov	r4, #3
.LBB306:
.LBB307:
	.loc 1 5385 0
	ldr	r1, .L48
.LBE307:
.LBE306:
	.loc 1 2513 0
	ldr	lr, .L48+4
.LBB311:
.LBB308:
	.loc 1 5386 0
	add	r3, r1, #264
	ldrh	r9, [r3]
	ldr	r8, .L48+8
.LBE308:
.LBE311:
	.loc 1 2520 0
	ldr	r3, [r1, #268]
.LBB312:
.LBB309:
	.loc 1 5385 0
	ldr	r7, .L48+12
.LBE309:
.LBE312:
	.loc 1 2520 0
	ldr	r6, .L48+16
	.loc 1 2519 0
	ldr	r5, .L48+20
	.loc 1 2514 0
	ldr	ip, .L48+24
.LBB313:
.LBB310:
	.loc 1 5385 0
	add	r1, r1, #244
	.loc 1 5386 0
	strh	r9, [r8]	@ movhi
	.loc 1 5385 0
	str	r1, [r7]
.LBE310:
.LBE313:
	.loc 1 2520 0
	str	r3, [r6]
	.loc 1 2513 0
	str	r0, [lr]
	.loc 1 2515 0
	str	r0, [lr, #28]
	.loc 1 2516 0
	str	r2, [lr, #8]
	.loc 1 2517 0
	str	r2, [lr, #12]
	.loc 1 2518 0
	str	r2, [lr, #16]
	.loc 1 2519 0
	str	r2, [r5]
	.loc 1 2514 0
	str	r4, [ip]
	.loc 1 2522 0
	b	.L45
.L46:
	mov	r2, r0
.L45:
	.loc 1 2522 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L46
	.loc 1 2523 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	itemOn
	.word	currentMenu
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE68:
	.size	M_StatusBar, .-M_StatusBar
	.align	2
	.global	M_Automap
	.type	M_Automap, %function
M_Automap:
.LFB70:
	.loc 1 2631 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL24:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 2637 0
	mov	r2, #0
	.loc 1 2634 0
	mov	r1, #1
	.loc 1 2635 0
	mov	r4, #4
.LBB314:
.LBB315:
	.loc 1 5385 0
	ldr	r3, .L54
.LBE315:
.LBE314:
	.loc 1 2634 0
	ldr	lr, .L54+4
.LBB319:
.LBB316:
	.loc 1 5385 0
	add	r0, r3, #276
.LVL25:
	ldr	r9, .L54+8
.LBE316:
.LBE319:
	.loc 1 2643 0
	ldr	r3, [r3, #300]
.LBB320:
.LBB317:
	.loc 1 5386 0
	ldrh	r8, [r0, #20]
	ldr	r7, .L54+12
.LBE317:
.LBE320:
	.loc 1 2643 0
	ldr	r6, .L54+16
	.loc 1 2642 0
	ldr	r5, .L54+20
	.loc 1 2635 0
	ldr	ip, .L54+24
.LBB321:
.LBB318:
	.loc 1 5385 0
	str	r0, [r9]
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
.LBE318:
.LBE321:
	.loc 1 2643 0
	str	r3, [r6]
	.loc 1 2634 0
	str	r1, [lr]
	.loc 1 2636 0
	str	r1, [lr, #32]
	.loc 1 2637 0
	str	r2, [lr, #8]
	.loc 1 2638 0
	str	r2, [lr, #36]
	.loc 1 2639 0
	str	r2, [lr, #12]
	.loc 1 2640 0
	str	r2, [lr, #16]
	.loc 1 2642 0
	str	r2, [r5]
	.loc 1 2635 0
	str	r4, [ip]
	.loc 1 2644 0
	b	.L51
.L52:
	mov	r2, r0
.L51:
	.loc 1 2644 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L52
	.loc 1 2645 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L55:
	.align	2
.L54:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	currentMenu
	.word	itemOn
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE70:
	.size	M_Automap, .-M_Automap
	.align	2
	.global	M_Enemy
	.type	M_Enemy, %function
M_Enemy:
.LFB73:
	.loc 1 2791 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL26:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 2797 0
	mov	r2, #0
	.loc 1 2794 0
	mov	r1, #1
	.loc 1 2795 0
	mov	r4, #5
.LBB322:
.LBB323:
	.loc 1 5385 0
	ldr	r3, .L60
.LBE323:
.LBE322:
	.loc 1 2794 0
	ldr	lr, .L60+4
.LBB327:
.LBB324:
	.loc 1 5385 0
	add	r0, r3, #312
.LVL27:
	ldr	r9, .L60+8
.LBE324:
.LBE327:
	.loc 1 2801 0
	ldr	r3, [r3, #336]
.LBB328:
.LBB325:
	.loc 1 5386 0
	ldrh	r8, [r0, #20]
	ldr	r7, .L60+12
.LBE325:
.LBE328:
	.loc 1 2801 0
	ldr	r6, .L60+16
	.loc 1 2800 0
	ldr	r5, .L60+20
	.loc 1 2795 0
	ldr	ip, .L60+24
.LBB329:
.LBB326:
	.loc 1 5385 0
	str	r0, [r9]
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
.LBE326:
.LBE329:
	.loc 1 2801 0
	str	r3, [r6]
	.loc 1 2794 0
	str	r1, [lr]
	.loc 1 2796 0
	str	r1, [lr, #40]
	.loc 1 2797 0
	str	r2, [lr, #8]
	.loc 1 2798 0
	str	r2, [lr, #12]
	.loc 1 2799 0
	str	r2, [lr, #16]
	.loc 1 2800 0
	str	r2, [r5]
	.loc 1 2795 0
	str	r4, [ip]
	.loc 1 2803 0
	b	.L57
.L58:
	mov	r2, r0
.L57:
	.loc 1 2803 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L58
	.loc 1 2804 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	currentMenu
	.word	itemOn
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE73:
	.size	M_Enemy, .-M_Enemy
	.align	2
	.global	M_General
	.type	M_General, %function
M_General:
.LFB78:
	.loc 1 3120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL28:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 3126 0
	mov	r2, #0
	.loc 1 3123 0
	mov	r1, #1
	.loc 1 3124 0
	mov	r4, #8
.LBB330:
.LBB331:
	.loc 1 5385 0
	ldr	r3, .L66
.LBE331:
.LBE330:
	.loc 1 3123 0
	ldr	lr, .L66+4
.LBB335:
.LBB332:
	.loc 1 5385 0
	add	r0, r3, #344
.LVL29:
	ldr	r9, .L66+8
.LBE332:
.LBE335:
	.loc 1 3130 0
	ldr	r3, [r3, #368]
.LBB336:
.LBB333:
	.loc 1 5386 0
	ldrh	r8, [r0, #20]
	ldr	r7, .L66+12
.LBE333:
.LBE336:
	.loc 1 3130 0
	ldr	r6, .L66+16
	.loc 1 3129 0
	ldr	r5, .L66+20
	.loc 1 3124 0
	ldr	ip, .L66+24
.LBB337:
.LBB334:
	.loc 1 5385 0
	str	r0, [r9]
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
.LBE334:
.LBE337:
	.loc 1 3130 0
	str	r3, [r6]
	.loc 1 3123 0
	str	r1, [lr]
	.loc 1 3125 0
	str	r1, [lr, #44]
	.loc 1 3126 0
	str	r2, [lr, #8]
	.loc 1 3127 0
	str	r2, [lr, #12]
	.loc 1 3128 0
	str	r2, [lr, #16]
	.loc 1 3129 0
	str	r2, [r5]
	.loc 1 3124 0
	str	r4, [ip]
	.loc 1 3132 0
	b	.L63
.L64:
	mov	r2, r0
.L63:
	.loc 1 3132 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L64
	.loc 1 3133 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	currentMenu
	.word	itemOn
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE78:
	.size	M_General, .-M_General
	.align	2
	.global	M_Compat
	.type	M_Compat, %function
M_Compat:
.LFB80:
	.loc 1 3313 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL30:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 3319 0
	mov	r2, #0
	.loc 1 3316 0
	mov	r1, #1
	.loc 1 3317 0
	mov	r4, #9
.LBB338:
.LBB339:
	.loc 1 5385 0
	ldr	r3, .L72
.LBE339:
.LBE338:
	.loc 1 3316 0
	ldr	lr, .L72+4
.LBB343:
.LBB340:
	.loc 1 5385 0
	add	r0, r3, #384
.LVL31:
	ldr	r9, .L72+8
.LBE340:
.LBE343:
	.loc 1 3323 0
	ldr	r3, [r3, #408]
.LBB344:
.LBB341:
	.loc 1 5386 0
	ldrh	r8, [r0, #20]
	ldr	r7, .L72+12
.LBE341:
.LBE344:
	.loc 1 3323 0
	ldr	r6, .L72+16
	.loc 1 3322 0
	ldr	r5, .L72+20
	.loc 1 3317 0
	ldr	ip, .L72+24
.LBB345:
.LBB342:
	.loc 1 5385 0
	str	r0, [r9]
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
.LBE342:
.LBE345:
	.loc 1 3323 0
	str	r3, [r6]
	.loc 1 3316 0
	str	r1, [lr]
	.loc 1 3318 0
	str	r1, [lr, #44]
	.loc 1 3319 0
	str	r2, [lr, #8]
	.loc 1 3320 0
	str	r2, [lr, #12]
	.loc 1 3321 0
	str	r2, [lr, #16]
	.loc 1 3322 0
	str	r2, [r5]
	.loc 1 3317 0
	str	r4, [ip]
	.loc 1 3325 0
	b	.L69
.L70:
	mov	r2, r0
.L69:
	.loc 1 3325 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L70
	.loc 1 3326 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L73:
	.align	2
.L72:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	currentMenu
	.word	itemOn
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE80:
	.size	M_Compat, .-M_Compat
	.align	2
	.global	M_Messages
	.type	M_Messages, %function
M_Messages:
.LFB82:
	.loc 1 3433 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL32:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 3439 0
	mov	r2, #0
	.loc 1 3436 0
	mov	r1, #1
	.loc 1 3437 0
	mov	r4, #6
.LBB346:
.LBB347:
	.loc 1 5385 0
	ldr	r3, .L78
.LBE347:
.LBE346:
	.loc 1 3436 0
	ldr	lr, .L78+4
.LBB351:
.LBB348:
	.loc 1 5385 0
	add	r0, r3, #424
.LVL33:
	ldr	r9, .L78+8
.LBE348:
.LBE351:
	.loc 1 3443 0
	ldr	r3, [r3, #448]
.LBB352:
.LBB349:
	.loc 1 5386 0
	ldrh	r8, [r0, #20]
	ldr	r7, .L78+12
.LBE349:
.LBE352:
	.loc 1 3443 0
	ldr	r6, .L78+16
	.loc 1 3442 0
	ldr	r5, .L78+20
	.loc 1 3437 0
	ldr	ip, .L78+24
.LBB353:
.LBB350:
	.loc 1 5385 0
	str	r0, [r9]
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
.LBE350:
.LBE353:
	.loc 1 3443 0
	str	r3, [r6]
	.loc 1 3436 0
	str	r1, [lr]
	.loc 1 3438 0
	str	r1, [lr, #48]
	.loc 1 3439 0
	str	r2, [lr, #8]
	.loc 1 3440 0
	str	r2, [lr, #12]
	.loc 1 3441 0
	str	r2, [lr, #16]
	.loc 1 3442 0
	str	r2, [r5]
	.loc 1 3437 0
	str	r4, [ip]
	.loc 1 3445 0
	b	.L75
.L76:
	mov	r2, r0
.L75:
	.loc 1 3445 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L76
	.loc 1 3446 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L79:
	.align	2
.L78:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	currentMenu
	.word	itemOn
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE82:
	.size	M_Messages, .-M_Messages
	.align	2
	.global	M_ChatStrings
	.type	M_ChatStrings, %function
M_ChatStrings:
.LFB84:
	.loc 1 3509 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL34:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 3514 0
	mov	r2, #0
	.loc 1 3511 0
	mov	r1, #1
	.loc 1 3512 0
	mov	r4, #7
.LBB354:
.LBB355:
	.loc 1 5385 0
	ldr	r3, .L84
.LBE355:
.LBE354:
	.loc 1 3511 0
	ldr	lr, .L84+4
.LBB359:
.LBB356:
	.loc 1 5385 0
	add	r0, r3, #456
.LVL35:
	ldr	r9, .L84+8
.LBE356:
.LBE359:
	.loc 1 3518 0
	ldr	r3, [r3, #480]
.LBB360:
.LBB357:
	.loc 1 5386 0
	ldrh	r8, [r0, #20]
	ldr	r7, .L84+12
.LBE357:
.LBE360:
	.loc 1 3518 0
	ldr	r6, .L84+16
	.loc 1 3517 0
	ldr	r5, .L84+20
	.loc 1 3512 0
	ldr	ip, .L84+24
.LBB361:
.LBB358:
	.loc 1 5385 0
	str	r0, [r9]
	.loc 1 5386 0
	strh	r8, [r7]	@ movhi
.LBE358:
.LBE361:
	.loc 1 3518 0
	str	r3, [r6]
	.loc 1 3511 0
	str	r1, [lr]
	.loc 1 3513 0
	str	r1, [lr, #52]
	.loc 1 3514 0
	str	r2, [lr, #8]
	.loc 1 3515 0
	str	r2, [lr, #12]
	.loc 1 3516 0
	str	r2, [lr, #16]
	.loc 1 3517 0
	str	r2, [r5]
	.loc 1 3512 0
	str	r4, [ip]
	.loc 1 3520 0
	b	.L81
.L82:
	mov	r2, r0
.L81:
	.loc 1 3520 0 is_stmt 0 discriminator 1
	ldr	r1, [r3, #4]
	mov	ip, r3
	tst	r1, #8192
	add	r3, r3, #36
	add	r0, r2, #1
	bne	.L82
	.loc 1 3521 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	str	r2, [lr, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	currentMenu
	.word	itemOn
	.word	current_setup_menu
	.word	mult_screens_index
	.word	setup_screen
	.cfi_endproc
.LFE84:
	.size	M_ChatStrings, .-M_ChatStrings
	.align	2
	.global	M_ExtHelp
	.type	M_ExtHelp, %function
M_ExtHelp:
.LFB91:
	.loc 1 3771 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL36:
	.loc 1 3773 0
	mov	r1, #1
.LBB362:
.LBB363:
	.loc 1 5385 0
	ldr	r3, .L88
.LBE363:
.LBE362:
	.loc 1 3771 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB366:
.LBB364:
	.loc 1 5386 0
	ldrh	ip, [r3, #20]
	.loc 1 5385 0
	ldr	lr, .L88+4
	.loc 1 5386 0
	ldr	r0, .L88+8
.LBE364:
.LBE366:
	.loc 1 3773 0
	ldr	r2, .L88+12
.LBB367:
.LBB365:
	.loc 1 5385 0
	str	r3, [lr]
	.loc 1 5386 0
	strh	ip, [r0]	@ movhi
.LBE365:
.LBE367:
	.loc 1 3773 0
	str	r1, [r2]
.LVL37:
	ldr	pc, [sp], #4
.L89:
	.align	2
.L88:
	.word	.LANCHOR0+488
	.word	currentMenu
	.word	itemOn
	.word	extended_help_index
	.cfi_endproc
.LFE91:
	.size	M_ExtHelp, .-M_ExtHelp
	.align	2
	.type	M_DrawString, %function
M_DrawString:
.LFB94:
	.loc 1 3970 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL38:
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
	mov	r10, r1
	mov	r9, r2
.LBB368:
	.loc 1 3976 0
	ldr	r7, .L99
.LBE368:
	.loc 1 3982 0
	ldr	r8, .L99+4
	.loc 1 3990 0
	ldr	fp, .L99+8
	.loc 1 3970 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	sub	r6, r3, #1
.LVL39:
.L91:
	.loc 1 3974 0
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
.LVL40:
	cmp	r3, #0
	beq	.L90
.LVL41:
.L96:
.LBB369:
	.loc 1 3976 0
	ldr	r2, [r7]
	add	r2, r2, r3
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	and	r2, r2, #3
	cmp	r2, #2
	subeq	r3, r3, #32
.LVL42:
.LBE369:
	sub	r3, r3, #33
.LVL43:
	.loc 1 3977 0
	cmp	r3, #95
	.loc 1 3982 0
	add	r2, r3, r3, asl #2
	.loc 1 3979 0
	addhi	r4, r4, #4
.LVL44:
	.loc 1 3977 0
	bhi	.L91
	.loc 1 3982 0
	ldr	r5, [r8, r2, asl #2]
.LVL45:
	add	r1, r8, r2, asl #2
	.loc 1 3983 0
	add	r3, r4, r5
.LVL46:
	cmp	r3, #320
	bgt	.L90
	.loc 1 3990 0
	mov	r2, #6
	ldr	r3, [r1, #16]
	str	r2, [sp, #4]
	str	r9, [sp]
	mov	r0, r4
	ldr	ip, [fp]
	mov	r1, r10
	mov	r2, #0
	blx	ip
.LVL47:
	.loc 1 3974 0
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	.loc 1 3993 0
	sub	r5, r5, #1
.LVL48:
	.loc 1 3974 0
	cmp	r3, #0
	.loc 1 3993 0
	add	r4, r4, r5
.LVL49:
	.loc 1 3974 0
	bne	.L96
.LVL50:
.L90:
	.loc 1 3995 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL51:
.L100:
	.align	2
.L99:
	.word	__ctype_ptr__
	.word	hu_font
	.word	V_DrawNumPatch
	.cfi_endproc
.LFE94:
	.size	M_DrawString, .-M_DrawString
	.align	2
	.type	M_GetPixelWidth, %function
M_GetPixelWidth:
.LFB96:
	.loc 1 4008 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL52:
.LBB370:
	.loc 1 4014 0
	ldr	r3, .L109
.LBE370:
	.loc 1 4008 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	ip, r0, #1
.LBB371:
	.loc 1 4014 0
	ldr	lr, [r3]
.LBE371:
	.loc 1 4009 0
	mov	r1, #0
	.loc 1 4020 0
	ldr	r4, .L109+4
	.loc 1 4012 0
	b	.L102
.LVL53:
.L106:
.LBB372:
	.loc 1 4014 0
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	and	r2, r2, #3
	cmp	r2, #2
	subeq	r3, r3, #32
.LVL54:
.LBE372:
	sub	r3, r3, #33
.LVL55:
	.loc 1 4015 0
	cmp	r3, #95
	.loc 1 4020 0
	addls	r3, r3, r3, asl #2
.LVL56:
	ldrls	r0, [r4, r3, asl #2]
	.loc 1 4017 0
	addhi	r1, r1, #4
.LVL57:
	.loc 1 4020 0
	addls	r1, r1, r0
.LVL58:
	.loc 1 4021 0
	subls	r1, r1, #1
.LVL59:
.L102:
	.loc 1 4012 0
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
.LVL60:
	cmp	r3, #0
.LBB373:
	.loc 1 4014 0
	add	r2, lr, r3
.LBE373:
	.loc 1 4012 0
	bne	.L106
.LVL61:
	.loc 1 4025 0
	add	r0, r1, #1
.LVL62:
	ldmfd	sp!, {r4, pc}
.L110:
	.align	2
.L109:
	.word	__ctype_ptr__
	.word	hu_font
	.cfi_endproc
.LFE96:
	.size	M_GetPixelWidth, .-M_GetPixelWidth
	.align	2
	.global	M_DrawMainMenu
	.type	M_DrawMainMenu, %function
M_DrawMainMenu:
.LFB10:
	.loc 1 359 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 361 0
	ldr	r3, .L113
	.loc 1 359 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 361 0
	ldr	r0, .L113+4
	ldr	r4, [r3]
	bl	W_GetNumForName
.LVL63:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, #94
	mov	r1, #2
	mov	r2, #0
	blx	r4
.LVL64:
	.loc 1 362 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L114:
	.align	2
.L113:
	.word	V_DrawNumPatch
	.word	.LC0
	.cfi_endproc
.LFE10:
	.size	M_DrawMainMenu, .-M_DrawMainMenu
	.align	2
	.global	M_DrawEpisode
	.type	M_DrawEpisode, %function
M_DrawEpisode:
.LFB17:
	.loc 1 538 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 540 0
	ldr	r3, .L117
	.loc 1 538 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 540 0
	ldr	r0, .L117+4
	ldr	r4, [r3]
	bl	W_GetNumForName
.LVL65:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, #54
	mov	r1, #38
	mov	r2, #0
	blx	r4
.LVL66:
	.loc 1 541 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L118:
	.align	2
.L117:
	.word	V_DrawNumPatch
	.word	.LC1
	.cfi_endproc
.LFE17:
	.size	M_DrawEpisode, .-M_DrawEpisode
	.align	2
	.global	M_DrawNewGame
	.type	M_DrawNewGame, %function
M_DrawNewGame:
.LFB19:
	.loc 1 606 0
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
	.loc 1 608 0
	ldr	r6, .L121
	.loc 1 606 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 608 0
	ldr	r0, .L121+4
	ldr	r7, [r6]
	mov	r5, #6
	bl	W_GetNumForName
.LVL67:
	mov	r4, #4
	mov	r3, r0
	mov	r1, #14
	mov	r2, #0
	str	r5, [sp]
	str	r4, [sp, #4]
	mov	r0, #96
	blx	r7
.LVL68:
	.loc 1 609 0
	ldr	r0, .L121+8
	ldr	r6, [r6]
	bl	W_GetNumForName
.LVL69:
	str	r5, [sp]
	mov	r3, r0
	str	r4, [sp, #4]
	mov	r0, #54
	mov	r1, #38
	mov	r2, #0
	blx	r6
.LVL70:
	.loc 1 610 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L122:
	.align	2
.L121:
	.word	V_DrawNumPatch
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE19:
	.size	M_DrawNewGame, .-M_DrawNewGame
	.align	2
	.global	M_DrawExtHelp
	.type	M_DrawExtHelp, %function
M_DrawExtHelp:
.LFB92:
	.loc 1 3780 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 3781 0
	mov	r4, #0
	.loc 1 3783 0
	mov	lr, #1
	.loc 1 3784 0
	ldr	r2, .L125
	ldr	r3, .L125+4
	ldr	r2, [r2]
	.loc 1 3781 0
	ldr	r1, .L125+8
	.loc 1 3784 0
	smull	r3, ip, r3, r2
	.loc 1 3781 0
	ldmia	r1, {r0, r1}
	.loc 1 3784 0
	mov	r3, r2, asr #31
	rsb	r3, r3, ip, asr #2
	.loc 1 3785 0
	add	ip, r3, r3, asl #2
	.loc 1 3780 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 1 3785 0
	sub	r2, r2, ip, asl #1
	.loc 1 3783 0
	ldr	r5, .L125+12
	.loc 1 3787 0
	ldr	ip, .L125+16
	.loc 1 3785 0
	add	r2, r2, #48
	.loc 1 3784 0
	add	r3, r3, #48
	.loc 1 3781 0
	str	r0, [sp, #12]
	mov	r1, r1, lsr #16
	.loc 1 3787 0
	add	r0, sp, #12
	.loc 1 3785 0
	strb	r2, [sp, #17]
	.loc 1 3784 0
	strb	r3, [sp, #16]
	.loc 1 3781 0
	strb	r1, [sp, #18]
	.loc 1 3783 0
	str	lr, [r5]
	.loc 1 3781 0
	strb	r4, [sp, #19]
	.loc 1 3787 0
	ldr	r5, [ip]
	.loc 1 3781 0
	strb	r4, [sp, #20]
	strb	r4, [sp, #21]
	.loc 1 3787 0
	bl	W_GetNumForName
.LVL71:
	mov	lr, #6
	mov	ip, #4
	mov	r3, r0
	mov	r1, r4
	mov	r0, r4
	mov	r2, r4
	str	lr, [sp]
	str	ip, [sp, #4]
	blx	r5
.LVL72:
	.loc 1 3788 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L126:
	.align	2
.L125:
	.word	extended_help_index
	.word	1717986919
	.word	.LANCHOR2
	.word	inhelpscreens
	.word	V_DrawNumPatch
	.cfi_endproc
.LFE92:
	.size	M_DrawExtHelp, .-M_DrawExtHelp
	.align	2
	.global	M_LoadSelect
	.type	M_LoadSelect, %function
M_LoadSelect:
.LFB26:
	.loc 1 758 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL73:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 762 0
	mov	r1, #0
	bl	G_LoadGame
.LVL74:
.LBB374:
.LBB375:
	.loc 1 5372 0
	mov	r3, #0
	ldr	r0, .L129
	.loc 1 5373 0
	ldr	r1, .L129+4
	.loc 1 5374 0
	ldr	r2, .L129+8
	.loc 1 5372 0
	strb	r3, [r0]
	.loc 1 5373 0
	str	r3, [r1]
	.loc 1 5374 0
	str	r3, [r2, #12]
	ldmfd	sp!, {r3, pc}
.L130:
	.align	2
.L129:
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
.LBE375:
.LBE374:
	.cfi_endproc
.LFE26:
	.size	M_LoadSelect, .-M_LoadSelect
	.align	2
	.type	M_VerifyForcedLoadGame, %function
M_VerifyForcedLoadGame:
.LFB27:
	.loc 1 774 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL75:
	.loc 1 775 0
	cmp	r0, #121
	.loc 1 774 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 775 0
	beq	.L134
.LVL76:
.L132:
	.loc 1 777 0
	ldr	r4, .L135
	ldr	r0, [r4, #56]
	bl	Z_Free
.LVL77:
.LBB376:
.LBB377:
	.loc 1 5372 0
	mov	r3, #0
	ldr	r1, .L135+4
	.loc 1 5373 0
	ldr	r2, .L135+8
	.loc 1 5374 0
	str	r3, [r4, #12]
	.loc 1 5372 0
	strb	r3, [r1]
	.loc 1 5373 0
	str	r3, [r2]
	ldmfd	sp!, {r4, pc}
.LVL78:
.L134:
.LBE377:
.LBE376:
	.loc 1 776 0
	bl	G_ForcedLoadGame
.LVL79:
	b	.L132
.L136:
	.align	2
.L135:
	.word	.LANCHOR1
	.word	menuactive
	.word	print_warning_about_changes
	.cfi_endproc
.LFE27:
	.size	M_VerifyForcedLoadGame, .-M_VerifyForcedLoadGame
	.align	2
	.global	M_SaveSelect
	.type	M_SaveSelect, %function
M_SaveSelect:
.LFB33:
	.loc 1 909 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL80:
	mov	r3, r0
	.loc 1 911 0
	mov	ip, #1
	.loc 1 909 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 918 0
	add	r4, r0, r0, asl #1
	ldr	r6, .L140
	mov	r4, r4, asl #3
	.loc 1 917 0
	ldr	lr, .L140+4
	.loc 1 911 0
	ldr	r2, .L140+8
	.loc 1 918 0
	add	r5, r4, r6
	mov	r1, r5
	ldr	r0, .L140+12
.LVL81:
	.loc 1 917 0
	str	r3, [lr]
	.loc 1 911 0
	str	ip, [r2]
	.loc 1 918 0
	bl	strcpy
.LVL82:
	.loc 1 919 0
	ldr	r3, .L140+16
	mov	r0, r5
	ldr	r1, [r3]
	bl	strcmp
.LVL83:
	cmp	r0, #0
	.loc 1 920 0
	streqb	r0, [r6, r4]
	.loc 1 921 0
	mov	r0, r5
	bl	strlen
.LVL84:
	ldr	r3, .L140+20
	str	r0, [r3]
	ldmfd	sp!, {r4, r5, r6, pc}
.L141:
	.align	2
.L140:
	.word	savegamestrings
	.word	saveSlot
	.word	saveStringEnter
	.word	saveOldString
	.word	s_EMPTYSTRING
	.word	saveCharIndex
	.cfi_endproc
.LFE33:
	.size	M_SaveSelect, .-M_SaveSelect
	.global	__aeabi_uidivmod
	.align	2
	.global	M_QuitDOOM
	.type	M_QuitDOOM, %function
M_QuitDOOM:
.LFB38:
	.loc 1 1073 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL85:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 1079 0
	ldr	r3, .L147
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L146
	.loc 1 1082 0
	ldr	r2, .L147+4
	ldr	r3, .L147+8
	ldr	r1, [r2]
	ldr	r0, [r3]
.LVL86:
	sub	r1, r1, #1
	bl	__aeabi_uidivmod
.LVL87:
	ldr	r2, .L147+12
	ldr	r3, .L147+16
	add	r1, r1, #1
	ldr	r2, [r2, r1, asl #2]
	ldr	r3, [r3]
	ldr	r0, .L147+20
	ldr	r1, .L147+24
	bl	sprintf
.LVL88:
.L144:
.LBB378:
.LBB379:
	.loc 1 5410 0
	mov	r3, #1
	.loc 1 5409 0
	ldr	r1, .L147+28
	.loc 1 5411 0
	ldr	r2, .L147+32
	.loc 1 5409 0
	ldrb	r7, [r1]	@ zero_extendqisi2
	ldr	r6, .L147+36
	.loc 1 5410 0
	ldr	r5, .L147+40
	.loc 1 5413 0
	ldr	r4, .L147+44
	.loc 1 5412 0
	ldr	r0, .L147+48
	ldr	ip, .L147+52
	.loc 1 5411 0
	add	lr, r2, #60
	.loc 1 5409 0
	str	r7, [r6]
	.loc 1 5414 0
	strb	r3, [r1]
	.loc 1 5410 0
	str	r3, [r5]
	.loc 1 5413 0
	str	r3, [r4]
	.loc 1 5411 0
	str	lr, [r2, #220]
	.loc 1 5412 0
	str	ip, [r0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL89:
.L146:
.LBE379:
.LBE378:
	.loc 1 1080 0
	ldr	r2, .L147+16
	ldr	r3, .L147+12
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r1, .L147+24
	ldr	r0, .L147+20
.LVL90:
	bl	sprintf
.LVL91:
	b	.L144
.L148:
	.align	2
.L147:
	.word	language
	.word	NUM_QUITMESSAGES
	.word	gametic
	.word	endmsg
	.word	s_DOSY
	.word	.LANCHOR1+60
	.word	.LC5
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	M_QuitResponse
	.cfi_endproc
.LFE38:
	.size	M_QuitDOOM, .-M_QuitDOOM
	.align	2
	.global	M_SfxVol
	.type	M_SfxVol, %function
M_SfxVol:
.LFB41:
	.loc 1 1144 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL92:
	.loc 1 1145 0
	cmp	r0, #0
	.loc 1 1148 0
	ldr	r3, .L157
	.loc 1 1145 0
	beq	.L151
	cmp	r0, #1
	.loc 1 1152 0
	ldr	r0, [r3]
.LVL93:
	.loc 1 1145 0
	bne	.L153
	.loc 1 1152 0
	cmp	r0, #14
	.loc 1 1153 0
	addle	r0, r0, #1
	strle	r0, [r3]
.L153:
	.loc 1 1157 0
	b	S_SetSfxVolume
.LVL94:
.L151:
	.loc 1 1148 0
	ldr	r0, [r3]
.LVL95:
	cmp	r0, #0
	.loc 1 1149 0
	subne	r0, r0, #1
	strne	r0, [r3]
	.loc 1 1157 0
	b	S_SetSfxVolume
.LVL96:
.L158:
	.align	2
.L157:
	.word	snd_SfxVolume
	.cfi_endproc
.LFE41:
	.size	M_SfxVol, .-M_SfxVol
	.align	2
	.global	M_MusicVol
	.type	M_MusicVol, %function
M_MusicVol:
.LFB42:
	.loc 1 1161 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL97:
	.loc 1 1162 0
	cmp	r0, #0
	.loc 1 1165 0
	ldr	r3, .L167
	.loc 1 1162 0
	beq	.L161
	cmp	r0, #1
	.loc 1 1169 0
	ldr	r0, [r3]
.LVL98:
	.loc 1 1162 0
	bne	.L163
	.loc 1 1169 0
	cmp	r0, #14
	.loc 1 1170 0
	addle	r0, r0, #1
	strle	r0, [r3]
.L163:
	.loc 1 1174 0
	b	S_SetMusicVolume
.LVL99:
.L161:
	.loc 1 1165 0
	ldr	r0, [r3]
.LVL100:
	cmp	r0, #0
	.loc 1 1166 0
	subne	r0, r0, #1
	strne	r0, [r3]
	.loc 1 1174 0
	b	S_SetMusicVolume
.LVL101:
.L168:
	.align	2
.L167:
	.word	snd_MusicVolume
	.cfi_endproc
.LFE42:
	.size	M_MusicVol, .-M_MusicVol
	.align	2
	.type	M_DoSave, %function
M_DoSave:
.LFB32:
	.loc 1 894 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL102:
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
.LBB380:
.LBB381:
	.loc 1 5410 0
	mov	r3, #1
	.loc 1 5412 0
	mov	r4, #0
.LBE381:
.LBE380:
	.loc 1 894 0
	mov	r5, r0
	.loc 1 895 0
	ldr	r2, .L172
.LBB385:
.LBB382:
	.loc 1 5409 0
	ldr	r6, .L172+4
.LBE382:
.LBE385:
	.loc 1 895 0
	ldr	ip, [r2]
.LVL103:
.LBB386:
.LBB383:
	.loc 1 5409 0
	ldrb	fp, [r6]	@ zero_extendqisi2
	.loc 1 5413 0
	ldr	lr, .L172+8
	.loc 1 5411 0
	ldr	r7, .L172+12
	.loc 1 5409 0
	ldr	r10, .L172+16
	.loc 1 5410 0
	ldr	r9, .L172+20
	.loc 1 5412 0
	ldr	r8, .L172+24
.LBE383:
.LBE386:
	.loc 1 896 0
	mov	r2, ip
	mov	r0, r3
.LVL104:
	ldr	r1, .L172+28
.LBB387:
.LBB384:
	.loc 1 5411 0
	str	ip, [r7, #220]
	.loc 1 5414 0
	strb	r3, [r6]
	.loc 1 5410 0
	str	r3, [r9]
	.loc 1 5413 0
	str	r4, [lr]
	.loc 1 5409 0
	str	fp, [r10]
	.loc 1 5412 0
	str	r4, [r8]
.LBE384:
.LBE387:
	.loc 1 896 0
	bl	lprintf
.LVL105:
	.loc 1 897 0
	ldr	r3, .L172+32
	add	r1, r5, r5, asl #1
	add	r1, r3, r1, asl #3
	mov	r0, r5
	bl	G_SaveGame
.LVL106:
	.loc 1 901 0
	ldr	r3, .L172+36
.LBB388:
.LBB389:
	.loc 1 5373 0
	ldr	r2, .L172+40
.LBE389:
.LBE388:
	.loc 1 901 0
	ldr	r1, [r3]
.LBB392:
.LBB390:
	.loc 1 5372 0
	strb	r4, [r6]
.LBE390:
.LBE392:
	.loc 1 901 0
	cmn	r1, #2
.LBB393:
.LBB391:
	.loc 1 5374 0
	str	r4, [r7, #12]
	.loc 1 5373 0
	str	r4, [r2]
.LBE391:
.LBE393:
	.loc 1 902 0
	streq	r5, [r3]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L173:
	.align	2
.L172:
	.word	s_SAVING
	.word	menuactive
	.word	messageNeedsInput
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageRoutine
	.word	.LC6
	.word	savegamestrings
	.word	quickSaveSlot
	.word	print_warning_about_changes
	.cfi_endproc
.LFE32:
	.size	M_DoSave, .-M_DoSave
	.align	2
	.global	M_SizeDisplay
	.type	M_SizeDisplay, %function
M_SizeDisplay:
.LFB55:
	.loc 1 1406 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL107:
	.loc 1 1407 0
	subs	r2, r0, #0
	beq	.L176
	cmp	r2, #1
	bne	.L183
	.loc 1 1416 0
	ldr	r2, .L186
	ldr	r3, [r2]
	cmp	r3, #7
	ble	.L185
	.loc 1 1421 0
	ldr	r2, .L186+4
	ldr	r1, .L186+8
	ldr	r3, [r2]
	ldr	r0, [r1]
.LVL108:
	clz	r3, r3
	mov	r3, r3, lsr #5
	str	r3, [r2]
	.loc 1 1424 0
	b	R_SetViewSize
.LVL109:
.L183:
	ldr	r3, .L186+8
	ldr	r0, [r3]
.LVL110:
	b	R_SetViewSize
.LVL111:
.L176:
	.loc 1 1409 0
	ldr	ip, .L186
	ldr	r1, [ip]
	cmp	r1, #0
	ble	.L183
	.loc 1 1406 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1410 0
	ldr	lr, .L186+8
	.loc 1 1412 0
	ldr	r4, .L186+4
	.loc 1 1410 0
	ldr	r3, [lr]
	.loc 1 1411 0
	sub	r1, r1, #1
	.loc 1 1410 0
	sub	r0, r3, #1
.LVL112:
	str	r0, [lr]
	.loc 1 1412 0
	str	r2, [r4]
	.loc 1 1425 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1411 0
	str	r1, [ip]
	.loc 1 1424 0
	b	R_SetViewSize
.LVL113:
.L185:
	.loc 1 1417 0
	ldr	r1, .L186+8
	.loc 1 1418 0
	add	r3, r3, #1
	.loc 1 1417 0
	ldr	r0, [r1]
.LVL114:
	.loc 1 1418 0
	str	r3, [r2]
	.loc 1 1417 0
	add	r0, r0, #1
	str	r0, [r1]
	.loc 1 1424 0
	b	R_SetViewSize
.LVL115:
.L187:
	.align	2
.L186:
	.word	screenSize
	.word	hud_displayed
	.word	screenblocks
	.cfi_endproc
.LFE55:
	.size	M_SizeDisplay, .-M_SizeDisplay
	.align	2
	.global	M_Trans
	.type	M_Trans, %function
M_Trans:
.LFB75:
	.loc 1 3092 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 3093 0
	ldr	r3, .L190
	ldr	r2, .L190+4
	ldr	r3, [r3]
	.loc 1 3095 0
	cmp	r3, #0
	.loc 1 3093 0
	str	r3, [r2]
	.loc 1 3095 0
	bxeq	lr
	.loc 1 3096 0
	mov	r0, #0
	b	R_InitTranMap
.LVL116:
.L191:
	.align	2
.L190:
	.word	default_translucency
	.word	general_translucency
	.cfi_endproc
.LFE75:
	.size	M_Trans, .-M_Trans
	.align	2
	.global	M_ChangeDemoSmoothTurns
	.type	M_ChangeDemoSmoothTurns, %function
M_ChangeDemoSmoothTurns:
.LFB77:
	.loc 1 3106 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 3107 0
	ldr	r3, .L195
	.loc 1 3108 0
	ldr	r2, .L195+4
	.loc 1 3107 0
	ldr	r3, [r3]
	.loc 1 3112 0
	mov	r0, #0
	.loc 1 3107 0
	cmp	r3, #0
	.loc 1 3108 0
	ldr	r3, [r2, #948]
	bicne	r3, r3, #8192
	.loc 1 3110 0
	orreq	r3, r3, #8192
	.loc 1 3108 0
	bicne	r3, r3, #2
	.loc 1 3110 0
	orreq	r3, r3, #2
	str	r3, [r2, #948]
	.loc 1 3112 0
	b	R_SmoothPlaying_Reset
.LVL117:
.L196:
	.align	2
.L195:
	.word	demo_smoothturns
	.word	.LANCHOR0
	.cfi_endproc
.LFE77:
	.size	M_ChangeDemoSmoothTurns, .-M_ChangeDemoSmoothTurns
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	M_UpdateCurrent.isra.0, %function
M_UpdateCurrent.isra.0:
.LFB118:
	.loc 1 111 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL118:
	.loc 1 114 0
	cmp	r1, #0
	bxeq	lr
.LBB394:
.LBB395:
	.loc 1 108 0
	ldr	r2, .L205
	ldr	r3, [r0]
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L199
	ldr	r2, .L205+4
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L199
	ldr	r2, .L205+8
	ldr	r2, [r2]
	cmp	r2, #0
.LBE395:
.LBE394:
	.loc 1 116 0
	streq	r3, [r1]
.LBB397:
.LBB396:
	.loc 1 108 0
	bxeq	lr
.L199:
.LBE396:
.LBE397:
	.loc 1 117 0
	ldr	r2, [r1]
	cmp	r2, r3
	bxeq	lr
	.loc 1 118 0
	mov	r0, #65536
	mov	r2, #2
	ldr	r1, .L205+12
	ldr	r3, .L205+16
	str	r0, [r1]
	str	r2, [r3]
	bx	lr
.L206:
	.align	2
.L205:
	.word	demoplayback
	.word	demorecording
	.word	netgame
	.word	warning_about_changes
	.word	print_warning_about_changes
	.cfi_endproc
.LFE118:
	.size	M_UpdateCurrent.isra.0, .-M_UpdateCurrent.isra.0
	.text
	.align	2
	.type	M_QuitResponse, %function
M_QuitResponse:
.LFB37:
	.loc 1 1047 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL119:
	.loc 1 1048 0
	cmp	r0, #121
	bxne	lr
.LVL120:
	.loc 1 1047 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB401:
.LBB402:
	.loc 1 1050 0
	ldr	r3, .L222
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L209
	ldr	r3, .L222+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L210
.L209:
	.loc 1 1051 0
	ldr	r3, .L222+8
	ldr	r0, [r3]
.LVL121:
	cmp	r0, #0
	bne	.L210
	ldr	r3, .L222+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L210
.LBB403:
	.loc 1 1055 0
	ldr	r3, .L222+16
	.loc 1 1056 0
	ldr	r2, .L222+20
	.loc 1 1055 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1056 0
	ldr	r2, [r2]
	.loc 1 1055 0
	cmp	r3, #2
	.loc 1 1056 0
	ldr	r3, .L222+24
	and	r2, r2, #28
	add	r3, r3, r2
	ldreq	r1, [r3, #1124]
	.loc 1 1058 0
	ldrne	r1, [r3, #1156]
	bl	S_StartSound
.LVL122:
.L210:
.LBE403:
	.loc 1 1069 0
	mov	r0, #0
	bl	exit
.LVL123:
.L223:
	.align	2
.L222:
	.word	netgame
	.word	demoplayback
	.word	nosfxparm
	.word	snd_card
	.word	gamemode
	.word	gametic
	.word	.LANCHOR0
.LBE402:
.LBE401:
	.cfi_endproc
.LFE37:
	.size	M_QuitResponse, .-M_QuitResponse
	.align	2
	.type	M_SelectDone.isra.3, %function
M_SelectDone.isra.3:
.LFB121:
	.loc 1 3556 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL124:
	mov	r2, r0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 3558 0
	ldr	r3, [r0]
	.loc 1 3560 0
	mov	r1, #32
	.loc 1 3558 0
	bic	r3, r3, #2
	.loc 1 3559 0
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 3560 0
	mov	r0, #0
	bl	S_StartSound
.LVL125:
	.loc 1 3561 0
	mov	r1, #0
	.loc 1 3563 0
	ldr	r0, .L230
	.loc 1 3561 0
	ldr	r2, .L230+4
	.loc 1 3563 0
	ldr	r3, [r0]
	.loc 1 3561 0
	str	r1, [r2, #8]
	.loc 1 3563 0
	cmp	r3, r1
	.loc 1 3564 0
	subne	r3, r3, #1
	.loc 1 3562 0
	str	r1, [r2, #36]
	.loc 1 3564 0
	strne	r3, [r0]
	ldmfd	sp!, {r3, pc}
.L231:
	.align	2
.L230:
	.word	print_warning_about_changes
	.word	.LANCHOR1
	.cfi_endproc
.LFE121:
	.size	M_SelectDone.isra.3, .-M_SelectDone.isra.3
	.align	2
	.type	M_DrawDefVerify, %function
M_DrawDefVerify:
.LFB62:
	.loc 1 2024 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 2026 0
	ldr	r3, .L236
	.loc 1 2024 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 2026 0
	ldr	r0, .L236+4
	ldr	r5, [r3]
	mov	r4, #6
	bl	W_GetNumForName
.LVL126:
	mov	r2, #4
	mov	r3, r0
	str	r2, [sp, #4]
	str	r4, [sp]
	mov	r0, #66
	mov	r1, #88
	mov	r2, #0
	blx	r5
.LVL127:
	.loc 1 2030 0
	ldr	r3, .L236+8
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L235
	.loc 1 2034 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L235:
	.cfi_restore_state
.LBB408:
.LBB409:
	.loc 1 2031 0
	ldr	lr, .L236+12
	ldr	ip, .L236+16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2}
	stmia	ip, {r0, r1, r2}
.LVL128:
.LBB410:
.LBB411:
	.loc 1 4001 0
	mov	r2, r4
	mov	r0, #74
	mov	r1, #96
	sub	r3, ip, #16
.LBE411:
.LBE410:
.LBE409:
.LBE408:
	.loc 1 2034 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB415:
.LBB414:
.LBB413:
.LBB412:
	.loc 1 4001 0
	b	M_DrawString
.LVL129:
.L237:
	.align	2
.L236:
	.word	V_DrawNumPatch
	.word	.LC7
	.word	whichSkull
	.word	.LC8
	.word	.LANCHOR1+224
.LBE412:
.LBE413:
.LBE414:
.LBE415:
	.cfi_endproc
.LFE62:
	.size	M_DrawDefVerify, .-M_DrawDefVerify
	.align	2
	.type	M_StartControlPanel.part.7, %function
M_StartControlPanel.part.7:
.LFB125:
	.loc 1 5261 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 5277 0
	mov	r1, #0
	.loc 1 5278 0
	mov	ip, #1
	.loc 1 5275 0
	ldr	r2, .L240
	ldr	r3, .L240+4
	ldr	r2, [r2]
	.loc 1 5261 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 5278 0
	ldr	r0, .L240+8
	.loc 1 5280 0
	ldrh	r6, [r3, #68]
	.loc 1 5279 0
	ldr	r7, .L240+12
	.loc 1 5280 0
	ldr	r5, .L240+16
	.loc 1 5277 0
	ldr	r4, .L240+20
	.loc 1 5281 0
	ldr	lr, .L240+24
	.loc 1 5275 0
	add	r8, r3, #1184
	sub	r2, r2, #1
	.loc 1 5279 0
	add	r3, r3, #48
	.loc 1 5275 0
	strh	r2, [r8, #24]	@ movhi
	.loc 1 5279 0
	str	r3, [r7]
	.loc 1 5280 0
	strh	r6, [r5]	@ movhi
	.loc 1 5277 0
	str	r1, [r4, #12]
	.loc 1 5281 0
	str	r1, [lr]
	.loc 1 5278 0
	strb	ip, [r0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L241:
	.align	2
.L240:
	.word	defaultskill
	.word	.LANCHOR0
	.word	menuactive
	.word	currentMenu
	.word	itemOn
	.word	.LANCHOR1
	.word	print_warning_about_changes
	.cfi_endproc
.LFE125:
	.size	M_StartControlPanel.part.7, .-M_StartControlPanel.part.7
	.align	2
	.type	M_RestartLevelResponse, %function
M_RestartLevelResponse:
.LFB20:
	.loc 1 614 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL130:
	.loc 1 615 0
	cmp	r0, #121
	bxne	lr
	.loc 1 614 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 618 0
	ldr	r3, .L247
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L246
.LVL131:
.LBB420:
.LBB421:
	.loc 1 621 0
	ldr	r1, .L247+4
	ldr	r2, .L247+8
	ldr	ip, [r1]
	ldrh	lr, [r2]
.LBB422:
.LBB423:
	.loc 1 5372 0
	ldr	r0, .L247+12
.LVL132:
	.loc 1 5373 0
	ldr	r1, .L247+16
	.loc 1 5374 0
	ldr	r2, .L247+20
.LBE423:
.LBE422:
	.loc 1 621 0
	strh	lr, [ip, #20]	@ movhi
.LBB425:
.LBB424:
	.loc 1 5372 0
	strb	r3, [r0]
	.loc 1 5373 0
	str	r3, [r1]
	.loc 1 5374 0
	str	r3, [r2, #12]
.LBE424:
.LBE425:
.LBE421:
.LBE420:
	.loc 1 624 0
	ldmfd	sp!, {r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB427:
.LBB426:
	.loc 1 623 0
	b	G_RestartLevel
.LVL133:
.L246:
	.cfi_restore_state
.LBE426:
.LBE427:
	.loc 1 619 0
	mov	r0, #0
.LVL134:
	bl	exit
.LVL135:
.L248:
	.align	2
.L247:
	.word	demorecording
	.word	currentMenu
	.word	itemOn
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
	.cfi_endproc
.LFE20:
	.size	M_RestartLevelResponse, .-M_RestartLevelResponse
	.align	2
	.type	M_VerifyNightmare, %function
M_VerifyNightmare:
.LFB22:
	.loc 1 651 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL136:
	.loc 1 652 0
	cmp	r0, #121
	bxne	lr
.LVL137:
.LBB432:
.LBB433:
	.loc 1 655 0
	mov	r2, #1
.LBE433:
.LBE432:
	.loc 1 651 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB437:
.LBB436:
	.loc 1 655 0
	ldr	r3, .L253
	mov	r0, #4
.LVL138:
	ldr	r1, [r3]
	add	r1, r1, r2
	bl	G_DeferedInitNew
.LVL139:
.LBB434:
.LBB435:
	.loc 1 5372 0
	mov	r3, #0
	ldr	r0, .L253+4
	.loc 1 5373 0
	ldr	r1, .L253+8
	.loc 1 5374 0
	ldr	r2, .L253+12
	.loc 1 5372 0
	strb	r3, [r0]
	.loc 1 5373 0
	str	r3, [r1]
	.loc 1 5374 0
	str	r3, [r2, #12]
	ldmfd	sp!, {r3, pc}
.L254:
	.align	2
.L253:
	.word	epi
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
.LBE435:
.LBE434:
.LBE436:
.LBE437:
	.cfi_endproc
.LFE22:
	.size	M_VerifyNightmare, .-M_VerifyNightmare
	.align	2
	.type	M_QuickLoadResponse, %function
M_QuickLoadResponse:
.LFB50:
	.loc 1 1322 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL140:
	.loc 1 1323 0
	cmp	r0, #121
	bxne	lr
.LVL141:
	.loc 1 1322 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB444:
.LBB445:
	.loc 1 1324 0
	ldr	r3, .L258
.LBB446:
.LBB447:
	.loc 1 762 0
	mov	r1, #0
	ldr	r0, [r3]
.LVL142:
	bl	G_LoadGame
.LVL143:
.LBB448:
.LBB449:
	.loc 1 5372 0
	mov	r3, #0
	ldr	lr, .L258+4
	.loc 1 5373 0
	ldr	ip, .L258+8
	.loc 1 5374 0
	ldr	r2, .L258+12
.LBE449:
.LBE448:
.LBE447:
.LBE446:
	.loc 1 1325 0
	mov	r0, r3
.LBB453:
.LBB452:
.LBB451:
.LBB450:
	.loc 1 5372 0
	strb	r3, [lr]
	.loc 1 5373 0
	str	r3, [ip]
	.loc 1 5374 0
	str	r3, [r2, #12]
.LBE450:
.LBE451:
.LBE452:
.LBE453:
	.loc 1 1325 0
	mov	r1, #24
.LBE445:
.LBE444:
	.loc 1 1327 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB455:
.LBB454:
	.loc 1 1325 0
	b	S_StartSound
.LVL144:
.L259:
	.align	2
.L258:
	.word	quickSaveSlot
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
.LBE454:
.LBE455:
	.cfi_endproc
.LFE50:
	.size	M_QuickLoadResponse, .-M_QuickLoadResponse
	.align	2
	.type	M_EndGameResponse, %function
M_EndGameResponse:
.LFB52:
	.loc 1 1354 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL145:
	.loc 1 1355 0
	cmp	r0, #121
	bxne	lr
.LVL146:
	.loc 1 1354 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB460:
.LBB461:
	.loc 1 1359 0
	ldr	r3, .L268
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L262
	ldr	r3, .L268+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L263
.L262:
	.loc 1 1360 0
	bl	G_CheckDemoStatus
.LVL147:
.L263:
.LBB462:
.LBB463:
	.loc 1 5372 0
	mov	r3, #0
.LBE463:
.LBE462:
	.loc 1 1362 0
	ldr	r1, .L268+8
	ldr	r2, .L268+12
	ldr	ip, [r1]
	ldrh	lr, [r2]
.LBB466:
.LBB464:
	.loc 1 5372 0
	ldr	r0, .L268+16
	.loc 1 5373 0
	ldr	r1, .L268+20
	.loc 1 5374 0
	ldr	r2, .L268+24
.LBE464:
.LBE466:
	.loc 1 1362 0
	strh	lr, [ip, #20]	@ movhi
.LBB467:
.LBB465:
	.loc 1 5372 0
	strb	r3, [r0]
	.loc 1 5373 0
	str	r3, [r1]
	.loc 1 5374 0
	str	r3, [r2, #12]
.LBE465:
.LBE467:
.LBE461:
.LBE460:
	.loc 1 1365 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB469:
.LBB468:
	.loc 1 1364 0
	b	D_StartTitle
.LVL148:
.L269:
	.align	2
.L268:
	.word	demorecording
	.word	singledemo
	.word	currentMenu
	.word	itemOn
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
.LBE468:
.LBE469:
	.cfi_endproc
.LFE52:
	.size	M_EndGameResponse, .-M_EndGameResponse
	.align	2
	.global	M_ExtHelpNextScreen
	.type	M_ExtHelpNextScreen, %function
M_ExtHelpNextScreen:
.LFB89:
	.loc 1 3724 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL149:
	.loc 1 3726 0
	ldr	r2, .L274
	ldr	r1, .L274+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2]
	bxle	lr
.LVL150:
.LBB474:
.LBB475:
	.loc 1 3731 0
	mov	r1, #1
.LBB476:
.LBB477:
	.loc 1 5385 0
	ldr	r3, .L274+8
.LBE477:
.LBE476:
.LBE475:
.LBE474:
	.loc 1 3724 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB481:
.LBB480:
.LBB479:
.LBB478:
	.loc 1 5386 0
	ldrh	ip, [r3, #68]
	.loc 1 5385 0
	ldr	lr, .L274+12
	.loc 1 5386 0
	ldr	r0, .L274+16
.LVL151:
	.loc 1 5385 0
	add	r3, r3, #48
	str	r3, [lr]
	.loc 1 5386 0
	strh	ip, [r0]	@ movhi
.LBE478:
.LBE479:
	.loc 1 3731 0
	str	r1, [r2]
.LVL152:
	ldr	pc, [sp], #4
.L275:
	.align	2
.L274:
	.word	extended_help_index
	.word	extended_help_count
	.word	.LANCHOR0
	.word	currentMenu
	.word	itemOn
.LBE480:
.LBE481:
	.cfi_endproc
.LFE89:
	.size	M_ExtHelpNextScreen, .-M_ExtHelpNextScreen
	.align	2
	.global	M_Episode
	.type	M_Episode, %function
M_Episode:
.LFB18:
	.loc 1 544 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL153:
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
	.loc 1 545 0
	ldr	r3, .L289
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L287
	.loc 1 552 0 discriminator 1
	cmp	r0, #2
	movle	r2, #0
	movgt	r2, #1
	cmp	r3, #1
	movne	r2, #0
	cmp	r2, #0
	bne	.L288
.LVL154:
.L278:
.LBB492:
.LBB493:
	.loc 1 5385 0
	ldr	r3, .L289+4
	ldr	lr, .L289+8
	.loc 1 5386 0
	ldrh	ip, [r3, #20]
	ldr	r1, .L289+12
.LBE493:
.LBE492:
	.loc 1 559 0
	ldr	r2, .L289+16
.LBB495:
.LBB494:
	.loc 1 5385 0
	str	r3, [lr]
	.loc 1 5386 0
	strh	ip, [r1]	@ movhi
.LBE494:
.LBE495:
	.loc 1 559 0
	str	r0, [r2]
.LVL155:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL156:
.L287:
	.loc 1 545 0 discriminator 1
	cmp	r0, #0
	beq	.L278
.LVL157:
.LBB496:
.LBB497:
.LBB498:
.LBB499:
	.loc 1 5410 0
	mov	r1, #1
.LBE499:
.LBE498:
	.loc 1 546 0
	ldr	ip, .L289+20
.LBB504:
.LBB500:
	.loc 1 5409 0
	ldr	r0, .L289+24
.LVL158:
.LBE500:
.LBE504:
.LBB505:
.LBB506:
	.loc 1 5385 0
	ldr	r2, .L289+28
.LBE506:
.LBE505:
	.loc 1 546 0
	ldr	fp, [ip]
.LVL159:
.LBB509:
.LBB501:
	.loc 1 5409 0
	ldrb	r9, [r0]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r10, .L289+32
	.loc 1 5409 0
	ldr	r8, .L289+36
	.loc 1 5410 0
	ldr	r7, .L289+40
.LBE501:
.LBE509:
.LBB510:
.LBB507:
	.loc 1 5385 0
	ldr	r6, .L289+8
	.loc 1 5386 0
	ldrh	r5, [r2, #20]
	ldr	r4, .L289+12
.LBE507:
.LBE510:
.LBB511:
.LBB502:
	.loc 1 5412 0
	ldr	lr, .L289+44
	.loc 1 5413 0
	ldr	ip, .L289+48
	.loc 1 5411 0
	str	fp, [r10, #220]
	.loc 1 5409 0
	str	r9, [r8]
	.loc 1 5414 0
	strb	r1, [r0]
.LVL160:
	.loc 1 5410 0
	str	r1, [r7]
.LBE502:
.LBE511:
.LBB512:
.LBB508:
	.loc 1 5385 0
	str	r2, [r6]
	.loc 1 5386 0
	strh	r5, [r4]	@ movhi
.LBE508:
.LBE512:
.LBB513:
.LBB503:
	.loc 1 5412 0
	str	r3, [lr]
	.loc 1 5413 0
	str	r3, [ip]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL161:
.L288:
.LBE503:
.LBE513:
.LBE497:
.LBE496:
	.loc 1 554 0
	mov	r0, #4
.LVL162:
	ldr	r1, .L289+52
	bl	lprintf
.LVL163:
	.loc 1 556 0
	mov	r0, #0
	b	.L278
.L290:
	.align	2
.L289:
	.word	gamemode
	.word	.LANCHOR0+1188
	.word	currentMenu
	.word	itemOn
	.word	epi
	.word	s_SWSTRING
	.word	menuactive
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageRoutine
	.word	messageNeedsInput
	.word	.LC9
	.cfi_endproc
.LFE18:
	.size	M_Episode, .-M_Episode
	.align	2
	.global	M_NewGame
	.type	M_NewGame, %function
M_NewGame:
.LFB21:
	.loc 1 627 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL164:
	.loc 1 628 0
	ldr	r3, .L303
	.loc 1 627 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 628 0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L292
	.loc 1 628 0 is_stmt 0 discriminator 1
	ldr	r3, .L303+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L292
	.loc 1 629 0 is_stmt 1
	ldr	r2, .L303+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #9
	bhi	.L293
.LVL165:
.LBB534:
.LBB535:
.LBB536:
.LBB537:
	.loc 1 5410 0
	mov	r2, #1
.LBE537:
.LBE536:
	.loc 1 630 0
	ldr	r0, .L303+12
.LVL166:
.LBB540:
.LBB538:
	.loc 1 5409 0
	ldr	r1, .L303+16
.LBE538:
.LBE540:
	.loc 1 630 0
	ldr	r7, [r0]
.LVL167:
.LBB541:
.LBB539:
	.loc 1 5409 0
	ldrb	r5, [r1]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L303+20
	.loc 1 5409 0
	ldr	r4, .L303+24
	.loc 1 5410 0
	ldr	lr, .L303+28
	.loc 1 5412 0
	ldr	ip, .L303+32
	.loc 1 5413 0
	ldr	r0, .L303+36
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r2, [r1]
	.loc 1 5410 0
	str	r2, [lr]
	.loc 1 5412 0
	str	r3, [ip]
	.loc 1 5413 0
	str	r3, [r0]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL168:
.L292:
.LBE539:
.LBE541:
.LBE535:
.LBE534:
	.loc 1 636 0
	ldr	r3, .L303+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L302
	.loc 1 643 0
	ldr	r3, .L303+44
.LBB542:
.LBB543:
	.loc 1 5385 0
	ldr	r0, .L303+48
.LVL169:
.LBE543:
.LBE542:
	.loc 1 643 0
	ldrb	r3, [r3]	@ zero_extendqisi2
.LBB546:
.LBB544:
	.loc 1 5386 0
	ldr	r2, .L303+52
.LBE544:
.LBE546:
	.loc 1 643 0
	cmp	r3, #2
.LVL170:
.LBB547:
.LBB548:
	.loc 1 5385 0
	ldreq	r3, .L303+56
.LVL171:
.LBE548:
.LBE547:
.LBB549:
.LBB545:
	ldrne	r3, .L303+60
	.loc 1 5386 0
	ldrh	r1, [r3, #20]
	.loc 1 5385 0
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL172:
.L302:
.LBE545:
.LBE549:
.LBB550:
.LBB551:
	.loc 1 5410 0
	mov	r2, #1
	.loc 1 5412 0
	mov	r3, #0
	.loc 1 5409 0
	ldr	r1, .L303+16
	ldr	r6, .L303+24
	ldrb	r7, [r1]	@ zero_extendqisi2
	.loc 1 5410 0
	ldr	r5, .L303+28
	.loc 1 5412 0
	ldr	r4, .L303+32
	.loc 1 5413 0
	ldr	lr, .L303+36
	.loc 1 5411 0
	ldr	r0, .L303+20
.LVL173:
	ldr	ip, .L303+64
	.loc 1 5409 0
	str	r7, [r6]
	.loc 1 5414 0
	strb	r2, [r1]
	.loc 1 5410 0
	str	r2, [r5]
	.loc 1 5412 0
	str	r3, [r4]
	.loc 1 5413 0
	str	r3, [lr]
	.loc 1 5411 0
	str	ip, [r0, #220]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL174:
.L293:
.LBE551:
.LBE550:
.LBB552:
.LBB553:
	.loc 1 5410 0
	mov	r3, #1
.LBE553:
.LBE552:
	.loc 1 632 0
	ldr	r1, .L303+68
.LBB556:
.LBB554:
	.loc 1 5409 0
	ldr	r2, .L303+16
.LBE554:
.LBE556:
	.loc 1 632 0
	ldr	r7, [r1]
.LVL175:
.LBB557:
.LBB555:
	.loc 1 5409 0
	ldrb	r5, [r2]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L303+20
	.loc 1 5409 0
	ldr	r4, .L303+24
	.loc 1 5410 0
	ldr	lr, .L303+28
	.loc 1 5413 0
	ldr	ip, .L303+36
	.loc 1 5412 0
	ldr	r1, .L303+32
	ldr	r0, .L303+72
.LVL176:
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r3, [r2]
	.loc 1 5410 0
	str	r3, [lr]
	.loc 1 5413 0
	str	r3, [ip]
	.loc 1 5412 0
	str	r0, [r1]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L304:
	.align	2
.L303:
	.word	netgame
	.word	demoplayback
	.word	compatibility_level
	.word	s_NEWGAME
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageRoutine
	.word	messageNeedsInput
	.word	demorecording
	.word	gamemode
	.word	currentMenu
	.word	itemOn
	.word	.LANCHOR0+1188
	.word	.LANCHOR0+1212
	.word	.LC10
	.word	s_RESTARTLEVEL
	.word	M_RestartLevelResponse
.LBE555:
.LBE557:
	.cfi_endproc
.LFE21:
	.size	M_NewGame, .-M_NewGame
	.align	2
	.global	M_ChooseSkill
	.type	M_ChooseSkill, %function
M_ChooseSkill:
.LFB23:
	.loc 1 660 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL177:
	.loc 1 661 0
	cmp	r0, #4
	.loc 1 660 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 661 0
	beq	.L309
	.loc 1 667 0
	mov	r2, #1
	ldr	r3, .L310
	sxtb	r0, r0
.LVL178:
	ldr	r1, [r3]
	add	r1, r1, r2
	bl	G_DeferedInitNew
.LVL179:
.LBB566:
.LBB567:
	.loc 1 5372 0
	mov	r3, #0
	ldr	r0, .L310+4
	.loc 1 5373 0
	ldr	r1, .L310+8
	.loc 1 5374 0
	ldr	r2, .L310+12
	.loc 1 5372 0
	strb	r3, [r0]
	.loc 1 5373 0
	str	r3, [r1]
	.loc 1 5374 0
	str	r3, [r2, #12]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL180:
.L309:
.LBE567:
.LBE566:
.LBB568:
.LBB569:
.LBB570:
.LBB571:
	.loc 1 5410 0
	mov	r3, #1
.LBE571:
.LBE570:
	.loc 1 663 0
	ldr	r1, .L310+16
.LBB574:
.LBB572:
	.loc 1 5409 0
	ldr	r2, .L310+4
.LBE572:
.LBE574:
	.loc 1 663 0
	ldr	r7, [r1]
.LVL181:
.LBB575:
.LBB573:
	.loc 1 5409 0
	ldrb	r5, [r2]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L310+12
	.loc 1 5409 0
	ldr	r4, .L310+20
	.loc 1 5410 0
	ldr	lr, .L310+24
	.loc 1 5413 0
	ldr	ip, .L310+28
	.loc 1 5412 0
	ldr	r1, .L310+32
	ldr	r0, .L310+36
.LVL182:
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r3, [r2]
	.loc 1 5410 0
	str	r3, [lr]
	.loc 1 5413 0
	str	r3, [ip]
	.loc 1 5412 0
	str	r0, [r1]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L311:
	.align	2
.L310:
	.word	epi
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
	.word	s_NIGHTMARE
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	M_VerifyNightmare
.LBE573:
.LBE575:
.LBE569:
.LBE568:
	.cfi_endproc
.LFE23:
	.size	M_ChooseSkill, .-M_ChooseSkill
	.align	2
	.type	M_QuickSaveResponse, %function
M_QuickSaveResponse:
.LFB48:
	.loc 1 1288 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL183:
	.loc 1 1289 0
	cmp	r0, #121
	bxne	lr
.LVL184:
	.loc 1 1288 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB578:
.LBB579:
	.loc 1 1290 0
	ldr	r3, .L315
	ldr	r0, [r3]
.LVL185:
	bl	M_DoSave
.LVL186:
.LBE579:
.LBE578:
	.loc 1 1293 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB581:
.LBB580:
	.loc 1 1291 0
	mov	r0, #0
	mov	r1, #24
	b	S_StartSound
.LVL187:
.L316:
	.align	2
.L315:
	.word	quickSaveSlot
.LBE580:
.LBE581:
	.cfi_endproc
.LFE48:
	.size	M_QuickSaveResponse, .-M_QuickSaveResponse
	.align	2
	.global	M_EndGame
	.type	M_EndGame, %function
M_EndGame:
.LFB53:
	.loc 1 1368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL188:
	.loc 1 1369 0
	ldr	r3, .L322
	.loc 1 1368 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 1369 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L321
.LBB590:
.LBB591:
	.loc 1 5410 0
	mov	r3, #1
.LBE591:
.LBE590:
	.loc 1 1374 0
	ldr	r1, .L322+4
.LBB594:
.LBB592:
	.loc 1 5409 0
	ldr	r2, .L322+8
.LBE592:
.LBE594:
	.loc 1 1374 0
	ldr	r7, [r1]
.LVL189:
.LBB595:
.LBB593:
	.loc 1 5409 0
	ldrb	r5, [r2]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L322+12
	.loc 1 5409 0
	ldr	r4, .L322+16
	.loc 1 5410 0
	ldr	lr, .L322+20
	.loc 1 5413 0
	ldr	ip, .L322+24
	.loc 1 5412 0
	ldr	r1, .L322+28
	ldr	r0, .L322+32
.LVL190:
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r3, [r2]
	.loc 1 5410 0
	str	r3, [lr]
	.loc 1 5413 0
	str	r3, [ip]
	.loc 1 5412 0
	str	r0, [r1]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL191:
.L321:
.LBE593:
.LBE595:
.LBB596:
.LBB597:
.LBB598:
.LBB599:
	.loc 1 5410 0
	mov	r2, #1
	.loc 1 5412 0
	mov	r3, #0
.LBE599:
.LBE598:
	.loc 1 1371 0
	ldr	r0, .L322+36
.LVL192:
.LBB602:
.LBB600:
	.loc 1 5409 0
	ldr	r1, .L322+8
.LBE600:
.LBE602:
	.loc 1 1371 0
	ldr	r7, [r0]
.LVL193:
.LBB603:
.LBB601:
	.loc 1 5409 0
	ldrb	r5, [r1]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L322+12
	.loc 1 5409 0
	ldr	r4, .L322+16
	.loc 1 5410 0
	ldr	lr, .L322+20
	.loc 1 5412 0
	ldr	ip, .L322+28
	.loc 1 5413 0
	ldr	r0, .L322+24
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r2, [r1]
	.loc 1 5410 0
	str	r2, [lr]
	.loc 1 5412 0
	str	r3, [ip]
	.loc 1 5413 0
	str	r3, [r0]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L323:
	.align	2
.L322:
	.word	netgame
	.word	s_ENDGAME
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	M_EndGameResponse
	.word	s_NETEND
.LBE601:
.LBE603:
.LBE597:
.LBE596:
	.cfi_endproc
.LFE53:
	.size	M_EndGame, .-M_EndGame
	.align	2
	.type	M_DrawStringCentered.constprop.26, %function
M_DrawStringCentered.constprop.26:
.LFB145:
	.loc 1 4027 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL194:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 4027 0
	mov	r5, r0
	.loc 1 4029 0
	mov	r0, r1
.LVL195:
	.loc 1 4027 0
	mov	r4, r1
	.loc 1 4029 0
	bl	M_GetPixelWidth
.LVL196:
	add	r0, r0, r0, lsr #31
	mov	r0, r0, asr #1
	mov	r2, r5
	mov	r3, r4
	.loc 1 4030 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL197:
	.loc 1 4029 0
	rsb	r0, r0, #160
	mov	r1, #20
	b	M_DrawString
.LVL198:
	.cfi_endproc
.LFE145:
	.size	M_DrawStringCentered.constprop.26, .-M_DrawStringCentered.constprop.26
	.align	2
	.type	M_DrawInstructions, %function
M_DrawInstructions:
.LFB63:
	.loc 1 2046 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 2047 0
	ldr	r2, .L350
	ldr	r0, .L350+4
	ldr	r3, [r2, #20]
	.loc 1 2052 0
	ldr	r1, [r2, #8]
	.loc 1 2047 0
	ldr	r2, [r0]
	add	r3, r3, r3, asl #3
	add	r3, r2, r3, asl #2
	.loc 1 2052 0
	cmp	r1, #0
	.loc 1 2047 0
	ldr	r2, [r3, #4]
.LVL199:
	.loc 1 2052 0
	beq	.L327
	.loc 1 2053 0
	ldr	r1, .L350+8
	and	r1, r1, r2
	cmp	r1, #128
	bxeq	lr
	ble	.L345
	cmp	r1, #4096
	beq	.L336
	ble	.L346
	cmp	r1, #524288
	beq	.L340
	cmp	r1, #8388608
	bne	.L328
	.loc 1 2085 0
	mov	r0, #2
	ldr	r1, .L350+12
	b	M_DrawStringCentered.constprop.26
.LVL200:
.L327:
	.loc 1 2095 0
	tst	r2, #128
	.loc 1 2096 0
	mov	r0, #8
	.loc 1 2095 0
	bne	.L347
	.loc 1 2098 0
	ldr	r1, .L350+16
	b	M_DrawStringCentered.constprop.26
.LVL201:
.L345:
	.loc 1 2053 0
	cmp	r1, #16
	beq	.L331
	ble	.L348
	cmp	r1, #32
	beq	.L334
	cmp	r1, #64
	bne	.L328
	.loc 1 2079 0
	mov	r0, #2
	ldr	r1, .L350+20
	b	M_DrawStringCentered.constprop.26
.LVL202:
.L347:
	.loc 1 2096 0
	ldr	r1, .L350+24
	b	M_DrawStringCentered.constprop.26
.LVL203:
.L346:
	.loc 1 2053 0
	cmp	r1, #1024
	beq	.L338
	cmp	r1, #2048
	bne	.L328
	.loc 1 2067 0
	mov	r0, #2
	ldr	r1, .L350+28
	b	M_DrawStringCentered.constprop.26
.LVL204:
.L348:
	.loc 1 2053 0
	cmp	r1, #8
	bne	.L328
	.loc 1 2064 0
	mov	r0, #2
	ldr	r1, .L350+32
	b	M_DrawStringCentered.constprop.26
.LVL205:
.L331:
	.loc 1 2076 0
	mov	r0, #2
	ldr	r1, .L350+36
	b	M_DrawStringCentered.constprop.26
.LVL206:
.L328:
	.loc 1 2091 0
	mov	r0, #4
	ldr	r1, .L350+40
	b	lprintf
.LVL207:
.L340:
	.loc 1 2082 0
	mov	r0, #2
	ldr	r1, .L350+44
	b	M_DrawStringCentered.constprop.26
.LVL208:
.L338:
	.loc 1 2057 0
	ldr	r2, [r3, #20]
.LVL209:
	.loc 1 2058 0
	mov	r0, #2
	.loc 1 2057 0
	cmp	r2, #0
	beq	.L349
.LVL210:
.L342:
	.loc 1 2058 0
	ldr	r1, .L350+48
	b	M_DrawStringCentered.constprop.26
.LVL211:
.L334:
	.loc 1 2073 0
	mov	r0, #2
	ldr	r1, .L350+52
	b	M_DrawStringCentered.constprop.26
.LVL212:
.L336:
	.loc 1 2070 0
	mov	r0, #2
	ldr	r1, .L350+56
	b	M_DrawStringCentered.constprop.26
.LVL213:
.L349:
	.loc 1 2057 0 discriminator 1
	ldr	r3, [r3, #24]
.LVL214:
	cmp	r3, #0
	bne	.L342
	.loc 1 2060 0
	ldr	r1, .L350+60
	b	M_DrawStringCentered.constprop.26
.LVL215:
.L351:
	.align	2
.L350:
	.word	.LANCHOR1
	.word	current_setup_menu
	.word	8920312
	.word	.LC20
	.word	.LC23
	.word	.LC18
	.word	.LC22
	.word	.LC14
	.word	.LC13
	.word	.LC17
	.word	.LC21
	.word	.LC19
	.word	.LC11
	.word	.LC16
	.word	.LC15
	.word	.LC12
	.cfi_endproc
.LFE63:
	.size	M_DrawInstructions, .-M_DrawInstructions
	.align	2
	.type	M_DrawBackground.part.1.constprop.27, %function
M_DrawBackground.part.1.constprop.27:
.LFB144:
	.loc 1 128 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL216:
	.loc 1 131 0
	ldr	r3, .L353
	ldr	r0, .L353+4
	ldr	r3, [r3]
	mov	r1, #0
	bx	r3	@ indirect register sibling call
.LVL217:
.L354:
	.align	2
.L353:
	.word	V_DrawBackground
	.word	.LC24
	.cfi_endproc
.LFE144:
	.size	M_DrawBackground.part.1.constprop.27, .-M_DrawBackground.part.1.constprop.27
	.align	2
	.global	M_DrawSaveLoadBorder
	.type	M_DrawSaveLoadBorder, %function
M_DrawSaveLoadBorder:
.LFB25:
	.loc 1 739 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL218:
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
	.loc 1 742 0
	ldr	r10, .L359
	.loc 1 739 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 739 0
	mov	r6, r0
	.loc 1 742 0
	ldr	r0, .L359+4
.LVL219:
	ldr	r4, [r10]
	add	r9, r1, #7
	mov	r8, #6
	bl	W_GetNumForName
.LVL220:
	mov	r7, #4
	mov	r3, r0
	mov	r1, r9
	sub	r0, r6, #8
	str	r8, [sp]
	str	r7, [sp, #4]
	mov	r2, #0
	blx	r4
.LVL221:
	mov	r4, r6
	add	r6, r6, #192
.LVL222:
.L356:
	.loc 1 746 0 discriminator 3
	ldr	r0, .L359+8
	ldr	r5, [r10]
	bl	W_GetNumForName
.LVL223:
	str	r8, [sp]
	mov	r3, r0
	str	r7, [sp, #4]
	mov	r0, r4
	mov	r1, r9
	.loc 1 747 0 discriminator 3
	add	r4, r4, #8
.LVL224:
	.loc 1 746 0 discriminator 3
	mov	r2, #0
	blx	r5
.LVL225:
	.loc 1 744 0 discriminator 3
	cmp	r4, r6
	.loc 1 746 0 discriminator 3
	ldr	r3, .L359
	mov	fp, #6
	mov	r5, #4
	.loc 1 744 0 discriminator 3
	bne	.L356
	.loc 1 750 0
	ldr	r0, .L359+12
	ldr	r6, [r3]
	bl	W_GetNumForName
.LVL226:
	str	fp, [sp]
	mov	r3, r0
	str	r5, [sp, #4]
	mov	r0, r4
	mov	r1, r9
	mov	r2, #0
	blx	r6
.LVL227:
	.loc 1 751 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL228:
.L360:
	.align	2
.L359:
	.word	V_DrawNumPatch
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.cfi_endproc
.LFE25:
	.size	M_DrawSaveLoadBorder, .-M_DrawSaveLoadBorder
	.align	2
	.global	M_ForcedLoadGame
	.type	M_ForcedLoadGame, %function
M_ForcedLoadGame:
.LFB28:
	.loc 1 782 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL229:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 783 0
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL230:
.LBB604:
.LBB605:
	.loc 1 5410 0
	mov	r3, #1
	.loc 1 5409 0
	ldr	r1, .L363
.LBE605:
.LBE604:
	.loc 1 783 0
	ldr	r2, .L363+4
.LBB608:
.LBB606:
	.loc 1 5409 0
	ldrb	r7, [r1]	@ zero_extendqisi2
	ldr	r6, .L363+8
	.loc 1 5410 0
	ldr	r5, .L363+12
	.loc 1 5413 0
	ldr	r4, .L363+16
	.loc 1 5412 0
	ldr	ip, .L363+20
	ldr	lr, .L363+24
	.loc 1 5409 0
	str	r7, [r6]
	.loc 1 5414 0
	strb	r3, [r1]
	.loc 1 5410 0
	str	r3, [r5]
	.loc 1 5413 0
	str	r3, [r4]
.LBE606:
.LBE608:
	.loc 1 783 0
	str	r0, [r2, #56]
.LVL231:
.LBB609:
.LBB607:
	.loc 1 5411 0
	str	r0, [r2, #220]
	.loc 1 5412 0
	str	lr, [ip]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L364:
	.align	2
.L363:
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	M_VerifyForcedLoadGame
.LBE607:
.LBE609:
	.cfi_endproc
.LFE28:
	.size	M_ForcedLoadGame, .-M_ForcedLoadGame
	.align	2
	.global	M_ReadSaveStrings
	.type	M_ReadSaveStrings, %function
M_ReadSaveStrings:
.LFB30:
	.loc 1 841 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL232:
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
	.loc 1 841 0
	mov	r6, #0
.LBB610:
	.loc 1 852 0
	mov	r10, #1
.LBE610:
	.loc 1 844 0
	mov	r4, r6
	ldr	r7, .L372
	ldr	r9, .L372+4
.LBB611:
	.loc 1 857 0
	ldr	fp, .L372+8
	b	.L368
.LVL233:
.L366:
	.loc 1 861 0
	mov	r1, #24
	mov	r2, #1
	mov	r3, r5
	bl	fread
.LVL234:
	.loc 1 862 0
	mov	r0, r5
	bl	fclose
.LVL235:
	.loc 1 863 0
	strh	r10, [r9, r6]	@ movhi
.L367:
.LBE611:
	.loc 1 844 0 discriminator 2
	add	r4, r4, #1
.LVL236:
	cmp	r4, #8
	add	r7, r7, #24
	add	r6, r6, #24
	beq	.L371
.LVL237:
.L368:
.LBB612:
	.loc 1 851 0
	mov	r0, #0
	mov	r2, r4
	mov	r3, r0
	mov	r1, r0
	bl	G_SaveGameName
.LVL238:
	.loc 1 852 0
	add	r5, r0, #1
	mov	r0, r5
.LVL239:
	mov	r1, #1
	mov	r2, #0
	bl	Z_Malloc
.LVL240:
	mov	r8, r0
.LVL241:
	.loc 1 853 0
	mov	r1, r5
	mov	r2, r4
	mov	r3, #0
	bl	G_SaveGameName
.LVL242:
	.loc 1 854 0
	ldr	r1, .L372+12
	mov	r0, r8
	bl	fopen
.LVL243:
	mov	r5, r0
.LVL244:
	.loc 1 855 0
	mov	r0, r8
.LVL245:
	bl	Z_Free
.LVL246:
	.loc 1 856 0
	cmp	r5, #0
	.loc 1 857 0
	mov	r0, r7
	.loc 1 856 0
	bne	.L366
	.loc 1 857 0
	ldr	r1, [fp]
	bl	strcpy
.LVL247:
	.loc 1 858 0
	strh	r5, [r9, r6]	@ movhi
	.loc 1 859 0
	b	.L367
.L371:
.LBE612:
	.loc 1 865 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L373:
	.align	2
.L372:
	.word	savegamestrings
	.word	.LANCHOR0+1236
	.word	s_EMPTYSTRING
	.word	.LC28
	.cfi_endproc
.LFE30:
	.size	M_ReadSaveStrings, .-M_ReadSaveStrings
	.align	2
	.global	M_LoadGame
	.type	M_LoadGame, %function
M_LoadGame:
.LFB29:
	.loc 1 792 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL248:
	.loc 1 795 0
	ldr	r3, .L383
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L375
	.loc 1 795 0 is_stmt 0 discriminator 1
	ldr	r3, .L383+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	bls	.L382
.L375:
.LVL249:
.LBB621:
.LBB622:
	.loc 1 5385 0 is_stmt 1
	ldr	r3, .L383+8
	ldr	r0, .L383+12
.LVL250:
	.loc 1 5386 0
	ldrh	r1, [r3, #20]
	ldr	r2, .L383+16
	.loc 1 5385 0
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
.LBE622:
.LBE621:
	.loc 1 804 0
	b	M_ReadSaveStrings
.LVL251:
.L382:
.LBB623:
.LBB624:
.LBB625:
.LBB626:
	.loc 1 5410 0
	mov	r2, #1
	.loc 1 5412 0
	mov	r3, #0
	.loc 1 5409 0
	ldr	r1, .L383+20
.LBE626:
.LBE625:
.LBE624:
.LBE623:
	.loc 1 792 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB630:
.LBB629:
.LBB628:
.LBB627:
	.loc 1 5411 0
	ldr	r0, .L383+24
.LVL252:
	.loc 1 5409 0
	ldrb	r7, [r1]	@ zero_extendqisi2
	ldr	r6, .L383+28
	.loc 1 5410 0
	ldr	r5, .L383+32
	.loc 1 5412 0
	ldr	r4, .L383+36
	.loc 1 5413 0
	ldr	lr, .L383+40
	.loc 1 5411 0
	ldr	ip, .L383+44
	.loc 1 5409 0
	str	r7, [r6]
	.loc 1 5414 0
	strb	r2, [r1]
	.loc 1 5410 0
	str	r2, [r5]
	.loc 1 5412 0
	str	r3, [r4]
	.loc 1 5413 0
	str	r3, [lr]
	.loc 1 5411 0
	str	ip, [r0, #220]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L384:
	.align	2
.L383:
	.word	demorecording
	.word	compatibility_level
	.word	.LANCHOR0+1428
	.word	currentMenu
	.word	itemOn
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageRoutine
	.word	messageNeedsInput
	.word	.LC29
.LBE627:
.LBE628:
.LBE629:
.LBE630:
	.cfi_endproc
.LFE29:
	.size	M_LoadGame, .-M_LoadGame
	.align	2
	.global	M_SaveGame
	.type	M_SaveGame, %function
M_SaveGame:
.LFB34:
	.loc 1 928 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL253:
	.loc 1 930 0
	ldr	r3, .L396
	.loc 1 928 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 930 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L386
	.loc 1 930 0 is_stmt 0 discriminator 1
	ldr	r3, .L396+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L387
	.loc 1 930 0 discriminator 2
	ldr	r3, .L396+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L387
.L386:
	.loc 1 936 0 is_stmt 1
	ldr	r3, .L396+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ldmnefd	sp!, {r4, r5, r6, r7, pc}
.LVL254:
.LBB639:
.LBB640:
.LBB641:
.LBB642:
	.loc 1 5385 0
	ldr	r3, .L396+16
	ldr	r0, .L396+20
.LVL255:
	.loc 1 5386 0
	ldrh	r1, [r3, #20]
	ldr	r2, .L396+24
.LBE642:
.LBE641:
.LBE640:
.LBE639:
	.loc 1 941 0
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB646:
.LBB645:
.LBB644:
.LBB643:
	.loc 1 5385 0
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
.LBE643:
.LBE644:
	.loc 1 940 0
	b	M_ReadSaveStrings
.LVL256:
.L387:
	.cfi_restore_state
.LBE645:
.LBE646:
.LBB647:
.LBB648:
	.loc 1 5410 0
	mov	r2, #1
	.loc 1 5412 0
	mov	r3, #0
.LBE648:
.LBE647:
	.loc 1 932 0
	ldr	r0, .L396+28
.LVL257:
.LBB651:
.LBB649:
	.loc 1 5409 0
	ldr	r1, .L396+32
.LBE649:
.LBE651:
	.loc 1 932 0
	ldr	r7, [r0]
.LVL258:
.LBB652:
.LBB650:
	.loc 1 5409 0
	ldrb	r5, [r1]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L396+36
	.loc 1 5409 0
	ldr	r4, .L396+40
	.loc 1 5410 0
	ldr	lr, .L396+44
	.loc 1 5412 0
	ldr	ip, .L396+48
	.loc 1 5413 0
	ldr	r0, .L396+52
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r2, [r1]
	.loc 1 5410 0
	str	r2, [lr]
	.loc 1 5412 0
	str	r3, [ip]
	.loc 1 5413 0
	str	r3, [r0]
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L397:
	.align	2
.L396:
	.word	usergame
	.word	demoplayback
	.word	netgame
	.word	gamestate
	.word	.LANCHOR0+1452
	.word	currentMenu
	.word	itemOn
	.word	s_SAVEDEAD
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageRoutine
	.word	messageNeedsInput
.LBE650:
.LBE652:
	.cfi_endproc
.LFE34:
	.size	M_SaveGame, .-M_SaveGame
	.align	2
	.global	M_Mouse
	.type	M_Mouse, %function
M_Mouse:
.LFB47:
	.loc 1 1266 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL259:
	.loc 1 1267 0
	cmp	r0, #0
	beq	.L400
	cmp	r0, #1
	bxne	lr
	.loc 1 1274 0
	ldr	r3, [r1]
	cmp	r3, #98
	.loc 1 1275 0
	addle	r3, r3, #1
	strle	r3, [r1]
	bx	lr
.L400:
.LVL260:
.LBB655:
.LBB656:
	.loc 1 1270 0
	ldr	r3, [r1]
	cmp	r3, #0
	.loc 1 1271 0
	subne	r3, r3, #1
	strne	r3, [r1]
	bx	lr
.LBE656:
.LBE655:
	.cfi_endproc
.LFE47:
	.size	M_Mouse, .-M_Mouse
	.align	2
	.global	M_MouseHoriz
	.type	M_MouseHoriz, %function
M_MouseHoriz:
.LFB45:
	.loc 1 1256 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL261:
	.loc 1 1257 0
	ldr	r1, .L407
	b	M_Mouse
.LVL262:
.L408:
	.align	2
.L407:
	.word	mouseSensitivity_horiz
	.cfi_endproc
.LFE45:
	.size	M_MouseHoriz, .-M_MouseHoriz
	.align	2
	.global	M_MouseVert
	.type	M_MouseVert, %function
M_MouseVert:
.LFB46:
	.loc 1 1261 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL263:
	.loc 1 1262 0
	ldr	r1, .L410
	b	M_Mouse
.LVL264:
.L411:
	.align	2
.L410:
	.word	mouseSensitivity_vert
	.cfi_endproc
.LFE46:
	.size	M_MouseVert, .-M_MouseVert
	.align	2
	.global	M_QuickSave
	.type	M_QuickSave, %function
M_QuickSave:
.LFB49:
	.loc 1 1296 0
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
	.loc 1 1297 0
	ldr	r3, .L427
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L413
	.loc 1 1297 0 is_stmt 0 discriminator 1
	ldr	r3, .L427+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L414
	.loc 1 1297 0 discriminator 2
	ldr	r3, .L427+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L414
.L413:
	.loc 1 1302 0 is_stmt 1
	ldr	r3, .L427+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}
	.loc 1 1305 0
	ldr	r4, .L427+16
	ldr	r3, [r4]
	cmp	r3, #0
	blt	.L425
	.loc 1 1312 0
	ldr	r4, .L427+20
	ldr	r2, .L427+24
	ldr	r1, .L427+28
	add	r3, r3, r3, asl #1
	add	r2, r2, r3, asl #3
	ldr	r1, [r1]
	mov	r0, r4
	bl	sprintf
.LVL265:
.LBB667:
.LBB668:
	.loc 1 5410 0
	mov	r3, #1
	.loc 1 5409 0
	ldr	r2, .L427+32
	.loc 1 5411 0
	ldr	r7, .L427+36
	.loc 1 5409 0
	ldrb	r6, [r2]	@ zero_extendqisi2
	ldr	r5, .L427+40
	.loc 1 5410 0
	ldr	lr, .L427+44
	.loc 1 5413 0
	ldr	ip, .L427+48
	.loc 1 5412 0
	ldr	r1, .L427+52
	ldr	r0, .L427+56
	.loc 1 5411 0
	str	r4, [r7, #220]
	.loc 1 5409 0
	str	r6, [r5]
	.loc 1 5414 0
	strb	r3, [r2]
	.loc 1 5410 0
	str	r3, [lr]
	.loc 1 5413 0
	str	r3, [ip]
	.loc 1 5412 0
	str	r0, [r1]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL266:
.L414:
.LBE668:
.LBE667:
	.loc 1 1298 0
	mov	r0, #0
	.loc 1 1314 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 1298 0
	mov	r1, #34
	b	S_StartSound
.LVL267:
.L425:
	.cfi_restore_state
.LBB669:
.LBB670:
.LBB671:
.LBB672:
	.loc 1 5265 0
	ldr	r3, .L427+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L426
.L417:
.LBE672:
.LBE671:
	.loc 1 1307 0
	bl	M_ReadSaveStrings
.LVL268:
	.loc 1 1309 0
	mvn	r2, #1
.LBB674:
.LBB675:
	.loc 1 5385 0
	ldr	r3, .L427+60
	ldr	ip, .L427+64
	.loc 1 5386 0
	ldrh	r0, [r3, #20]
	ldr	r1, .L427+68
	.loc 1 5385 0
	str	r3, [ip]
	.loc 1 5386 0
	strh	r0, [r1]	@ movhi
.LBE675:
.LBE674:
	.loc 1 1309 0
	str	r2, [r4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL269:
.L426:
.LBB676:
.LBB673:
	bl	M_StartControlPanel.part.7
.LVL270:
	b	.L417
.L428:
	.align	2
.L427:
	.word	usergame
	.word	demoplayback
	.word	netgame
	.word	gamestate
	.word	quickSaveSlot
	.word	tempstring
	.word	savegamestrings
	.word	s_QSPROMPT
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	M_QuickSaveResponse
	.word	.LANCHOR0+1452
	.word	currentMenu
	.word	itemOn
.LBE673:
.LBE676:
.LBE670:
.LBE669:
	.cfi_endproc
.LFE49:
	.size	M_QuickSave, .-M_QuickSave
	.align	2
	.global	M_QuickLoad
	.type	M_QuickLoad, %function
M_QuickLoad:
.LFB51:
	.loc 1 1330 0
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
	.loc 1 1333 0
	ldr	r3, .L436
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L434
	.loc 1 1340 0
	ldr	r3, .L436+4
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L435
	.loc 1 1344 0
	ldr	r4, .L436+8
	ldr	r2, .L436+12
	ldr	r1, .L436+16
	add	r3, r3, r3, asl #1
	add	r2, r2, r3, asl #3
	ldr	r1, [r1]
	mov	r0, r4
	bl	sprintf
.LVL271:
.LBB689:
.LBB690:
	.loc 1 5410 0
	mov	r3, #1
	.loc 1 5409 0
	ldr	r2, .L436+20
	.loc 1 5411 0
	ldr	r7, .L436+24
	.loc 1 5409 0
	ldrb	r6, [r2]	@ zero_extendqisi2
	ldr	r5, .L436+28
	.loc 1 5410 0
	ldr	lr, .L436+32
	.loc 1 5413 0
	ldr	ip, .L436+36
	.loc 1 5412 0
	ldr	r1, .L436+40
	ldr	r0, .L436+44
	.loc 1 5411 0
	str	r4, [r7, #220]
	.loc 1 5409 0
	str	r6, [r5]
	.loc 1 5414 0
	strb	r3, [r2]
	.loc 1 5410 0
	str	r3, [lr]
	.loc 1 5413 0
	str	r3, [ip]
	.loc 1 5412 0
	str	r0, [r1]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL272:
.L435:
.LBE690:
.LBE689:
.LBB691:
.LBB692:
.LBB693:
	.loc 1 5410 0
	mov	r3, #1
.LBE693:
.LBE692:
	.loc 1 1341 0
	ldr	r0, .L436+48
.LBB696:
.LBB694:
	.loc 1 5409 0
	ldr	r1, .L436+20
.LBE694:
.LBE696:
	.loc 1 1341 0
	ldr	r7, [r0]
.LVL273:
.LBB697:
.LBB695:
	.loc 1 5409 0
	ldrb	r5, [r1]	@ zero_extendqisi2
	.loc 1 5411 0
	ldr	r6, .L436+24
	.loc 1 5409 0
	ldr	r4, .L436+28
	.loc 1 5410 0
	ldr	lr, .L436+32
	.loc 1 5412 0
	ldr	ip, .L436+40
	.loc 1 5413 0
	ldr	r0, .L436+36
	.loc 1 5411 0
	str	r7, [r6, #220]
	.loc 1 5409 0
	str	r5, [r4]
	.loc 1 5414 0
	strb	r3, [r1]
	.loc 1 5410 0
	str	r3, [lr]
	.loc 1 5412 0
	str	r2, [ip]
	.loc 1 5413 0
	str	r2, [r0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL274:
.L434:
.LBE695:
.LBE697:
.LBE691:
.LBB698:
.LBB699:
	.loc 1 5410 0
	mov	r2, #1
	.loc 1 5412 0
	mov	r3, #0
	.loc 1 5409 0
	ldr	r1, .L436+20
	ldr	r6, .L436+28
	ldrb	r7, [r1]	@ zero_extendqisi2
	.loc 1 5410 0
	ldr	r5, .L436+32
	.loc 1 5412 0
	ldr	r4, .L436+40
	.loc 1 5413 0
	ldr	lr, .L436+36
	.loc 1 5411 0
	ldr	r0, .L436+24
	ldr	ip, .L436+52
	.loc 1 5409 0
	str	r7, [r6]
	.loc 1 5414 0
	strb	r2, [r1]
	.loc 1 5410 0
	str	r2, [r5]
	.loc 1 5412 0
	str	r3, [r4]
	.loc 1 5413 0
	str	r3, [lr]
	.loc 1 5411 0
	str	ip, [r0, #220]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L437:
	.align	2
.L436:
	.word	demorecording
	.word	quickSaveSlot
	.word	tempstring
	.word	savegamestrings
	.word	s_QLPROMPT
	.word	menuactive
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	M_QuickLoadResponse
	.word	s_QSAVESPOT
	.word	.LC30
.LBE699:
.LBE698:
	.cfi_endproc
.LFE51:
	.size	M_QuickLoad, .-M_QuickLoad
	.align	2
	.global	M_FullScreen
	.type	M_FullScreen, %function
M_FullScreen:
.LFB76:
	.loc 1 3100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 3101 0
	bl	I_UpdateVideoMode
.LVL275:
	.loc 1 3103 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 3102 0
	mov	r0, #0
	b	V_SetPalette
.LVL276:
	.cfi_endproc
.LFE76:
	.size	M_FullScreen, .-M_FullScreen
	.align	2
	.global	M_InitExtendedHelp
	.type	M_InitExtendedHelp, %function
M_InitExtendedHelp:
.LFB90:
	.loc 1 3742 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 3746 0
	mov	r2, #0
	.loc 1 3742 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 3744 0
	ldr	r3, .L451
	.loc 1 3746 0
	ldr	r6, .L451+4
	.loc 1 3742 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 3744 0
	ldmia	r3, {r0, r1}
	mov	r1, r1, lsr #16
	.loc 1 3747 0
	mov	r4, #1
	.loc 1 3748 0
	ldr	r5, .L451+8
	.loc 1 3744 0
	strb	r1, [sp, #6]
	str	r0, [sp]
	.loc 1 3746 0
	str	r2, [r6]
.LVL277:
	b	.L444
.LVL278:
.L441:
	.loc 1 3763 0 discriminator 2
	add	r3, r3, #1
	.loc 1 3747 0 discriminator 2
	cmp	r4, #100
	.loc 1 3763 0 discriminator 2
	str	r3, [r6]
	.loc 1 3747 0 discriminator 2
	beq	.L440
.LVL279:
.L444:
	.loc 1 3748 0
	smull	r3, r2, r5, r4
	mov	r3, r4, asr #31
	rsb	r3, r3, r2, asr #2
	.loc 1 3749 0
	add	ip, r3, r3, asl #2
	sub	ip, r4, ip, asl #1
	.loc 1 3748 0
	add	r3, r3, #48
	.loc 1 3749 0
	add	ip, ip, #48
.LBB700:
.LBB701:
	.file 2 "c:/devl/prboom3ds/src/w_wad.h"
	.loc 2 132 0
	mov	r0, sp
	mov	r1, #0
	mvn	r2, #0
.LBE701:
.LBE700:
	.loc 1 3748 0
	strb	r3, [sp, #4]
	.loc 1 3749 0
	strb	ip, [sp, #5]
.LVL280:
.LBB703:
.LBB702:
	.loc 2 132 0
	bl	W_FindNumFromName
.LVL281:
.LBE702:
.LBE703:
	.loc 1 3751 0
	cmn	r0, #1
	.loc 1 3747 0
	add	r4, r4, #1
.LVL282:
	.loc 1 3752 0
	ldr	r3, [r6]
	.loc 1 3751 0
	bne	.L441
	.loc 1 3752 0
	cmp	r3, #0
	beq	.L440
	.loc 1 3753 0
	ldr	r3, .L451+12
	.loc 1 3755 0
	ldr	r2, .L451+16
	.loc 1 3753 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	.loc 1 3754 0
	ldr	r3, .L451+20
	.loc 1 3757 0
	addne	r1, r3, #24
	.loc 1 3754 0
	streq	r3, [r3, #492]
	.loc 1 3755 0
	streq	r2, [r3, #1488]
	.loc 1 3757 0
	strne	r1, [r3, #492]
	.loc 1 3758 0
	strne	r2, [r3, #1512]
.L440:
	.loc 1 3766 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
.LVL283:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL284:
.L452:
	.align	2
.L451:
	.word	.LANCHOR2
	.word	extended_help_count
	.word	1717986919
	.word	gamemode
	.word	M_ExtHelp
	.word	.LANCHOR0
	.cfi_endproc
.LFE90:
	.size	M_InitExtendedHelp, .-M_InitExtendedHelp
	.align	2
	.global	M_GetKeyString
	.type	M_GetKeyString, %function
M_GetKeyString:
.LFB93:
	.loc 1 3810 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL285:
	.loc 1 3813 0
	sub	r2, r0, #33
	cmp	r2, #93
	.loc 1 3810 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 3810 0
	mov	r3, r0
	mov	r4, r1
	.loc 1 3813 0
	bhi	.L454
	.loc 1 3821 0
	cmp	r0, #61
	moveq	r3, #43
	beq	.L455
	.loc 1 3823 0
	cmp	r3, #44
	moveq	r3, #60
	beq	.L455
	.loc 1 3825 0
	cmp	r3, #46
	uxtbne	r3, r3
	beq	.L498
.L455:
.LVL286:
	.loc 1 3828 0
	mov	ip, #0
	.loc 1 3827 0
	ldr	r2, .L504
	add	lr, r4, #1
.LVL287:
	add	r1, r2, r4
	.loc 1 3828 0
	add	r2, r2, lr
	.loc 1 3827 0
	strb	r3, [r1, #224]
	.loc 1 3828 0
	strb	ip, [r2, #224]
.LVL288:
.L456:
	.loc 1 3885 0
	mov	r0, lr
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL289:
.L454:
	.loc 1 3836 0
	sub	r2, r0, #256
	cmp	r2, #255
	bhi	.L457
	.loc 1 3837 0
	ldr	r2, .L504+4
	cmp	r0, r2
	moveq	lr, r1
	beq	.L456
	.loc 1 3843 0
	mov	r1, #0
.LVL290:
	.loc 1 3840 0
	ldr	r0, .L504+8
.LVL291:
	ldr	r2, .L504
	ldr	r0, [r0]	@ unaligned
	.loc 1 3841 0
	add	lr, r4, #4
.LVL292:
	.loc 1 3840 0
	add	r5, r2, #224
	.loc 1 3842 0
	add	ip, r2, r4
	.loc 1 3843 0
	add	r2, r2, lr
	.loc 1 3840 0
	str	r0, [r5, r4]	@ unaligned
	.loc 1 3842 0
	strb	r3, [ip, #227]
	.loc 1 3885 0
	mov	r0, lr
	.loc 1 3843 0
	strb	r1, [r2, #224]
	.loc 1 3885 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL293:
.L457:
	.loc 1 3845 0
	sub	r2, r0, #187
	cmp	r2, #8
	bls	.L499
.LVL294:
.LBB706:
.LBB707:
	.loc 1 3850 0
	cmp	r0, #184
	beq	.L460
	bgt	.L461
	cmp	r0, #157
	beq	.L462
	ble	.L500
	cmp	r0, #174
	beq	.L470
	bgt	.L471
	cmp	r0, #172
	beq	.L472
	cmp	r0, #173
	.loc 1 3858 0
	ldreq	r5, .L504+12
	.loc 1 3850 0
	beq	.L466
	b	.L459
.LVL295:
.L498:
.LBE707:
.LBE706:
	mov	r3, #62
	b	.L455
.L499:
.LVL296:
	.loc 1 3846 0
	mov	ip, #70
	.loc 1 3848 0
	mov	r0, #0
.LVL297:
	.loc 1 3846 0
	ldr	r2, .L504
	.loc 1 3847 0
	add	lr, r1, #2
.LVL298:
	add	r3, r3, #118
.LVL299:
	.loc 1 3846 0
	add	r1, r2, r1
	.loc 1 3848 0
	add	r2, r2, lr
	.loc 1 3847 0
	strb	r3, [r1, #225]
	.loc 1 3846 0
	strb	ip, [r1, #224]
	.loc 1 3848 0
	strb	r0, [r2, #224]
	b	.L456
.LVL300:
.L461:
.LBB710:
.LBB708:
	.loc 1 3850 0
	cmp	r0, #201
	beq	.L476
	ble	.L501
	cmp	r0, #210
	beq	.L484
	ble	.L502
	cmp	r0, #216
	beq	.L488
	cmp	r0, #255
	beq	.L489
	cmp	r0, #215
	beq	.L503
.L459:
.LVL301:
	.loc 1 3875 0
	ldr	r5, .L504+16
.LVL302:
.L466:
	.loc 1 3879 0
	ldr	r0, .L504+20
.LVL303:
	mov	r1, r5
.LVL304:
	add	r0, r0, r4
	bl	strcpy
.LVL305:
	.loc 1 3880 0
	mov	r0, r5
	bl	strlen
.LVL306:
	add	lr, r0, r4
.LVL307:
.LBE708:
.LBE710:
	.loc 1 3885 0
	mov	r0, lr
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL308:
.L500:
.LBB711:
.LBB709:
	.loc 1 3850 0
	cmp	r0, #27
	beq	.L464
	bgt	.L465
	cmp	r0, #9
	beq	.L495
	cmp	r0, #13
	.loc 1 3852 0
	ldreq	r5, .L504+24
	.loc 1 3850 0
	beq	.L466
	b	.L459
.L501:
	cmp	r0, #198
	beq	.L478
	bgt	.L479
	cmp	r0, #186
	beq	.L480
	cmp	r0, #196
	.loc 1 3871 0
	ldreq	r5, .L504+28
	.loc 1 3850 0
	beq	.L466
	b	.L459
.L471:
	cmp	r0, #175
	beq	.L474
	cmp	r0, #182
	.loc 1 3861 0
	ldreq	r5, .L504+32
	.loc 1 3850 0
	beq	.L466
	b	.L459
.L479:
	cmp	r0, #199
	beq	.L482
	cmp	r0, #200
	.loc 1 3870 0
	ldreq	r5, .L504+36
	.loc 1 3850 0
	beq	.L466
	b	.L459
.L502:
	cmp	r0, #207
	beq	.L486
	cmp	r0, #209
	.loc 1 3868 0
	ldreq	r5, .L504+40
	.loc 1 3850 0
	beq	.L466
	b	.L459
.L465:
	cmp	r0, #32
	beq	.L468
	cmp	r0, #127
	.loc 1 3855 0
	ldreq	r5, .L504+44
	.loc 1 3850 0
	beq	.L466
	b	.L459
.L476:
.LVL309:
	.loc 1 3866 0
	ldr	r5, .L504+48
	b	.L466
.LVL310:
.L489:
	.loc 1 3874 0
	ldr	r5, .L504+52
	b	.L466
.LVL311:
.L488:
	.loc 1 3873 0
	ldr	r5, .L504+56
	b	.L466
.LVL312:
.L484:
	.loc 1 3869 0
	ldr	r5, .L504+60
	b	.L466
.LVL313:
.L482:
	.loc 1 3865 0
	ldr	r5, .L504+64
	b	.L466
.LVL314:
.L462:
	.loc 1 3856 0
	ldr	r5, .L504+68
	b	.L466
.LVL315:
.L495:
	.loc 1 3851 0
	ldr	r5, .L504+72
	b	.L466
.L464:
.LVL316:
	.loc 1 3853 0
	ldr	r5, .L504+76
	b	.L466
.LVL317:
.L486:
	.loc 1 3867 0
	ldr	r5, .L504+80
	b	.L466
.LVL318:
.L470:
	.loc 1 3859 0
	ldr	r5, .L504+84
	b	.L466
.LVL319:
.L480:
	.loc 1 3863 0
	ldr	r5, .L504+88
	b	.L466
.LVL320:
.L478:
	.loc 1 3864 0
	ldr	r5, .L504+92
	b	.L466
.LVL321:
.L474:
	.loc 1 3860 0
	ldr	r5, .L504+96
	b	.L466
.LVL322:
.L460:
	.loc 1 3862 0
	ldr	r5, .L504+100
	b	.L466
.LVL323:
.L472:
	.loc 1 3857 0
	ldr	r5, .L504+104
	b	.L466
.LVL324:
.L503:
	.loc 1 3872 0
	ldr	r5, .L504+108
	b	.L466
.LVL325:
.L468:
	.loc 1 3854 0
	ldr	r5, .L504+112
	b	.L466
.L505:
	.align	2
.L504:
	.word	.LANCHOR1
	.word	269
	.word	.LC56
	.word	.LC38
	.word	.LC55
	.word	.LANCHOR1+224
	.word	.LC32
	.word	.LC51
	.word	.LC41
	.word	.LC50
	.word	.LC48
	.word	.LC35
	.word	.LC46
	.word	.LC54
	.word	.LC53
	.word	.LC49
	.word	.LC45
	.word	.LC36
	.word	.LC31
	.word	.LC33
	.word	.LC47
	.word	.LC39
	.word	.LC43
	.word	.LC44
	.word	.LC40
	.word	.LC42
	.word	.LC37
	.word	.LC52
	.word	.LC34
.LBE709:
.LBE711:
	.cfi_endproc
.LFE93:
	.size	M_GetKeyString, .-M_GetKeyString
	.align	2
	.type	M_DrawScreenItems, %function
M_DrawScreenItems:
.LFB61:
	.loc 1 1978 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL326:
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
	.loc 1 1979 0
	ldr	r3, .L601
	.loc 1 1978 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 1979 0
	ldr	r3, [r3]
	.loc 1 1978 0
	mov	r4, r0
	.loc 1 1979 0
	cmp	r3, #0
	ble	.L507
	.loc 1 1980 0
	ldr	r3, .L601+4
	ldr	r3, [r3]
	tst	r3, #262144
	bne	.L591
	.loc 1 1983 0
	tst	r3, #131072
	bne	.L592
	.loc 1 1986 0
	tst	r3, #4194304
	beq	.L510
	.loc 1 1987 0
	ldr	lr, .L601+8
	ldr	ip, .L601+12
	ldmia	lr!, {r0, r1, r2, r3}
.LVL327:
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2}
	stmia	ip!, {r0, r1}
	mov	r3, ip
.LBB744:
.LBB745:
	.loc 1 4001 0
	mov	r0, #80
.LBE745:
.LBE744:
	.loc 1 1987 0
	strb	r2, [r3], #-24
.LVL328:
.LBB747:
.LBB746:
	.loc 1 4001 0
	mov	r1, #176
	mov	r2, #6
	bl	M_DrawString
.LVL329:
.L507:
.LBE746:
.LBE747:
	.loc 1 1995 0
	ldr	r5, [r4, #4]
	tst	r5, #32768
	bne	.L506
.LBB748:
.LBB749:
	.loc 1 1758 0
	ldr	fp, .L601+16
	add	r4, r4, #36
.LVL330:
	b	.L545
.L512:
.LBE749:
.LBE748:
	.loc 1 2004 0
	ldr	r10, [r4, #-32]
	ldr	r3, .L601+20
	and	r3, r3, r10
	cmp	r3, #0
	bne	.L593
.L520:
.LVL331:
	.loc 1 1995 0
	ldr	r5, [r4, #4]
	add	r4, r4, #36
.LVL332:
	tst	r5, #32768
	bne	.L506
.LVL333:
.L545:
	.loc 1 1999 0
	ldr	r3, .L601+24
	and	r3, r3, r5
	cmp	r3, #0
	beq	.L512
.LVL334:
.LBB757:
.LBB754:
	.loc 1 1749 0
	tst	r5, #128
	.loc 1 1746 0
	ldrsh	r7, [r4, #-26]
.LVL335:
	.loc 1 1747 0
	ldrsh	r6, [r4, #-24]
.LVL336:
	.loc 1 1749 0
	beq	.L513
	.loc 1 1758 0
	ands	r0, r5, #3
	ldrne	r3, .L601+28
	ldr	r8, [fp]
	ldrnesh	r0, [r3]
	ldr	r3, .L601+32
	add	r0, r3, r0, asl #3
	bl	W_GetNumForName
.LVL337:
	mov	ip, #6
	mov	r2, #4
	mov	r3, r0
	str	r2, [sp, #4]
	mov	r0, r7
	mov	r1, r6
	str	ip, [sp]
	mov	r2, #0
	blx	r8
.LVL338:
	b	.L512
.LVL339:
.L593:
.LBE754:
.LBE757:
.LBB758:
.LBB759:
	.loc 1 1811 0
	tst	r10, #2
	.loc 1 1806 0
	ldrsh	r5, [r4, #-26]
.LVL340:
	ldrsh	r6, [r4, #-24]
.LVL341:
	.loc 1 1811 0
	movne	r7, #2
	bne	.L521
	tst	r10, #1
	movne	r7, #8
	moveq	r7, #3
.L521:
.LVL342:
	.loc 1 1815 0
	ands	r3, r10, #8
	beq	.L522
	.loc 1 1816 0
	ldr	r3, [r4, #-20]
	ldr	r2, .L601+36
	ldr	r1, [r3, #4]
	ldr	r3, .L601+40
	ldr	r1, [r1]
	ldr	r0, .L601+12
	cmp	r1, #0
	movne	r1, r2
	moveq	r1, r3
.LVL343:
.L590:
	.loc 1 1963 0
	bl	strcpy
.LVL344:
.L544:
.LBB760:
.LBB761:
	.loc 1 4001 0
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	ldr	r3, .L601+12
	bl	M_DrawString
.LVL345:
.LBE761:
.LBE760:
.LBE759:
.LBE758:
	.loc 1 1995 0
	ldr	r5, [r4, #4]
.LVL346:
	add	r4, r4, #36
.LVL347:
	tst	r5, #32768
	beq	.L545
.LVL348:
.L506:
	.loc 1 2008 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL349:
.L513:
	.cfi_restore_state
.LBB777:
.LBB755:
.LBB750:
	.loc 1 1765 0
	tst	r5, #2
	movne	r8, #2
	bne	.L515
	.loc 1 1766 0
	tst	r5, #1
	movne	r8, #8
	beq	.L594
.L515:
.LVL350:
	.loc 1 1774 0
	ldr	r0, [r4, #-36]
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL351:
	.loc 1 1777 0
	and	r5, r5, #1048576
.LVL352:
	.loc 1 1774 0
	mov	r9, r0
.LVL353:
	.loc 1 1763 0
	mov	r10, #0
	b	.L516
.LVL354:
.L517:
.LBB751:
.LBB752:
	.loc 1 4001 0
	rsb	r0, r10, r7
.LVL355:
	mov	r1, r6
	mov	r2, r8
	ldr	r3, .L601+12
	bl	M_DrawString
.LVL356:
.LBE752:
.LBE751:
	.loc 1 1774 0
	mov	r0, #0
	add	r6, r6, #8
.LVL357:
.L516:
	ldr	r1, .L601+44
	bl	strtok
.LVL358:
	subs	r1, r0, #0
	.loc 1 1776 0
	ldr	r0, .L601+12
.LVL359:
	.loc 1 1774 0
	beq	.L595
	.loc 1 1776 0
	bl	strcpy
.LVL360:
	.loc 1 1777 0
	cmp	r5, #0
	bne	.L517
	.loc 1 1778 0
	ldr	r0, .L601+12
	bl	M_GetPixelWidth
.LVL361:
	add	r10, r0, #4
.LVL362:
	b	.L517
.LVL363:
.L595:
	.loc 1 1781 0
	mov	r0, r9
	bl	Z_Free
.LVL364:
	b	.L512
.LVL365:
.L522:
.LBE750:
.LBE755:
.LBE777:
.LBB778:
.LBB773:
	.loc 1 1823 0
	ands	r1, r10, #4096
	beq	.L524
	.loc 1 1825 0
	tst	r10, #3
	beq	.L525
	ldr	r0, .L601+48
	ldr	r2, [r0, #16]
	cmp	r2, #0
	bne	.L596
.L525:
	.loc 1 1830 0
	ldr	r3, [r4, #-20]
	ldr	r1, .L601+52
	ldr	r3, [r3, #4]
	ldr	r0, .L601+12
	ldr	r2, [r3]
	bl	sprintf
.LVL366:
	b	.L544
.LVL367:
.L524:
	.loc 1 1837 0
	tst	r10, #1024
	beq	.L527
.LBB762:
	.loc 1 1838 0
	ldr	r8, [r4, #-20]
.LVL368:
	.loc 1 1842 0
	cmp	r8, #0
	beq	.L520
	.loc 1 1843 0
	ldr	r0, [r8]
	bl	M_GetKeyString
.LVL369:
	.loc 1 1844 0
	ldr	r2, .L601+56
	ldr	r0, .L601+60
	ldr	r3, .L601+64
	cmp	r8, r2
	cmpne	r8, r0
	moveq	r2, #1
	movne	r2, #0
	cmp	r8, r3
	movne	r1, r2
	orreq	r1, r2, #1
	ldr	r2, .L601+68
	.loc 1 1845 0
	ldr	r3, .L601+72
	cmp	r8, r2
	movne	r2, r1
	orreq	r2, r1, #1
	cmp	r8, r3
	orreq	r2, r2, #1
	ldr	r3, .L601+76
	cmp	r8, r3
	movne	r3, r2
	orreq	r3, r2, #1
	cmp	r3, #0
	beq	.L544
	.loc 1 1847 0
	ldr	r3, [r4, #-16]
	cmp	r3, #0
	beq	.L531
	ldr	r8, [r3]
.LVL370:
	cmn	r8, #1
	beq	.L531
	.loc 1 1848 0
	ldr	r0, .L601+12
	bl	strlen
.LVL371:
	ldr	r3, .L601+12
	add	r2, r8, #1
	add	r0, r3, r0
	ldr	r1, .L601+80
	bl	sprintf
.LVL372:
.L531:
	.loc 1 1850 0
	ldr	r8, [r4, #-12]
	cmp	r8, #0
	beq	.L544
	.loc 1 1851 0
	ldr	r0, .L601+12
	bl	strlen
.LVL373:
	ldr	r2, [r8]
	ldr	r3, .L601+12
	add	r2, r2, #1
	add	r0, r3, r0
	ldr	r1, .L601+84
	bl	sprintf
.LVL374:
	b	.L544
.LVL375:
.L527:
.LBE762:
	.loc 1 1868 0
	ands	r9, r10, #2064
	bne	.L597
	.loc 1 1877 0
	ands	r8, r10, #32
	bne	.L598
	.loc 1 1899 0
	ldr	r3, .L601+88
	and	r3, r3, r10
	cmp	r3, #0
	beq	.L536
.LVL376:
.LBB763:
	.loc 1 1910 0
	ldr	r2, .L601+48
	.loc 1 1904 0
	ldr	r3, [r4, #-20]
	.loc 1 1910 0
	ldr	r2, [r2, #8]
	.loc 1 1905 0
	ldr	r3, [r3, #8]
	.loc 1 1910 0
	cmp	r2, #0
	.loc 1 1905 0
	ldr	r9, [r3]
.LVL377:
	.loc 1 1910 0
	beq	.L537
	tst	r10, #3
.LBB764:
	.loc 1 1918 0
	ldrne	r10, .L601+92
.LVL378:
.LBE764:
	.loc 1 1910 0
	bne	.L539
.LVL379:
.L537:
	.loc 1 1946 0
	mov	r1, r9
	ldr	r0, .L601+12
	b	.L590
.LVL380:
.L594:
.LBE763:
.LBE773:
.LBE778:
.LBB779:
.LBB756:
.LBB753:
	.loc 1 1767 0
	tst	r5, #772
	moveq	r8, #6
	movne	r8, #5
	b	.L515
.LVL381:
.L591:
.LBE753:
.LBE756:
.LBE779:
	.loc 1 1981 0
	ldr	lr, .L601+96
	ldr	ip, .L601+12
	ldmia	lr!, {r0, r1, r2, r3}
.LVL382:
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r2, [lr]
.LBB780:
.LBB781:
	.loc 1 4001 0
	mov	r0, #100
.LBE781:
.LBE780:
	.loc 1 1981 0
	strh	r2, [ip], #2	@ movhi
	mov	r3, ip
	mov	r2, r2, lsr #16
	strb	r2, [r3], #-18
.LVL383:
.LBB783:
.LBB782:
	.loc 1 4001 0
	mov	r1, #176
	mov	r2, #6
	bl	M_DrawString
.LVL384:
	b	.L507
.LVL385:
.L540:
.LBE782:
.LBE783:
.LBB784:
.LBB774:
.LBB767:
.LBB766:
.LBB765:
	.loc 1 1919 0
	mov	r0, r9
	bl	strlen
.LVL386:
	.loc 1 1921 0
	ldr	r3, .L601+100
	.loc 1 1920 0
	sub	r0, r0, #1
.LVL387:
	strb	r8, [r9, r0]
	.loc 1 1921 0
	ldr	r3, [r3]
	ldr	r2, .L601+100
	cmp	r0, r3
	.loc 1 1922 0
	sublt	r3, r3, #1
	strlt	r3, [r2]
.LVL388:
.L539:
.LBE765:
	.loc 1 1918 0
	mov	r0, r9
	bl	M_GetPixelWidth
.LVL389:
	cmp	r0, r10
	bgt	.L540
	.loc 1 1930 0
	mov	r10, #0
	.loc 1 1929 0
	ldr	r3, .L601+100
	.loc 1 1931 0
	add	r0, sp, #28
	.loc 1 1929 0
	ldr	r8, [r3]
	ldrb	r3, [r9, r8]	@ zero_extendqisi2
	.loc 1 1930 0
	strb	r10, [sp, #29]
	.loc 1 1929 0
	strb	r3, [sp, #28]
	.loc 1 1931 0
	bl	M_GetPixelWidth
.LVL390:
	.loc 1 1933 0
	cmp	r0, #1
	.loc 1 1934 0
	strb	r10, [r9, r8]
	.loc 1 1933 0
	movne	r8, r0
	.loc 1 1935 0
	mov	r0, r9
.LVL391:
	.loc 1 1933 0
	moveq	r8, #7
.LVL392:
	.loc 1 1935 0
	bl	M_GetPixelWidth
.LVL393:
	.loc 1 1936 0
	ldr	r3, .L601+100
	ldrb	r1, [sp, #28]	@ zero_extendqisi2
	ldr	r2, [r3]
	.loc 1 1940 0
	ldr	r3, .L601+104
	.loc 1 1936 0
	strb	r1, [r9, r2]
	.loc 1 1940 0
	ldr	r3, [r3]
	add	r0, r5, r0
.LVL394:
	ldr	r2, .L601+108
	sub	r1, r0, #1
	ldr	ip, [r2]
	mul	r1, r3, r1
	mul	r2, ip, r6
	.loc 1 1941 0
	add	r0, ip, ip, asl #3
	.loc 1 1940 0
	ldr	ip, .L601+112
	.loc 1 1941 0
	mul	r3, r8, r3
	.loc 1 1940 0
	smull	lr, ip, ip, r1
	ldr	lr, .L601+116
	str	ip, [sp, #12]
	smull	lr, ip, lr, r0
	mov	r0, r0, asr #31
	rsb	ip, r0, ip, asr #6
	ldr	r0, .L601+116
	str	ip, [sp]
	smull	r0, r8, r0, r2
.LVL395:
	ldr	r0, .L601+112
	ldr	ip, .L601+120
	smull	r0, lr, r0, r3
	mov	r3, r3, asr #31
	rsb	r3, r3, lr, asr #7
	mov	lr, #4
	mov	r0, r10
	ldr	r10, [sp, #12]
	mov	r1, r1, asr #31
	mov	r2, r2, asr #31
	ldr	ip, [ip]
	rsb	r1, r1, r10, asr #7
	rsb	r2, r2, r8, asr #6
	str	lr, [sp, #4]
	blx	ip
.LVL396:
	b	.L537
.LVL397:
.L510:
.LBE766:
.LBE767:
.LBE774:
.LBE784:
	.loc 1 1990 0
	ldr	lr, .L601+124
	ldr	ip, .L601+12
	ldmia	lr!, {r0, r1, r2, r3}
.LVL398:
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
.LBB785:
.LBB786:
	.loc 1 4001 0
	mov	r0, #18
.LBE786:
.LBE785:
	.loc 1 1990 0
	strb	r3, [ip]
.LVL399:
.LBB788:
.LBB787:
	.loc 1 4001 0
	mov	r1, #184
	sub	r3, ip, #44
	mov	r2, #6
	bl	M_DrawString
.LVL400:
	b	.L507
.LVL401:
.L596:
.LBE787:
.LBE788:
.LBB789:
.LBB775:
	.loc 1 1826 0
	ldr	r1, .L601+128
	ldr	r2, .L601+132
	ldr	ip, [r1]
	.loc 1 1827 0
	add	r0, r0, #224
	mov	r1, r2
	.loc 1 1826 0
	strb	r3, [r2, ip]
	.loc 1 1827 0
	bl	strcpy
.LVL402:
	b	.L544
.LVL403:
.L592:
.LBE775:
.LBE789:
	.loc 1 1984 0
	ldr	ip, .L601+136
	ldr	lr, .L601+12
	ldmia	ip!, {r0, r1, r2, r3}
.LVL404:
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r3, lr
	ldr	r2, [ip]
.LBB790:
.LBB791:
	.loc 1 4001 0
	mov	r0, #3
.LBE791:
.LBE790:
	.loc 1 1984 0
	strh	r2, [r3], #-48	@ movhi
.LVL405:
.LBB793:
.LBB792:
	.loc 1 4001 0
	mov	r1, #176
	mov	r2, #6
	bl	M_DrawString
.LVL406:
	b	.L507
.LVL407:
.L598:
.LBE792:
.LBE793:
.LBB794:
.LBB776:
.LBB768:
	.loc 1 1884 0
	ldr	r8, .L601+104
	ldr	r3, .L601+108
	ldr	r1, [r8]
	ldr	r3, [r3]
	mul	r1, r1, r5
	ldr	r0, .L601+116
	sub	r2, r6, #1
	mul	r2, r3, r2
	smull	ip, r0, r0, r3
	ldr	ip, .L601+112
	ldr	r10, [r8]
.LVL408:
	smull	ip, r7, ip, r1
.LVL409:
	ldr	ip, .L601+116
	mov	r3, r3, asr #31
	smull	ip, lr, ip, r2
	.loc 1 1881 0
	ldr	ip, [r4, #-20]
	.loc 1 1884 0
	rsb	r0, r3, r0, asr #3
	.loc 1 1881 0
	str	ip, [sp, #12]
.LVL410:
	.loc 1 1884 0
	ldr	ip, .L601+112
	ldr	r3, [r8]
	smull	ip, r10, ip, r10
	.loc 1 1881 0
	ldr	ip, [sp, #12]
	.loc 1 1884 0
	mov	r1, r1, asr #31
	.loc 1 1881 0
	ldr	ip, [ip, #4]
	.loc 1 1884 0
	rsb	r1, r1, r7, asr #7
	.loc 1 1881 0
	ldr	ip, [ip]
	.loc 1 1884 0
	stmia	sp, {r0, r9}
.LVL411:
	ldr	r7, .L601+120
	mov	r2, r2, asr #31
	mov	r3, r3, asr #31
	rsb	r2, r2, lr, asr #6
	rsb	r3, r3, r10, asr #4
	.loc 1 1881 0
	str	ip, [sp, #12]
	.loc 1 1884 0
	mov	r0, r9
	ldr	ip, [r7]
	blx	ip
.LVL412:
	.loc 1 1887 0
	ldr	r3, .L601+108
	ldr	lr, .L601+116
	ldr	r0, [r3]
	ldr	r3, [r8]
	mul	r2, r0, r6
	.loc 1 1888 0
	add	r0, r0, r0, asl #1
	.loc 1 1887 0
	add	r8, r5, #1
	.loc 1 1888 0
	mov	r0, r0, asl #1
	.loc 1 1887 0
	mul	r1, r3, r8
	smull	lr, ip, lr, r0
	.loc 1 1888 0
	add	r3, r3, r3, asl #1
	.loc 1 1887 0
	ldr	lr, .L601+112
	.loc 1 1888 0
	mov	r3, r3, asl #1
	.loc 1 1887 0
	smull	lr, r10, lr, r3
	ldr	lr, .L601+112
	mov	r0, r0, asr #31
	smull	r5, lr, lr, r1
.LVL413:
	ldr	r5, .L601+116
	str	lr, [sp, #16]
	smull	lr, r5, r5, r2
	str	r5, [sp, #20]
	ldr	r5, [r7]
	ldr	r7, [sp, #16]
	mov	r1, r1, asr #31
	ldrb	lr, [sp, #12]	@ zero_extendqisi2
	rsb	r1, r1, r7, asr #7
	ldr	r7, [sp, #20]
	rsb	ip, r0, ip, asr #6
	mov	r3, r3, asr #31
	mov	r2, r2, asr #31
	str	ip, [sp]
	mov	r0, r9
	rsb	r3, r3, r10, asr #7
	rsb	r2, r2, r7, asr #6
	str	lr, [sp, #4]
	blx	r5
.LVL414:
	.loc 1 1891 0
	ldr	ip, [sp, #12]
	cmp	ip, #0
	bne	.L520
	.loc 1 1892 0
	ldr	r0, .L601+140
	ldr	r5, [fp]
	bl	W_GetNumForName
.LVL415:
	mov	lr, #6
	mov	ip, #4
	mov	r3, r0
	mov	r1, r6
	mov	r0, r8
	ldr	r2, [sp, #12]
	str	lr, [sp]
	str	ip, [sp, #4]
	blx	r5
.LVL416:
	b	.L520
.LVL417:
.L597:
.LBE768:
	.loc 1 1870 0
	ldr	r3, [r4, #-20]
	ldr	r1, .L601+52
	ldr	r3, [r3, #4]
	ldr	r0, .L601+12
	ldr	r2, [r3]
	bl	sprintf
.LVL418:
	.loc 1 1871 0
	tst	r10, #16
	ldrne	r3, [r4, #-20]
	moveq	r2, r7
.LVL419:
	ldrne	r3, [r3, #4]
.LBB769:
.LBB770:
	.loc 1 4001 0
	mov	r0, r5
.LBE770:
.LBE769:
	.loc 1 1871 0
	ldrne	r2, [r3]
.LVL420:
.LBB772:
.LBB771:
	.loc 1 4001 0
	mov	r1, r6
	ldr	r3, .L601+12
	bl	M_DrawString
.LVL421:
	b	.L520
.LVL422:
.L536:
.LBE771:
.LBE772:
	.loc 1 1953 0
	tst	r10, #8388608
	beq	.L520
	.loc 1 1954 0
	ldr	r3, [r4, #-20]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L599
.L542:
	.loc 1 1962 0
	cmp	r2, #1
	bne	.L544
	.loc 1 1963 0
	ldr	r3, [r3, #8]
	ldr	r0, .L601+12
	ldr	r1, [r3]
	b	.L590
.L599:
	.loc 1 1955 0
	ldr	r2, [r4, #-4]
	.loc 1 1956 0
	ldr	r3, [r3, #4]
	.loc 1 1955 0
	cmp	r2, #0
	.loc 1 1956 0
	ldr	r0, .L601+12
	.loc 1 1955 0
	beq	.L600
	.loc 1 1958 0
	ldr	r3, [r3]
	ldr	r1, [r2, r3, asl #2]
	bl	strcpy
.LVL423:
	ldr	r3, [r4, #-20]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	b	.L542
.L600:
	.loc 1 1956 0
	ldr	r2, [r3]
	ldr	r1, .L601+52
	bl	sprintf
.LVL424:
	ldr	r3, [r4, #-20]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	b	.L542
.L602:
	.align	2
.L601:
	.word	print_warning_about_changes
	.word	warning_about_changes
	.word	.LC61
	.word	.LANCHOR1+224
	.word	V_DrawNumPatch
	.word	8920184
	.word	11018236
	.word	whichSkull
	.word	.LANCHOR0+1524
	.word	.LC57
	.word	.LC58
	.word	.LC63
	.word	.LANCHOR1
	.word	.LC64
	.word	key_down
	.word	key_up
	.word	key_speed
	.word	key_fire
	.word	key_strafe
	.word	key_use
	.word	.LC65
	.word	.LC66
	.word	524352
	.word	271
	.word	.LC59
	.word	chat_index
	.word	SCREENWIDTH
	.word	SCREENHEIGHT
	.word	1717986919
	.word	1374389535
	.word	V_FillRect
	.word	.LC62
	.word	gather_count
	.word	gather_buffer
	.word	.LC60
	.word	.LC67
.LBE776:
.LBE794:
	.cfi_endproc
.LFE61:
	.size	M_DrawScreenItems, .-M_DrawScreenItems
	.align	2
	.global	M_DrawHelp
	.type	M_DrawHelp, %function
M_DrawHelp:
.LFB98:
	.loc 1 4038 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 4039 0
	mov	r1, #2
	.loc 1 4038 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB795:
.LBB796:
	.loc 1 130 0
	ldr	r3, .L609
.LBE796:
.LBE795:
	.loc 1 4039 0
	ldr	r2, .L609+4
.LBB799:
.LBB797:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE797:
.LBE799:
	.loc 1 4039 0
	strb	r1, [r2]
.LVL425:
.LBB800:
.LBB798:
	.loc 1 130 0
	cmp	r3, #0
	beq	.L604
	bl	M_DrawBackground.part.1.constprop.27
.LVL426:
.L604:
.LBE798:
.LBE800:
	.loc 1 4044 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 4043 0
	ldr	r0, .L609+8
	b	M_DrawScreenItems
.LVL427:
.L610:
	.align	2
.L609:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LANCHOR0+1544
	.cfi_endproc
.LFE98:
	.size	M_DrawHelp, .-M_DrawHelp
	.align	2
	.global	M_StartControlPanel
	.type	M_StartControlPanel, %function
M_StartControlPanel:
.LFB102:
	.loc 1 5262 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 5265 0
	ldr	r3, .L613
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bxne	lr
	b	M_StartControlPanel.part.7
.LVL428:
.L614:
	.align	2
.L613:
	.word	menuactive
	.cfi_endproc
.LFE102:
	.size	M_StartControlPanel, .-M_StartControlPanel
	.align	2
	.global	M_ClearMenus
	.type	M_ClearMenus, %function
M_ClearMenus:
.LFB104:
	.loc 1 5371 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 5372 0
	mov	r3, #0
	ldr	r0, .L616
	.loc 1 5373 0
	ldr	r1, .L616+4
	.loc 1 5374 0
	ldr	r2, .L616+8
	.loc 1 5372 0
	strb	r3, [r0]
	.loc 1 5373 0
	str	r3, [r1]
	.loc 1 5374 0
	str	r3, [r2, #12]
	bx	lr
.L617:
	.align	2
.L616:
	.word	menuactive
	.word	print_warning_about_changes
	.word	.LANCHOR1
	.cfi_endproc
.LFE104:
	.size	M_ClearMenus, .-M_ClearMenus
	.align	2
	.global	M_SetupNextMenu
	.type	M_SetupNextMenu, %function
M_SetupNextMenu:
.LFB105:
	.loc 1 5384 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL429:
	.loc 1 5385 0
	ldr	r1, .L619
	.loc 1 5386 0
	ldrh	r2, [r0, #20]
	ldr	r3, .L619+4
	.loc 1 5385 0
	str	r0, [r1]
	.loc 1 5386 0
	strh	r2, [r3]	@ movhi
	bx	lr
.L620:
	.align	2
.L619:
	.word	currentMenu
	.word	itemOn
	.cfi_endproc
.LFE105:
	.size	M_SetupNextMenu, .-M_SetupNextMenu
	.align	2
	.global	M_Ticker
	.type	M_Ticker, %function
M_Ticker:
.LFB106:
	.loc 1 5394 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 5395 0
	ldr	r2, .L623
	ldrh	r3, [r2]
	sub	r3, r3, #1
	uxth	r3, r3
	sxth	r1, r3
	cmp	r1, #0
	strh	r3, [r2]	@ movhi
	bxgt	lr
	.loc 1 5398 0
	mov	r3, #8
	.loc 1 5397 0
	ldr	r1, .L623+4
	.loc 1 5398 0
	strh	r3, [r2]	@ movhi
	.loc 1 5397 0
	ldrh	r3, [r1]
	eor	r3, r3, #1
	strh	r3, [r1]	@ movhi
	bx	lr
.L624:
	.align	2
.L623:
	.word	skullAnimCounter
	.word	whichSkull
	.cfi_endproc
.LFE106:
	.size	M_Ticker, .-M_Ticker
	.align	2
	.global	M_StartMessage
	.type	M_StartMessage, %function
M_StartMessage:
.LFB107:
	.loc 1 5408 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL430:
	.loc 1 5410 0
	mov	r3, #1
	.loc 1 5409 0
	ldr	ip, .L627
	.loc 1 5408 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 5409 0
	ldrb	r8, [ip]	@ zero_extendqisi2
	ldr	r7, .L627+4
	.loc 1 5410 0
	ldr	r6, .L627+8
	.loc 1 5411 0
	ldr	r5, .L627+12
	.loc 1 5412 0
	ldr	r4, .L627+16
	.loc 1 5413 0
	ldr	lr, .L627+20
	.loc 1 5409 0
	str	r8, [r7]
	.loc 1 5414 0
	strb	r3, [ip]
	.loc 1 5410 0
	str	r3, [r6]
	.loc 1 5411 0
	str	r0, [r5, #220]
	.loc 1 5412 0
	str	r1, [r4]
	.loc 1 5413 0
	str	r2, [lr]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L628:
	.align	2
.L627:
	.word	menuactive
	.word	messageLastMenuActive
	.word	messageToPrint
	.word	.LANCHOR1
	.word	messageRoutine
	.word	messageNeedsInput
	.cfi_endproc
.LFE107:
	.size	M_StartMessage, .-M_StartMessage
	.align	2
	.global	M_StopMessage
	.type	M_StopMessage, %function
M_StopMessage:
.LFB108:
	.loc 1 5419 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 5421 0
	mov	r2, #0
	.loc 1 5420 0
	ldr	r3, .L630
	ldr	r1, .L630+4
	ldr	r0, [r3]
	.loc 1 5421 0
	ldr	r3, .L630+8
	.loc 1 5420 0
	strb	r0, [r1]
	.loc 1 5421 0
	str	r2, [r3]
	bx	lr
.L631:
	.align	2
.L630:
	.word	messageLastMenuActive
	.word	menuactive
	.word	messageToPrint
	.cfi_endproc
.LFE108:
	.size	M_StopMessage, .-M_StopMessage
	.global	__aeabi_idiv
	.align	2
	.global	M_DrawThermo
	.type	M_DrawThermo, %function
M_DrawThermo:
.LFB109:
	.loc 1 5437 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL431:
	.loc 1 5449 0
	cmp	r2, #200
	.loc 1 5437 0
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
	.loc 1 5449 0
	movlt	r9, r2
	movge	r9, #200
.LVL432:
	.loc 1 5437 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 5450 0
	cmp	r9, #23
	.loc 1 5437 0
	mov	r4, r0
	mov	r7, r1
	str	r3, [sp, #20]
	.loc 1 5450 0
	ble	.L633
	.loc 1 5450 0 is_stmt 0 discriminator 1
	mov	r1, r9
.LVL433:
	mov	r0, #200
.LVL434:
	bl	__aeabi_idiv
.LVL435:
	.loc 1 5452 0 is_stmt 1 discriminator 1
	ldr	r8, .L640
	.loc 1 5450 0 discriminator 1
	mov	r6, r0
	.loc 1 5452 0 discriminator 1
	ldr	r0, .L640+4
	ldr	r5, [r8]
	bl	W_GetNumForName
.LVL436:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, r4
	mov	r1, r7
	mov	r2, #0
	blx	r5
.LVL437:
	.loc 1 5453 0 discriminator 1
	add	r4, r4, #8
.LVL438:
	rsb	r3, r6, #8
	str	r3, [sp, #16]
.LVL439:
	str	r4, [sp, #12]
.LVL440:
.L634:
	.loc 1 5453 0 is_stmt 0 discriminator 3
	mov	r5, #0
	.loc 1 5456 0 is_stmt 1 discriminator 3
	mov	fp, #6
.LVL441:
.L636:
	ldr	r0, .L640+8
	ldr	r10, [r8]
	bl	W_GetNumForName
.LVL442:
	mov	r2, #4
	mov	r3, r0
	str	r2, [sp, #4]
	mov	r0, r4
	.loc 1 5454 0 discriminator 3
	add	r5, r5, #1
.LVL443:
	.loc 1 5456 0 discriminator 3
	str	fp, [sp]
	mov	r1, r7
	mov	r2, #0
	blx	r10
.LVL444:
	.loc 1 5454 0 discriminator 3
	cmp	r5, r9
	.loc 1 5457 0 discriminator 3
	add	r4, r4, r6
.LVL445:
	.loc 1 5454 0 discriminator 3
	bne	.L636
	ldr	r3, [sp, #12]
	sub	r5, r5, #1
.LVL446:
	add	r4, r6, r3
.LVL447:
	mla	r4, r6, r5, r4
.LVL448:
.L635:
	.loc 1 5462 0
	ldr	r0, .L640+12
	ldr	r10, [r8]
	mov	r9, #6
.LVL449:
	bl	W_GetNumForName
.LVL450:
	mov	r5, #4
	.loc 1 5460 0
	ldr	r2, [sp, #16]
	.loc 1 5462 0
	mov	r3, r0
	mov	r1, r7
	.loc 1 5460 0
	add	r0, r4, r2
.LVL451:
	.loc 1 5462 0
	str	r9, [sp]
	mov	r2, #0
	str	r5, [sp, #4]
	blx	r10
.LVL452:
	.loc 1 5463 0
	ldr	r0, .L640+16
	ldr	r4, [r8]
.LVL453:
	bl	W_GetNumForName
.LVL454:
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #12]
	mov	r3, r0
	str	r9, [sp]
	mla	r0, r2, r6, r1
	str	r5, [sp, #4]
	mov	r1, r7
	mov	r2, #0
	blx	r4
.LVL455:
	.loc 1 5464 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL456:
.L633:
	.cfi_restore_state
	mov	r3, #0
.LVL457:
	.loc 1 5452 0 discriminator 4
	ldr	r8, .L640
	ldr	r0, .L640+4
.LVL458:
	mov	r6, r3
	ldr	r5, [r8]
	str	r3, [sp, #16]
	bl	W_GetNumForName
.LVL459:
	mov	ip, #6
	mov	r1, #4
	mov	r3, r0
	mov	r2, r6
	str	r1, [sp, #4]
	mov	r0, r4
	str	ip, [sp]
	mov	r1, r7
	blx	r5
.LVL460:
	.loc 1 5453 0 discriminator 4
	add	r4, r4, #8
.LVL461:
	.loc 1 5454 0 discriminator 4
	cmp	r9, r6
	.loc 1 5453 0 discriminator 4
	str	r4, [sp, #12]
	.loc 1 5450 0 discriminator 4
	mov	r6, #8
.LVL462:
	.loc 1 5454 0 discriminator 4
	bgt	.L634
	b	.L635
.L641:
	.align	2
.L640:
	.word	V_DrawNumPatch
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.cfi_endproc
.LFE109:
	.size	M_DrawThermo, .-M_DrawThermo
	.align	2
	.global	M_DrawOptions
	.type	M_DrawOptions, %function
M_DrawOptions:
.LFB35:
	.loc 1 1001 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 1004 0
	ldr	r9, .L644
	.loc 1 1001 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 1004 0
	ldr	r0, .L644+4
	ldr	r4, [r9]
	mov	r7, #6
	bl	W_GetNumForName
.LVL463:
	mov	r8, #4
	mov	r3, r0
	mov	r1, #15
	mov	r2, #0
	stmia	sp, {r7, r8}
	mov	r0, #108
	blx	r4
.LVL464:
	.loc 1 1006 0
	ldr	r3, .L644+8
	ldr	r4, .L644+12
	ldr	r3, [r3]
	add	r0, r4, #3488
	add	r3, r3, r3, asl #3
	add	r0, r0, r3
	ldrsh	r5, [r4, #88]
	ldrsh	r6, [r4, #90]
	ldr	r9, [r9]
	bl	W_GetNumForName
.LVL465:
	add	r5, r5, #120
	add	r6, r6, #48
	mov	r3, r0
	mov	r1, r6
	mov	r0, r5
	str	r7, [sp]
	str	r8, [sp, #4]
	mov	r2, #0
	blx	r9
.LVL466:
	.loc 1 1009 0
	mov	r2, #9
	ldr	r3, .L644+16
	ldrsh	r1, [r4, #90]
	ldrsh	r0, [r4, #88]
	ldr	r3, [r3]
	add	r1, r1, #80
	.loc 1 1011 0
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
	.loc 1 1009 0
	b	M_DrawThermo
.LVL467:
.L645:
	.align	2
.L644:
	.word	V_DrawNumPatch
	.word	.LC72
	.word	showMessages
	.word	.LANCHOR0
	.word	screenSize
	.cfi_endproc
.LFE35:
	.size	M_DrawOptions, .-M_DrawOptions
	.align	2
	.global	M_DrawSound
	.type	M_DrawSound, %function
M_DrawSound:
.LFB39:
	.loc 1 1129 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 1131 0
	ldr	r3, .L648
	.loc 1 1129 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 1131 0
	ldr	r0, .L648+4
	ldr	r5, [r3]
	bl	W_GetNumForName
.LVL468:
	mov	r1, #6
	mov	r2, #4
	.loc 1 1133 0
	ldr	r4, .L648+8
	.loc 1 1131 0
	stmia	sp, {r1, r2}
	mov	r3, r0
	mov	r1, #38
	mov	r0, #60
	mov	r2, #0
	blx	r5
.LVL469:
	.loc 1 1133 0
	ldrsh	r1, [r4, #114]
	ldr	r3, .L648+12
	ldrsh	r0, [r4, #112]
	add	r1, r1, #16
	ldr	r3, [r3]
	mov	r2, #16
	bl	M_DrawThermo
.LVL470:
	.loc 1 1135 0
	mov	r2, #16
	ldr	r3, .L648+16
	ldrsh	r1, [r4, #114]
	ldrsh	r0, [r4, #112]
	ldr	r3, [r3]
	add	r1, r1, #48
	.loc 1 1136 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1135 0
	b	M_DrawThermo
.LVL471:
.L649:
	.align	2
.L648:
	.word	V_DrawNumPatch
	.word	.LC73
	.word	.LANCHOR0
	.word	snd_SfxVolume
	.word	snd_MusicVolume
	.cfi_endproc
.LFE39:
	.size	M_DrawSound, .-M_DrawSound
	.align	2
	.global	M_DrawMouse
	.type	M_DrawMouse, %function
M_DrawMouse:
.LFB43:
	.loc 1 1224 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1228 0
	ldr	r3, .L652
	.loc 1 1224 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 1228 0
	ldr	r0, .L652+4
	ldr	r4, [r3]
	bl	W_GetNumForName
.LVL472:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, #60
	mov	r1, #38
	mov	r2, #0
	blx	r4
.LVL473:
	.loc 1 1231 0
	ldr	r3, .L652+8
.LVL474:
	.loc 1 1232 0
	ldr	r4, .L652+12
	.loc 1 1231 0
	ldr	r3, [r3]
.LVL475:
	.loc 1 1232 0
	ldrsh	r1, [r4, #138]
	cmp	r3, #99
	movge	r3, #99
.LVL476:
	ldrsh	r0, [r4, #136]
	add	r1, r1, #16
	mov	r2, #100
	bl	M_DrawThermo
.LVL477:
	.loc 1 1234 0
	ldr	r3, .L652+16
.LVL478:
	.loc 1 1235 0
	mov	r2, #100
	.loc 1 1234 0
	ldr	r3, [r3]
.LVL479:
	.loc 1 1235 0
	ldrsh	r1, [r4, #138]
	cmp	r3, #99
	movge	r3, #99
.LVL480:
	ldrsh	r0, [r4, #136]
	add	r1, r1, #48
	.loc 1 1236 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1235 0
	b	M_DrawThermo
.LVL481:
.L653:
	.align	2
.L652:
	.word	V_DrawNumPatch
	.word	.LC74
	.word	mouseSensitivity_horiz
	.word	.LANCHOR0
	.word	mouseSensitivity_vert
	.cfi_endproc
.LFE43:
	.size	M_DrawMouse, .-M_DrawMouse
	.align	2
	.global	M_DrawEmptyCell
	.type	M_DrawEmptyCell, %function
M_DrawEmptyCell:
.LFB110:
	.loc 1 5471 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL482:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 5473 0
	ldrsh	r4, [r0, #18]
	ldr	r3, .L656
	.loc 1 5471 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 5473 0
	ldrsh	r5, [r0, #16]
	add	r1, r4, r1, asl #4
.LVL483:
	ldr	r0, .L656+4
.LVL484:
	ldr	r6, [r3]
	sub	r4, r1, #1
	bl	W_GetNumForName
.LVL485:
	mov	ip, #6
	mov	r2, #4
	sub	r5, r5, #10
	mov	r3, r0
	str	r2, [sp, #4]
	mov	r1, r4
	mov	r0, r5
	str	ip, [sp]
	mov	r2, #0
	blx	r6
.LVL486:
	.loc 1 5475 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L657:
	.align	2
.L656:
	.word	V_DrawNumPatch
	.word	.LC75
	.cfi_endproc
.LFE110:
	.size	M_DrawEmptyCell, .-M_DrawEmptyCell
	.align	2
	.global	M_DrawSelCell
	.type	M_DrawSelCell, %function
M_DrawSelCell:
.LFB111:
	.loc 1 5482 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL487:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 5484 0
	ldrsh	r4, [r0, #18]
	ldr	r3, .L660
	.loc 1 5482 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 5484 0
	ldrsh	r5, [r0, #16]
	add	r1, r4, r1, asl #4
.LVL488:
	ldr	r0, .L660+4
.LVL489:
	ldr	r6, [r3]
	sub	r4, r1, #1
	bl	W_GetNumForName
.LVL490:
	mov	ip, #6
	mov	r2, #4
	sub	r5, r5, #10
	mov	r3, r0
	str	r2, [sp, #4]
	mov	r1, r4
	mov	r0, r5
	str	ip, [sp]
	mov	r2, #0
	blx	r6
.LVL491:
	.loc 1 5486 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L661:
	.align	2
.L660:
	.word	V_DrawNumPatch
	.word	.LC76
	.cfi_endproc
.LFE111:
	.size	M_DrawSelCell, .-M_DrawSelCell
	.align	2
	.global	M_StringWidth
	.type	M_StringWidth, %function
M_StringWidth:
.LFB112:
	.loc 1 5498 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL492:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 5498 0
	mov	r4, r0
	bl	strlen
.LVL493:
.LBB801:
	.loc 1 5501 0
	ldr	r3, .L670
	add	ip, r4, r0
	mov	r1, r4
	ldr	lr, [r3]
.LBE801:
	.loc 1 5499 0
	mov	r0, #0
	.loc 1 5502 0
	ldr	r4, .L670+4
.LVL494:
	.loc 1 5500 0
	b	.L663
.LVL495:
.L667:
.LBB802:
	.loc 1 5501 0
	ldrb	r3, [r1], #1	@ zero_extendqisi2
.LVL496:
	add	r2, lr, r3
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	and	r2, r2, #3
	cmp	r2, #2
	subeq	r3, r3, #32
.LVL497:
.LBE802:
	sub	r3, r3, #33
.LVL498:
	cmp	r3, #94
	.loc 1 5502 0
	add	r3, r3, r3, asl #2
.LVL499:
	movhi	r3, #4
	ldrls	r3, [r4, r3, asl #2]
	.loc 1 5501 0
	add	r0, r0, r3
.LVL500:
.L663:
	.loc 1 5500 0 discriminator 2
	cmp	r1, ip
	bne	.L667
	.loc 1 5504 0
	ldmfd	sp!, {r4, pc}
.L671:
	.align	2
.L670:
	.word	__ctype_ptr__
	.word	hu_font
	.cfi_endproc
.LFE112:
	.size	M_StringWidth, .-M_StringWidth
	.global	__aeabi_idivmod
	.align	2
	.global	M_Responder
	.type	M_Responder, %function
M_Responder:
.LFB101:
	.loc 1 4121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL501:
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
	.loc 1 4135 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 4121 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 4135 0
	cmp	r3, #3
	.loc 1 4121 0
	mov	r5, r0
	.loc 1 4135 0
	beq	.L1172
.LVL502:
.L673:
	.loc 1 4188 0
	cmp	r3, #2
	beq	.L1173
.L686:
	.loc 1 4219 0
	cmp	r3, #0
	bne	.L690
	.loc 1 4221 0
	ldr	r4, [r5, #4]
.LVL503:
	.loc 1 4222 0
	cmp	r4, #182
	beq	.L1174
.L681:
	.loc 1 4230 0
	cmn	r4, #1
	beq	.L691
.LVL504:
.L692:
	.loc 1 4235 0
	ldr	r3, .L1247
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L694
	.loc 1 4236 0
	cmp	r4, #8
	beq	.L698
.LVL505:
.L695:
	.loc 1 4236 0 is_stmt 0 discriminator 1
	ldr	r2, .L1247+4
	ldr	r2, [r2]
	cmp	r4, r2
	beq	.L698
	.loc 1 4244 0 is_stmt 1
	ldr	r2, .L1247+8
	ldr	r2, [r2]
	cmp	r4, r2
	beq	.L1175
	.loc 1 4253 0
	cmp	r4, #10
	beq	.L701
	.loc 1 4253 0 is_stmt 0 discriminator 1
	ldr	r2, .L1247+12
	ldr	r2, [r2]
	cmp	r4, r2
	beq	.L701
.LVL506:
.LBB846:
	.loc 1 4265 0 is_stmt 1
	ldr	r3, .L1247+16
	ldr	r3, [r3]
	add	r3, r3, r4
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #2
	subeq	r7, r4, #32
	moveq	r4, r7
.LVL507:
	movne	r7, r4
.LVL508:
.LBE846:
	.loc 1 4266 0
	sub	r4, r4, #32
	cmp	r4, #95
	bhi	.L1159
	.loc 1 4267 0 discriminator 1
	ldr	r4, .L1247+20
	ldr	r6, [r4]
	.loc 1 4266 0 discriminator 1
	cmp	r6, #22
	bgt	.L1159
	.loc 1 4268 0
	ldr	r3, .L1247+24
	ldr	r8, .L1247+28
	ldr	r5, [r3]
.LVL509:
	add	r5, r5, r5, asl #1
	mov	r5, r5, asl #3
	add	r0, r8, r5
	bl	M_StringWidth
.LVL510:
	.loc 1 4267 0
	cmp	r0, #175
	bgt	.L1159
	.loc 1 4271 0
	mov	r2, #0
	.loc 1 4270 0
	add	r3, r6, #1
	add	r6, r5, r6
	.loc 1 4271 0
	add	r5, r5, r3
	.loc 1 4270 0
	strb	r7, [r8, r6]
	str	r3, [r4]
	.loc 1 4271 0
	strb	r2, [r8, r5]
	.loc 1 4274 0
	mov	r6, #1
	b	.L995
.LVL511:
.L690:
	.loc 1 4225 0
	cmp	r3, #1
	beq	.L1176
.LVL512:
.L691:
	.loc 1 4231 0
	mov	r6, #0
.LVL513:
.L995:
	.loc 1 5246 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL514:
.L694:
	.cfi_restore_state
	.loc 1 4279 0
	ldr	r3, .L1247+32
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L704
	.loc 1 4280 0
	ldr	r2, .L1247+36
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L1177
.L705:
	.loc 1 4285 0
	mov	r1, #0
	.loc 1 4286 0
	ldr	r2, .L1247+40
	.loc 1 4284 0
	ldr	r0, .L1247+44
	.loc 1 4286 0
	ldr	r2, [r2]
	.loc 1 4284 0
	ldr	r0, [r0]
	ldr	r8, .L1247+48
	.loc 1 4286 0
	cmp	r2, r1
	.loc 1 4284 0
	strb	r0, [r8]
	.loc 1 4285 0
	str	r1, [r3]
	.loc 1 4286 0
	beq	.L707
	.loc 1 4287 0
	mov	r0, r4
	blx	r2
.LVL515:
.L707:
	.loc 1 4289 0
	mov	r3, #0
	.loc 1 4291 0
	mov	r6, #1
	.loc 1 4290 0
	mov	r0, r3
	mov	r1, #24
	.loc 1 4289 0
	strb	r3, [r8]
	.loc 1 4290 0
	bl	S_StartSound
.LVL516:
	.loc 1 5246 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL517:
.L704:
	.cfi_restore_state
	.loc 1 4297 0
	ldr	r3, .L1247+52
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1178
.L708:
	.loc 1 4305 0
	ldr	r8, .L1247+48
	ldrb	r7, [r8]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L709
	.loc 1 4306 0
	ldr	r3, .L1247+56
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1179
	.loc 1 4312 0
	ldr	r3, .L1247+60
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1180
	.loc 1 4323 0
	ldr	r3, .L1247+64
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1181
	.loc 1 4331 0
	ldr	r3, .L1247+68
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1182
	.loc 1 4339 0
	ldr	r3, .L1247+72
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1183
	.loc 1 4348 0
	ldr	r3, .L1247+76
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1184
	.loc 1 4355 0
	ldr	r3, .L1247+80
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1185
	.loc 1 4362 0
	ldr	r3, .L1247+84
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1186
	.loc 1 4369 0
	ldr	r3, .L1247+88
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1187
	.loc 1 4376 0
	ldr	r3, .L1247+92
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1188
	.loc 1 4383 0
	ldr	r3, .L1247+96
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1189
	.loc 1 4399 0
	ldr	r3, .L1247+100
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1190
	.loc 1 4408 0
	ldr	r3, .L1247+104
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1191
	.loc 1 4417 0
	ldr	r3, .L1247+108
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1192
	.loc 1 4438 0
	ldr	r3, .L1247+112
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1193
	.loc 1 4449 0
	ldr	r3, .L1247+116
	ldr	r3, [r3]
	cmp	r4, r3
	bne	.L691
.LBB847:
.LBB848:
	bl	M_StartControlPanel.part.7
.LVL518:
.LBE848:
.LBE847:
	.loc 1 4452 0
	mov	r0, #0
	mov	r1, #23
	bl	S_StartSound
.LVL519:
	.loc 1 4453 0
	mov	r6, #1
	b	.L995
.L709:
	.loc 1 4461 0
	ldr	r7, .L1247+272
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1194
	.loc 1 5120 0
	ldr	r2, .L1247+264
	ldr	r2, [r2]
	cmp	r4, r2
	beq	.L1195
	.loc 1 5134 0
	ldr	r3, .L1247+268
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1138
	ldr	r3, .L1247+284
.LVL520:
.L878:
	.loc 1 5148 0
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1196
	.loc 1 5159 0
	ldr	r3, .L1247+288
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1197
	.loc 1 5170 0
	ldr	r3, .L1247+12
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1198
	.loc 1 5192 0
	ldr	r3, .L1247+8
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1199
	.loc 1 5200 0
	ldr	r3, .L1247+4
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1200
	.loc 1 5230 0
	ldr	r3, .L1247+240
	ldr	r5, .L1247+244
	ldr	lr, [r3]
	ldrsh	ip, [r5]
	ldrsh	r0, [lr]
	add	r3, ip, #1
.LVL521:
	cmp	r3, r0
	bge	.L897
	.loc 1 5231 0
	ldr	r2, [lr, #8]
	add	r1, r3, r3, asl #1
	mov	r1, r1, asl #3
	add	r7, r2, r1
	ldrb	r7, [r7, #16]	@ zero_extendqisi2
	cmp	r7, r4
	subne	r1, r1, #24
	addne	r2, r2, r1
	bne	.L900
	b	.L902
.L901:
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	add	r2, r2, #24
	cmp	r1, r4
	beq	.L902
.L900:
	.loc 1 5230 0 discriminator 2
	add	r3, r3, #1
.LVL522:
	cmp	r3, r0
	blt	.L901
.L897:
.LVL523:
	.loc 1 5237 0 discriminator 1
	cmp	ip, #0
	blt	.L995
	.loc 1 5238 0
	ldr	r2, [lr, #8]
	ldrb	r3, [r2, #16]	@ zero_extendqisi2
	cmp	r3, r4
	movne	r3, #0
	beq	.L1201
.LVL524:
.L904:
	.loc 1 5237 0 discriminator 2
	add	r3, r3, #1
.LVL525:
	cmp	ip, r3
	blt	.L995
	.loc 1 5238 0
	ldrb	r1, [r2, #40]	@ zero_extendqisi2
	add	r2, r2, #24
	cmp	r1, r4
	bne	.L904
.LVL526:
.L902:
	.loc 1 5241 0
	mov	r0, #0
	mov	r1, #19
	.loc 1 5240 0
	strh	r3, [r5]	@ movhi
	.loc 1 5242 0
	mov	r6, #1
	.loc 1 5241 0
	bl	S_StartSound
.LVL527:
	.loc 1 5242 0
	b	.L995
.LVL528:
.L1177:
	.loc 1 4281 0 discriminator 1
	cmp	r4, #32
	cmpne	r4, #110
	movne	r2, #1
	moveq	r2, #0
	cmp	r4, #121
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	beq	.L705
	ldr	r2, .L1247+116
	ldr	r2, [r2]
	cmp	r4, r2
	bne	.L691
	b	.L705
.L1190:
	.loc 1 4401 0
	ldr	r3, .L1247+120
	ldrb	r3, [r3]	@ zero_extendqisi2
	tst	r3, #1
	bne	.L691
	.loc 1 4401 0 is_stmt 0 discriminator 1
	ldr	r3, .L1247+124
	ldr	r4, [r3]
	cmp	r4, #0
	.loc 1 4403 0 is_stmt 1 discriminator 1
	moveq	r0, r4
	.loc 1 4401 0 discriminator 1
	bne	.L691
.L1158:
	.loc 1 4412 0
	bl	M_SizeDisplay
.LVL529:
	.loc 1 4413 0
	mov	r0, r4
	mov	r1, #22
	bl	S_StartSound
.LVL530:
.L1159:
	.loc 1 4414 0
	mov	r6, #1
.L1202:
	.loc 1 5246 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL531:
.L698:
	.cfi_restore_state
	.loc 1 4238 0
	ldr	r1, .L1247+20
	ldr	r3, [r1]
	cmp	r3, #0
	ble	.L1159
	.loc 1 4241 0
	mov	ip, #0
	ldr	r0, .L1247+24
	.loc 1 4240 0
	sub	r2, r3, #1
	.loc 1 4241 0
	ldr	r3, [r0]
	ldr	r0, .L1247+28
	add	r3, r3, r3, asl #1
	add	r3, r2, r3, asl #3
	.loc 1 4240 0
	str	r2, [r1]
	.loc 1 4241 0
	strb	ip, [r0, r3]
	.loc 1 4414 0
	mov	r6, #1
	b	.L1202
.LVL532:
.L1172:
	.loc 1 4135 0 discriminator 1
	ldr	r6, .L1247+128
	ldr	r7, .L1247+272
	ldr	r3, [r6]
	blx	r3
.LVL533:
	ldr	r3, [r7, #288]
	cmp	r0, r3
	bgt	.L674
	ldrb	r3, [r5]	@ zero_extendqisi2
	b	.L673
.L1173:
	.loc 1 4188 0 discriminator 1
	ldr	r6, .L1247+128
	ldr	r7, .L1247+272
	ldr	r3, [r6]
	blx	r3
.LVL534:
	ldr	r3, [r7, #292]
	cmp	r0, r3
	bgt	.L687
	ldrb	r3, [r5]	@ zero_extendqisi2
	b	.L686
.LVL535:
.L1174:
	.loc 1 4223 0
	mov	r2, #1
	ldr	r3, .L1247+272
	str	r2, [r3, #296]
	b	.L692
.LVL536:
.L1176:
	.loc 1 4226 0
	ldr	r3, [r5, #4]
	cmp	r3, #182
	.loc 1 4227 0
	moveq	r2, #0
	ldreq	r3, .L1247+272
	streq	r2, [r3, #296]
	b	.L691
.LVL537:
.L701:
	.loc 1 4255 0
	mov	r1, #0
	.loc 1 4256 0
	ldr	r0, .L1247+24
	ldr	r2, .L1247+28
	ldr	r0, [r0]
	.loc 1 4255 0
	str	r1, [r3]
	.loc 1 4256 0
	add	r3, r0, r0, asl #1
	ldrb	r3, [r2, r3, asl #3]	@ zero_extendqisi2
	cmp	r3, r1
	beq	.L1159
	.loc 1 4257 0
	bl	M_DoSave
.LVL538:
	.loc 1 4274 0
	mov	r6, #1
	b	.L995
.LVL539:
.L674:
	.loc 1 4136 0
	ldr	r3, [r5, #12]
	cmn	r3, #1
	.loc 1 4138 0
	ldreq	r2, .L1247+268
	.loc 1 4136 0
	beq	.L1142
	.loc 1 4141 0
	cmp	r3, #1
	.loc 1 4131 0
	mvnne	r4, #0
	.loc 1 4141 0
	beq	.L1203
.LVL540:
.L676:
	.loc 1 4147 0
	ldr	r3, [r5, #8]
	cmn	r3, #1
	beq	.L1204
	.loc 1 4152 0
	cmp	r3, #1
	beq	.L1205
.L678:
	.loc 1 4158 0
	ldr	r3, [r5, #4]
	tst	r3, #1
	bne	.L1206
.L679:
	.loc 1 4164 0
	tst	r3, #2
	bne	.L1207
.L680:
	.loc 1 4174 0
	ldr	r3, [r7]
	ldr	r8, .L1247+272
	cmp	r3, #0
	beq	.L681
	.loc 1 4174 0 is_stmt 0 discriminator 1
	ldr	r3, [r8, #4]
	cmp	r3, #0
	beq	.L681
	.loc 1 4175 0 is_stmt 1
	ldr	r3, [r5, #4]
	tst	r3, #4
	bne	.L1208
	.loc 1 4179 0
	tst	r3, #8
	beq	.L681
.LVL541:
.L685:
	.loc 1 4181 0
	ldr	r3, [r6]
	blx	r3
.LVL542:
	add	r0, r0, #5
	str	r0, [r7, #288]
	.loc 1 4180 0
	mov	r4, #0
	b	.L692
.LVL543:
.L687:
	.loc 1 4192 0
	ldr	r3, [r5, #4]
	tst	r3, #1
	.loc 1 4131 0
	mvneq	r4, #0
	.loc 1 4192 0
	bne	.L1209
.LVL544:
.L688:
	.loc 1 4198 0
	tst	r3, #2
	bne	.L1210
.L689:
	.loc 1 4208 0
	ldr	r3, [r7]
	ldr	r7, .L1247+272
	cmp	r3, #0
	beq	.L681
	.loc 1 4208 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L681
	.loc 1 4209 0 is_stmt 1
	ldr	r3, [r5, #4]
	tst	r3, #4
	beq	.L681
.LVL545:
	.loc 1 4212 0
	ldr	r3, [r6]
	blx	r3
.LVL546:
	add	r0, r0, #15
	str	r0, [r7, #292]
	.loc 1 4211 0
	mov	r4, #0
	b	.L692
.LVL547:
.L1178:
	.loc 1 4299 0
	bl	M_ScreenShot
.LVL548:
	b	.L708
.L1194:
.LBB849:
	.loc 1 4462 0
	ldr	r2, .L1247+132
	ldr	r3, [r7, #20]
	.loc 1 4469 0
	ldr	r10, [r7, #12]
	.loc 1 4462 0
	ldr	r1, [r2]
	add	r9, r3, r3, asl #3
	.loc 1 4469 0
	cmp	r10, #0
	.loc 1 4462 0
	add	r9, r1, r9, asl #2
.LVL549:
	.loc 1 4469 0
	beq	.L737
.LVL550:
.LBB850:
	.loc 1 4471 0
	ldr	r3, .L1247+16
	ldr	r3, [r3]
	add	r3, r3, r4
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #2
	beq	.L1211
.LBE850:
	cmp	r4, #89
	beq	.L907
.LVL551:
.L908:
	.loc 1 4476 0 discriminator 4
	cmp	r4, #78
	bne	.L1159
.LVL552:
.L1160:
	.loc 1 4477 0
	mov	r3, #0
	.loc 1 4478 0
	add	r0, r9, #4
	.loc 1 4477 0
	str	r3, [r7, #12]
	.loc 1 4480 0
	mov	r6, #1
	.loc 1 4478 0
	bl	M_SelectDone.isra.3
.LVL553:
	b	.L995
.LVL554:
.L1206:
.LBE849:
	.loc 1 4160 0
	ldr	r2, .L1247+12
	.loc 1 4161 0
	ldr	r3, [r6]
	.loc 1 4160 0
	ldr	r4, [r2]
.LVL555:
	.loc 1 4161 0
	blx	r3
.LVL556:
	add	r0, r0, #5
	ldr	r3, [r5, #4]
	str	r0, [r7, #288]
	b	.L679
.L1207:
	.loc 1 4166 0
	ldr	r2, .L1247+4
	.loc 1 4167 0
	ldr	r3, [r6]
	.loc 1 4166 0
	ldr	r4, [r2]
.LVL557:
	.loc 1 4167 0
	blx	r3
.LVL558:
	add	r0, r0, #5
	str	r0, [r7, #288]
	b	.L680
.LVL559:
.L1175:
	.loc 1 4246 0
	mov	ip, #0
	.loc 1 4247 0
	ldr	r2, .L1247+24
	ldr	r0, .L1247+28
	ldr	r2, [r2]
	ldr	r1, .L1247+136
	add	r2, r2, r2, asl #1
	add	r0, r0, r2, asl #3
	.loc 1 4246 0
	str	ip, [r3]
	.loc 1 4274 0
	mov	r6, #1
	.loc 1 4247 0
	bl	strcpy
.LVL560:
	b	.L995
.LVL561:
.L1210:
	.loc 1 4200 0
	ldr	r2, .L1247+4
	.loc 1 4201 0
	ldr	r3, [r6]
	.loc 1 4200 0
	ldr	r4, [r2]
.LVL562:
	.loc 1 4201 0
	blx	r3
.LVL563:
	add	r0, r0, #15
	str	r0, [r7, #292]
	b	.L689
.LVL564:
.L1209:
	.loc 1 4194 0
	ldr	r2, .L1247+12
	.loc 1 4195 0
	ldr	r3, [r6]
	.loc 1 4194 0
	ldr	r4, [r2]
.LVL565:
	.loc 1 4195 0
	blx	r3
.LVL566:
	add	r0, r0, #15
	str	r0, [r7, #292]
	ldr	r3, [r5, #4]
	b	.L688
.LVL567:
.L1181:
.LBB894:
.LBB895:
	bl	M_StartControlPanel.part.7
.LVL568:
.LBE895:
.LBE894:
	.loc 1 4326 0
	mov	r0, r7
	mov	r1, #23
	bl	S_StartSound
.LVL569:
	.loc 1 4327 0
	mov	r0, r7
	bl	M_SaveGame
.LVL570:
	.loc 1 4328 0
	mov	r6, #1
	b	.L995
.L1179:
	.loc 1 4308 0
	ldr	r2, .L1247+140
	.loc 1 4309 0
	mov	r6, #1
	.loc 1 4308 0
	ldr	r3, [r2]
	clz	r3, r3
	mov	r3, r3, lsr #5
	str	r3, [r2]
	.loc 1 4309 0
	b	.L995
.LVL571:
.L1203:
	.loc 1 4143 0
	ldr	r2, .L1247+264
.L1142:
	.loc 1 4144 0
	ldr	r3, [r6]
	.loc 1 4143 0
	ldr	r4, [r2]
.LVL572:
	.loc 1 4144 0
	blx	r3
.LVL573:
	add	r0, r0, #5
	str	r0, [r7, #288]
	b	.L676
.LVL574:
.L737:
.LBB896:
	.loc 1 4485 0
	ldr	r0, [r7, #8]
	cmp	r0, #0
	bne	.L1212
.LVL575:
.L848:
	.loc 1 4938 0
	ldr	r0, .L1247+264
	ldr	r0, [r0]
	cmp	r4, r0
	beq	.L1213
	.loc 1 4957 0
	ldr	r0, .L1247+268
	ldr	r0, [r0]
	cmp	r4, r0
	beq	.L1214
	.loc 1 4973 0
	ldr	r3, .L1247+12
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1215
	.loc 1 5035 0
	ldr	r3, .L1247+8
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L870
	.loc 1 5035 0 is_stmt 0 discriminator 1
	ldr	r3, .L1247+4
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1216
	.loc 1 5071 0 is_stmt 1
	ldr	r3, .L1247+284
	ldr	r1, [r3]
	cmp	r4, r1
	beq	.L1217
.LVL576:
.L874:
	.loc 1 5093 0
	ldr	r1, .L1247+288
	ldr	r1, [r1]
	cmp	r4, r1
	bne	.L878
	.loc 1 4462 0
	mov	r1, r9
	b	.L881
.LVL577:
.L879:
	.loc 1 5112 0
	tst	r0, #32768
	bne	.L878
.LVL578:
.L881:
	.loc 1 5098 0
	add	r1, r1, #36
.LVL579:
	.loc 1 5099 0
	ldr	r0, [r1, #4]
	tst	r0, #512
	beq	.L879
	.loc 1 5104 0
	mov	r3, #0
	.loc 1 5102 0
	ldr	lr, .L1247+252
	.loc 1 5101 0
	ldr	r0, [r9, #4]
	.loc 1 5102 0
	ldr	ip, [lr]
	.loc 1 5103 0
	ldr	r1, [r1, #16]
.LVL580:
	.loc 1 5105 0
	ldr	r4, .L1247+324
	.loc 1 5102 0
	add	ip, ip, #1
	.loc 1 5101 0
	bic	r0, r0, #1
	.loc 1 5103 0
	str	r1, [r2]
	.loc 1 5102 0
	str	ip, [lr]
	mov	r2, r1
	.loc 1 5101 0
	str	r0, [r9, #4]
	.loc 1 5104 0
	str	r3, [r7, #20]
	.loc 1 5105 0
	str	r3, [r4]
	.loc 1 5106 0
	b	.L880
.L923:
	mov	r3, lr
.L880:
	.loc 1 5106 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #4]
	mov	ip, r2
	ands	r0, r1, #8192
	add	r2, r2, #36
	add	lr, r3, #1
	bne	.L923
.L1161:
	.loc 1 5107 0 is_stmt 1
	orr	r1, r1, #1
	str	r1, [ip, #4]
	.loc 1 5108 0
	mov	r1, #19
	.loc 1 5107 0
	str	r3, [r7, #20]
	.loc 1 5109 0
	mov	r6, #1
	.loc 1 5108 0
	bl	S_StartSound
.LVL581:
	.loc 1 5109 0
	b	.L995
.LVL582:
.L1204:
.LBE896:
	.loc 1 4149 0
	ldr	r3, .L1247+284
	.loc 1 4150 0
	ldr	r2, [r6]
	.loc 1 4149 0
	ldr	r4, [r3]
.LVL583:
	.loc 1 4150 0
	blx	r2
.LVL584:
	add	r0, r0, #2
	str	r0, [r7, #288]
	b	.L678
.LVL585:
.L1180:
.LBB897:
.LBB898:
	bl	M_StartControlPanel.part.7
.LVL586:
.LBE898:
.LBE897:
	.loc 1 4316 0
	ldr	r2, .L1247+240
	ldr	ip, .L1247+144
.L1157:
	.loc 1 4343 0
	ldr	r3, .L1247+244
	.loc 1 4344 0
	mov	r0, r7
	mov	r1, #23
	.loc 1 4342 0
	str	ip, [r2]
	.loc 1 4343 0
	strh	r7, [r3]	@ movhi
	.loc 1 4345 0
	mov	r6, #1
	.loc 1 4344 0
	bl	S_StartSound
.LVL587:
	.loc 1 4345 0
	b	.L995
.LVL588:
.L1205:
	.loc 1 4154 0
	ldr	r2, .L1247+288
	.loc 1 4155 0
	ldr	r3, [r6]
	.loc 1 4154 0
	ldr	r4, [r2]
.LVL589:
	.loc 1 4155 0
	blx	r3
.LVL590:
	add	r0, r0, #2
	str	r0, [r7, #288]
	b	.L678
.LVL591:
.L1195:
	ldr	r5, .L1247+244
.LVL592:
	ldr	r4, .L1247+240
	.loc 1 5125 0
	mov	r6, r3
	ldrh	r3, [r5]
	ldr	r0, [r4]
	sxth	r2, r3
.L885:
	.loc 1 5124 0
	ldrsh	r1, [r0]
	.loc 1 5127 0
	add	r3, r3, #1
	.loc 1 5124 0
	sub	r1, r1, #1
	cmp	r2, r1
	.loc 1 5128 0
	mov	r0, #0
	mov	r1, #19
	.loc 1 5127 0
	strlth	r3, [r5]	@ movhi
	.loc 1 5125 0
	strgeh	r6, [r5]	@ movhi
	.loc 1 5128 0
	bl	S_StartSound
.LVL593:
	.loc 1 5130 0
	ldrh	r3, [r5]
	ldr	r0, [r4]
	sxth	r2, r3
	add	r1, r2, r2, asl #1
	ldr	ip, [r0, #8]
	mov	r1, r1, asl #3
	ldrsh	r1, [ip, r1]
	cmn	r1, #1
	beq	.L885
	b	.L1159
.LVL594:
.L1212:
.LBB899:
	.loc 1 4486 0
	ldr	ip, .L1247+8
	ldr	r0, [ip]
	cmp	r4, r0
	beq	.L1218
	.loc 1 4493 0
	ldr	r0, [r9, #4]
	tst	r0, #8
	beq	.L758
	.loc 1 4495 0
	ldr	r3, .L1247+12
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1219
.LVL595:
.L849:
	.loc 1 4931 0
	add	r0, r9, #4
	bl	M_SelectDone.isra.3
.LVL596:
	.loc 1 4932 0
	mov	r6, #1
	b	.L995
.LVL597:
.L1138:
	ldr	r5, .L1247+244
.LVL598:
	ldr	r4, .L1247+240
	ldrh	r2, [r5]
.L888:
.LBE899:
	.loc 1 5138 0
	cmp	r2, #0
	.loc 1 5139 0
	ldreq	r3, [r4]
	.loc 1 5141 0
	subne	r2, r2, #1
	.loc 1 5139 0
	ldreqh	r3, [r3]
	.loc 1 5142 0
	mov	r1, #19
	.loc 1 5139 0
	subeq	r3, r3, #1
	.loc 1 5142 0
	mov	r0, #0
	.loc 1 5139 0
	streqh	r3, [r5]	@ movhi
	.loc 1 5141 0
	strneh	r2, [r5]	@ movhi
	.loc 1 5142 0
	bl	S_StartSound
.LVL599:
	.loc 1 5144 0
	ldrh	r2, [r5]
	ldr	r1, [r4]
	sxth	r3, r2
	add	r3, r3, r3, asl #1
	ldr	r1, [r1, #8]
	mov	r3, r3, asl #3
	ldrsh	r3, [r1, r3]
	cmn	r3, #1
	beq	.L888
	b	.L1159
.LVL600:
.L1186:
.LBB900:
.LBB901:
	.loc 1 1389 0
	mov	r0, #284
	.loc 1 1393 0
	mov	r6, #1
	.loc 1 1386 0
	ldr	r2, .L1247+148
	ldr	r3, [r2]
	rsb	r3, r3, #1
	str	r3, [r2]
	.loc 1 1389 0
	ldr	r2, .L1247+152
	.loc 1 1388 0
	cmp	r3, #0
	.loc 1 1389 0
	ldr	r2, [r2]
	ldr	r3, .L1247+156
	ldreq	r1, .L1247+160
	.loc 1 1391 0
	mla	r3, r0, r2, r3
	ldrne	r1, .L1247+164
.LBE901:
.LBE900:
	.loc 1 4365 0
	mov	r0, #0
.LBB904:
.LBB902:
	.loc 1 1391 0
	ldr	r2, [r1]
.LBE902:
.LBE904:
	.loc 1 4365 0
	mov	r1, #23
.LBB905:
.LBB903:
	.loc 1 1391 0
	str	r2, [r3, #220]
	.loc 1 1393 0
	ldr	r3, .L1247+168
	str	r6, [r3]
.LBE903:
.LBE905:
	.loc 1 4365 0
	bl	S_StartSound
.LVL601:
	.loc 1 4366 0
	b	.L995
.LVL602:
.L1208:
	.loc 1 4177 0
	ldr	r3, [r6]
	blx	r3
.LVL603:
	.loc 1 4179 0
	ldr	r3, [r5, #4]
	.loc 1 4177 0
	add	r0, r0, #5
	.loc 1 4179 0
	ands	r2, r3, #8
	.loc 1 4177 0
	str	r0, [r8, #288]
	.loc 1 4179 0
	bne	.L685
	.loc 1 4235 0
	ldr	r3, .L1247
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L694
	.loc 1 4176 0
	mov	r4, r2
	b	.L695
.LVL604:
.L1182:
.LBB906:
.LBB907:
	bl	M_StartControlPanel.part.7
.LVL605:
.LBE907:
.LBE906:
	.loc 1 4334 0
	mov	r0, r7
	mov	r1, #23
	bl	S_StartSound
.LVL606:
	.loc 1 4335 0
	mov	r0, r7
	bl	M_LoadGame
.LVL607:
	.loc 1 4336 0
	mov	r6, #1
	b	.L995
.LVL608:
.L1196:
	.loc 1 5150 0
	ldr	r4, .L1247+244
	ldr	r5, .L1247+240
	ldrsh	r3, [r4]
	ldr	r2, [r5]
	add	r3, r3, r3, asl #1
	ldr	r2, [r2, #8]
	mov	r3, r3, asl #3
	add	r1, r2, r3
	ldr	r1, [r1, #12]
	cmp	r1, #0
	beq	.L1159
	.loc 1 5150 0 is_stmt 0 discriminator 1
	ldrsh	r3, [r2, r3]
	cmp	r3, #2
	bne	.L1159
	.loc 1 5153 0 is_stmt 1
	mov	r0, #0
	mov	r1, #22
	bl	S_StartSound
.LVL609:
	.loc 1 5154 0
	ldr	r2, [r5]
	ldrsh	r3, [r4]
	ldr	r2, [r2, #8]
	add	r3, r3, r3, asl #1
	add	r3, r2, r3, asl #3
	ldr	r3, [r3, #12]
	mov	r0, #0
	blx	r3
.LVL610:
	.loc 1 5156 0
	mov	r6, #1
	b	.L995
.LVL611:
.L1211:
.LBB908:
	.loc 1 4471 0 discriminator 1
	cmp	r4, #121
.LBB851:
	.loc 1 4476 0 discriminator 1
	subne	r4, r4, #32
.LVL612:
.LBE851:
	.loc 1 4471 0 discriminator 1
	bne	.L908
.L907:
.LVL613:
.LBB852:
.LBB853:
	.loc 1 3606 0
	ldr	r10, .L1247+172
	ldr	r3, [r10]
	cmp	r3, #0
	ble	.L1160
	mov	r6, #0
	ldr	r5, .L1247+176
.LVL614:
	ldr	fp, .L1247+180
.LBB854:
	.loc 1 3613 0
	ldr	r8, .L1247+184
	b	.L754
.LVL615:
.L749:
.LBE854:
	.loc 1 3606 0
	ldr	r3, [r10]
	add	r6, r6, #1
.LVL616:
	cmp	r6, r3
	add	r5, r5, #44
	bge	.L1160
.LVL617:
.L754:
	.loc 1 3610 0
	ldr	r3, [r5, #32]
	ldr	r2, [fp]
	cmp	r3, r2
	bne	.L749
.LBB856:
	.loc 1 3613 0
	add	r3, r8, r3, asl #2
	ldr	r1, [r3, #8]
.LVL618:
	ldr	r4, [r1]
	cmp	r4, #0
	bne	.L1144
	b	.L749
.LVL619:
.L1221:
	.loc 1 3615 0
	ldr	r3, [r4, #16]
	rsb	r3, r5, r3
	clz	r3, r3
	mov	r3, r3, lsr #5
.L744:
	cmp	r3, #0
	bne	.L1054
	.loc 1 3614 0
	add	r4, r4, #36
.LVL620:
.L1144:
	ldr	r2, [r4, #4]
	tst	r2, #32768
	bne	.L1220
	.loc 1 3615 0
	ldr	r3, .L1247+188
	and	r3, r3, r2
	cmp	r3, #0
	bne	.L1221
	.loc 1 3616 0
	ldr	r3, [r5, #4]
	.loc 1 3617 0
	ldr	r2, [r4, #16]
	cmp	r2, r3
	beq	.L1054
	.loc 1 3616 0
	ldr	r2, [r4, #20]
	cmp	r3, r2
	beq	.L1054
	.loc 1 3617 0
	ldr	r2, [r4, #24]
	rsb	r3, r2, r3
	clz	r3, r3
	mov	r3, r3, lsr #5
	b	.L744
.LVL621:
.L1183:
.LBE856:
.LBE853:
.LBE852:
.LBE908:
.LBB909:
.LBB910:
	bl	M_StartControlPanel.part.7
.LVL622:
.LBE910:
.LBE909:
	.loc 1 4342 0
	ldr	r2, .L1247+240
	ldr	ip, .L1247+192
	b	.L1157
.LVL623:
.L1220:
.LBB911:
.LBB861:
.LBB859:
.LBB857:
	.loc 1 3613 0
	ldr	r4, [r1, #4]!
.LVL624:
	cmp	r4, #0
	bne	.L1144
	b	.L749
.LVL625:
.L1054:
	.loc 1 3620 0
	ldrb	r1, [r5, #28]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L1222
	.loc 1 3629 0
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #12]
	str	r2, [r3]
.L748:
	.loc 1 3641 0
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L749
	.loc 1 3642 0
	blx	r3
.LVL626:
	b	.L749
.LVL627:
.L1189:
.LBE857:
.LBE859:
.LBE861:
.LBE911:
	.loc 1 4385 0
	ldr	r2, .L1247+196
	ldr	r3, [r2]
	add	r3, r3, #1
	.loc 1 4386 0
	cmp	r3, #4
	.loc 1 4385 0
	str	r3, [r2]
	.loc 1 4386 0
	ble	.L723
	.loc 1 4387 0
	mov	r1, #0
	.loc 1 4388 0
	ldr	r3, .L1247+152
	.loc 1 4387 0
	str	r1, [r2]
	.loc 1 4388 0
	ldr	r2, [r3]
.L724:
	.loc 1 4389 0 discriminator 1
	ldr	r3, .L1247+200
	ldr	r1, [r3]
.L728:
	.loc 1 4388 0
	mov	ip, #284
	ldr	r3, .L1247+156
	.loc 1 4394 0
	mov	r0, #0
	.loc 1 4388 0
	mla	r3, ip, r2, r3
	str	r1, [r3, #220]
	.loc 1 4395 0
	mov	r6, #1
	.loc 1 4394 0
	bl	V_SetPalette
.LVL628:
	.loc 1 4395 0
	b	.L995
.LVL629:
.L758:
.LBB912:
	.loc 1 4518 0
	tst	r0, #16
	beq	.L764
	.loc 1 4520 0
	ldr	r3, .L1247+12
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L805
	.loc 1 4522 0
	sub	r4, r4, #48
.LVL630:
	.loc 1 4523 0
	cmp	r4, #9
	bhi	.L1159
	.loc 1 4525 0
	ldr	r3, [r9, #16]
	ldr	r3, [r3, #4]
	str	r4, [r3]
.LVL631:
.L805:
	.loc 1 4663 0
	ldr	r3, [r9, #28]
	cmp	r3, #0
	beq	.L849
	.loc 1 4664 0
	blx	r3
.LVL632:
	b	.L849
.LVL633:
.L1197:
.LBE912:
	.loc 1 5161 0
	ldr	r4, .L1247+244
	ldr	r5, .L1247+240
	ldrsh	r3, [r4]
	ldr	r2, [r5]
	add	r3, r3, r3, asl #1
	ldr	r2, [r2, #8]
	mov	r3, r3, asl #3
	add	r1, r2, r3
	ldr	r1, [r1, #12]
	cmp	r1, #0
	beq	.L1159
	.loc 1 5161 0 is_stmt 0 discriminator 1
	ldrsh	r3, [r2, r3]
	cmp	r3, #2
	bne	.L1159
	.loc 1 5164 0 is_stmt 1
	mov	r0, #0
	mov	r1, #22
	bl	S_StartSound
.LVL634:
	.loc 1 5165 0
	ldr	r2, [r5]
	ldrsh	r3, [r4]
	ldr	r2, [r2, #8]
	add	r3, r3, r3, asl #1
	add	r3, r2, r3, asl #3
	ldr	r3, [r3, #12]
	mov	r0, #1
	blx	r3
.LVL635:
	.loc 1 5167 0
	mov	r6, #1
	b	.L995
.LVL636:
.L1184:
	.loc 1 4350 0
	mov	r0, r7
	mov	r1, #23
	bl	S_StartSound
.LVL637:
	.loc 1 4352 0
	mov	r6, #1
	.loc 1 4351 0
	bl	M_QuickSave
.LVL638:
	.loc 1 4352 0
	b	.L995
.LVL639:
.L1198:
	.loc 1 5172 0
	ldr	r2, .L1247+244
	ldr	r3, .L1247+240
	ldrh	ip, [r2]
	ldr	r1, [r3]
	sxth	r0, ip
	add	r3, r0, r0, asl #1
	ldr	lr, [r1, #8]
	mov	r3, r3, asl #3
	add	r2, lr, r3
	ldr	r2, [r2, #12]
	cmp	r2, #0
	beq	.L1159
	.loc 1 5173 0 discriminator 1
	ldrh	r3, [lr, r3]
	.loc 1 5172 0 discriminator 1
	cmp	r3, #0
	beq	.L1159
	.loc 1 5176 0
	cmp	r3, #2
	.loc 1 5175 0
	strh	ip, [r1, #20]	@ movhi
	.loc 1 5176 0
	beq	.L1223
	.loc 1 5183 0
	blx	r2
.LVL640:
	.loc 1 5184 0
	mov	r0, #0
	mov	r1, #1
	bl	S_StartSound
.LVL641:
	.loc 1 5189 0
	mov	r6, #1
	b	.L995
.LVL642:
.L1185:
	.loc 1 4357 0
	mov	r0, r7
	mov	r1, #23
	bl	S_StartSound
.LVL643:
	.loc 1 4358 0
	mov	r0, r7
	bl	M_EndGame
.LVL644:
	.loc 1 4359 0
	mov	r6, #1
	b	.L995
.L723:
	.loc 1 4388 0
	ldr	r2, .L1247+152
	.loc 1 4389 0
	cmp	r3, #0
	.loc 1 4388 0
	ldr	r2, [r2]
	.loc 1 4389 0
	beq	.L724
	.loc 1 4390 0
	cmp	r3, #1
	beq	.L725
	.loc 1 4391 0
	cmp	r3, #2
	beq	.L726
	.loc 1 4392 0
	cmp	r3, #3
	ldreq	r3, .L1247+204
	ldrne	r3, .L1247+208
	ldr	r1, [r3]
	b	.L728
.L1191:
	.loc 1 4410 0
	ldr	r3, .L1247+120
	ldrb	r3, [r3]	@ zero_extendqisi2
	tst	r3, #1
	bne	.L691
	.loc 1 4410 0 is_stmt 0 discriminator 1
	ldr	r3, .L1247+124
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L691
	.loc 1 4412 0 is_stmt 1
	mov	r0, #1
	b	.L1158
.LVL645:
.L764:
.LBB913:
	.loc 1 4533 0
	tst	r0, #4096
	beq	.L767
	.loc 1 4535 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1159
	.loc 1 4541 0
	ldr	r3, .L1247+12
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1224
	.loc 1 4574 0
	ldr	r3, .L1247+4
	ldr	r1, .L1247+256
	ldr	r3, [r3]
	cmp	r4, r3
	ldr	r3, [r1]
	beq	.L1225
	.loc 1 4579 0
	cmp	r3, #4
	bgt	.L1159
.L777:
	.loc 1 4582 0
	ldr	r2, .L1247+16
	ldr	r2, [r2]
	add	r2, r2, r4
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	mov	r2, r2, lsr #2
	eor	r2, r2, #1
	cmp	r4, #45
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L1159
	.loc 1 4586 0
	ldr	r0, .L1247+308
	add	r2, r3, #1
	strb	r4, [r0, r3]
	str	r2, [r1]
	.loc 1 4588 0
	mov	r6, #1
	b	.L995
.LVL646:
.L1200:
.LBE913:
	.loc 1 5202 0
	ldr	r0, .L1247+240
	ldr	r5, .L1247+244
	ldr	r2, [r0]
	ldrh	r1, [r5]
	.loc 1 5210 0
	ldr	r3, [r2, #4]
	.loc 1 5202 0
	strh	r1, [r2, #20]	@ movhi
	.loc 1 5210 0
	cmp	r3, #0
	beq	.L1159
	.loc 1 5212 0
	ldr	r1, .L1247+212
	cmp	r2, r1
	.loc 1 5221 0
	strne	r3, [r0]
	.loc 1 5212 0
	beq	.L1226
.L896:
	.loc 1 5222 0
	ldrh	r3, [r3, #20]
	.loc 1 5223 0
	mov	r0, #0
	mov	r1, #23
	.loc 1 5222 0
	strh	r3, [r5]	@ movhi
	.loc 1 5225 0
	mov	r6, #1
	.loc 1 5223 0
	bl	S_StartSound
.LVL647:
	b	.L995
.LVL648:
.L1187:
	.loc 1 4371 0
	mov	r0, #0
	mov	r1, #23
	bl	S_StartSound
.LVL649:
	.loc 1 4373 0
	mov	r6, #1
	.loc 1 4372 0
	bl	M_QuickLoad
.LVL650:
	.loc 1 4373 0
	b	.L995
.L1188:
	.loc 1 4378 0
	mov	r0, #0
	mov	r1, #23
	bl	S_StartSound
.LVL651:
	.loc 1 4379 0
	mov	r0, #0
	bl	M_QuitDOOM
.LVL652:
	.loc 1 4380 0
	mov	r6, #1
	b	.L995
.LVL653:
.L1219:
.LBB914:
	.loc 1 4496 0
	ldr	r3, [r9, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r2]
	clz	r3, r3
	mov	r3, r3, lsr #5
	str	r3, [r2]
	.loc 1 4505 0
	ldr	r3, [r9, #4]
	ands	r3, r3, #196608
	beq	.L804
.LVL654:
.L1167:
	.loc 1 4658 0
	mov	r0, #2
	ldr	r1, .L1247+324
	ldr	r2, .L1247+328
	str	r0, [r1]
	str	r3, [r2]
	b	.L805
.LVL655:
.L1192:
.LBE914:
	.loc 1 4419 0
	ldr	r3, .L1247+120
	ldrb	r3, [r3]	@ zero_extendqisi2
	tst	r3, #1
	bne	.L691
	.loc 1 4419 0 is_stmt 0 discriminator 1
	ldr	r3, .L1247+124
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L691
	.loc 1 4421 0 is_stmt 1
	ldr	r4, .L1247+216
	ldr	r3, [r4]
	cmp	r3, #7
	ldrle	r5, .L1247+220
.LVL656:
	ble	.L732
	.loc 1 4426 0
	mov	r6, #1
	.loc 1 4427 0
	ldr	r4, .L1247+224
	.loc 1 4426 0
	ldr	r3, .L1247+220
	.loc 1 4427 0
	ldr	r0, [r4]
	mov	r1, #3
	add	r0, r0, r6
	.loc 1 4426 0
	str	r6, [r3]
	.loc 1 4427 0
	bl	__aeabi_idivmod
.LVL657:
	.loc 1 4428 0
	cmp	r1, #0
	.loc 1 4427 0
	str	r1, [r4]
	.loc 1 4428 0
	bne	.L1159
	.loc 1 4430 0
	ldr	r2, .L1247+228
	ldr	r3, [r2]
	clz	r3, r3
	mov	r3, r3, lsr #5
	str	r3, [r2]
	.loc 1 4431 0
	bl	HU_MoveHud
.LVL658:
	b	.L995
.L734:
	.loc 1 4423 0
	mov	r0, #1
	bl	M_SizeDisplay
.LVL659:
.L732:
	.loc 1 4422 0
	ldr	r3, [r4]
	cmp	r3, #7
	ble	.L734
	.loc 1 4422 0 is_stmt 0 discriminator 1
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L734
	b	.L1159
.L1248:
	.align	2
.L1247:
	.word	saveStringEnter
	.word	key_menu_backspace
	.word	key_menu_escape
	.word	key_menu_enter
	.word	__ctype_ptr__
	.word	saveCharIndex
	.word	saveSlot
	.word	savegamestrings
	.word	messageToPrint
	.word	messageNeedsInput
	.word	messageRoutine
	.word	messageLastMenuActive
	.word	menuactive
	.word	key_screenshot
	.word	key_autorun
	.word	key_help
	.word	key_savegame
	.word	key_loadgame
	.word	key_soundvolume
	.word	key_quicksave
	.word	key_endgame
	.word	key_messages
	.word	key_quickload
	.word	key_quit
	.word	key_gamma
	.word	key_zoomout
	.word	key_zoomin
	.word	key_hud
	.word	key_setup
	.word	key_escape
	.word	automapmode
	.word	chat_on
	.word	I_GetTime
	.word	current_setup_menu
	.word	saveOldString
	.word	autorun
	.word	.LANCHOR0+3508
	.word	showMessages
	.word	consoleplayer
	.word	players
	.word	s_MSGOFF
	.word	s_MSGON
	.word	message_dontfuckwithme
	.word	numdefaults
	.word	defaults
	.word	setup_screen
	.word	.LANCHOR2
	.word	8919160
	.word	.LANCHOR0+96
	.word	usegamma
	.word	s_GAMMALVL0
	.word	s_GAMMALVL3
	.word	s_GAMMALVL4
	.word	.LANCHOR0+488
	.word	screenSize
	.word	hud_displayed
	.word	hud_active
	.word	hud_distributed
	.word	s_GAMMALVL1
	.word	s_GAMMALVL2
	.word	currentMenu
	.word	itemOn
	.word	extended_help_index
	.word	mult_screens_index
	.word	gather_count
	.word	.LANCHOR0
	.word	key_menu_down
	.word	key_menu_up
	.word	.LANCHOR1
	.word	524352
	.word	key_menu_backspace
	.word	key_menu_left
	.word	key_menu_right
	.word	key_menu_enter
	.word	shiftxform
	.word	chat_string_buffer
	.word	chat_index
	.word	gather_buffer
	.word	-123456789
	.word	color_palette_y
	.word	color_palette_x
	.word	print_warning_about_changes
	.word	warning_about_changes
.LVL660:
.L767:
.LBB915:
	.loc 1 4591 0 is_stmt 1
	tst	r0, #8388608
	bne	.L1227
	.loc 1 4675 0
	ldr	lr, [r7, #4]
	cmp	lr, #0
	beq	.L807
	.loc 1 4677 0
	ldrb	lr, [r5]	@ zero_extendqisi2
	cmp	lr, #3
	beq	.L1228
	.loc 1 4716 0
	cmp	lr, #2
	beq	.L1229
.LVL661:
.LBB862:
	.loc 1 4772 0
	ldr	lr, .L1247+260
	.loc 1 4770 0
	ldr	r5, [r9, #16]
.LVL662:
	.loc 1 4772 0
	ldr	r3, [lr, #192]
	.loc 1 4770 0
	ldr	r6, [r5]
.LVL663:
	.loc 1 4772 0
	cmp	r3, #0
	.loc 1 4771 0
	ldrb	r0, [r9, #8]	@ zero_extendqisi2
.LVL664:
	.loc 1 4772 0
	beq	.L825
	add	lr, lr, #192
	b	.L1150
.LVL665:
.L828:
	.loc 1 4774 0
	tst	r2, #17408
	beq	.L827
	.loc 1 4774 0 is_stmt 0 discriminator 1
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	.loc 1 4775 0 is_stmt 1 discriminator 1
	cmp	r3, r9
	rsb	r1, r0, r1
	clz	r1, r1
	mov	r1, r1, lsr #5
	moveq	r1, #0
	cmp	r1, #0
	beq	.L827
	.loc 1 4777 0
	ldr	r1, [r3, #16]
	ldr	ip, [r1]
	cmp	ip, r4
	beq	.L1230
.L827:
	.loc 1 4773 0 discriminator 2
	add	r3, r3, #36
.LVL666:
.L1150:
	ldr	r2, [r3, #4]
	tst	r2, #32768
	beq	.L828
	.loc 1 4772 0 discriminator 2
	ldr	r3, [lr, #4]!
.LVL667:
	cmp	r3, #0
	bne	.L1150
.LVL668:
.L825:
	.loc 1 4785 0
	str	r4, [r5]
	b	.L849
.LVL669:
.L1230:
	.loc 1 4779 0
	tst	r2, #16384
	bne	.L1159
	.loc 1 4781 0
	str	r6, [r1]
.LVL670:
	ldr	r5, [r9, #16]
	b	.L825
.LVL671:
.L1213:
.LBE862:
	.loc 1 4940 0
	ldr	r3, [r9, #4]
	ldr	r2, [r7, #20]
	bic	r3, r3, #1
	str	r3, [r9, #4]
.L860:
	.loc 1 4942 0
	tst	r3, #32768
	.loc 1 4945 0
	movne	r9, r1
.LVL672:
	.loc 1 4950 0
	addeq	r9, r9, #36
.LVL673:
	.loc 1 4952 0
	ldr	r3, [r9, #4]
	.loc 1 4949 0
	addeq	r2, r2, #1
	.loc 1 4944 0
	movne	r2, #0
	.loc 1 4952 0
	tst	r3, #8192
	bne	.L860
	.loc 1 4953 0
	add	r0, r9, #4
	str	r2, [r7, #20]
	.loc 1 4954 0
	mov	r6, #1
	.loc 1 4953 0
	bl	M_SelectDone.isra.3
.LVL674:
	.loc 1 4954 0
	b	.L995
.LVL675:
.L1218:
	.loc 1 4488 0
	add	r0, r9, #4
	bl	M_SelectDone.isra.3
.LVL676:
	.loc 1 4490 0
	mov	r6, #1
	.loc 1 4489 0
	str	r10, [r7, #16]
	.loc 1 4490 0
	b	.L995
.LVL677:
.L1214:
	.loc 1 4959 0
	ldr	r2, [r9, #4]
	bic	r2, r2, #1
	str	r2, [r9, #4]
.L864:
	.loc 1 4962 0
	cmp	r3, #0
	bne	.L862
	mov	r2, r1
.L863:
	.loc 1 4965 0 discriminator 1
	ldr	r0, [r2, #40]
	.loc 1 4964 0 discriminator 1
	add	r3, r3, #1
	.loc 1 4965 0 discriminator 1
	tst	r0, #32768
	add	r2, r2, #36
	beq	.L863
.L862:
	.loc 1 4966 0
	sub	r3, r3, #1
	.loc 1 4968 0
	add	r0, r3, r3, asl #3
	add	r0, r1, r0, asl #2
	ldr	r2, [r0, #4]
	tst	r2, #8192
	bne	.L864
	.loc 1 4969 0
	add	r0, r0, #4
	str	r3, [r7, #20]
	.loc 1 4970 0
	mov	r6, #1
	.loc 1 4969 0
	bl	M_SelectDone.isra.3
.LVL678:
	.loc 1 4970 0
	b	.L995
.LVL679:
.L1199:
.LBE915:
.LBB916:
.LBB917:
	.loc 1 5372 0
	mov	r3, #0
.LBE917:
.LBE916:
	.loc 1 5194 0
	ldr	r2, .L1247+244
	ldr	r1, .L1247+240
	ldrh	r0, [r2]
	ldr	r1, [r1]
.LBB920:
.LBB918:
	.loc 1 5373 0
	ldr	r2, .L1247+324
.LBE918:
.LBE920:
	.loc 1 5194 0
	strh	r0, [r1, #20]	@ movhi
	.loc 1 5196 0
	mov	r0, r3
	mov	r1, #24
.LBB921:
.LBB919:
	.loc 1 5372 0
	strb	r3, [r8]
	.loc 1 5374 0
	str	r3, [r7, #12]
	.loc 1 5373 0
	str	r3, [r2]
.LBE919:
.LBE921:
	.loc 1 5197 0
	mov	r6, #1
	.loc 1 5196 0
	bl	S_StartSound
.LVL680:
	.loc 1 5197 0
	b	.L995
.LVL681:
.L1228:
.LBB922:
.LBB863:
	.loc 1 4682 0
	ldr	r6, [r9, #24]
	cmp	r6, #0
	beq	.L1159
	.loc 1 4694 0
	ldr	r3, [r5, #4]
	.loc 1 4693 0
	ldrb	ip, [r9, #8]	@ zero_extendqisi2
	.loc 1 4694 0
	tst	r3, #1
	.loc 1 4692 0
	ldr	r5, [r6]
.LVL682:
	.loc 1 4694 0
	bne	.L916
	.loc 1 4696 0
	tst	r3, #2
	bne	.L917
	.loc 1 4698 0
	tst	r3, #4
	bne	.L918
	.loc 1 4700 0
	tst	r3, #8
	beq	.L1159
.L809:
.LVL683:
	.loc 1 4704 0
	ldr	r4, .L1247+260
	ldr	r3, [r4, #192]
	cmp	r3, #0
	beq	.L819
	add	r4, r4, #192
	b	.L1146
.LVL684:
.L813:
	.loc 1 4706 0
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	subs	r1, r3, r9
	movne	r1, #1
	cmp	r0, ip
	movne	r1, #0
	cmp	r1, #0
	beq	.L812
	.loc 1 4707 0
	tst	r2, #1024
	beq	.L812
	.loc 1 4707 0 is_stmt 0 discriminator 1
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L812
	.loc 1 4708 0 is_stmt 1
	ldr	r1, [r2]
	cmp	r1, lr
	beq	.L1162
.L812:
	.loc 1 4705 0 discriminator 2
	add	r3, r3, #36
.LVL685:
.L1146:
	ldr	r2, [r3, #4]
	tst	r2, #32768
	beq	.L813
	.loc 1 4704 0 discriminator 2
	ldr	r3, [r4, #4]!
.LVL686:
	cmp	r3, #0
	bne	.L1146
.LVL687:
.L819:
.LBE863:
.LBB864:
	.loc 1 4751 0
	str	lr, [r6]
.LBE864:
	b	.L849
.LVL688:
.L1162:
.LBB865:
	.loc 1 4747 0
	str	r5, [r2]
.LVL689:
	b	.L819
.LVL690:
.L1222:
.LBE865:
.LBB866:
.LBB860:
.LBB858:
.LBB855:
	.loc 1 3624 0
	ldr	r3, [r5, #8]
.LVL691:
	str	r1, [sp, #4]
	.loc 1 3625 0
	ldr	r0, [r3]
	str	r3, [sp]
	bl	Z_Free
.LVL692:
	.loc 1 3626 0
	ldr	r1, [sp, #4]
	ldr	r0, [r5, #16]
	mov	r2, #0
	bl	Z_Strdup
.LVL693:
	ldr	r3, [sp]
	str	r0, [r3]
	b	.L748
.LVL694:
.L1227:
.LBE855:
.LBE858:
.LBE860:
.LBE866:
	.loc 1 4593 0
	ldr	r3, .L1247+284
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1231
.LVL695:
.L780:
	.loc 1 4621 0
	ldr	r3, .L1247+288
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1232
.L792:
	.loc 1 4649 0
	ldr	r3, .L1247+292
	ldr	r3, [r3]
	cmp	r4, r3
	bne	.L1159
	.loc 1 4657 0
	ldr	r3, [r9, #4]
	ands	r3, r3, #196608
	bne	.L1167
.L804:
	.loc 1 4661 0
	ldr	r3, [r9, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #36]
	bl	M_UpdateCurrent.isra.0
.LVL696:
	b	.L805
.LVL697:
.L725:
.LBE922:
	.loc 1 4390 0 discriminator 1
	ldr	r3, .L1247+232
	ldr	r1, [r3]
	b	.L728
.L1193:
.LBB923:
.LBB924:
	bl	M_StartControlPanel.part.7
.LVL698:
.LBE924:
.LBE923:
	.loc 1 4440 0
	mov	r0, #0
	mov	r1, #23
	bl	S_StartSound
.LVL699:
.LBB925:
.LBB926:
	.loc 1 5385 0
	ldr	r3, .L1247+260
	ldr	r0, .L1247+240
	.loc 1 5386 0
	ldrh	r1, [r3, #164]
	ldr	r2, .L1247+244
	.loc 1 5385 0
	add	r3, r3, #144
	str	r3, [r0]
	.loc 1 5386 0
	strh	r1, [r2]	@ movhi
.LBE926:
.LBE925:
	.loc 1 4442 0
	mov	r6, #1
	b	.L995
.LVL700:
.L726:
	.loc 1 4391 0 discriminator 1
	ldr	r3, .L1247+236
	ldr	r1, [r3]
	b	.L728
.LVL701:
.L1215:
.LBB927:
.LBB867:
	.loc 1 4975 0
	ldr	r0, [r9, #4]
.LVL702:
	.loc 1 4983 0
	tst	r0, #4096
	beq	.L866
	.loc 1 4986 0
	mov	r3, #0
	.loc 1 4985 0
	mov	ip, #1
	.loc 1 4986 0
	ldr	r1, .L1247+324
	.loc 1 4987 0
	ldr	r2, .L1247+256
	.loc 1 4985 0
	str	ip, [r7, #16]
	.loc 1 4986 0
	str	r3, [r1]
	.loc 1 4987 0
	str	r3, [r2]
.LVL703:
.L867:
	.loc 1 5030 0
	mov	r6, #1
	.loc 1 5029 0
	orr	r0, r0, #2
	str	r0, [r9, #4]
	.loc 1 5031 0
	mov	r1, #32
	mov	r0, #0
	.loc 1 5030 0
	str	r6, [r7, #8]
	.loc 1 5031 0
	bl	S_StartSound
.LVL704:
	.loc 1 5032 0
	b	.L995
.LVL705:
.L1223:
.LBE867:
.LBE927:
	.loc 1 5178 0
	mov	r0, #1
	blx	r2
.LVL706:
	.loc 1 5179 0
	mov	r0, #0
	mov	r1, #22
	bl	S_StartSound
.LVL707:
	.loc 1 5189 0
	mov	r6, #1
	b	.L995
.LVL708:
.L1216:
.LBB928:
	.loc 1 5040 0
	ldr	r2, .L1247+240
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L873
	.loc 1 5043 0
	ldrh	lr, [r3, #20]
	ldr	ip, .L1247+244
	.loc 1 5044 0
	mov	r0, #0
	mov	r1, #23
	.loc 1 5042 0
	str	r3, [r2]
	.loc 1 5043 0
	strh	lr, [ip]	@ movhi
	.loc 1 5044 0
	bl	S_StartSound
.LVL709:
.L873:
	.loc 1 5047 0
	mov	r4, #0
	.loc 1 5046 0
	ldr	r3, [r9, #4]
	.loc 1 5047 0
	str	r4, [r7]
	.loc 1 5046 0
	bic	r3, r3, #3
	str	r3, [r9, #4]
	.loc 1 5048 0
	str	r4, [r7, #4]
	.loc 1 5049 0
	str	r4, [r7, #24]
	.loc 1 5050 0
	str	r4, [r7, #28]
	.loc 1 5051 0
	str	r4, [r7, #32]
	.loc 1 5052 0
	str	r4, [r7, #40]
	.loc 1 5053 0
	str	r4, [r7, #48]
	.loc 1 5054 0
	str	r4, [r7, #52]
	.loc 1 5055 0
	str	r4, [r7, #36]
	.loc 1 5056 0
	str	r4, [r7, #12]
	.loc 1 5057 0
	str	r4, [r7, #44]
	.loc 1 5058 0
	str	r4, [r7, #300]
	.loc 1 5059 0
	bl	HU_Start
.LVL710:
	.loc 1 5060 0
	mov	r0, r4
	mov	r1, #24
	bl	S_StartSound
.LVL711:
	.loc 1 5061 0
	mov	r6, #1
	b	.L995
.LVL712:
.L1229:
.LBB871:
	.loc 1 4721 0
	ldr	r6, [r9, #20]
	cmp	r6, #0
	beq	.L1159
	.loc 1 4733 0
	ldr	r3, [r5, #4]
	.loc 1 4732 0
	ldrb	ip, [r9, #8]	@ zero_extendqisi2
	.loc 1 4733 0
	tst	r3, #1
	.loc 1 4731 0
	ldr	r5, [r6]
.LVL713:
	.loc 1 4733 0
	bne	.L919
	.loc 1 4735 0
	tst	r3, #2
	bne	.L920
	.loc 1 4737 0
	tst	r3, #4
	beq	.L1159
.L818:
.LVL714:
	.loc 1 4741 0
	ldr	r4, .L1247+260
	ldr	r3, [r4, #192]
	cmp	r3, #0
	beq	.L819
	add	r4, r4, #192
	b	.L1148
.LVL715:
.L822:
	.loc 1 4743 0
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	subs	r1, r3, r9
	movne	r1, #1
	cmp	r0, ip
	movne	r1, #0
	cmp	r1, #0
	beq	.L821
	.loc 1 4744 0
	tst	r2, #1024
	beq	.L821
	.loc 1 4744 0 is_stmt 0 discriminator 1
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L821
	.loc 1 4745 0 is_stmt 1
	ldr	r1, [r2]
	cmp	r1, lr
	beq	.L1162
.L821:
	.loc 1 4742 0 discriminator 2
	add	r3, r3, #36
.LVL716:
.L1148:
	ldr	r2, [r3, #4]
	tst	r2, #32768
	beq	.L822
	.loc 1 4741 0 discriminator 2
	ldr	r3, [r4, #4]!
.LVL717:
	cmp	r3, #0
	bne	.L1148
	b	.L819
.LVL718:
.L919:
	.loc 1 4734 0
	mov	lr, #0
	b	.L818
.LVL719:
.L866:
.LBE871:
.LBB872:
	.loc 1 4989 0
	ands	r4, r0, #32
	beq	.L868
.LBB868:
	.loc 1 4998 0
	mov	ip, #1
	.loc 1 4991 0
	ldr	r3, [r9, #16]
	.loc 1 4996 0
	ldr	lr, .L1247+320
	.loc 1 4991 0
	ldr	r2, [r3, #4]
.LVL720:
	.loc 1 4997 0
	ldr	r1, .L1247+316
	.loc 1 4996 0
	ldr	r3, [r2]
	and	r3, r3, #15
	str	r3, [lr]
.LVL721:
	.loc 1 4997 0
	ldr	r3, [r2]
	.loc 1 4998 0
	str	ip, [r7, #36]
	.loc 1 4997 0
	mov	r3, r3, asr #4
	str	r3, [r1]
.LBE868:
	b	.L867
.LVL722:
.L916:
.LBE872:
.LBB873:
	.loc 1 4695 0
	mov	lr, #0
	b	.L809
.LVL723:
.L1226:
.LBE873:
.LBE928:
	.loc 1 5214 0
	ldr	ip, .L1247+248
	ldr	r1, [ip]
	sub	r1, r1, #1
	cmp	r1, #0
	.loc 1 5217 0
	moveq	r2, #1
	.loc 1 5214 0
	str	r1, [ip]
	.loc 1 5216 0
	streq	r3, [r0]
	.loc 1 5217 0
	streq	r2, [ip]
	movne	r3, r2
	b	.L896
.LVL724:
.L1232:
.LBB929:
	.loc 1 4622 0
	ldr	r5, [r9, #16]
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1233
.L793:
	.loc 1 4636 0
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L792
.LBB874:
	.loc 1 4639 0
	ldr	r3, [r5, #8]
	ldr	r7, [r9, #32]
	ldr	r8, [r3]
.LVL725:
.LBB875:
.LBB876:
	.loc 1 4102 0
	mov	r6, #0
	b	.L798
.LVL726:
.L802:
	.loc 1 4105 0
	mov	r0, r8
	bl	strcmp
.LVL727:
	cmp	r0, #0
	beq	.L1234
	.loc 1 4107 0
	add	r6, r6, #1
.LVL728:
.L798:
	.loc 1 4104 0
	ldr	r1, [r7, r6, asl #2]
	cmp	r1, #0
	bne	.L802
.LVL729:
.LBE876:
.LBE875:
	.loc 1 4642 0
	ldr	r6, [r7, #4]
.LVL730:
	cmp	r6, #0
	.loc 1 4641 0
	movne	r8, #1
.LVL731:
	.loc 1 4642 0
	beq	.L800
.LVL732:
.L801:
	.loc 1 4645 0
	mov	r0, #0
	mov	r1, #19
	bl	S_StartSound
.LVL733:
	ldr	r5, [r9, #16]
	ldr	r7, [r9, #32]
.L906:
	.loc 1 4646 0
	ldr	r3, [r5, #8]
	ldr	r2, [r7, r8, asl #2]
	str	r2, [r3]
	b	.L792
.LVL734:
.L1231:
.LBE874:
	.loc 1 4594 0
	ldr	r5, [r9, #16]
.LVL735:
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1235
.L781:
	.loc 1 4608 0
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L780
.LBB877:
	.loc 1 4611 0
	ldr	r3, [r5, #8]
	ldr	r7, [r9, #32]
	ldr	r8, [r3]
.LVL736:
.LBB878:
.LBB879:
	.loc 1 4102 0
	mov	r6, #0
	b	.L786
.LVL737:
.L789:
	.loc 1 4105 0
	mov	r0, r8
	bl	strcmp
.LVL738:
	cmp	r0, #0
	beq	.L1236
	.loc 1 4107 0
	add	r6, r6, #1
.LVL739:
.L786:
	.loc 1 4104 0
	ldr	r1, [r7, r6, asl #2]
	cmp	r1, #0
	bne	.L789
.LBE879:
.LBE878:
	.loc 1 4615 0
	mov	r3, r1
.LVL740:
.L790:
	.loc 1 4618 0
	ldr	r2, [r5, #8]
	ldr	r3, [r7, r3, asl #2]
	str	r3, [r2]
	b	.L780
.LVL741:
.L870:
.LBE877:
.LBB882:
.LBB883:
	.loc 1 5372 0
	mov	r3, #0
	.loc 1 5373 0
	ldr	r2, .L1247+324
	.loc 1 5372 0
	strb	r3, [r8]
	.loc 1 5373 0
	str	r3, [r2]
	b	.L873
.L1217:
.LBE883:
.LBE882:
	.loc 1 4462 0
	mov	r1, r9
	b	.L877
.LVL742:
.L875:
	.loc 1 5090 0
	tst	r0, #32768
	bne	.L874
.LVL743:
.L877:
	.loc 1 5076 0
	add	r1, r1, #36
.LVL744:
	.loc 1 5077 0
	ldr	r0, [r1, #4]
	tst	r0, #256
	beq	.L875
	.loc 1 5082 0
	mov	r3, #0
	.loc 1 5080 0
	ldr	lr, .L1247+252
	.loc 1 5079 0
	ldr	r0, [r9, #4]
	.loc 1 5080 0
	ldr	ip, [lr]
	.loc 1 5081 0
	ldr	r1, [r1, #16]
.LVL745:
	.loc 1 5083 0
	ldr	r4, .L1247+324
	.loc 1 5080 0
	sub	ip, ip, #1
	.loc 1 5079 0
	bic	r0, r0, #1
	.loc 1 5081 0
	str	r1, [r2]
	.loc 1 5080 0
	str	ip, [lr]
	mov	r2, r1
	.loc 1 5079 0
	str	r0, [r9, #4]
	.loc 1 5082 0
	str	r3, [r7, #20]
	.loc 1 5083 0
	str	r3, [r4]
	.loc 1 5084 0
	b	.L876
.L922:
	mov	r3, lr
.L876:
	.loc 1 5084 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #4]
	mov	ip, r2
	ands	r0, r1, #8192
	add	r2, r2, #36
	add	lr, r3, #1
	bne	.L922
	b	.L1161
.LVL746:
.L920:
.LBB884:
	.loc 1 4736 0 is_stmt 1
	mov	lr, #1
	b	.L818
.LVL747:
.L1225:
.LBE884:
	.loc 1 4574 0 discriminator 1
	cmp	r3, #0
	beq	.L777
	.loc 1 4575 0
	sub	r3, r3, #1
	str	r3, [r1]
	.loc 1 4576 0
	mov	r6, #1
	b	.L995
.LVL748:
.L1201:
.LBE929:
	.loc 1 5238 0
	mov	r3, #0
	b	.L902
.LVL749:
.L1224:
.LBB930:
	.loc 1 4542 0
	ldr	r3, .L1247+256
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1237
.L770:
	.loc 1 4569 0
	add	r0, r9, #4
	bl	M_SelectDone.isra.3
.LVL750:
	.loc 1 4570 0
	mov	r3, #0
	.loc 1 4571 0
	mov	r6, #1
	.loc 1 4570 0
	str	r3, [r7, #16]
	.loc 1 4571 0
	b	.L995
.LVL751:
.L918:
.LBB885:
	.loc 1 4699 0
	mov	lr, #2
	b	.L809
.L917:
	.loc 1 4697 0
	mov	lr, #1
	b	.L809
.LVL752:
.L868:
.LBE885:
.LBB886:
	.loc 1 5000 0
	ldr	r3, .L1247+276
	and	r3, r3, r0
	cmp	r3, #0
	bne	.L1238
	.loc 1 5026 0
	tst	r0, #128
	.loc 1 5027 0
	movne	r3, #1
	strne	r3, [r7, #12]
	b	.L867
.LVL753:
.L1234:
.LBE886:
.LBB887:
	.loc 1 4641 0
	add	r8, r6, #1
.LVL754:
	.loc 1 4642 0
	ldr	r3, [r7, r8, asl #2]
	cmp	r3, #0
	bne	.L801
.LVL755:
.L800:
	.loc 1 4641 0
	mov	r8, r6
	b	.L906
.LVL756:
.L807:
.LBE887:
	.loc 1 4795 0
	ldr	r10, [r7, #24]
	.loc 1 4794 0
	ldr	r5, .L1247+272
.LVL757:
	.loc 1 4795 0
	cmp	r10, #0
	beq	.L831
	.loc 1 4797 0
	ldr	r3, .L1247+292
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L849
	.loc 1 4800 0
	sub	r3, r4, #49
	cmp	r3, #8
	.loc 1 4799 0
	sub	r4, r4, #48
.LVL758:
	.loc 1 4800 0
	bhi	.L1159
.LVL759:
	.loc 1 4812 0 discriminator 1
	ldr	ip, .L1247+260
	ldr	r3, [ip, #236]
.LVL760:
	cmp	r3, #0
	beq	.L833
	add	ip, ip, #236
	b	.L1152
.LVL761:
.L836:
	.loc 1 4814 0
	tst	r2, #2048
	beq	.L835
	.loc 1 4815 0 discriminator 1
	ldr	r2, [r3, #16]
	subs	r1, r3, r9
	ldr	r2, [r2, #4]
	movne	r1, #1
	.loc 1 4814 0 discriminator 1
	ldr	r0, [r2]
	.loc 1 4815 0 discriminator 1
	cmp	r4, r0
	movne	r1, #0
	cmp	r1, #0
	bne	.L1239
.L835:
	.loc 1 4813 0
	add	r3, r3, #36
.LVL762:
.L1152:
	ldr	r2, [r3, #4]
	tst	r2, #32768
	beq	.L836
	.loc 1 4812 0 discriminator 2
	ldr	r3, [ip, #4]!
.LVL763:
	cmp	r3, #0
	bne	.L1152
.LVL764:
.L833:
	.loc 1 4821 0
	ldr	r3, [r9, #16]
	ldr	r3, [r3, #4]
	str	r4, [r3]
	b	.L849
.LVL765:
.L1239:
	.loc 1 4817 0
	ldr	r3, [r9, #16]
.LVL766:
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	str	r3, [r2]
	.loc 1 4818 0
	b	.L833
.LVL767:
.L831:
	.loc 1 4830 0
	ldr	lr, [r5, #32]
	cmp	lr, #0
	beq	.L847
	.loc 1 4833 0
	ldr	lr, .L1247+264
	ldr	lr, [lr]
	cmp	r4, lr
	beq	.L1240
	.loc 1 4841 0
	ldr	lr, .L1247+268
	ldr	lr, [lr]
	cmp	r4, lr
	beq	.L1241
	.loc 1 4849 0
	ldr	lr, .L1247+284
	ldr	lr, [lr]
	cmp	r4, lr
	beq	.L1242
	.loc 1 4857 0
	ldr	lr, .L1247+288
	ldr	lr, [lr]
	cmp	r4, lr
	.loc 1 4859 0
	ldreq	r2, .L1247+320
	.loc 1 4857 0
	beq	.L1154
	.loc 1 4865 0
	ldr	lr, .L1247+292
	ldr	lr, [lr]
	cmp	r4, lr
	beq	.L1243
.L847:
	.loc 1 4876 0 discriminator 1
	ldr	r5, [r7, #40]
	ldr	r10, [r7, #44]
	ldr	lr, [r7, #52]
	orr	r10, r10, r5
	ldr	r5, [r7, #48]
	orr	r10, r10, lr
	.loc 1 4877 0 discriminator 1
	ldr	lr, [r7, #28]
	.loc 1 4876 0 discriminator 1
	orr	r5, r10, r5
	.loc 1 4877 0 discriminator 1
	ldr	r10, [r7, #300]
	orr	lr, r5, lr
	.loc 1 4875 0 discriminator 1
	orrs	lr, lr, r10
	.loc 1 4876 0 discriminator 1
	ldr	lr, .L1247+272
	.loc 1 4875 0 discriminator 1
	beq	.L848
	.loc 1 4879 0
	ldr	r3, .L1247+276
	and	r3, r3, r0
	cmp	r3, #0
	beq	.L849
	.loc 1 4881 0
	ldr	r3, .L1247+280
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1244
	.loc 1 4893 0
	ldr	r3, .L1247+284
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1245
	.loc 1 4898 0
	ldr	r3, .L1247+288
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L1246
	.loc 1 4903 0
	ldr	r3, .L1247+292
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L854
	.loc 1 4903 0 is_stmt 0 discriminator 1
	ldr	r3, [ip]
	cmp	r4, r3
	beq	.L854
	.loc 1 4915 0 is_stmt 1
	sub	r3, r4, #32
	cmp	r3, #94
	bhi	.L1159
	.loc 1 4916 0
	ldr	r2, .L1247+304
	ldr	r3, [r2]
	cmp	r3, #126
	bgt	.L1159
	.loc 1 4918 0
	ldr	r1, [lr, #296]
	.loc 1 4920 0
	ldr	ip, .L1247+300
	.loc 1 4918 0
	cmp	r1, #0
	.loc 1 4919 0
	ldrne	r1, .L1247+296
	ldrne	r1, [r1]
	ldrneb	r4, [r1, r4]	@ zero_extendqisi2
.LVL768:
	.loc 1 4920 0
	ldr	r1, [ip]
	ldrb	r0, [r1, r3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L857
	.loc 1 4922 0
	add	lr, r3, #1
	str	lr, [r2]
	strb	r4, [r1, r3]
	.loc 1 4923 0
	ldr	r3, [r2]
	ldr	r2, [ip]
	.loc 1 4928 0
	mov	r6, #1
	.loc 1 4923 0
	strb	r0, [r2, r3]
	b	.L995
.LVL769:
.L1240:
	.loc 1 4835 0
	ldr	r2, .L1247+316
.L1154:
	ldr	r3, [r2]
	cmp	r3, #15
	moveq	r3, #0
	addne	r3, r3, #1
.L1153:
	str	r3, [r2]
.L841:
	.loc 1 4837 0
	mov	r0, #0
	mov	r1, #32
	bl	S_StartSound
.LVL770:
	.loc 1 4838 0
	mov	r6, #1
	b	.L995
.L1241:
	.loc 1 4843 0
	ldr	r2, .L1247+316
	ldr	r3, [r2]
	subs	r3, r3, #1
	bpl	.L1153
.L1155:
	.loc 1 4852 0
	mov	r3, #15
	str	r3, [r2]
	b	.L841
.L1244:
	.loc 1 4883 0
	ldr	r3, .L1247+300
	ldr	ip, .L1247+304
	ldr	r1, [r3]
	ldr	r3, [ip]
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	add	r0, r1, r3
	cmp	r2, #0
	bne	.L851
	.loc 1 4885 0
	cmp	r3, #0
	ble	.L1159
	.loc 1 4886 0
	sub	r3, r3, #1
	str	r3, [ip]
	.loc 1 4928 0
	mov	r6, #1
	.loc 1 4886 0
	strb	r2, [r1, r3]
	b	.L995
.L1245:
	.loc 1 4895 0
	ldr	r2, .L1247+304
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L1159
	.loc 1 4896 0
	sub	r3, r3, #1
	str	r3, [r2]
	.loc 1 4928 0
	mov	r6, #1
	b	.L995
.L1242:
	.loc 1 4851 0
	ldr	r2, .L1247+320
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bge	.L841
	b	.L1155
.L854:
	.loc 1 4906 0
	ldr	r3, [r9, #16]
	ldr	r2, .L1247+300
	ldr	r3, [r3, #8]
	ldr	r2, [r2]
	.loc 1 4907 0
	add	r0, r9, #4
	.loc 1 4906 0
	str	r2, [r3]
	.loc 1 4907 0
	bl	M_SelectDone.isra.3
.LVL771:
	.loc 1 4928 0
	mov	r6, #1
	.loc 1 4907 0
	b	.L995
.L1246:
	.loc 1 4900 0
	ldr	r2, .L1247+304
	ldr	r1, .L1247+300
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1159
	.loc 1 4901 0
	add	r3, r3, #1
	str	r3, [r2]
	.loc 1 4928 0
	mov	r6, #1
	b	.L995
.L851:
	.loc 1 4891 0
	add	r3, r3, #1
	.loc 1 4890 0
	add	r1, r1, r3
	bl	strcpy
.LVL772:
	.loc 1 4928 0
	mov	r6, #1
	b	.L995
.LVL773:
.L857:
	.loc 1 4926 0
	add	r0, r3, #1
	str	r0, [r2]
	.loc 1 4928 0
	mov	r6, #1
	.loc 1 4926 0
	strb	r4, [r1, r3]
	b	.L995
.LVL774:
.L1236:
.LBB888:
	.loc 1 4615 0
	cmp	r6, #0
.LBB881:
.LBB880:
	.loc 1 4105 0
	mov	r3, r6
.LVL775:
.LBE880:
.LBE881:
	.loc 1 4615 0
	moveq	r6, #0
.LVL776:
	subne	r6, r6, #1
.LVL777:
	.loc 1 4616 0
	cmp	r6, r3
	beq	.L790
	.loc 1 4617 0
	mov	r1, #19
	bl	S_StartSound
.LVL778:
	mov	r3, r6
	ldr	r5, [r9, #16]
	ldr	r7, [r9, #32]
	b	.L790
.LVL779:
.L1235:
.LBE888:
.LBB889:
	.loc 1 4595 0
	ldr	r2, [r5, #4]
	.loc 1 4598 0
	ldr	r3, [r5, #20]
	.loc 1 4595 0
	ldr	r2, [r2]
.LVL780:
	.loc 1 4598 0
	ldr	r1, .L1247+312
	.loc 1 4597 0
	sub	r0, r2, #1
.LVL781:
	cmp	r3, r1
	cmpne	r0, r3
	movge	r3, r0
.LVL782:
	.loc 1 4601 0
	ldr	r6, [r5, #24]
	cmp	r6, r1
	cmpne	r3, r6
	movle	r6, r3
.LVL783:
	.loc 1 4604 0
	cmp	r6, r2
	beq	.L784
	.loc 1 4605 0
	mov	r0, #0
	mov	r1, #19
	bl	S_StartSound
.LVL784:
	ldr	r5, [r9, #16]
.L784:
	.loc 1 4606 0
	ldr	r3, [r5, #4]
	str	r6, [r3]
	ldr	r5, [r9, #16]
	b	.L781
.LVL785:
.L1233:
.LBE889:
.LBB890:
	.loc 1 4623 0
	ldr	r2, [r5, #4]
	.loc 1 4626 0
	ldr	r3, [r5, #20]
	.loc 1 4623 0
	ldr	r2, [r2]
.LVL786:
	.loc 1 4626 0
	ldr	r1, .L1247+312
	.loc 1 4625 0
	add	r0, r2, #1
.LVL787:
	cmp	r3, r1
	cmpne	r0, r3
	movge	r3, r0
.LVL788:
	.loc 1 4629 0
	ldr	r6, [r5, #24]
	cmp	r6, r1
	cmpne	r3, r6
	movle	r6, r3
.LVL789:
	.loc 1 4632 0
	cmp	r6, r2
	beq	.L796
	.loc 1 4633 0
	mov	r0, #0
	mov	r1, #19
	bl	S_StartSound
.LVL790:
	ldr	r5, [r9, #16]
.L796:
	.loc 1 4634 0
	ldr	r3, [r5, #4]
	str	r6, [r3]
	ldr	r5, [r9, #16]
	b	.L793
.LVL791:
.L1238:
.LBE890:
.LBB891:
	.loc 1 5008 0
	mov	r1, #1
	mov	r2, r4
	mov	r0, #128
.LVL792:
	bl	Z_Malloc
.LVL793:
	.loc 1 5010 0
	ldr	r3, [r9, #16]
	.loc 1 5008 0
	ldr	r5, .L1247+300
	.loc 1 5009 0
	ldr	r3, [r3, #8]
	.loc 1 5008 0
	str	r0, [r5]
	.loc 1 5009 0
	ldr	r1, [r3]
	mov	r2, #128
	bl	strncpy
.LVL794:
	.loc 1 5013 0
	ldr	r3, [r5]
	strb	r4, [r3, #127]
.LBB869:
	.loc 1 5020 0
	ldr	r3, [r9, #16]
	ldr	r6, [r3, #8]
.LVL795:
	.loc 1 5021 0
	ldr	r0, [r6]
	bl	Z_Free
.LVL796:
	.loc 1 5022 0
	ldr	r2, [r5]
.LBE869:
	.loc 1 5024 0
	ldr	r3, .L1247+304
.LBB870:
	.loc 1 5022 0
	str	r2, [r6]
	ldr	r0, [r9, #4]
.LBE870:
	.loc 1 5024 0
	str	r4, [r3]
	b	.L867
.LVL797:
.L1237:
.LBE891:
.LBB892:
	.loc 1 4545 0
	mov	r1, #0
	ldr	r2, .L1247+308
	.loc 1 4546 0
	mov	r0, r2
	.loc 1 4545 0
	strb	r1, [r2, r3]
	.loc 1 4546 0
	bl	atoi
.LVL798:
	.loc 1 4548 0
	ldr	r3, [r9, #16]
	ldr	r2, .L1247+312
	ldr	r1, [r3, #20]
	cmp	r1, r2
	cmpne	r0, r1
	blt	.L771
	.loc 1 4550 0
	ldr	r1, [r3, #24]
	cmp	r1, r2
	cmpne	r0, r1
	ble	.L772
.L771:
	.loc 1 4552 0
	mov	r0, #262144
.LVL799:
	mov	r2, #2
	ldr	r1, .L1247+328
	ldr	r3, .L1247+324
	str	r0, [r1]
	str	r2, [r3]
	b	.L770
.LVL800:
.L1243:
.LBE892:
	.loc 1 4867 0
	ldr	r1, .L1247+316
	ldr	r3, .L1247+320
	ldr	r2, [r9, #16]
	ldr	r1, [r1]
	ldr	r3, [r3]
	ldr	r2, [r2, #4]
	add	r3, r3, r1, asl #4
	str	r3, [r2]
	.loc 1 4868 0
	add	r0, r9, #4
	bl	M_SelectDone.isra.3
.LVL801:
	.loc 1 4870 0
	mov	r6, #1
	.loc 1 4869 0
	str	r10, [r5, #36]
	.loc 1 4870 0
	b	.L995
.LVL802:
.L772:
.LBB893:
	.loc 1 4554 0
	ldr	r3, [r3, #4]
	str	r0, [r3]
	.loc 1 4559 0
	ldr	r3, [r9, #4]
	ands	r3, r3, #196608
	beq	.L773
	.loc 1 4560 0
	mov	r0, #2
.LVL803:
	ldr	r1, .L1247+324
	ldr	r2, .L1247+328
	str	r0, [r1]
	str	r3, [r2]
.L774:
	.loc 1 4565 0
	ldr	r3, [r9, #28]
	cmp	r3, #0
	beq	.L770
	.loc 1 4566 0
	blx	r3
.LVL804:
	b	.L770
.LVL805:
.L773:
	.loc 1 4563 0
	ldr	r3, [r9, #16]
	ldr	r0, [r3, #4]
.LVL806:
	ldr	r1, [r3, #36]
	bl	M_UpdateCurrent.isra.0
.LVL807:
	b	.L774
.LBE893:
.LBE930:
	.cfi_endproc
.LFE101:
	.size	M_Responder, .-M_Responder
	.align	2
	.global	M_StringHeight
	.type	M_StringHeight, %function
M_StringHeight:
.LFB113:
	.loc 1 5511 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL808:
	.loc 1 5513 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 5512 0
	ldr	r2, .L1255
	.loc 1 5513 0
	cmp	r3, #0
	.loc 1 5512 0
	ldr	r1, [r2, #4]
.LVL809:
	.loc 1 5513 0
	beq	.L1253
	mov	r2, r0
	mov	r0, r1
.LVL810:
.L1252:
	.loc 1 5514 0
	cmp	r3, #10
	.loc 1 5513 0
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
.LVL811:
	.loc 1 5515 0
	addeq	r0, r0, r1
.LVL812:
	.loc 1 5513 0
	cmp	r3, #0
	bne	.L1252
	bx	lr
.LVL813:
.L1253:
	.loc 1 5512 0
	mov	r0, r1
.LVL814:
	.loc 1 5517 0
	bx	lr
.L1256:
	.align	2
.L1255:
	.word	hu_font
	.cfi_endproc
.LFE113:
	.size	M_StringHeight, .-M_StringHeight
	.align	2
	.global	M_WriteText
	.type	M_WriteText, %function
M_WriteText:
.LFB114:
	.loc 1 5523 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL815:
	.loc 1 5560 0
	cmp	r3, #6
	.loc 1 5523 0
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
	mov	r9, r3
	.loc 1 5560 0
	moveq	r3, #4
.LVL816:
	movne	r3, #6
	.loc 1 5523 0
	mov	r6, r1
	mov	r4, r2
.LVL817:
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
.LBB931:
	.loc 1 5549 0
	ldr	r7, .L1273
.LBE931:
	.loc 1 5555 0
	ldr	r8, .L1273+4
	.loc 1 5556 0
	ldr	r10, .L1273+8
	.loc 1 5560 0
	ldr	fp, .L1273+12
	.loc 1 5523 0
	str	r0, [sp, #12]
	.loc 1 5560 0
	str	r3, [sp, #8]
.LVL818:
.L1259:
	.loc 1 5540 0
	ldrb	r3, [r4], #1	@ zero_extendqisi2
.LVL819:
	.loc 1 5541 0
	cmp	r3, #0
	beq	.L1257
.LVL820:
.L1272:
	.loc 1 5543 0
	cmp	r3, #10
	beq	.L1271
.LBB932:
	.loc 1 5549 0
	ldr	r2, [r7]
	add	r2, r2, r3
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	and	r2, r2, #3
	cmp	r2, #2
	subeq	r3, r3, #32
.LVL821:
.LBE932:
	sub	r3, r3, #33
.LVL822:
	.loc 1 5550 0
	cmp	r3, #94
	.loc 1 5555 0
	add	r2, r3, r3, asl #2
	.loc 1 5551 0
	addhi	r0, r0, #4
.LVL823:
	.loc 1 5550 0
	bhi	.L1259
	.loc 1 5556 0
	ldr	r5, [r8, r2, asl #2]
	ldr	r3, [r10]
.LVL824:
	add	r5, r0, r5
	cmp	r5, r3
	.loc 1 5555 0
	add	r1, r8, r2, asl #2
	.loc 1 5556 0
	bgt	.L1257
	.loc 1 5560 0
	ldr	r2, [sp, #8]
	ldr	r3, [r1, #16]
	str	r2, [sp, #4]
	str	r9, [sp]
	ldr	ip, [fp]
	mov	r1, r6
	mov	r2, #0
	blx	ip
.LVL825:
	.loc 1 5540 0
	ldrb	r3, [r4], #1	@ zero_extendqisi2
	.loc 1 5560 0
	mov	r0, r5
.LVL826:
	.loc 1 5541 0
	cmp	r3, #0
	bne	.L1272
.LVL827:
.L1257:
	.loc 1 5563 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL828:
.L1271:
	.cfi_restore_state
	.loc 1 5545 0
	add	r6, r6, #12
.LVL829:
	.loc 1 5544 0
	ldr	r0, [sp, #12]
	.loc 1 5546 0
	b	.L1259
.L1274:
	.align	2
.L1273:
	.word	__ctype_ptr__
	.word	hu_font
	.word	SCREENWIDTH
	.word	V_DrawNumPatch
	.cfi_endproc
.LFE114:
	.size	M_WriteText, .-M_WriteText
	.align	2
	.global	M_DrawLoad
	.type	M_DrawLoad, %function
M_DrawLoad:
.LFB24:
	.loc 1 722 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 727 0
	ldr	r3, .L1279
	.loc 1 722 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 727 0
	ldr	r0, .L1279+4
	ldr	r4, [r3]
	bl	W_GetNumForName
.LVL830:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, #72
	mov	r1, #8
	mov	r2, #0
	blx	r4
.LVL831:
	mov	r4, #0
	ldr	r6, .L1279+8
	ldr	r5, .L1279+12
.LVL832:
.L1276:
	.loc 1 729 0 discriminator 3
	ldrsh	r1, [r5, #18]
	ldrsh	r0, [r5, #16]
	add	r1, r1, r4
	bl	M_DrawSaveLoadBorder
.LVL833:
	.loc 1 730 0 discriminator 3
	ldrsh	r1, [r5, #18]
	mov	r2, r6
	add	r1, r4, r1
	ldrsh	r0, [r5, #16]
	add	r4, r4, #16
	mov	r3, #6
	bl	M_WriteText
.LVL834:
	.loc 1 728 0 discriminator 3
	cmp	r4, #128
	add	r6, r6, #24
	bne	.L1276
	.loc 1 732 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L1280:
	.align	2
.L1279:
	.word	V_DrawNumPatch
	.word	.LC77
	.word	savegamestrings
	.word	.LANCHOR0+1428
	.cfi_endproc
.LFE24:
	.size	M_DrawLoad, .-M_DrawLoad
	.align	2
	.global	M_DrawSave
	.type	M_DrawSave, %function
M_DrawSave:
.LFB31:
	.loc 1 871 0
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
	.loc 1 876 0
	ldr	r3, .L1287
	.loc 1 871 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 876 0
	ldr	r0, .L1287+4
	ldr	r4, [r3]
	bl	W_GetNumForName
.LVL835:
	mov	r1, #6
	mov	r2, #4
	ldr	r8, .L1287+8
	stmia	sp, {r1, r2}
	mov	r3, r0
	mov	r1, #8
	mov	r0, #72
	mov	r2, #0
	blx	r4
.LVL836:
	mov	r6, r8
	mov	r4, #0
	ldr	r5, .L1287+12
.LVL837:
.L1282:
	.loc 1 879 0 discriminator 3
	ldrsh	r1, [r5, #18]
	ldrsh	r0, [r5, #16]
	add	r1, r1, r4
	bl	M_DrawSaveLoadBorder
.LVL838:
	.loc 1 880 0 discriminator 3
	ldrsh	r1, [r5, #18]
	mov	r2, r6
	add	r1, r4, r1
	ldrsh	r0, [r5, #16]
	add	r4, r4, #16
	mov	r3, #6
	bl	M_WriteText
.LVL839:
	.loc 1 877 0 discriminator 3
	cmp	r4, #128
	add	r6, r6, #24
	.loc 1 879 0 discriminator 3
	ldr	r7, .L1287+12
	.loc 1 877 0 discriminator 3
	bne	.L1282
	.loc 1 883 0
	ldr	r3, .L1287+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1286
	.loc 1 888 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1286:
	.cfi_restore_state
.LBB935:
.LBB936:
	.loc 1 885 0
	ldr	r3, .L1287+20
	ldr	r4, [r3]
	add	r0, r4, r4, asl #1
	add	r0, r8, r0, asl #3
	bl	M_StringWidth
.LVL840:
	.loc 1 886 0
	ldrsh	r3, [r7, #16]
	ldrsh	r1, [r7, #18]
	add	r0, r0, r3
.LVL841:
	mov	r3, #6
	ldr	r2, .L1287+24
	add	r1, r1, r4, asl #4
.LBE936:
.LBE935:
	.loc 1 888 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB938:
.LBB937:
	.loc 1 886 0
	b	M_WriteText
.LVL842:
.L1288:
	.align	2
.L1287:
	.word	V_DrawNumPatch
	.word	.LC78
	.word	savegamestrings
	.word	.LANCHOR0+1428
	.word	saveStringEnter
	.word	saveSlot
	.word	.LC79
.LBE937:
.LBE938:
	.cfi_endproc
.LFE31:
	.size	M_DrawSave, .-M_DrawSave
	.align	2
	.global	M_Drawer
	.type	M_Drawer, %function
M_Drawer:
.LFB103:
	.loc 1 5293 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 5294 0
	mov	r2, #0
	.loc 1 5293 0
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
	.loc 1 5298 0
	ldr	r3, .L1351
	.loc 1 5294 0
	ldr	r1, .L1351+4
	.loc 1 5298 0
	ldr	r3, [r3]
	.loc 1 5293 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 5298 0
	cmp	r3, r2
	.loc 1 5294 0
	str	r2, [r1]
	.loc 1 5298 0
	bne	.L1346
	.loc 1 5319 0
	ldr	r3, .L1351+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1289
.LVL843:
.LBB939:
	.loc 1 5324 0
	mov	r2, #1
	.loc 1 5326 0
	ldr	r8, .L1351+12
	.loc 1 5324 0
	strb	r2, [r3]
	.loc 1 5326 0
	ldr	r3, [r8]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L1343
	.loc 1 5327 0
	blx	r2
.LVL844:
	ldr	r3, [r8]
.L1343:
	.loc 1 5333 0
	ldrsh	r5, [r3]
	.loc 1 5331 0
	ldrsh	r9, [r3, #16]
.LVL845:
	.loc 1 5335 0
	cmp	r5, #0
	.loc 1 5332 0
	ldrsh	r4, [r3, #18]
.LVL846:
	.loc 1 5335 0
	ble	.L1319
.LBE939:
.LBB950:
	.loc 1 5305 0
	mov	r7, #0
	mov	r6, r7
	mov	r10, r7
	b	.L1305
.LVL847:
.L1303:
.LBE950:
.LBB958:
	.loc 1 5335 0 discriminator 2
	add	r10, r10, #1
.LVL848:
	cmp	r5, r10
	add	r7, r7, #24
	beq	.L1347
.LVL849:
.L1305:
	.loc 1 5336 0
	ldr	r0, [r3, #8]
	add	r0, r0, r7
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1303
.LVL850:
.LBB940:
.LBB941:
	.loc 2 132 0
	add	r0, r0, #2
.LVL851:
	mov	r1, #0
	mvn	r2, #0
	bl	W_FindNumFromName
.LVL852:
.LBE941:
.LBE940:
	.loc 1 5335 0
	add	r10, r10, #1
.LVL853:
	.loc 1 5337 0
	cmp	r0, #0
	.loc 1 5338 0
	addlt	r6, r6, #1
.LVL854:
	.loc 1 5335 0
	cmp	r5, r10
	ldr	r3, [r8]
	add	r7, r7, #24
	bne	.L1305
.LVL855:
.L1347:
	.loc 1 5340 0
	cmp	r6, #0
	beq	.L1348
.LVL856:
	mov	r6, #0
.LVL857:
	mov	r10, r6
.LBB942:
.LBB943:
.LBB944:
	.loc 1 5512 0
	ldr	r7, .L1351+16
	add	r4, r4, #8
.LVL858:
.L1313:
.LBE944:
.LBE943:
	.loc 1 5351 0
	ldr	r2, [r3, #8]
	add	r2, r2, r6
	ldr	r2, [r2, #20]
.LVL859:
	.loc 1 5352 0
	cmp	r2, #0
	beq	.L1309
.LVL860:
.LBB947:
.LBB945:
	.loc 1 5513 0
	ldrb	r3, [r2]	@ zero_extendqisi2
	.loc 1 5512 0
	ldr	r0, [r7, #4]
.LVL861:
	.loc 1 5513 0
	cmp	r3, #0
	beq	.L1320
	mov	ip, r2
	mov	r1, r0
.LVL862:
.L1312:
	.loc 1 5514 0
	cmp	r3, #10
	.loc 1 5513 0
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	.loc 1 5515 0
	addeq	r1, r1, r0
.LVL863:
	.loc 1 5513 0
	cmp	r3, #0
	bne	.L1312
.L1310:
.LBE945:
.LBE947:
	.loc 1 5353 0
	add	r1, r1, r1, lsr #31
.LVL864:
	mov	r3, #6
	sub	r1, r4, r1, asr #1
	mov	r0, r9
.LVL865:
	bl	M_WriteText
.LVL866:
	ldr	r3, [r8]
.L1309:
.LVL867:
.LBE942:
	.loc 1 5349 0 discriminator 2
	add	r10, r10, #1
.LVL868:
	cmp	r5, r10
	add	r6, r6, #24
	add	r4, r4, #16
.LVL869:
	bne	.L1313
	ldrsh	r4, [r3, #18]
.LVL870:
	ldr	r10, .L1351+20
.LVL871:
.L1302:
	.loc 1 5360 0
	mov	r1, #16
	ldr	r3, .L1351+24
	ldr	r2, .L1351+28
	ldrsh	r3, [r3]
	ldr	ip, .L1351+32
	ldrh	r2, [r2]
	add	r0, r3, r3, asl #3
	add	r0, ip, r0
	sub	r3, r4, #5
	smlabb	r4, r2, r1, r3
	ldr	r5, [r10]
.LVL872:
	bl	W_GetNumForName
.LVL873:
	mov	r2, #4
	mov	ip, #6
	mov	r3, r0
	str	r2, [sp, #4]
	mov	r1, r4
	sub	r0, r9, #32
	str	ip, [sp]
	mov	r2, #0
	blx	r5
.LVL874:
.L1289:
.LBE958:
	.loc 1 5363 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1346:
	.cfi_restore_state
.LBB959:
	.loc 1 5301 0
	ldr	r4, .L1351+36
	mov	r1, #1
	ldr	r0, [r4, #220]
	bl	Z_Strdup
.LVL875:
	.loc 1 5304 0
	ldr	r2, [r4, #220]
.LBB951:
.LBB952:
	.loc 1 5512 0
	ldr	r8, .L1351+16
	.loc 1 5513 0
	ldrb	r3, [r2]	@ zero_extendqisi2
.LBE952:
.LBE951:
	.loc 1 5301 0
	mov	r10, r0
.LVL876:
.LBB954:
.LBB953:
	.loc 1 5512 0
	ldr	r0, [r8, #4]
.LVL877:
	.loc 1 5513 0
	cmp	r3, #0
	mov	r1, r0
	beq	.L1291
.LVL878:
.L1293:
	.loc 1 5514 0
	cmp	r3, #10
	.loc 1 5513 0
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
.LVL879:
	.loc 1 5515 0
	addeq	r1, r1, r0
.LVL880:
	.loc 1 5513 0
	cmp	r3, #0
	bne	.L1293
.LVL881:
.L1291:
.LBE953:
.LBE954:
	.loc 1 5305 0
	mov	r6, r10
.LBB955:
	.loc 1 5310 0
	mov	fp, #0
	.loc 1 5313 0
	mov	r9, #10
.LBE955:
	.loc 1 5304 0
	add	r1, r1, r1, lsr #31
.LVL882:
	mov	r7, r1, asr #1
	ldrb	r3, [r10]	@ zero_extendqisi2
	rsb	r7, r7, #100
.LVL883:
.L1294:
	.loc 1 5305 0
	cmp	r3, #0
	beq	.L1298
.LVL884:
.LBB956:
	.loc 1 5308 0
	cmp	r3, #10
	mov	r5, r6
	bne	.L1296
	b	.L1297
.LVL885:
.L1349:
	.loc 1 5308 0 is_stmt 0 discriminator 1
	cmp	r4, #10
	beq	.L1297
.LVL886:
.L1296:
	.loc 1 5308 0
	ldrb	r4, [r5, #1]!	@ zero_extendqisi2
.LVL887:
	cmp	r4, #0
	bne	.L1349
	.loc 1 5310 0 is_stmt 1
	strb	r4, [r5]
	.loc 1 5311 0
	mov	r0, r6
	bl	M_StringWidth
.LVL888:
	add	r0, r0, r0, lsr #31
	mov	r0, r0, asr #1
	rsb	r0, r0, #160
	mov	r1, r7
	mov	r2, r6
	mov	r3, #6
	bl	M_WriteText
.LVL889:
	.loc 1 5313 0
	strb	r4, [r5]
.LVL890:
.L1298:
.LBE956:
	.loc 1 5316 0
	mov	r0, r10
.LBE959:
	.loc 1 5363 0
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
.LVL891:
.LBB960:
	.loc 1 5316 0
	b	Z_Free
.LVL892:
.L1297:
	.cfi_restore_state
.LBB957:
	.loc 1 5311 0
	mov	r0, r6
	.loc 1 5310 0
	strb	fp, [r5]
	.loc 1 5311 0
	bl	M_StringWidth
.LVL893:
	mov	r2, r6
	.loc 1 5313 0
	mov	r6, r5
	.loc 1 5311 0
	add	r0, r0, r0, lsr #31
	mov	r0, r0, asr #1
	mov	r1, r7
	mov	r3, #6
	rsb	r0, r0, #160
	bl	M_WriteText
.LVL894:
	.loc 1 5312 0
	ldr	r2, [r8, #4]
.LVL895:
	.loc 1 5313 0
	strb	r9, [r6], #1
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	.loc 1 5312 0
	add	r7, r7, r2
.LVL896:
	b	.L1294
.LVL897:
.L1348:
.LBE957:
.LBE960:
.LBB961:
	.loc 1 5340 0
	mov	r7, r6
	ldr	r10, .L1351+20
	b	.L1308
.LVL898:
.L1307:
	.loc 1 5341 0 discriminator 2
	cmp	r5, r7
	.loc 1 5346 0 discriminator 2
	add	r4, r4, #16
.LVL899:
	.loc 1 5341 0 discriminator 2
	ble	.L1350
.LVL900:
.L1308:
	.loc 1 5343 0
	ldr	r2, [r3, #8]
	.loc 1 5341 0
	add	r7, r7, #1
.LVL901:
	.loc 1 5343 0
	add	r0, r2, r6
	ldrb	r1, [r0, #2]	@ zero_extendqisi2
	add	r6, r6, #24
	cmp	r1, #0
	beq	.L1307
	.loc 1 5344 0
	add	r0, r0, #2
	ldr	fp, [r10]
	bl	W_GetNumForName
.LVL902:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, r9
	mov	r1, r4
	mov	r2, #0
	blx	fp
.LVL903:
	.loc 1 5341 0
	cmp	r5, r7
	ldr	r3, [r8]
	.loc 1 5346 0
	add	r4, r4, #16
.LVL904:
	.loc 1 5341 0
	bgt	.L1308
.L1350:
	ldrsh	r4, [r3, #18]
.LVL905:
	b	.L1302
.LVL906:
.L1320:
.LBB949:
.LBB948:
.LBB946:
	.loc 1 5512 0
	mov	r1, r0
	b	.L1310
.LVL907:
.L1319:
	ldr	r10, .L1351+20
	b	.L1302
.L1352:
	.align	2
.L1351:
	.word	messageToPrint
	.word	inhelpscreens
	.word	menuactive
	.word	currentMenu
	.word	hu_font
	.word	V_DrawNumPatch
	.word	whichSkull
	.word	itemOn
	.word	.LANCHOR2+48
	.word	.LANCHOR1
.LBE946:
.LBE948:
.LBE949:
.LBE961:
	.cfi_endproc
.LFE103:
	.size	M_Drawer, .-M_Drawer
	.align	2
	.global	M_DrawTitle
	.type	M_DrawTitle, %function
M_DrawTitle:
.LFB115:
	.loc 1 5567 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL908:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 5567 0
	mov	r8, r0
	mov	r4, r1
.LVL909:
.LBB972:
.LBB973:
	.loc 2 132 0
	mov	r0, r2
.LVL910:
	mov	r1, #0
.LVL911:
	mvn	r2, #0
.LVL912:
.LBE973:
.LBE972:
	.loc 1 5567 0
	mov	r7, r3
	ldr	r5, [sp, #24]
	ldr	r6, [sp, #28]
.LBB975:
.LBB974:
	.loc 2 132 0
	bl	W_FindNumFromName
.LVL913:
.LBE974:
.LBE975:
	.loc 1 5570 0
	subs	r3, r0, #0
	blt	.L1354
.LVL914:
.LBB976:
	.loc 1 5573 0
	cmp	r7, #6
	moveq	r1, #4
	movne	r1, #6
.LVL915:
	.loc 1 5575 0
	ldr	r2, .L1363
	str	r1, [sp, #28]
	str	r7, [sp, #24]
	mov	r0, r8
	mov	r1, r4
.LBE976:
	.loc 1 5584 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL916:
.LBB977:
	.loc 1 5575 0
	ldr	ip, [r2]
	mov	r2, #0
	bx	ip	@ indirect register sibling call
.LVL917:
.L1354:
	.cfi_restore_state
.LBE977:
.LBB978:
.LBB979:
	.loc 1 5580 0
	mov	r0, r5
	bl	M_StringWidth
.LVL918:
.LBB980:
.LBB981:
	.loc 1 5513 0
	ldrb	ip, [r5]	@ zero_extendqisi2
.LBE981:
.LBE980:
	.loc 1 5580 0
	add	r0, r0, r0, lsr #31
.LBB986:
.LBB982:
	.loc 1 5512 0
	ldr	r3, .L1363+4
.LBE982:
.LBE986:
	.loc 1 5580 0
	mov	r0, r0, asr #1
.LBB987:
.LBB983:
	.loc 1 5513 0
	cmp	ip, #0
.LBE983:
.LBE987:
	.loc 1 5580 0
	rsb	r0, r0, #160
	.loc 1 5581 0
	add	r1, r4, #8
.LVL919:
.LBB988:
.LBB984:
	.loc 1 5512 0
	ldr	r3, [r3, #4]
.LVL920:
	.loc 1 5513 0
	beq	.L1360
	mov	lr, r5
	mov	r4, r3
.LVL921:
.L1358:
	.loc 1 5514 0
	cmp	ip, #10
	.loc 1 5513 0
	ldrb	ip, [lr, #1]!	@ zero_extendqisi2
	.loc 1 5515 0
	addeq	r4, r4, r3
.LVL922:
	.loc 1 5513 0
	cmp	ip, #0
	bne	.L1358
.L1356:
.LBE984:
.LBE988:
	.loc 1 5581 0
	add	r4, r4, r4, lsr #31
.LVL923:
	.loc 1 5580 0
	sub	r1, r1, r4, asr #1
	mov	r2, r5
	mov	r3, r6
.LVL924:
.LBE979:
.LBE978:
	.loc 1 5584 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL925:
.LBB991:
.LBB990:
	.loc 1 5580 0
	b	M_WriteText
.LVL926:
.L1360:
	.cfi_restore_state
.LBB989:
.LBB985:
	.loc 1 5512 0
	mov	r4, r3
.LVL927:
	b	.L1356
.L1364:
	.align	2
.L1363:
	.word	V_DrawNumPatch
	.word	hu_font
.LBE985:
.LBE989:
.LBE990:
.LBE991:
	.cfi_endproc
.LFE115:
	.size	M_DrawTitle, .-M_DrawTitle
	.align	2
	.global	M_DrawSetup
	.type	M_DrawSetup, %function
M_DrawSetup:
.LFB57:
	.loc 1 1676 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1678 0
	mov	r2, #5
	.loc 1 1676 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 1678 0
	ldr	r3, .L1367
	.loc 1 1676 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 1678 0
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r0, #124
	mov	r1, #15
	ldr	r2, .L1367+4
	mov	r3, #6
	bl	M_DrawTitle
.LVL928:
	.loc 1 1679 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1368:
	.align	2
.L1367:
	.word	.LC81
	.word	.LC80
	.cfi_endproc
.LFE57:
	.size	M_DrawSetup, .-M_DrawSetup
	.align	2
	.global	M_DrawKeybnd
	.type	M_DrawKeybnd, %function
M_DrawKeybnd:
.LFB65:
	.loc 1 2332 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2333 0
	mov	r1, #2
	.loc 1 2332 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB992:
.LBB993:
	.loc 1 130 0
	ldr	r3, .L1378
.LBE993:
.LBE992:
	.loc 1 2333 0
	ldr	r2, .L1378+4
.LBB998:
.LBB994:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE994:
.LBE998:
	.loc 1 2332 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB999:
.LBB995:
	.loc 1 130 0
	cmp	r3, #0
.LBE995:
.LBE999:
	.loc 1 2333 0
	strb	r1, [r2]
.LVL929:
.LBB1000:
.LBB996:
	.loc 1 130 0
	bne	.L1376
.L1370:
.LBE996:
.LBE1000:
	.loc 1 2340 0
	mov	r2, #5
	ldr	r3, .L1378+8
	mov	r0, #84
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1378+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL930:
	.loc 1 2341 0
	bl	M_DrawInstructions
.LVL931:
	.loc 1 2342 0
	ldr	r3, .L1378+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL932:
	.loc 1 2347 0
	ldr	r3, .L1378+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1377
	.loc 1 2349 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1377:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 2348 0
	b	M_DrawDefVerify
.LVL933:
.L1376:
	.cfi_restore_state
.LBB1001:
.LBB997:
	bl	M_DrawBackground.part.1.constprop.27
.LVL934:
	b	.L1370
.L1379:
	.align	2
.L1378:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC83
	.word	.LC82
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE997:
.LBE1001:
	.cfi_endproc
.LFE65:
	.size	M_DrawKeybnd, .-M_DrawKeybnd
	.align	2
	.global	M_DrawWeapons
	.type	M_DrawWeapons, %function
M_DrawWeapons:
.LFB67:
	.loc 1 2444 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2445 0
	mov	r1, #2
	.loc 1 2444 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1002:
.LBB1003:
	.loc 1 130 0
	ldr	r3, .L1389
.LBE1003:
.LBE1002:
	.loc 1 2445 0
	ldr	r2, .L1389+4
.LBB1008:
.LBB1004:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1004:
.LBE1008:
	.loc 1 2444 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1009:
.LBB1005:
	.loc 1 130 0
	cmp	r3, #0
.LBE1005:
.LBE1009:
	.loc 1 2445 0
	strb	r1, [r2]
.LVL935:
.LBB1010:
.LBB1006:
	.loc 1 130 0
	bne	.L1387
.L1381:
.LBE1006:
.LBE1010:
	.loc 1 2450 0
	mov	r2, #5
	ldr	r3, .L1389+8
	mov	r0, #109
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1389+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL936:
	.loc 1 2451 0
	bl	M_DrawInstructions
.LVL937:
	.loc 1 2452 0
	ldr	r3, .L1389+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL938:
	.loc 1 2457 0
	ldr	r3, .L1389+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1388
	.loc 1 2459 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1388:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 2458 0
	b	M_DrawDefVerify
.LVL939:
.L1387:
	.cfi_restore_state
.LBB1011:
.LBB1007:
	bl	M_DrawBackground.part.1.constprop.27
.LVL940:
	b	.L1381
.L1390:
	.align	2
.L1389:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC85
	.word	.LC84
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1007:
.LBE1011:
	.cfi_endproc
.LFE67:
	.size	M_DrawWeapons, .-M_DrawWeapons
	.align	2
	.global	M_DrawStatusHUD
	.type	M_DrawStatusHUD, %function
M_DrawStatusHUD:
.LFB69:
	.loc 1 2531 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2532 0
	mov	r1, #2
	.loc 1 2531 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1012:
.LBB1013:
	.loc 1 130 0
	ldr	r3, .L1400
.LBE1013:
.LBE1012:
	.loc 1 2532 0
	ldr	r2, .L1400+4
.LBB1018:
.LBB1014:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1014:
.LBE1018:
	.loc 1 2531 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1019:
.LBB1015:
	.loc 1 130 0
	cmp	r3, #0
.LBE1015:
.LBE1019:
	.loc 1 2532 0
	strb	r1, [r2]
.LVL941:
.LBB1020:
.LBB1016:
	.loc 1 130 0
	bne	.L1398
.L1392:
.LBE1016:
.LBE1020:
	.loc 1 2537 0
	mov	r2, #5
	ldr	r3, .L1400+8
	mov	r0, #59
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1400+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL942:
	.loc 1 2538 0
	bl	M_DrawInstructions
.LVL943:
	.loc 1 2539 0
	ldr	r3, .L1400+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL944:
	.loc 1 2544 0
	ldr	r3, .L1400+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1399
	.loc 1 2546 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1399:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 2545 0
	b	M_DrawDefVerify
.LVL945:
.L1398:
	.cfi_restore_state
.LBB1021:
.LBB1017:
	bl	M_DrawBackground.part.1.constprop.27
.LVL946:
	b	.L1392
.L1401:
	.align	2
.L1400:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC87
	.word	.LC86
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1017:
.LBE1021:
	.cfi_endproc
.LFE69:
	.size	M_DrawStatusHUD, .-M_DrawStatusHUD
	.align	2
	.global	M_DrawAutoMap
	.type	M_DrawAutoMap, %function
M_DrawAutoMap:
.LFB72:
	.loc 1 2684 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2685 0
	mov	r1, #2
	.loc 1 2684 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB1026:
.LBB1027:
	.loc 1 130 0
	ldr	r3, .L1416
.LBE1027:
.LBE1026:
	.loc 1 2685 0
	ldr	r2, .L1416+4
.LBB1032:
.LBB1028:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1028:
.LBE1032:
	.loc 1 2684 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
.LBB1033:
.LBB1029:
	.loc 1 130 0
	cmp	r3, #0
.LBE1029:
.LBE1033:
	.loc 1 2685 0
	strb	r1, [r2]
.LVL947:
.LBB1034:
.LBB1030:
	.loc 1 130 0
	bne	.L1413
.L1403:
.LBE1030:
.LBE1034:
	.loc 1 2690 0
	mov	r2, #5
	ldr	r3, .L1416+8
	mov	r0, #109
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1416+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL948:
	.loc 1 2691 0
	bl	M_DrawInstructions
.LVL949:
	.loc 1 2692 0
	ldr	r3, .L1416+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL950:
	.loc 1 2696 0
	ldr	r3, .L1416+20
	ldr	r2, [r3, #36]
	cmp	r2, #0
	bne	.L1414
	.loc 1 2702 0
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1415
	.loc 1 2704 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1415:
	.cfi_restore_state
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 2703 0
	b	M_DrawDefVerify
.LVL951:
.L1413:
	.cfi_restore_state
.LBB1035:
.LBB1031:
	bl	M_DrawBackground.part.1.constprop.27
.LVL952:
	b	.L1403
.L1414:
.LBE1031:
.LBE1035:
.LBB1036:
.LBB1037:
	.loc 1 2669 0
	ldr	r8, .L1416+24
	ldr	r0, .L1416+28
	ldr	r4, [r8]
	mov	r7, #6
	bl	W_GetNumForName
.LVL953:
	mov	r6, #4
	mov	r3, r0
	mov	r1, #31
	str	r7, [sp]
	str	r6, [sp, #4]
	mov	r0, #91
	mov	r2, #0
	blx	r4
.LVL954:
	.loc 1 2674 0
	ldr	r2, .L1416+32
	.loc 1 2675 0
	ldr	r3, .L1416+36
	.loc 1 2677 0
	ldr	r0, .L1416+40
	.loc 1 2674 0
	ldr	r4, [r2]
	.loc 1 2675 0
	ldr	r5, [r3]
	.loc 1 2677 0
	ldr	r8, [r8]
	bl	W_GetNumForName
.LVL955:
	.loc 1 2674 0
	mov	r4, r4, asl #3
	.loc 1 2675 0
	mov	r5, r5, asl #3
	.loc 1 2674 0
	add	r4, r4, #95
.LVL956:
	.loc 1 2675 0
	add	r5, r5, #35
.LVL957:
	.loc 1 2677 0
	mov	r3, r0
	str	r7, [sp]
	mov	r1, r5
	str	r6, [sp, #4]
	mov	r0, r4
	mov	r2, #0
	blx	r8
.LVL958:
.LBE1037:
.LBE1036:
	.loc 1 2704 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL959:
.L1417:
	.align	2
.L1416:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC89
	.word	.LC88
	.word	current_setup_menu
	.word	.LANCHOR1
	.word	V_DrawNumPatch
	.word	.LC90
	.word	color_palette_x
	.word	color_palette_y
	.word	.LC91
	.cfi_endproc
.LFE72:
	.size	M_DrawAutoMap, .-M_DrawAutoMap
	.align	2
	.global	M_DrawEnemy
	.type	M_DrawEnemy, %function
M_DrawEnemy:
.LFB74:
	.loc 1 2811 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2812 0
	mov	r1, #2
	.loc 1 2811 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1038:
.LBB1039:
	.loc 1 130 0
	ldr	r3, .L1427
.LBE1039:
.LBE1038:
	.loc 1 2812 0
	ldr	r2, .L1427+4
.LBB1044:
.LBB1040:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1040:
.LBE1044:
	.loc 1 2811 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1045:
.LBB1041:
	.loc 1 130 0
	cmp	r3, #0
.LBE1041:
.LBE1045:
	.loc 1 2812 0
	strb	r1, [r2]
.LVL960:
.LBB1046:
.LBB1042:
	.loc 1 130 0
	bne	.L1425
.L1419:
.LBE1042:
.LBE1046:
	.loc 1 2817 0
	mov	r2, #5
	ldr	r3, .L1427+8
	mov	r0, #114
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1427+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL961:
	.loc 1 2818 0
	bl	M_DrawInstructions
.LVL962:
	.loc 1 2819 0
	ldr	r3, .L1427+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL963:
	.loc 1 2824 0
	ldr	r3, .L1427+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1426
	.loc 1 2826 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1426:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 2825 0
	b	M_DrawDefVerify
.LVL964:
.L1425:
	.cfi_restore_state
.LBB1047:
.LBB1043:
	bl	M_DrawBackground.part.1.constprop.27
.LVL965:
	b	.L1419
.L1428:
	.align	2
.L1427:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC93
	.word	.LC92
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1043:
.LBE1047:
	.cfi_endproc
.LFE74:
	.size	M_DrawEnemy, .-M_DrawEnemy
	.align	2
	.global	M_DrawGeneral
	.type	M_DrawGeneral, %function
M_DrawGeneral:
.LFB79:
	.loc 1 3140 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 3141 0
	mov	r1, #2
	.loc 1 3140 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1048:
.LBB1049:
	.loc 1 130 0
	ldr	r3, .L1438
.LBE1049:
.LBE1048:
	.loc 1 3141 0
	ldr	r2, .L1438+4
.LBB1054:
.LBB1050:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1050:
.LBE1054:
	.loc 1 3140 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1055:
.LBB1051:
	.loc 1 130 0
	cmp	r3, #0
.LBE1051:
.LBE1055:
	.loc 1 3141 0
	strb	r1, [r2]
.LVL966:
.LBB1056:
.LBB1052:
	.loc 1 130 0
	bne	.L1436
.L1430:
.LBE1052:
.LBE1056:
	.loc 1 3146 0
	mov	r2, #5
	ldr	r3, .L1438+8
	mov	r0, #114
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1438+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL967:
	.loc 1 3147 0
	bl	M_DrawInstructions
.LVL968:
	.loc 1 3148 0
	ldr	r3, .L1438+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL969:
	.loc 1 3153 0
	ldr	r3, .L1438+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1437
	.loc 1 3155 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1437:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 3154 0
	b	M_DrawDefVerify
.LVL970:
.L1436:
	.cfi_restore_state
.LBB1057:
.LBB1053:
	bl	M_DrawBackground.part.1.constprop.27
.LVL971:
	b	.L1430
.L1439:
	.align	2
.L1438:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC95
	.word	.LC94
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1053:
.LBE1057:
	.cfi_endproc
.LFE79:
	.size	M_DrawGeneral, .-M_DrawGeneral
	.align	2
	.global	M_DrawCompat
	.type	M_DrawCompat, %function
M_DrawCompat:
.LFB81:
	.loc 1 3333 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 3334 0
	mov	r1, #2
	.loc 1 3333 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1058:
.LBB1059:
	.loc 1 130 0
	ldr	r3, .L1449
.LBE1059:
.LBE1058:
	.loc 1 3334 0
	ldr	r2, .L1449+4
.LBB1064:
.LBB1060:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1060:
.LBE1064:
	.loc 1 3333 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1065:
.LBB1061:
	.loc 1 130 0
	cmp	r3, #0
.LBE1061:
.LBE1065:
	.loc 1 3334 0
	strb	r1, [r2]
.LVL972:
.LBB1066:
.LBB1062:
	.loc 1 130 0
	bne	.L1447
.L1441:
.LBE1062:
.LBE1066:
	.loc 1 3338 0
	mov	r2, #5
	ldr	r3, .L1449+8
	mov	r0, #52
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1449+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL973:
	.loc 1 3339 0
	bl	M_DrawInstructions
.LVL974:
	.loc 1 3340 0
	ldr	r3, .L1449+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL975:
	.loc 1 3345 0
	ldr	r3, .L1449+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1448
	.loc 1 3347 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1448:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 3346 0
	b	M_DrawDefVerify
.LVL976:
.L1447:
	.cfi_restore_state
.LBB1067:
.LBB1063:
	bl	M_DrawBackground.part.1.constprop.27
.LVL977:
	b	.L1441
.L1450:
	.align	2
.L1449:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC97
	.word	.LC96
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1063:
.LBE1067:
	.cfi_endproc
.LFE81:
	.size	M_DrawCompat, .-M_DrawCompat
	.align	2
	.global	M_DrawMessages
	.type	M_DrawMessages, %function
M_DrawMessages:
.LFB83:
	.loc 1 3454 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 3455 0
	mov	r1, #2
	.loc 1 3454 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1068:
.LBB1069:
	.loc 1 130 0
	ldr	r3, .L1460
.LBE1069:
.LBE1068:
	.loc 1 3455 0
	ldr	r2, .L1460+4
.LBB1074:
.LBB1070:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1070:
.LBE1074:
	.loc 1 3454 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1075:
.LBB1071:
	.loc 1 130 0
	cmp	r3, #0
.LBE1071:
.LBE1075:
	.loc 1 3455 0
	strb	r1, [r2]
.LVL978:
.LBB1076:
.LBB1072:
	.loc 1 130 0
	bne	.L1458
.L1452:
.LBE1072:
.LBE1076:
	.loc 1 3460 0
	mov	r2, #5
	ldr	r3, .L1460+8
	mov	r0, #103
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1460+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL979:
	.loc 1 3461 0
	bl	M_DrawInstructions
.LVL980:
	.loc 1 3462 0
	ldr	r3, .L1460+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL981:
	.loc 1 3463 0
	ldr	r3, .L1460+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1459
	.loc 1 3465 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1459:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 3464 0
	b	M_DrawDefVerify
.LVL982:
.L1458:
	.cfi_restore_state
.LBB1077:
.LBB1073:
	bl	M_DrawBackground.part.1.constprop.27
.LVL983:
	b	.L1452
.L1461:
	.align	2
.L1460:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC99
	.word	.LC98
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1073:
.LBE1077:
	.cfi_endproc
.LFE83:
	.size	M_DrawMessages, .-M_DrawMessages
	.align	2
	.global	M_DrawChatStrings
	.type	M_DrawChatStrings, %function
M_DrawChatStrings:
.LFB85:
	.loc 1 3528 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 3529 0
	mov	r1, #2
	.loc 1 3528 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB1078:
.LBB1079:
	.loc 1 130 0
	ldr	r3, .L1471
.LBE1079:
.LBE1078:
	.loc 1 3529 0
	ldr	r2, .L1471+4
.LBB1084:
.LBB1080:
	.loc 1 130 0
	ldr	r3, [r3, #1540]
.LBE1080:
.LBE1084:
	.loc 1 3528 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB1085:
.LBB1081:
	.loc 1 130 0
	cmp	r3, #0
.LBE1081:
.LBE1085:
	.loc 1 3529 0
	strb	r1, [r2]
.LVL984:
.LBB1086:
.LBB1082:
	.loc 1 130 0
	bne	.L1469
.L1463:
.LBE1082:
.LBE1086:
	.loc 1 3534 0
	mov	r2, #5
	ldr	r3, .L1471+8
	mov	r0, #83
	mov	r1, #2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, .L1471+12
	mov	r3, #6
	bl	M_DrawTitle
.LVL985:
	.loc 1 3535 0
	bl	M_DrawInstructions
.LVL986:
	.loc 1 3536 0
	ldr	r3, .L1471+16
	ldr	r0, [r3]
	bl	M_DrawScreenItems
.LVL987:
	.loc 1 3541 0
	ldr	r3, .L1471+20
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1470
	.loc 1 3543 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1470:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 3542 0
	b	M_DrawDefVerify
.LVL988:
.L1469:
	.cfi_restore_state
.LBB1087:
.LBB1083:
	bl	M_DrawBackground.part.1.constprop.27
.LVL989:
	b	.L1463
.L1472:
	.align	2
.L1471:
	.word	.LANCHOR0
	.word	menuactive
	.word	.LC101
	.word	.LC100
	.word	current_setup_menu
	.word	.LANCHOR1
.LBE1083:
.LBE1087:
	.cfi_endproc
.LFE85:
	.size	M_DrawChatStrings, .-M_DrawChatStrings
	.align	2
	.global	M_DrawCredits
	.type	M_DrawCredits, %function
M_DrawCredits:
.LFB99:
	.loc 1 4092 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 4093 0
	mov	r1, #1
	.loc 1 4092 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 4095 0
	ldr	r3, .L1477
	ldr	ip, .L1477+4
	ldrb	lr, [r3]	@ zero_extendqisi2
	.loc 1 4093 0
	ldr	r2, .L1477+8
	.loc 1 4095 0
	ldr	r3, .L1477+12
	cmp	lr, #0
	.loc 1 4092 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 4095 0
	ldr	r0, .L1477+16
	.loc 1 4093 0
	str	r1, [r2]
	.loc 1 4095 0
	movne	r0, ip
	ldr	r3, [r3]
	mov	r1, #0
	blx	r3
.LVL990:
	.loc 1 4096 0
	mov	r3, #5
	ldr	r2, .L1477+20
	mov	r0, #115
	stmia	sp, {r2, r3}
	mov	r1, #9
	ldr	r2, .L1477+24
	bl	M_DrawTitle
.LVL991:
	.loc 1 4098 0
	ldr	r0, .L1477+28
	.loc 1 4099 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 4098 0
	b	M_DrawScreenItems
.LVL992:
.L1478:
	.align	2
.L1477:
	.word	gamemode
	.word	.LC103
	.word	inhelpscreens
	.word	V_DrawBackground
	.word	.LC102
	.word	.LC105
	.word	.LC104
	.word	.LANCHOR0+3532
	.cfi_endproc
.LFE99:
	.size	M_DrawCredits, .-M_DrawCredits
	.align	2
	.global	M_DrawReadThis1
	.type	M_DrawReadThis1, %function
M_DrawReadThis1:
.LFB15:
	.loc 1 470 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 471 0
	mov	r2, #1
	.loc 1 470 0
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 472 0
	ldr	r1, .L1485
	.loc 1 471 0
	ldr	r3, .L1485+4
	.loc 1 472 0
	ldrb	r4, [r1]	@ zero_extendqisi2
	.loc 1 470 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 472 0
	cmp	r4, #0
	.loc 1 471 0
	str	r2, [r3]
	.loc 1 472 0
	beq	.L1484
	.loc 1 476 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 475 0
	b	M_DrawCredits
.LVL993:
.L1484:
	.cfi_restore_state
.LBB1090:
.LBB1091:
	.loc 1 473 0
	ldr	r3, .L1485+8
	ldr	r0, .L1485+12
	ldr	r5, [r3]
	bl	W_GetNumForName
.LVL994:
	mov	r1, #6
	mov	r2, #4
	mov	r3, r0
	stmia	sp, {r1, r2}
	mov	r0, r4
	mov	r1, r4
	mov	r2, r4
	blx	r5
.LVL995:
.LBE1091:
.LBE1090:
	.loc 1 476 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L1486:
	.align	2
.L1485:
	.word	gamemode
	.word	inhelpscreens
	.word	V_DrawNumPatch
	.word	.LC106
	.cfi_endproc
.LFE15:
	.size	M_DrawReadThis1, .-M_DrawReadThis1
	.align	2
	.global	M_DrawReadThis2
	.type	M_DrawReadThis2, %function
M_DrawReadThis2:
.LFB16:
	.loc 1 484 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 485 0
	mov	r1, #1
	.loc 1 486 0
	ldr	r3, .L1491
	.loc 1 485 0
	ldr	r2, .L1491+4
	.loc 1 486 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 485 0
	str	r1, [r2]
	.loc 1 486 0
	cmp	r3, #0
	beq	.L1490
	.loc 1 484 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB1094:
.LBB1095:
	.loc 1 489 0
	ldr	r3, .L1491+8
.LBE1095:
.LBE1094:
	.loc 1 484 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB1097:
.LBB1096:
	.loc 1 489 0
	ldr	r0, .L1491+12
	ldr	r4, [r3]
	bl	W_GetNumForName
.LVL996:
	mov	r1, #6
	mov	r3, r0
	mov	r2, #4
	mov	r0, #0
	stmia	sp, {r1, r2}
	mov	r1, r0
	mov	r2, r0
	blx	r4
.LVL997:
.LBE1096:
.LBE1097:
	.loc 1 490 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L1490:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
	.loc 1 487 0
	b	M_DrawCredits
.LVL998:
.L1492:
	.align	2
.L1491:
	.word	gamemode
	.word	inhelpscreens
	.word	V_DrawNumPatch
	.word	.LC107
	.cfi_endproc
.LFE16:
	.size	M_DrawReadThis2, .-M_DrawReadThis2
	.align	2
	.global	M_InitHelpScreen
	.type	M_InitHelpScreen, %function
M_InitHelpScreen:
.LFB116:
	.loc 1 5596 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL999:
	.loc 1 5600 0
	ldr	r3, .L1515
	ldr	r3, [r3, #1548]
	tst	r3, #32768
	bxne	lr
	.loc 1 5602 0
	ldr	r3, .L1515+4
	.loc 1 5596 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 5605 0
	mov	r8, #8192
	ldr	r4, .L1515+8
	.loc 1 5602 0
	ldrb	r7, [r3]	@ zero_extendqisi2
	b	.L1501
.LVL1000:
.L1514:
	.loc 1 5602 0 is_stmt 0 discriminator 1
	cmp	r7, #0
	bne	.L1497
	.loc 1 5604 0 is_stmt 1
	mov	r0, r5
	ldr	r1, .L1515+12
	mov	r2, #3
	.loc 1 5603 0
	str	r8, [r4, #-32]
	.loc 1 5604 0
	bl	strncmp
.LVL1001:
	cmp	r0, #0
	bne	.L1497
.L1498:
	.loc 1 5605 0
	str	r8, [r4, #-32]
.L1497:
	.loc 1 5606 0
	mov	r0, r5
	ldr	r1, .L1515+16
	mov	r2, #3
	bl	strncmp
.LVL1002:
	cmp	r0, #0
	bne	.L1500
	.loc 1 5606 0 is_stmt 0 discriminator 1
	cmp	r7, #2
	.loc 1 5607 0 is_stmt 1 discriminator 1
	strne	r8, [r4, #-32]
.L1500:
.LVL1003:
	.loc 1 5600 0
	ldr	r3, [r6, #4]
	add	r4, r4, #36
.LVL1004:
	tst	r3, #32768
	bne	.L1513
.LVL1005:
.L1501:
	.loc 1 5602 0
	ldr	r5, [r4, #-36]
	ldr	r1, .L1515+20
	mov	r0, r5
	mov	r2, #6
	bl	strncmp
.LVL1006:
	cmp	r0, #0
	mov	r6, r4
	beq	.L1514
	.loc 1 5604 0
	mov	r0, r5
	ldr	r1, .L1515+12
	mov	r2, #3
	bl	strncmp
.LVL1007:
	cmp	r0, #0
	bne	.L1497
	.loc 1 5604 0 is_stmt 0 discriminator 1
	cmp	r7, #0
	bne	.L1497
	b	.L1498
.LVL1008:
.L1513:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1516:
	.align	2
.L1515:
	.word	.LANCHOR0
	.word	gamemode
	.word	.LANCHOR0+1580
	.word	.LC109
	.word	.LC110
	.word	.LC108
	.cfi_endproc
.LFE116:
	.size	M_InitHelpScreen, .-M_InitHelpScreen
	.align	2
	.global	M_Init
	.type	M_Init, %function
M_Init:
.LFB117:
	.loc 1 5616 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1009:
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
	ldr	r6, .L1542
	add	r7, r6, #36
.LVL1010:
.L1526:
.LBB1100:
.LBB1101:
	.loc 1 3670 0
	ldr	r5, [r6, #4]!
.LVL1011:
	ldr	r4, [r5]
	cmp	r4, #0
	bne	.L1540
	b	.L1519
.LVL1012:
.L1520:
	.loc 1 3671 0
	add	r4, r4, #36
.LVL1013:
.L1540:
	ldr	r2, [r4, #4]
	tst	r2, #32768
	bne	.L1541
	.loc 1 3672 0
	ldr	r3, .L1542+4
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L1520
	.loc 1 3673 0
	ldr	r0, [r4, #16]
	bl	M_LookupDefault
.LVL1014:
	cmp	r0, #0
	.loc 1 3676 0
	strne	r0, [r4, #16]
	strne	r4, [r0, #40]
	.loc 1 3673 0
	bne	.L1520
	.loc 1 3674 0
	ldr	r0, .L1542+8
.LVL1015:
	ldr	r1, [r4, #16]
	bl	I_Error
.LVL1016:
	b	.L1520
.L1541:
.LVL1017:
	.loc 1 3670 0
	ldr	r4, [r5, #4]!
.LVL1018:
	cmp	r4, #0
	bne	.L1540
.LVL1019:
.L1519:
	.loc 1 3669 0
	cmp	r6, r7
	bne	.L1526
.LBE1101:
.LBE1100:
	.loc 1 5619 0
	mov	r3, #0
	.loc 1 5622 0
	mov	lr, #10
	.loc 1 5627 0
	mvn	r1, #0
	.loc 1 5623 0
	ldr	r0, .L1542+12
	.loc 1 5618 0
	ldr	ip, .L1542+16
	.loc 1 5623 0
	ldr	r0, [r0]
	.loc 1 5632 0
	ldr	r2, .L1542+20
	.loc 1 5623 0
	ldr	r4, .L1542+24
	.loc 1 5620 0
	ldrh	fp, [ip, #68]
	ldr	r5, .L1542+28
	.loc 1 5623 0
	sub	r0, r0, #3
	.loc 1 5632 0
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 5623 0
	str	r0, [r4]
	.loc 1 5620 0
	strh	fp, [r5]	@ movhi
	.loc 1 5618 0
	ldr	r10, .L1542+32
	.loc 1 5619 0
	ldr	r9, .L1542+36
	.loc 1 5621 0
	ldr	r8, .L1542+40
	.loc 1 5624 0
	ldr	r7, .L1542+44
	.loc 1 5625 0
	ldr	r6, .L1542+48
	.loc 1 5626 0
	ldr	r4, .L1542+52
	.loc 1 5622 0
	ldr	r0, .L1542+56
	.loc 1 5627 0
	ldr	fp, .L1542+60
	.loc 1 5618 0
	add	r5, ip, #48
	.loc 1 5632 0
	cmp	r2, #1
	.loc 1 5618 0
	str	r5, [r10]
	.loc 1 5619 0
	strb	r3, [r9]
	.loc 1 5621 0
	strh	r3, [r8]	@ movhi
	.loc 1 5624 0
	str	r3, [r7]
	.loc 1 5625 0
	str	r3, [r6, #220]
	.loc 1 5626 0
	str	r3, [r4]
	.loc 1 5622 0
	strh	lr, [r0]	@ movhi
	.loc 1 5627 0
	str	r1, [fp]
	.loc 1 5632 0
	beq	.L1528
	bcc	.L1529
	cmp	r2, #2
	bne	.L1527
	.loc 1 5644 0
	mov	r6, #165
	.loc 1 5638 0
	ldr	r4, .L1542+64
	.loc 1 5642 0
	ldr	r8, .L1542+68
	.loc 1 5638 0
	sub	lr, r4, #24
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1}
	.loc 1 5639 0
	ldrh	r2, [ip, #48]
	.loc 1 5640 0
	ldrh	r3, [ip, #66]
	.loc 1 5643 0
	ldr	r7, .L1542+72
	.loc 1 5645 0
	ldr	r4, .L1542+76
	.loc 1 5638 0
	stmia	lr, {r0, r1}
	.loc 1 5639 0
	sub	r2, r2, #1
	.loc 1 5640 0
	add	r3, r3, #8
	.loc 1 5641 0
	str	r5, [ip, #1192]
	.loc 1 5639 0
	strh	r2, [ip, #48]	@ movhi
	.loc 1 5640 0
	strh	r3, [ip, #66]	@ movhi
	.loc 1 5644 0
	strh	r6, [ip, #18]	@ movhi
	.loc 1 5642 0
	str	r8, [ip, #12]
	.loc 1 5643 0
	strh	r7, [ip, #16]	@ movhi
	.loc 1 5645 0
	str	r4, [ip, #1488]
.L1527:
	.loc 1 5665 0
	bl	M_InitHelpScreen
.LVL1020:
	.loc 1 5666 0
	bl	M_InitExtendedHelp
.LVL1021:
	.loc 1 5669 0
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
	.loc 1 5668 0
	b	M_ChangeDemoSmoothTurns
.LVL1022:
.L1528:
	.cfi_restore_state
	.loc 1 5653 0
	mov	r3, #15
	strh	r3, [ip, #42]	@ movhi
.L1529:
	.loc 1 5657 0
	ldr	r2, .L1542+80
	ldrh	r3, [r2, #12]
	sub	r3, r3, #1
	strh	r3, [r2, #12]	@ movhi
	.loc 1 5665 0
	bl	M_InitHelpScreen
.LVL1023:
	.loc 1 5666 0
	bl	M_InitExtendedHelp
.LVL1024:
	.loc 1 5669 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 3
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 5668 0
	b	M_ChangeDemoSmoothTurns
.LVL1025:
.L1543:
	.align	2
.L1542:
	.word	.LANCHOR2+8
	.word	8919160
	.word	.LC111
	.word	screenblocks
	.word	.LANCHOR0
	.word	gamemode
	.word	screenSize
	.word	itemOn
	.word	currentMenu
	.word	menuactive
	.word	whichSkull
	.word	messageToPrint
	.word	.LANCHOR1
	.word	messageLastMenuActive
	.word	skullAnimCounter
	.word	quickSaveSlot
	.word	.LANCHOR0+4192
	.word	M_DrawReadThis1
	.word	330
	.word	M_FinishReadThis
	.word	.LANCHOR0+1200
	.cfi_endproc
.LFE117:
	.size	M_Init, .-M_Init
	.global	cred_settings
	.global	helpstrings
	.global	ExtHelpDef
	.global	ExtHelpMenu
	.comm	extended_help_index,4,4
	.comm	extended_help_count,4,4
	.global	chat_settings
	.global	chat_settings1
	.global	mess_settings
	.global	mess_settings1
	.global	comp_settings
	.global	comp_settings3
	.global	comp_settings2
	.global	comp_settings1
	.global	gen_settings
	.global	gen_settings3
	.global	gen_settings2
	.global	gen_settings1
	.global	enem_settings
	.global	enem_settings1
	.comm	palette_background,136,4
	.comm	color_palette_y,4,4
	.comm	color_palette_x,4,4
	.global	auto_settings
	.global	auto_settings2
	.global	auto_settings1
	.global	stat_settings
	.global	stat_settings1
	.global	weap_settings
	.global	weap_settings1
	.comm	mult_screens_index,4,4
	.global	keys_settings
	.global	keys_settings4
	.global	keys_settings3
	.global	keys_settings2
	.global	keys_settings1
	.comm	gather_buffer,6,4
	.comm	gather_count,4,4
	.global	ResetButtonName
	.comm	chat_string_buffer,4,4
	.comm	chat_index,4,4
	.global	CompatDef
	.global	GeneralDef
	.global	ChatStrDef
	.global	MessageDef
	.global	EnemyDef
	.global	AutoMapDef
	.global	StatusHUDDef
	.global	WeaponDef
	.global	KeybndDef
	.global	SetupDef
	.global	Generic_Setup
	.comm	generic_setup_e,1,1
	.global	SetupMenu
	.comm	setup_screen,4,4
	.comm	setup_e,1,1
	.comm	current_setup_menu,4,4
	.global	set_compat_active
	.global	set_general_active
	.global	default_verify
	.global	colorbox_active
	.global	setup_gather
	.global	setup_select
	.global	set_chat_active
	.global	set_mess_active
	.global	set_enemy_active
	.global	set_auto_active
	.global	set_status_active
	.global	set_weapon_active
	.global	set_keybnd_active
	.global	setup_active
	.comm	tempstring,80,4
	.global	MouseDef
	.global	MouseMenu
	.comm	mouse_e,1,1
	.global	SoundDef
	.global	SoundMenu
	.comm	sound_e,1,1
	.global	quitsounds2
	.global	quitsounds
	.global	msgNames
	.global	detailNames
	.global	OptionsDef
	.global	OptionsMenu
	.comm	options_e,1,1
	.global	SaveDef
	.global	SaveMenu
	.global	LoadDef
	.global	LoadMenue
	.comm	load_e,1,1
	.global	NewGameMenu
	.comm	newgame_e,1,1
	.comm	epi,4,4
	.global	EpiDef
	.global	EpisodeMenu
	.comm	episodes_e,1,1
	.global	HelpDef
	.global	ReadDef2
	.global	ReadDef1
	.global	HelpMenu
	.global	ReadMenu2
	.global	ReadMenu1
	.comm	help_e,1,1
	.comm	read_e2,1,1
	.comm	read_e,1,1
	.global	MainDef
	.global	MainMenu
	.comm	main_e,1,1
	.global	NewDef
	.comm	mapcolor_me,4,4
	.comm	currentMenu,4,4
	.global	skullName
	.comm	whichSkull,2,2
	.comm	skullAnimCounter,2,2
	.comm	itemOn,2,2
	.comm	savegamestrings,240,4
	.comm	menuactive,1,1
	.comm	inhelpscreens,4,4
	.comm	saveOldString,24,4
	.comm	saveCharIndex,4,4
	.comm	saveSlot,4,4
	.comm	saveStringEnter,4,4
	.global	menu_background
	.comm	print_warning_about_changes,4,4
	.comm	warning_about_changes,4,4
	.comm	messageRoutine,4,4
	.comm	messageNeedsInput,4,4
	.comm	messageLastMenuActive,4,4
	.comm	messy,4,4
	.comm	messx,4,4
	.comm	messageToPrint,4,4
	.comm	quickSaveSlot,4,4
	.comm	screenSize,4,4
	.comm	screenblocks,4,4
	.global	hide_setup
	.comm	showMessages,4,4
	.comm	mouseSensitivity_vert,4,4
	.comm	mouseSensitivity_horiz,4,4
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
.LC4:
	.ascii	"HELPnn\000"
	.space	3
	.space	2
	.type	setup_screens, %object
	.size	setup_screens, 36
setup_screens:
	.word	keys_settings
	.word	weap_settings
	.word	stat_settings
	.word	auto_settings
	.word	enem_settings
	.word	mess_settings
	.word	chat_settings
	.word	gen_settings
	.word	comp_settings
	.type	skullName, %object
	.size	skullName, 18
skullName:
	.ascii	"M_SKULL1\000"
	.ascii	"M_SKULL2\000"
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ReadDef1, %object
	.size	ReadDef1, 24
ReadDef1:
	.short	1
	.space	2
	.word	MainDef
	.word	ReadMenu1
	.word	M_DrawReadThis1
	.short	330
	.short	175
	.short	0
	.space	2
	.type	ReadDef2, %object
	.size	ReadDef2, 24
ReadDef2:
	.short	1
	.space	2
	.word	ReadDef1
	.word	ReadMenu2
	.word	M_DrawReadThis2
	.short	330
	.short	175
	.short	0
	.space	2
	.type	MainDef, %object
	.size	MainDef, 24
MainDef:
	.short	6
	.space	2
	.word	0
	.word	MainMenu
	.word	M_DrawMainMenu
	.short	97
	.short	64
	.short	0
	.space	2
	.type	OptionsDef, %object
	.size	OptionsDef, 24
OptionsDef:
	.short	8
	.space	2
	.word	MainDef
	.word	OptionsMenu
	.word	M_DrawOptions
	.short	60
	.short	37
	.short	0
	.space	2
	.type	SoundDef, %object
	.size	SoundDef, 24
SoundDef:
	.short	4
	.space	2
	.word	OptionsDef
	.word	SoundMenu
	.word	M_DrawSound
	.short	80
	.short	64
	.short	0
	.space	2
	.type	MouseDef, %object
	.size	MouseDef, 24
MouseDef:
	.short	4
	.space	2
	.word	OptionsDef
	.word	MouseMenu
	.word	M_DrawMouse
	.short	60
	.short	64
	.short	0
	.space	2
	.type	SetupDef, %object
	.size	SetupDef, 24
SetupDef:
	.short	8
	.space	2
	.word	OptionsDef
	.word	SetupMenu
	.word	M_DrawSetup
	.short	59
	.short	37
	.short	0
	.space	2
	.type	KeybndDef, %object
	.size	KeybndDef, 24
KeybndDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawKeybnd
	.short	34
	.short	5
	.short	0
	.space	2
	.type	keys_settings, %object
	.size	keys_settings, 20
keys_settings:
	.word	keys_settings1
	.word	keys_settings2
	.word	keys_settings3
	.word	keys_settings4
	.word	0
	.type	WeaponDef, %object
	.size	WeaponDef, 24
WeaponDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawWeapons
	.short	34
	.short	5
	.short	0
	.space	2
	.type	weap_settings, %object
	.size	weap_settings, 8
weap_settings:
	.word	weap_settings1
	.word	0
	.type	StatusHUDDef, %object
	.size	StatusHUDDef, 24
StatusHUDDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawStatusHUD
	.short	34
	.short	5
	.short	0
	.space	2
	.type	stat_settings, %object
	.size	stat_settings, 8
stat_settings:
	.word	stat_settings1
	.word	0
	.type	AutoMapDef, %object
	.size	AutoMapDef, 24
AutoMapDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawAutoMap
	.short	34
	.short	5
	.short	0
	.space	2
	.type	auto_settings, %object
	.size	auto_settings, 12
auto_settings:
	.word	auto_settings1
	.word	auto_settings2
	.word	0
	.type	EnemyDef, %object
	.size	EnemyDef, 24
EnemyDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawEnemy
	.short	34
	.short	5
	.short	0
	.space	2
	.type	enem_settings, %object
	.size	enem_settings, 8
enem_settings:
	.word	enem_settings1
	.word	0
	.type	GeneralDef, %object
	.size	GeneralDef, 24
GeneralDef:
	.short	1
	.space	2
	.word	OptionsDef
	.word	Generic_Setup
	.word	M_DrawGeneral
	.short	34
	.short	5
	.short	0
	.space	2
	.type	gen_settings, %object
	.size	gen_settings, 16
gen_settings:
	.word	gen_settings1
	.word	gen_settings2
	.word	gen_settings3
	.word	0
	.type	CompatDef, %object
	.size	CompatDef, 24
CompatDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawCompat
	.short	34
	.short	5
	.short	0
	.space	2
	.type	comp_settings, %object
	.size	comp_settings, 16
comp_settings:
	.word	comp_settings1
	.word	comp_settings2
	.word	comp_settings3
	.word	0
	.type	MessageDef, %object
	.size	MessageDef, 24
MessageDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawMessages
	.short	34
	.short	5
	.short	0
	.space	2
	.type	mess_settings, %object
	.size	mess_settings, 8
mess_settings:
	.word	mess_settings1
	.word	0
	.type	ChatStrDef, %object
	.size	ChatStrDef, 24
ChatStrDef:
	.short	1
	.space	2
	.word	SetupDef
	.word	Generic_Setup
	.word	M_DrawChatStrings
	.short	34
	.short	5
	.short	0
	.space	2
	.type	chat_settings, %object
	.size	chat_settings, 8
chat_settings:
	.word	chat_settings1
	.word	0
	.type	ExtHelpDef, %object
	.size	ExtHelpDef, 24
ExtHelpDef:
	.short	1
	.space	2
	.word	ReadDef1
	.word	ExtHelpMenu
	.word	M_DrawExtHelp
	.short	330
	.short	181
	.short	0
	.space	2
	.type	gen_settings2, %object
	.size	gen_settings2, 612
gen_settings2:
	.word	.LC286
	.word	8196
	.byte	0
	.space	1
	.short	250
	.short	32
	.space	22
	.word	.LC287
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	44
	.space	2
	.word	.LC288
	.space	16
	.word	.LC289
	.word	8196
	.byte	0
	.space	1
	.short	250
	.short	76
	.space	22
	.word	.LC290
	.word	524288
	.byte	0
	.space	1
	.short	76
	.short	88
	.space	2
	.word	.LC291
	.space	16
	.word	.LC292
	.word	524288
	.byte	0
	.space	1
	.short	76
	.short	96
	.space	2
	.word	.LC293
	.space	16
	.word	.LC294
	.word	524288
	.byte	0
	.space	1
	.short	76
	.short	104
	.space	2
	.word	.LC295
	.space	16
	.word	.LC296
	.word	524288
	.byte	0
	.space	1
	.short	76
	.short	112
	.space	2
	.word	.LC297
	.space	16
	.word	.LC298
	.word	8196
	.byte	0
	.space	1
	.short	250
	.short	128
	.space	22
	.word	.LC299
	.word	135168
	.byte	0
	.space	1
	.short	250
	.short	140
	.space	2
	.word	.LC300
	.space	16
	.word	.LC301
	.word	135168
	.byte	0
	.space	1
	.short	250
	.short	148
	.space	2
	.word	.LC302
	.space	16
	.word	.LC303
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	156
	.space	2
	.word	.LC304
	.word	0
	.word	0
	.word	M_ChangeDemoSmoothTurns
	.space	4
	.word	.LC305
	.word	4096
	.byte	0
	.space	1
	.short	250
	.short	164
	.space	2
	.word	.LC306
	.word	0
	.word	0
	.word	M_ChangeDemoSmoothTurns
	.space	4
	.word	.LC307
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	172
	.space	2
	.word	.LC308
	.word	0
	.word	0
	.word	0
	.word	gen_skillstrings
	.word	.LC309
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	180
	.space	2
	.word	.LC310
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	191
	.space	2
	.word	gen_settings1
	.space	16
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	191
	.space	2
	.word	gen_settings3
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	quitsounds2, %object
	.size	quitsounds2, 32
quitsounds2:
	.word	80
	.word	93
	.word	95
	.word	31
	.word	56
	.word	72
	.word	78
	.word	52
	.type	quitsounds, %object
	.size	quitsounds, 32
quitsounds:
	.word	57
	.word	26
	.word	27
	.word	31
	.word	35
	.word	36
	.word	38
	.word	52
	.type	NewDef, %object
	.size	NewDef, 24
NewDef:
	.short	5
	.space	2
	.word	EpiDef
	.word	NewGameMenu
	.word	M_DrawNewGame
	.short	48
	.short	63
	.short	2
	.space	2
	.type	EpiDef, %object
	.size	EpiDef, 24
EpiDef:
	.short	4
	.space	2
	.word	MainDef
	.word	EpisodeMenu
	.word	M_DrawEpisode
	.short	48
	.short	63
	.short	0
	.space	2
	.type	LoadMenue, %object
	.size	LoadMenue, 192
LoadMenue:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	49
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	50
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	51
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	52
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	53
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	54
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	55
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_LoadSelect
	.byte	56
	.space	7
	.type	LoadDef, %object
	.size	LoadDef, 24
LoadDef:
	.short	8
	.space	2
	.word	MainDef
	.word	LoadMenue
	.word	M_DrawLoad
	.short	80
	.short	34
	.short	0
	.space	2
	.type	SaveDef, %object
	.size	SaveDef, 24
SaveDef:
	.short	8
	.space	2
	.word	MainDef
	.word	SaveMenu
	.word	M_DrawSave
	.short	80
	.short	34
	.short	0
	.space	2
	.type	ReadMenu1, %object
	.size	ReadMenu1, 24
ReadMenu1:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_ReadThis2
	.byte	0
	.space	7
	.type	ReadMenu2, %object
	.size	ReadMenu2, 24
ReadMenu2:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_FinishReadThis
	.byte	0
	.space	7
	.type	ResetButtonName, %object
	.size	ResetButtonName, 16
ResetButtonName:
	.ascii	"M_BUTT1\000"
	.ascii	"M_BUTT2\000"
	.type	menu_background, %object
	.size	menu_background, 4
menu_background:
	.word	1
	.type	helpstrings, %object
	.size	helpstrings, 1944
helpstrings:
	.word	.LC126
	.word	8196
	.byte	0
	.space	1
	.short	283
	.short	2
	.space	22
	.word	.LC127
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	10
	.space	2
	.word	key_help
	.space	16
	.word	.LC128
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	18
	.space	2
	.word	key_escape
	.space	16
	.word	.LC81
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	26
	.space	2
	.word	key_setup
	.space	16
	.word	.LC129
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	34
	.space	2
	.word	key_pause
	.space	16
	.word	.LC89
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	42
	.space	2
	.word	key_map
	.space	16
	.word	.LC130
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	50
	.space	2
	.word	key_soundvolume
	.space	16
	.word	.LC131
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	58
	.space	2
	.word	key_hud
	.space	16
	.word	.LC99
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	66
	.space	2
	.word	key_messages
	.space	16
	.word	.LC132
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	74
	.space	2
	.word	key_gamma
	.space	16
	.word	.LC133
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	82
	.space	2
	.word	key_spy
	.space	16
	.word	.LC134
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	90
	.space	2
	.word	key_zoomin
	.space	16
	.word	.LC135
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	98
	.space	2
	.word	key_zoomout
	.space	16
	.word	.LC136
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	106
	.space	2
	.word	key_screenshot
	.space	16
	.word	.LC89
	.word	8196
	.byte	0
	.space	1
	.short	283
	.short	118
	.space	22
	.word	.LC137
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	126
	.space	2
	.word	key_map_follow
	.space	16
	.word	.LC138
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	134
	.space	2
	.word	key_map_zoomin
	.space	16
	.word	.LC139
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	142
	.space	2
	.word	key_map_zoomout
	.space	16
	.word	.LC140
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	150
	.space	2
	.word	key_map_mark
	.space	16
	.word	.LC141
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	158
	.space	2
	.word	key_map_clear
	.space	16
	.word	.LC142
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	166
	.space	2
	.word	key_map_gobig
	.space	16
	.word	.LC143
	.word	9216
	.byte	0
	.space	1
	.short	283
	.short	174
	.space	2
	.word	key_map_grid
	.space	16
	.word	.LC85
	.word	8196
	.byte	0
	.space	1
	.short	87
	.short	2
	.space	22
	.word	.LC144
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	10
	.space	2
	.word	key_weapon1
	.space	16
	.word	.LC145
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	18
	.space	2
	.word	key_weapon2
	.space	16
	.word	.LC146
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	26
	.space	2
	.word	key_weapon3
	.space	16
	.word	.LC147
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	34
	.space	2
	.word	key_weapon4
	.space	16
	.word	.LC148
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	42
	.space	2
	.word	key_weapon5
	.space	16
	.word	.LC108
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	50
	.space	2
	.word	key_weapon6
	.space	16
	.word	.LC149
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	58
	.space	2
	.word	key_weapon7
	.space	16
	.word	.LC150
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	66
	.space	2
	.word	key_weapon8
	.space	16
	.word	.LC110
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	74
	.space	2
	.word	key_weapon9
	.space	16
	.word	.LC151
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	82
	.space	2
	.word	key_weapontoggle
	.space	16
	.word	.LC152
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	90
	.space	2
	.word	key_fire
	.word	mousebfire
	.word	joybfire
	.space	8
	.word	.LC153
	.word	8196
	.byte	0
	.space	1
	.short	87
	.short	102
	.space	22
	.word	.LC154
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	110
	.space	2
	.word	key_up
	.word	mousebforward
	.space	12
	.word	.LC155
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	118
	.space	2
	.word	key_down
	.word	mousebbackward
	.space	12
	.word	.LC156
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	126
	.space	2
	.word	key_left
	.space	16
	.word	.LC157
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	134
	.space	2
	.word	key_right
	.space	16
	.word	.LC158
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	142
	.space	2
	.word	key_speed
	.word	0
	.word	joybspeed
	.space	8
	.word	.LC159
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	150
	.space	2
	.word	key_strafeleft
	.space	16
	.word	.LC160
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	158
	.space	2
	.word	key_straferight
	.space	16
	.word	.LC161
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	166
	.space	2
	.word	key_strafe
	.word	mousebstrafe
	.word	joybstrafe
	.space	8
	.word	.LC162
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	174
	.space	2
	.word	key_autorun
	.space	16
	.word	.LC163
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	182
	.space	2
	.word	key_reverse
	.space	16
	.word	.LC164
	.word	9216
	.byte	0
	.space	1
	.short	87
	.short	190
	.space	2
	.word	key_use
	.word	mousebuse
	.word	joybuse
	.space	8
	.word	.LC165
	.word	8196
	.byte	0
	.space	1
	.short	172
	.short	2
	.space	22
	.word	.LC166
	.word	9216
	.byte	0
	.space	1
	.short	172
	.short	10
	.space	2
	.word	key_savegame
	.space	16
	.word	.LC167
	.word	9216
	.byte	0
	.space	1
	.short	172
	.short	18
	.space	2
	.word	key_loadgame
	.space	16
	.word	.LC168
	.word	9216
	.byte	0
	.space	1
	.short	172
	.short	26
	.space	2
	.word	key_quicksave
	.space	16
	.word	.LC169
	.word	9216
	.byte	0
	.space	1
	.short	172
	.short	34
	.space	2
	.word	key_endgame
	.space	16
	.word	.LC170
	.word	9216
	.byte	0
	.space	1
	.short	172
	.short	42
	.space	2
	.word	key_quickload
	.space	16
	.word	.LC171
	.word	9216
	.byte	0
	.space	1
	.short	172
	.short	50
	.space	2
	.word	key_quit
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	msgNames, %object
	.size	msgNames, 18
msgNames:
	.ascii	"M_MSGOFF\000"
	.ascii	"M_MSGON\000"
	.space	1
	.space	2
	.type	HelpDef, %object
	.size	HelpDef, 24
HelpDef:
	.short	1
	.space	2
	.word	HelpDef
	.word	HelpMenu
	.word	M_DrawHelp
	.short	330
	.short	175
	.short	0
	.space	2
	.type	cred_settings, %object
	.size	cred_settings, 540
cred_settings:
	.word	.LC112
	.word	3153920
	.byte	0
	.space	1
	.short	20
	.short	32
	.space	22
	.word	.LC113
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	41
	.space	22
	.word	.LC114
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	50
	.space	22
	.word	.LC115
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	59
	.space	22
	.word	.LC116
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	68
	.space	22
	.word	.LC117
	.word	3153920
	.byte	0
	.space	1
	.short	20
	.short	86
	.space	22
	.word	.LC118
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	95
	.space	22
	.word	.LC119
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	104
	.space	22
	.word	.LC120
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	113
	.space	22
	.word	.LC121
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	122
	.space	22
	.word	.LC122
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	131
	.space	22
	.word	.LC123
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	140
	.space	22
	.word	.LC124
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	149
	.space	22
	.word	.LC125
	.word	3153920
	.byte	0
	.space	1
	.short	50
	.short	158
	.space	22
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	MainMenu, %object
	.size	MainMenu, 144
MainMenu:
	.short	1
	.ascii	"M_NGAME\000"
	.space	2
	.word	M_NewGame
	.byte	110
	.space	7
	.short	1
	.ascii	"M_OPTION\000"
	.space	1
	.word	M_Options
	.byte	111
	.space	7
	.short	1
	.ascii	"M_LOADG\000"
	.space	2
	.word	M_LoadGame
	.byte	108
	.space	7
	.short	1
	.ascii	"M_SAVEG\000"
	.space	2
	.word	M_SaveGame
	.byte	115
	.space	7
	.short	1
	.ascii	"M_RDTHIS\000"
	.space	1
	.word	M_ReadThis
	.byte	114
	.space	7
	.short	1
	.ascii	"M_QUITG\000"
	.space	2
	.word	M_QuitDOOM
	.byte	113
	.space	7
	.type	ExtHelpMenu, %object
	.size	ExtHelpMenu, 24
ExtHelpMenu:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_ExtHelpNextScreen
	.byte	0
	.space	7
	.type	chat_settings1, %object
	.size	chat_settings1, 432
chat_settings1:
	.word	.LC172
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	47
	.space	2
	.word	.LC173
	.space	16
	.word	.LC174
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	55
	.space	2
	.word	.LC175
	.space	16
	.word	.LC176
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	63
	.space	2
	.word	.LC177
	.space	16
	.word	.LC178
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	71
	.space	2
	.word	.LC179
	.space	16
	.word	.LC180
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	79
	.space	2
	.word	.LC181
	.space	16
	.word	.LC182
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	87
	.space	2
	.word	.LC183
	.space	16
	.word	.LC184
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	95
	.space	2
	.word	.LC185
	.space	16
	.word	.LC186
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	103
	.space	2
	.word	.LC187
	.space	16
	.word	.LC188
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	111
	.space	2
	.word	.LC189
	.space	16
	.word	.LC190
	.word	64
	.byte	0
	.space	1
	.short	20
	.short	119
	.space	2
	.word	.LC191
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	mess_settings1, %object
	.size	mess_settings1, 252
mess_settings1:
	.word	.LC192
	.word	16
	.byte	0
	.space	1
	.short	230
	.short	39
	.space	2
	.word	.LC193
	.space	16
	.word	.LC194
	.word	16
	.byte	0
	.space	1
	.short	230
	.short	55
	.space	2
	.word	.LC195
	.space	16
	.word	.LC196
	.word	16
	.byte	0
	.space	1
	.short	230
	.short	71
	.space	2
	.word	.LC197
	.space	16
	.word	.LC198
	.word	4096
	.byte	0
	.space	1
	.short	230
	.short	95
	.space	2
	.word	.LC199
	.space	16
	.word	.LC200
	.word	8
	.byte	0
	.space	1
	.short	230
	.short	111
	.space	2
	.word	.LC201
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	comp_settings3, %object
	.size	comp_settings3, 216
comp_settings3:
	.word	.LC202
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	32
	.space	2
	.word	.LC203
	.space	16
	.word	.LC204
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	44
	.space	2
	.word	.LC205
	.space	16
	.word	.LC206
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	56
	.space	2
	.word	.LC207
	.space	16
	.word	.LC208
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	68
	.space	2
	.word	.LC209
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	163
	.space	2
	.word	comp_settings2
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	comp_settings2, %object
	.size	comp_settings2, 468
comp_settings2:
	.word	.LC211
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	32
	.space	2
	.word	.LC212
	.space	16
	.word	.LC213
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	44
	.space	2
	.word	.LC214
	.space	16
	.word	.LC215
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	56
	.space	2
	.word	.LC216
	.space	16
	.word	.LC217
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	68
	.space	2
	.word	.LC218
	.space	16
	.word	.LC219
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	80
	.space	2
	.word	.LC220
	.space	16
	.word	.LC221
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	92
	.space	2
	.word	.LC222
	.space	16
	.word	.LC223
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	104
	.space	2
	.word	.LC224
	.space	16
	.word	.LC225
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	116
	.space	2
	.word	.LC226
	.space	16
	.word	.LC227
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	128
	.space	2
	.word	.LC228
	.space	16
	.word	.LC229
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	140
	.space	2
	.word	.LC230
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	163
	.space	2
	.word	comp_settings1
	.space	16
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	163
	.space	2
	.word	comp_settings3
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	comp_settings1, %object
	.size	comp_settings1, 468
comp_settings1:
	.word	.LC232
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	32
	.space	2
	.word	.LC233
	.space	16
	.word	.LC234
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	44
	.space	2
	.word	.LC235
	.space	16
	.word	.LC236
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	56
	.space	2
	.word	.LC237
	.space	16
	.word	.LC238
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	68
	.space	2
	.word	.LC239
	.space	16
	.word	.LC240
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	80
	.space	2
	.word	.LC241
	.space	16
	.word	.LC242
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	92
	.space	2
	.word	.LC243
	.space	16
	.word	.LC244
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	104
	.space	2
	.word	.LC245
	.space	16
	.word	.LC246
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	116
	.space	2
	.word	.LC247
	.space	16
	.word	.LC248
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	128
	.space	2
	.word	.LC249
	.space	16
	.word	.LC250
	.word	8
	.byte	0
	.space	1
	.short	284
	.short	140
	.space	2
	.word	.LC251
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	163
	.space	2
	.word	comp_settings2
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	edgetypes, %object
	.size	edgetypes, 8
edgetypes:
	.word	.LC252
	.word	.LC253
	.type	renderfilters, %object
	.size	renderfilters, 16
renderfilters:
	.word	.LC254
	.word	.LC255
	.word	.LC256
	.word	.LC257
	.type	gen_skillstrings, %object
	.size	gen_skillstrings, 28
gen_skillstrings:
	.word	.LC258
	.word	.LC259
	.word	.LC260
	.word	.LC261
	.word	.LC262
	.word	.LC263
	.word	0
	.type	videomodes, %object
	.size	videomodes, 24
videomodes:
	.word	.LC264
	.word	.LC265
	.word	.LC266
	.word	.LC267
	.word	.LC268
	.word	0
	.type	gen_settings3, %object
	.size	gen_settings3, 396
gen_settings3:
	.word	.LC269
	.word	8196
	.byte	0
	.space	1
	.short	250
	.short	32
	.space	22
	.word	.LC270
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	44
	.space	2
	.word	.LC271
	.word	0
	.word	0
	.word	0
	.word	renderfilters
	.word	.LC272
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	52
	.space	2
	.word	.LC273
	.word	0
	.word	0
	.word	0
	.word	renderfilters
	.word	.LC274
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	60
	.space	2
	.word	.LC275
	.word	0
	.word	0
	.word	0
	.word	renderfilters
	.word	.LC276
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	68
	.space	2
	.word	.LC277
	.word	0
	.word	0
	.word	0
	.word	renderfilters
	.word	.LC278
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	76
	.space	2
	.word	.LC279
	.word	0
	.word	0
	.word	0
	.word	renderfilters
	.word	.LC280
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	92
	.space	2
	.word	.LC281
	.word	0
	.word	0
	.word	0
	.word	edgetypes
	.word	.LC282
	.word	8388608
	.byte	0
	.space	1
	.short	250
	.short	100
	.space	2
	.word	.LC283
	.word	0
	.word	0
	.word	0
	.word	edgetypes
	.word	.LC284
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	108
	.space	2
	.word	.LC285
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	191
	.space	2
	.word	gen_settings2
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	gen_settings1, %object
	.size	gen_settings1, 432
gen_settings1:
	.word	.LC311
	.word	8196
	.byte	0
	.space	1
	.short	250
	.short	32
	.space	22
	.word	.LC312
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	44
	.space	2
	.word	.LC313
	.word	0
	.word	0
	.word	M_Trans
	.space	4
	.word	.LC314
	.word	4096
	.byte	0
	.space	1
	.short	250
	.short	52
	.space	2
	.word	.LC315
	.word	0
	.word	0
	.word	M_Trans
	.space	4
	.word	.LC316
	.word	131080
	.byte	0
	.space	1
	.short	250
	.short	60
	.space	2
	.word	.LC317
	.word	0
	.word	0
	.word	0
	.space	4
	.word	.LC318
	.word	8519680
	.byte	0
	.space	1
	.short	250
	.short	68
	.space	2
	.word	.LC319
	.word	0
	.word	0
	.word	0
	.word	videomodes
	.word	.LC320
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	76
	.space	2
	.word	.LC321
	.space	16
	.word	.LC322
	.word	8196
	.byte	0
	.space	1
	.short	250
	.short	144
	.space	22
	.word	.LC323
	.word	135168
	.byte	0
	.space	1
	.short	250
	.short	156
	.space	2
	.word	.LC324
	.space	16
	.word	.LC325
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	164
	.space	2
	.word	.LC326
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	191
	.space	2
	.word	gen_settings2
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	enem_settings1, %object
	.size	enem_settings1, 432
enem_settings1:
	.word	.LC327
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	31
	.space	2
	.word	.LC328
	.space	16
	.word	.LC329
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	39
	.space	2
	.word	.LC330
	.space	16
	.word	.LC331
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	47
	.space	2
	.word	.LC332
	.space	16
	.word	.LC333
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	55
	.space	2
	.word	.LC334
	.space	16
	.word	.LC335
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	63
	.space	2
	.word	.LC336
	.space	16
	.word	.LC337
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	71
	.space	2
	.word	.LC338
	.space	16
	.word	.LC339
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	79
	.space	2
	.word	.LC340
	.space	16
	.word	.LC341
	.word	69632
	.byte	0
	.space	1
	.short	250
	.short	87
	.space	2
	.word	.LC342
	.space	16
	.word	.LC343
	.word	4096
	.byte	0
	.space	1
	.short	250
	.short	95
	.space	2
	.word	.LC344
	.space	16
	.word	.LC345
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	103
	.space	2
	.word	.LC346
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	auto_settings2, %object
	.size	auto_settings2, 504
auto_settings2:
	.word	.LC347
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	31
	.space	2
	.word	.LC348
	.space	16
	.word	.LC349
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	39
	.space	2
	.word	.LC350
	.space	16
	.word	.LC351
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	47
	.space	2
	.word	.LC352
	.space	16
	.word	.LC353
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	55
	.space	2
	.word	.LC354
	.space	16
	.word	.LC355
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	63
	.space	2
	.word	.LC356
	.space	16
	.word	.LC357
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	71
	.space	2
	.word	.LC358
	.space	16
	.word	.LC359
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	79
	.space	2
	.word	.LC360
	.space	16
	.word	.LC361
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	87
	.space	2
	.word	.LC362
	.space	16
	.word	.LC363
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	95
	.space	2
	.word	.LC364
	.space	16
	.word	.LC365
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	103
	.space	2
	.word	.LC366
	.space	16
	.word	.LC367
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	111
	.space	2
	.word	.LC368
	.space	16
	.word	.LC369
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	127
	.space	2
	.word	.LC370
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	191
	.space	2
	.word	auto_settings1
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	auto_settings1, %object
	.size	auto_settings1, 684
auto_settings1:
	.word	.LC371
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	31
	.space	2
	.word	.LC372
	.space	16
	.word	.LC373
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	39
	.space	2
	.word	.LC374
	.space	16
	.word	.LC375
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	47
	.space	2
	.word	.LC376
	.space	16
	.word	.LC377
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	55
	.space	2
	.word	.LC378
	.space	16
	.word	.LC379
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	63
	.space	2
	.word	.LC380
	.space	16
	.word	.LC381
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	71
	.space	2
	.word	.LC382
	.space	16
	.word	.LC383
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	79
	.space	2
	.word	.LC384
	.space	16
	.word	.LC385
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	87
	.space	2
	.word	.LC386
	.space	16
	.word	.LC387
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	95
	.space	2
	.word	.LC388
	.space	16
	.word	.LC389
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	103
	.space	2
	.word	.LC390
	.space	16
	.word	.LC391
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	111
	.space	2
	.word	.LC392
	.space	16
	.word	.LC393
	.word	32
	.byte	0
	.space	1
	.short	250
	.short	119
	.space	2
	.word	.LC394
	.space	16
	.word	.LC395
	.word	16
	.byte	0
	.space	1
	.short	250
	.short	135
	.space	2
	.word	.LC396
	.space	16
	.word	.LC397
	.word	16
	.byte	0
	.space	1
	.short	250
	.short	143
	.space	2
	.word	.LC398
	.space	16
	.word	.LC399
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	151
	.space	2
	.word	.LC400
	.space	16
	.word	.LC401
	.word	8
	.byte	0
	.space	1
	.short	250
	.short	159
	.space	2
	.word	.LC402
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	191
	.space	2
	.word	auto_settings2
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	stat_settings1, %object
	.size	stat_settings1, 576
stat_settings1:
	.word	.LC403
	.word	8196
	.byte	0
	.space	1
	.short	203
	.short	39
	.space	22
	.word	.LC404
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	47
	.space	2
	.word	.LC405
	.space	16
	.word	.LC406
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	55
	.space	2
	.word	.LC407
	.space	16
	.word	.LC408
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	63
	.space	2
	.word	.LC409
	.space	16
	.word	.LC410
	.word	8196
	.byte	0
	.space	1
	.short	203
	.short	79
	.space	22
	.word	.LC411
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	87
	.space	2
	.word	.LC412
	.space	16
	.word	.LC413
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	95
	.space	2
	.word	.LC414
	.space	16
	.word	.LC415
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	103
	.space	2
	.word	.LC416
	.space	16
	.word	.LC417
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	111
	.space	2
	.word	.LC418
	.space	16
	.word	.LC419
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	119
	.space	2
	.word	.LC420
	.space	16
	.word	.LC421
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	127
	.space	2
	.word	.LC422
	.space	16
	.word	.LC423
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	135
	.space	2
	.word	.LC424
	.space	16
	.word	.LC425
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	143
	.space	2
	.word	.LC426
	.space	16
	.word	.LC427
	.word	4096
	.byte	0
	.space	1
	.short	203
	.short	151
	.space	2
	.word	.LC428
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	weap_settings1, %object
	.size	weap_settings1, 504
weap_settings1:
	.word	.LC429
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	33
	.space	2
	.word	.LC430
	.space	16
	.word	.LC431
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	41
	.space	2
	.word	.LC432
	.space	16
	.word	.LC433
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	65
	.space	2
	.word	.LC434
	.space	16
	.word	.LC435
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	73
	.space	2
	.word	.LC436
	.space	16
	.word	.LC437
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	81
	.space	2
	.word	.LC438
	.space	16
	.word	.LC439
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	89
	.space	2
	.word	.LC440
	.space	16
	.word	.LC441
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	97
	.space	2
	.word	.LC442
	.space	16
	.word	.LC443
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	105
	.space	2
	.word	.LC444
	.space	16
	.word	.LC445
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	113
	.space	2
	.word	.LC446
	.space	16
	.word	.LC447
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	121
	.space	2
	.word	.LC448
	.space	16
	.word	.LC449
	.word	2048
	.byte	0
	.space	1
	.short	203
	.short	129
	.space	2
	.word	.LC450
	.space	16
	.word	.LC451
	.word	8
	.byte	0
	.space	1
	.short	203
	.short	145
	.space	2
	.word	.LC452
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	keys_settings4, %object
	.size	keys_settings4, 792
keys_settings4:
	.word	.LC89
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	31
	.space	22
	.word	.LC453
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	39
	.space	2
	.word	key_map_follow
	.space	16
	.word	.LC138
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	47
	.space	2
	.word	key_map_zoomin
	.space	16
	.word	.LC139
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	55
	.space	2
	.word	key_map_zoomout
	.space	16
	.word	.LC454
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	63
	.space	2
	.word	key_map_up
	.space	16
	.word	.LC455
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	71
	.space	2
	.word	key_map_down
	.space	16
	.word	.LC456
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	79
	.space	2
	.word	key_map_left
	.space	16
	.word	.LC457
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	87
	.space	2
	.word	key_map_right
	.space	16
	.word	.LC140
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	95
	.space	2
	.word	key_map_mark
	.space	16
	.word	.LC141
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	103
	.space	2
	.word	key_map_clear
	.space	16
	.word	.LC142
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	111
	.space	2
	.word	key_map_gobig
	.space	16
	.word	.LC143
	.word	1024
	.byte	2
	.space	1
	.short	160
	.short	119
	.space	2
	.word	key_map_grid
	.space	16
	.word	.LC458
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	127
	.space	22
	.word	.LC459
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	135
	.space	2
	.word	key_chat
	.space	16
	.word	.LC460
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	143
	.space	2
	.word	destination_keys
	.space	16
	.word	.LC461
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	151
	.space	2
	.word	destination_keys+4
	.space	16
	.word	.LC462
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	159
	.space	2
	.word	destination_keys+8
	.space	16
	.word	.LC463
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	167
	.space	2
	.word	destination_keys+12
	.space	16
	.word	.LC464
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	175
	.space	2
	.word	key_backspace
	.space	16
	.word	.LC465
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	183
	.space	2
	.word	key_enter
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	191
	.space	2
	.word	keys_settings3
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	keys_settings3, %object
	.size	keys_settings3, 540
keys_settings3:
	.word	.LC85
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	31
	.space	22
	.word	.LC144
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	39
	.space	2
	.word	key_weapon1
	.space	16
	.word	.LC145
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	47
	.space	2
	.word	key_weapon2
	.space	16
	.word	.LC146
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	55
	.space	2
	.word	key_weapon3
	.space	16
	.word	.LC147
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	63
	.space	2
	.word	key_weapon4
	.space	16
	.word	.LC148
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	71
	.space	2
	.word	key_weapon5
	.space	16
	.word	.LC108
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	79
	.space	2
	.word	key_weapon6
	.space	16
	.word	.LC109
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	87
	.space	2
	.word	key_weapon7
	.space	16
	.word	.LC150
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	95
	.space	2
	.word	key_weapon8
	.space	16
	.word	.LC110
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	103
	.space	2
	.word	key_weapon9
	.space	16
	.word	.LC151
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	111
	.space	2
	.word	key_weapontoggle
	.space	16
	.word	.LC152
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	119
	.space	2
	.word	key_fire
	.word	mousebfire
	.word	joybfire
	.space	8
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	191
	.space	2
	.word	keys_settings2
	.space	16
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	191
	.space	2
	.word	keys_settings4
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	keys_settings2, %object
	.size	keys_settings2, 864
keys_settings2:
	.word	.LC126
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	31
	.space	22
	.word	.LC127
	.word	24576
	.byte	1
	.space	1
	.short	0
	.short	0
	.space	2
	.word	key_help
	.space	16
	.word	.LC128
	.word	24576
	.byte	1
	.space	1
	.short	0
	.short	0
	.space	2
	.word	key_escape
	.space	16
	.word	.LC81
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	39
	.space	2
	.word	key_setup
	.space	16
	.word	.LC129
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	47
	.space	2
	.word	key_pause
	.space	16
	.word	.LC89
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	55
	.space	2
	.word	key_map
	.space	16
	.word	.LC466
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	63
	.space	2
	.word	key_soundvolume
	.space	16
	.word	.LC131
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	71
	.space	2
	.word	key_hud
	.space	16
	.word	.LC99
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	79
	.space	2
	.word	key_messages
	.space	16
	.word	.LC132
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	87
	.space	2
	.word	key_gamma
	.space	16
	.word	.LC133
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	95
	.space	2
	.word	key_spy
	.space	16
	.word	.LC134
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	103
	.space	2
	.word	key_zoomin
	.space	16
	.word	.LC135
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	111
	.space	2
	.word	key_zoomout
	.space	16
	.word	.LC136
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	119
	.space	2
	.word	key_screenshot
	.space	16
	.word	.LC165
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	127
	.space	22
	.word	.LC166
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	135
	.space	2
	.word	key_savegame
	.space	16
	.word	.LC167
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	143
	.space	2
	.word	key_loadgame
	.space	16
	.word	.LC168
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	151
	.space	2
	.word	key_quicksave
	.space	16
	.word	.LC170
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	159
	.space	2
	.word	key_quickload
	.space	16
	.word	.LC169
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	167
	.space	2
	.word	key_endgame
	.space	16
	.word	.LC171
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	175
	.space	2
	.word	key_quit
	.space	16
	.word	.LC210
	.word	8448
	.byte	0
	.space	1
	.short	57
	.short	191
	.space	2
	.word	keys_settings1
	.space	16
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	191
	.space	2
	.word	keys_settings3
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	keys_settings1, %object
	.size	keys_settings1, 828
keys_settings1:
	.word	.LC153
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	31
	.space	22
	.word	.LC154
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	39
	.space	2
	.word	key_up
	.word	mousebforward
	.space	12
	.word	.LC155
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	47
	.space	2
	.word	key_down
	.word	mousebbackward
	.space	12
	.word	.LC156
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	55
	.space	2
	.word	key_left
	.space	16
	.word	.LC157
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	63
	.space	2
	.word	key_right
	.space	16
	.word	.LC158
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	71
	.space	2
	.word	key_speed
	.word	0
	.word	joybspeed
	.space	8
	.word	.LC159
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	79
	.space	2
	.word	key_strafeleft
	.space	16
	.word	.LC160
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	87
	.space	2
	.word	key_straferight
	.space	16
	.word	.LC161
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	95
	.space	2
	.word	key_strafe
	.word	mousebstrafe
	.word	joybstrafe
	.space	8
	.word	.LC162
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	103
	.space	2
	.word	key_autorun
	.space	16
	.word	.LC163
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	111
	.space	2
	.word	key_reverse
	.space	16
	.word	.LC164
	.word	1024
	.byte	1
	.space	1
	.short	160
	.short	119
	.space	2
	.word	key_use
	.word	mousebuse
	.word	joybuse
	.space	8
	.word	.LC467
	.word	8196
	.byte	0
	.space	1
	.short	160
	.short	127
	.space	22
	.word	.LC468
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	135
	.space	2
	.word	key_menu_down
	.space	16
	.word	.LC469
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	143
	.space	2
	.word	key_menu_up
	.space	16
	.word	.LC470
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	151
	.space	2
	.word	key_menu_left
	.space	16
	.word	.LC471
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	159
	.space	2
	.word	key_menu_right
	.space	16
	.word	.LC464
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	167
	.space	2
	.word	key_menu_backspace
	.space	16
	.word	.LC472
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	175
	.space	2
	.word	key_menu_enter
	.space	16
	.word	.LC473
	.word	1024
	.byte	3
	.space	1
	.short	160
	.short	183
	.space	2
	.word	key_menu_escape
	.space	16
	.word	0
	.word	128
	.byte	0
	.space	1
	.short	301
	.short	3
	.space	22
	.word	.LC231
	.word	8704
	.byte	0
	.space	1
	.short	310
	.short	191
	.space	2
	.word	keys_settings2
	.space	16
	.word	0
	.word	40960
	.byte	0
	.space	27
	.type	Generic_Setup, %object
	.size	Generic_Setup, 24
Generic_Setup:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_DoNothing
	.byte	0
	.space	7
	.type	SetupMenu, %object
	.size	SetupMenu, 192
SetupMenu:
	.short	1
	.ascii	"M_COMPAT\000"
	.space	1
	.word	M_Compat
	.byte	112
	.space	3
	.word	.LC97
	.short	1
	.ascii	"M_KEYBND\000"
	.space	1
	.word	M_KeyBindings
	.byte	107
	.space	3
	.word	.LC83
	.short	1
	.ascii	"M_WEAP\000"
	.space	3
	.word	M_Weapons
	.byte	119
	.space	3
	.word	.LC85
	.short	1
	.ascii	"M_STAT\000"
	.space	3
	.word	M_StatusBar
	.byte	115
	.space	3
	.word	.LC87
	.short	1
	.ascii	"M_AUTO\000"
	.space	3
	.word	M_Automap
	.byte	97
	.space	3
	.word	.LC89
	.short	1
	.ascii	"M_ENEM\000"
	.space	3
	.word	M_Enemy
	.byte	101
	.space	3
	.word	.LC93
	.short	1
	.ascii	"M_MESS\000"
	.space	3
	.word	M_Messages
	.byte	109
	.space	3
	.word	.LC99
	.short	1
	.ascii	"M_CHAT\000"
	.space	3
	.word	M_ChatStrings
	.byte	99
	.space	3
	.word	.LC101
	.type	MouseMenu, %object
	.size	MouseMenu, 96
MouseMenu:
	.short	2
	.ascii	"M_HORSEN\000"
	.space	1
	.word	M_MouseHoriz
	.byte	104
	.space	3
	.word	.LC474
	.short	-1
	.ascii	"\000"
	.space	9
	.word	0
	.space	8
	.short	2
	.ascii	"M_VERSEN\000"
	.space	1
	.word	M_MouseVert
	.byte	118
	.space	3
	.word	.LC475
	.short	-1
	.ascii	"\000"
	.space	9
	.word	0
	.space	8
	.type	SoundMenu, %object
	.size	SoundMenu, 96
SoundMenu:
	.short	2
	.ascii	"M_SFXVOL\000"
	.space	1
	.word	M_SfxVol
	.byte	115
	.space	7
	.short	-1
	.ascii	"\000"
	.space	9
	.word	0
	.space	8
	.short	2
	.ascii	"M_MUSVOL\000"
	.space	1
	.word	M_MusicVol
	.byte	109
	.space	7
	.short	-1
	.ascii	"\000"
	.space	9
	.word	0
	.space	8
	.type	detailNames, %object
	.size	detailNames, 18
detailNames:
	.ascii	"M_GDHIGH\000"
	.ascii	"M_GDLOW\000"
	.space	1
	.space	2
	.type	OptionsMenu, %object
	.size	OptionsMenu, 192
OptionsMenu:
	.short	1
	.ascii	"M_GENERL\000"
	.space	1
	.word	M_General
	.byte	103
	.space	3
	.word	.LC95
	.short	1
	.ascii	"M_SETUP\000"
	.space	2
	.word	M_Setup
	.byte	115
	.space	3
	.word	.LC81
	.short	1
	.ascii	"M_ENDGAM\000"
	.space	1
	.word	M_EndGame
	.byte	101
	.space	3
	.word	.LC169
	.short	1
	.ascii	"M_MESSG\000"
	.space	2
	.word	M_ChangeMessages
	.byte	109
	.space	3
	.word	.LC99
	.short	2
	.ascii	"M_SCRNSZ\000"
	.space	1
	.word	M_SizeDisplay
	.byte	115
	.space	3
	.word	.LC476
	.short	-1
	.ascii	"\000"
	.space	9
	.word	0
	.space	8
	.short	1
	.ascii	"M_MSENS\000"
	.space	2
	.word	M_ChangeSensitivity
	.byte	109
	.space	3
	.word	.LC477
	.short	1
	.ascii	"M_SVOL\000"
	.space	3
	.word	M_Sound
	.byte	115
	.space	3
	.word	.LC130
	.type	SaveMenu, %object
	.size	SaveMenu, 192
SaveMenu:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	49
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	50
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	51
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	52
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	53
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	54
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	55
	.space	7
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_SaveSelect
	.byte	56
	.space	7
	.type	NewGameMenu, %object
	.size	NewGameMenu, 120
NewGameMenu:
	.short	1
	.ascii	"M_JKILL\000"
	.space	2
	.word	M_ChooseSkill
	.byte	105
	.space	7
	.short	1
	.ascii	"M_ROUGH\000"
	.space	2
	.word	M_ChooseSkill
	.byte	104
	.space	7
	.short	1
	.ascii	"M_HURT\000"
	.space	3
	.word	M_ChooseSkill
	.byte	104
	.space	7
	.short	1
	.ascii	"M_ULTRA\000"
	.space	2
	.word	M_ChooseSkill
	.byte	117
	.space	7
	.short	1
	.ascii	"M_NMARE\000"
	.space	2
	.word	M_ChooseSkill
	.byte	110
	.space	7
	.type	EpisodeMenu, %object
	.size	EpisodeMenu, 96
EpisodeMenu:
	.short	1
	.ascii	"M_EPI1\000"
	.space	3
	.word	M_Episode
	.byte	107
	.space	7
	.short	1
	.ascii	"M_EPI2\000"
	.space	3
	.word	M_Episode
	.byte	116
	.space	7
	.short	1
	.ascii	"M_EPI3\000"
	.space	3
	.word	M_Episode
	.byte	105
	.space	7
	.short	1
	.ascii	"M_EPI4\000"
	.space	3
	.word	M_Episode
	.byte	116
	.space	7
	.type	HelpMenu, %object
	.size	HelpMenu, 24
HelpMenu:
	.short	1
	.ascii	"\000"
	.space	9
	.word	M_FinishHelp
	.byte	0
	.space	7
	.type	hide_setup, %object
	.size	hide_setup, 4
hide_setup:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"M_DOOM\000"
	.space	1
.LC1:
	.ascii	"M_EPISOD\000"
	.space	3
.LC2:
	.ascii	"M_NEWG\000"
	.space	1
.LC3:
	.ascii	"M_SKILL\000"
.LC5:
	.ascii	"%s\012\012%s\000"
	.space	1
.LC6:
	.ascii	"%s\012\000"
.LC7:
	.ascii	"M_VBOX\000"
	.space	1
.LC8:
	.ascii	"Reset to defaults? (Y or N)\000"
.LC9:
	.ascii	"M_Episode: 4th episode requires UltimateDOOM\012\000"
	.space	2
.LC10:
	.ascii	"you can't start a new game\012while recording a dem"
	.ascii	"o!\012\012press a key.\000"
	.space	3
.LC11:
	.ascii	"Press key or button for this action\000"
.LC12:
	.ascii	"Press key for this action\000"
	.space	2
.LC13:
	.ascii	"Press ENTER key to toggle\000"
	.space	2
.LC14:
	.ascii	"Enter weapon number\000"
.LC15:
	.ascii	"Enter value. Press ENTER when finished.\000"
.LC16:
	.ascii	"Select color and press enter\000"
	.space	3
.LC17:
	.ascii	"Enter value\000"
.LC18:
	.ascii	"Type/edit chat string and Press ENTER\000"
	.space	2
.LC19:
	.ascii	"Type/edit filename and Press ENTER\000"
	.space	1
.LC20:
	.ascii	"Press left or right to choose\000"
	.space	2
.LC21:
	.ascii	"Unrecognised menu item type %d\000"
	.space	1
.LC22:
	.ascii	"Press ENTER key to reset to defaults\000"
	.space	3
.LC23:
	.ascii	"Press Enter to Change\000"
	.space	2
.LC24:
	.ascii	"FLOOR4_6\000"
	.space	3
.LC25:
	.ascii	"M_LSLEFT\000"
	.space	3
.LC26:
	.ascii	"M_LSCNTR\000"
	.space	3
.LC27:
	.ascii	"M_LSRGHT\000"
	.space	3
.LC28:
	.ascii	"rb\000"
	.space	1
.LC29:
	.ascii	"you can't load a game\012while recording an old dem"
	.ascii	"o!\012\012press a key.\000"
	.space	3
.LC30:
	.ascii	"you can't quickload\012while recording a demo!\012\012"
	.ascii	"press a key.\000"
	.space	2
.LC31:
	.ascii	"TAB\000"
.LC32:
	.ascii	"ENTR\000"
	.space	3
.LC33:
	.ascii	"ESC\000"
.LC34:
	.ascii	"SPAC\000"
	.space	3
.LC35:
	.ascii	"BACK\000"
	.space	3
.LC36:
	.ascii	"CTRL\000"
	.space	3
.LC37:
	.ascii	"LARR\000"
	.space	3
.LC38:
	.ascii	"UARR\000"
	.space	3
.LC39:
	.ascii	"RARR\000"
	.space	3
.LC40:
	.ascii	"DARR\000"
	.space	3
.LC41:
	.ascii	"SHFT\000"
	.space	3
.LC42:
	.ascii	"ALT\000"
.LC43:
	.ascii	"CAPS\000"
	.space	3
.LC44:
	.ascii	"SCRL\000"
	.space	3
.LC45:
	.ascii	"HOME\000"
	.space	3
.LC46:
	.ascii	"PGUP\000"
	.space	3
.LC47:
	.ascii	"END\000"
.LC48:
	.ascii	"PGDN\000"
	.space	3
.LC49:
	.ascii	"INST\000"
	.space	3
.LC50:
	.ascii	"DEL\000"
.LC51:
	.ascii	"F10\000"
.LC52:
	.ascii	"F11\000"
.LC53:
	.ascii	"F12\000"
.LC54:
	.ascii	"PAUS\000"
	.space	3
.LC55:
	.ascii	"JUNK\000"
	.space	3
.LC56:
	.ascii	"PAD\000"
.LC57:
	.ascii	"YES\000"
.LC58:
	.ascii	"NO\000"
	.space	1
.LC59:
	.ascii	"Value out of Range\000"
	.space	1
.LC60:
	.ascii	"Warning: Program must be restarted to see changes\000"
	.space	2
.LC61:
	.ascii	"Video mode not supported\000"
	.space	3
.LC62:
	.ascii	"Warning: Changes are pending until next game\000"
	.space	3
.LC63:
	.ascii	"\012\000"
	.space	2
.LC64:
	.ascii	"%d\000"
	.space	1
.LC65:
	.ascii	"/MB%d\000"
	.space	2
.LC66:
	.ascii	"/JSB%d\000"
	.space	1
.LC67:
	.ascii	"M_PALNO\000"
.LC68:
	.ascii	"M_THERML\000"
	.space	3
.LC69:
	.ascii	"M_THERMM\000"
	.space	3
.LC70:
	.ascii	"M_THERMR\000"
	.space	3
.LC71:
	.ascii	"M_THERMO\000"
	.space	3
.LC72:
	.ascii	"M_OPTTTL\000"
	.space	3
.LC73:
	.ascii	"M_SVOL\000"
	.space	1
.LC74:
	.ascii	"M_MSENS\000"
.LC75:
	.ascii	"M_CELL1\000"
.LC76:
	.ascii	"M_CELL2\000"
.LC77:
	.ascii	"M_LOADG\000"
.LC78:
	.ascii	"M_SAVEG\000"
.LC79:
	.ascii	"_\000"
	.space	2
.LC80:
	.ascii	"M_SETUP\000"
.LC81:
	.ascii	"SETUP\000"
	.space	2
.LC82:
	.ascii	"M_KEYBND\000"
	.space	3
.LC83:
	.ascii	"KEY BINDINGS\000"
	.space	3
.LC84:
	.ascii	"M_WEAP\000"
	.space	1
.LC85:
	.ascii	"WEAPONS\000"
.LC86:
	.ascii	"M_STAT\000"
	.space	1
.LC87:
	.ascii	"STATUS BAR / HUD\000"
	.space	3
.LC88:
	.ascii	"M_AUTO\000"
	.space	1
.LC89:
	.ascii	"AUTOMAP\000"
.LC90:
	.ascii	"M_COLORS\000"
	.space	3
.LC91:
	.ascii	"M_PALSEL\000"
	.space	3
.LC92:
	.ascii	"M_ENEM\000"
	.space	1
.LC93:
	.ascii	"ENEMIES\000"
.LC94:
	.ascii	"M_GENERL\000"
	.space	3
.LC95:
	.ascii	"GENERAL\000"
.LC96:
	.ascii	"M_COMPAT\000"
	.space	3
.LC97:
	.ascii	"DOOM COMPATIBILITY\000"
	.space	1
.LC98:
	.ascii	"M_MESS\000"
	.space	1
.LC99:
	.ascii	"MESSAGES\000"
	.space	3
.LC100:
	.ascii	"M_CHAT\000"
	.space	1
.LC101:
	.ascii	"CHAT STRINGS\000"
	.space	3
.LC102:
	.ascii	"CEIL5_1\000"
.LC103:
	.ascii	"MFLR8_4\000"
.LC104:
	.ascii	"PRBOOM\000"
	.space	1
.LC105:
	.ascii	" v\000"
	.space	1
.LC106:
	.ascii	"HELP2\000"
	.space	2
.LC107:
	.ascii	"CREDIT\000"
	.space	1
.LC108:
	.ascii	"PLASMA\000"
	.space	1
.LC109:
	.ascii	"BFG\000"
.LC110:
	.ascii	"SSG\000"
.LC111:
	.ascii	"M_InitDefaults: Couldn't find config variable %s\000"
	.space	3
.LC112:
	.ascii	"Programmers\000"
.LC113:
	.ascii	"Florian 'Proff' Schulze\000"
.LC114:
	.ascii	"Colin Phipps\000"
	.space	3
.LC115:
	.ascii	"Neil Stevens\000"
	.space	3
.LC116:
	.ascii	"Andrey Budko\000"
	.space	3
.LC117:
	.ascii	"Additional Credit To\000"
	.space	3
.LC118:
	.ascii	"id Software for DOOM\000"
	.space	3
.LC119:
	.ascii	"TeamTNT for BOOM\000"
	.space	3
.LC120:
	.ascii	"Lee Killough for MBF\000"
	.space	3
.LC121:
	.ascii	"The DOSDoom-Team for DOSDOOM\000"
	.space	3
.LC122:
	.ascii	"Randy Heit for ZDOOM\000"
	.space	3
.LC123:
	.ascii	"Michael 'Kodak' Ryssen for DOOMGL\000"
	.space	2
.LC124:
	.ascii	"Jess Haas for lSDLDoom\000"
	.space	1
.LC125:
	.ascii	"all others who helped (see AUTHORS file)\000"
	.space	3
.LC126:
	.ascii	"SCREEN\000"
	.space	1
.LC127:
	.ascii	"HELP\000"
	.space	3
.LC128:
	.ascii	"MENU\000"
	.space	3
.LC129:
	.ascii	"PAUSE\000"
	.space	2
.LC130:
	.ascii	"SOUND VOLUME\000"
	.space	3
.LC131:
	.ascii	"HUD\000"
.LC132:
	.ascii	"GAMMA FIX\000"
	.space	2
.LC133:
	.ascii	"SPY\000"
.LC134:
	.ascii	"LARGER VIEW\000"
.LC135:
	.ascii	"SMALLER VIEW\000"
	.space	3
.LC136:
	.ascii	"SCREENSHOT\000"
	.space	1
.LC137:
	.ascii	"FOLLOW MODE\000"
.LC138:
	.ascii	"ZOOM IN\000"
.LC139:
	.ascii	"ZOOM OUT\000"
	.space	3
.LC140:
	.ascii	"MARK PLACE\000"
	.space	1
.LC141:
	.ascii	"CLEAR MARKS\000"
.LC142:
	.ascii	"FULL/ZOOM\000"
	.space	2
.LC143:
	.ascii	"GRID\000"
	.space	3
.LC144:
	.ascii	"FIST\000"
	.space	3
.LC145:
	.ascii	"PISTOL\000"
	.space	1
.LC146:
	.ascii	"SHOTGUN\000"
.LC147:
	.ascii	"CHAINGUN\000"
	.space	3
.LC148:
	.ascii	"ROCKET\000"
	.space	1
.LC149:
	.ascii	"BFG 9000\000"
	.space	3
.LC150:
	.ascii	"CHAINSAW\000"
	.space	3
.LC151:
	.ascii	"BEST\000"
	.space	3
.LC152:
	.ascii	"FIRE\000"
	.space	3
.LC153:
	.ascii	"MOVEMENT\000"
	.space	3
.LC154:
	.ascii	"FORWARD\000"
.LC155:
	.ascii	"BACKWARD\000"
	.space	3
.LC156:
	.ascii	"TURN LEFT\000"
	.space	2
.LC157:
	.ascii	"TURN RIGHT\000"
	.space	1
.LC158:
	.ascii	"RUN\000"
.LC159:
	.ascii	"STRAFE LEFT\000"
.LC160:
	.ascii	"STRAFE RIGHT\000"
	.space	3
.LC161:
	.ascii	"STRAFE\000"
	.space	1
.LC162:
	.ascii	"AUTORUN\000"
.LC163:
	.ascii	"180 TURN\000"
	.space	3
.LC164:
	.ascii	"USE\000"
.LC165:
	.ascii	"GAME\000"
	.space	3
.LC166:
	.ascii	"SAVE\000"
	.space	3
.LC167:
	.ascii	"LOAD\000"
	.space	3
.LC168:
	.ascii	"QUICKSAVE\000"
	.space	2
.LC169:
	.ascii	"END GAME\000"
	.space	3
.LC170:
	.ascii	"QUICKLOAD\000"
	.space	2
.LC171:
	.ascii	"QUIT\000"
	.space	3
.LC172:
	.ascii	"1\000"
	.space	2
.LC173:
	.ascii	"chatmacro1\000"
	.space	1
.LC174:
	.ascii	"2\000"
	.space	2
.LC175:
	.ascii	"chatmacro2\000"
	.space	1
.LC176:
	.ascii	"3\000"
	.space	2
.LC177:
	.ascii	"chatmacro3\000"
	.space	1
.LC178:
	.ascii	"4\000"
	.space	2
.LC179:
	.ascii	"chatmacro4\000"
	.space	1
.LC180:
	.ascii	"5\000"
	.space	2
.LC181:
	.ascii	"chatmacro5\000"
	.space	1
.LC182:
	.ascii	"6\000"
	.space	2
.LC183:
	.ascii	"chatmacro6\000"
	.space	1
.LC184:
	.ascii	"7\000"
	.space	2
.LC185:
	.ascii	"chatmacro7\000"
	.space	1
.LC186:
	.ascii	"8\000"
	.space	2
.LC187:
	.ascii	"chatmacro8\000"
	.space	1
.LC188:
	.ascii	"9\000"
	.space	2
.LC189:
	.ascii	"chatmacro9\000"
	.space	1
.LC190:
	.ascii	"0\000"
	.space	2
.LC191:
	.ascii	"chatmacro0\000"
	.space	1
.LC192:
	.ascii	"Message Color During Play\000"
	.space	2
.LC193:
	.ascii	"hudcolor_mesg\000"
	.space	2
.LC194:
	.ascii	"Chat Message Color\000"
	.space	1
.LC195:
	.ascii	"hudcolor_chat\000"
	.space	2
.LC196:
	.ascii	"Message Review Color\000"
	.space	3
.LC197:
	.ascii	"hudcolor_list\000"
	.space	2
.LC198:
	.ascii	"Number of Review Message Lines\000"
	.space	1
.LC199:
	.ascii	"hud_msg_lines\000"
	.space	2
.LC200:
	.ascii	"Message Background\000"
	.space	1
.LC201:
	.ascii	"hud_list_bgon\000"
	.space	2
.LC202:
	.ascii	"All boss types can trigger tag 666 at ExM8\000"
	.space	1
.LC203:
	.ascii	"comp_666\000"
	.space	3
.LC204:
	.ascii	"Lost souls don't bounce off flat surfaces\000"
	.space	2
.LC205:
	.ascii	"comp_soul\000"
	.space	2
.LC206:
	.ascii	"2S middle textures do not animate\000"
	.space	2
.LC207:
	.ascii	"comp_maskedanim\000"
.LC208:
	.ascii	"Use exactly Doom's sound code behavior\000"
	.space	1
.LC209:
	.ascii	"comp_sound\000"
	.space	1
.LC210:
	.ascii	"<- PREV\000"
.LC211:
	.ascii	"Tagged doors don't trigger special lighting\000"
.LC212:
	.ascii	"comp_doorlight\000"
	.space	1
.LC213:
	.ascii	"God mode isn't absolute\000"
.LC214:
	.ascii	"comp_god\000"
	.space	3
.LC215:
	.ascii	"Powerup cheats are not infinite duration\000"
	.space	3
.LC216:
	.ascii	"comp_infcheat\000"
	.space	2
.LC217:
	.ascii	"Dead players can exit levels\000"
	.space	3
.LC218:
	.ascii	"comp_zombie\000"
.LC219:
	.ascii	"Sky is unaffected by invulnerability\000"
	.space	3
.LC220:
	.ascii	"comp_skymap\000"
.LC221:
	.ascii	"Use exactly Doom's stairbuilding method\000"
.LC222:
	.ascii	"comp_stairs\000"
.LC223:
	.ascii	"Use exactly Doom's floor motion behavior\000"
	.space	3
.LC224:
	.ascii	"comp_floors\000"
.LC225:
	.ascii	"Use exactly Doom's movement clipping code\000"
	.space	2
.LC226:
	.ascii	"comp_moveblock\000"
	.space	1
.LC227:
	.ascii	"Use exactly Doom's linedef trigger model\000"
	.space	3
.LC228:
	.ascii	"comp_model\000"
	.space	1
.LC229:
	.ascii	"Linedef effects work with sector tag = 0\000"
	.space	3
.LC230:
	.ascii	"comp_zerotags\000"
	.space	2
.LC231:
	.ascii	"NEXT ->\000"
.LC232:
	.ascii	"Any monster can telefrag on MAP30\000"
	.space	2
.LC233:
	.ascii	"comp_telefrag\000"
	.space	2
.LC234:
	.ascii	"Some objects never hang over tall ledges\000"
	.space	3
.LC235:
	.ascii	"comp_dropoff\000"
	.space	3
.LC236:
	.ascii	"Objects don't fall under their own weight\000"
	.space	2
.LC237:
	.ascii	"comp_falloff\000"
	.space	3
.LC238:
	.ascii	"Monsters randomly walk off of moving lifts\000"
	.space	1
.LC239:
	.ascii	"comp_staylift\000"
	.space	2
.LC240:
	.ascii	"Monsters get stuck on doortracks\000"
	.space	3
.LC241:
	.ascii	"comp_doorstuck\000"
	.space	1
.LC242:
	.ascii	"Monsters don't give up pursuit of targets\000"
	.space	2
.LC243:
	.ascii	"comp_pursuit\000"
	.space	3
.LC244:
	.ascii	"Arch-Vile resurrects invincible ghosts\000"
	.space	1
.LC245:
	.ascii	"comp_vile\000"
	.space	2
.LC246:
	.ascii	"Pain Elementals limited to 21 lost souls\000"
	.space	3
.LC247:
	.ascii	"comp_pain\000"
	.space	2
.LC248:
	.ascii	"Lost souls get stuck behind walls\000"
	.space	2
.LC249:
	.ascii	"comp_skull\000"
	.space	1
.LC250:
	.ascii	"Blazing doors make double closing sounds\000"
	.space	3
.LC251:
	.ascii	"comp_blazing\000"
	.space	3
.LC252:
	.ascii	"jagged\000"
	.space	1
.LC253:
	.ascii	"sloped\000"
	.space	1
.LC254:
	.ascii	"none\000"
	.space	3
.LC255:
	.ascii	"point\000"
	.space	2
.LC256:
	.ascii	"linear\000"
	.space	1
.LC257:
	.ascii	"rounded\000"
.LC258:
	.ascii	"\000"
	.space	3
.LC259:
	.ascii	"ITYTD\000"
	.space	2
.LC260:
	.ascii	"HNTR\000"
	.space	3
.LC261:
	.ascii	"HMP\000"
.LC262:
	.ascii	"UV\000"
	.space	1
.LC263:
	.ascii	"NM\000"
	.space	1
.LC264:
	.ascii	"8bit\000"
	.space	3
.LC265:
	.ascii	"15bit\000"
	.space	2
.LC266:
	.ascii	"16bit\000"
	.space	2
.LC267:
	.ascii	"32bit\000"
	.space	2
.LC268:
	.ascii	"OpenGL\000"
	.space	1
.LC269:
	.ascii	"Renderer settings\000"
	.space	2
.LC270:
	.ascii	"Filter for walls\000"
	.space	3
.LC271:
	.ascii	"filter_wall\000"
.LC272:
	.ascii	"Filter for floors/ceilings\000"
	.space	1
.LC273:
	.ascii	"filter_floor\000"
	.space	3
.LC274:
	.ascii	"Filter for sprites\000"
	.space	1
.LC275:
	.ascii	"filter_sprite\000"
	.space	2
.LC276:
	.ascii	"Filter for patches\000"
	.space	1
.LC277:
	.ascii	"filter_patch\000"
	.space	3
.LC278:
	.ascii	"Filter for lighting\000"
.LC279:
	.ascii	"filter_z\000"
	.space	3
.LC280:
	.ascii	"Drawing of sprite edges\000"
.LC281:
	.ascii	"sprite_edges\000"
	.space	3
.LC282:
	.ascii	"Drawing of patch edges\000"
	.space	1
.LC283:
	.ascii	"patch_edges\000"
.LC284:
	.ascii	"Flashing HOM indicator\000"
	.space	1
.LC285:
	.ascii	"flashing_hom\000"
	.space	3
.LC286:
	.ascii	"Input Devices\000"
	.space	2
.LC287:
	.ascii	"Enable Mouse\000"
	.space	3
.LC288:
	.ascii	"use_mouse\000"
	.space	2
.LC289:
	.ascii	"Files Preloaded at Game Startup\000"
.LC290:
	.ascii	"WAD # 1\000"
.LC291:
	.ascii	"wadfile_1\000"
	.space	2
.LC292:
	.ascii	"WAD #2\000"
	.space	1
.LC293:
	.ascii	"wadfile_2\000"
	.space	2
.LC294:
	.ascii	"DEH/BEX # 1\000"
.LC295:
	.ascii	"dehfile_1\000"
	.space	2
.LC296:
	.ascii	"DEH/BEX #2\000"
	.space	1
.LC297:
	.ascii	"dehfile_2\000"
	.space	2
.LC298:
	.ascii	"Miscellaneous\000"
	.space	2
.LC299:
	.ascii	"Maximum number of player corpses\000"
	.space	3
.LC300:
	.ascii	"max_player_corpse\000"
	.space	2
.LC301:
	.ascii	"Game speed, percentage of normal\000"
	.space	3
.LC302:
	.ascii	"realtic_clock_rate\000"
	.space	1
.LC303:
	.ascii	"Smooth Demo Playback\000"
	.space	3
.LC304:
	.ascii	"demo_smoothturns\000"
	.space	3
.LC305:
	.ascii	"Smooth Demo Playback Factor\000"
.LC306:
	.ascii	"demo_smoothturnsfactor\000"
	.space	1
.LC307:
	.ascii	"Default skill level\000"
.LC308:
	.ascii	"default_skill\000"
	.space	2
.LC309:
	.ascii	"Fullscreen menu background\000"
	.space	1
.LC310:
	.ascii	"menu_background\000"
.LC311:
	.ascii	"Video\000"
	.space	2
.LC312:
	.ascii	"Enable Translucency\000"
.LC313:
	.ascii	"translucency\000"
	.space	3
.LC314:
	.ascii	"Translucency filter percentage\000"
	.space	1
.LC315:
	.ascii	"tran_filter_pct\000"
.LC316:
	.ascii	"Fullscreen Video mode\000"
	.space	2
.LC317:
	.ascii	"use_fullscreen\000"
	.space	1
.LC318:
	.ascii	"Video mode\000"
	.space	1
.LC319:
	.ascii	"videomode\000"
	.space	2
.LC320:
	.ascii	"Uncapped Framerate\000"
	.space	1
.LC321:
	.ascii	"uncapped_framerate\000"
	.space	1
.LC322:
	.ascii	"Sound & Music\000"
	.space	2
.LC323:
	.ascii	"Number of Sound Channels\000"
	.space	3
.LC324:
	.ascii	"snd_channels\000"
	.space	3
.LC325:
	.ascii	"Enable v1.1 Pitch Effects\000"
	.space	2
.LC326:
	.ascii	"pitched_sounds\000"
	.space	1
.LC327:
	.ascii	"Monster Infighting When Provoked\000"
	.space	3
.LC328:
	.ascii	"monster_infighting\000"
	.space	1
.LC329:
	.ascii	"Remember Previous Enemy\000"
.LC330:
	.ascii	"monsters_remember\000"
	.space	2
.LC331:
	.ascii	"Monster Backing Out\000"
.LC332:
	.ascii	"monster_backing\000"
.LC333:
	.ascii	"Climb Steep Stairs\000"
	.space	1
.LC334:
	.ascii	"monkeys\000"
.LC335:
	.ascii	"Intelligently Avoid Hazards\000"
.LC336:
	.ascii	"monster_avoid_hazards\000"
	.space	2
.LC337:
	.ascii	"Affected by Friction\000"
	.space	3
.LC338:
	.ascii	"monster_friction\000"
	.space	3
.LC339:
	.ascii	"Rescue Dying Friends\000"
	.space	3
.LC340:
	.ascii	"help_friends\000"
	.space	3
.LC341:
	.ascii	"Number Of Single-Player Helper Dogs\000"
.LC342:
	.ascii	"player_helpers\000"
	.space	1
.LC343:
	.ascii	"Distance Friends Stay Away\000"
	.space	1
.LC344:
	.ascii	"friend_distance\000"
.LC345:
	.ascii	"Allow dogs to jump down\000"
.LC346:
	.ascii	"dog_jumping\000"
.LC347:
	.ascii	"teleporter line\000"
.LC348:
	.ascii	"mapcolor_tele\000"
	.space	2
.LC349:
	.ascii	"secret sector boundary\000"
	.space	1
.LC350:
	.ascii	"mapcolor_secr\000"
	.space	2
.LC351:
	.ascii	"exit line\000"
	.space	2
.LC352:
	.ascii	"mapcolor_exit\000"
	.space	2
.LC353:
	.ascii	"computer map unseen line\000"
	.space	3
.LC354:
	.ascii	"mapcolor_unsn\000"
	.space	2
.LC355:
	.ascii	"line w/no floor/ceiling changes\000"
.LC356:
	.ascii	"mapcolor_flat\000"
	.space	2
.LC357:
	.ascii	"general sprite\000"
	.space	1
.LC358:
	.ascii	"mapcolor_sprt\000"
	.space	2
.LC359:
	.ascii	"countable enemy sprite\000"
	.space	1
.LC360:
	.ascii	"mapcolor_enemy\000"
	.space	1
.LC361:
	.ascii	"countable item sprite\000"
	.space	2
.LC362:
	.ascii	"mapcolor_item\000"
	.space	2
.LC363:
	.ascii	"crosshair\000"
	.space	2
.LC364:
	.ascii	"mapcolor_hair\000"
	.space	2
.LC365:
	.ascii	"single player arrow\000"
.LC366:
	.ascii	"mapcolor_sngl\000"
	.space	2
.LC367:
	.ascii	"your colour in multiplayer\000"
	.space	1
.LC368:
	.ascii	"mapcolor_me\000"
.LC369:
	.ascii	"friends\000"
.LC370:
	.ascii	"mapcolor_frnd\000"
	.space	2
.LC371:
	.ascii	"background\000"
	.space	1
.LC372:
	.ascii	"mapcolor_back\000"
	.space	2
.LC373:
	.ascii	"grid lines\000"
	.space	1
.LC374:
	.ascii	"mapcolor_grid\000"
	.space	2
.LC375:
	.ascii	"normal 1s wall\000"
	.space	1
.LC376:
	.ascii	"mapcolor_wall\000"
	.space	2
.LC377:
	.ascii	"line at floor height change\000"
.LC378:
	.ascii	"mapcolor_fchg\000"
	.space	2
.LC379:
	.ascii	"line at ceiling height change\000"
	.space	2
.LC380:
	.ascii	"mapcolor_cchg\000"
	.space	2
.LC381:
	.ascii	"line at sector with floor = ceiling\000"
.LC382:
	.ascii	"mapcolor_clsd\000"
	.space	2
.LC383:
	.ascii	"red key\000"
.LC384:
	.ascii	"mapcolor_rkey\000"
	.space	2
.LC385:
	.ascii	"blue key\000"
	.space	3
.LC386:
	.ascii	"mapcolor_bkey\000"
	.space	2
.LC387:
	.ascii	"yellow key\000"
	.space	1
.LC388:
	.ascii	"mapcolor_ykey\000"
	.space	2
.LC389:
	.ascii	"red door\000"
	.space	3
.LC390:
	.ascii	"mapcolor_rdor\000"
	.space	2
.LC391:
	.ascii	"blue door\000"
	.space	2
.LC392:
	.ascii	"mapcolor_bdor\000"
	.space	2
.LC393:
	.ascii	"yellow door\000"
.LC394:
	.ascii	"mapcolor_ydor\000"
	.space	2
.LC395:
	.ascii	"AUTOMAP LEVEL TITLE COLOR\000"
	.space	2
.LC396:
	.ascii	"hudcolor_titl\000"
	.space	2
.LC397:
	.ascii	"AUTOMAP COORDINATES COLOR\000"
	.space	2
.LC398:
	.ascii	"hudcolor_xyco\000"
	.space	2
.LC399:
	.ascii	"Show Secrets only after entering\000"
	.space	3
.LC400:
	.ascii	"map_secret_after\000"
	.space	3
.LC401:
	.ascii	"Show coordinates of automap pointer\000"
.LC402:
	.ascii	"map_point_coord\000"
.LC403:
	.ascii	"STATUS BAR\000"
	.space	1
.LC404:
	.ascii	"USE RED NUMBERS\000"
.LC405:
	.ascii	"sts_always_red\000"
	.space	1
.LC406:
	.ascii	"GRAY %\000"
	.space	1
.LC407:
	.ascii	"sts_pct_always_gray\000"
.LC408:
	.ascii	"SINGLE KEY DISPLAY\000"
	.space	1
.LC409:
	.ascii	"sts_traditional_keys\000"
	.space	3
.LC410:
	.ascii	"HEADS-UP DISPLAY\000"
	.space	3
.LC411:
	.ascii	"HIDE SECRETS\000"
	.space	3
.LC412:
	.ascii	"hud_nosecrets\000"
	.space	2
.LC413:
	.ascii	"HEALTH LOW/OK\000"
	.space	2
.LC414:
	.ascii	"health_red\000"
	.space	1
.LC415:
	.ascii	"HEALTH OK/GOOD\000"
	.space	1
.LC416:
	.ascii	"health_yellow\000"
	.space	2
.LC417:
	.ascii	"HEALTH GOOD/EXTRA\000"
	.space	2
.LC418:
	.ascii	"health_green\000"
	.space	3
.LC419:
	.ascii	"ARMOR LOW/OK\000"
	.space	3
.LC420:
	.ascii	"armor_red\000"
	.space	2
.LC421:
	.ascii	"ARMOR OK/GOOD\000"
	.space	2
.LC422:
	.ascii	"armor_yellow\000"
	.space	3
.LC423:
	.ascii	"ARMOR GOOD/EXTRA\000"
	.space	3
.LC424:
	.ascii	"armor_green\000"
.LC425:
	.ascii	"AMMO LOW/OK\000"
.LC426:
	.ascii	"ammo_red\000"
	.space	3
.LC427:
	.ascii	"AMMO OK/GOOD\000"
	.space	3
.LC428:
	.ascii	"ammo_yellow\000"
.LC429:
	.ascii	"ENABLE RECOIL\000"
	.space	2
.LC430:
	.ascii	"weapon_recoil\000"
	.space	2
.LC431:
	.ascii	"ENABLE BOBBING\000"
	.space	1
.LC432:
	.ascii	"player_bobbing\000"
	.space	1
.LC433:
	.ascii	"1ST CHOICE WEAPON\000"
	.space	2
.LC434:
	.ascii	"weapon_choice_1\000"
.LC435:
	.ascii	"2nd CHOICE WEAPON\000"
	.space	2
.LC436:
	.ascii	"weapon_choice_2\000"
.LC437:
	.ascii	"3rd CHOICE WEAPON\000"
	.space	2
.LC438:
	.ascii	"weapon_choice_3\000"
.LC439:
	.ascii	"4th CHOICE WEAPON\000"
	.space	2
.LC440:
	.ascii	"weapon_choice_4\000"
.LC441:
	.ascii	"5th CHOICE WEAPON\000"
	.space	2
.LC442:
	.ascii	"weapon_choice_5\000"
.LC443:
	.ascii	"6th CHOICE WEAPON\000"
	.space	2
.LC444:
	.ascii	"weapon_choice_6\000"
.LC445:
	.ascii	"7th CHOICE WEAPON\000"
	.space	2
.LC446:
	.ascii	"weapon_choice_7\000"
.LC447:
	.ascii	"8th CHOICE WEAPON\000"
	.space	2
.LC448:
	.ascii	"weapon_choice_8\000"
.LC449:
	.ascii	"9th CHOICE WEAPON\000"
	.space	2
.LC450:
	.ascii	"weapon_choice_9\000"
.LC451:
	.ascii	"Enable Fist/Chainsaw\012& SG/SSG toggle\000"
	.space	3
.LC452:
	.ascii	"doom_weapon_toggles\000"
.LC453:
	.ascii	"FOLLOW\000"
	.space	1
.LC454:
	.ascii	"SHIFT UP\000"
	.space	3
.LC455:
	.ascii	"SHIFT DOWN\000"
	.space	1
.LC456:
	.ascii	"SHIFT LEFT\000"
	.space	1
.LC457:
	.ascii	"SHIFT RIGHT\000"
.LC458:
	.ascii	"CHATTING\000"
	.space	3
.LC459:
	.ascii	"BEGIN CHAT\000"
	.space	1
.LC460:
	.ascii	"PLAYER 1\000"
	.space	3
.LC461:
	.ascii	"PLAYER 2\000"
	.space	3
.LC462:
	.ascii	"PLAYER 3\000"
	.space	3
.LC463:
	.ascii	"PLAYER 4\000"
	.space	3
.LC464:
	.ascii	"BACKSPACE\000"
	.space	2
.LC465:
	.ascii	"ENTER\000"
	.space	2
.LC466:
	.ascii	"VOLUME\000"
	.space	1
.LC467:
	.ascii	"MENUS\000"
	.space	2
.LC468:
	.ascii	"NEXT ITEM\000"
	.space	2
.LC469:
	.ascii	"PREV ITEM\000"
	.space	2
.LC470:
	.ascii	"LEFT\000"
	.space	3
.LC471:
	.ascii	"RIGHT\000"
	.space	2
.LC472:
	.ascii	"SELECT ITEM\000"
.LC473:
	.ascii	"EXIT\000"
	.space	3
.LC474:
	.ascii	"HORIZONTAL\000"
	.space	1
.LC475:
	.ascii	"VERTICAL\000"
	.space	3
.LC476:
	.ascii	"SCREEN SIZE\000"
.LC477:
	.ascii	"MOUSE SENSITIVITY\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	setup_active, %object
	.size	setup_active, 4
setup_active:
	.space	4
	.type	set_keybnd_active, %object
	.size	set_keybnd_active, 4
set_keybnd_active:
	.space	4
	.type	setup_select, %object
	.size	setup_select, 4
setup_select:
	.space	4
	.type	default_verify, %object
	.size	default_verify, 4
default_verify:
	.space	4
	.type	setup_gather, %object
	.size	setup_gather, 4
setup_gather:
	.space	4
	.type	set_menu_itemon, %object
	.size	set_menu_itemon, 4
set_menu_itemon:
	.space	4
	.type	set_weapon_active, %object
	.size	set_weapon_active, 4
set_weapon_active:
	.space	4
	.type	set_status_active, %object
	.size	set_status_active, 4
set_status_active:
	.space	4
	.type	set_auto_active, %object
	.size	set_auto_active, 4
set_auto_active:
	.space	4
	.type	colorbox_active, %object
	.size	colorbox_active, 4
colorbox_active:
	.space	4
	.type	set_enemy_active, %object
	.size	set_enemy_active, 4
set_enemy_active:
	.space	4
	.type	set_general_active, %object
	.size	set_general_active, 4
set_general_active:
	.space	4
	.type	set_mess_active, %object
	.size	set_mess_active, 4
set_mess_active:
	.space	4
	.type	set_chat_active, %object
	.size	set_chat_active, 4
set_chat_active:
	.space	4
	.type	forced_loadgame_message, %object
	.size	forced_loadgame_message, 4
forced_loadgame_message:
	.space	4
	.type	endstring.11505, %object
	.size	endstring.11505, 160
endstring.11505:
	.space	160
	.type	messageString, %object
	.size	messageString, 4
messageString:
	.space	4
	.type	menu_buffer, %object
	.size	menu_buffer, 64
menu_buffer:
	.space	64
	.type	joywait.12129, %object
	.size	joywait.12129, 4
joywait.12129:
	.space	4
	.type	mousewait.12130, %object
	.size	mousewait.12130, 4
mousewait.12130:
	.space	4
	.type	shiftdown, %object
	.size	shiftdown, 4
shiftdown:
	.space	4
	.type	set_compat_active, %object
	.size	set_compat_active, 4
set_compat_active:
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
	.file 11 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 12 "c:/devl/prboom3ds/src/tables.h"
	.file 13 "c:/devl/prboom3ds/src/d_think.h"
	.file 14 "c:/devl/prboom3ds/src/info.h"
	.file 15 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 16 "c:/devl/prboom3ds/src/doomdata.h"
	.file 17 "c:/devl/prboom3ds/src/p_mobj.h"
	.file 18 "c:/devl/prboom3ds/src/r_defs.h"
	.file 19 "c:/devl/prboom3ds/src/d_player.h"
	.file 20 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 21 "c:/devl/prboom3ds/src/doomstat.h"
	.file 22 "c:/devl/prboom3ds/src/d_event.h"
	.file 23 "c:/devl/prboom3ds/src/v_video.h"
	.file 24 "c:/devl/prboom3ds/src/sounds.h"
	.file 25 "c:/devl/prboom3ds/src/m_menu.h"
	.file 26 "c:/devl/prboom3ds/src/m_misc.h"
	.file 27 "c:/devl/prboom3ds/src/lprintf.h"
	.file 28 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\ctype.h"
	.file 29 "c:/devl/prboom3ds/src/dstrings.h"
	.file 30 "c:/devl/prboom3ds/src/d_main.h"
	.file 31 "c:/devl/prboom3ds/src/hu_stuff.h"
	.file 32 "c:/devl/prboom3ds/src/g_game.h"
	.file 33 "c:/devl/prboom3ds/src/d_deh.h"
	.file 34 "c:/devl/prboom3ds/src/i_main.h"
	.file 35 "c:/devl/prboom3ds/src/i_sound.h"
	.file 36 "c:/devl/prboom3ds/src/r_demo.h"
	.file 37 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 38 "c:/devl/prboom3ds/src/s_sound.h"
	.file 39 "c:/devl/prboom3ds/src/r_main.h"
	.file 40 "c:/devl/prboom3ds/src/r_data.h"
	.file 41 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 42 "c:/devl/prboom3ds/src/i_video.h"
	.file 43 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa67a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2631
	.byte	0x1
	.4byte	.LASF2632
	.4byte	.LASF2633
	.4byte	.Ldebug_ranges0+0xbc8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
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
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x5
	.byte	0x10
	.4byte	0x5c
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x5
	.byte	0x27
	.4byte	0x5c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x161
	.4byte	0x30
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
	.4byte	0x47
	.4byte	0xd4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x3
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
	.4byte	0x39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0x4e
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4f
	.4byte	0xdb
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x53
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.4byte	0x63
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
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x30
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x30
	.4byte	0x39
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x30
	.4byte	0x39
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
	.4byte	0x39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x38
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.4byte	0x39
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.4byte	0x39
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.4byte	0x39
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.4byte	0x39
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.4byte	0x39
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
	.4byte	0x37
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
	.4byte	0x39
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
	.4byte	0x39
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x47
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
	.4byte	0x39
	.byte	0x4
	.uleb128 0xe
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb7
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0xb8
	.4byte	0x4e
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
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc1
	.4byte	0x37
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x39
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF87
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0x13
	.4byte	0x39
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x39
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
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x8e
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x597
	.uleb128 0x13
	.4byte	0x39
	.4byte	0x5cf
	.uleb128 0x14
	.4byte	0x41d
	.uleb128 0x14
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5bb
	.uleb128 0x9
	.4byte	0x47
	.4byte	0x5e5
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x47
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
	.4byte	0x39
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
	.4byte	0x55
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	0x55
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
	.4byte	0x30
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
	.4byte	0x39
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x25f
	.4byte	0x71
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x30
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
	.4byte	0x39
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
	.uleb128 0x2
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
	.byte	0x43
	.4byte	0x8e4
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
	.byte	0
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x9
	.byte	0x49
	.4byte	0x8bd
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0x55
	.4byte	0x910
	.uleb128 0x20
	.4byte	.LASF134
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF135
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF136
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF137
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x9
	.byte	0x5a
	.4byte	0x8ef
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0x95
	.4byte	0x93c
	.uleb128 0x20
	.4byte	.LASF139
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF140
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF141
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF142
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x9
	.byte	0x9a
	.4byte	0x91b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0xaf
	.4byte	0x974
	.uleb128 0x20
	.4byte	.LASF144
	.sleb128 -1
	.uleb128 0x20
	.4byte	.LASF145
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF146
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF147
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF148
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF149
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x9
	.byte	0xb6
	.4byte	0x947
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0xbc
	.4byte	0x9b2
	.uleb128 0x20
	.4byte	.LASF151
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF152
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF153
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF154
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF155
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF156
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF157
	.sleb128 6
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0xc8
	.4byte	0x9fd
	.uleb128 0x20
	.4byte	.LASF158
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF159
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF160
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF161
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF162
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF163
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF164
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF165
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF166
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF167
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF168
	.sleb128 10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x9
	.byte	0xd5
	.4byte	0x9b2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0xd8
	.4byte	0xa35
	.uleb128 0x20
	.4byte	.LASF170
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF171
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF172
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF173
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF174
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF175
	.sleb128 5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0xe2
	.4byte	0xa68
	.uleb128 0x20
	.4byte	.LASF176
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF177
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF178
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF179
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF180
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF181
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF182
	.sleb128 6
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x9
	.2byte	0x13c
	.4byte	0xab4
	.uleb128 0x20
	.4byte	.LASF183
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF184
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF185
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF186
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF187
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF188
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF189
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF190
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF191
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF192
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF193
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF194
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0xa
	.byte	0x42
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0xa
	.byte	0x4c
	.4byte	0x47
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0xa
	.byte	0x5c
	.4byte	0x71
	.uleb128 0x1f
	.byte	0x1
	.byte	0xa
	.byte	0x77
	.4byte	0xb63
	.uleb128 0x20
	.4byte	.LASF198
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF199
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF200
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF201
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF202
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF203
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF204
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF205
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF206
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF207
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF208
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF209
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF210
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF211
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF212
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF213
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF214
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF215
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF216
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF217
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF218
	.sleb128 17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF219
	.byte	0xa
	.byte	0x8e
	.4byte	0xadc
	.uleb128 0x22
	.4byte	.LASF1730
	.byte	0x1
	.byte	0xa
	.byte	0x91
	.4byte	0xb93
	.uleb128 0x20
	.4byte	.LASF220
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF221
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF222
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF223
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0xb
	.byte	0x2f
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0xc
	.byte	0x47
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF226
	.byte	0xd
	.byte	0x32
	.4byte	0xbb4
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbba
	.uleb128 0x23
	.4byte	0xbc1
	.uleb128 0x24
	.byte	0
	.uleb128 0x2
	.4byte	.LASF227
	.byte	0xd
	.byte	0x48
	.4byte	0xba9
	.uleb128 0xd
	.4byte	.LASF228
	.byte	0x18
	.byte	0xd
	.byte	0x4c
	.4byte	0xc21
	.uleb128 0xc
	.4byte	.LASF229
	.byte	0xd
	.byte	0x4e
	.4byte	0xc21
	.byte	0
	.uleb128 0xc
	.4byte	.LASF230
	.byte	0xd
	.byte	0x4f
	.4byte	0xc21
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF231
	.byte	0xd
	.byte	0x50
	.4byte	0xbc1
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF232
	.byte	0xd
	.byte	0x56
	.4byte	0xc21
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF233
	.byte	0xd
	.byte	0x56
	.4byte	0xc21
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF234
	.byte	0xd
	.byte	0x5b
	.4byte	0x30
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbcc
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0xd
	.byte	0x5c
	.4byte	0xbcc
	.uleb128 0x1f
	.byte	0x1
	.byte	0xe
	.byte	0x2e
	.4byte	0xfd6
	.uleb128 0x20
	.4byte	.LASF236
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF237
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF238
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF239
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF240
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF241
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF242
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF243
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF244
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF245
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF246
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF247
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF248
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF249
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF250
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF251
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF252
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF253
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF254
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF255
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF256
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF257
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF258
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF259
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF260
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF261
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF262
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF263
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF264
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF265
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF266
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF267
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF268
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF269
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF270
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF271
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF272
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF273
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF274
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF275
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF276
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF277
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF278
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF279
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF280
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF281
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF282
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF283
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF284
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF285
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF286
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF287
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF288
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF289
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF290
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF291
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF292
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF293
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF294
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF295
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF296
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF297
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF298
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF299
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF300
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF301
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF302
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF303
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF304
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF305
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF306
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF307
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF308
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF309
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF310
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF311
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF312
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF313
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF314
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF315
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF316
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF317
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF318
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF319
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF320
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF321
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF322
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF323
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF324
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF325
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF326
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF327
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF328
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF329
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF330
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF331
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF332
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF333
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF334
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF335
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF336
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF337
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF338
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF339
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF340
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF341
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF342
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF343
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF344
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF345
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF346
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF347
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF348
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF349
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF350
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF351
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF352
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF353
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF354
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF355
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF356
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF357
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF358
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF359
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF360
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF361
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF362
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF363
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF364
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF365
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF366
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF367
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF368
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF369
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF370
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF371
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF372
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF373
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF374
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF375
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF376
	.sleb128 140
	.byte	0
	.uleb128 0x2
	.4byte	.LASF377
	.byte	0xe
	.byte	0xc1
	.4byte	0xc32
	.uleb128 0x1f
	.byte	0x2
	.byte	0xe
	.byte	0xc8
	.4byte	0x2c05
	.uleb128 0x20
	.4byte	.LASF378
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF379
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF380
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF381
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF382
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF383
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF384
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF385
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF386
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF387
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF388
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF389
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF390
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF391
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF392
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF393
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF394
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF395
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF396
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF397
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF398
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF399
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF400
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF401
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF402
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF403
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF404
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF405
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF406
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF407
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF408
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF409
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF410
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF411
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF412
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF413
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF414
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF415
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF416
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF417
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF418
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF419
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF420
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF421
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF422
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF423
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF424
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF425
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF426
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF427
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF428
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF429
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF430
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF431
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF432
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF433
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF434
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF435
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF436
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF437
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF438
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF439
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF440
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF441
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF442
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF443
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF444
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF445
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF446
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF447
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF448
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF449
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF450
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF451
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF452
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF453
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF454
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF455
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF456
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF457
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF458
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF459
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF460
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF461
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF462
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF463
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF464
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF465
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF466
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF467
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF468
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF469
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF470
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF471
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF472
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF473
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF474
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF475
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF476
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF477
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF478
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF479
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF480
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF481
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF482
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF483
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF484
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF485
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF486
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF487
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF488
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF489
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF490
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF491
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF492
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF493
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF494
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF495
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF496
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF497
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF498
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF499
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF500
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF501
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF502
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF503
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF504
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF505
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF506
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF507
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF508
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF509
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF510
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF511
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF512
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF513
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF514
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF515
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF516
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF517
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF518
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF519
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF520
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF521
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF522
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF523
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF524
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF525
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF526
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF527
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF528
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF529
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF530
	.sleb128 152
	.uleb128 0x20
	.4byte	.LASF531
	.sleb128 153
	.uleb128 0x20
	.4byte	.LASF532
	.sleb128 154
	.uleb128 0x20
	.4byte	.LASF533
	.sleb128 155
	.uleb128 0x20
	.4byte	.LASF534
	.sleb128 156
	.uleb128 0x20
	.4byte	.LASF535
	.sleb128 157
	.uleb128 0x20
	.4byte	.LASF536
	.sleb128 158
	.uleb128 0x20
	.4byte	.LASF537
	.sleb128 159
	.uleb128 0x20
	.4byte	.LASF538
	.sleb128 160
	.uleb128 0x20
	.4byte	.LASF539
	.sleb128 161
	.uleb128 0x20
	.4byte	.LASF540
	.sleb128 162
	.uleb128 0x20
	.4byte	.LASF541
	.sleb128 163
	.uleb128 0x20
	.4byte	.LASF542
	.sleb128 164
	.uleb128 0x20
	.4byte	.LASF543
	.sleb128 165
	.uleb128 0x20
	.4byte	.LASF544
	.sleb128 166
	.uleb128 0x20
	.4byte	.LASF545
	.sleb128 167
	.uleb128 0x20
	.4byte	.LASF546
	.sleb128 168
	.uleb128 0x20
	.4byte	.LASF547
	.sleb128 169
	.uleb128 0x20
	.4byte	.LASF548
	.sleb128 170
	.uleb128 0x20
	.4byte	.LASF549
	.sleb128 171
	.uleb128 0x20
	.4byte	.LASF550
	.sleb128 172
	.uleb128 0x20
	.4byte	.LASF551
	.sleb128 173
	.uleb128 0x20
	.4byte	.LASF552
	.sleb128 174
	.uleb128 0x20
	.4byte	.LASF553
	.sleb128 175
	.uleb128 0x20
	.4byte	.LASF554
	.sleb128 176
	.uleb128 0x20
	.4byte	.LASF555
	.sleb128 177
	.uleb128 0x20
	.4byte	.LASF556
	.sleb128 178
	.uleb128 0x20
	.4byte	.LASF557
	.sleb128 179
	.uleb128 0x20
	.4byte	.LASF558
	.sleb128 180
	.uleb128 0x20
	.4byte	.LASF559
	.sleb128 181
	.uleb128 0x20
	.4byte	.LASF560
	.sleb128 182
	.uleb128 0x20
	.4byte	.LASF561
	.sleb128 183
	.uleb128 0x20
	.4byte	.LASF562
	.sleb128 184
	.uleb128 0x20
	.4byte	.LASF563
	.sleb128 185
	.uleb128 0x20
	.4byte	.LASF564
	.sleb128 186
	.uleb128 0x20
	.4byte	.LASF565
	.sleb128 187
	.uleb128 0x20
	.4byte	.LASF566
	.sleb128 188
	.uleb128 0x20
	.4byte	.LASF567
	.sleb128 189
	.uleb128 0x20
	.4byte	.LASF568
	.sleb128 190
	.uleb128 0x20
	.4byte	.LASF569
	.sleb128 191
	.uleb128 0x20
	.4byte	.LASF570
	.sleb128 192
	.uleb128 0x20
	.4byte	.LASF571
	.sleb128 193
	.uleb128 0x20
	.4byte	.LASF572
	.sleb128 194
	.uleb128 0x20
	.4byte	.LASF573
	.sleb128 195
	.uleb128 0x20
	.4byte	.LASF574
	.sleb128 196
	.uleb128 0x20
	.4byte	.LASF575
	.sleb128 197
	.uleb128 0x20
	.4byte	.LASF576
	.sleb128 198
	.uleb128 0x20
	.4byte	.LASF577
	.sleb128 199
	.uleb128 0x20
	.4byte	.LASF578
	.sleb128 200
	.uleb128 0x20
	.4byte	.LASF579
	.sleb128 201
	.uleb128 0x20
	.4byte	.LASF580
	.sleb128 202
	.uleb128 0x20
	.4byte	.LASF581
	.sleb128 203
	.uleb128 0x20
	.4byte	.LASF582
	.sleb128 204
	.uleb128 0x20
	.4byte	.LASF583
	.sleb128 205
	.uleb128 0x20
	.4byte	.LASF584
	.sleb128 206
	.uleb128 0x20
	.4byte	.LASF585
	.sleb128 207
	.uleb128 0x20
	.4byte	.LASF586
	.sleb128 208
	.uleb128 0x20
	.4byte	.LASF587
	.sleb128 209
	.uleb128 0x20
	.4byte	.LASF588
	.sleb128 210
	.uleb128 0x20
	.4byte	.LASF589
	.sleb128 211
	.uleb128 0x20
	.4byte	.LASF590
	.sleb128 212
	.uleb128 0x20
	.4byte	.LASF591
	.sleb128 213
	.uleb128 0x20
	.4byte	.LASF592
	.sleb128 214
	.uleb128 0x20
	.4byte	.LASF593
	.sleb128 215
	.uleb128 0x20
	.4byte	.LASF594
	.sleb128 216
	.uleb128 0x20
	.4byte	.LASF595
	.sleb128 217
	.uleb128 0x20
	.4byte	.LASF596
	.sleb128 218
	.uleb128 0x20
	.4byte	.LASF597
	.sleb128 219
	.uleb128 0x20
	.4byte	.LASF598
	.sleb128 220
	.uleb128 0x20
	.4byte	.LASF599
	.sleb128 221
	.uleb128 0x20
	.4byte	.LASF600
	.sleb128 222
	.uleb128 0x20
	.4byte	.LASF601
	.sleb128 223
	.uleb128 0x20
	.4byte	.LASF602
	.sleb128 224
	.uleb128 0x20
	.4byte	.LASF603
	.sleb128 225
	.uleb128 0x20
	.4byte	.LASF604
	.sleb128 226
	.uleb128 0x20
	.4byte	.LASF605
	.sleb128 227
	.uleb128 0x20
	.4byte	.LASF606
	.sleb128 228
	.uleb128 0x20
	.4byte	.LASF607
	.sleb128 229
	.uleb128 0x20
	.4byte	.LASF608
	.sleb128 230
	.uleb128 0x20
	.4byte	.LASF609
	.sleb128 231
	.uleb128 0x20
	.4byte	.LASF610
	.sleb128 232
	.uleb128 0x20
	.4byte	.LASF611
	.sleb128 233
	.uleb128 0x20
	.4byte	.LASF612
	.sleb128 234
	.uleb128 0x20
	.4byte	.LASF613
	.sleb128 235
	.uleb128 0x20
	.4byte	.LASF614
	.sleb128 236
	.uleb128 0x20
	.4byte	.LASF615
	.sleb128 237
	.uleb128 0x20
	.4byte	.LASF616
	.sleb128 238
	.uleb128 0x20
	.4byte	.LASF617
	.sleb128 239
	.uleb128 0x20
	.4byte	.LASF618
	.sleb128 240
	.uleb128 0x20
	.4byte	.LASF619
	.sleb128 241
	.uleb128 0x20
	.4byte	.LASF620
	.sleb128 242
	.uleb128 0x20
	.4byte	.LASF621
	.sleb128 243
	.uleb128 0x20
	.4byte	.LASF622
	.sleb128 244
	.uleb128 0x20
	.4byte	.LASF623
	.sleb128 245
	.uleb128 0x20
	.4byte	.LASF624
	.sleb128 246
	.uleb128 0x20
	.4byte	.LASF625
	.sleb128 247
	.uleb128 0x20
	.4byte	.LASF626
	.sleb128 248
	.uleb128 0x20
	.4byte	.LASF627
	.sleb128 249
	.uleb128 0x20
	.4byte	.LASF628
	.sleb128 250
	.uleb128 0x20
	.4byte	.LASF629
	.sleb128 251
	.uleb128 0x20
	.4byte	.LASF630
	.sleb128 252
	.uleb128 0x20
	.4byte	.LASF631
	.sleb128 253
	.uleb128 0x20
	.4byte	.LASF632
	.sleb128 254
	.uleb128 0x20
	.4byte	.LASF633
	.sleb128 255
	.uleb128 0x20
	.4byte	.LASF634
	.sleb128 256
	.uleb128 0x20
	.4byte	.LASF635
	.sleb128 257
	.uleb128 0x20
	.4byte	.LASF636
	.sleb128 258
	.uleb128 0x20
	.4byte	.LASF637
	.sleb128 259
	.uleb128 0x20
	.4byte	.LASF638
	.sleb128 260
	.uleb128 0x20
	.4byte	.LASF639
	.sleb128 261
	.uleb128 0x20
	.4byte	.LASF640
	.sleb128 262
	.uleb128 0x20
	.4byte	.LASF641
	.sleb128 263
	.uleb128 0x20
	.4byte	.LASF642
	.sleb128 264
	.uleb128 0x20
	.4byte	.LASF643
	.sleb128 265
	.uleb128 0x20
	.4byte	.LASF644
	.sleb128 266
	.uleb128 0x20
	.4byte	.LASF645
	.sleb128 267
	.uleb128 0x20
	.4byte	.LASF646
	.sleb128 268
	.uleb128 0x20
	.4byte	.LASF647
	.sleb128 269
	.uleb128 0x20
	.4byte	.LASF648
	.sleb128 270
	.uleb128 0x20
	.4byte	.LASF649
	.sleb128 271
	.uleb128 0x20
	.4byte	.LASF650
	.sleb128 272
	.uleb128 0x20
	.4byte	.LASF651
	.sleb128 273
	.uleb128 0x20
	.4byte	.LASF652
	.sleb128 274
	.uleb128 0x20
	.4byte	.LASF653
	.sleb128 275
	.uleb128 0x20
	.4byte	.LASF654
	.sleb128 276
	.uleb128 0x20
	.4byte	.LASF655
	.sleb128 277
	.uleb128 0x20
	.4byte	.LASF656
	.sleb128 278
	.uleb128 0x20
	.4byte	.LASF657
	.sleb128 279
	.uleb128 0x20
	.4byte	.LASF658
	.sleb128 280
	.uleb128 0x20
	.4byte	.LASF659
	.sleb128 281
	.uleb128 0x20
	.4byte	.LASF660
	.sleb128 282
	.uleb128 0x20
	.4byte	.LASF661
	.sleb128 283
	.uleb128 0x20
	.4byte	.LASF662
	.sleb128 284
	.uleb128 0x20
	.4byte	.LASF663
	.sleb128 285
	.uleb128 0x20
	.4byte	.LASF664
	.sleb128 286
	.uleb128 0x20
	.4byte	.LASF665
	.sleb128 287
	.uleb128 0x20
	.4byte	.LASF666
	.sleb128 288
	.uleb128 0x20
	.4byte	.LASF667
	.sleb128 289
	.uleb128 0x20
	.4byte	.LASF668
	.sleb128 290
	.uleb128 0x20
	.4byte	.LASF669
	.sleb128 291
	.uleb128 0x20
	.4byte	.LASF670
	.sleb128 292
	.uleb128 0x20
	.4byte	.LASF671
	.sleb128 293
	.uleb128 0x20
	.4byte	.LASF672
	.sleb128 294
	.uleb128 0x20
	.4byte	.LASF673
	.sleb128 295
	.uleb128 0x20
	.4byte	.LASF674
	.sleb128 296
	.uleb128 0x20
	.4byte	.LASF675
	.sleb128 297
	.uleb128 0x20
	.4byte	.LASF676
	.sleb128 298
	.uleb128 0x20
	.4byte	.LASF677
	.sleb128 299
	.uleb128 0x20
	.4byte	.LASF678
	.sleb128 300
	.uleb128 0x20
	.4byte	.LASF679
	.sleb128 301
	.uleb128 0x20
	.4byte	.LASF680
	.sleb128 302
	.uleb128 0x20
	.4byte	.LASF681
	.sleb128 303
	.uleb128 0x20
	.4byte	.LASF682
	.sleb128 304
	.uleb128 0x20
	.4byte	.LASF683
	.sleb128 305
	.uleb128 0x20
	.4byte	.LASF684
	.sleb128 306
	.uleb128 0x20
	.4byte	.LASF685
	.sleb128 307
	.uleb128 0x20
	.4byte	.LASF686
	.sleb128 308
	.uleb128 0x20
	.4byte	.LASF687
	.sleb128 309
	.uleb128 0x20
	.4byte	.LASF688
	.sleb128 310
	.uleb128 0x20
	.4byte	.LASF689
	.sleb128 311
	.uleb128 0x20
	.4byte	.LASF690
	.sleb128 312
	.uleb128 0x20
	.4byte	.LASF691
	.sleb128 313
	.uleb128 0x20
	.4byte	.LASF692
	.sleb128 314
	.uleb128 0x20
	.4byte	.LASF693
	.sleb128 315
	.uleb128 0x20
	.4byte	.LASF694
	.sleb128 316
	.uleb128 0x20
	.4byte	.LASF695
	.sleb128 317
	.uleb128 0x20
	.4byte	.LASF696
	.sleb128 318
	.uleb128 0x20
	.4byte	.LASF697
	.sleb128 319
	.uleb128 0x20
	.4byte	.LASF698
	.sleb128 320
	.uleb128 0x20
	.4byte	.LASF699
	.sleb128 321
	.uleb128 0x20
	.4byte	.LASF700
	.sleb128 322
	.uleb128 0x20
	.4byte	.LASF701
	.sleb128 323
	.uleb128 0x20
	.4byte	.LASF702
	.sleb128 324
	.uleb128 0x20
	.4byte	.LASF703
	.sleb128 325
	.uleb128 0x20
	.4byte	.LASF704
	.sleb128 326
	.uleb128 0x20
	.4byte	.LASF705
	.sleb128 327
	.uleb128 0x20
	.4byte	.LASF706
	.sleb128 328
	.uleb128 0x20
	.4byte	.LASF707
	.sleb128 329
	.uleb128 0x20
	.4byte	.LASF708
	.sleb128 330
	.uleb128 0x20
	.4byte	.LASF709
	.sleb128 331
	.uleb128 0x20
	.4byte	.LASF710
	.sleb128 332
	.uleb128 0x20
	.4byte	.LASF711
	.sleb128 333
	.uleb128 0x20
	.4byte	.LASF712
	.sleb128 334
	.uleb128 0x20
	.4byte	.LASF713
	.sleb128 335
	.uleb128 0x20
	.4byte	.LASF714
	.sleb128 336
	.uleb128 0x20
	.4byte	.LASF715
	.sleb128 337
	.uleb128 0x20
	.4byte	.LASF716
	.sleb128 338
	.uleb128 0x20
	.4byte	.LASF717
	.sleb128 339
	.uleb128 0x20
	.4byte	.LASF718
	.sleb128 340
	.uleb128 0x20
	.4byte	.LASF719
	.sleb128 341
	.uleb128 0x20
	.4byte	.LASF720
	.sleb128 342
	.uleb128 0x20
	.4byte	.LASF721
	.sleb128 343
	.uleb128 0x20
	.4byte	.LASF722
	.sleb128 344
	.uleb128 0x20
	.4byte	.LASF723
	.sleb128 345
	.uleb128 0x20
	.4byte	.LASF724
	.sleb128 346
	.uleb128 0x20
	.4byte	.LASF725
	.sleb128 347
	.uleb128 0x20
	.4byte	.LASF726
	.sleb128 348
	.uleb128 0x20
	.4byte	.LASF727
	.sleb128 349
	.uleb128 0x20
	.4byte	.LASF728
	.sleb128 350
	.uleb128 0x20
	.4byte	.LASF729
	.sleb128 351
	.uleb128 0x20
	.4byte	.LASF730
	.sleb128 352
	.uleb128 0x20
	.4byte	.LASF731
	.sleb128 353
	.uleb128 0x20
	.4byte	.LASF732
	.sleb128 354
	.uleb128 0x20
	.4byte	.LASF733
	.sleb128 355
	.uleb128 0x20
	.4byte	.LASF734
	.sleb128 356
	.uleb128 0x20
	.4byte	.LASF735
	.sleb128 357
	.uleb128 0x20
	.4byte	.LASF736
	.sleb128 358
	.uleb128 0x20
	.4byte	.LASF737
	.sleb128 359
	.uleb128 0x20
	.4byte	.LASF738
	.sleb128 360
	.uleb128 0x20
	.4byte	.LASF739
	.sleb128 361
	.uleb128 0x20
	.4byte	.LASF740
	.sleb128 362
	.uleb128 0x20
	.4byte	.LASF741
	.sleb128 363
	.uleb128 0x20
	.4byte	.LASF742
	.sleb128 364
	.uleb128 0x20
	.4byte	.LASF743
	.sleb128 365
	.uleb128 0x20
	.4byte	.LASF744
	.sleb128 366
	.uleb128 0x20
	.4byte	.LASF745
	.sleb128 367
	.uleb128 0x20
	.4byte	.LASF746
	.sleb128 368
	.uleb128 0x20
	.4byte	.LASF747
	.sleb128 369
	.uleb128 0x20
	.4byte	.LASF748
	.sleb128 370
	.uleb128 0x20
	.4byte	.LASF749
	.sleb128 371
	.uleb128 0x20
	.4byte	.LASF750
	.sleb128 372
	.uleb128 0x20
	.4byte	.LASF751
	.sleb128 373
	.uleb128 0x20
	.4byte	.LASF752
	.sleb128 374
	.uleb128 0x20
	.4byte	.LASF753
	.sleb128 375
	.uleb128 0x20
	.4byte	.LASF754
	.sleb128 376
	.uleb128 0x20
	.4byte	.LASF755
	.sleb128 377
	.uleb128 0x20
	.4byte	.LASF756
	.sleb128 378
	.uleb128 0x20
	.4byte	.LASF757
	.sleb128 379
	.uleb128 0x20
	.4byte	.LASF758
	.sleb128 380
	.uleb128 0x20
	.4byte	.LASF759
	.sleb128 381
	.uleb128 0x20
	.4byte	.LASF760
	.sleb128 382
	.uleb128 0x20
	.4byte	.LASF761
	.sleb128 383
	.uleb128 0x20
	.4byte	.LASF762
	.sleb128 384
	.uleb128 0x20
	.4byte	.LASF763
	.sleb128 385
	.uleb128 0x20
	.4byte	.LASF764
	.sleb128 386
	.uleb128 0x20
	.4byte	.LASF765
	.sleb128 387
	.uleb128 0x20
	.4byte	.LASF766
	.sleb128 388
	.uleb128 0x20
	.4byte	.LASF767
	.sleb128 389
	.uleb128 0x20
	.4byte	.LASF768
	.sleb128 390
	.uleb128 0x20
	.4byte	.LASF769
	.sleb128 391
	.uleb128 0x20
	.4byte	.LASF770
	.sleb128 392
	.uleb128 0x20
	.4byte	.LASF771
	.sleb128 393
	.uleb128 0x20
	.4byte	.LASF772
	.sleb128 394
	.uleb128 0x20
	.4byte	.LASF773
	.sleb128 395
	.uleb128 0x20
	.4byte	.LASF774
	.sleb128 396
	.uleb128 0x20
	.4byte	.LASF775
	.sleb128 397
	.uleb128 0x20
	.4byte	.LASF776
	.sleb128 398
	.uleb128 0x20
	.4byte	.LASF777
	.sleb128 399
	.uleb128 0x20
	.4byte	.LASF778
	.sleb128 400
	.uleb128 0x20
	.4byte	.LASF779
	.sleb128 401
	.uleb128 0x20
	.4byte	.LASF780
	.sleb128 402
	.uleb128 0x20
	.4byte	.LASF781
	.sleb128 403
	.uleb128 0x20
	.4byte	.LASF782
	.sleb128 404
	.uleb128 0x20
	.4byte	.LASF783
	.sleb128 405
	.uleb128 0x20
	.4byte	.LASF784
	.sleb128 406
	.uleb128 0x20
	.4byte	.LASF785
	.sleb128 407
	.uleb128 0x20
	.4byte	.LASF786
	.sleb128 408
	.uleb128 0x20
	.4byte	.LASF787
	.sleb128 409
	.uleb128 0x20
	.4byte	.LASF788
	.sleb128 410
	.uleb128 0x20
	.4byte	.LASF789
	.sleb128 411
	.uleb128 0x20
	.4byte	.LASF790
	.sleb128 412
	.uleb128 0x20
	.4byte	.LASF791
	.sleb128 413
	.uleb128 0x20
	.4byte	.LASF792
	.sleb128 414
	.uleb128 0x20
	.4byte	.LASF793
	.sleb128 415
	.uleb128 0x20
	.4byte	.LASF794
	.sleb128 416
	.uleb128 0x20
	.4byte	.LASF795
	.sleb128 417
	.uleb128 0x20
	.4byte	.LASF796
	.sleb128 418
	.uleb128 0x20
	.4byte	.LASF797
	.sleb128 419
	.uleb128 0x20
	.4byte	.LASF798
	.sleb128 420
	.uleb128 0x20
	.4byte	.LASF799
	.sleb128 421
	.uleb128 0x20
	.4byte	.LASF800
	.sleb128 422
	.uleb128 0x20
	.4byte	.LASF801
	.sleb128 423
	.uleb128 0x20
	.4byte	.LASF802
	.sleb128 424
	.uleb128 0x20
	.4byte	.LASF803
	.sleb128 425
	.uleb128 0x20
	.4byte	.LASF804
	.sleb128 426
	.uleb128 0x20
	.4byte	.LASF805
	.sleb128 427
	.uleb128 0x20
	.4byte	.LASF806
	.sleb128 428
	.uleb128 0x20
	.4byte	.LASF807
	.sleb128 429
	.uleb128 0x20
	.4byte	.LASF808
	.sleb128 430
	.uleb128 0x20
	.4byte	.LASF809
	.sleb128 431
	.uleb128 0x20
	.4byte	.LASF810
	.sleb128 432
	.uleb128 0x20
	.4byte	.LASF811
	.sleb128 433
	.uleb128 0x20
	.4byte	.LASF812
	.sleb128 434
	.uleb128 0x20
	.4byte	.LASF813
	.sleb128 435
	.uleb128 0x20
	.4byte	.LASF814
	.sleb128 436
	.uleb128 0x20
	.4byte	.LASF815
	.sleb128 437
	.uleb128 0x20
	.4byte	.LASF816
	.sleb128 438
	.uleb128 0x20
	.4byte	.LASF817
	.sleb128 439
	.uleb128 0x20
	.4byte	.LASF818
	.sleb128 440
	.uleb128 0x20
	.4byte	.LASF819
	.sleb128 441
	.uleb128 0x20
	.4byte	.LASF820
	.sleb128 442
	.uleb128 0x20
	.4byte	.LASF821
	.sleb128 443
	.uleb128 0x20
	.4byte	.LASF822
	.sleb128 444
	.uleb128 0x20
	.4byte	.LASF823
	.sleb128 445
	.uleb128 0x20
	.4byte	.LASF824
	.sleb128 446
	.uleb128 0x20
	.4byte	.LASF825
	.sleb128 447
	.uleb128 0x20
	.4byte	.LASF826
	.sleb128 448
	.uleb128 0x20
	.4byte	.LASF827
	.sleb128 449
	.uleb128 0x20
	.4byte	.LASF828
	.sleb128 450
	.uleb128 0x20
	.4byte	.LASF829
	.sleb128 451
	.uleb128 0x20
	.4byte	.LASF830
	.sleb128 452
	.uleb128 0x20
	.4byte	.LASF831
	.sleb128 453
	.uleb128 0x20
	.4byte	.LASF832
	.sleb128 454
	.uleb128 0x20
	.4byte	.LASF833
	.sleb128 455
	.uleb128 0x20
	.4byte	.LASF834
	.sleb128 456
	.uleb128 0x20
	.4byte	.LASF835
	.sleb128 457
	.uleb128 0x20
	.4byte	.LASF836
	.sleb128 458
	.uleb128 0x20
	.4byte	.LASF837
	.sleb128 459
	.uleb128 0x20
	.4byte	.LASF838
	.sleb128 460
	.uleb128 0x20
	.4byte	.LASF839
	.sleb128 461
	.uleb128 0x20
	.4byte	.LASF840
	.sleb128 462
	.uleb128 0x20
	.4byte	.LASF841
	.sleb128 463
	.uleb128 0x20
	.4byte	.LASF842
	.sleb128 464
	.uleb128 0x20
	.4byte	.LASF843
	.sleb128 465
	.uleb128 0x20
	.4byte	.LASF844
	.sleb128 466
	.uleb128 0x20
	.4byte	.LASF845
	.sleb128 467
	.uleb128 0x20
	.4byte	.LASF846
	.sleb128 468
	.uleb128 0x20
	.4byte	.LASF847
	.sleb128 469
	.uleb128 0x20
	.4byte	.LASF848
	.sleb128 470
	.uleb128 0x20
	.4byte	.LASF849
	.sleb128 471
	.uleb128 0x20
	.4byte	.LASF850
	.sleb128 472
	.uleb128 0x20
	.4byte	.LASF851
	.sleb128 473
	.uleb128 0x20
	.4byte	.LASF852
	.sleb128 474
	.uleb128 0x20
	.4byte	.LASF853
	.sleb128 475
	.uleb128 0x20
	.4byte	.LASF854
	.sleb128 476
	.uleb128 0x20
	.4byte	.LASF855
	.sleb128 477
	.uleb128 0x20
	.4byte	.LASF856
	.sleb128 478
	.uleb128 0x20
	.4byte	.LASF857
	.sleb128 479
	.uleb128 0x20
	.4byte	.LASF858
	.sleb128 480
	.uleb128 0x20
	.4byte	.LASF859
	.sleb128 481
	.uleb128 0x20
	.4byte	.LASF860
	.sleb128 482
	.uleb128 0x20
	.4byte	.LASF861
	.sleb128 483
	.uleb128 0x20
	.4byte	.LASF862
	.sleb128 484
	.uleb128 0x20
	.4byte	.LASF863
	.sleb128 485
	.uleb128 0x20
	.4byte	.LASF864
	.sleb128 486
	.uleb128 0x20
	.4byte	.LASF865
	.sleb128 487
	.uleb128 0x20
	.4byte	.LASF866
	.sleb128 488
	.uleb128 0x20
	.4byte	.LASF867
	.sleb128 489
	.uleb128 0x20
	.4byte	.LASF868
	.sleb128 490
	.uleb128 0x20
	.4byte	.LASF869
	.sleb128 491
	.uleb128 0x20
	.4byte	.LASF870
	.sleb128 492
	.uleb128 0x20
	.4byte	.LASF871
	.sleb128 493
	.uleb128 0x20
	.4byte	.LASF872
	.sleb128 494
	.uleb128 0x20
	.4byte	.LASF873
	.sleb128 495
	.uleb128 0x20
	.4byte	.LASF874
	.sleb128 496
	.uleb128 0x20
	.4byte	.LASF875
	.sleb128 497
	.uleb128 0x20
	.4byte	.LASF876
	.sleb128 498
	.uleb128 0x20
	.4byte	.LASF877
	.sleb128 499
	.uleb128 0x20
	.4byte	.LASF878
	.sleb128 500
	.uleb128 0x20
	.4byte	.LASF879
	.sleb128 501
	.uleb128 0x20
	.4byte	.LASF880
	.sleb128 502
	.uleb128 0x20
	.4byte	.LASF881
	.sleb128 503
	.uleb128 0x20
	.4byte	.LASF882
	.sleb128 504
	.uleb128 0x20
	.4byte	.LASF883
	.sleb128 505
	.uleb128 0x20
	.4byte	.LASF884
	.sleb128 506
	.uleb128 0x20
	.4byte	.LASF885
	.sleb128 507
	.uleb128 0x20
	.4byte	.LASF886
	.sleb128 508
	.uleb128 0x20
	.4byte	.LASF887
	.sleb128 509
	.uleb128 0x20
	.4byte	.LASF888
	.sleb128 510
	.uleb128 0x20
	.4byte	.LASF889
	.sleb128 511
	.uleb128 0x20
	.4byte	.LASF890
	.sleb128 512
	.uleb128 0x20
	.4byte	.LASF891
	.sleb128 513
	.uleb128 0x20
	.4byte	.LASF892
	.sleb128 514
	.uleb128 0x20
	.4byte	.LASF893
	.sleb128 515
	.uleb128 0x20
	.4byte	.LASF894
	.sleb128 516
	.uleb128 0x20
	.4byte	.LASF895
	.sleb128 517
	.uleb128 0x20
	.4byte	.LASF896
	.sleb128 518
	.uleb128 0x20
	.4byte	.LASF897
	.sleb128 519
	.uleb128 0x20
	.4byte	.LASF898
	.sleb128 520
	.uleb128 0x20
	.4byte	.LASF899
	.sleb128 521
	.uleb128 0x20
	.4byte	.LASF900
	.sleb128 522
	.uleb128 0x20
	.4byte	.LASF901
	.sleb128 523
	.uleb128 0x20
	.4byte	.LASF902
	.sleb128 524
	.uleb128 0x20
	.4byte	.LASF903
	.sleb128 525
	.uleb128 0x20
	.4byte	.LASF904
	.sleb128 526
	.uleb128 0x20
	.4byte	.LASF905
	.sleb128 527
	.uleb128 0x20
	.4byte	.LASF906
	.sleb128 528
	.uleb128 0x20
	.4byte	.LASF907
	.sleb128 529
	.uleb128 0x20
	.4byte	.LASF908
	.sleb128 530
	.uleb128 0x20
	.4byte	.LASF909
	.sleb128 531
	.uleb128 0x20
	.4byte	.LASF910
	.sleb128 532
	.uleb128 0x20
	.4byte	.LASF911
	.sleb128 533
	.uleb128 0x20
	.4byte	.LASF912
	.sleb128 534
	.uleb128 0x20
	.4byte	.LASF913
	.sleb128 535
	.uleb128 0x20
	.4byte	.LASF914
	.sleb128 536
	.uleb128 0x20
	.4byte	.LASF915
	.sleb128 537
	.uleb128 0x20
	.4byte	.LASF916
	.sleb128 538
	.uleb128 0x20
	.4byte	.LASF917
	.sleb128 539
	.uleb128 0x20
	.4byte	.LASF918
	.sleb128 540
	.uleb128 0x20
	.4byte	.LASF919
	.sleb128 541
	.uleb128 0x20
	.4byte	.LASF920
	.sleb128 542
	.uleb128 0x20
	.4byte	.LASF921
	.sleb128 543
	.uleb128 0x20
	.4byte	.LASF922
	.sleb128 544
	.uleb128 0x20
	.4byte	.LASF923
	.sleb128 545
	.uleb128 0x20
	.4byte	.LASF924
	.sleb128 546
	.uleb128 0x20
	.4byte	.LASF925
	.sleb128 547
	.uleb128 0x20
	.4byte	.LASF926
	.sleb128 548
	.uleb128 0x20
	.4byte	.LASF927
	.sleb128 549
	.uleb128 0x20
	.4byte	.LASF928
	.sleb128 550
	.uleb128 0x20
	.4byte	.LASF929
	.sleb128 551
	.uleb128 0x20
	.4byte	.LASF930
	.sleb128 552
	.uleb128 0x20
	.4byte	.LASF931
	.sleb128 553
	.uleb128 0x20
	.4byte	.LASF932
	.sleb128 554
	.uleb128 0x20
	.4byte	.LASF933
	.sleb128 555
	.uleb128 0x20
	.4byte	.LASF934
	.sleb128 556
	.uleb128 0x20
	.4byte	.LASF935
	.sleb128 557
	.uleb128 0x20
	.4byte	.LASF936
	.sleb128 558
	.uleb128 0x20
	.4byte	.LASF937
	.sleb128 559
	.uleb128 0x20
	.4byte	.LASF938
	.sleb128 560
	.uleb128 0x20
	.4byte	.LASF939
	.sleb128 561
	.uleb128 0x20
	.4byte	.LASF940
	.sleb128 562
	.uleb128 0x20
	.4byte	.LASF941
	.sleb128 563
	.uleb128 0x20
	.4byte	.LASF942
	.sleb128 564
	.uleb128 0x20
	.4byte	.LASF943
	.sleb128 565
	.uleb128 0x20
	.4byte	.LASF944
	.sleb128 566
	.uleb128 0x20
	.4byte	.LASF945
	.sleb128 567
	.uleb128 0x20
	.4byte	.LASF946
	.sleb128 568
	.uleb128 0x20
	.4byte	.LASF947
	.sleb128 569
	.uleb128 0x20
	.4byte	.LASF948
	.sleb128 570
	.uleb128 0x20
	.4byte	.LASF949
	.sleb128 571
	.uleb128 0x20
	.4byte	.LASF950
	.sleb128 572
	.uleb128 0x20
	.4byte	.LASF951
	.sleb128 573
	.uleb128 0x20
	.4byte	.LASF952
	.sleb128 574
	.uleb128 0x20
	.4byte	.LASF953
	.sleb128 575
	.uleb128 0x20
	.4byte	.LASF954
	.sleb128 576
	.uleb128 0x20
	.4byte	.LASF955
	.sleb128 577
	.uleb128 0x20
	.4byte	.LASF956
	.sleb128 578
	.uleb128 0x20
	.4byte	.LASF957
	.sleb128 579
	.uleb128 0x20
	.4byte	.LASF958
	.sleb128 580
	.uleb128 0x20
	.4byte	.LASF959
	.sleb128 581
	.uleb128 0x20
	.4byte	.LASF960
	.sleb128 582
	.uleb128 0x20
	.4byte	.LASF961
	.sleb128 583
	.uleb128 0x20
	.4byte	.LASF962
	.sleb128 584
	.uleb128 0x20
	.4byte	.LASF963
	.sleb128 585
	.uleb128 0x20
	.4byte	.LASF964
	.sleb128 586
	.uleb128 0x20
	.4byte	.LASF965
	.sleb128 587
	.uleb128 0x20
	.4byte	.LASF966
	.sleb128 588
	.uleb128 0x20
	.4byte	.LASF967
	.sleb128 589
	.uleb128 0x20
	.4byte	.LASF968
	.sleb128 590
	.uleb128 0x20
	.4byte	.LASF969
	.sleb128 591
	.uleb128 0x20
	.4byte	.LASF970
	.sleb128 592
	.uleb128 0x20
	.4byte	.LASF971
	.sleb128 593
	.uleb128 0x20
	.4byte	.LASF972
	.sleb128 594
	.uleb128 0x20
	.4byte	.LASF973
	.sleb128 595
	.uleb128 0x20
	.4byte	.LASF974
	.sleb128 596
	.uleb128 0x20
	.4byte	.LASF975
	.sleb128 597
	.uleb128 0x20
	.4byte	.LASF976
	.sleb128 598
	.uleb128 0x20
	.4byte	.LASF977
	.sleb128 599
	.uleb128 0x20
	.4byte	.LASF978
	.sleb128 600
	.uleb128 0x20
	.4byte	.LASF979
	.sleb128 601
	.uleb128 0x20
	.4byte	.LASF980
	.sleb128 602
	.uleb128 0x20
	.4byte	.LASF981
	.sleb128 603
	.uleb128 0x20
	.4byte	.LASF982
	.sleb128 604
	.uleb128 0x20
	.4byte	.LASF983
	.sleb128 605
	.uleb128 0x20
	.4byte	.LASF984
	.sleb128 606
	.uleb128 0x20
	.4byte	.LASF985
	.sleb128 607
	.uleb128 0x20
	.4byte	.LASF986
	.sleb128 608
	.uleb128 0x20
	.4byte	.LASF987
	.sleb128 609
	.uleb128 0x20
	.4byte	.LASF988
	.sleb128 610
	.uleb128 0x20
	.4byte	.LASF989
	.sleb128 611
	.uleb128 0x20
	.4byte	.LASF990
	.sleb128 612
	.uleb128 0x20
	.4byte	.LASF991
	.sleb128 613
	.uleb128 0x20
	.4byte	.LASF992
	.sleb128 614
	.uleb128 0x20
	.4byte	.LASF993
	.sleb128 615
	.uleb128 0x20
	.4byte	.LASF994
	.sleb128 616
	.uleb128 0x20
	.4byte	.LASF995
	.sleb128 617
	.uleb128 0x20
	.4byte	.LASF996
	.sleb128 618
	.uleb128 0x20
	.4byte	.LASF997
	.sleb128 619
	.uleb128 0x20
	.4byte	.LASF998
	.sleb128 620
	.uleb128 0x20
	.4byte	.LASF999
	.sleb128 621
	.uleb128 0x20
	.4byte	.LASF1000
	.sleb128 622
	.uleb128 0x20
	.4byte	.LASF1001
	.sleb128 623
	.uleb128 0x20
	.4byte	.LASF1002
	.sleb128 624
	.uleb128 0x20
	.4byte	.LASF1003
	.sleb128 625
	.uleb128 0x20
	.4byte	.LASF1004
	.sleb128 626
	.uleb128 0x20
	.4byte	.LASF1005
	.sleb128 627
	.uleb128 0x20
	.4byte	.LASF1006
	.sleb128 628
	.uleb128 0x20
	.4byte	.LASF1007
	.sleb128 629
	.uleb128 0x20
	.4byte	.LASF1008
	.sleb128 630
	.uleb128 0x20
	.4byte	.LASF1009
	.sleb128 631
	.uleb128 0x20
	.4byte	.LASF1010
	.sleb128 632
	.uleb128 0x20
	.4byte	.LASF1011
	.sleb128 633
	.uleb128 0x20
	.4byte	.LASF1012
	.sleb128 634
	.uleb128 0x20
	.4byte	.LASF1013
	.sleb128 635
	.uleb128 0x20
	.4byte	.LASF1014
	.sleb128 636
	.uleb128 0x20
	.4byte	.LASF1015
	.sleb128 637
	.uleb128 0x20
	.4byte	.LASF1016
	.sleb128 638
	.uleb128 0x20
	.4byte	.LASF1017
	.sleb128 639
	.uleb128 0x20
	.4byte	.LASF1018
	.sleb128 640
	.uleb128 0x20
	.4byte	.LASF1019
	.sleb128 641
	.uleb128 0x20
	.4byte	.LASF1020
	.sleb128 642
	.uleb128 0x20
	.4byte	.LASF1021
	.sleb128 643
	.uleb128 0x20
	.4byte	.LASF1022
	.sleb128 644
	.uleb128 0x20
	.4byte	.LASF1023
	.sleb128 645
	.uleb128 0x20
	.4byte	.LASF1024
	.sleb128 646
	.uleb128 0x20
	.4byte	.LASF1025
	.sleb128 647
	.uleb128 0x20
	.4byte	.LASF1026
	.sleb128 648
	.uleb128 0x20
	.4byte	.LASF1027
	.sleb128 649
	.uleb128 0x20
	.4byte	.LASF1028
	.sleb128 650
	.uleb128 0x20
	.4byte	.LASF1029
	.sleb128 651
	.uleb128 0x20
	.4byte	.LASF1030
	.sleb128 652
	.uleb128 0x20
	.4byte	.LASF1031
	.sleb128 653
	.uleb128 0x20
	.4byte	.LASF1032
	.sleb128 654
	.uleb128 0x20
	.4byte	.LASF1033
	.sleb128 655
	.uleb128 0x20
	.4byte	.LASF1034
	.sleb128 656
	.uleb128 0x20
	.4byte	.LASF1035
	.sleb128 657
	.uleb128 0x20
	.4byte	.LASF1036
	.sleb128 658
	.uleb128 0x20
	.4byte	.LASF1037
	.sleb128 659
	.uleb128 0x20
	.4byte	.LASF1038
	.sleb128 660
	.uleb128 0x20
	.4byte	.LASF1039
	.sleb128 661
	.uleb128 0x20
	.4byte	.LASF1040
	.sleb128 662
	.uleb128 0x20
	.4byte	.LASF1041
	.sleb128 663
	.uleb128 0x20
	.4byte	.LASF1042
	.sleb128 664
	.uleb128 0x20
	.4byte	.LASF1043
	.sleb128 665
	.uleb128 0x20
	.4byte	.LASF1044
	.sleb128 666
	.uleb128 0x20
	.4byte	.LASF1045
	.sleb128 667
	.uleb128 0x20
	.4byte	.LASF1046
	.sleb128 668
	.uleb128 0x20
	.4byte	.LASF1047
	.sleb128 669
	.uleb128 0x20
	.4byte	.LASF1048
	.sleb128 670
	.uleb128 0x20
	.4byte	.LASF1049
	.sleb128 671
	.uleb128 0x20
	.4byte	.LASF1050
	.sleb128 672
	.uleb128 0x20
	.4byte	.LASF1051
	.sleb128 673
	.uleb128 0x20
	.4byte	.LASF1052
	.sleb128 674
	.uleb128 0x20
	.4byte	.LASF1053
	.sleb128 675
	.uleb128 0x20
	.4byte	.LASF1054
	.sleb128 676
	.uleb128 0x20
	.4byte	.LASF1055
	.sleb128 677
	.uleb128 0x20
	.4byte	.LASF1056
	.sleb128 678
	.uleb128 0x20
	.4byte	.LASF1057
	.sleb128 679
	.uleb128 0x20
	.4byte	.LASF1058
	.sleb128 680
	.uleb128 0x20
	.4byte	.LASF1059
	.sleb128 681
	.uleb128 0x20
	.4byte	.LASF1060
	.sleb128 682
	.uleb128 0x20
	.4byte	.LASF1061
	.sleb128 683
	.uleb128 0x20
	.4byte	.LASF1062
	.sleb128 684
	.uleb128 0x20
	.4byte	.LASF1063
	.sleb128 685
	.uleb128 0x20
	.4byte	.LASF1064
	.sleb128 686
	.uleb128 0x20
	.4byte	.LASF1065
	.sleb128 687
	.uleb128 0x20
	.4byte	.LASF1066
	.sleb128 688
	.uleb128 0x20
	.4byte	.LASF1067
	.sleb128 689
	.uleb128 0x20
	.4byte	.LASF1068
	.sleb128 690
	.uleb128 0x20
	.4byte	.LASF1069
	.sleb128 691
	.uleb128 0x20
	.4byte	.LASF1070
	.sleb128 692
	.uleb128 0x20
	.4byte	.LASF1071
	.sleb128 693
	.uleb128 0x20
	.4byte	.LASF1072
	.sleb128 694
	.uleb128 0x20
	.4byte	.LASF1073
	.sleb128 695
	.uleb128 0x20
	.4byte	.LASF1074
	.sleb128 696
	.uleb128 0x20
	.4byte	.LASF1075
	.sleb128 697
	.uleb128 0x20
	.4byte	.LASF1076
	.sleb128 698
	.uleb128 0x20
	.4byte	.LASF1077
	.sleb128 699
	.uleb128 0x20
	.4byte	.LASF1078
	.sleb128 700
	.uleb128 0x20
	.4byte	.LASF1079
	.sleb128 701
	.uleb128 0x20
	.4byte	.LASF1080
	.sleb128 702
	.uleb128 0x20
	.4byte	.LASF1081
	.sleb128 703
	.uleb128 0x20
	.4byte	.LASF1082
	.sleb128 704
	.uleb128 0x20
	.4byte	.LASF1083
	.sleb128 705
	.uleb128 0x20
	.4byte	.LASF1084
	.sleb128 706
	.uleb128 0x20
	.4byte	.LASF1085
	.sleb128 707
	.uleb128 0x20
	.4byte	.LASF1086
	.sleb128 708
	.uleb128 0x20
	.4byte	.LASF1087
	.sleb128 709
	.uleb128 0x20
	.4byte	.LASF1088
	.sleb128 710
	.uleb128 0x20
	.4byte	.LASF1089
	.sleb128 711
	.uleb128 0x20
	.4byte	.LASF1090
	.sleb128 712
	.uleb128 0x20
	.4byte	.LASF1091
	.sleb128 713
	.uleb128 0x20
	.4byte	.LASF1092
	.sleb128 714
	.uleb128 0x20
	.4byte	.LASF1093
	.sleb128 715
	.uleb128 0x20
	.4byte	.LASF1094
	.sleb128 716
	.uleb128 0x20
	.4byte	.LASF1095
	.sleb128 717
	.uleb128 0x20
	.4byte	.LASF1096
	.sleb128 718
	.uleb128 0x20
	.4byte	.LASF1097
	.sleb128 719
	.uleb128 0x20
	.4byte	.LASF1098
	.sleb128 720
	.uleb128 0x20
	.4byte	.LASF1099
	.sleb128 721
	.uleb128 0x20
	.4byte	.LASF1100
	.sleb128 722
	.uleb128 0x20
	.4byte	.LASF1101
	.sleb128 723
	.uleb128 0x20
	.4byte	.LASF1102
	.sleb128 724
	.uleb128 0x20
	.4byte	.LASF1103
	.sleb128 725
	.uleb128 0x20
	.4byte	.LASF1104
	.sleb128 726
	.uleb128 0x20
	.4byte	.LASF1105
	.sleb128 727
	.uleb128 0x20
	.4byte	.LASF1106
	.sleb128 728
	.uleb128 0x20
	.4byte	.LASF1107
	.sleb128 729
	.uleb128 0x20
	.4byte	.LASF1108
	.sleb128 730
	.uleb128 0x20
	.4byte	.LASF1109
	.sleb128 731
	.uleb128 0x20
	.4byte	.LASF1110
	.sleb128 732
	.uleb128 0x20
	.4byte	.LASF1111
	.sleb128 733
	.uleb128 0x20
	.4byte	.LASF1112
	.sleb128 734
	.uleb128 0x20
	.4byte	.LASF1113
	.sleb128 735
	.uleb128 0x20
	.4byte	.LASF1114
	.sleb128 736
	.uleb128 0x20
	.4byte	.LASF1115
	.sleb128 737
	.uleb128 0x20
	.4byte	.LASF1116
	.sleb128 738
	.uleb128 0x20
	.4byte	.LASF1117
	.sleb128 739
	.uleb128 0x20
	.4byte	.LASF1118
	.sleb128 740
	.uleb128 0x20
	.4byte	.LASF1119
	.sleb128 741
	.uleb128 0x20
	.4byte	.LASF1120
	.sleb128 742
	.uleb128 0x20
	.4byte	.LASF1121
	.sleb128 743
	.uleb128 0x20
	.4byte	.LASF1122
	.sleb128 744
	.uleb128 0x20
	.4byte	.LASF1123
	.sleb128 745
	.uleb128 0x20
	.4byte	.LASF1124
	.sleb128 746
	.uleb128 0x20
	.4byte	.LASF1125
	.sleb128 747
	.uleb128 0x20
	.4byte	.LASF1126
	.sleb128 748
	.uleb128 0x20
	.4byte	.LASF1127
	.sleb128 749
	.uleb128 0x20
	.4byte	.LASF1128
	.sleb128 750
	.uleb128 0x20
	.4byte	.LASF1129
	.sleb128 751
	.uleb128 0x20
	.4byte	.LASF1130
	.sleb128 752
	.uleb128 0x20
	.4byte	.LASF1131
	.sleb128 753
	.uleb128 0x20
	.4byte	.LASF1132
	.sleb128 754
	.uleb128 0x20
	.4byte	.LASF1133
	.sleb128 755
	.uleb128 0x20
	.4byte	.LASF1134
	.sleb128 756
	.uleb128 0x20
	.4byte	.LASF1135
	.sleb128 757
	.uleb128 0x20
	.4byte	.LASF1136
	.sleb128 758
	.uleb128 0x20
	.4byte	.LASF1137
	.sleb128 759
	.uleb128 0x20
	.4byte	.LASF1138
	.sleb128 760
	.uleb128 0x20
	.4byte	.LASF1139
	.sleb128 761
	.uleb128 0x20
	.4byte	.LASF1140
	.sleb128 762
	.uleb128 0x20
	.4byte	.LASF1141
	.sleb128 763
	.uleb128 0x20
	.4byte	.LASF1142
	.sleb128 764
	.uleb128 0x20
	.4byte	.LASF1143
	.sleb128 765
	.uleb128 0x20
	.4byte	.LASF1144
	.sleb128 766
	.uleb128 0x20
	.4byte	.LASF1145
	.sleb128 767
	.uleb128 0x20
	.4byte	.LASF1146
	.sleb128 768
	.uleb128 0x20
	.4byte	.LASF1147
	.sleb128 769
	.uleb128 0x20
	.4byte	.LASF1148
	.sleb128 770
	.uleb128 0x20
	.4byte	.LASF1149
	.sleb128 771
	.uleb128 0x20
	.4byte	.LASF1150
	.sleb128 772
	.uleb128 0x20
	.4byte	.LASF1151
	.sleb128 773
	.uleb128 0x20
	.4byte	.LASF1152
	.sleb128 774
	.uleb128 0x20
	.4byte	.LASF1153
	.sleb128 775
	.uleb128 0x20
	.4byte	.LASF1154
	.sleb128 776
	.uleb128 0x20
	.4byte	.LASF1155
	.sleb128 777
	.uleb128 0x20
	.4byte	.LASF1156
	.sleb128 778
	.uleb128 0x20
	.4byte	.LASF1157
	.sleb128 779
	.uleb128 0x20
	.4byte	.LASF1158
	.sleb128 780
	.uleb128 0x20
	.4byte	.LASF1159
	.sleb128 781
	.uleb128 0x20
	.4byte	.LASF1160
	.sleb128 782
	.uleb128 0x20
	.4byte	.LASF1161
	.sleb128 783
	.uleb128 0x20
	.4byte	.LASF1162
	.sleb128 784
	.uleb128 0x20
	.4byte	.LASF1163
	.sleb128 785
	.uleb128 0x20
	.4byte	.LASF1164
	.sleb128 786
	.uleb128 0x20
	.4byte	.LASF1165
	.sleb128 787
	.uleb128 0x20
	.4byte	.LASF1166
	.sleb128 788
	.uleb128 0x20
	.4byte	.LASF1167
	.sleb128 789
	.uleb128 0x20
	.4byte	.LASF1168
	.sleb128 790
	.uleb128 0x20
	.4byte	.LASF1169
	.sleb128 791
	.uleb128 0x20
	.4byte	.LASF1170
	.sleb128 792
	.uleb128 0x20
	.4byte	.LASF1171
	.sleb128 793
	.uleb128 0x20
	.4byte	.LASF1172
	.sleb128 794
	.uleb128 0x20
	.4byte	.LASF1173
	.sleb128 795
	.uleb128 0x20
	.4byte	.LASF1174
	.sleb128 796
	.uleb128 0x20
	.4byte	.LASF1175
	.sleb128 797
	.uleb128 0x20
	.4byte	.LASF1176
	.sleb128 798
	.uleb128 0x20
	.4byte	.LASF1177
	.sleb128 799
	.uleb128 0x20
	.4byte	.LASF1178
	.sleb128 800
	.uleb128 0x20
	.4byte	.LASF1179
	.sleb128 801
	.uleb128 0x20
	.4byte	.LASF1180
	.sleb128 802
	.uleb128 0x20
	.4byte	.LASF1181
	.sleb128 803
	.uleb128 0x20
	.4byte	.LASF1182
	.sleb128 804
	.uleb128 0x20
	.4byte	.LASF1183
	.sleb128 805
	.uleb128 0x20
	.4byte	.LASF1184
	.sleb128 806
	.uleb128 0x20
	.4byte	.LASF1185
	.sleb128 807
	.uleb128 0x20
	.4byte	.LASF1186
	.sleb128 808
	.uleb128 0x20
	.4byte	.LASF1187
	.sleb128 809
	.uleb128 0x20
	.4byte	.LASF1188
	.sleb128 810
	.uleb128 0x20
	.4byte	.LASF1189
	.sleb128 811
	.uleb128 0x20
	.4byte	.LASF1190
	.sleb128 812
	.uleb128 0x20
	.4byte	.LASF1191
	.sleb128 813
	.uleb128 0x20
	.4byte	.LASF1192
	.sleb128 814
	.uleb128 0x20
	.4byte	.LASF1193
	.sleb128 815
	.uleb128 0x20
	.4byte	.LASF1194
	.sleb128 816
	.uleb128 0x20
	.4byte	.LASF1195
	.sleb128 817
	.uleb128 0x20
	.4byte	.LASF1196
	.sleb128 818
	.uleb128 0x20
	.4byte	.LASF1197
	.sleb128 819
	.uleb128 0x20
	.4byte	.LASF1198
	.sleb128 820
	.uleb128 0x20
	.4byte	.LASF1199
	.sleb128 821
	.uleb128 0x20
	.4byte	.LASF1200
	.sleb128 822
	.uleb128 0x20
	.4byte	.LASF1201
	.sleb128 823
	.uleb128 0x20
	.4byte	.LASF1202
	.sleb128 824
	.uleb128 0x20
	.4byte	.LASF1203
	.sleb128 825
	.uleb128 0x20
	.4byte	.LASF1204
	.sleb128 826
	.uleb128 0x20
	.4byte	.LASF1205
	.sleb128 827
	.uleb128 0x20
	.4byte	.LASF1206
	.sleb128 828
	.uleb128 0x20
	.4byte	.LASF1207
	.sleb128 829
	.uleb128 0x20
	.4byte	.LASF1208
	.sleb128 830
	.uleb128 0x20
	.4byte	.LASF1209
	.sleb128 831
	.uleb128 0x20
	.4byte	.LASF1210
	.sleb128 832
	.uleb128 0x20
	.4byte	.LASF1211
	.sleb128 833
	.uleb128 0x20
	.4byte	.LASF1212
	.sleb128 834
	.uleb128 0x20
	.4byte	.LASF1213
	.sleb128 835
	.uleb128 0x20
	.4byte	.LASF1214
	.sleb128 836
	.uleb128 0x20
	.4byte	.LASF1215
	.sleb128 837
	.uleb128 0x20
	.4byte	.LASF1216
	.sleb128 838
	.uleb128 0x20
	.4byte	.LASF1217
	.sleb128 839
	.uleb128 0x20
	.4byte	.LASF1218
	.sleb128 840
	.uleb128 0x20
	.4byte	.LASF1219
	.sleb128 841
	.uleb128 0x20
	.4byte	.LASF1220
	.sleb128 842
	.uleb128 0x20
	.4byte	.LASF1221
	.sleb128 843
	.uleb128 0x20
	.4byte	.LASF1222
	.sleb128 844
	.uleb128 0x20
	.4byte	.LASF1223
	.sleb128 845
	.uleb128 0x20
	.4byte	.LASF1224
	.sleb128 846
	.uleb128 0x20
	.4byte	.LASF1225
	.sleb128 847
	.uleb128 0x20
	.4byte	.LASF1226
	.sleb128 848
	.uleb128 0x20
	.4byte	.LASF1227
	.sleb128 849
	.uleb128 0x20
	.4byte	.LASF1228
	.sleb128 850
	.uleb128 0x20
	.4byte	.LASF1229
	.sleb128 851
	.uleb128 0x20
	.4byte	.LASF1230
	.sleb128 852
	.uleb128 0x20
	.4byte	.LASF1231
	.sleb128 853
	.uleb128 0x20
	.4byte	.LASF1232
	.sleb128 854
	.uleb128 0x20
	.4byte	.LASF1233
	.sleb128 855
	.uleb128 0x20
	.4byte	.LASF1234
	.sleb128 856
	.uleb128 0x20
	.4byte	.LASF1235
	.sleb128 857
	.uleb128 0x20
	.4byte	.LASF1236
	.sleb128 858
	.uleb128 0x20
	.4byte	.LASF1237
	.sleb128 859
	.uleb128 0x20
	.4byte	.LASF1238
	.sleb128 860
	.uleb128 0x20
	.4byte	.LASF1239
	.sleb128 861
	.uleb128 0x20
	.4byte	.LASF1240
	.sleb128 862
	.uleb128 0x20
	.4byte	.LASF1241
	.sleb128 863
	.uleb128 0x20
	.4byte	.LASF1242
	.sleb128 864
	.uleb128 0x20
	.4byte	.LASF1243
	.sleb128 865
	.uleb128 0x20
	.4byte	.LASF1244
	.sleb128 866
	.uleb128 0x20
	.4byte	.LASF1245
	.sleb128 867
	.uleb128 0x20
	.4byte	.LASF1246
	.sleb128 868
	.uleb128 0x20
	.4byte	.LASF1247
	.sleb128 869
	.uleb128 0x20
	.4byte	.LASF1248
	.sleb128 870
	.uleb128 0x20
	.4byte	.LASF1249
	.sleb128 871
	.uleb128 0x20
	.4byte	.LASF1250
	.sleb128 872
	.uleb128 0x20
	.4byte	.LASF1251
	.sleb128 873
	.uleb128 0x20
	.4byte	.LASF1252
	.sleb128 874
	.uleb128 0x20
	.4byte	.LASF1253
	.sleb128 875
	.uleb128 0x20
	.4byte	.LASF1254
	.sleb128 876
	.uleb128 0x20
	.4byte	.LASF1255
	.sleb128 877
	.uleb128 0x20
	.4byte	.LASF1256
	.sleb128 878
	.uleb128 0x20
	.4byte	.LASF1257
	.sleb128 879
	.uleb128 0x20
	.4byte	.LASF1258
	.sleb128 880
	.uleb128 0x20
	.4byte	.LASF1259
	.sleb128 881
	.uleb128 0x20
	.4byte	.LASF1260
	.sleb128 882
	.uleb128 0x20
	.4byte	.LASF1261
	.sleb128 883
	.uleb128 0x20
	.4byte	.LASF1262
	.sleb128 884
	.uleb128 0x20
	.4byte	.LASF1263
	.sleb128 885
	.uleb128 0x20
	.4byte	.LASF1264
	.sleb128 886
	.uleb128 0x20
	.4byte	.LASF1265
	.sleb128 887
	.uleb128 0x20
	.4byte	.LASF1266
	.sleb128 888
	.uleb128 0x20
	.4byte	.LASF1267
	.sleb128 889
	.uleb128 0x20
	.4byte	.LASF1268
	.sleb128 890
	.uleb128 0x20
	.4byte	.LASF1269
	.sleb128 891
	.uleb128 0x20
	.4byte	.LASF1270
	.sleb128 892
	.uleb128 0x20
	.4byte	.LASF1271
	.sleb128 893
	.uleb128 0x20
	.4byte	.LASF1272
	.sleb128 894
	.uleb128 0x20
	.4byte	.LASF1273
	.sleb128 895
	.uleb128 0x20
	.4byte	.LASF1274
	.sleb128 896
	.uleb128 0x20
	.4byte	.LASF1275
	.sleb128 897
	.uleb128 0x20
	.4byte	.LASF1276
	.sleb128 898
	.uleb128 0x20
	.4byte	.LASF1277
	.sleb128 899
	.uleb128 0x20
	.4byte	.LASF1278
	.sleb128 900
	.uleb128 0x20
	.4byte	.LASF1279
	.sleb128 901
	.uleb128 0x20
	.4byte	.LASF1280
	.sleb128 902
	.uleb128 0x20
	.4byte	.LASF1281
	.sleb128 903
	.uleb128 0x20
	.4byte	.LASF1282
	.sleb128 904
	.uleb128 0x20
	.4byte	.LASF1283
	.sleb128 905
	.uleb128 0x20
	.4byte	.LASF1284
	.sleb128 906
	.uleb128 0x20
	.4byte	.LASF1285
	.sleb128 907
	.uleb128 0x20
	.4byte	.LASF1286
	.sleb128 908
	.uleb128 0x20
	.4byte	.LASF1287
	.sleb128 909
	.uleb128 0x20
	.4byte	.LASF1288
	.sleb128 910
	.uleb128 0x20
	.4byte	.LASF1289
	.sleb128 911
	.uleb128 0x20
	.4byte	.LASF1290
	.sleb128 912
	.uleb128 0x20
	.4byte	.LASF1291
	.sleb128 913
	.uleb128 0x20
	.4byte	.LASF1292
	.sleb128 914
	.uleb128 0x20
	.4byte	.LASF1293
	.sleb128 915
	.uleb128 0x20
	.4byte	.LASF1294
	.sleb128 916
	.uleb128 0x20
	.4byte	.LASF1295
	.sleb128 917
	.uleb128 0x20
	.4byte	.LASF1296
	.sleb128 918
	.uleb128 0x20
	.4byte	.LASF1297
	.sleb128 919
	.uleb128 0x20
	.4byte	.LASF1298
	.sleb128 920
	.uleb128 0x20
	.4byte	.LASF1299
	.sleb128 921
	.uleb128 0x20
	.4byte	.LASF1300
	.sleb128 922
	.uleb128 0x20
	.4byte	.LASF1301
	.sleb128 923
	.uleb128 0x20
	.4byte	.LASF1302
	.sleb128 924
	.uleb128 0x20
	.4byte	.LASF1303
	.sleb128 925
	.uleb128 0x20
	.4byte	.LASF1304
	.sleb128 926
	.uleb128 0x20
	.4byte	.LASF1305
	.sleb128 927
	.uleb128 0x20
	.4byte	.LASF1306
	.sleb128 928
	.uleb128 0x20
	.4byte	.LASF1307
	.sleb128 929
	.uleb128 0x20
	.4byte	.LASF1308
	.sleb128 930
	.uleb128 0x20
	.4byte	.LASF1309
	.sleb128 931
	.uleb128 0x20
	.4byte	.LASF1310
	.sleb128 932
	.uleb128 0x20
	.4byte	.LASF1311
	.sleb128 933
	.uleb128 0x20
	.4byte	.LASF1312
	.sleb128 934
	.uleb128 0x20
	.4byte	.LASF1313
	.sleb128 935
	.uleb128 0x20
	.4byte	.LASF1314
	.sleb128 936
	.uleb128 0x20
	.4byte	.LASF1315
	.sleb128 937
	.uleb128 0x20
	.4byte	.LASF1316
	.sleb128 938
	.uleb128 0x20
	.4byte	.LASF1317
	.sleb128 939
	.uleb128 0x20
	.4byte	.LASF1318
	.sleb128 940
	.uleb128 0x20
	.4byte	.LASF1319
	.sleb128 941
	.uleb128 0x20
	.4byte	.LASF1320
	.sleb128 942
	.uleb128 0x20
	.4byte	.LASF1321
	.sleb128 943
	.uleb128 0x20
	.4byte	.LASF1322
	.sleb128 944
	.uleb128 0x20
	.4byte	.LASF1323
	.sleb128 945
	.uleb128 0x20
	.4byte	.LASF1324
	.sleb128 946
	.uleb128 0x20
	.4byte	.LASF1325
	.sleb128 947
	.uleb128 0x20
	.4byte	.LASF1326
	.sleb128 948
	.uleb128 0x20
	.4byte	.LASF1327
	.sleb128 949
	.uleb128 0x20
	.4byte	.LASF1328
	.sleb128 950
	.uleb128 0x20
	.4byte	.LASF1329
	.sleb128 951
	.uleb128 0x20
	.4byte	.LASF1330
	.sleb128 952
	.uleb128 0x20
	.4byte	.LASF1331
	.sleb128 953
	.uleb128 0x20
	.4byte	.LASF1332
	.sleb128 954
	.uleb128 0x20
	.4byte	.LASF1333
	.sleb128 955
	.uleb128 0x20
	.4byte	.LASF1334
	.sleb128 956
	.uleb128 0x20
	.4byte	.LASF1335
	.sleb128 957
	.uleb128 0x20
	.4byte	.LASF1336
	.sleb128 958
	.uleb128 0x20
	.4byte	.LASF1337
	.sleb128 959
	.uleb128 0x20
	.4byte	.LASF1338
	.sleb128 960
	.uleb128 0x20
	.4byte	.LASF1339
	.sleb128 961
	.uleb128 0x20
	.4byte	.LASF1340
	.sleb128 962
	.uleb128 0x20
	.4byte	.LASF1341
	.sleb128 963
	.uleb128 0x20
	.4byte	.LASF1342
	.sleb128 964
	.uleb128 0x20
	.4byte	.LASF1343
	.sleb128 965
	.uleb128 0x20
	.4byte	.LASF1344
	.sleb128 966
	.uleb128 0x20
	.4byte	.LASF1345
	.sleb128 967
	.uleb128 0x20
	.4byte	.LASF1346
	.sleb128 968
	.uleb128 0x20
	.4byte	.LASF1347
	.sleb128 969
	.uleb128 0x20
	.4byte	.LASF1348
	.sleb128 970
	.uleb128 0x20
	.4byte	.LASF1349
	.sleb128 971
	.uleb128 0x20
	.4byte	.LASF1350
	.sleb128 972
	.uleb128 0x20
	.4byte	.LASF1351
	.sleb128 973
	.uleb128 0x20
	.4byte	.LASF1352
	.sleb128 974
	.uleb128 0x20
	.4byte	.LASF1353
	.sleb128 975
	.uleb128 0x20
	.4byte	.LASF1354
	.sleb128 976
	.uleb128 0x20
	.4byte	.LASF1355
	.sleb128 977
	.uleb128 0x20
	.4byte	.LASF1356
	.sleb128 978
	.uleb128 0x20
	.4byte	.LASF1357
	.sleb128 979
	.uleb128 0x20
	.4byte	.LASF1358
	.sleb128 980
	.uleb128 0x20
	.4byte	.LASF1359
	.sleb128 981
	.uleb128 0x20
	.4byte	.LASF1360
	.sleb128 982
	.uleb128 0x20
	.4byte	.LASF1361
	.sleb128 983
	.uleb128 0x20
	.4byte	.LASF1362
	.sleb128 984
	.uleb128 0x20
	.4byte	.LASF1363
	.sleb128 985
	.uleb128 0x20
	.4byte	.LASF1364
	.sleb128 986
	.uleb128 0x20
	.4byte	.LASF1365
	.sleb128 987
	.uleb128 0x20
	.4byte	.LASF1366
	.sleb128 988
	.uleb128 0x20
	.4byte	.LASF1367
	.sleb128 989
	.uleb128 0x20
	.4byte	.LASF1368
	.sleb128 990
	.uleb128 0x20
	.4byte	.LASF1369
	.sleb128 991
	.uleb128 0x20
	.4byte	.LASF1370
	.sleb128 992
	.uleb128 0x20
	.4byte	.LASF1371
	.sleb128 993
	.uleb128 0x20
	.4byte	.LASF1372
	.sleb128 994
	.uleb128 0x20
	.4byte	.LASF1373
	.sleb128 995
	.uleb128 0x20
	.4byte	.LASF1374
	.sleb128 996
	.uleb128 0x20
	.4byte	.LASF1375
	.sleb128 997
	.uleb128 0x20
	.4byte	.LASF1376
	.sleb128 998
	.uleb128 0x20
	.4byte	.LASF1377
	.sleb128 999
	.uleb128 0x20
	.4byte	.LASF1378
	.sleb128 1040
	.uleb128 0x20
	.4byte	.LASF1379
	.sleb128 1041
	.uleb128 0x20
	.4byte	.LASF1380
	.sleb128 1042
	.uleb128 0x20
	.4byte	.LASF1381
	.sleb128 1043
	.uleb128 0x20
	.4byte	.LASF1382
	.sleb128 1044
	.uleb128 0x20
	.4byte	.LASF1383
	.sleb128 1045
	.uleb128 0x20
	.4byte	.LASF1384
	.sleb128 1046
	.uleb128 0x20
	.4byte	.LASF1385
	.sleb128 1047
	.uleb128 0x20
	.4byte	.LASF1386
	.sleb128 1048
	.uleb128 0x20
	.4byte	.LASF1387
	.sleb128 1049
	.uleb128 0x20
	.4byte	.LASF1388
	.sleb128 1050
	.uleb128 0x20
	.4byte	.LASF1389
	.sleb128 1051
	.uleb128 0x20
	.4byte	.LASF1390
	.sleb128 1052
	.uleb128 0x20
	.4byte	.LASF1391
	.sleb128 1053
	.uleb128 0x20
	.4byte	.LASF1392
	.sleb128 1054
	.uleb128 0x20
	.4byte	.LASF1393
	.sleb128 1055
	.uleb128 0x20
	.4byte	.LASF1394
	.sleb128 1056
	.uleb128 0x20
	.4byte	.LASF1395
	.sleb128 1057
	.uleb128 0x20
	.4byte	.LASF1396
	.sleb128 1058
	.uleb128 0x20
	.4byte	.LASF1397
	.sleb128 1059
	.uleb128 0x20
	.4byte	.LASF1398
	.sleb128 1060
	.uleb128 0x20
	.4byte	.LASF1399
	.sleb128 1061
	.uleb128 0x20
	.4byte	.LASF1400
	.sleb128 1062
	.uleb128 0x20
	.4byte	.LASF1401
	.sleb128 1063
	.uleb128 0x20
	.4byte	.LASF1402
	.sleb128 1064
	.uleb128 0x20
	.4byte	.LASF1403
	.sleb128 1065
	.uleb128 0x20
	.4byte	.LASF1404
	.sleb128 1066
	.uleb128 0x20
	.4byte	.LASF1405
	.sleb128 1067
	.uleb128 0x20
	.4byte	.LASF1406
	.sleb128 1068
	.uleb128 0x20
	.4byte	.LASF1407
	.sleb128 1069
	.uleb128 0x20
	.4byte	.LASF1408
	.sleb128 1070
	.uleb128 0x20
	.4byte	.LASF1409
	.sleb128 1071
	.uleb128 0x20
	.4byte	.LASF1410
	.sleb128 1072
	.uleb128 0x20
	.4byte	.LASF1411
	.sleb128 1073
	.uleb128 0x20
	.4byte	.LASF1412
	.sleb128 1074
	.uleb128 0x20
	.4byte	.LASF1413
	.sleb128 1075
	.uleb128 0x20
	.4byte	.LASF1414
	.sleb128 1076
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1415
	.byte	0xe
	.2byte	0x4e3
	.4byte	0xfe1
	.uleb128 0x1a
	.byte	0x1c
	.byte	0xe
	.2byte	0x4e9
	.4byte	0x2c76
	.uleb128 0x16
	.4byte	.LASF1416
	.byte	0xe
	.2byte	0x4eb
	.4byte	0xfd6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1417
	.byte	0xe
	.2byte	0x4ec
	.4byte	0x5c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1418
	.byte	0xe
	.2byte	0x4ed
	.4byte	0x5c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1419
	.byte	0xe
	.2byte	0x4ee
	.4byte	0xba9
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1420
	.byte	0xe
	.2byte	0x4ef
	.4byte	0x2c05
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1421
	.byte	0xe
	.2byte	0x4f0
	.4byte	0x5c
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1422
	.byte	0xe
	.2byte	0x4f0
	.4byte	0x5c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1423
	.byte	0xe
	.2byte	0x4f1
	.4byte	0x2c11
	.uleb128 0x21
	.byte	0x1
	.byte	0xe
	.2byte	0x4fd
	.4byte	0x307b
	.uleb128 0x20
	.4byte	.LASF1424
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1425
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1426
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1427
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1428
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1429
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1430
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1431
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1432
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1433
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1434
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1435
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1436
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1437
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1438
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1439
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1440
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1441
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1442
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1443
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1444
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1445
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1446
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1447
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1448
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1449
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1450
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1451
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1452
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1453
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1454
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1455
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1456
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1457
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1458
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1459
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1460
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1461
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1462
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1463
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1464
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1465
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1466
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1467
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1468
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1469
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1470
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1471
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1472
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1473
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1474
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1475
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1476
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1477
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1478
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1479
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1480
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1481
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1482
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1483
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1484
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1485
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1486
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1487
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1488
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1489
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1490
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1491
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1492
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1493
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1494
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1495
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1496
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1497
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1498
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1499
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1500
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1501
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1502
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1503
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1504
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1505
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1506
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1507
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1508
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1509
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1510
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1511
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1512
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1513
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1514
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1515
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1516
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1517
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1518
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1519
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1520
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1521
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1522
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1523
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1524
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1525
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1526
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1527
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1528
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1529
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1530
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1531
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1532
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1533
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1534
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1535
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1536
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1537
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1538
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF1539
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF1540
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF1541
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF1542
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF1543
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF1544
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF1545
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF1546
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF1547
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF1548
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF1549
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF1550
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF1551
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF1552
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF1553
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF1554
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF1555
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF1556
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF1557
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF1558
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF1559
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF1560
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF1561
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF1562
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF1563
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF1564
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF1565
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF1566
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF1567
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF1568
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF1569
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF1570
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF1571
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF1572
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF1573
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF1574
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF1575
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF1576
	.sleb128 152
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1577
	.byte	0xe
	.2byte	0x59e
	.4byte	0x2c82
	.uleb128 0x1a
	.byte	0x68
	.byte	0xe
	.2byte	0x5a8
	.4byte	0x31bc
	.uleb128 0x16
	.4byte	.LASF1578
	.byte	0xe
	.2byte	0x5aa
	.4byte	0x39
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1579
	.byte	0xe
	.2byte	0x5ac
	.4byte	0x39
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1580
	.byte	0xe
	.2byte	0x5ae
	.4byte	0x39
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1581
	.byte	0xe
	.2byte	0x5af
	.4byte	0x39
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1582
	.byte	0xe
	.2byte	0x5b0
	.4byte	0x39
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1583
	.byte	0xe
	.2byte	0x5b1
	.4byte	0x39
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF1584
	.byte	0xe
	.2byte	0x5b4
	.4byte	0x39
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF1585
	.byte	0xe
	.2byte	0x5b5
	.4byte	0x39
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF1586
	.byte	0xe
	.2byte	0x5b6
	.4byte	0x39
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1587
	.byte	0xe
	.2byte	0x5bc
	.4byte	0x39
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1588
	.byte	0xe
	.2byte	0x5bd
	.4byte	0x39
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1589
	.byte	0xe
	.2byte	0x5be
	.4byte	0x39
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1590
	.byte	0xe
	.2byte	0x5c0
	.4byte	0x39
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1591
	.byte	0xe
	.2byte	0x5c1
	.4byte	0x39
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1592
	.byte	0xe
	.2byte	0x5c3
	.4byte	0x39
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1593
	.byte	0xe
	.2byte	0x5c6
	.4byte	0x39
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF1594
	.byte	0xe
	.2byte	0x5c8
	.4byte	0x39
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1595
	.byte	0xe
	.2byte	0x5c9
	.4byte	0x39
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1596
	.byte	0xe
	.2byte	0x5cb
	.4byte	0x39
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF1597
	.byte	0xe
	.2byte	0x5ce
	.4byte	0x39
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF1598
	.byte	0xe
	.2byte	0x5cf
	.4byte	0x39
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF1599
	.byte	0xe
	.2byte	0x5d1
	.4byte	0xad1
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF1600
	.byte	0xe
	.2byte	0x5d2
	.4byte	0x39
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1601
	.byte	0xe
	.2byte	0x5d5
	.4byte	0x3087
	.uleb128 0x1f
	.byte	0x1
	.byte	0xf
	.byte	0x47
	.4byte	0x31e3
	.uleb128 0x20
	.4byte	.LASF1602
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1603
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1604
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0xf
	.byte	0x4d
	.4byte	0x321a
	.uleb128 0xc
	.4byte	.LASF1605
	.byte	0xf
	.byte	0x4f
	.4byte	0x321a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1418
	.byte	0xf
	.byte	0x50
	.4byte	0x39
	.byte	0x4
	.uleb128 0xe
	.ascii	"sx\000"
	.byte	0xf
	.byte	0x51
	.4byte	0xb93
	.byte	0x8
	.uleb128 0xe
	.ascii	"sy\000"
	.byte	0xf
	.byte	0x52
	.4byte	0xb93
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c76
	.uleb128 0x2
	.4byte	.LASF1606
	.byte	0xf
	.byte	0x53
	.4byte	0x31e3
	.uleb128 0x9
	.4byte	0x55
	.4byte	0x323b
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0xa
	.byte	0x10
	.byte	0xc0
	.4byte	0x327c
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x10
	.byte	0xc1
	.4byte	0x4e
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x10
	.byte	0xc2
	.4byte	0x4e
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF1607
	.byte	0x10
	.byte	0xc3
	.4byte	0x4e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1608
	.byte	0x10
	.byte	0xc4
	.4byte	0x4e
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF1609
	.byte	0x10
	.byte	0xc5
	.4byte	0x4e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1610
	.byte	0x10
	.byte	0xc6
	.4byte	0x323b
	.uleb128 0xd
	.4byte	.LASF1611
	.byte	0xd0
	.byte	0x11
	.byte	0xf8
	.4byte	0x34fb
	.uleb128 0xc
	.4byte	.LASF1612
	.byte	0x11
	.byte	0xfb
	.4byte	0xc27
	.byte	0
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x11
	.byte	0xfe
	.4byte	0xb93
	.byte	0x18
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x11
	.byte	0xff
	.4byte	0xb93
	.byte	0x1c
	.uleb128 0x25
	.ascii	"z\000"
	.byte	0x11
	.2byte	0x100
	.4byte	0xb93
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF1613
	.byte	0x11
	.2byte	0x103
	.4byte	0x34fb
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1614
	.byte	0x11
	.2byte	0x104
	.4byte	0x3501
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1607
	.byte	0x11
	.2byte	0x107
	.4byte	0xb9e
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1416
	.byte	0x11
	.2byte	0x108
	.4byte	0xfd6
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF1417
	.byte	0x11
	.2byte	0x109
	.4byte	0x39
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1615
	.byte	0x11
	.2byte	0x10d
	.4byte	0x34fb
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1616
	.byte	0x11
	.2byte	0x10e
	.4byte	0x3501
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF1617
	.byte	0x11
	.2byte	0x110
	.4byte	0x353c
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1618
	.byte	0x11
	.2byte	0x113
	.4byte	0xb93
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1619
	.byte	0x11
	.2byte	0x114
	.4byte	0xb93
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF1620
	.byte	0x11
	.2byte	0x117
	.4byte	0xb93
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF1594
	.byte	0x11
	.2byte	0x11a
	.4byte	0xb93
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF1595
	.byte	0x11
	.2byte	0x11b
	.4byte	0xb93
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF1621
	.byte	0x11
	.2byte	0x11e
	.4byte	0xb93
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF1622
	.byte	0x11
	.2byte	0x11f
	.4byte	0xb93
	.byte	0x5c
	.uleb128 0x16
	.4byte	.LASF1623
	.byte	0x11
	.2byte	0x120
	.4byte	0xb93
	.byte	0x60
	.uleb128 0x16
	.4byte	.LASF1624
	.byte	0x11
	.2byte	0x123
	.4byte	0x39
	.byte	0x64
	.uleb128 0x16
	.4byte	.LASF1608
	.byte	0x11
	.2byte	0x125
	.4byte	0x307b
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF1625
	.byte	0x11
	.2byte	0x126
	.4byte	0x3542
	.byte	0x6c
	.uleb128 0x16
	.4byte	.LASF1418
	.byte	0x11
	.2byte	0x128
	.4byte	0x39
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF1605
	.byte	0x11
	.2byte	0x129
	.4byte	0x321a
	.byte	0x74
	.uleb128 0x16
	.4byte	.LASF1599
	.byte	0x11
	.2byte	0x12a
	.4byte	0xad1
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF1626
	.byte	0x11
	.2byte	0x12b
	.4byte	0x39
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF1627
	.byte	0x11
	.2byte	0x12c
	.4byte	0x39
	.byte	0x84
	.uleb128 0x16
	.4byte	.LASF1628
	.byte	0x11
	.2byte	0x12f
	.4byte	0x4e
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF1629
	.byte	0x11
	.2byte	0x130
	.4byte	0x4e
	.byte	0x8a
	.uleb128 0x16
	.4byte	.LASF1630
	.byte	0x11
	.2byte	0x131
	.4byte	0x4e
	.byte	0x8c
	.uleb128 0x16
	.4byte	.LASF1631
	.byte	0x11
	.2byte	0x135
	.4byte	0x34fb
	.byte	0x90
	.uleb128 0x16
	.4byte	.LASF1583
	.byte	0x11
	.2byte	0x139
	.4byte	0x4e
	.byte	0x94
	.uleb128 0x16
	.4byte	.LASF1632
	.byte	0x11
	.2byte	0x13d
	.4byte	0x4e
	.byte	0x96
	.uleb128 0x16
	.4byte	.LASF1633
	.byte	0x11
	.2byte	0x140
	.4byte	0x4e
	.byte	0x98
	.uleb128 0x16
	.4byte	.LASF1634
	.byte	0x11
	.2byte	0x142
	.4byte	0x4e
	.byte	0x9a
	.uleb128 0x16
	.4byte	.LASF1635
	.byte	0x11
	.2byte	0x146
	.4byte	0x3712
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF1636
	.byte	0x11
	.2byte	0x149
	.4byte	0x4e
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF1637
	.byte	0x11
	.2byte	0x14c
	.4byte	0x327c
	.byte	0xa2
	.uleb128 0x16
	.4byte	.LASF1638
	.byte	0x11
	.2byte	0x14f
	.4byte	0x34fb
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF1639
	.byte	0x11
	.2byte	0x152
	.4byte	0x34fb
	.byte	0xb0
	.uleb128 0x16
	.4byte	.LASF1640
	.byte	0x11
	.2byte	0x158
	.4byte	0x39
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF1641
	.byte	0x11
	.2byte	0x159
	.4byte	0x39
	.byte	0xb8
	.uleb128 0x16
	.4byte	.LASF1642
	.byte	0x11
	.2byte	0x15c
	.4byte	0x3779
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF1643
	.byte	0x11
	.2byte	0x15e
	.4byte	0xb93
	.byte	0xc0
	.uleb128 0x16
	.4byte	.LASF1644
	.byte	0x11
	.2byte	0x15f
	.4byte	0xb93
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF1645
	.byte	0x11
	.2byte	0x160
	.4byte	0xb93
	.byte	0xc8
	.uleb128 0x25
	.ascii	"pad\000"
	.byte	0x11
	.2byte	0x162
	.4byte	0xb93
	.byte	0xcc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3287
	.uleb128 0xf
	.byte	0x4
	.4byte	0x34fb
	.uleb128 0x19
	.4byte	.LASF1646
	.byte	0xc
	.byte	0x12
	.2byte	0x123
	.4byte	0x353c
	.uleb128 0x16
	.4byte	.LASF1647
	.byte	0x12
	.2byte	0x125
	.4byte	0x3e1c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1648
	.byte	0x12
	.2byte	0x126
	.4byte	0x39
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1649
	.byte	0x12
	.2byte	0x126
	.4byte	0x39
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3507
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31bc
	.uleb128 0x10
	.4byte	.LASF1650
	.2byte	0x11c
	.byte	0x13
	.byte	0x5d
	.4byte	0x3712
	.uleb128 0xe
	.ascii	"mo\000"
	.byte	0x13
	.byte	0x5f
	.4byte	0x380d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1651
	.byte	0x13
	.byte	0x60
	.4byte	0x3802
	.byte	0x4
	.uleb128 0xe
	.ascii	"cmd\000"
	.byte	0x13
	.byte	0x61
	.4byte	0x37dc
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF1652
	.byte	0x13
	.byte	0x66
	.4byte	0xb93
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1653
	.byte	0x13
	.byte	0x68
	.4byte	0xb93
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1654
	.byte	0x13
	.byte	0x6a
	.4byte	0xb93
	.byte	0x18
	.uleb128 0xe
	.ascii	"bob\000"
	.byte	0x13
	.byte	0x6c
	.4byte	0xb93
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1621
	.byte	0x13
	.byte	0x73
	.4byte	0xb93
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1622
	.byte	0x13
	.byte	0x73
	.4byte	0xb93
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1627
	.byte	0x13
	.byte	0x77
	.4byte	0x39
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF1655
	.byte	0x13
	.byte	0x78
	.4byte	0x39
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF1656
	.byte	0x13
	.byte	0x7a
	.4byte	0x39
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1657
	.byte	0x13
	.byte	0x7d
	.4byte	0x3813
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1658
	.byte	0x13
	.byte	0x7e
	.4byte	0x3823
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF1659
	.byte	0x13
	.byte	0x7f
	.4byte	0xabb
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF1660
	.byte	0x13
	.byte	0x82
	.4byte	0x3833
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF1661
	.byte	0x13
	.byte	0x83
	.4byte	0x9fd
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF1662
	.byte	0x13
	.byte	0x86
	.4byte	0x9fd
	.byte	0x79
	.uleb128 0xc
	.4byte	.LASF1663
	.byte	0x13
	.byte	0x88
	.4byte	0x3843
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF1664
	.byte	0x13
	.byte	0x89
	.4byte	0x3833
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF1665
	.byte	0x13
	.byte	0x8a
	.4byte	0x3833
	.byte	0xb0
	.uleb128 0xc
	.4byte	.LASF1666
	.byte	0x13
	.byte	0x8d
	.4byte	0x39
	.byte	0xc0
	.uleb128 0xc
	.4byte	.LASF1667
	.byte	0x13
	.byte	0x8e
	.4byte	0x39
	.byte	0xc4
	.uleb128 0xc
	.4byte	.LASF1668
	.byte	0x13
	.byte	0x92
	.4byte	0x39
	.byte	0xc8
	.uleb128 0xc
	.4byte	.LASF1669
	.byte	0x13
	.byte	0x95
	.4byte	0x39
	.byte	0xcc
	.uleb128 0xc
	.4byte	.LASF1670
	.byte	0x13
	.byte	0x98
	.4byte	0x39
	.byte	0xd0
	.uleb128 0xc
	.4byte	.LASF1671
	.byte	0x13
	.byte	0x99
	.4byte	0x39
	.byte	0xd4
	.uleb128 0xc
	.4byte	.LASF1672
	.byte	0x13
	.byte	0x9a
	.4byte	0x39
	.byte	0xd8
	.uleb128 0xc
	.4byte	.LASF1673
	.byte	0x13
	.byte	0x9d
	.4byte	0x586
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF1674
	.byte	0x13
	.byte	0xa0
	.4byte	0x39
	.byte	0xe0
	.uleb128 0xc
	.4byte	.LASF1675
	.byte	0x13
	.byte	0xa1
	.4byte	0x39
	.byte	0xe4
	.uleb128 0xc
	.4byte	.LASF1676
	.byte	0x13
	.byte	0xa4
	.4byte	0x380d
	.byte	0xe8
	.uleb128 0xc
	.4byte	.LASF1677
	.byte	0x13
	.byte	0xa7
	.4byte	0x39
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF1678
	.byte	0x13
	.byte	0xab
	.4byte	0x39
	.byte	0xf0
	.uleb128 0xc
	.4byte	.LASF1679
	.byte	0x13
	.byte	0xaf
	.4byte	0x39
	.byte	0xf4
	.uleb128 0xc
	.4byte	.LASF1680
	.byte	0x13
	.byte	0xb2
	.4byte	0x3853
	.byte	0xf8
	.uleb128 0x11
	.4byte	.LASF1681
	.byte	0x13
	.byte	0xb5
	.4byte	0xabb
	.2byte	0x118
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3548
	.uleb128 0xd
	.4byte	.LASF1682
	.byte	0x1c
	.byte	0x12
	.byte	0xde
	.4byte	0x3779
	.uleb128 0xc
	.4byte	.LASF1683
	.byte	0x12
	.byte	0xe0
	.4byte	0x3e1c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1684
	.byte	0x12
	.byte	0xe1
	.4byte	0x34fb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1685
	.byte	0x12
	.byte	0xe2
	.4byte	0x3779
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1686
	.byte	0x12
	.byte	0xe3
	.4byte	0x3779
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1687
	.byte	0x12
	.byte	0xe4
	.4byte	0x3779
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1688
	.byte	0x12
	.byte	0xe5
	.4byte	0x3779
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1689
	.byte	0x12
	.byte	0xe6
	.4byte	0xabb
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3718
	.uleb128 0x6
	.4byte	.LASF1690
	.byte	0x11
	.2byte	0x165
	.4byte	0x3287
	.uleb128 0xb
	.byte	0x8
	.byte	0x14
	.byte	0x31
	.4byte	0x37dc
	.uleb128 0xc
	.4byte	.LASF1691
	.byte	0x14
	.byte	0x33
	.4byte	0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1692
	.byte	0x14
	.byte	0x34
	.4byte	0x40
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF1693
	.byte	0x14
	.byte	0x35
	.4byte	0x4e
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF1694
	.byte	0x14
	.byte	0x36
	.4byte	0x4e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1695
	.byte	0x14
	.byte	0x37
	.4byte	0xac6
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF1696
	.byte	0x14
	.byte	0x38
	.4byte	0xac6
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1697
	.byte	0x14
	.byte	0x39
	.4byte	0x378b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x13
	.byte	0x40
	.4byte	0x3802
	.uleb128 0x20
	.4byte	.LASF1698
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1699
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1700
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1701
	.byte	0x13
	.byte	0x48
	.4byte	0x37e7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x377f
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x3823
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0xabb
	.4byte	0x3833
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x3843
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0xabb
	.4byte	0x3853
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x3220
	.4byte	0x3863
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1702
	.byte	0x13
	.byte	0xb7
	.4byte	0x3548
	.uleb128 0x1f
	.byte	0x1
	.byte	0x15
	.byte	0x57
	.4byte	0x3919
	.uleb128 0x20
	.4byte	.LASF1703
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1704
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1705
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1706
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1707
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1708
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1709
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1710
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1711
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1712
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1713
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1714
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1715
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1716
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1717
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1718
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1719
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1720
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1721
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1722
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1723
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1724
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1725
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1726
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1727
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1728
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1729
	.sleb128 32
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1731
	.byte	0x1
	.byte	0x15
	.byte	0xaa
	.4byte	0x3944
	.uleb128 0x20
	.4byte	.LASF1732
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1733
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1734
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1735
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1736
	.sleb128 16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1737
	.byte	0x1
	.byte	0x15
	.byte	0xb3
	.4byte	0x3963
	.uleb128 0x20
	.4byte	.LASF1738
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1739
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1740
	.sleb128 2
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.4byte	0x3984
	.uleb128 0x20
	.4byte	.LASF1741
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1742
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1743
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1744
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1745
	.byte	0x16
	.byte	0x35
	.4byte	0x3963
	.uleb128 0xb
	.byte	0x10
	.byte	0x16
	.byte	0x38
	.4byte	0x39c8
	.uleb128 0xc
	.4byte	.LASF1608
	.byte	0x16
	.byte	0x3a
	.4byte	0x3984
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1746
	.byte	0x16
	.byte	0x3b
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1747
	.byte	0x16
	.byte	0x3c
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1748
	.byte	0x16
	.byte	0x3d
	.4byte	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1749
	.byte	0x16
	.byte	0x3e
	.4byte	0x398f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x2
	.byte	0x6a
	.4byte	0x3a06
	.uleb128 0x20
	.4byte	.LASF1750
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1751
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1752
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1753
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1754
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1755
	.sleb128 5
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x12
	.byte	0x4d
	.4byte	0x3a23
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x12
	.byte	0x4e
	.4byte	0xb93
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x12
	.byte	0x4e
	.4byte	0xb93
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x12
	.byte	0x4c
	.4byte	0x3a3a
	.uleb128 0x26
	.4byte	0x3a06
	.uleb128 0x27
	.ascii	"v\000"
	.byte	0x12
	.byte	0x50
	.4byte	0x3a3a
	.byte	0
	.uleb128 0x9
	.4byte	0xb93
	.4byte	0x3a4a
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x12
	.byte	0x4a
	.4byte	0x3a59
	.uleb128 0x28
	.4byte	0x3a23
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1756
	.byte	0x12
	.byte	0x52
	.4byte	0x3a4a
	.uleb128 0xb
	.byte	0x24
	.byte	0x12
	.byte	0x55
	.4byte	0x3a97
	.uleb128 0xc
	.4byte	.LASF1612
	.byte	0x12
	.byte	0x57
	.4byte	0xc27
	.byte	0
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x12
	.byte	0x58
	.4byte	0xb93
	.byte	0x18
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x12
	.byte	0x58
	.4byte	0xb93
	.byte	0x1c
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x12
	.byte	0x58
	.4byte	0xb93
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1757
	.byte	0x12
	.byte	0x59
	.4byte	0x3a64
	.uleb128 0xb
	.byte	0xc4
	.byte	0x12
	.byte	0x60
	.4byte	0x3c97
	.uleb128 0xc
	.4byte	.LASF1758
	.byte	0x12
	.byte	0x62
	.4byte	0x39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1759
	.byte	0x12
	.byte	0x63
	.4byte	0xabb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1760
	.byte	0x12
	.byte	0x64
	.4byte	0xabb
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1761
	.byte	0x12
	.byte	0x65
	.4byte	0xb93
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1762
	.byte	0x12
	.byte	0x66
	.4byte	0xb93
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1763
	.byte	0x12
	.byte	0x67
	.4byte	0x39
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1764
	.byte	0x12
	.byte	0x67
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1765
	.byte	0x12
	.byte	0x68
	.4byte	0x39
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1766
	.byte	0x12
	.byte	0x69
	.4byte	0x380d
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1767
	.byte	0x12
	.byte	0x6a
	.4byte	0x3833
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1768
	.byte	0x12
	.byte	0x6b
	.4byte	0x3a97
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1624
	.byte	0x12
	.byte	0x6c
	.4byte	0x39
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF1769
	.byte	0x12
	.byte	0x6d
	.4byte	0x380d
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF1640
	.byte	0x12
	.byte	0x73
	.4byte	0x39
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF1641
	.byte	0x12
	.byte	0x73
	.4byte	0x39
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF1770
	.byte	0x12
	.byte	0x76
	.4byte	0x37
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF1771
	.byte	0x12
	.byte	0x77
	.4byte	0x37
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF1772
	.byte	0x12
	.byte	0x78
	.4byte	0x37
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF1773
	.byte	0x12
	.byte	0x7b
	.4byte	0x39
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF1774
	.byte	0x12
	.byte	0x7c
	.4byte	0x39
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF1775
	.byte	0x12
	.byte	0x7d
	.4byte	0x39
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF1776
	.byte	0x12
	.byte	0x80
	.4byte	0x39
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF1777
	.byte	0x12
	.byte	0x82
	.4byte	0x39
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF1778
	.byte	0x12
	.byte	0x82
	.4byte	0x39
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF1779
	.byte	0x12
	.byte	0x82
	.4byte	0x39
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF1780
	.byte	0x12
	.byte	0x86
	.4byte	0x3779
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF1781
	.byte	0x12
	.byte	0x88
	.4byte	0x39
	.byte	0x94
	.uleb128 0xc
	.4byte	.LASF1782
	.byte	0x12
	.byte	0x89
	.4byte	0x3d9c
	.byte	0x98
	.uleb128 0xe
	.ascii	"sky\000"
	.byte	0x12
	.byte	0x92
	.4byte	0x39
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF1783
	.byte	0x12
	.byte	0x95
	.4byte	0xb93
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF1784
	.byte	0x12
	.byte	0x95
	.4byte	0xb93
	.byte	0xa4
	.uleb128 0xc
	.4byte	.LASF1785
	.byte	0x12
	.byte	0x96
	.4byte	0xb93
	.byte	0xa8
	.uleb128 0xc
	.4byte	.LASF1786
	.byte	0x12
	.byte	0x96
	.4byte	0xb93
	.byte	0xac
	.uleb128 0xc
	.4byte	.LASF1787
	.byte	0x12
	.byte	0x99
	.4byte	0x39
	.byte	0xb0
	.uleb128 0xc
	.4byte	.LASF1788
	.byte	0x12
	.byte	0x99
	.4byte	0x39
	.byte	0xb4
	.uleb128 0xc
	.4byte	.LASF1789
	.byte	0x12
	.byte	0x9b
	.4byte	0x4e
	.byte	0xb8
	.uleb128 0xc
	.4byte	.LASF1790
	.byte	0x12
	.byte	0x9c
	.4byte	0x4e
	.byte	0xba
	.uleb128 0xc
	.4byte	.LASF1791
	.byte	0x12
	.byte	0x9d
	.4byte	0x4e
	.byte	0xbc
	.uleb128 0xc
	.4byte	.LASF1792
	.byte	0x12
	.byte	0x9e
	.4byte	0x4e
	.byte	0xbe
	.uleb128 0xc
	.4byte	.LASF1793
	.byte	0x12
	.byte	0x9f
	.4byte	0x4e
	.byte	0xc0
	.uleb128 0xe
	.ascii	"tag\000"
	.byte	0x12
	.byte	0xa0
	.4byte	0x4e
	.byte	0xc2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1794
	.byte	0x7c
	.byte	0x12
	.byte	0xb1
	.4byte	0x3d9c
	.uleb128 0xc
	.4byte	.LASF1795
	.byte	0x12
	.byte	0xb3
	.4byte	0x39
	.byte	0
	.uleb128 0xe
	.ascii	"v1\000"
	.byte	0x12
	.byte	0xb4
	.4byte	0x3e06
	.byte	0x4
	.uleb128 0xe
	.ascii	"v2\000"
	.byte	0x12
	.byte	0xb4
	.4byte	0x3e06
	.byte	0x8
	.uleb128 0xe
	.ascii	"dx\000"
	.byte	0x12
	.byte	0xb5
	.4byte	0xb93
	.byte	0xc
	.uleb128 0xe
	.ascii	"dy\000"
	.byte	0x12
	.byte	0xb5
	.4byte	0xb93
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1599
	.byte	0x12
	.byte	0xb6
	.4byte	0x55
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1792
	.byte	0x12
	.byte	0xb7
	.4byte	0x4e
	.byte	0x16
	.uleb128 0xe
	.ascii	"tag\000"
	.byte	0x12
	.byte	0xb8
	.4byte	0x4e
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1796
	.byte	0x12
	.byte	0xb9
	.4byte	0x322b
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF1797
	.byte	0x12
	.byte	0xba
	.4byte	0x3e0c
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1798
	.byte	0x12
	.byte	0xbb
	.4byte	0x3dd4
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1799
	.byte	0x12
	.byte	0xbc
	.4byte	0x3e1c
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF1800
	.byte	0x12
	.byte	0xbd
	.4byte	0x3e1c
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF1624
	.byte	0x12
	.byte	0xbe
	.4byte	0x39
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF1801
	.byte	0x12
	.byte	0xbf
	.4byte	0x37
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF1802
	.byte	0x12
	.byte	0xc0
	.4byte	0x39
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF1764
	.byte	0x12
	.byte	0xc1
	.4byte	0x39
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF1763
	.byte	0x12
	.byte	0xc1
	.4byte	0x39
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF1803
	.byte	0x12
	.byte	0xc2
	.4byte	0x39
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF1804
	.byte	0x12
	.byte	0xc9
	.4byte	0x3ddf
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF1768
	.byte	0x12
	.byte	0xca
	.4byte	0x3a97
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3da2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3c97
	.uleb128 0x2
	.4byte	.LASF1805
	.byte	0x12
	.byte	0xa4
	.4byte	0x3aa2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x12
	.byte	0xaa
	.4byte	0x3dd4
	.uleb128 0x20
	.4byte	.LASF1806
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1807
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1808
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1809
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1810
	.byte	0x12
	.byte	0xaf
	.4byte	0x3db3
	.uleb128 0x1f
	.byte	0x1
	.byte	0x12
	.byte	0xc3
	.4byte	0x3e06
	.uleb128 0x20
	.4byte	.LASF1811
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1812
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1813
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1814
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1815
	.sleb128 16
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a59
	.uleb128 0x9
	.4byte	0xb93
	.4byte	0x3e1c
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3da8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1816
	.uleb128 0xf
	.byte	0x4
	.4byte	0x39
	.uleb128 0x1a
	.byte	0x14
	.byte	0x12
	.2byte	0x157
	.4byte	0x3e7a
	.uleb128 0x16
	.4byte	.LASF1817
	.byte	0x12
	.2byte	0x159
	.4byte	0x39
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1595
	.byte	0x12
	.2byte	0x159
	.4byte	0x39
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1818
	.byte	0x12
	.2byte	0x15a
	.4byte	0x39
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1819
	.byte	0x12
	.2byte	0x15a
	.4byte	0x39
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1820
	.byte	0x12
	.2byte	0x15b
	.4byte	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1821
	.byte	0x12
	.2byte	0x15c
	.4byte	0x3e2f
	.uleb128 0x1f
	.byte	0x1
	.byte	0x17
	.byte	0x3b
	.4byte	0x3ed7
	.uleb128 0x20
	.4byte	.LASF1822
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1823
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1824
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1825
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1826
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1827
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1828
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1829
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1830
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1831
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1832
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1833
	.sleb128 11
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1834
	.byte	0x17
	.byte	0x93
	.4byte	0x3ee2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3ee8
	.uleb128 0x1d
	.4byte	0x3f0c
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0xac6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1835
	.byte	0x17
	.byte	0x9b
	.4byte	0x3f17
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3f1d
	.uleb128 0x1d
	.4byte	0x3f41
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0xb6e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1836
	.byte	0x17
	.byte	0xac
	.4byte	0x3f4c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3f52
	.uleb128 0x1d
	.4byte	0x3f62
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x18
	.byte	0xb6
	.4byte	0x4250
	.uleb128 0x20
	.4byte	.LASF1837
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1838
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1839
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1840
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1841
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1842
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1843
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1844
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1845
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1846
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1847
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1848
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1849
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1850
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1851
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1852
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1853
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1854
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1855
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1856
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1857
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1858
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1859
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1860
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1861
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1862
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1863
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1864
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1865
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1866
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1867
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1868
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1869
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1870
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1871
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1872
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1873
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1874
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1875
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1876
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1877
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1878
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1879
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1880
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1881
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1882
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1883
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1884
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1885
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1886
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1887
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1888
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1889
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1890
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1891
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1892
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1893
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1894
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1895
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1896
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1897
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1898
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1899
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1900
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1901
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1902
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1903
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1904
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1905
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1906
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1907
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1908
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1909
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1910
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1911
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1912
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1913
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1914
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1915
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1916
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1917
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1918
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1919
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1920
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1921
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1922
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1923
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1924
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1925
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1926
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1927
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1928
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1929
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1930
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1931
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1932
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1933
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1934
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1935
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1936
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1937
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1938
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1939
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1940
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1941
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1942
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1943
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1944
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1945
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1946
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1947
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1948
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1949
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1950
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1951
	.sleb128 114
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x19
	.byte	0x89
	.4byte	0x4271
	.uleb128 0x20
	.4byte	.LASF1952
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1953
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1954
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1955
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1956
	.byte	0x19
	.byte	0x8e
	.4byte	0x4250
	.uleb128 0x7
	.byte	0x4
	.byte	0x19
	.byte	0xa9
	.4byte	0x42bc
	.uleb128 0x27
	.ascii	"var\000"
	.byte	0x19
	.byte	0xab
	.4byte	0x877
	.uleb128 0x8
	.4byte	.LASF1957
	.byte	0x19
	.byte	0xac
	.4byte	0x3e29
	.uleb128 0x8
	.4byte	.LASF1958
	.byte	0x19
	.byte	0xad
	.4byte	0x586
	.uleb128 0x27
	.ascii	"def\000"
	.byte	0x19
	.byte	0xae
	.4byte	0x4335
	.uleb128 0x8
	.4byte	.LASF1959
	.byte	0x19
	.byte	0xaf
	.4byte	0x43c0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1960
	.byte	0x2c
	.byte	0x1a
	.byte	0x3f
	.4byte	0x4335
	.uleb128 0xc
	.4byte	.LASF1958
	.byte	0x1a
	.byte	0x41
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1961
	.byte	0x1a
	.byte	0x4f
	.4byte	0x43d7
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1962
	.byte	0x1a
	.byte	0x53
	.4byte	0x43f7
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1963
	.byte	0x1a
	.byte	0x55
	.4byte	0x39
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1964
	.byte	0x1a
	.byte	0x56
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1608
	.byte	0x1a
	.byte	0x60
	.4byte	0x4416
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1965
	.byte	0x1a
	.byte	0x61
	.4byte	0x39
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1966
	.byte	0x1a
	.byte	0x62
	.4byte	0x3e29
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1967
	.byte	0x1a
	.byte	0x66
	.4byte	0x43c0
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x42bc
	.uleb128 0xd
	.4byte	.LASF1968
	.byte	0x24
	.byte	0x19
	.byte	0xa1
	.4byte	0x43c0
	.uleb128 0xc
	.4byte	.LASF1969
	.byte	0x19
	.byte	0xa3
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1970
	.byte	0x19
	.byte	0xa4
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1971
	.byte	0x19
	.byte	0xa5
	.4byte	0x4271
	.byte	0x8
	.uleb128 0xe
	.ascii	"m_x\000"
	.byte	0x19
	.byte	0xa6
	.4byte	0x4e
	.byte	0xa
	.uleb128 0xe
	.ascii	"m_y\000"
	.byte	0x19
	.byte	0xa7
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xe
	.ascii	"var\000"
	.byte	0x19
	.byte	0xb0
	.4byte	0x427c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1972
	.byte	0x19
	.byte	0xb2
	.4byte	0x3e29
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1973
	.byte	0x19
	.byte	0xb3
	.4byte	0x3e29
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1419
	.byte	0x19
	.byte	0xb4
	.4byte	0x2a3
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1974
	.byte	0x19
	.byte	0xb5
	.4byte	0x43c6
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x433b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x586
	.uleb128 0x2
	.4byte	.LASF1975
	.byte	0x19
	.byte	0xb6
	.4byte	0x433b
	.uleb128 0xb
	.byte	0x8
	.byte	0x1a
	.byte	0x4c
	.4byte	0x43f7
	.uleb128 0xe
	.ascii	"pi\000"
	.byte	0x1a
	.byte	0x4d
	.4byte	0x3e29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1976
	.byte	0x1a
	.byte	0x4e
	.4byte	0x43c6
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x1a
	.byte	0x50
	.4byte	0x4416
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1a
	.byte	0x51
	.4byte	0x39
	.byte	0
	.uleb128 0xe
	.ascii	"psz\000"
	.byte	0x1a
	.byte	0x52
	.4byte	0x586
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1a
	.byte	0x57
	.4byte	0x444f
	.uleb128 0x20
	.4byte	.LASF1977
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1978
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1979
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1980
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1981
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1982
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1983
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1984
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1985
	.byte	0x1a
	.byte	0x67
	.4byte	0x42bc
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1b
	.byte	0x28
	.4byte	0x448e
	.uleb128 0x20
	.4byte	.LASF1986
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1987
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1988
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1989
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1990
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1991
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1992
	.sleb128 64
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1993
	.byte	0x1b
	.byte	0x30
	.4byte	0x445a
	.uleb128 0xb
	.byte	0x18
	.byte	0x1
	.byte	0x9b
	.4byte	0x44de
	.uleb128 0xc
	.4byte	.LASF1994
	.byte	0x1
	.byte	0x9d
	.4byte	0x4e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1958
	.byte	0x1
	.byte	0x9e
	.4byte	0x44de
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF1995
	.byte	0x1
	.byte	0xa3
	.4byte	0x856
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1996
	.byte	0x1
	.byte	0xa4
	.4byte	0x55b
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1997
	.byte	0x1
	.byte	0xa5
	.4byte	0x586
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x44ee
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1998
	.byte	0x1
	.byte	0xa6
	.4byte	0x4499
	.uleb128 0xd
	.4byte	.LASF1999
	.byte	0x18
	.byte	0x1
	.byte	0xa8
	.4byte	0x4556
	.uleb128 0xc
	.4byte	.LASF2000
	.byte	0x1
	.byte	0xaa
	.4byte	0x4e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF2001
	.byte	0x1
	.byte	0xab
	.4byte	0x4556
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF2002
	.byte	0x1
	.byte	0xac
	.4byte	0x455c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1995
	.byte	0x1
	.byte	0xad
	.4byte	0xbb4
	.byte	0xc
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x1
	.byte	0xae
	.4byte	0x4e
	.byte	0x10
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x1
	.byte	0xaf
	.4byte	0x4e
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF2003
	.byte	0x1
	.byte	0xb0
	.4byte	0x4e
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x44f9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x44ee
	.uleb128 0x2
	.4byte	.LASF2004
	.byte	0x1
	.byte	0xb1
	.4byte	0x44f9
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x13b
	.4byte	0x45a1
	.uleb128 0x20
	.4byte	.LASF2005
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2006
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2007
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1609
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2008
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2009
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2010
	.sleb128 6
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x175
	.4byte	0x45b7
	.uleb128 0x20
	.4byte	.LASF2011
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2012
	.sleb128 1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x17b
	.4byte	0x45cd
	.uleb128 0x20
	.4byte	.LASF2013
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2014
	.sleb128 1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x181
	.4byte	0x45e3
	.uleb128 0x20
	.4byte	.LASF2015
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2016
	.sleb128 1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x460b
	.uleb128 0x29
	.ascii	"ep1\000"
	.sleb128 0
	.uleb128 0x29
	.ascii	"ep2\000"
	.sleb128 1
	.uleb128 0x29
	.ascii	"ep3\000"
	.sleb128 2
	.uleb128 0x29
	.ascii	"ep4\000"
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2017
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x23b
	.4byte	0x4639
	.uleb128 0x20
	.4byte	.LASF2018
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2019
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2020
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2021
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2022
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2023
	.sleb128 5
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x4679
	.uleb128 0x20
	.4byte	.LASF2024
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2025
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2026
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2027
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2028
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2029
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2030
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2031
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2032
	.sleb128 8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x3b7
	.4byte	0x46b9
	.uleb128 0x20
	.4byte	.LASF2033
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2034
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2035
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2036
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2037
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2038
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2039
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2040
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2041
	.sleb128 8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x448
	.4byte	0x46e1
	.uleb128 0x20
	.4byte	.LASF2042
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2043
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2044
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2045
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2046
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x4a2
	.4byte	0x4709
	.uleb128 0x20
	.4byte	.LASF2047
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2048
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2049
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2050
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2051
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x4749
	.uleb128 0x20
	.4byte	.LASF2052
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2053
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2054
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2055
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2056
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2057
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2058
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2059
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2060
	.sleb128 8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x608
	.4byte	0x475f
	.uleb128 0x20
	.4byte	.LASF2061
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2062
	.sleb128 1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0x93d
	.4byte	0x47c9
	.uleb128 0x20
	.4byte	.LASF2063
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2064
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2065
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2066
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2067
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2068
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2069
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2070
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2071
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF2072
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF2073
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF2074
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF2075
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF2076
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF2077
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF2078
	.sleb128 15
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xaa2
	.4byte	0x4815
	.uleb128 0x20
	.4byte	.LASF2079
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2080
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2081
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2082
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2083
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2084
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2085
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2086
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2087
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF2088
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF2089
	.sleb128 10
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xb1f
	.4byte	0x483d
	.uleb128 0x20
	.4byte	.LASF2090
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2091
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2092
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2093
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2094
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xb2f
	.4byte	0x4853
	.uleb128 0x20
	.4byte	.LASF2095
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2096
	.sleb128 1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xb8c
	.4byte	0x486f
	.uleb128 0x20
	.4byte	.LASF2097
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2098
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2099
	.sleb128 2
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xb92
	.4byte	0x4891
	.uleb128 0x20
	.4byte	.LASF2100
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2101
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2102
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2103
	.sleb128 3
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xb99
	.4byte	0x48bf
	.uleb128 0x20
	.4byte	.LASF2104
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2105
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2106
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2107
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2108
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2109
	.sleb128 5
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xbdf
	.4byte	0x48ff
	.uleb128 0x20
	.4byte	.LASF2110
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2111
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2112
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2113
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2114
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2115
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2116
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2117
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2118
	.sleb128 8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xc6a
	.4byte	0x4999
	.uleb128 0x20
	.4byte	.LASF2119
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2120
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2121
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2122
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2123
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2124
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2125
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2126
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2127
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF2128
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF2129
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2130
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2131
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2132
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2133
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2134
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2135
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2136
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2137
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF2138
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF2139
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2140
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2141
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2142
	.sleb128 3
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xd1e
	.4byte	0x49df
	.uleb128 0x20
	.4byte	.LASF2143
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2144
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2145
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2146
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2147
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF2148
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF2149
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF2150
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF2151
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF2152
	.sleb128 9
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xfd3
	.4byte	0x4a07
	.uleb128 0x20
	.4byte	.LASF2153
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2154
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF2155
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF2156
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF2157
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.2byte	0xfdb
	.4byte	0x4a1d
	.uleb128 0x20
	.4byte	.LASF2158
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF2159
	.sleb128 2
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF2634
	.byte	0x1
	.byte	0x6a
	.4byte	0x39
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF2160
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x4a41
	.uleb128 0x2c
	.ascii	"def\000"
	.byte	0x1
	.byte	0x6f
	.4byte	0x4a41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x444f
	.uleb128 0x2b
	.4byte	.LASF2161
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.4byte	0x4a6a
	.uleb128 0x2d
	.4byte	.LASF2162
	.byte	0x1
	.byte	0x80
	.4byte	0x586
	.uleb128 0x2d
	.4byte	.LASF2163
	.byte	0x1
	.byte	0x80
	.4byte	0x39
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2164
	.byte	0x1
	.2byte	0x416
	.byte	0x1
	.4byte	0x4a8f
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x416
	.4byte	0x39
	.uleb128 0x30
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x41d
	.4byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2165
	.byte	0x1
	.2byte	0xde4
	.byte	0x1
	.4byte	0x4aa9
	.uleb128 0x2f
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0xde4
	.4byte	0x4aa9
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x43cc
	.uleb128 0x2e
	.4byte	.LASF2166
	.byte	0x1
	.2byte	0xf9f
	.byte	0x1
	.4byte	0x4adf
	.uleb128 0x2f
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0xf9f
	.4byte	0x39
	.uleb128 0x2f
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0xf9f
	.4byte	0x39
	.uleb128 0x32
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0xf9f
	.4byte	0x39
	.byte	0
	.uleb128 0x33
	.4byte	.LASF2635
	.byte	0x1
	.2byte	0x7e7
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF2175
	.byte	0x1
	.2byte	0x4f1
	.byte	0x1
	.4byte	0x4b0e
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x4f1
	.4byte	0x39
	.uleb128 0x32
	.4byte	.LASF2169
	.byte	0x1
	.2byte	0x4f1
	.4byte	0x3e29
	.byte	0
	.uleb128 0x35
	.4byte	.LASF2272
	.byte	0x2
	.byte	0x83
	.4byte	0x39
	.byte	0x3
	.4byte	0x4b34
	.uleb128 0x2d
	.4byte	.LASF1958
	.byte	0x2
	.byte	0x83
	.4byte	0x586
	.uleb128 0x2c
	.ascii	"ns\000"
	.byte	0x2
	.byte	0x83
	.4byte	0x39
	.byte	0
	.uleb128 0x36
	.4byte	.LASF2196
	.byte	0x1
	.2byte	0xee1
	.4byte	0x39
	.byte	0x1
	.4byte	0x4b66
	.uleb128 0x2f
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xee1
	.4byte	0x39
	.uleb128 0x32
	.4byte	.LASF2170
	.byte	0x1
	.2byte	0xee1
	.4byte	0x39
	.uleb128 0x31
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xee3
	.4byte	0x586
	.byte	0
	.uleb128 0x37
	.4byte	.LASF2171
	.byte	0x1
	.2byte	0x148d
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF2172
	.byte	0x1
	.2byte	0x14fa
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF2173
	.byte	0x1
	.2byte	0x265
	.byte	0x1
	.4byte	0x4b91
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x265
	.4byte	0x39
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2174
	.byte	0x1
	.2byte	0x28a
	.byte	0x1
	.4byte	0x4baa
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2176
	.byte	0x1
	.2byte	0x2f5
	.byte	0x1
	.4byte	0x4bc4
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x39
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2177
	.byte	0x1
	.2byte	0x529
	.byte	0x1
	.4byte	0x4bdd
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x529
	.4byte	0x39
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2178
	.byte	0x1
	.2byte	0x549
	.byte	0x1
	.4byte	0x4bf6
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x549
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2179
	.byte	0x1
	.2byte	0x1507
	.byte	0x1
	.4byte	0x4c10
	.uleb128 0x32
	.4byte	.LASF2180
	.byte	0x1
	.2byte	0x1507
	.4byte	0x4c10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4562
	.uleb128 0x34
	.4byte	.LASF2181
	.byte	0x1
	.2byte	0xe8b
	.byte	0x1
	.4byte	0x4c30
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xe8b
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2182
	.byte	0x1
	.2byte	0x151f
	.byte	0x1
	.4byte	0x4c62
	.uleb128 0x32
	.4byte	.LASF2183
	.byte	0x1
	.2byte	0x151f
	.4byte	0x586
	.uleb128 0x32
	.4byte	.LASF1995
	.byte	0x1
	.2byte	0x151f
	.4byte	0x37
	.uleb128 0x32
	.4byte	.LASF2184
	.byte	0x1
	.2byte	0x151f
	.4byte	0xabb
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2185
	.byte	0x1
	.2byte	0x21f
	.byte	0x1
	.4byte	0x4c7c
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x21f
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2186
	.byte	0x1
	.2byte	0x272
	.byte	0x1
	.4byte	0x4c96
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x272
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2187
	.byte	0x1
	.2byte	0x293
	.byte	0x1
	.4byte	0x4cb0
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x293
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2188
	.byte	0x1
	.2byte	0x317
	.byte	0x1
	.4byte	0x4cca
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x317
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2189
	.byte	0x1
	.2byte	0x39f
	.byte	0x1
	.4byte	0x4ce4
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x39f
	.4byte	0x39
	.byte	0
	.uleb128 0x37
	.4byte	.LASF2190
	.byte	0x1
	.2byte	0x50f
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF2191
	.byte	0x1
	.2byte	0x507
	.byte	0x1
	.4byte	0x4d06
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x507
	.4byte	0x39
	.byte	0
	.uleb128 0x37
	.4byte	.LASF2192
	.byte	0x1
	.2byte	0x531
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF2193
	.byte	0x1
	.2byte	0x557
	.byte	0x1
	.4byte	0x4d29
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x557
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2194
	.byte	0x1
	.2byte	0x566
	.byte	0x1
	.4byte	0x4d43
	.uleb128 0x32
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x566
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2195
	.byte	0x1
	.2byte	0x366
	.byte	0x1
	.4byte	0x4d5b
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x368
	.4byte	0x39
	.byte	0
	.uleb128 0x36
	.4byte	.LASF2197
	.byte	0x1
	.2byte	0x1586
	.4byte	0x39
	.byte	0x1
	.4byte	0x4d99
	.uleb128 0x32
	.4byte	.LASF2183
	.byte	0x1
	.2byte	0x1586
	.4byte	0x586
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1588
	.4byte	0x39
	.uleb128 0x31
	.ascii	"h\000"
	.byte	0x1
	.2byte	0x1588
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF1595
	.byte	0x1
	.2byte	0x1588
	.4byte	0x39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF2198
	.byte	0x1
	.2byte	0x15bd
	.byte	0x1
	.4byte	0x4e04
	.uleb128 0x2f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x15bd
	.4byte	0x39
	.uleb128 0x2f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x15bd
	.4byte	0x39
	.uleb128 0x32
	.4byte	.LASF2199
	.byte	0x1
	.2byte	0x15bd
	.4byte	0x586
	.uleb128 0x2f
	.ascii	"cm\000"
	.byte	0x1
	.2byte	0x15bd
	.4byte	0x39
	.uleb128 0x32
	.4byte	.LASF1997
	.byte	0x1
	.2byte	0x15be
	.4byte	0x586
	.uleb128 0x32
	.4byte	.LASF2200
	.byte	0x1
	.2byte	0x15be
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF1820
	.byte	0x1
	.2byte	0x15c0
	.4byte	0x39
	.uleb128 0x30
	.uleb128 0x38
	.4byte	.LASF1599
	.byte	0x1
	.2byte	0x15c4
	.4byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF2201
	.byte	0x1
	.2byte	0x1d5
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF2202
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF2203
	.byte	0x1
	.2byte	0xfbb
	.byte	0x1
	.4byte	0x4e51
	.uleb128 0x2f
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0xfbb
	.4byte	0x39
	.uleb128 0x2f
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0xfbb
	.4byte	0x39
	.uleb128 0x32
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0xfbb
	.4byte	0x39
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0xfbb
	.4byte	0x586
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2204
	.byte	0x1
	.2byte	0x1bb
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e95
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x39
	.4byte	.LLST0
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB276
	.4byte	.LBE276-.LBB276
	.byte	0x1
	.2byte	0x1bd
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	ReadDef1
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2205
	.byte	0x1
	.2byte	0x1c0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ed9
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x39
	.4byte	.LLST1
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB278
	.4byte	.LBE278-.LBB278
	.byte	0x1
	.2byte	0x1c2
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	ReadDef2
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2206
	.byte	0x1
	.2byte	0x1c5
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f1d
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x39
	.4byte	.LLST2
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB280
	.4byte	.LBE280-.LBB280
	.byte	0x1
	.2byte	0x1c7
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	MainDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2207
	.byte	0x1
	.2byte	0x1ca
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f61
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x39
	.4byte	.LLST3
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB282
	.4byte	.LBE282-.LBB282
	.byte	0x1
	.2byte	0x1cc
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	MainDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2208
	.byte	0x1
	.2byte	0x3f5
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fa5
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x39
	.4byte	.LLST4
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB284
	.4byte	.LBE284-.LBB284
	.byte	0x1
	.2byte	0x3f7
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	OptionsDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2209
	.byte	0x1
	.2byte	0x472
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fe9
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x472
	.4byte	0x39
	.4byte	.LLST5
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB286
	.4byte	.LBE286-.LBB286
	.byte	0x1
	.2byte	0x474
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	SoundDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2210
	.byte	0x1
	.2byte	0x4d6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x502d
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x4d6
	.4byte	0x39
	.4byte	.LLST6
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB288
	.4byte	.LBE288-.LBB288
	.byte	0x1
	.2byte	0x4d8
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	MouseDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4d29
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x504a
	.uleb128 0x3e
	.4byte	0x4d36
	.4byte	.LLST7
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2222
	.byte	0x1
	.2byte	0x5fc
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x506f
	.uleb128 0x40
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x5fc
	.4byte	0x39
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2211
	.byte	0x1
	.2byte	0x696
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b3
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x696
	.4byte	0x39
	.4byte	.LLST8
	.uleb128 0x3b
	.4byte	0x4bf6
	.4byte	.LBB290
	.4byte	.LBE290-.LBB290
	.byte	0x1
	.2byte	0x698
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	SetupDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2212
	.byte	0x1
	.2byte	0x907
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50f7
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x907
	.4byte	0x39
	.4byte	.LLST9
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB292
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x909
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	KeybndDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2213
	.byte	0x1
	.2byte	0x976
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x513b
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x976
	.4byte	0x39
	.4byte	.LLST10
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB298
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x978
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	WeaponDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2214
	.byte	0x1
	.2byte	0x9cd
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x517f
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x9cd
	.4byte	0x39
	.4byte	.LLST11
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB306
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x9cf
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	StatusHUDDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2215
	.byte	0x1
	.2byte	0xa46
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c3
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xa46
	.4byte	0x39
	.4byte	.LLST12
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB314
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0xa48
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	AutoMapDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2216
	.byte	0x1
	.2byte	0xae6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5207
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xae6
	.4byte	0x39
	.4byte	.LLST13
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB322
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0xae8
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	EnemyDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2217
	.byte	0x1
	.2byte	0xc2f
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524b
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xc2f
	.4byte	0x39
	.4byte	.LLST14
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB330
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0xc31
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	GeneralDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2218
	.byte	0x1
	.2byte	0xcf0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x528f
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xcf0
	.4byte	0x39
	.4byte	.LLST15
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB338
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0xcf2
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	CompatDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2219
	.byte	0x1
	.2byte	0xd68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52d3
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xd68
	.4byte	0x39
	.4byte	.LLST16
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB346
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0xd6a
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	MessageDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2220
	.byte	0x1
	.2byte	0xdb4
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5317
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xdb4
	.4byte	0x39
	.4byte	.LLST17
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB354
	.4byte	.Ldebug_ranges0+0x138
	.byte	0x1
	.2byte	0xdb6
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	ChatStrDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2221
	.byte	0x1
	.2byte	0xeba
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x535b
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0xeba
	.4byte	0x39
	.4byte	.LLST18
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB362
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0xebe
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	ExtHelpDef
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2223
	.byte	0x1
	.2byte	0xf81
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5409
	.uleb128 0x42
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0xf81
	.4byte	0x39
	.4byte	.LLST19
	.uleb128 0x42
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0xf81
	.4byte	0x39
	.4byte	.LLST20
	.uleb128 0x3a
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0xf81
	.4byte	0x39
	.4byte	.LLST21
	.uleb128 0x42
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0xf81
	.4byte	0x586
	.4byte	.LLST22
	.uleb128 0x43
	.ascii	"w\000"
	.byte	0x1
	.2byte	0xf83
	.4byte	0x39
	.4byte	.LLST23
	.uleb128 0x43
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xf84
	.4byte	0x39
	.4byte	.LLST24
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x180
	.4byte	0x53e4
	.uleb128 0x43
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0xf88
	.4byte	0x39
	.4byte	.LLST25
	.byte	0
	.uleb128 0x45
	.4byte	.LVL47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF2636
	.byte	0x1
	.2byte	0xfa7
	.4byte	0x39
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5467
	.uleb128 0x42
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0xfa7
	.4byte	0x586
	.4byte	.LLST26
	.uleb128 0x43
	.ascii	"len\000"
	.byte	0x1
	.2byte	0xfa9
	.4byte	0x39
	.4byte	.LLST27
	.uleb128 0x43
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xfaa
	.4byte	0x39
	.4byte	.LLST28
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x198
	.uleb128 0x43
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0xfae
	.4byte	0x39
	.4byte	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2224
	.byte	0x1
	.2byte	0x166
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54ba
	.uleb128 0x49
	.4byte	.LVL63
	.4byte	0xa33a
	.4byte	0x5494
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL64
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x5e
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2225
	.byte	0x1
	.2byte	0x219
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x550e
	.uleb128 0x49
	.4byte	.LVL65
	.4byte	0xa33a
	.4byte	0x54e7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL66
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2226
	.byte	0x1
	.2byte	0x25d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55a6
	.uleb128 0x49
	.4byte	.LVL67
	.4byte	0xa33a
	.4byte	0x553b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL68
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x5566
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL69
	.4byte	0xa33a
	.4byte	0x557d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL70
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2227
	.byte	0x1
	.2byte	0xec3
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5607
	.uleb128 0x4c
	.4byte	.LASF2228
	.byte	0x1
	.2byte	0xec5
	.4byte	0x44de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x49
	.4byte	.LVL71
	.4byte	0xa33a
	.4byte	0x55df
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL72
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4baa
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x564a
	.uleb128 0x3e
	.4byte	0x4bb7
	.4byte	.LLST30
	.uleb128 0x4d
	.4byte	0x4b6f
	.4byte	.LBB374
	.4byte	.LBE374-.LBB374
	.byte	0x1
	.2byte	0x2fc
	.uleb128 0x4e
	.4byte	.LVL74
	.4byte	0xa34f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2229
	.byte	0x1
	.2byte	0x305
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5692
	.uleb128 0x42
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x305
	.4byte	0x39
	.4byte	.LLST31
	.uleb128 0x4d
	.4byte	0x4b6f
	.4byte	.LBB376
	.4byte	.LBE376-.LBB376
	.byte	0x1
	.2byte	0x30a
	.uleb128 0x4f
	.4byte	.LVL77
	.4byte	0xa365
	.uleb128 0x4f
	.4byte	.LVL79
	.4byte	0xa376
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2230
	.byte	0x1
	.2byte	0x38c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56fa
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x38c
	.4byte	0x39
	.4byte	.LLST32
	.uleb128 0x49
	.4byte	.LVL82
	.4byte	0xa37d
	.4byte	0x56d5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	saveOldString
	.byte	0
	.uleb128 0x49
	.4byte	.LVL83
	.4byte	0xa397
	.4byte	0x56e9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL84
	.4byte	0xa3b1
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x50
	.4byte	.LASF2231
	.byte	0x1
	.2byte	0x430
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x579f
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x430
	.4byte	0x39
	.4byte	.LLST33
	.uleb128 0x4c
	.4byte	.LASF2232
	.byte	0x1
	.2byte	0x432
	.4byte	0x579f
	.uleb128 0x5
	.byte	0x3
	.4byte	endstring.11505
	.uleb128 0x51
	.4byte	0x4c30
	.4byte	.LBB378
	.4byte	.LBE378-.LBB378
	.byte	0x1
	.2byte	0x43c
	.4byte	0x5762
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST34
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST35
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST36
	.byte	0
	.uleb128 0x49
	.4byte	.LVL88
	.4byte	0xa3c6
	.4byte	0x5782
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+60
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL91
	.4byte	0xa3c6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+60
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x57af
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x9f
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2233
	.byte	0x1
	.2byte	0x477
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57e8
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x477
	.4byte	0x39
	.4byte	.LLST37
	.uleb128 0x52
	.4byte	.LVL94
	.4byte	0xa3e1
	.uleb128 0x52
	.4byte	.LVL96
	.4byte	0xa3e1
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2234
	.byte	0x1
	.2byte	0x488
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5821
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x488
	.4byte	0x39
	.4byte	.LLST38
	.uleb128 0x52
	.4byte	.LVL99
	.4byte	0xa3f2
	.uleb128 0x52
	.4byte	.LVL101
	.4byte	0xa3f2
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2235
	.byte	0x1
	.2byte	0x37d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58c1
	.uleb128 0x3a
	.4byte	.LASF2236
	.byte	0x1
	.2byte	0x37d
	.4byte	0x39
	.4byte	.LLST39
	.uleb128 0x53
	.4byte	0x4c30
	.4byte	.LBB380
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x37f
	.4byte	0x5871
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0
	.uleb128 0x54
	.4byte	0x4c49
	.byte	0
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST40
	.byte	0
	.uleb128 0x55
	.4byte	0x4b6f
	.4byte	.LBB388
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.2byte	0x382
	.uleb128 0x49
	.4byte	.LVL105
	.4byte	0xa403
	.4byte	0x589d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL106
	.4byte	0xa41e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	savegamestrings
	.byte	0x22
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2237
	.byte	0x1
	.2byte	0x57d
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x590c
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x57d
	.4byte	0x39
	.4byte	.LLST41
	.uleb128 0x52
	.4byte	.LVL109
	.4byte	0xa434
	.uleb128 0x52
	.4byte	.LVL111
	.4byte	0xa434
	.uleb128 0x52
	.4byte	.LVL113
	.4byte	0xa434
	.uleb128 0x52
	.4byte	.LVL115
	.4byte	0xa434
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2238
	.byte	0x1
	.2byte	0xc13
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5932
	.uleb128 0x56
	.4byte	.LVL116
	.4byte	0xa445
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2239
	.byte	0x1
	.2byte	0xc21
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5958
	.uleb128 0x56
	.4byte	.LVL117
	.4byte	0xa456
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4a29
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5993
	.uleb128 0x3c
	.4byte	0x4a35
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x4a35
	.byte	0x9f
	.uleb128 0x3c
	.4byte	0x4a35
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x4a35
	.byte	0x9f
	.uleb128 0x57
	.4byte	0x4a1d
	.4byte	.LBB394
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.byte	0x73
	.byte	0
	.uleb128 0x3d
	.4byte	0x4a6a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59eb
	.uleb128 0x3e
	.4byte	0x4a77
	.4byte	.LLST42
	.uleb128 0x58
	.4byte	.LBB401
	.4byte	.LBE401-.LBB401
	.uleb128 0x54
	.4byte	0x4a77
	.byte	0x79
	.uleb128 0x59
	.4byte	.LBB403
	.4byte	.LBE403-.LBB403
	.4byte	0x59da
	.uleb128 0x5a
	.4byte	0x4a83
	.uleb128 0x4f
	.4byte	.LVL122
	.4byte	0xa46d
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL123
	.4byte	0xa483
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4a8f
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a20
	.uleb128 0x3c
	.4byte	0x4a9c
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x4a9c
	.byte	0x9f
	.uleb128 0x4e
	.4byte	.LVL125
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4adf
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5abd
	.uleb128 0x53
	.4byte	0x4aaf
	.4byte	.LBB410
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x1
	.2byte	0x7f0
	.4byte	0x5a7e
	.uleb128 0x54
	.4byte	0x4ad2
	.byte	0x6
	.uleb128 0x54
	.4byte	0x4ac7
	.byte	0x60
	.uleb128 0x54
	.4byte	0x4abc
	.byte	0x4a
	.uleb128 0x56
	.4byte	.LVL129
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL126
	.4byte	0xa33a
	.4byte	0x5a95
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL127
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5b
	.4byte	0x4b66
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	0x4b78
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b24
	.uleb128 0x3e
	.4byte	0x4b85
	.4byte	.LLST43
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x238
	.4byte	0x5b14
	.uleb128 0x3e
	.4byte	0x4b85
	.4byte	.LLST44
	.uleb128 0x55
	.4byte	0x4b6f
	.4byte	.LBB422
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.2byte	0x26e
	.uleb128 0x52
	.4byte	.LVL133
	.4byte	0xa494
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL135
	.4byte	0xa483
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4b91
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b71
	.uleb128 0x3e
	.4byte	0x4b9e
	.4byte	.LLST45
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x268
	.uleb128 0x54
	.4byte	0x4b9e
	.byte	0x79
	.uleb128 0x4d
	.4byte	0x4b6f
	.4byte	.LBB434
	.4byte	.LBE434-.LBB434
	.byte	0x1
	.2byte	0x290
	.uleb128 0x4e
	.4byte	.LVL139
	.4byte	0xa49b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4bc4
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5beb
	.uleb128 0x3e
	.4byte	0x4bd1
	.4byte	.LLST46
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x280
	.uleb128 0x54
	.4byte	0x4bd1
	.byte	0x79
	.uleb128 0x53
	.4byte	0x4baa
	.4byte	.LBB446
	.4byte	.Ldebug_ranges0+0x298
	.byte	0x1
	.2byte	0x52c
	.4byte	0x5bd5
	.uleb128 0x3e
	.4byte	0x4bb7
	.4byte	.LLST47
	.uleb128 0x55
	.4byte	0x4b6f
	.4byte	.LBB448
	.4byte	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.2byte	0x2fc
	.uleb128 0x4e
	.4byte	.LVL143
	.4byte	0xa34f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x56
	.4byte	.LVL144
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4bdd
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c36
	.uleb128 0x3e
	.4byte	0x4bea
	.4byte	.LLST48
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x2c8
	.uleb128 0x54
	.4byte	0x4bea
	.byte	0x79
	.uleb128 0x55
	.4byte	0x4b6f
	.4byte	.LBB462
	.4byte	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.2byte	0x553
	.uleb128 0x4f
	.4byte	.LVL147
	.4byte	0xa4b6
	.uleb128 0x52
	.4byte	.LVL148
	.4byte	0xa4c1
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4c16
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c7f
	.uleb128 0x3e
	.4byte	0x4c23
	.4byte	.LLST49
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x300
	.uleb128 0x3e
	.4byte	0x4c23
	.4byte	.LLST50
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB476
	.4byte	.Ldebug_ranges0+0x318
	.byte	0x1
	.2byte	0xe94
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x6
	.byte	0x3
	.4byte	MainDef
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4c62
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d33
	.uleb128 0x3e
	.4byte	0x4c6f
	.4byte	.LLST51
	.uleb128 0x53
	.4byte	0x4bf6
	.4byte	.LBB492
	.4byte	.Ldebug_ranges0+0x330
	.byte	0x1
	.2byte	0x230
	.4byte	0x5cb9
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST52
	.byte	0
	.uleb128 0x59
	.4byte	.LBB496
	.4byte	.LBE496-.LBB496
	.4byte	0x5d1a
	.uleb128 0x3e
	.4byte	0x4c6f
	.4byte	.LLST53
	.uleb128 0x53
	.4byte	0x4c30
	.4byte	.LBB498
	.4byte	.Ldebug_ranges0+0x348
	.byte	0x1
	.2byte	0x222
	.4byte	0x5cff
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST54
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST54
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST56
	.byte	0
	.uleb128 0x41
	.4byte	0x4bf6
	.4byte	.LBB505
	.4byte	.Ldebug_ranges0+0x378
	.byte	0x1
	.2byte	0x223
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL163
	.4byte	0xa403
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4c7c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e29
	.uleb128 0x3e
	.4byte	0x4c89
	.4byte	.LLST58
	.uleb128 0x59
	.4byte	.LBB534
	.4byte	.LBE534-.LBB534
	.4byte	0x5d92
	.uleb128 0x3e
	.4byte	0x4c89
	.4byte	.LLST59
	.uleb128 0x41
	.4byte	0x4c30
	.4byte	.LBB536
	.4byte	.Ldebug_ranges0+0x398
	.byte	0x1
	.2byte	0x276
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST60
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST60
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x4bf6
	.4byte	.LBB542
	.4byte	.Ldebug_ranges0+0x3b8
	.byte	0x1
	.2byte	0x286
	.4byte	0x5db0
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST63
	.byte	0
	.uleb128 0x51
	.4byte	0x4bf6
	.4byte	.LBB547
	.4byte	.LBE547-.LBB547
	.byte	0x1
	.2byte	0x284
	.4byte	0x5dce
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST64
	.byte	0
	.uleb128 0x51
	.4byte	0x4c30
	.4byte	.LBB550
	.4byte	.LBE550-.LBB550
	.byte	0x1
	.2byte	0x27d
	.4byte	0x5dfe
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST65
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST65
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST67
	.byte	0
	.uleb128 0x41
	.4byte	0x4c30
	.4byte	.LBB552
	.4byte	.Ldebug_ranges0+0x3d8
	.byte	0x1
	.2byte	0x278
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0x1
	.uleb128 0x3c
	.4byte	0x4c49
	.uleb128 0x6
	.byte	0x3
	.4byte	M_RestartLevelResponse
	.byte	0x9f
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4c96
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5eaa
	.uleb128 0x3e
	.4byte	0x4ca3
	.4byte	.LLST68
	.uleb128 0x4d
	.4byte	0x4b6f
	.4byte	.LBB566
	.4byte	.LBE566-.LBB566
	.byte	0x1
	.2byte	0x29c
	.uleb128 0x59
	.4byte	.LBB568
	.4byte	.LBE568-.LBB568
	.4byte	0x5e93
	.uleb128 0x54
	.4byte	0x4ca3
	.byte	0x4
	.uleb128 0x41
	.4byte	0x4c30
	.4byte	.LBB570
	.4byte	.Ldebug_ranges0+0x3f8
	.byte	0x1
	.2byte	0x297
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0x1
	.uleb128 0x3c
	.4byte	0x4c49
	.uleb128 0x6
	.byte	0x3
	.4byte	M_VerifyNightmare
	.byte	0x9f
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL179
	.4byte	0xa49b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4ced
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ef0
	.uleb128 0x3e
	.4byte	0x4cfa
	.4byte	.LLST69
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x418
	.uleb128 0x54
	.4byte	0x4cfa
	.byte	0x79
	.uleb128 0x4f
	.4byte	.LVL186
	.4byte	0x5821
	.uleb128 0x56
	.4byte	.LVL187
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4d0f
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f74
	.uleb128 0x3e
	.4byte	0x4d1c
	.4byte	.LLST70
	.uleb128 0x53
	.4byte	0x4c30
	.4byte	.LBB590
	.4byte	.Ldebug_ranges0+0x430
	.byte	0x1
	.2byte	0x55e
	.4byte	0x5f3c
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST71
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST72
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST73
	.byte	0
	.uleb128 0x58
	.4byte	.LBB596
	.4byte	.LBE596-.LBB596
	.uleb128 0x3e
	.4byte	0x4d1c
	.4byte	.LLST74
	.uleb128 0x41
	.4byte	0x4c30
	.4byte	.LBB598
	.4byte	.Ldebug_ranges0+0x450
	.byte	0x1
	.2byte	0x55b
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0
	.uleb128 0x54
	.4byte	0x4c49
	.byte	0
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4e16
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fd7
	.uleb128 0x3e
	.4byte	0x4e39
	.4byte	.LLST75
	.uleb128 0x3e
	.4byte	0x4e45
	.4byte	.LLST76
	.uleb128 0x54
	.4byte	0x4e2e
	.byte	0x14
	.uleb128 0x54
	.4byte	0x4e23
	.byte	0xa0
	.uleb128 0x49
	.4byte	.LVL196
	.4byte	0x5409
	.4byte	0x5fb9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.4byte	.LVL198
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2240
	.byte	0x1
	.2byte	0x7fd
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6157
	.uleb128 0x5c
	.4byte	.LASF1599
	.byte	0x1
	.2byte	0x7ff
	.4byte	0x39
	.4byte	.LLST77
	.uleb128 0x5d
	.4byte	.LVL200
	.4byte	0x5f74
	.4byte	0x6019
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL201
	.4byte	0x5f74
	.4byte	0x6035
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL202
	.4byte	0x5f74
	.4byte	0x6051
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL203
	.4byte	0x5f74
	.4byte	0x6068
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL204
	.4byte	0x5f74
	.4byte	0x6084
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL205
	.4byte	0x5f74
	.4byte	0x60a0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL206
	.4byte	0x5f74
	.4byte	0x60bc
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL207
	.4byte	0xa403
	.4byte	0x60d8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL208
	.4byte	0x5f74
	.4byte	0x60f4
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL211
	.4byte	0x5f74
	.4byte	0x610b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL212
	.4byte	0x5f74
	.4byte	0x6127
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL213
	.4byte	0x5f74
	.4byte	0x6143
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x56
	.4byte	.LVL215
	.4byte	0x5f74
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4a47
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6191
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x5e
	.4byte	.LVL217
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2241
	.byte	0x1
	.2byte	0x2e2
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6297
	.uleb128 0x42
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x39
	.4byte	.LLST78
	.uleb128 0x42
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x39
	.4byte	.LLST79
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x39
	.4byte	.LLST80
	.uleb128 0x49
	.4byte	.LVL220
	.4byte	0xa33a
	.4byte	0x61e8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL221
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x6214
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 -8
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL223
	.4byte	0xa33a
	.4byte	0x622b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL225
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x6257
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 -8
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL226
	.4byte	0xa33a
	.4byte	0x626e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL227
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2242
	.byte	0x1
	.2byte	0x30d
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6307
	.uleb128 0x42
	.ascii	"msg\000"
	.byte	0x1
	.2byte	0x30d
	.4byte	0x586
	.4byte	.LLST81
	.uleb128 0x53
	.4byte	0x4c30
	.4byte	.LBB604
	.4byte	.Ldebug_ranges0+0x470
	.byte	0x1
	.2byte	0x310
	.4byte	0x62eb
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0x1
	.uleb128 0x3c
	.4byte	0x4c49
	.uleb128 0x6
	.byte	0x3
	.4byte	M_VerifyForcedLoadGame
	.byte	0x9f
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL230
	.4byte	0xa4c8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2243
	.byte	0x1
	.2byte	0x348
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x643c
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x34a
	.4byte	0x39
	.4byte	.LLST82
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x490
	.uleb128 0x5c
	.4byte	.LASF1958
	.byte	0x1
	.2byte	0x34d
	.4byte	0x555
	.4byte	.LLST83
	.uleb128 0x43
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x34e
	.4byte	0x39
	.4byte	.LLST84
	.uleb128 0x43
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x34f
	.4byte	0x39d3
	.4byte	.LLST85
	.uleb128 0x49
	.4byte	.LVL234
	.4byte	0xa4ed
	.4byte	0x637e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x49
	.4byte	.LVL235
	.4byte	0xa511
	.4byte	0x6392
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL238
	.4byte	0xa526
	.4byte	0x63b5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL240
	.4byte	0xa54a
	.4byte	0x63d4
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL242
	.4byte	0xa526
	.4byte	0x63f9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL243
	.4byte	0xa569
	.4byte	0x6416
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL246
	.4byte	0xa365
	.4byte	0x642a
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL247
	.4byte	0xa37d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4cb0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64bc
	.uleb128 0x3e
	.4byte	0x4cbd
	.4byte	.LLST86
	.uleb128 0x51
	.4byte	0x4bf6
	.4byte	.LBB621
	.4byte	.LBE621-.LBB621
	.byte	0x1
	.2byte	0x323
	.4byte	0x6476
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST87
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x4b0
	.4byte	0x64b2
	.uleb128 0x3e
	.4byte	0x4cbd
	.4byte	.LLST88
	.uleb128 0x41
	.4byte	0x4c30
	.4byte	.LBB625
	.4byte	.Ldebug_ranges0+0x4c8
	.byte	0x1
	.2byte	0x31d
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0
	.uleb128 0x54
	.4byte	0x4c49
	.byte	0
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC29
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	.LVL251
	.4byte	0x6307
	.byte	0
	.uleb128 0x3d
	.4byte	0x4cca
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6537
	.uleb128 0x3e
	.4byte	0x4cd7
	.4byte	.LLST89
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x4e0
	.4byte	0x6512
	.uleb128 0x3e
	.4byte	0x4cd7
	.4byte	.LLST90
	.uleb128 0x53
	.4byte	0x4bf6
	.4byte	.LBB641
	.4byte	.Ldebug_ranges0+0x4f8
	.byte	0x1
	.2byte	0x3ab
	.4byte	0x6508
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST91
	.byte	0
	.uleb128 0x52
	.4byte	.LVL256
	.4byte	0x6307
	.byte	0
	.uleb128 0x41
	.4byte	0x4c30
	.4byte	.LBB647
	.4byte	.Ldebug_ranges0+0x510
	.byte	0x1
	.2byte	0x3a4
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0
	.uleb128 0x54
	.4byte	0x4c49
	.byte	0
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4ae8
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6570
	.uleb128 0x3c
	.4byte	0x4af5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.4byte	0x4b01
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x58
	.4byte	.LBB655
	.4byte	.LBE655-.LBB655
	.uleb128 0x54
	.4byte	0x4af5
	.byte	0
	.uleb128 0x3c
	.4byte	0x4b01
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2244
	.byte	0x1
	.2byte	0x4e7
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65b1
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x39
	.4byte	.LLST92
	.uleb128 0x56
	.4byte	.LVL262
	.4byte	0x4ae8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	mouseSensitivity_horiz
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2245
	.byte	0x1
	.2byte	0x4ec
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65f2
	.uleb128 0x3a
	.4byte	.LASF2168
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x39
	.4byte	.LLST93
	.uleb128 0x56
	.4byte	.LVL264
	.4byte	0x4ae8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	mouseSensitivity_vert
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4ce4
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66a8
	.uleb128 0x51
	.4byte	0x4c30
	.4byte	.LBB667
	.4byte	.LBE667-.LBB667
	.byte	0x1
	.2byte	0x521
	.4byte	0x6635
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST94
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST95
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST96
	.byte	0
	.uleb128 0x53
	.4byte	0x4b66
	.4byte	.LBB671
	.4byte	.Ldebug_ranges0+0x530
	.byte	0x1
	.2byte	0x51a
	.4byte	0x6653
	.uleb128 0x4f
	.4byte	.LVL270
	.4byte	0x5abd
	.byte	0
	.uleb128 0x51
	.4byte	0x4bf6
	.4byte	.LBB674
	.4byte	.LBE674-.LBB674
	.byte	0x1
	.2byte	0x51c
	.4byte	0x6671
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST97
	.byte	0
	.uleb128 0x49
	.4byte	.LVL265
	.4byte	0xa3c6
	.4byte	0x6685
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL267
	.4byte	0xa46d
	.4byte	0x669e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL268
	.4byte	0x6307
	.byte	0
	.uleb128 0x3d
	.4byte	0x4d06
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6759
	.uleb128 0x51
	.4byte	0x4c30
	.4byte	.LBB689
	.4byte	.LBE689-.LBB689
	.byte	0x1
	.2byte	0x541
	.4byte	0x66eb
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST98
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST99
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST100
	.byte	0
	.uleb128 0x53
	.4byte	0x4c30
	.4byte	.LBB692
	.4byte	.Ldebug_ranges0+0x548
	.byte	0x1
	.2byte	0x53d
	.4byte	0x671b
	.uleb128 0x3e
	.4byte	0x4c55
	.4byte	.LLST101
	.uleb128 0x3e
	.4byte	0x4c49
	.4byte	.LLST101
	.uleb128 0x3e
	.4byte	0x4c3d
	.4byte	.LLST103
	.byte	0
	.uleb128 0x51
	.4byte	0x4c30
	.4byte	.LBB698
	.4byte	.LBE698-.LBB698
	.byte	0x1
	.2byte	0x536
	.4byte	0x6748
	.uleb128 0x54
	.4byte	0x4c55
	.byte	0
	.uleb128 0x54
	.4byte	0x4c49
	.byte	0
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC30
	.byte	0x9f
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL271
	.4byte	0xa3c6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2246
	.byte	0x1
	.2byte	0xc1b
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6788
	.uleb128 0x4f
	.4byte	.LVL275
	.4byte	0xa583
	.uleb128 0x56
	.4byte	.LVL276
	.4byte	0xa58a
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2247
	.byte	0x1
	.2byte	0xe9c
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6806
	.uleb128 0x5c
	.4byte	.LASF2248
	.byte	0x1
	.2byte	0xe9f
	.4byte	0x39
	.4byte	.LLST104
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xe9f
	.4byte	0x39
	.uleb128 0x4c
	.4byte	.LASF2228
	.byte	0x1
	.2byte	0xea0
	.4byte	0x6806
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.4byte	0x4b0e
	.4byte	.LBB700
	.4byte	.Ldebug_ranges0+0x568
	.byte	0x1
	.2byte	0xea6
	.uleb128 0x3e
	.4byte	0x4b29
	.4byte	.LLST105
	.uleb128 0x3e
	.4byte	0x4b1e
	.4byte	.LLST106
	.uleb128 0x4e
	.4byte	.LVL281
	.4byte	0xa59b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x6816
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x6
	.byte	0
	.uleb128 0x3d
	.4byte	0x4b34
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6898
	.uleb128 0x3e
	.4byte	0x4b45
	.4byte	.LLST107
	.uleb128 0x3e
	.4byte	0x4b4f
	.4byte	.LLST108
	.uleb128 0x5a
	.4byte	0x4b5b
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x580
	.uleb128 0x3e
	.4byte	0x4b4f
	.4byte	.LLST109
	.uleb128 0x3e
	.4byte	0x4b45
	.4byte	.LLST110
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x580
	.uleb128 0x5f
	.4byte	0x4b5b
	.4byte	.LLST111
	.uleb128 0x49
	.4byte	.LVL305
	.4byte	0xa37d
	.4byte	0x6885
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0x22
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL306
	.4byte	0xa3b1
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2249
	.byte	0x1
	.2byte	0x6d0
	.byte	0x1
	.4byte	0x68fc
	.uleb128 0x2f
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x68fc
	.uleb128 0x31
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x6d2
	.4byte	0x39
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x6d3
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF1599
	.byte	0x1
	.2byte	0x6d4
	.4byte	0x39
	.uleb128 0x30
	.uleb128 0x31
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x6e2
	.4byte	0x555
	.uleb128 0x31
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x6e2
	.4byte	0x555
	.uleb128 0x31
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0x6e4
	.4byte	0x39
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6902
	.uleb128 0x18
	.4byte	0x43cc
	.uleb128 0x2e
	.4byte	.LASF2250
	.byte	0x1
	.2byte	0x70c
	.byte	0x1
	.4byte	0x69d6
	.uleb128 0x2f
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x70c
	.4byte	0x68fc
	.uleb128 0x31
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x70e
	.4byte	0x39
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x70e
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF1599
	.byte	0x1
	.2byte	0x70e
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0x70e
	.4byte	0x39
	.uleb128 0x60
	.4byte	0x695c
	.uleb128 0x31
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x72e
	.4byte	0x3e29
	.byte	0
	.uleb128 0x60
	.4byte	0x696d
	.uleb128 0x31
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x757
	.4byte	0x39
	.byte	0
	.uleb128 0x30
	.uleb128 0x1b
	.byte	0x4
	.byte	0x1
	.2byte	0x76d
	.4byte	0x698c
	.uleb128 0x61
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x76d
	.4byte	0x43c6
	.uleb128 0x61
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x76d
	.4byte	0x69d6
	.byte	0
	.uleb128 0x31
	.ascii	"u\000"
	.byte	0x1
	.2byte	0x76d
	.4byte	0x696e
	.uleb128 0x38
	.4byte	.LASF2251
	.byte	0x1
	.2byte	0x76e
	.4byte	0x555
	.uleb128 0x30
	.uleb128 0x38
	.4byte	.LASF2252
	.byte	0x1
	.2byte	0x777
	.4byte	0x39
	.uleb128 0x38
	.4byte	.LASF2253
	.byte	0x1
	.2byte	0x777
	.4byte	0x39
	.uleb128 0x31
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x778
	.4byte	0x69dc
	.uleb128 0x30
	.uleb128 0x31
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x77f
	.4byte	0x39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x555
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x69ec
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF2254
	.byte	0x1
	.2byte	0x7b9
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ff2
	.uleb128 0x42
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x7b9
	.4byte	0x68fc
	.4byte	.LLST112
	.uleb128 0x53
	.4byte	0x4aaf
	.4byte	.LBB744
	.4byte	.Ldebug_ranges0+0x5a0
	.byte	0x1
	.2byte	0x7c4
	.4byte	0x6a66
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST113
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST114
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST115
	.uleb128 0x4e
	.4byte	.LVL329
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x6898
	.4byte	.LBB748
	.4byte	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.2byte	0x7d0
	.4byte	0x6bc7
	.uleb128 0x3e
	.4byte	0x68a5
	.4byte	.LLST116
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x5b8
	.uleb128 0x5f
	.4byte	0x68af
	.4byte	.LLST117
	.uleb128 0x5f
	.4byte	0x68b9
	.4byte	.LLST118
	.uleb128 0x5f
	.4byte	0x68c3
	.4byte	.LLST119
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x5c8
	.4byte	0x6b96
	.uleb128 0x5f
	.4byte	0x68d0
	.4byte	.LLST120
	.uleb128 0x5f
	.4byte	0x68da
	.4byte	.LLST121
	.uleb128 0x5f
	.4byte	0x68e4
	.4byte	.LLST122
	.uleb128 0x5f
	.4byte	0x68ee
	.4byte	.LLST123
	.uleb128 0x51
	.4byte	0x4aaf
	.4byte	.LBB751
	.4byte	.LBE751-.LBB751
	.byte	0x1
	.2byte	0x6f3
	.4byte	0x6b28
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST124
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST125
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST126
	.uleb128 0x4e
	.4byte	.LVL356
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL351
	.4byte	0xa4c8
	.4byte	0x6b40
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x49
	.4byte	.LVL358
	.4byte	0xa5ba
	.4byte	0x6b57
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.byte	0
	.uleb128 0x49
	.4byte	.LVL360
	.4byte	0xa37d
	.4byte	0x6b6e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x49
	.4byte	.LVL361
	.4byte	0x5409
	.4byte	0x6b85
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL364
	.4byte	0xa365
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL337
	.4byte	0xa33a
	.uleb128 0x4a
	.4byte	.LVL338
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x6907
	.4byte	.LBB758
	.4byte	.Ldebug_ranges0+0x5e0
	.byte	0x1
	.2byte	0x7d5
	.4byte	0x6efb
	.uleb128 0x3e
	.4byte	0x6914
	.4byte	.LLST127
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x5e0
	.uleb128 0x5f
	.4byte	0x691e
	.4byte	.LLST128
	.uleb128 0x5f
	.4byte	0x6928
	.4byte	.LLST129
	.uleb128 0x5f
	.4byte	0x6932
	.4byte	.LLST130
	.uleb128 0x5f
	.4byte	0x693e
	.4byte	.LLST131
	.uleb128 0x51
	.4byte	0x4aaf
	.4byte	.LBB760
	.4byte	.LBE760-.LBB760
	.byte	0x1
	.2byte	0x7ae
	.4byte	0x6c62
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST132
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST133
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST134
	.uleb128 0x4e
	.4byte	.LVL345
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	.LBB762
	.4byte	.LBE762-.LBB762
	.4byte	0x6ce0
	.uleb128 0x5f
	.4byte	0x694f
	.4byte	.LLST135
	.uleb128 0x4f
	.4byte	.LVL369
	.4byte	0x4b34
	.uleb128 0x49
	.4byte	.LVL371
	.4byte	0xa3b1
	.4byte	0x6c98
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x49
	.4byte	.LVL372
	.4byte	0xa3c6
	.4byte	0x6cb5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 1
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.uleb128 0x49
	.4byte	.LVL373
	.4byte	0xa3b1
	.4byte	0x6ccc
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL374
	.4byte	0xa3c6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x610
	.4byte	0x6d8c
	.uleb128 0x5a
	.4byte	0x698c
	.uleb128 0x5f
	.4byte	0x6996
	.4byte	.LLST136
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x628
	.uleb128 0x5f
	.4byte	0x69a3
	.4byte	.LLST137
	.uleb128 0x5f
	.4byte	0x69af
	.4byte	.LLST138
	.uleb128 0x62
	.4byte	0x69bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x59
	.4byte	.LBB765
	.4byte	.LBE765-.LBB765
	.4byte	0x6d3d
	.uleb128 0x5f
	.4byte	0x69c6
	.4byte	.LLST139
	.uleb128 0x4e
	.4byte	.LVL386
	.4byte	0xa3b1
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL389
	.4byte	0x5409
	.4byte	0x6d51
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL390
	.4byte	0x5409
	.4byte	0x6d65
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x49
	.4byte	.LVL393
	.4byte	0x5409
	.4byte	0x6d79
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.4byte	.LVL396
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	.LBB768
	.4byte	.LBE768-.LBB768
	.4byte	0x6e17
	.uleb128 0x5f
	.4byte	0x6961
	.4byte	.LLST140
	.uleb128 0x63
	.4byte	.LVL412
	.4byte	0x6db9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL414
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x6dd6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x49
	.4byte	.LVL415
	.4byte	0xa33a
	.4byte	0x6ded
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL416
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x4aaf
	.4byte	.LBB769
	.4byte	.Ldebug_ranges0+0x640
	.byte	0x1
	.2byte	0x74f
	.4byte	0x6e66
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST141
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST142
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST143
	.uleb128 0x4e
	.4byte	.LVL421
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL344
	.4byte	0xa5d4
	.uleb128 0x49
	.4byte	.LVL366
	.4byte	0xa3c6
	.4byte	0x6e8f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x49
	.4byte	.LVL402
	.4byte	0xa37d
	.4byte	0x6eaf
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	gather_buffer
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x49
	.4byte	.LVL418
	.4byte	0xa3c6
	.4byte	0x6ecf
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x49
	.4byte	.LVL423
	.4byte	0xa37d
	.4byte	0x6ee6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL424
	.4byte	0xa3c6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x4aaf
	.4byte	.LBB780
	.4byte	.Ldebug_ranges0+0x658
	.byte	0x1
	.2byte	0x7be
	.4byte	0x6f4f
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST144
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST145
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST146
	.uleb128 0x4e
	.4byte	.LVL384
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	0x4aaf
	.4byte	.LBB785
	.4byte	.Ldebug_ranges0+0x670
	.byte	0x1
	.2byte	0x7c7
	.4byte	0x6fa2
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST147
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST148
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST149
	.uleb128 0x4e
	.4byte	.LVL400
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xb8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x4aaf
	.4byte	.LBB790
	.4byte	.Ldebug_ranges0+0x688
	.byte	0x1
	.2byte	0x7c1
	.uleb128 0x3e
	.4byte	0x4ad2
	.4byte	.LLST150
	.uleb128 0x3e
	.4byte	0x4ac7
	.4byte	.LLST151
	.uleb128 0x3e
	.4byte	0x4abc
	.4byte	.LLST152
	.uleb128 0x4e
	.4byte	.LVL406
	.4byte	0x535b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+224
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2255
	.byte	0x1
	.2byte	0xfc5
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x704c
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB795
	.4byte	.Ldebug_ranges0+0x6a0
	.byte	0x1
	.2byte	0xfc9
	.4byte	0x7038
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL426
	.4byte	0x6157
	.byte	0
	.uleb128 0x56
	.4byte	.LVL427
	.4byte	0x69ec
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+1544
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4b66
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7069
	.uleb128 0x52
	.4byte	.LVL428
	.4byte	0x5abd
	.byte	0
	.uleb128 0x5b
	.4byte	0x4b6f
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	0x4bf6
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7093
	.uleb128 0x3c
	.4byte	0x4c03
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2256
	.byte	0x1
	.2byte	0x1511
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	0x4c30
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70ce
	.uleb128 0x3c
	.4byte	0x4c3d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.4byte	0x4c49
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3c
	.4byte	0x4c55
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x64
	.4byte	.LASF2257
	.byte	0x1
	.2byte	0x152a
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x50
	.4byte	.LASF2258
	.byte	0x1
	.2byte	0x153c
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72b3
	.uleb128 0x42
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x153c
	.4byte	0x39
	.4byte	.LLST153
	.uleb128 0x42
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x153c
	.4byte	0x39
	.4byte	.LLST154
	.uleb128 0x3a
	.4byte	.LASF2259
	.byte	0x1
	.2byte	0x153c
	.4byte	0x39
	.4byte	.LLST155
	.uleb128 0x3a
	.4byte	.LASF2260
	.byte	0x1
	.2byte	0x153c
	.4byte	0x39
	.4byte	.LLST156
	.uleb128 0x43
	.ascii	"xx\000"
	.byte	0x1
	.2byte	0x153e
	.4byte	0x39
	.4byte	.LLST157
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x153f
	.4byte	0x39
	.4byte	.LLST158
	.uleb128 0x5c
	.4byte	.LASF2261
	.byte	0x1
	.2byte	0x1548
	.4byte	0x39
	.4byte	.LLST159
	.uleb128 0x49
	.4byte	.LVL436
	.4byte	0xa33a
	.4byte	0x7176
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL437
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x71a0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x49
	.4byte	.LVL442
	.4byte	0xa33a
	.4byte	0x71b7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL444
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0x71e2
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL450
	.4byte	0xa33a
	.4byte	0x71f9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL452
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0x7229
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x22
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL454
	.4byte	0xa33a
	.4byte	0x7240
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL455
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x7274
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xa
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL459
	.4byte	0xa33a
	.4byte	0x728b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL460
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2262
	.byte	0x1
	.2byte	0x3e8
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7350
	.uleb128 0x49
	.4byte	.LVL463
	.4byte	0xa33a
	.4byte	0x72e0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL464
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x730b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL465
	.4byte	0xa33a
	.uleb128 0x4b
	.4byte	.LVL466
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.4byte	0x7340
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.4byte	.LVL467
	.4byte	0x70e0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2263
	.byte	0x1
	.2byte	0x468
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73ca
	.uleb128 0x49
	.4byte	.LVL468
	.4byte	0xa33a
	.4byte	0x737d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL469
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x73a7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x49
	.4byte	.LVL470
	.4byte	0x70e0
	.4byte	0x73ba
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x56
	.4byte	.LVL471
	.4byte	0x70e0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2264
	.byte	0x1
	.2byte	0x4c7
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7466
	.uleb128 0x5c
	.4byte	.LASF2265
	.byte	0x1
	.2byte	0x4c9
	.4byte	0x39
	.4byte	.LLST160
	.uleb128 0x5c
	.4byte	.LASF2266
	.byte	0x1
	.2byte	0x4c9
	.4byte	0x39
	.4byte	.LLST161
	.uleb128 0x49
	.4byte	.LVL472
	.4byte	0xa33a
	.4byte	0x7417
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL473
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x7441
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x49
	.4byte	.LVL477
	.4byte	0x70e0
	.4byte	0x7455
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x56
	.4byte	.LVL481
	.4byte	0x70e0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2267
	.byte	0x1
	.2byte	0x155e
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74da
	.uleb128 0x3a
	.4byte	.LASF1959
	.byte	0x1
	.2byte	0x155e
	.4byte	0x4c10
	.4byte	.LLST162
	.uleb128 0x3a
	.4byte	.LASF2268
	.byte	0x1
	.2byte	0x155e
	.4byte	0x39
	.4byte	.LLST163
	.uleb128 0x49
	.4byte	.LVL485
	.4byte	0xa33a
	.4byte	0x74b3
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL486
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2269
	.byte	0x1
	.2byte	0x1569
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x754e
	.uleb128 0x3a
	.4byte	.LASF1959
	.byte	0x1
	.2byte	0x1569
	.4byte	0x4c10
	.4byte	.LLST164
	.uleb128 0x3a
	.4byte	.LASF2268
	.byte	0x1
	.2byte	0x1569
	.4byte	0x39
	.4byte	.LLST165
	.uleb128 0x49
	.4byte	.LVL490
	.4byte	0xa33a
	.4byte	0x7527
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL491
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x65
	.4byte	.LASF2275
	.byte	0x1
	.2byte	0x1579
	.4byte	0x39
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75cd
	.uleb128 0x3a
	.4byte	.LASF2183
	.byte	0x1
	.2byte	0x1579
	.4byte	0x586
	.4byte	.LLST166
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x157b
	.4byte	0x39
	.4byte	.LLST167
	.uleb128 0x43
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x157b
	.4byte	0x39
	.4byte	.LLST168
	.uleb128 0x43
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x157b
	.4byte	0x39
	.4byte	.LLST169
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x6c0
	.4byte	0x75bc
	.uleb128 0x43
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0x157d
	.4byte	0x58c
	.4byte	.LLST170
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL493
	.4byte	0xa3b1
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2270
	.byte	0x1
	.2byte	0xe04
	.byte	0x1
	.4byte	0x7644
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xe06
	.4byte	0x39
	.uleb128 0x31
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xe08
	.4byte	0x4a41
	.uleb128 0x38
	.4byte	.LASF2271
	.byte	0x1
	.2byte	0xe09
	.4byte	0x39
	.uleb128 0x66
	.ascii	"end\000"
	.byte	0x1
	.2byte	0xe3e
	.uleb128 0x30
	.uleb128 0x31
	.ascii	"l\000"
	.byte	0x1
	.2byte	0xe1c
	.4byte	0x7644
	.uleb128 0x31
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xe1c
	.4byte	0x4aa9
	.uleb128 0x30
	.uleb128 0x1b
	.byte	0x4
	.byte	0x1
	.2byte	0xe26
	.4byte	0x7637
	.uleb128 0x61
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xe26
	.4byte	0x43c6
	.uleb128 0x61
	.ascii	"s\000"
	.byte	0x1
	.2byte	0xe26
	.4byte	0x69d6
	.byte	0
	.uleb128 0x31
	.ascii	"u\000"
	.byte	0x1
	.2byte	0xe26
	.4byte	0x7619
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4aa9
	.uleb128 0x67
	.4byte	.LASF2273
	.byte	0x1
	.2byte	0x1005
	.4byte	0x39
	.byte	0x1
	.4byte	0x767e
	.uleb128 0x2f
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x1005
	.4byte	0x586
	.uleb128 0x32
	.4byte	.LASF2274
	.byte	0x1
	.2byte	0x1005
	.4byte	0x43c6
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1006
	.4byte	0x39
	.byte	0
	.uleb128 0x68
	.4byte	.LASF2276
	.byte	0x1
	.2byte	0x1019
	.4byte	0xabb
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80b1
	.uleb128 0x42
	.ascii	"ev\000"
	.byte	0x1
	.2byte	0x1019
	.4byte	0x80b1
	.4byte	.LLST171
	.uleb128 0x43
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x101a
	.4byte	0x39
	.4byte	.LLST172
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x101b
	.4byte	0x39
	.4byte	.LLST173
	.uleb128 0x4c
	.4byte	.LASF2277
	.byte	0x1
	.2byte	0x101c
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	joywait.12129
	.uleb128 0x4c
	.4byte	.LASF2278
	.byte	0x1
	.2byte	0x101d
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	mousewait.12130
	.uleb128 0x69
	.4byte	.LASF2279
	.byte	0x1
	.2byte	0x101e
	.4byte	0x39
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2280
	.byte	0x1
	.2byte	0x101f
	.4byte	0x39
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2281
	.byte	0x1
	.2byte	0x1020
	.4byte	0x39
	.byte	0
	.uleb128 0x69
	.4byte	.LASF2282
	.byte	0x1
	.2byte	0x1021
	.4byte	0x39
	.byte	0
	.uleb128 0x6a
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x12d4
	.4byte	.L833
	.uleb128 0x59
	.4byte	.LBB846
	.4byte	.LBE846-.LBB846
	.4byte	0x7746
	.uleb128 0x43
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0x10a9
	.4byte	0x39
	.4byte	.LLST174
	.byte	0
	.uleb128 0x51
	.4byte	0x4b66
	.4byte	.LBB847
	.4byte	.LBE847-.LBB847
	.byte	0x1
	.2byte	0x1163
	.4byte	0x7764
	.uleb128 0x4f
	.4byte	.LVL518
	.4byte	0x5abd
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x6d8
	.4byte	0x7cbe
	.uleb128 0x5c
	.4byte	.LASF2283
	.byte	0x1
	.2byte	0x116e
	.4byte	0x4aa9
	.4byte	.LLST175
	.uleb128 0x5c
	.4byte	.LASF2284
	.byte	0x1
	.2byte	0x116f
	.4byte	0x4aa9
	.4byte	.LLST176
	.uleb128 0x59
	.4byte	.LBB850
	.4byte	.LBE850-.LBB850
	.4byte	0x77ab
	.uleb128 0x43
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0x1177
	.4byte	0x39
	.4byte	.LLST177
	.byte	0
	.uleb128 0x59
	.4byte	.LBB851
	.4byte	.LBE851-.LBB851
	.4byte	0x77c5
	.uleb128 0x31
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0x117c
	.4byte	0x39
	.byte	0
	.uleb128 0x53
	.4byte	0x75cd
	.4byte	.LBB852
	.4byte	.Ldebug_ranges0+0x750
	.byte	0x1
	.2byte	0x1178
	.4byte	0x7842
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x750
	.uleb128 0x5f
	.4byte	0x75da
	.4byte	.LLST178
	.uleb128 0x5a
	.4byte	0x75e4
	.uleb128 0x5a
	.4byte	0x75ef
	.uleb128 0x6b
	.4byte	0x75fb
	.4byte	.L749
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x770
	.uleb128 0x5f
	.4byte	0x7604
	.4byte	.LLST179
	.uleb128 0x5f
	.4byte	0x760e
	.4byte	.LLST180
	.uleb128 0x58
	.4byte	.LBB855
	.4byte	.LBE855-.LBB855
	.uleb128 0x5a
	.4byte	0x7637
	.uleb128 0x4f
	.4byte	.LVL692
	.4byte	0xa365
	.uleb128 0x4e
	.4byte	.LVL693
	.4byte	0xa4c8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	.LBB862
	.4byte	.LBE862-.LBB862
	.4byte	0x788e
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1293
	.4byte	0x39
	.4byte	.LLST181
	.uleb128 0x5c
	.4byte	.LASF2285
	.byte	0x1
	.2byte	0x1293
	.4byte	0x39
	.4byte	.LLST182
	.uleb128 0x5c
	.4byte	.LASF2286
	.byte	0x1
	.2byte	0x1293
	.4byte	0x39
	.4byte	.LLST183
	.uleb128 0x5c
	.4byte	.LASF2287
	.byte	0x1
	.2byte	0x1294
	.4byte	0xabb
	.4byte	.LLST184
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x798
	.4byte	0x78c8
	.uleb128 0x5c
	.4byte	.LASF2288
	.byte	0x1
	.2byte	0x1247
	.4byte	0x39
	.4byte	.LLST185
	.uleb128 0x5c
	.4byte	.LASF2286
	.byte	0x1
	.2byte	0x1247
	.4byte	0x39
	.4byte	.LLST186
	.uleb128 0x5c
	.4byte	.LASF2287
	.byte	0x1
	.2byte	0x1248
	.4byte	0xabb
	.4byte	.LLST187
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x7b8
	.4byte	0x7910
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x126e
	.4byte	0x39
	.4byte	.LLST188
	.uleb128 0x5c
	.4byte	.LASF2288
	.byte	0x1
	.2byte	0x126e
	.4byte	0x39
	.4byte	.LLST189
	.uleb128 0x5c
	.4byte	.LASF2286
	.byte	0x1
	.2byte	0x126e
	.4byte	0x39
	.4byte	.LLST190
	.uleb128 0x5c
	.4byte	.LASF2287
	.byte	0x1
	.2byte	0x126f
	.4byte	0xabb
	.4byte	.LLST191
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x7e0
	.4byte	0x79cf
	.uleb128 0x5c
	.4byte	.LASF1599
	.byte	0x1
	.2byte	0x136f
	.4byte	0x39
	.4byte	.LLST192
	.uleb128 0x59
	.4byte	.LBB868
	.4byte	.LBE868-.LBB868
	.4byte	0x7947
	.uleb128 0x5c
	.4byte	.LASF2167
	.byte	0x1
	.2byte	0x137f
	.4byte	0x39
	.4byte	.LLST193
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x808
	.4byte	0x7986
	.uleb128 0x1b
	.byte	0x4
	.byte	0x1
	.2byte	0x139a
	.4byte	0x796e
	.uleb128 0x61
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x139a
	.4byte	0x43c6
	.uleb128 0x61
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x139a
	.4byte	0x69d6
	.byte	0
	.uleb128 0x43
	.ascii	"u\000"
	.byte	0x1
	.2byte	0x139a
	.4byte	0x7950
	.4byte	.LLST194
	.uleb128 0x4f
	.4byte	.LVL796
	.4byte	0xa365
	.byte	0
	.uleb128 0x49
	.4byte	.LVL704
	.4byte	0xa46d
	.4byte	0x799f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL793
	.4byte	0xa54a
	.4byte	0x79be
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL794
	.4byte	0xa5f2
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x820
	.4byte	0x7a53
	.uleb128 0x38
	.4byte	.LASF2289
	.byte	0x1
	.2byte	0x121d
	.4byte	0x39
	.uleb128 0x5c
	.4byte	.LASF2290
	.byte	0x1
	.2byte	0x121d
	.4byte	0x39
	.4byte	.LLST195
	.uleb128 0x51
	.4byte	0x764a
	.4byte	.LBB875
	.4byte	.LBE875-.LBB875
	.byte	0x1
	.2byte	0x121f
	.4byte	0x7a3e
	.uleb128 0x3e
	.4byte	0x7667
	.4byte	.LLST196
	.uleb128 0x3e
	.4byte	0x765b
	.4byte	.LLST197
	.uleb128 0x58
	.4byte	.LBB876
	.4byte	.LBE876-.LBB876
	.uleb128 0x5f
	.4byte	0x7673
	.4byte	.LLST198
	.uleb128 0x4e
	.4byte	.LVL727
	.4byte	0xa397
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL733
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x838
	.4byte	0x7ace
	.uleb128 0x38
	.4byte	.LASF2289
	.byte	0x1
	.2byte	0x1201
	.4byte	0x39
	.uleb128 0x5c
	.4byte	.LASF2290
	.byte	0x1
	.2byte	0x1201
	.4byte	0x39
	.4byte	.LLST199
	.uleb128 0x53
	.4byte	0x764a
	.4byte	.LBB878
	.4byte	.Ldebug_ranges0+0x850
	.byte	0x1
	.2byte	0x1203
	.4byte	0x7abe
	.uleb128 0x3e
	.4byte	0x7667
	.4byte	.LLST200
	.uleb128 0x3e
	.4byte	0x765b
	.4byte	.LLST201
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x850
	.uleb128 0x5f
	.4byte	0x7673
	.4byte	.LLST202
	.uleb128 0x4e
	.4byte	.LVL738
	.4byte	0xa397
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL778
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	0x4b6f
	.4byte	.LBB882
	.4byte	.LBE882-.LBB882
	.byte	0x1
	.2byte	0x13ae
	.uleb128 0x59
	.4byte	.LBB889
	.4byte	.LBE889-.LBB889
	.4byte	0x7b10
	.uleb128 0x5c
	.4byte	.LASF2290
	.byte	0x1
	.2byte	0x11f3
	.4byte	0x39
	.4byte	.LLST203
	.uleb128 0x4e
	.4byte	.LVL784
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	.LBB890
	.4byte	.LBE890-.LBB890
	.4byte	0x7b42
	.uleb128 0x5c
	.4byte	.LASF2290
	.byte	0x1
	.2byte	0x120f
	.4byte	0x39
	.4byte	.LLST204
	.uleb128 0x4e
	.4byte	.LVL790
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x868
	.4byte	0x7b7c
	.uleb128 0x5c
	.4byte	.LASF2290
	.byte	0x1
	.2byte	0x11bf
	.4byte	0x39
	.4byte	.LLST205
	.uleb128 0x49
	.4byte	.LVL798
	.4byte	0xa611
	.4byte	0x7b72
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	gather_buffer
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL807
	.4byte	0x5958
	.byte	0
	.uleb128 0x49
	.4byte	.LVL553
	.4byte	0x59eb
	.4byte	0x7b98
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL581
	.4byte	0xa46d
	.4byte	0x7bab
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.byte	0
	.uleb128 0x49
	.4byte	.LVL596
	.4byte	0x59eb
	.4byte	0x7bc7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL674
	.4byte	0x59eb
	.4byte	0x7be3
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL676
	.4byte	0x59eb
	.4byte	0x7bff
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL678
	.4byte	0x59eb
	.uleb128 0x4f
	.4byte	.LVL696
	.4byte	0x5958
	.uleb128 0x49
	.4byte	.LVL709
	.4byte	0xa46d
	.4byte	0x7c29
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL710
	.4byte	0xa626
	.uleb128 0x49
	.4byte	.LVL711
	.4byte	0xa46d
	.4byte	0x7c4b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL750
	.4byte	0x59eb
	.4byte	0x7c67
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL770
	.4byte	0xa46d
	.4byte	0x7c80
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL771
	.4byte	0x59eb
	.4byte	0x7c9c
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL772
	.4byte	0xa37d
	.uleb128 0x4e
	.4byte	.LVL801
	.4byte	0x59eb
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 4
	.uleb128 0x6c
	.4byte	0x4a9c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x51
	.4byte	0x4b66
	.4byte	.LBB894
	.4byte	.LBE894-.LBB894
	.byte	0x1
	.2byte	0x10e5
	.4byte	0x7cdc
	.uleb128 0x4f
	.4byte	.LVL568
	.4byte	0x5abd
	.byte	0
	.uleb128 0x51
	.4byte	0x4b66
	.4byte	.LBB897
	.4byte	.LBE897-.LBB897
	.byte	0x1
	.2byte	0x10da
	.4byte	0x7cfa
	.uleb128 0x4f
	.4byte	.LVL586
	.4byte	0x5abd
	.byte	0
	.uleb128 0x53
	.4byte	0x4d29
	.4byte	.LBB900
	.4byte	.Ldebug_ranges0+0x880
	.byte	0x1
	.2byte	0x110c
	.4byte	0x7d18
	.uleb128 0x3e
	.4byte	0x4d36
	.4byte	.LLST206
	.byte	0
	.uleb128 0x51
	.4byte	0x4b66
	.4byte	.LBB906
	.4byte	.LBE906-.LBB906
	.byte	0x1
	.2byte	0x10ed
	.4byte	0x7d36
	.uleb128 0x4f
	.4byte	.LVL605
	.4byte	0x5abd
	.byte	0
	.uleb128 0x51
	.4byte	0x4b66
	.4byte	.LBB909
	.4byte	.LBE909-.LBB909
	.byte	0x1
	.2byte	0x10f5
	.4byte	0x7d54
	.uleb128 0x4f
	.4byte	.LVL622
	.4byte	0x5abd
	.byte	0
	.uleb128 0x55
	.4byte	0x4b6f
	.4byte	.LBB916
	.4byte	.Ldebug_ranges0+0x8a0
	.byte	0x1
	.2byte	0x144b
	.uleb128 0x51
	.4byte	0x4b66
	.4byte	.LBB923
	.4byte	.LBE923-.LBB923
	.byte	0x1
	.2byte	0x1157
	.4byte	0x7d82
	.uleb128 0x4f
	.4byte	.LVL698
	.4byte	0x5abd
	.byte	0
	.uleb128 0x51
	.4byte	0x4bf6
	.4byte	.LBB925
	.4byte	.LBE925-.LBB925
	.byte	0x1
	.2byte	0x1159
	.4byte	0x7da0
	.uleb128 0x3e
	.4byte	0x4c03
	.4byte	.LLST207
	.byte	0
	.uleb128 0x49
	.4byte	.LVL510
	.4byte	0x754e
	.4byte	0x7db7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x78
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x63
	.4byte	.LVL515
	.4byte	0x7dc7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL516
	.4byte	0xa46d
	.4byte	0x7ddf
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL519
	.4byte	0xa46d
	.4byte	0x7df7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL527
	.4byte	0xa46d
	.4byte	0x7e0f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL529
	.4byte	0x58c1
	.uleb128 0x49
	.4byte	.LVL530
	.4byte	0xa46d
	.4byte	0x7e31
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL538
	.4byte	0x5821
	.uleb128 0x4f
	.4byte	.LVL548
	.4byte	0xa62d
	.uleb128 0x49
	.4byte	.LVL560
	.4byte	0xa37d
	.4byte	0x7e5a
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	saveOldString
	.byte	0
	.uleb128 0x49
	.4byte	.LVL569
	.4byte	0xa46d
	.4byte	0x7e73
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL570
	.4byte	0x4cca
	.4byte	0x7e87
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL587
	.4byte	0xa46d
	.4byte	0x7ea0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL593
	.4byte	0xa46d
	.4byte	0x7eb8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL599
	.4byte	0xa46d
	.4byte	0x7ed0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL601
	.4byte	0xa46d
	.4byte	0x7ee8
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL606
	.4byte	0xa46d
	.4byte	0x7f01
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL607
	.4byte	0x4cb0
	.4byte	0x7f15
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL609
	.4byte	0xa46d
	.4byte	0x7f2d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x63
	.4byte	.LVL610
	.4byte	0x7f3c
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL628
	.4byte	0xa58a
	.4byte	0x7f4f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL634
	.4byte	0xa46d
	.4byte	0x7f67
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x63
	.4byte	.LVL635
	.4byte	0x7f76
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x49
	.4byte	.LVL637
	.4byte	0xa46d
	.4byte	0x7f8f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL638
	.4byte	0x4ce4
	.uleb128 0x49
	.4byte	.LVL641
	.4byte	0xa46d
	.4byte	0x7fb0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL643
	.4byte	0xa46d
	.4byte	0x7fc9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL644
	.4byte	0x4d0f
	.4byte	0x7fdd
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL647
	.4byte	0xa46d
	.4byte	0x7ff5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL649
	.4byte	0xa46d
	.4byte	0x800d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL650
	.4byte	0x4d06
	.uleb128 0x49
	.4byte	.LVL651
	.4byte	0xa46d
	.4byte	0x802e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL652
	.4byte	0x56fa
	.4byte	0x8041
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL658
	.4byte	0xa634
	.uleb128 0x49
	.4byte	.LVL659
	.4byte	0x58c1
	.4byte	0x805d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x49
	.4byte	.LVL680
	.4byte	0xa46d
	.4byte	0x8075
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL699
	.4byte	0xa46d
	.4byte	0x808d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x63
	.4byte	.LVL706
	.4byte	0x809c
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL707
	.4byte	0xa46d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x39c8
	.uleb128 0x3d
	.4byte	0x4d5b
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80ed
	.uleb128 0x3e
	.4byte	0x4d6c
	.4byte	.LLST208
	.uleb128 0x5f
	.4byte	0x4d78
	.4byte	.LLST209
	.uleb128 0x5f
	.4byte	0x4d82
	.4byte	.LLST210
	.uleb128 0x62
	.4byte	0x4d8c
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2291
	.byte	0x1
	.2byte	0x1592
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81cf
	.uleb128 0x42
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x1592
	.4byte	0x39
	.4byte	.LLST211
	.uleb128 0x42
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x1592
	.4byte	0x39
	.4byte	.LLST212
	.uleb128 0x3a
	.4byte	.LASF2183
	.byte	0x1
	.2byte	0x1592
	.4byte	0x586
	.4byte	.LLST213
	.uleb128 0x42
	.ascii	"cm\000"
	.byte	0x1
	.2byte	0x1592
	.4byte	0x39
	.4byte	.LLST214
	.uleb128 0x31
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x1594
	.4byte	0x39
	.uleb128 0x43
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x1595
	.4byte	0x586
	.4byte	.LLST215
	.uleb128 0x43
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1596
	.4byte	0x39
	.4byte	.LLST216
	.uleb128 0x43
	.ascii	"cx\000"
	.byte	0x1
	.2byte	0x1597
	.4byte	0x39
	.4byte	.LLST217
	.uleb128 0x43
	.ascii	"cy\000"
	.byte	0x1
	.2byte	0x1598
	.4byte	0x39
	.4byte	.LLST218
	.uleb128 0x5c
	.4byte	.LASF1599
	.byte	0x1
	.2byte	0x1599
	.4byte	0x39
	.4byte	.LLST219
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x8c0
	.4byte	0x81ad
	.uleb128 0x43
	.ascii	"__x\000"
	.byte	0x1
	.2byte	0x15ad
	.4byte	0x39
	.4byte	.LLST220
	.byte	0
	.uleb128 0x45
	.4byte	.LVL825
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x94
	.byte	0x1
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2292
	.byte	0x1
	.2byte	0x2d1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8252
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x39
	.4byte	.LLST221
	.uleb128 0x49
	.4byte	.LVL830
	.4byte	0xa33a
	.4byte	0x820a
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL831
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x8233
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL833
	.4byte	0x6191
	.uleb128 0x4e
	.4byte	.LVL834
	.4byte	0x80ed
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4d43
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8316
	.uleb128 0x5f
	.4byte	0x4d50
	.4byte	.LLST222
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x8d8
	.4byte	0x82b7
	.uleb128 0x5f
	.4byte	0x4d50
	.4byte	.LLST223
	.uleb128 0x49
	.4byte	.LVL840
	.4byte	0x754e
	.4byte	0x829e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xc
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x56
	.4byte	.LVL842
	.4byte	0x80ed
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL835
	.4byte	0xa33a
	.4byte	0x82ce
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL836
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x82f7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL838
	.4byte	0x6191
	.uleb128 0x4e
	.4byte	.LVL839
	.4byte	0x80ed
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x50
	.4byte	.LASF2293
	.byte	0x1
	.2byte	0x14ac
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8599
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x8f0
	.4byte	0x848c
	.uleb128 0x43
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x14c9
	.4byte	0x39
	.4byte	.LLST224
	.uleb128 0x43
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x14c9
	.4byte	0x39
	.4byte	.LLST225
	.uleb128 0x43
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x14c9
	.4byte	0x39
	.4byte	.LLST226
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x14c9
	.4byte	0x39
	.4byte	.LLST227
	.uleb128 0x5c
	.4byte	.LASF2294
	.byte	0x1
	.2byte	0x14ca
	.4byte	0x39
	.4byte	.LLST228
	.uleb128 0x51
	.4byte	0x4b0e
	.4byte	.LBB940
	.4byte	.LBE940-.LBB940
	.byte	0x1
	.2byte	0x14d9
	.4byte	0x83bb
	.uleb128 0x3e
	.4byte	0x4b29
	.4byte	.LLST229
	.uleb128 0x3e
	.4byte	0x4b1e
	.4byte	.LLST230
	.uleb128 0x4e
	.4byte	.LVL852
	.4byte	0xa59b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x910
	.4byte	0x8429
	.uleb128 0x5c
	.4byte	.LASF1997
	.byte	0x1
	.2byte	0x14e7
	.4byte	0x586
	.4byte	.LLST231
	.uleb128 0x53
	.4byte	0x4d5b
	.4byte	.LBB943
	.4byte	.Ldebug_ranges0+0x928
	.byte	0x1
	.2byte	0x14e9
	.4byte	0x8413
	.uleb128 0x3e
	.4byte	0x4d6c
	.4byte	.LLST232
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x928
	.uleb128 0x5f
	.4byte	0x4d78
	.4byte	.LLST233
	.uleb128 0x5f
	.4byte	0x4d82
	.4byte	.LLST234
	.uleb128 0x5f
	.4byte	0x4d8c
	.4byte	.LLST235
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL866
	.4byte	0x80ed
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL873
	.4byte	0xa33a
	.uleb128 0x4b
	.4byte	.LVL874
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x845c
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 -32
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL902
	.4byte	0xa33a
	.uleb128 0x4a
	.4byte	.LVL903
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x948
	.uleb128 0x43
	.ascii	"ms\000"
	.byte	0x1
	.2byte	0x14b5
	.4byte	0x555
	.4byte	.LLST236
	.uleb128 0x43
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x14b6
	.4byte	0x555
	.4byte	.LLST237
	.uleb128 0x43
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x14b8
	.4byte	0x39
	.4byte	.LLST238
	.uleb128 0x53
	.4byte	0x4d5b
	.4byte	.LBB951
	.4byte	.Ldebug_ranges0+0x968
	.byte	0x1
	.2byte	0x14b8
	.4byte	0x84fb
	.uleb128 0x3e
	.4byte	0x4d6c
	.4byte	.LLST239
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x968
	.uleb128 0x5f
	.4byte	0x4d78
	.4byte	.LLST240
	.uleb128 0x5f
	.4byte	0x4d82
	.4byte	.LLST241
	.uleb128 0x5f
	.4byte	0x4d8c
	.4byte	.LLST242
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x980
	.4byte	0x857b
	.uleb128 0x38
	.4byte	.LASF2183
	.byte	0x1
	.2byte	0x14bb
	.4byte	0x555
	.uleb128 0x43
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x14bb
	.4byte	0x55b
	.4byte	.LLST243
	.uleb128 0x49
	.4byte	.LVL888
	.4byte	0x754e
	.4byte	0x8532
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL889
	.4byte	0x80ed
	.4byte	0x8551
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL893
	.4byte	0x754e
	.4byte	0x8565
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL894
	.4byte	0x80ed
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL875
	.4byte	0xa4c8
	.4byte	0x858e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x52
	.4byte	.LVL892
	.4byte	0xa365
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4d99
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8705
	.uleb128 0x3e
	.4byte	0x4da6
	.4byte	.LLST244
	.uleb128 0x3e
	.4byte	0x4db0
	.4byte	.LLST245
	.uleb128 0x3e
	.4byte	0x4dba
	.4byte	.LLST246
	.uleb128 0x3e
	.4byte	0x4dc6
	.4byte	.LLST247
	.uleb128 0x3c
	.4byte	0x4dd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.4byte	0x4ddd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x5a
	.4byte	0x4de9
	.uleb128 0x53
	.4byte	0x4b0e
	.4byte	.LBB972
	.4byte	.Ldebug_ranges0+0x9a0
	.byte	0x1
	.2byte	0x15c0
	.4byte	0x8625
	.uleb128 0x54
	.4byte	0x4b29
	.byte	0
	.uleb128 0x3e
	.4byte	0x4b1e
	.4byte	.LLST248
	.uleb128 0x4e
	.4byte	.LVL913
	.4byte	0xa59b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x9b8
	.4byte	0x8651
	.uleb128 0x5f
	.4byte	0x4df6
	.4byte	.LLST249
	.uleb128 0x5e
	.4byte	.LVL917
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x9d0
	.uleb128 0x3e
	.4byte	0x4da6
	.4byte	.LLST250
	.uleb128 0x3c
	.4byte	0x4dba
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.uleb128 0x3e
	.4byte	0x4dc6
	.4byte	.LLST251
	.uleb128 0x3e
	.4byte	0x4ddd
	.4byte	.LLST252
	.uleb128 0x3e
	.4byte	0x4dd1
	.4byte	.LLST253
	.uleb128 0x3e
	.4byte	0x4db0
	.4byte	.LLST254
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x9d0
	.uleb128 0x5a
	.4byte	0x4de9
	.uleb128 0x53
	.4byte	0x4d5b
	.4byte	.LBB980
	.4byte	.Ldebug_ranges0+0x9e8
	.byte	0x1
	.2byte	0x15cd
	.4byte	0x86d6
	.uleb128 0x3e
	.4byte	0x4d6c
	.4byte	.LLST255
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x9e8
	.uleb128 0x5f
	.4byte	0x4d78
	.4byte	.LLST256
	.uleb128 0x5f
	.4byte	0x4d82
	.4byte	.LLST257
	.uleb128 0x5f
	.4byte	0x4d8c
	.4byte	.LLST258
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL918
	.4byte	0x754e
	.4byte	0x86ea
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.4byte	.LVL926
	.4byte	0x80ed
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2295
	.byte	0x1
	.2byte	0x68b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x874f
	.uleb128 0x4e
	.4byte	.LVL928
	.4byte	0x4d99
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2296
	.byte	0x1
	.2byte	0x91b
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87e8
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB992
	.4byte	.Ldebug_ranges0+0xa18
	.byte	0x1
	.2byte	0x921
	.4byte	0x8795
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL934
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL930
	.4byte	0x4d99
	.4byte	0x87cc
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL931
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL932
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL933
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2297
	.byte	0x1
	.2byte	0x98b
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8881
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1002
	.4byte	.Ldebug_ranges0+0xa48
	.byte	0x1
	.2byte	0x98f
	.4byte	0x882e
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL940
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL936
	.4byte	0x4d99
	.4byte	0x8865
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL937
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL938
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL939
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2298
	.byte	0x1
	.2byte	0x9e2
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x891a
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1012
	.4byte	.Ldebug_ranges0+0xa78
	.byte	0x1
	.2byte	0x9e6
	.4byte	0x88c7
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL946
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL942
	.4byte	0x4d99
	.4byte	0x88fe
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3b
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL943
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL944
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL945
	.4byte	0x4adf
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2299
	.byte	0x1
	.2byte	0xa65
	.byte	0x1
	.4byte	0x8940
	.uleb128 0x31
	.ascii	"cpx\000"
	.byte	0x1
	.2byte	0xa67
	.4byte	0x39
	.uleb128 0x31
	.ascii	"cpy\000"
	.byte	0x1
	.2byte	0xa67
	.4byte	0x39
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2300
	.byte	0x1
	.2byte	0xa7b
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a8b
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1026
	.4byte	.Ldebug_ranges0+0xaa8
	.byte	0x1
	.2byte	0xa7f
	.4byte	0x8986
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL952
	.4byte	0x6157
	.byte	0
	.uleb128 0x51
	.4byte	0x891a
	.4byte	.LBB1036
	.4byte	.LBE1036-.LBB1036
	.byte	0x1
	.2byte	0xa89
	.4byte	0x8a38
	.uleb128 0x58
	.4byte	.LBB1037
	.4byte	.LBE1037-.LBB1037
	.uleb128 0x5f
	.4byte	0x8927
	.4byte	.LLST259
	.uleb128 0x5f
	.4byte	0x8933
	.4byte	.LLST260
	.uleb128 0x49
	.4byte	.LVL953
	.4byte	0xa33a
	.4byte	0x89cc
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL954
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x89f7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x5b
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL955
	.4byte	0xa33a
	.4byte	0x8a0e
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL958
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL948
	.4byte	0x4d99
	.4byte	0x8a6f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL949
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL950
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL951
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2301
	.byte	0x1
	.2byte	0xafa
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b24
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1038
	.4byte	.Ldebug_ranges0+0xad8
	.byte	0x1
	.2byte	0xafe
	.4byte	0x8ad1
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL965
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL961
	.4byte	0x4d99
	.4byte	0x8b08
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL962
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL963
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL964
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2302
	.byte	0x1
	.2byte	0xc43
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bbd
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1048
	.4byte	.Ldebug_ranges0+0xb08
	.byte	0x1
	.2byte	0xc47
	.4byte	0x8b6a
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL971
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL967
	.4byte	0x4d99
	.4byte	0x8ba1
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC94
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL968
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL969
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL970
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2303
	.byte	0x1
	.2byte	0xd04
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c56
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1058
	.4byte	.Ldebug_ranges0+0xb38
	.byte	0x1
	.2byte	0xd08
	.4byte	0x8c03
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL977
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL973
	.4byte	0x4d99
	.4byte	0x8c3a
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL974
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL975
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL976
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2304
	.byte	0x1
	.2byte	0xd7d
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cef
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1068
	.4byte	.Ldebug_ranges0+0xb68
	.byte	0x1
	.2byte	0xd81
	.4byte	0x8c9c
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL983
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL979
	.4byte	0x4d99
	.4byte	0x8cd3
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC98
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x67
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL980
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL981
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL982
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2305
	.byte	0x1
	.2byte	0xdc7
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d88
	.uleb128 0x53
	.4byte	0x4a47
	.4byte	.LBB1078
	.4byte	.Ldebug_ranges0+0xb98
	.byte	0x1
	.2byte	0xdcb
	.4byte	0x8d35
	.uleb128 0x54
	.4byte	0x4a5e
	.byte	0
	.uleb128 0x3c
	.4byte	0x4a53
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x4f
	.4byte	.LVL989
	.4byte	0x6157
	.byte	0
	.uleb128 0x49
	.4byte	.LVL985
	.4byte	0x4d99
	.4byte	0x8d6c
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC101
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL986
	.4byte	0x5fd7
	.uleb128 0x4f
	.4byte	.LVL987
	.4byte	0x69ec
	.uleb128 0x52
	.4byte	.LVL988
	.4byte	0x4adf
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2306
	.byte	0x1
	.2byte	0xffb
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8df8
	.uleb128 0x63
	.4byte	.LVL990
	.4byte	0x8dad
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x49
	.4byte	.LVL991
	.4byte	0x4d99
	.4byte	0x8de4
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC104
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.byte	0
	.uleb128 0x56
	.4byte	.LVL992
	.4byte	0x69ec
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+3532
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4e04
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e53
	.uleb128 0x52
	.4byte	.LVL993
	.4byte	0x8d88
	.uleb128 0x49
	.4byte	.LVL994
	.4byte	0xa33a
	.4byte	0x8e2b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC106
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL995
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x4e0d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8eaf
	.uleb128 0x49
	.4byte	.LVL996
	.4byte	0xa33a
	.4byte	0x8e7d
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL997
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x8ea5
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x52
	.4byte	.LVL998
	.4byte	0x8d88
	.byte	0
	.uleb128 0x39
	.4byte	.LASF2307
	.byte	0x1
	.2byte	0x15db
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f5a
	.uleb128 0x43
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x15dd
	.4byte	0x4aa9
	.4byte	.LLST261
	.uleb128 0x49
	.4byte	.LVL1001
	.4byte	0xa63b
	.4byte	0x8ef7
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC109
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL1002
	.4byte	0xa63b
	.4byte	0x8f19
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC110
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.4byte	.LVL1006
	.4byte	0xa63b
	.4byte	0x8f3b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC108
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL1007
	.4byte	0xa63b
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC109
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF2308
	.byte	0x1
	.2byte	0xe50
	.byte	0x1
	.4byte	0x8f91
	.uleb128 0x31
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xe52
	.4byte	0x8f91
	.uleb128 0x31
	.ascii	"t\000"
	.byte	0x1
	.2byte	0xe52
	.4byte	0x4aa9
	.uleb128 0x31
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xe53
	.4byte	0x4a41
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xe54
	.4byte	0x39
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f97
	.uleb128 0x18
	.4byte	0x4aa9
	.uleb128 0x39
	.4byte	.LASF2309
	.byte	0x1
	.2byte	0x15ef
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9048
	.uleb128 0x51
	.4byte	0x8f5a
	.4byte	.LBB1100
	.4byte	.LBE1100-.LBB1100
	.byte	0x1
	.2byte	0x15f1
	.4byte	0x9011
	.uleb128 0x58
	.4byte	.LBB1101
	.4byte	.LBE1101-.LBB1101
	.uleb128 0x5f
	.4byte	0x8f67
	.4byte	.LLST262
	.uleb128 0x5f
	.4byte	0x8f71
	.4byte	.LLST263
	.uleb128 0x5f
	.4byte	0x8f7b
	.4byte	.LLST264
	.uleb128 0x5f
	.4byte	0x8f86
	.4byte	.LLST265
	.uleb128 0x4f
	.4byte	.LVL1014
	.4byte	0xa65a
	.uleb128 0x4e
	.4byte	.LVL1016
	.4byte	0xa66f
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC111
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LVL1020
	.4byte	0x8eaf
	.uleb128 0x4f
	.4byte	.LVL1021
	.4byte	0x6788
	.uleb128 0x52
	.4byte	.LVL1022
	.4byte	0x5932
	.uleb128 0x4f
	.4byte	.LVL1023
	.4byte	0x8eaf
	.uleb128 0x4f
	.4byte	.LVL1024
	.4byte	0x6788
	.uleb128 0x52
	.4byte	.LVL1025
	.4byte	0x5932
	.byte	0
	.uleb128 0x6d
	.4byte	.LASF2310
	.byte	0xc
	.byte	0x50
	.4byte	0x9053
	.uleb128 0x18
	.4byte	0x9058
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb93
	.uleb128 0x6e
	.4byte	.LASF2311
	.byte	0x1
	.byte	0x5c
	.4byte	0x586
	.uleb128 0x5
	.byte	0x3
	.4byte	messageString
	.uleb128 0x4c
	.4byte	.LASF2312
	.byte	0x1
	.2byte	0x303
	.4byte	0x555
	.uleb128 0x5
	.byte	0x3
	.4byte	forced_loadgame_message
	.uleb128 0x4c
	.4byte	.LASF2313
	.byte	0x1
	.2byte	0x5c7
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	set_menu_itemon
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x90a3
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3f
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF2314
	.byte	0x1
	.2byte	0x5ce
	.4byte	0x9093
	.uleb128 0x5
	.byte	0x3
	.4byte	menu_buffer
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x90c5
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF2315
	.byte	0x1
	.2byte	0xb3d
	.4byte	0x90b5
	.uleb128 0x5
	.byte	0x3
	.4byte	videomodes
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x90e7
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x38
	.4byte	.LASF2316
	.byte	0x1
	.2byte	0xb40
	.4byte	0x90d7
	.uleb128 0x38
	.4byte	.LASF2317
	.byte	0x1
	.2byte	0xb44
	.4byte	0x90d7
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x910f
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x6
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF2318
	.byte	0x1
	.2byte	0xba6
	.4byte	0x90ff
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_skillstrings
	.uleb128 0x4c
	.4byte	.LASF2319
	.byte	0x1
	.2byte	0xbed
	.4byte	0x90d7
	.uleb128 0x5
	.byte	0x3
	.4byte	renderfilters
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x9143
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF2320
	.byte	0x1
	.2byte	0xbee
	.4byte	0x9133
	.uleb128 0x5
	.byte	0x3
	.4byte	edgetypes
	.uleb128 0x4c
	.4byte	.LASF2321
	.byte	0x1
	.2byte	0xdde
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	shiftdown
	.uleb128 0x9
	.4byte	0x7644
	.4byte	0x9177
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF2322
	.byte	0x1
	.2byte	0xdf2
	.4byte	0x9189
	.uleb128 0x5
	.byte	0x3
	.4byte	setup_screens
	.uleb128 0x18
	.4byte	0x9167
	.uleb128 0x6f
	.4byte	.LASF2323
	.byte	0x1c
	.byte	0x2d
	.4byte	0x555
	.uleb128 0x6f
	.4byte	.LASF2324
	.byte	0x9
	.byte	0x7c
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2325
	.byte	0x9
	.byte	0x7d
	.4byte	0x39
	.uleb128 0x9
	.4byte	0xb93
	.4byte	0x91c0
	.uleb128 0x70
	.4byte	0xd4
	.2byte	0x27ff
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2326
	.byte	0xc
	.byte	0x4d
	.4byte	0x91af
	.uleb128 0x6f
	.4byte	.LASF2327
	.byte	0x15
	.byte	0x3e
	.4byte	0x8e4
	.uleb128 0x6f
	.4byte	.LASF2328
	.byte	0x15
	.byte	0x45
	.4byte	0xb63
	.uleb128 0x6f
	.4byte	.LASF2329
	.byte	0x15
	.byte	0x4f
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2330
	.byte	0x15
	.byte	0x50
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2331
	.byte	0x15
	.byte	0x79
	.4byte	0x910
	.uleb128 0x6f
	.4byte	.LASF2332
	.byte	0x15
	.byte	0x8f
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2333
	.byte	0x15
	.byte	0xa0
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2334
	.byte	0x15
	.byte	0xa1
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2335
	.byte	0x15
	.byte	0xb1
	.4byte	0x3919
	.uleb128 0x71
	.4byte	.LASF2336
	.byte	0x1
	.byte	0x90
	.4byte	0x3944
	.uleb128 0x5
	.byte	0x3
	.4byte	menuactive
	.uleb128 0x6f
	.4byte	.LASF2337
	.byte	0x15
	.byte	0xc3
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2338
	.byte	0x15
	.byte	0xd5
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2339
	.byte	0x15
	.byte	0xd6
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2340
	.byte	0x15
	.byte	0xd7
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2341
	.byte	0x15
	.byte	0xdb
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2342
	.byte	0x15
	.byte	0xe1
	.4byte	0x93c
	.uleb128 0x6f
	.4byte	.LASF2343
	.byte	0x15
	.byte	0xe9
	.4byte	0x39
	.uleb128 0x9
	.4byte	0x3863
	.4byte	0x929c
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2344
	.byte	0x15
	.byte	0xed
	.4byte	0x928c
	.uleb128 0x71
	.4byte	.LASF2345
	.byte	0x1
	.byte	0x4a
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	mouseSensitivity_horiz
	.uleb128 0x71
	.4byte	.LASF2346
	.byte	0x1
	.byte	0x4b
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	mouseSensitivity_vert
	.uleb128 0x6f
	.4byte	.LASF2347
	.byte	0x1d
	.byte	0x4c
	.4byte	0x92d4
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x92e4
	.uleb128 0x72
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2348
	.byte	0x1d
	.byte	0x4e
	.4byte	0x92ef
	.uleb128 0x18
	.4byte	0x92d9
	.uleb128 0x6f
	.4byte	.LASF2349
	.byte	0x1e
	.byte	0x36
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2350
	.byte	0x17
	.byte	0x5a
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2351
	.byte	0x17
	.byte	0x95
	.4byte	0x3ed7
	.uleb128 0x6f
	.4byte	.LASF2352
	.byte	0x17
	.byte	0x9e
	.4byte	0x3f0c
	.uleb128 0x6f
	.4byte	.LASF2353
	.byte	0x17
	.byte	0xad
	.4byte	0x3f41
	.uleb128 0x6f
	.4byte	.LASF2354
	.byte	0x1f
	.byte	0x53
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2355
	.byte	0x1f
	.byte	0x55
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2356
	.byte	0x1f
	.byte	0x57
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2357
	.byte	0x20
	.byte	0x5a
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2358
	.byte	0x20
	.byte	0x5b
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2359
	.byte	0x20
	.byte	0x5c
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2360
	.byte	0x20
	.byte	0x5d
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2361
	.byte	0x20
	.byte	0x5e
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2362
	.byte	0x20
	.byte	0x5f
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2363
	.byte	0x20
	.byte	0x60
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2364
	.byte	0x20
	.byte	0x61
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2365
	.byte	0x20
	.byte	0x62
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2366
	.byte	0x20
	.byte	0x63
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2367
	.byte	0x20
	.byte	0x64
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2368
	.byte	0x20
	.byte	0x65
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2369
	.byte	0x20
	.byte	0x66
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2370
	.byte	0x20
	.byte	0x68
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2371
	.byte	0x20
	.byte	0x69
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2372
	.byte	0x20
	.byte	0x6a
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2373
	.byte	0x20
	.byte	0x6b
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2374
	.byte	0x20
	.byte	0x6c
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2375
	.byte	0x20
	.byte	0x6d
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2376
	.byte	0x20
	.byte	0x6e
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2377
	.byte	0x20
	.byte	0x6f
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2378
	.byte	0x20
	.byte	0x70
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2379
	.byte	0x20
	.byte	0x71
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2380
	.byte	0x20
	.byte	0x72
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2381
	.byte	0x20
	.byte	0x73
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2382
	.byte	0x20
	.byte	0x74
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2383
	.byte	0x20
	.byte	0x75
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2384
	.byte	0x20
	.byte	0x76
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2385
	.byte	0x20
	.byte	0x77
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2386
	.byte	0x20
	.byte	0x78
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2387
	.byte	0x20
	.byte	0x79
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2388
	.byte	0x20
	.byte	0x7a
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2389
	.byte	0x20
	.byte	0x7b
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2390
	.byte	0x20
	.byte	0x7c
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2391
	.byte	0x20
	.byte	0x7d
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2392
	.byte	0x20
	.byte	0x7e
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2393
	.byte	0x20
	.byte	0x7f
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2394
	.byte	0x20
	.byte	0x80
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2395
	.byte	0x20
	.byte	0x81
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2396
	.byte	0x20
	.byte	0x86
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2397
	.byte	0x20
	.byte	0x87
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2398
	.byte	0x20
	.byte	0x88
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2399
	.byte	0x20
	.byte	0x89
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2400
	.byte	0x20
	.byte	0x8a
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2401
	.byte	0x20
	.byte	0x8b
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2402
	.byte	0x20
	.byte	0x8c
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2403
	.byte	0x20
	.byte	0x8d
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2404
	.byte	0x20
	.byte	0x8e
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2405
	.byte	0x20
	.byte	0x8f
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2406
	.byte	0x20
	.byte	0x90
	.4byte	0x3833
	.uleb128 0x6f
	.4byte	.LASF2407
	.byte	0x20
	.byte	0x91
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2408
	.byte	0x20
	.byte	0x92
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2409
	.byte	0x20
	.byte	0x93
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2410
	.byte	0x20
	.byte	0x94
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2411
	.byte	0x20
	.byte	0x95
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2412
	.byte	0x20
	.byte	0x96
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2413
	.byte	0x20
	.byte	0x97
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2414
	.byte	0x20
	.byte	0x98
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2415
	.byte	0x20
	.byte	0x99
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2416
	.byte	0x20
	.byte	0x9a
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2417
	.byte	0x20
	.byte	0x9b
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2418
	.byte	0x20
	.byte	0x9c
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2419
	.byte	0x20
	.byte	0x9f
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2420
	.byte	0x20
	.byte	0xa0
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2421
	.byte	0x20
	.byte	0xa1
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2422
	.byte	0x20
	.byte	0xa2
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2423
	.byte	0x20
	.byte	0xa3
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2424
	.byte	0x20
	.byte	0xa4
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2425
	.byte	0x20
	.byte	0xa5
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2426
	.byte	0x20
	.byte	0xa7
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2427
	.byte	0x20
	.byte	0xa8
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2428
	.byte	0x20
	.byte	0xa9
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2429
	.byte	0x20
	.byte	0xaa
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2430
	.byte	0x20
	.byte	0xac
	.4byte	0x39
	.uleb128 0x71
	.4byte	.LASF2431
	.byte	0x1
	.byte	0x7a
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	warning_about_changes
	.uleb128 0x71
	.4byte	.LASF2432
	.byte	0x1
	.byte	0x7a
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	print_warning_about_changes
	.uleb128 0x71
	.4byte	.LASF2433
	.byte	0x1
	.byte	0x7e
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	menu_background
	.uleb128 0x6f
	.4byte	.LASF2434
	.byte	0x21
	.byte	0x50
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2435
	.byte	0x21
	.byte	0x52
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2436
	.byte	0x21
	.byte	0x54
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2437
	.byte	0x21
	.byte	0x56
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2438
	.byte	0x21
	.byte	0x5d
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2439
	.byte	0x21
	.byte	0x60
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2440
	.byte	0x21
	.byte	0x67
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2441
	.byte	0x21
	.byte	0x6e
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2442
	.byte	0x21
	.byte	0x71
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2443
	.byte	0x21
	.byte	0x74
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2444
	.byte	0x21
	.byte	0x76
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2445
	.byte	0x21
	.byte	0x78
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2446
	.byte	0x21
	.byte	0x7a
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2447
	.byte	0x21
	.byte	0x7d
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2448
	.byte	0x21
	.byte	0x84
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2449
	.byte	0x21
	.byte	0x86
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2450
	.byte	0x21
	.byte	0x88
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2451
	.byte	0x21
	.byte	0x8a
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2452
	.byte	0x21
	.byte	0x8c
	.4byte	0x586
	.uleb128 0x6f
	.4byte	.LASF2453
	.byte	0x21
	.byte	0x8e
	.4byte	0x586
	.uleb128 0x71
	.4byte	.LASF2454
	.byte	0x1
	.byte	0xc0
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	mapcolor_me
	.uleb128 0x73
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2455
	.byte	0x22
	.byte	0x2a
	.4byte	0x97aa
	.uleb128 0xf
	.byte	0x4
	.4byte	0x979a
	.uleb128 0x6f
	.4byte	.LASF2456
	.byte	0x23
	.byte	0x73
	.4byte	0x39
	.uleb128 0x6f
	.4byte	.LASF2457
	.byte	0x24
	.byte	0x27
	.4byte	0x39
	.uleb128 0x9
	.4byte	0x3e7a
	.4byte	0x97d6
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5e
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2458
	.byte	0x1
	.byte	0x41
	.4byte	0x97c6
	.uleb128 0x6f
	.4byte	.LASF2459
	.byte	0x1
	.byte	0x42
	.4byte	0xabb
	.uleb128 0x6f
	.4byte	.LASF2460
	.byte	0x1
	.byte	0x44
	.4byte	0xabb
	.uleb128 0x71
	.4byte	.LASF2461
	.byte	0x1
	.byte	0x4d
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	showMessages
	.uleb128 0x71
	.4byte	.LASF2462
	.byte	0x1
	.byte	0x4f
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	hide_setup
	.uleb128 0x71
	.4byte	.LASF2463
	.byte	0x1
	.byte	0x53
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	screenblocks
	.uleb128 0x71
	.4byte	.LASF2464
	.byte	0x1
	.byte	0x55
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	screenSize
	.uleb128 0x71
	.4byte	.LASF2465
	.byte	0x1
	.byte	0x57
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	quickSaveSlot
	.uleb128 0x71
	.4byte	.LASF2466
	.byte	0x1
	.byte	0x59
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	messageToPrint
	.uleb128 0x71
	.4byte	.LASF2467
	.byte	0x1
	.byte	0x5f
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	messx
	.uleb128 0x71
	.4byte	.LASF2468
	.byte	0x1
	.byte	0x60
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	messy
	.uleb128 0x71
	.4byte	.LASF2469
	.byte	0x1
	.byte	0x61
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	messageLastMenuActive
	.uleb128 0x71
	.4byte	.LASF2470
	.byte	0x1
	.byte	0x63
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	messageNeedsInput
	.uleb128 0x71
	.4byte	.LASF2471
	.byte	0x1
	.byte	0x65
	.4byte	0x856
	.uleb128 0x5
	.byte	0x3
	.4byte	messageRoutine
	.uleb128 0x71
	.4byte	.LASF2472
	.byte	0x1
	.byte	0x88
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	saveStringEnter
	.uleb128 0x71
	.4byte	.LASF2473
	.byte	0x1
	.byte	0x89
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	saveSlot
	.uleb128 0x71
	.4byte	.LASF2474
	.byte	0x1
	.byte	0x8a
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	saveCharIndex
	.uleb128 0x71
	.4byte	.LASF2475
	.byte	0x1
	.byte	0x8c
	.4byte	0x7a8
	.uleb128 0x5
	.byte	0x3
	.4byte	saveOldString
	.uleb128 0x71
	.4byte	.LASF2476
	.byte	0x1
	.byte	0x8e
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	inhelpscreens
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x991d
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x9
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x17
	.byte	0
	.uleb128 0x71
	.4byte	.LASF2477
	.byte	0x1
	.byte	0x95
	.4byte	0x9907
	.uleb128 0x5
	.byte	0x3
	.4byte	savegamestrings
	.uleb128 0x71
	.4byte	.LASF2478
	.byte	0x1
	.byte	0xb3
	.4byte	0x4e
	.uleb128 0x5
	.byte	0x3
	.4byte	itemOn
	.uleb128 0x71
	.4byte	.LASF2479
	.byte	0x1
	.byte	0xb4
	.4byte	0x4e
	.uleb128 0x5
	.byte	0x3
	.4byte	skullAnimCounter
	.uleb128 0x71
	.4byte	.LASF2480
	.byte	0x1
	.byte	0xb5
	.4byte	0x4e
	.uleb128 0x5
	.byte	0x3
	.4byte	whichSkull
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x9977
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x71
	.4byte	.LASF2481
	.byte	0x1
	.byte	0xb9
	.4byte	0x9988
	.uleb128 0x5
	.byte	0x3
	.4byte	skullName
	.uleb128 0x18
	.4byte	0x9961
	.uleb128 0x71
	.4byte	.LASF2482
	.byte	0x1
	.byte	0xbb
	.4byte	0x4c10
	.uleb128 0x5
	.byte	0x3
	.4byte	currentMenu
	.uleb128 0x6f
	.4byte	.LASF2483
	.byte	0x1
	.byte	0xc5
	.4byte	0x586
	.uleb128 0x9
	.4byte	0x444f
	.4byte	0x99b4
	.uleb128 0x72
	.byte	0
	.uleb128 0x6f
	.4byte	.LASF2484
	.byte	0x1
	.byte	0xc6
	.4byte	0x99a9
	.uleb128 0x6f
	.4byte	.LASF2485
	.byte	0x1
	.byte	0xc7
	.4byte	0x39
	.uleb128 0x74
	.4byte	.LASF2486
	.byte	0x1
	.2byte	0x24f
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	NewDef
	.uleb128 0x74
	.4byte	.LASF2487
	.byte	0x1
	.2byte	0x143
	.4byte	0x456d
	.uleb128 0x5
	.byte	0x3
	.4byte	main_e
	.uleb128 0x9
	.4byte	0x44ee
	.4byte	0x99fe
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2488
	.byte	0x1
	.2byte	0x14d
	.4byte	0x99ee
	.uleb128 0x5
	.byte	0x3
	.4byte	MainMenu
	.uleb128 0x74
	.4byte	.LASF2489
	.byte	0x1
	.2byte	0x158
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	MainDef
	.uleb128 0x74
	.4byte	.LASF2490
	.byte	0x1
	.2byte	0x178
	.4byte	0x45a1
	.uleb128 0x5
	.byte	0x3
	.4byte	read_e
	.uleb128 0x74
	.4byte	.LASF2491
	.byte	0x1
	.2byte	0x17e
	.4byte	0x45b7
	.uleb128 0x5
	.byte	0x3
	.4byte	read_e2
	.uleb128 0x74
	.4byte	.LASF2492
	.byte	0x1
	.2byte	0x184
	.4byte	0x45cd
	.uleb128 0x5
	.byte	0x3
	.4byte	help_e
	.uleb128 0x9
	.4byte	0x44ee
	.4byte	0x9a68
	.uleb128 0xa
	.4byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2493
	.byte	0x1
	.2byte	0x189
	.4byte	0x9a58
	.uleb128 0x5
	.byte	0x3
	.4byte	ReadMenu1
	.uleb128 0x74
	.4byte	.LASF2494
	.byte	0x1
	.2byte	0x18e
	.4byte	0x9a58
	.uleb128 0x5
	.byte	0x3
	.4byte	ReadMenu2
	.uleb128 0x74
	.4byte	.LASF2495
	.byte	0x1
	.2byte	0x193
	.4byte	0x9a58
	.uleb128 0x5
	.byte	0x3
	.4byte	HelpMenu
	.uleb128 0x74
	.4byte	.LASF2496
	.byte	0x1
	.2byte	0x198
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	ReadDef1
	.uleb128 0x74
	.4byte	.LASF2497
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	ReadDef2
	.uleb128 0x74
	.4byte	.LASF2498
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	HelpDef
	.uleb128 0x74
	.4byte	.LASF2499
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x45e3
	.uleb128 0x5
	.byte	0x3
	.4byte	episodes_e
	.uleb128 0x9
	.4byte	0x44ee
	.4byte	0x9af6
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2500
	.byte	0x1
	.2byte	0x202
	.4byte	0x9ae6
	.uleb128 0x5
	.byte	0x3
	.4byte	EpisodeMenu
	.uleb128 0x74
	.4byte	.LASF2501
	.byte	0x1
	.2byte	0x20a
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	EpiDef
	.uleb128 0x75
	.ascii	"epi\000"
	.byte	0x1
	.2byte	0x217
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	epi
	.uleb128 0x74
	.4byte	.LASF2502
	.byte	0x1
	.2byte	0x242
	.4byte	0x460b
	.uleb128 0x5
	.byte	0x3
	.4byte	newgame_e
	.uleb128 0x9
	.4byte	0x44ee
	.4byte	0x9b4e
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2503
	.byte	0x1
	.2byte	0x246
	.4byte	0x9b3e
	.uleb128 0x5
	.byte	0x3
	.4byte	NewGameMenu
	.uleb128 0x74
	.4byte	.LASF2504
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x4639
	.uleb128 0x5
	.byte	0x3
	.4byte	load_e
	.uleb128 0x9
	.4byte	0x44ee
	.4byte	0x9b82
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2505
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x9b72
	.uleb128 0x5
	.byte	0x3
	.4byte	LoadMenue
	.uleb128 0x74
	.4byte	.LASF2506
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	LoadDef
	.uleb128 0x74
	.4byte	.LASF2507
	.byte	0x1
	.2byte	0x32e
	.4byte	0x9b72
	.uleb128 0x5
	.byte	0x3
	.4byte	SaveMenu
	.uleb128 0x74
	.4byte	.LASF2508
	.byte	0x1
	.2byte	0x33a
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	SaveDef
	.uleb128 0x74
	.4byte	.LASF2509
	.byte	0x1
	.2byte	0x3c4
	.4byte	0x4679
	.uleb128 0x5
	.byte	0x3
	.4byte	options_e
	.uleb128 0x74
	.4byte	.LASF2510
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x9b72
	.uleb128 0x5
	.byte	0x3
	.4byte	OptionsMenu
	.uleb128 0x74
	.4byte	.LASF2511
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	OptionsDef
	.uleb128 0x74
	.4byte	.LASF2512
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x9961
	.uleb128 0x5
	.byte	0x3
	.4byte	detailNames
	.uleb128 0x74
	.4byte	.LASF2513
	.byte	0x1
	.2byte	0x3e5
	.4byte	0x9961
	.uleb128 0x5
	.byte	0x3
	.4byte	msgNames
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x9c34
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2514
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x9c24
	.uleb128 0x5
	.byte	0x3
	.4byte	quitsounds
	.uleb128 0x74
	.4byte	.LASF2515
	.byte	0x1
	.2byte	0x40a
	.4byte	0x9c24
	.uleb128 0x5
	.byte	0x3
	.4byte	quitsounds2
	.uleb128 0x74
	.4byte	.LASF2516
	.byte	0x1
	.2byte	0x44e
	.4byte	0x46b9
	.uleb128 0x5
	.byte	0x3
	.4byte	sound_e
	.uleb128 0x74
	.4byte	.LASF2517
	.byte	0x1
	.2byte	0x452
	.4byte	0x9ae6
	.uleb128 0x5
	.byte	0x3
	.4byte	SoundMenu
	.uleb128 0x74
	.4byte	.LASF2518
	.byte	0x1
	.2byte	0x45a
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	SoundDef
	.uleb128 0x74
	.4byte	.LASF2519
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x46e1
	.uleb128 0x5
	.byte	0x3
	.4byte	mouse_e
	.uleb128 0x74
	.4byte	.LASF2520
	.byte	0x1
	.2byte	0x4ac
	.4byte	0x9ae6
	.uleb128 0x5
	.byte	0x3
	.4byte	MouseMenu
	.uleb128 0x74
	.4byte	.LASF2521
	.byte	0x1
	.2byte	0x4b4
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	MouseDef
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x9cd4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x4f
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2522
	.byte	0x1
	.2byte	0x505
	.4byte	0x9cc4
	.uleb128 0x5
	.byte	0x3
	.4byte	tempstring
	.uleb128 0x74
	.4byte	.LASF2523
	.byte	0x1
	.2byte	0x5b1
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	setup_active
	.uleb128 0x74
	.4byte	.LASF2524
	.byte	0x1
	.2byte	0x5b2
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_keybnd_active
	.uleb128 0x74
	.4byte	.LASF2525
	.byte	0x1
	.2byte	0x5b3
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_weapon_active
	.uleb128 0x74
	.4byte	.LASF2526
	.byte	0x1
	.2byte	0x5b4
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_status_active
	.uleb128 0x74
	.4byte	.LASF2527
	.byte	0x1
	.2byte	0x5b5
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_auto_active
	.uleb128 0x74
	.4byte	.LASF2528
	.byte	0x1
	.2byte	0x5b6
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_enemy_active
	.uleb128 0x74
	.4byte	.LASF2529
	.byte	0x1
	.2byte	0x5b7
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_mess_active
	.uleb128 0x74
	.4byte	.LASF2530
	.byte	0x1
	.2byte	0x5b8
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_chat_active
	.uleb128 0x74
	.4byte	.LASF2531
	.byte	0x1
	.2byte	0x5b9
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	setup_select
	.uleb128 0x74
	.4byte	.LASF2532
	.byte	0x1
	.2byte	0x5ba
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	setup_gather
	.uleb128 0x74
	.4byte	.LASF2533
	.byte	0x1
	.2byte	0x5bb
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	colorbox_active
	.uleb128 0x74
	.4byte	.LASF2534
	.byte	0x1
	.2byte	0x5bc
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	default_verify
	.uleb128 0x74
	.4byte	.LASF2535
	.byte	0x1
	.2byte	0x5bd
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_general_active
	.uleb128 0x74
	.4byte	.LASF2536
	.byte	0x1
	.2byte	0x5be
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x3
	.4byte	set_compat_active
	.uleb128 0x74
	.4byte	.LASF2537
	.byte	0x1
	.2byte	0x5c8
	.4byte	0x4aa9
	.uleb128 0x5
	.byte	0x3
	.4byte	current_setup_menu
	.uleb128 0x74
	.4byte	.LASF2538
	.byte	0x1
	.2byte	0x5e0
	.4byte	0x4709
	.uleb128 0x5
	.byte	0x3
	.4byte	setup_e
	.uleb128 0x74
	.4byte	.LASF2539
	.byte	0x1
	.2byte	0x5e2
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	setup_screen
	.uleb128 0x74
	.4byte	.LASF2540
	.byte	0x1
	.2byte	0x5ec
	.4byte	0x9b72
	.uleb128 0x5
	.byte	0x3
	.4byte	SetupMenu
	.uleb128 0x74
	.4byte	.LASF2541
	.byte	0x1
	.2byte	0x60b
	.4byte	0x4749
	.uleb128 0x5
	.byte	0x3
	.4byte	generic_setup_e
	.uleb128 0x74
	.4byte	.LASF2542
	.byte	0x1
	.2byte	0x610
	.4byte	0x9a58
	.uleb128 0x5
	.byte	0x3
	.4byte	Generic_Setup
	.uleb128 0x74
	.4byte	.LASF2543
	.byte	0x1
	.2byte	0x61b
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	SetupDef
	.uleb128 0x74
	.4byte	.LASF2544
	.byte	0x1
	.2byte	0x62d
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	KeybndDef
	.uleb128 0x74
	.4byte	.LASF2545
	.byte	0x1
	.2byte	0x637
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	WeaponDef
	.uleb128 0x74
	.4byte	.LASF2546
	.byte	0x1
	.2byte	0x641
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	StatusHUDDef
	.uleb128 0x74
	.4byte	.LASF2547
	.byte	0x1
	.2byte	0x64b
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	AutoMapDef
	.uleb128 0x74
	.4byte	.LASF2548
	.byte	0x1
	.2byte	0x655
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	EnemyDef
	.uleb128 0x74
	.4byte	.LASF2549
	.byte	0x1
	.2byte	0x65f
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	MessageDef
	.uleb128 0x74
	.4byte	.LASF2550
	.byte	0x1
	.2byte	0x669
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	ChatStrDef
	.uleb128 0x74
	.4byte	.LASF2551
	.byte	0x1
	.2byte	0x673
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	GeneralDef
	.uleb128 0x74
	.4byte	.LASF2552
	.byte	0x1
	.2byte	0x67d
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	CompatDef
	.uleb128 0x74
	.4byte	.LASF2553
	.byte	0x1
	.2byte	0x6b9
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_index
	.uleb128 0x74
	.4byte	.LASF2554
	.byte	0x1
	.2byte	0x6ba
	.4byte	0x555
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_string_buffer
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x9f3c
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2555
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x9f26
	.uleb128 0x5
	.byte	0x3
	.4byte	ResetButtonName
	.uleb128 0x74
	.4byte	.LASF2556
	.byte	0x1
	.2byte	0x6fe
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	gather_count
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x9f70
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2557
	.byte	0x1
	.2byte	0x6ff
	.4byte	0x9f60
	.uleb128 0x5
	.byte	0x3
	.4byte	gather_buffer
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0x9f92
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x16
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2558
	.byte	0x1
	.2byte	0x87e
	.4byte	0x9f82
	.uleb128 0x5
	.byte	0x3
	.4byte	keys_settings1
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0x9fb4
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x17
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2559
	.byte	0x1
	.2byte	0x8a0
	.4byte	0x9fa4
	.uleb128 0x5
	.byte	0x3
	.4byte	keys_settings2
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0x9fd6
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xe
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2560
	.byte	0x1
	.2byte	0x8cb
	.4byte	0x9fc6
	.uleb128 0x5
	.byte	0x3
	.4byte	keys_settings3
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0x9ff8
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x15
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2561
	.byte	0x1
	.2byte	0x8e3
	.4byte	0x9fe8
	.uleb128 0x5
	.byte	0x3
	.4byte	keys_settings4
	.uleb128 0x9
	.4byte	0x4aa9
	.4byte	0xa01a
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2562
	.byte	0x1
	.2byte	0x850
	.4byte	0xa00a
	.uleb128 0x5
	.byte	0x3
	.4byte	keys_settings
	.uleb128 0x74
	.4byte	.LASF2563
	.byte	0x1
	.2byte	0x859
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	mult_screens_index
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa04e
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xd
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2564
	.byte	0x1
	.2byte	0x958
	.4byte	0xa03e
	.uleb128 0x5
	.byte	0x3
	.4byte	weap_settings1
	.uleb128 0x9
	.4byte	0x4aa9
	.4byte	0xa070
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2565
	.byte	0x1
	.2byte	0x952
	.4byte	0xa060
	.uleb128 0x5
	.byte	0x3
	.4byte	weap_settings
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa092
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xf
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2566
	.byte	0x1
	.2byte	0x9ae
	.4byte	0xa082
	.uleb128 0x5
	.byte	0x3
	.4byte	stat_settings1
	.uleb128 0x74
	.4byte	.LASF2567
	.byte	0x1
	.2byte	0x9a8
	.4byte	0xa060
	.uleb128 0x5
	.byte	0x3
	.4byte	stat_settings
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa0c6
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x12
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2568
	.byte	0x1
	.2byte	0xa08
	.4byte	0xa0b6
	.uleb128 0x5
	.byte	0x3
	.4byte	auto_settings1
	.uleb128 0x74
	.4byte	.LASF2569
	.byte	0x1
	.2byte	0xa28
	.4byte	0xa03e
	.uleb128 0x5
	.byte	0x3
	.4byte	auto_settings2
	.uleb128 0x9
	.4byte	0x4aa9
	.4byte	0xa0fa
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x2
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2570
	.byte	0x1
	.2byte	0xa01
	.4byte	0xa0ea
	.uleb128 0x5
	.byte	0x3
	.4byte	auto_settings
	.uleb128 0x74
	.4byte	.LASF2571
	.byte	0x1
	.2byte	0xa5b
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	color_palette_x
	.uleb128 0x74
	.4byte	.LASF2572
	.byte	0x1
	.2byte	0xa5c
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	color_palette_y
	.uleb128 0x9
	.4byte	0xac6
	.4byte	0xa140
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x87
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2573
	.byte	0x1
	.2byte	0xa5d
	.4byte	0xa130
	.uleb128 0x5
	.byte	0x3
	.4byte	palette_background
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa162
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xb
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2574
	.byte	0x1
	.2byte	0xaba
	.4byte	0xa152
	.uleb128 0x5
	.byte	0x3
	.4byte	enem_settings1
	.uleb128 0x74
	.4byte	.LASF2575
	.byte	0x1
	.2byte	0xa9c
	.4byte	0xa060
	.uleb128 0x5
	.byte	0x3
	.4byte	enem_settings
	.uleb128 0x74
	.4byte	.LASF2576
	.byte	0x1
	.2byte	0xb47
	.4byte	0xa152
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_settings1
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa1a8
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x10
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2577
	.byte	0x1
	.2byte	0xbab
	.4byte	0xa198
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_settings2
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa1ca
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xa
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2578
	.byte	0x1
	.2byte	0xbf0
	.4byte	0xa1ba
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_settings3
	.uleb128 0x9
	.4byte	0x4aa9
	.4byte	0xa1ec
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2579
	.byte	0x1
	.2byte	0xb17
	.4byte	0xa1dc
	.uleb128 0x5
	.byte	0x3
	.4byte	gen_settings
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa20e
	.uleb128 0xa
	.4byte	0xd4
	.byte	0xc
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2580
	.byte	0x1
	.2byte	0xc85
	.4byte	0xa1fe
	.uleb128 0x5
	.byte	0x3
	.4byte	comp_settings1
	.uleb128 0x74
	.4byte	.LASF2581
	.byte	0x1
	.2byte	0xcae
	.4byte	0xa1fe
	.uleb128 0x5
	.byte	0x3
	.4byte	comp_settings2
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa242
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x5
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2582
	.byte	0x1
	.2byte	0xcd7
	.4byte	0xa232
	.uleb128 0x5
	.byte	0x3
	.4byte	comp_settings3
	.uleb128 0x74
	.4byte	.LASF2583
	.byte	0x1
	.2byte	0xc61
	.4byte	0xa1dc
	.uleb128 0x5
	.byte	0x3
	.4byte	comp_settings
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa276
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x6
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2584
	.byte	0x1
	.2byte	0xd33
	.4byte	0xa266
	.uleb128 0x5
	.byte	0x3
	.4byte	mess_settings1
	.uleb128 0x74
	.4byte	.LASF2585
	.byte	0x1
	.2byte	0xd2d
	.4byte	0xa060
	.uleb128 0x5
	.byte	0x3
	.4byte	mess_settings
	.uleb128 0x74
	.4byte	.LASF2586
	.byte	0x1
	.2byte	0xd9b
	.4byte	0xa152
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_settings1
	.uleb128 0x74
	.4byte	.LASF2587
	.byte	0x1
	.2byte	0xd95
	.4byte	0xa060
	.uleb128 0x5
	.byte	0x3
	.4byte	chat_settings
	.uleb128 0x74
	.4byte	.LASF2588
	.byte	0x1
	.2byte	0xe76
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	extended_help_count
	.uleb128 0x74
	.4byte	.LASF2589
	.byte	0x1
	.2byte	0xe77
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	extended_help_index
	.uleb128 0x74
	.4byte	.LASF2590
	.byte	0x1
	.2byte	0xe79
	.4byte	0x9a58
	.uleb128 0x5
	.byte	0x3
	.4byte	ExtHelpMenu
	.uleb128 0x74
	.4byte	.LASF2591
	.byte	0x1
	.2byte	0xe7e
	.4byte	0x4562
	.uleb128 0x5
	.byte	0x3
	.4byte	ExtHelpDef
	.uleb128 0x9
	.4byte	0x43cc
	.4byte	0xa316
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x35
	.byte	0
	.uleb128 0x74
	.4byte	.LASF2592
	.byte	0x1
	.2byte	0xf3a
	.4byte	0xa306
	.uleb128 0x5
	.byte	0x3
	.4byte	helpstrings
	.uleb128 0x74
	.4byte	.LASF2593
	.byte	0x1
	.2byte	0xfe6
	.4byte	0x9fc6
	.uleb128 0x5
	.byte	0x3
	.4byte	cred_settings
	.uleb128 0x76
	.4byte	.LASF2594
	.byte	0x2
	.byte	0x85
	.4byte	0x39
	.4byte	0xa34f
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2595
	.byte	0x20
	.byte	0x34
	.4byte	0xa365
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0xabb
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2596
	.byte	0x8
	.byte	0x4a
	.4byte	0xa376
	.uleb128 0x14
	.4byte	0x37
	.byte	0
	.uleb128 0x78
	.4byte	.LASF2597
	.byte	0x20
	.byte	0x35
	.uleb128 0x76
	.4byte	.LASF2598
	.byte	0x25
	.byte	0x1e
	.4byte	0x555
	.4byte	0xa397
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2599
	.byte	0x25
	.byte	0x1c
	.4byte	0x39
	.4byte	0xa3b1
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2600
	.byte	0x25
	.byte	0x21
	.4byte	0x25
	.4byte	0xa3c6
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2601
	.byte	0x7
	.byte	0xd9
	.4byte	0x39
	.4byte	0xa3e1
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x24
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2602
	.byte	0x26
	.byte	0x5b
	.4byte	0xa3f2
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2603
	.byte	0x26
	.byte	0x5a
	.4byte	0xa403
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2604
	.byte	0x1b
	.byte	0x36
	.4byte	0x39
	.4byte	0xa41e
	.uleb128 0x14
	.4byte	0x448e
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x24
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2605
	.byte	0x20
	.byte	0x37
	.4byte	0xa434
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x555
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2606
	.byte	0x27
	.byte	0x75
	.4byte	0xa445
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2607
	.byte	0x28
	.byte	0x63
	.4byte	0xa456
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2608
	.byte	0x24
	.byte	0x2a
	.4byte	0xa467
	.uleb128 0x14
	.4byte	0xa467
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3863
	.uleb128 0x77
	.4byte	.LASF2609
	.byte	0x26
	.byte	0x3e
	.4byte	0xa483
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x77
	.4byte	.LASF2610
	.byte	0x29
	.byte	0x54
	.4byte	0xa494
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x78
	.4byte	.LASF2611
	.byte	0x20
	.byte	0x4e
	.uleb128 0x77
	.4byte	.LASF2612
	.byte	0x20
	.byte	0x32
	.4byte	0xa4b6
	.uleb128 0x14
	.4byte	0x974
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x79
	.4byte	.LASF2637
	.byte	0x20
	.byte	0x2f
	.4byte	0xabb
	.uleb128 0x78
	.4byte	.LASF2613
	.byte	0x1e
	.byte	0x48
	.uleb128 0x76
	.4byte	.LASF2614
	.byte	0x8
	.byte	0x51
	.4byte	0x555
	.4byte	0xa4e7
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0xa4e7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.uleb128 0x76
	.4byte	.LASF2615
	.byte	0x7
	.byte	0xc4
	.4byte	0x25
	.4byte	0xa511
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x39d3
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2616
	.byte	0x7
	.byte	0xa4
	.4byte	0x39
	.4byte	0xa526
	.uleb128 0x14
	.4byte	0x39d3
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2617
	.byte	0x20
	.byte	0x41
	.4byte	0x39
	.4byte	0xa54a
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0xabb
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2618
	.byte	0x8
	.byte	0x49
	.4byte	0x37
	.4byte	0xa569
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0xa4e7
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2619
	.byte	0x7
	.byte	0xd8
	.4byte	0x39d3
	.4byte	0xa583
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x78
	.4byte	.LASF2620
	.byte	0x2a
	.byte	0x30
	.uleb128 0x77
	.4byte	.LASF2621
	.byte	0x17
	.byte	0xb1
	.4byte	0xa59b
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2622
	.byte	0x2
	.byte	0x7f
	.4byte	0x39
	.4byte	0xa5ba
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2623
	.byte	0x25
	.byte	0x2b
	.4byte	0x555
	.4byte	0xa5d4
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x7a
	.4byte	.LASF2638
	.byte	0x2b
	.byte	0
	.4byte	.LASF2598
	.4byte	0x555
	.4byte	0xa5f2
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2624
	.byte	0x25
	.byte	0x24
	.4byte	0x555
	.4byte	0xa611
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x25
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2625
	.byte	0x29
	.byte	0x49
	.4byte	0x39
	.4byte	0xa626
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x78
	.4byte	.LASF2626
	.byte	0x1f
	.byte	0x3d
	.uleb128 0x78
	.4byte	.LASF2627
	.byte	0x1a
	.byte	0x31
	.uleb128 0x78
	.4byte	.LASF2628
	.byte	0x1f
	.byte	0x45
	.uleb128 0x76
	.4byte	.LASF2629
	.byte	0x25
	.byte	0x23
	.4byte	0x39
	.4byte	0xa65a
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x25
	.byte	0
	.uleb128 0x76
	.4byte	.LASF2630
	.byte	0x1a
	.byte	0x38
	.4byte	0x4335
	.4byte	0xa66f
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x7b
	.4byte	.LASF2639
	.byte	0x1b
	.byte	0x3d
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x24
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x40
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
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x4e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x5e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x66
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x67
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
	.uleb128 0x69
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
	.uleb128 0x6a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6d
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
	.uleb128 0x6e
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
	.uleb128 0x6f
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
	.uleb128 0x70
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x71
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
	.uleb128 0x72
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x73
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x74
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
	.uleb128 0x75
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x76
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
	.uleb128 0x77
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
	.uleb128 0x78
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
	.uleb128 0x79
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
	.uleb128 0x7a
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
	.uleb128 0x7b
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LFE54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35
	.4byte	.LFE84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LFE91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53
	.4byte	.LFE96
	.2byte	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x21
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL74-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x3
	.4byte	M_QuitResponse
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x3
	.4byte	endstring.11505
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111-1
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113-1
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL114
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL121
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL134
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x8
	.byte	0x79
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL138
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL142
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL141
	.4byte	.LVL143-1
	.2byte	0x5
	.byte	0x3
	.4byte	quickSaveSlot
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL145
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL147-1
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL149
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL149
	.4byte	.LFE89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x6
	.byte	0x3
	.4byte	NewDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x6
	.byte	0x3
	.4byte	ReadDef1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL176
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x6
	.byte	0x3
	.4byte	EpiDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x6
	.byte	0x3
	.4byte	NewDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL182
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL185
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL192
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x6
	.byte	0x3
	.4byte	M_EndGameResponse
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL192
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198-1
	.4byte	.LFE145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL194
	.4byte	.LVL196-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL196-1
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198-1
	.4byte	.LFE145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL199
	.4byte	.LVL200-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL201-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL204-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL205-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL210
	.4byte	.LVL211-1
	.2byte	0x13
	.byte	0x3
	.4byte	set_menu_itemon
	.byte	0x6
	.byte	0x39
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	current_setup_menu
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL211
	.4byte	.LVL212-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL214
	.4byte	.LVL215-1
	.2byte	0x13
	.byte	0x3
	.4byte	set_menu_itemon
	.byte	0x6
	.byte	0x39
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	current_setup_menu
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL224
	.4byte	.LVL225-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL225-1
	.4byte	.LVL225
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL218
	.4byte	.LVL220-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL220-1
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x79
	.sleb128 -7
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL229
	.4byte	.LVL230-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL230-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL233
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL241
	.4byte	.LVL242-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL242-1
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL239
	.4byte	.LVL240-1
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL240-1
	.4byte	.LVL244
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL233
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL245
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL248
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL252
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x6
	.byte	0x3
	.4byte	LoadDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL252
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL257
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL254
	.4byte	.LVL256
	.2byte	0x6
	.byte	0x3
	.4byte	SaveDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL261
	.4byte	.LVL262-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL262-1
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL263
	.4byte	.LVL264-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL264-1
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x6
	.byte	0x3
	.4byte	M_QuickSaveResponse
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x6
	.byte	0x3
	.4byte	tempstring
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x6
	.byte	0x3
	.4byte	SaveDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x6
	.byte	0x3
	.4byte	M_QuickLoadResponse
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x6
	.byte	0x3
	.4byte	tempstring
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LFE90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL280
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL283
	.4byte	.LFE90
	.2byte	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL297
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x4
	.byte	0x73
	.sleb128 -118
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL303
	.4byte	.LVL305-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-1
	.4byte	.LVL308
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL293
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL296
	.4byte	.LVL298
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL298
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL300
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL304
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL308
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL300
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL304
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL308
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL300
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL303
	.4byte	.LVL305-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-1
	.4byte	.LVL308
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x6
	.byte	0x3
	.4byte	.LC55
	.byte	0x9f
	.4byte	.LVL302
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x6
	.byte	0x3
	.4byte	.LC46
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x6
	.byte	0x3
	.4byte	.LC54
	.byte	0x9f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x6
	.byte	0x3
	.4byte	.LC53
	.byte	0x9f
	.4byte	.LVL312
	.4byte	.LVL313
	.2byte	0x6
	.byte	0x3
	.4byte	.LC49
	.byte	0x9f
	.4byte	.LVL313
	.4byte	.LVL314
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x6
	.byte	0x3
	.4byte	.LC36
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x6
	.byte	0x3
	.4byte	.LC33
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x6
	.byte	0x3
	.4byte	.LC47
	.byte	0x9f
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x6
	.byte	0x3
	.4byte	.LC39
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x6
	.byte	0x3
	.4byte	.LC43
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x6
	.byte	0x3
	.4byte	.LC44
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x6
	.byte	0x3
	.4byte	.LC40
	.byte	0x9f
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x6
	.byte	0x3
	.4byte	.LC42
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x6
	.byte	0x3
	.4byte	.LC37
	.byte	0x9f
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x6
	.byte	0x3
	.4byte	.LC52
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LFE93
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL327
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL332
	.4byte	.LVL345
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL345
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL347
	.4byte	.LVL348
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL349
	.4byte	.LVL381
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL382
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL385
	.4byte	.LVL397
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL397
	.4byte	.LVL398
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL398
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL403
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL404
	.4byte	.LVL407
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL407
	.4byte	.LFE61
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x3
	.byte	0x8
	.byte	0xb0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL334
	.4byte	.LVL339
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL349
	.4byte	.LVL365
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL335
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL349
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL336
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL349
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL336
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL349
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL353
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL357
	.4byte	.LVL358-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL358
	.4byte	.LVL359
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL359
	.4byte	.LVL360-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL363
	.4byte	.LVL364-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL353
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL354
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL349
	.4byte	.LVL354
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL354
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL350
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL354
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL354
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL354
	.4byte	.LVL355
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL355
	.4byte	.LVL356-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL356-1
	.4byte	.LVL357
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL339
	.4byte	.LVL347
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL347
	.4byte	.LVL348
	.2byte	0x4
	.byte	0x74
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL380
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL385
	.4byte	.LVL397
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL407
	.4byte	.LFE61
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL340
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL365
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL385
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL407
	.4byte	.LVL413
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL413
	.4byte	.LVL417
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL417
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL341
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL365
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL385
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL407
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL341
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL365
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL378
	.4byte	.LVL379
	.2byte	0x2
	.byte	0x74
	.sleb128 -32
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL407
	.4byte	.LVL408
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL408
	.4byte	.LVL411
	.2byte	0x2
	.byte	0x74
	.sleb128 -32
	.4byte	.LVL417
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL342
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL365
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL385
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL407
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL417
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL344
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL344
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL344
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL368
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL377
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL385
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL393
	.4byte	.LVL394
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL390
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL392
	.4byte	.LVL395
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL386
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL407
	.4byte	.LVL410
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL420
	.4byte	.LVL421-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL419
	.4byte	.LVL422
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL419
	.4byte	.LVL422
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x3
	.byte	0x8
	.byte	0xb0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL399
	.4byte	.LVL401
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL399
	.4byte	.LVL401
	.2byte	0x3
	.byte	0x8
	.byte	0xb8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL399
	.4byte	.LVL401
	.2byte	0x2
	.byte	0x42
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL405
	.4byte	.LVL407
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL405
	.4byte	.LVL407
	.2byte	0x3
	.byte	0x8
	.byte	0xb0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL405
	.4byte	.LVL407
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL431
	.4byte	.LVL434
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL434
	.4byte	.LVL438
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL438
	.4byte	.LVL440
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL456
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL456
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL458
	.4byte	.LVL461
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL461
	.4byte	.LFE109
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL431
	.4byte	.LVL433
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL433
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL456
	.4byte	.LVL459-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL459-1
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL431
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL432
	.4byte	.LVL449
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL456
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL431
	.4byte	.LVL435-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL435-1
	.4byte	.LVL456
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL457
	.4byte	.LFE109
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL439
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL451
	.4byte	.LVL452-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL452-1
	.4byte	.LVL453
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL462
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL439
	.4byte	.LVL441
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL441
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL443
	.4byte	.LVL445
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL445
	.4byte	.LVL446
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL446
	.4byte	.LVL448
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL462
	.4byte	.LFE109
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL439
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL462
	.4byte	.LFE109
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x12
	.byte	0x3
	.4byte	mouseSensitivity_horiz
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.byte	0x63
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x12
	.byte	0x3
	.4byte	mouseSensitivity_horiz
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.byte	0x63
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0x63
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL476
	.4byte	.LVL477-1
	.2byte	0x12
	.byte	0x3
	.4byte	mouseSensitivity_horiz
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.byte	0x63
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
.LLST161:
	.4byte	.LVL477
	.4byte	.LVL478
	.2byte	0x12
	.byte	0x3
	.4byte	mouseSensitivity_vert
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.byte	0x63
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL478
	.4byte	.LVL479
	.2byte	0x12
	.byte	0x3
	.4byte	mouseSensitivity_vert
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.byte	0x63
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL479
	.4byte	.LVL480
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0x63
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL480
	.4byte	.LVL481-1
	.2byte	0x12
	.byte	0x3
	.4byte	mouseSensitivity_vert
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.byte	0x63
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
.LLST162:
	.4byte	.LVL482
	.4byte	.LVL484
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL484
	.4byte	.LFE110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL482
	.4byte	.LVL483
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL483
	.4byte	.LFE110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL487
	.4byte	.LVL489
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL489
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL487
	.4byte	.LVL488
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL488
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL492
	.4byte	.LVL493-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL493-1
	.4byte	.LVL494
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL494
	.4byte	.LVL495
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL495
	.4byte	.LFE112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL492
	.4byte	.LVL495
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL495
	.4byte	.LVL496
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL496
	.4byte	.LVL500
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL500
	.4byte	.LFE112
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL499
	.4byte	.LVL500
	.2byte	0x1e
	.byte	0x71
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x71
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x21
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL492
	.4byte	.LVL495
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL495
	.4byte	.LFE112
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL496
	.4byte	.LVL497
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL497
	.4byte	.LVL500
	.2byte	0x2
	.byte	0x71
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL501
	.4byte	.LVL502
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL502
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL509
	.4byte	.LVL511
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL511
	.4byte	.LVL513
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL513
	.4byte	.LVL514
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL514
	.4byte	.LVL520
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL520
	.4byte	.LVL528
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL528
	.4byte	.LVL530
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL530
	.4byte	.LVL531
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL531
	.4byte	.LVL532
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL532
	.4byte	.LVL533-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL533-1
	.4byte	.LVL552
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL552
	.4byte	.LVL554
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL554
	.4byte	.LVL575
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL575
	.4byte	.LVL582
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL582
	.4byte	.LVL592
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL592
	.4byte	.LVL594
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL594
	.4byte	.LVL595
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL595
	.4byte	.LVL597
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL597
	.4byte	.LVL598
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL598
	.4byte	.LVL600
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL600
	.4byte	.LVL608
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL608
	.4byte	.LVL611
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL611
	.4byte	.LVL614
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL614
	.4byte	.LVL621
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL621
	.4byte	.LVL623
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL623
	.4byte	.LVL627
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL627
	.4byte	.LVL631
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL631
	.4byte	.LVL636
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL636
	.4byte	.LVL639
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL639
	.4byte	.LVL642
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL642
	.4byte	.LVL646
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL646
	.4byte	.LVL648
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL648
	.4byte	.LVL654
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL654
	.4byte	.LVL655
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL655
	.4byte	.LVL656
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL656
	.4byte	.LVL660
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL660
	.4byte	.LVL662
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL662
	.4byte	.LVL675
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL675
	.4byte	.LVL677
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL677
	.4byte	.LVL681
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL681
	.4byte	.LVL682
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL682
	.4byte	.LVL694
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL694
	.4byte	.LVL695
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL695
	.4byte	.LVL697
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL697
	.4byte	.LVL701
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL701
	.4byte	.LVL712
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL712
	.4byte	.LVL713
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL713
	.4byte	.LVL734
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL734
	.4byte	.LVL735
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL735
	.4byte	.LVL747
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL747
	.4byte	.LVL748
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL748
	.4byte	.LVL749
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL749
	.4byte	.LVL751
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL751
	.4byte	.LVL756
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL756
	.4byte	.LVL757
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL757
	.4byte	.LVL797
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL797
	.4byte	.LVL800
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL800
	.4byte	.LVL802
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL802
	.4byte	.LFE101
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL501
	.4byte	.LVL503
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL503
	.4byte	.LVL505
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL508
	.4byte	.LVL511
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL511
	.4byte	.LVL513
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL532
	.4byte	.LVL535
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL535
	.4byte	.LVL536
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL536
	.4byte	.LVL537
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL539
	.4byte	.LVL540
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL540
	.4byte	.LVL541
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL541
	.4byte	.LVL543
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL543
	.4byte	.LVL544
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL544
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL545
	.4byte	.LVL547
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL554
	.4byte	.LVL559
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL561
	.4byte	.LVL564
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL564
	.4byte	.LVL565
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL565
	.4byte	.LVL567
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL571
	.4byte	.LVL572
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL572
	.4byte	.LVL574
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL582
	.4byte	.LVL585
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL588
	.4byte	.LVL591
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL602
	.4byte	.LVL604
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL630
	.4byte	.LVL631
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL683
	.4byte	.LVL690
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL714
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL758
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL768
	.4byte	.LVL769
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL773
	.4byte	.LVL774
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL521
	.4byte	.LVL523
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL523
	.4byte	.LVL524
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL524
	.4byte	.LVL526
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL683
	.4byte	.LVL684
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL748
	.4byte	.LVL749
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL759
	.4byte	.LVL761
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL506
	.4byte	.LVL507
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL549
	.4byte	.LVL554
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL574
	.4byte	.LVL582
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL594
	.4byte	.LVL597
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL611
	.4byte	.LVL621
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL623
	.4byte	.LVL627
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL629
	.4byte	.LVL633
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL645
	.4byte	.LVL646
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL653
	.4byte	.LVL655
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL660
	.4byte	.LVL672
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL673
	.4byte	.LVL679
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL681
	.4byte	.LVL697
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL701
	.4byte	.LVL705
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL708
	.4byte	.LVL723
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL724
	.4byte	.LVL748
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL749
	.4byte	.LFE101
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL549
	.4byte	.LVL554
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL574
	.4byte	.LVL576
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL577
	.4byte	.LVL580
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL594
	.4byte	.LVL595
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL611
	.4byte	.LVL621
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL623
	.4byte	.LVL627
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL629
	.4byte	.LVL633
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL645
	.4byte	.LVL646
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL653
	.4byte	.LVL655
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL660
	.4byte	.LVL665
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL665
	.4byte	.LVL667
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL669
	.4byte	.LVL671
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL671
	.4byte	.LVL679
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL681
	.4byte	.LVL684
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL684
	.4byte	.LVL686
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL688
	.4byte	.LVL690
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL690
	.4byte	.LVL697
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL701
	.4byte	.LVL705
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL708
	.4byte	.LVL715
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL715
	.4byte	.LVL717
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL718
	.4byte	.LVL723
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL724
	.4byte	.LVL742
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL742
	.4byte	.LVL745
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL746
	.4byte	.LVL748
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL749
	.4byte	.LVL760
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL760
	.4byte	.LVL764
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL765
	.4byte	.LVL766
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL767
	.4byte	.LFE101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL550
	.4byte	.LVL551
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL611
	.4byte	.LVL612
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL613
	.4byte	.LVL615
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL615
	.4byte	.LVL621
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL623
	.4byte	.LVL627
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL690
	.4byte	.LVL694
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL618
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL623
	.4byte	.LVL624
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL624
	.4byte	.LVL625
	.2byte	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL619
	.4byte	.LVL621
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL623
	.4byte	.LVL624
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL625
	.4byte	.LVL627
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL690
	.4byte	.LVL694
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL664
	.4byte	.LVL665
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL663
	.4byte	.LVL671
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL664
	.4byte	.LVL671
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL661
	.4byte	.LVL668
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL669
	.4byte	.LVL670
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL670
	.4byte	.LVL671
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL682
	.4byte	.LVL687
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL722
	.4byte	.LVL723
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL751
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL682
	.4byte	.LVL687
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL722
	.4byte	.LVL723
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL751
	.4byte	.LVL752
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL681
	.4byte	.LVL687
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL722
	.4byte	.LVL723
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL751
	.4byte	.LVL752
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL714
	.4byte	.LVL715
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL713
	.4byte	.LVL719
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL746
	.4byte	.LVL747
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL713
	.4byte	.LVL719
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL746
	.4byte	.LVL747
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL689
	.4byte	.LVL690
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL712
	.4byte	.LVL719
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL746
	.4byte	.LVL747
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL702
	.4byte	.LVL703
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL719
	.4byte	.LVL722
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL752
	.4byte	.LVL753
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL791
	.4byte	.LVL792
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL792
	.4byte	.LVL793-1
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL720
	.4byte	.LVL721
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL795
	.4byte	.LVL797
	.2byte	0x3
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL729
	.4byte	.LVL732
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL732
	.4byte	.LVL734
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL754
	.4byte	.LVL755
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL755
	.4byte	.LVL756
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL725
	.4byte	.LVL726
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL726
	.4byte	.LVL730
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL753
	.4byte	.LVL755
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL725
	.4byte	.LVL731
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL753
	.4byte	.LVL754
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL725
	.4byte	.LVL726
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL726
	.4byte	.LVL730
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL753
	.4byte	.LVL755
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL775
	.4byte	.LVL777
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL777
	.4byte	.LVL779
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL736
	.4byte	.LVL737
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL737
	.4byte	.LVL740
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL774
	.4byte	.LVL776
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL776
	.4byte	.LVL778-1
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL736
	.4byte	.LVL741
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL774
	.4byte	.LVL779
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL736
	.4byte	.LVL737
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL737
	.4byte	.LVL740
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL774
	.4byte	.LVL776
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL776
	.4byte	.LVL778-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL780
	.4byte	.LVL781
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL781
	.4byte	.LVL782
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL782
	.4byte	.LVL783
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL783
	.4byte	.LVL785
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL786
	.4byte	.LVL787
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL787
	.4byte	.LVL788
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL788
	.4byte	.LVL789
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL789
	.4byte	.LVL791
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL798
	.4byte	.LVL799
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL802
	.4byte	.LVL803
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL805
	.4byte	.LVL806
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL600
	.4byte	.LVL602
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL699
	.4byte	.LVL700
	.2byte	0x6
	.byte	0x3
	.4byte	SetupDef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL808
	.4byte	.LVL810
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL810
	.4byte	.LVL813
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL813
	.4byte	.LVL814
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL814
	.4byte	.LFE113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL809
	.4byte	.LVL810
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL810
	.4byte	.LVL811
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL811
	.4byte	.LVL812
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL812
	.4byte	.LVL813
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL813
	.4byte	.LFE113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL809
	.4byte	.LVL810
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL810
	.4byte	.LVL813
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL813
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL815
	.4byte	.LVL818
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL818
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL815
	.4byte	.LVL818
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL818
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL815
	.4byte	.LVL818
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL818
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL815
	.4byte	.LVL816
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL816
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL817
	.4byte	.LVL818
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL818
	.4byte	.LVL819
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL819
	.4byte	.LVL820
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL819
	.4byte	.LVL821
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL822
	.4byte	.LVL824
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL826
	.4byte	.LVL827
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL828
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL817
	.4byte	.LVL823
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL825
	.4byte	.LVL827
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL828
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL817
	.4byte	.LVL818
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL818
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL817
	.4byte	.LVL818
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL819
	.4byte	.LVL821
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL826
	.4byte	.LVL827
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL828
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL831
	.4byte	.LVL832
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL836
	.4byte	.LVL837
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL840
	.4byte	.LVL841
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL845
	.4byte	.LVL874
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL897
	.4byte	.LFE103
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL846
	.4byte	.LVL858
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL858
	.4byte	.LVL867
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL867
	.4byte	.LVL869
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL869
	.4byte	.LVL870
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL897
	.4byte	.LVL905
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL907
	.4byte	.LFE103
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL846
	.4byte	.LVL872
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL897
	.4byte	.LFE103
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL846
	.4byte	.LVL847
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL847
	.4byte	.LVL853
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL853
	.4byte	.LVL854
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL854
	.4byte	.LVL856
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL856
	.4byte	.LVL858
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL858
	.4byte	.LVL871
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL897
	.4byte	.LVL898
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL898
	.4byte	.LVL899
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL899
	.4byte	.LVL901
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL901
	.4byte	.LVL904
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL904
	.4byte	.LVL906
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL907
	.4byte	.LFE103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL843
	.4byte	.LVL847
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL847
	.4byte	.LVL857
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL897
	.4byte	.LVL898
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL907
	.4byte	.LFE103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL850
	.4byte	.LVL855
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL850
	.4byte	.LVL851
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL851
	.4byte	.LVL852-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL859
	.4byte	.LVL866-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL860
	.4byte	.LVL866-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL861
	.4byte	.LVL862
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL861
	.4byte	.LVL862
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL862
	.4byte	.LVL864
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL861
	.4byte	.LVL865
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL865
	.4byte	.LVL866-1
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LVL906
	.4byte	.LVL907
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL876
	.4byte	.LVL877
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL877
	.4byte	.LVL891
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL891
	.4byte	.LVL892-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL892
	.4byte	.LVL897
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL876
	.4byte	.LVL877
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL877
	.4byte	.LVL883
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL883
	.4byte	.LVL885
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL885
	.4byte	.LVL886
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL886
	.4byte	.LVL887
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL887
	.4byte	.LVL890
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL896
	.4byte	.LVL897
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL883
	.4byte	.LVL889
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL892
	.4byte	.LVL895
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL895
	.4byte	.LVL896
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL896
	.4byte	.LVL897
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL876
	.4byte	.LVL878
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL878
	.4byte	.LVL883
	.2byte	0x5
	.byte	0x3
	.4byte	messageString
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL877
	.4byte	.LVL878
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL878
	.4byte	.LVL879
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	messageString
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL879
	.4byte	.LVL880
	.2byte	0xb
	.byte	0x3
	.4byte	messageString
	.byte	0x6
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL880
	.4byte	.LVL881
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	messageString
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LVL877
	.4byte	.LVL878
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL878
	.4byte	.LVL882
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL877
	.4byte	.LVL883
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL885
	.4byte	.LVL886
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL887
	.4byte	.LVL890
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL908
	.4byte	.LVL910
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL910
	.4byte	.LVL916
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL916
	.4byte	.LVL917-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL917-1
	.4byte	.LVL917
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL917
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL908
	.4byte	.LVL911
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL911
	.4byte	.LVL916
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL916
	.4byte	.LVL917-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL917-1
	.4byte	.LVL917
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL917
	.4byte	.LVL921
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL921
	.4byte	.LVL926
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LVL927
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL927
	.4byte	.LFE115
	.2byte	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL908
	.4byte	.LVL912
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL912
	.4byte	.LVL913-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL913-1
	.4byte	.LFE115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL908
	.4byte	.LVL913-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL913-1
	.4byte	.LVL916
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL916
	.4byte	.LVL917-1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL917-1
	.4byte	.LVL917
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL917
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LVL909
	.4byte	.LVL912
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL912
	.4byte	.LVL913-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL913-1
	.4byte	.LFE115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST249:
	.4byte	.LVL914
	.4byte	.LVL915
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL917
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LVL917
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST252:
	.4byte	.LVL917
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST253:
	.4byte	.LVL917
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST254:
	.4byte	.LVL917
	.4byte	.LVL921
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL921
	.4byte	.LVL926
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LVL927
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL927
	.4byte	.LFE115
	.2byte	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST255:
	.4byte	.LVL919
	.4byte	.LVL925
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL925
	.4byte	.LVL926
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST256:
	.4byte	.LVL920
	.4byte	.LVL921
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST257:
	.4byte	.LVL920
	.4byte	.LVL921
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL921
	.4byte	.LVL923
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST258:
	.4byte	.LVL920
	.4byte	.LVL924
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL926
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST259:
	.4byte	.LVL956
	.4byte	.LVL959
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST260:
	.4byte	.LVL957
	.4byte	.LVL959
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST261:
	.4byte	.LVL999
	.4byte	.LVL1000
	.2byte	0x6
	.byte	0x3
	.4byte	helpstrings
	.byte	0x9f
	.4byte	.LVL1000
	.4byte	.LVL1003
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL1003
	.4byte	.LVL1004
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1004
	.4byte	.LVL1005
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1005
	.4byte	.LVL1008
	.2byte	0x3
	.byte	0x74
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL1008
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST262:
	.4byte	.LVL1011
	.4byte	.LVL1012
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1017
	.4byte	.LVL1018
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1018
	.4byte	.LVL1019
	.2byte	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST263:
	.4byte	.LVL1012
	.4byte	.LVL1018
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST264:
	.4byte	.LVL1014
	.4byte	.LVL1015
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST265:
	.4byte	.LVL1009
	.4byte	.LVL1010
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB292
	.4byte	.LBE292
	.4byte	.LBB296
	.4byte	.LBE296
	.4byte	.LBB297
	.4byte	.LBE297
	.4byte	0
	.4byte	0
	.4byte	.LBB298
	.4byte	.LBE298
	.4byte	.LBB303
	.4byte	.LBE303
	.4byte	.LBB304
	.4byte	.LBE304
	.4byte	.LBB305
	.4byte	.LBE305
	.4byte	0
	.4byte	0
	.4byte	.LBB306
	.4byte	.LBE306
	.4byte	.LBB311
	.4byte	.LBE311
	.4byte	.LBB312
	.4byte	.LBE312
	.4byte	.LBB313
	.4byte	.LBE313
	.4byte	0
	.4byte	0
	.4byte	.LBB314
	.4byte	.LBE314
	.4byte	.LBB319
	.4byte	.LBE319
	.4byte	.LBB320
	.4byte	.LBE320
	.4byte	.LBB321
	.4byte	.LBE321
	.4byte	0
	.4byte	0
	.4byte	.LBB322
	.4byte	.LBE322
	.4byte	.LBB327
	.4byte	.LBE327
	.4byte	.LBB328
	.4byte	.LBE328
	.4byte	.LBB329
	.4byte	.LBE329
	.4byte	0
	.4byte	0
	.4byte	.LBB330
	.4byte	.LBE330
	.4byte	.LBB335
	.4byte	.LBE335
	.4byte	.LBB336
	.4byte	.LBE336
	.4byte	.LBB337
	.4byte	.LBE337
	.4byte	0
	.4byte	0
	.4byte	.LBB338
	.4byte	.LBE338
	.4byte	.LBB343
	.4byte	.LBE343
	.4byte	.LBB344
	.4byte	.LBE344
	.4byte	.LBB345
	.4byte	.LBE345
	.4byte	0
	.4byte	0
	.4byte	.LBB346
	.4byte	.LBE346
	.4byte	.LBB351
	.4byte	.LBE351
	.4byte	.LBB352
	.4byte	.LBE352
	.4byte	.LBB353
	.4byte	.LBE353
	.4byte	0
	.4byte	0
	.4byte	.LBB354
	.4byte	.LBE354
	.4byte	.LBB359
	.4byte	.LBE359
	.4byte	.LBB360
	.4byte	.LBE360
	.4byte	.LBB361
	.4byte	.LBE361
	.4byte	0
	.4byte	0
	.4byte	.LBB362
	.4byte	.LBE362
	.4byte	.LBB366
	.4byte	.LBE366
	.4byte	.LBB367
	.4byte	.LBE367
	.4byte	0
	.4byte	0
	.4byte	.LBB368
	.4byte	.LBE368
	.4byte	.LBB369
	.4byte	.LBE369
	.4byte	0
	.4byte	0
	.4byte	.LBB370
	.4byte	.LBE370
	.4byte	.LBB371
	.4byte	.LBE371
	.4byte	.LBB372
	.4byte	.LBE372
	.4byte	.LBB373
	.4byte	.LBE373
	.4byte	0
	.4byte	0
	.4byte	.LBB380
	.4byte	.LBE380
	.4byte	.LBB385
	.4byte	.LBE385
	.4byte	.LBB386
	.4byte	.LBE386
	.4byte	.LBB387
	.4byte	.LBE387
	.4byte	0
	.4byte	0
	.4byte	.LBB388
	.4byte	.LBE388
	.4byte	.LBB392
	.4byte	.LBE392
	.4byte	.LBB393
	.4byte	.LBE393
	.4byte	0
	.4byte	0
	.4byte	.LBB394
	.4byte	.LBE394
	.4byte	.LBB397
	.4byte	.LBE397
	.4byte	0
	.4byte	0
	.4byte	.LBB410
	.4byte	.LBE410
	.4byte	.LBB413
	.4byte	.LBE413
	.4byte	0
	.4byte	0
	.4byte	.LBB420
	.4byte	.LBE420
	.4byte	.LBB427
	.4byte	.LBE427
	.4byte	0
	.4byte	0
	.4byte	.LBB422
	.4byte	.LBE422
	.4byte	.LBB425
	.4byte	.LBE425
	.4byte	0
	.4byte	0
	.4byte	.LBB432
	.4byte	.LBE432
	.4byte	.LBB437
	.4byte	.LBE437
	.4byte	0
	.4byte	0
	.4byte	.LBB444
	.4byte	.LBE444
	.4byte	.LBB455
	.4byte	.LBE455
	.4byte	0
	.4byte	0
	.4byte	.LBB446
	.4byte	.LBE446
	.4byte	.LBB453
	.4byte	.LBE453
	.4byte	0
	.4byte	0
	.4byte	.LBB448
	.4byte	.LBE448
	.4byte	.LBB451
	.4byte	.LBE451
	.4byte	0
	.4byte	0
	.4byte	.LBB460
	.4byte	.LBE460
	.4byte	.LBB469
	.4byte	.LBE469
	.4byte	0
	.4byte	0
	.4byte	.LBB462
	.4byte	.LBE462
	.4byte	.LBB466
	.4byte	.LBE466
	.4byte	.LBB467
	.4byte	.LBE467
	.4byte	0
	.4byte	0
	.4byte	.LBB474
	.4byte	.LBE474
	.4byte	.LBB481
	.4byte	.LBE481
	.4byte	0
	.4byte	0
	.4byte	.LBB476
	.4byte	.LBE476
	.4byte	.LBB479
	.4byte	.LBE479
	.4byte	0
	.4byte	0
	.4byte	.LBB492
	.4byte	.LBE492
	.4byte	.LBB495
	.4byte	.LBE495
	.4byte	0
	.4byte	0
	.4byte	.LBB498
	.4byte	.LBE498
	.4byte	.LBB504
	.4byte	.LBE504
	.4byte	.LBB509
	.4byte	.LBE509
	.4byte	.LBB511
	.4byte	.LBE511
	.4byte	.LBB513
	.4byte	.LBE513
	.4byte	0
	.4byte	0
	.4byte	.LBB505
	.4byte	.LBE505
	.4byte	.LBB510
	.4byte	.LBE510
	.4byte	.LBB512
	.4byte	.LBE512
	.4byte	0
	.4byte	0
	.4byte	.LBB536
	.4byte	.LBE536
	.4byte	.LBB540
	.4byte	.LBE540
	.4byte	.LBB541
	.4byte	.LBE541
	.4byte	0
	.4byte	0
	.4byte	.LBB542
	.4byte	.LBE542
	.4byte	.LBB546
	.4byte	.LBE546
	.4byte	.LBB549
	.4byte	.LBE549
	.4byte	0
	.4byte	0
	.4byte	.LBB552
	.4byte	.LBE552
	.4byte	.LBB556
	.4byte	.LBE556
	.4byte	.LBB557
	.4byte	.LBE557
	.4byte	0
	.4byte	0
	.4byte	.LBB570
	.4byte	.LBE570
	.4byte	.LBB574
	.4byte	.LBE574
	.4byte	.LBB575
	.4byte	.LBE575
	.4byte	0
	.4byte	0
	.4byte	.LBB578
	.4byte	.LBE578
	.4byte	.LBB581
	.4byte	.LBE581
	.4byte	0
	.4byte	0
	.4byte	.LBB590
	.4byte	.LBE590
	.4byte	.LBB594
	.4byte	.LBE594
	.4byte	.LBB595
	.4byte	.LBE595
	.4byte	0
	.4byte	0
	.4byte	.LBB598
	.4byte	.LBE598
	.4byte	.LBB602
	.4byte	.LBE602
	.4byte	.LBB603
	.4byte	.LBE603
	.4byte	0
	.4byte	0
	.4byte	.LBB604
	.4byte	.LBE604
	.4byte	.LBB608
	.4byte	.LBE608
	.4byte	.LBB609
	.4byte	.LBE609
	.4byte	0
	.4byte	0
	.4byte	.LBB610
	.4byte	.LBE610
	.4byte	.LBB611
	.4byte	.LBE611
	.4byte	.LBB612
	.4byte	.LBE612
	.4byte	0
	.4byte	0
	.4byte	.LBB623
	.4byte	.LBE623
	.4byte	.LBB630
	.4byte	.LBE630
	.4byte	0
	.4byte	0
	.4byte	.LBB625
	.4byte	.LBE625
	.4byte	.LBB628
	.4byte	.LBE628
	.4byte	0
	.4byte	0
	.4byte	.LBB639
	.4byte	.LBE639
	.4byte	.LBB646
	.4byte	.LBE646
	.4byte	0
	.4byte	0
	.4byte	.LBB641
	.4byte	.LBE641
	.4byte	.LBB644
	.4byte	.LBE644
	.4byte	0
	.4byte	0
	.4byte	.LBB647
	.4byte	.LBE647
	.4byte	.LBB651
	.4byte	.LBE651
	.4byte	.LBB652
	.4byte	.LBE652
	.4byte	0
	.4byte	0
	.4byte	.LBB671
	.4byte	.LBE671
	.4byte	.LBB676
	.4byte	.LBE676
	.4byte	0
	.4byte	0
	.4byte	.LBB692
	.4byte	.LBE692
	.4byte	.LBB696
	.4byte	.LBE696
	.4byte	.LBB697
	.4byte	.LBE697
	.4byte	0
	.4byte	0
	.4byte	.LBB700
	.4byte	.LBE700
	.4byte	.LBB703
	.4byte	.LBE703
	.4byte	0
	.4byte	0
	.4byte	.LBB706
	.4byte	.LBE706
	.4byte	.LBB710
	.4byte	.LBE710
	.4byte	.LBB711
	.4byte	.LBE711
	.4byte	0
	.4byte	0
	.4byte	.LBB744
	.4byte	.LBE744
	.4byte	.LBB747
	.4byte	.LBE747
	.4byte	0
	.4byte	0
	.4byte	.LBB748
	.4byte	.LBE748
	.4byte	.LBB757
	.4byte	.LBE757
	.4byte	.LBB777
	.4byte	.LBE777
	.4byte	.LBB779
	.4byte	.LBE779
	.4byte	0
	.4byte	0
	.4byte	.LBB758
	.4byte	.LBE758
	.4byte	.LBB778
	.4byte	.LBE778
	.4byte	.LBB784
	.4byte	.LBE784
	.4byte	.LBB789
	.4byte	.LBE789
	.4byte	.LBB794
	.4byte	.LBE794
	.4byte	0
	.4byte	0
	.4byte	.LBB763
	.4byte	.LBE763
	.4byte	.LBB767
	.4byte	.LBE767
	.4byte	0
	.4byte	0
	.4byte	.LBB764
	.4byte	.LBE764
	.4byte	.LBB766
	.4byte	.LBE766
	.4byte	0
	.4byte	0
	.4byte	.LBB769
	.4byte	.LBE769
	.4byte	.LBB772
	.4byte	.LBE772
	.4byte	0
	.4byte	0
	.4byte	.LBB780
	.4byte	.LBE780
	.4byte	.LBB783
	.4byte	.LBE783
	.4byte	0
	.4byte	0
	.4byte	.LBB785
	.4byte	.LBE785
	.4byte	.LBB788
	.4byte	.LBE788
	.4byte	0
	.4byte	0
	.4byte	.LBB790
	.4byte	.LBE790
	.4byte	.LBB793
	.4byte	.LBE793
	.4byte	0
	.4byte	0
	.4byte	.LBB795
	.4byte	.LBE795
	.4byte	.LBB799
	.4byte	.LBE799
	.4byte	.LBB800
	.4byte	.LBE800
	.4byte	0
	.4byte	0
	.4byte	.LBB801
	.4byte	.LBE801
	.4byte	.LBB802
	.4byte	.LBE802
	.4byte	0
	.4byte	0
	.4byte	.LBB849
	.4byte	.LBE849
	.4byte	.LBB896
	.4byte	.LBE896
	.4byte	.LBB899
	.4byte	.LBE899
	.4byte	.LBB908
	.4byte	.LBE908
	.4byte	.LBB911
	.4byte	.LBE911
	.4byte	.LBB912
	.4byte	.LBE912
	.4byte	.LBB913
	.4byte	.LBE913
	.4byte	.LBB914
	.4byte	.LBE914
	.4byte	.LBB915
	.4byte	.LBE915
	.4byte	.LBB922
	.4byte	.LBE922
	.4byte	.LBB927
	.4byte	.LBE927
	.4byte	.LBB928
	.4byte	.LBE928
	.4byte	.LBB929
	.4byte	.LBE929
	.4byte	.LBB930
	.4byte	.LBE930
	.4byte	0
	.4byte	0
	.4byte	.LBB852
	.4byte	.LBE852
	.4byte	.LBB861
	.4byte	.LBE861
	.4byte	.LBB866
	.4byte	.LBE866
	.4byte	0
	.4byte	0
	.4byte	.LBB854
	.4byte	.LBE854
	.4byte	.LBB856
	.4byte	.LBE856
	.4byte	.LBB857
	.4byte	.LBE857
	.4byte	.LBB858
	.4byte	.LBE858
	.4byte	0
	.4byte	0
	.4byte	.LBB863
	.4byte	.LBE863
	.4byte	.LBB873
	.4byte	.LBE873
	.4byte	.LBB885
	.4byte	.LBE885
	.4byte	0
	.4byte	0
	.4byte	.LBB864
	.4byte	.LBE864
	.4byte	.LBB865
	.4byte	.LBE865
	.4byte	.LBB871
	.4byte	.LBE871
	.4byte	.LBB884
	.4byte	.LBE884
	.4byte	0
	.4byte	0
	.4byte	.LBB867
	.4byte	.LBE867
	.4byte	.LBB872
	.4byte	.LBE872
	.4byte	.LBB886
	.4byte	.LBE886
	.4byte	.LBB891
	.4byte	.LBE891
	.4byte	0
	.4byte	0
	.4byte	.LBB869
	.4byte	.LBE869
	.4byte	.LBB870
	.4byte	.LBE870
	.4byte	0
	.4byte	0
	.4byte	.LBB874
	.4byte	.LBE874
	.4byte	.LBB887
	.4byte	.LBE887
	.4byte	0
	.4byte	0
	.4byte	.LBB877
	.4byte	.LBE877
	.4byte	.LBB888
	.4byte	.LBE888
	.4byte	0
	.4byte	0
	.4byte	.LBB878
	.4byte	.LBE878
	.4byte	.LBB881
	.4byte	.LBE881
	.4byte	0
	.4byte	0
	.4byte	.LBB892
	.4byte	.LBE892
	.4byte	.LBB893
	.4byte	.LBE893
	.4byte	0
	.4byte	0
	.4byte	.LBB900
	.4byte	.LBE900
	.4byte	.LBB904
	.4byte	.LBE904
	.4byte	.LBB905
	.4byte	.LBE905
	.4byte	0
	.4byte	0
	.4byte	.LBB916
	.4byte	.LBE916
	.4byte	.LBB920
	.4byte	.LBE920
	.4byte	.LBB921
	.4byte	.LBE921
	.4byte	0
	.4byte	0
	.4byte	.LBB931
	.4byte	.LBE931
	.4byte	.LBB932
	.4byte	.LBE932
	.4byte	0
	.4byte	0
	.4byte	.LBB936
	.4byte	.LBE936
	.4byte	.LBB937
	.4byte	.LBE937
	.4byte	0
	.4byte	0
	.4byte	.LBB939
	.4byte	.LBE939
	.4byte	.LBB958
	.4byte	.LBE958
	.4byte	.LBB961
	.4byte	.LBE961
	.4byte	0
	.4byte	0
	.4byte	.LBB942
	.4byte	.LBE942
	.4byte	.LBB949
	.4byte	.LBE949
	.4byte	0
	.4byte	0
	.4byte	.LBB943
	.4byte	.LBE943
	.4byte	.LBB947
	.4byte	.LBE947
	.4byte	.LBB948
	.4byte	.LBE948
	.4byte	0
	.4byte	0
	.4byte	.LBB950
	.4byte	.LBE950
	.4byte	.LBB959
	.4byte	.LBE959
	.4byte	.LBB960
	.4byte	.LBE960
	.4byte	0
	.4byte	0
	.4byte	.LBB951
	.4byte	.LBE951
	.4byte	.LBB954
	.4byte	.LBE954
	.4byte	0
	.4byte	0
	.4byte	.LBB955
	.4byte	.LBE955
	.4byte	.LBB956
	.4byte	.LBE956
	.4byte	.LBB957
	.4byte	.LBE957
	.4byte	0
	.4byte	0
	.4byte	.LBB972
	.4byte	.LBE972
	.4byte	.LBB975
	.4byte	.LBE975
	.4byte	0
	.4byte	0
	.4byte	.LBB976
	.4byte	.LBE976
	.4byte	.LBB977
	.4byte	.LBE977
	.4byte	0
	.4byte	0
	.4byte	.LBB978
	.4byte	.LBE978
	.4byte	.LBB991
	.4byte	.LBE991
	.4byte	0
	.4byte	0
	.4byte	.LBB980
	.4byte	.LBE980
	.4byte	.LBB986
	.4byte	.LBE986
	.4byte	.LBB987
	.4byte	.LBE987
	.4byte	.LBB988
	.4byte	.LBE988
	.4byte	.LBB989
	.4byte	.LBE989
	.4byte	0
	.4byte	0
	.4byte	.LBB992
	.4byte	.LBE992
	.4byte	.LBB998
	.4byte	.LBE998
	.4byte	.LBB999
	.4byte	.LBE999
	.4byte	.LBB1000
	.4byte	.LBE1000
	.4byte	.LBB1001
	.4byte	.LBE1001
	.4byte	0
	.4byte	0
	.4byte	.LBB1002
	.4byte	.LBE1002
	.4byte	.LBB1008
	.4byte	.LBE1008
	.4byte	.LBB1009
	.4byte	.LBE1009
	.4byte	.LBB1010
	.4byte	.LBE1010
	.4byte	.LBB1011
	.4byte	.LBE1011
	.4byte	0
	.4byte	0
	.4byte	.LBB1012
	.4byte	.LBE1012
	.4byte	.LBB1018
	.4byte	.LBE1018
	.4byte	.LBB1019
	.4byte	.LBE1019
	.4byte	.LBB1020
	.4byte	.LBE1020
	.4byte	.LBB1021
	.4byte	.LBE1021
	.4byte	0
	.4byte	0
	.4byte	.LBB1026
	.4byte	.LBE1026
	.4byte	.LBB1032
	.4byte	.LBE1032
	.4byte	.LBB1033
	.4byte	.LBE1033
	.4byte	.LBB1034
	.4byte	.LBE1034
	.4byte	.LBB1035
	.4byte	.LBE1035
	.4byte	0
	.4byte	0
	.4byte	.LBB1038
	.4byte	.LBE1038
	.4byte	.LBB1044
	.4byte	.LBE1044
	.4byte	.LBB1045
	.4byte	.LBE1045
	.4byte	.LBB1046
	.4byte	.LBE1046
	.4byte	.LBB1047
	.4byte	.LBE1047
	.4byte	0
	.4byte	0
	.4byte	.LBB1048
	.4byte	.LBE1048
	.4byte	.LBB1054
	.4byte	.LBE1054
	.4byte	.LBB1055
	.4byte	.LBE1055
	.4byte	.LBB1056
	.4byte	.LBE1056
	.4byte	.LBB1057
	.4byte	.LBE1057
	.4byte	0
	.4byte	0
	.4byte	.LBB1058
	.4byte	.LBE1058
	.4byte	.LBB1064
	.4byte	.LBE1064
	.4byte	.LBB1065
	.4byte	.LBE1065
	.4byte	.LBB1066
	.4byte	.LBE1066
	.4byte	.LBB1067
	.4byte	.LBE1067
	.4byte	0
	.4byte	0
	.4byte	.LBB1068
	.4byte	.LBE1068
	.4byte	.LBB1074
	.4byte	.LBE1074
	.4byte	.LBB1075
	.4byte	.LBE1075
	.4byte	.LBB1076
	.4byte	.LBE1076
	.4byte	.LBB1077
	.4byte	.LBE1077
	.4byte	0
	.4byte	0
	.4byte	.LBB1078
	.4byte	.LBE1078
	.4byte	.LBB1084
	.4byte	.LBE1084
	.4byte	.LBB1085
	.4byte	.LBE1085
	.4byte	.LBB1086
	.4byte	.LBE1086
	.4byte	.LBB1087
	.4byte	.LBE1087
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF2023:
	.ascii	"newg_end\000"
.LASF7:
	.ascii	"long long int\000"
.LASF1725:
	.ascii	"comp_666\000"
.LASF2269:
	.ascii	"M_DrawSelCell\000"
.LASF2159:
	.ascii	"cr_adcr\000"
.LASF326:
	.ascii	"SPR_LAUN\000"
.LASF956:
	.ascii	"S_BOS2_RAISE1\000"
.LASF957:
	.ascii	"S_BOS2_RAISE2\000"
.LASF958:
	.ascii	"S_BOS2_RAISE3\000"
.LASF959:
	.ascii	"S_BOS2_RAISE4\000"
.LASF960:
	.ascii	"S_BOS2_RAISE5\000"
.LASF961:
	.ascii	"S_BOS2_RAISE6\000"
.LASF962:
	.ascii	"S_BOS2_RAISE7\000"
.LASF2220:
	.ascii	"M_ChatStrings\000"
.LASF1621:
	.ascii	"momx\000"
.LASF1622:
	.ascii	"momy\000"
.LASF1623:
	.ascii	"momz\000"
.LASF2049:
	.ascii	"mouse_vert\000"
.LASF1572:
	.ascii	"MT_STEALTHFATSO\000"
.LASF275:
	.ascii	"SPR_SARG\000"
.LASF1873:
	.ascii	"sfx_posit1\000"
.LASF1874:
	.ascii	"sfx_posit2\000"
.LASF1875:
	.ascii	"sfx_posit3\000"
.LASF324:
	.ascii	"SPR_MGUN\000"
.LASF721:
	.ascii	"S_SKEL_PAIN\000"
.LASF2514:
	.ascii	"quitsounds\000"
.LASF1746:
	.ascii	"data1\000"
.LASF1642:
	.ascii	"touching_sectorlist\000"
.LASF1748:
	.ascii	"data3\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF1363:
	.ascii	"S_DOGS_PAIN\000"
.LASF1350:
	.ascii	"S_DOGS_STND\000"
.LASF1567:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1430:
	.ascii	"MT_TRACER\000"
.LASF1487:
	.ascii	"MT_CLIP\000"
.LASF79:
	.ascii	"_freelist\000"
.LASF2333:
	.ascii	"snd_SfxVolume\000"
.LASF1010:
	.ascii	"S_BSPI_STND\000"
.LASF2064:
	.ascii	"weap_bobbing\000"
.LASF358:
	.ascii	"SPR_TGRN\000"
.LASF424:
	.ascii	"S_DSNR2\000"
.LASF1620:
	.ascii	"dropoffz\000"
.LASF2322:
	.ascii	"setup_screens\000"
.LASF1331:
	.ascii	"S_HANGTSKULL\000"
.LASF44:
	.ascii	"_fns\000"
.LASF2335:
	.ascii	"automapmode\000"
.LASF1082:
	.ascii	"S_PAIN_RUN3\000"
.LASF422:
	.ascii	"S_DSGUN10\000"
.LASF1181:
	.ascii	"S_ARM1A\000"
.LASF1964:
	.ascii	"maxvalue\000"
.LASF236:
	.ascii	"SPR_TROO\000"
.LASF121:
	.ascii	"PU_SOUND\000"
.LASF2562:
	.ascii	"keys_settings\000"
.LASF108:
	.ascii	"_getdate_err\000"
.LASF1246:
	.ascii	"S_PVIS\000"
.LASF1729:
	.ascii	"COMP_TOTAL\000"
.LASF1615:
	.ascii	"bnext\000"
.LASF453:
	.ascii	"S_PLASMADOWN\000"
.LASF1240:
	.ascii	"S_PMAP\000"
.LASF435:
	.ascii	"S_MISSILE\000"
.LASF2384:
	.ascii	"key_help\000"
.LASF455:
	.ascii	"S_PLASMA1\000"
.LASF456:
	.ascii	"S_PLASMA2\000"
.LASF855:
	.ascii	"S_SARG_RUN1\000"
.LASF856:
	.ascii	"S_SARG_RUN2\000"
.LASF857:
	.ascii	"S_SARG_RUN3\000"
.LASF858:
	.ascii	"S_SARG_RUN4\000"
.LASF859:
	.ascii	"S_SARG_RUN5\000"
.LASF860:
	.ascii	"S_SARG_RUN6\000"
.LASF861:
	.ascii	"S_SARG_RUN7\000"
.LASF862:
	.ascii	"S_SARG_RUN8\000"
.LASF1696:
	.ascii	"buttons\000"
.LASF2012:
	.ascii	"read1_end\000"
.LASF2057:
	.ascii	"set_enemy\000"
.LASF78:
	.ascii	"_p5s\000"
.LASF2454:
	.ascii	"mapcolor_me\000"
.LASF294:
	.ascii	"SPR_BEXP\000"
.LASF1826:
	.ascii	"CR_BROWN\000"
.LASF201:
	.ascii	"ultdoom_compatibility\000"
.LASF437:
	.ascii	"S_MISSILEUP\000"
.LASF1850:
	.ascii	"sfx_sawhit\000"
.LASF820:
	.ascii	"S_TROO_STND\000"
.LASF1849:
	.ascii	"sfx_sawful\000"
.LASF2263:
	.ascii	"M_DrawSound\000"
.LASF813:
	.ascii	"S_CPOS_RAISE1\000"
.LASF814:
	.ascii	"S_CPOS_RAISE2\000"
.LASF815:
	.ascii	"S_CPOS_RAISE3\000"
.LASF816:
	.ascii	"S_CPOS_RAISE4\000"
.LASF817:
	.ascii	"S_CPOS_RAISE5\000"
.LASF818:
	.ascii	"S_CPOS_RAISE6\000"
.LASF819:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1835:
	.ascii	"V_DrawNumPatch_f\000"
.LASF1845:
	.ascii	"sfx_plasma\000"
.LASF1614:
	.ascii	"sprev\000"
.LASF26:
	.ascii	"_Bigint\000"
.LASF1661:
	.ascii	"readyweapon\000"
.LASF1427:
	.ascii	"MT_VILE\000"
.LASF1595:
	.ascii	"height\000"
.LASF1214:
	.ascii	"S_RSKULL\000"
.LASF1933:
	.ascii	"sfx_bossit\000"
.LASF1765:
	.ascii	"soundtraversed\000"
.LASF1945:
	.ascii	"sfx_radio\000"
.LASF710:
	.ascii	"S_SKEL_RUN10\000"
.LASF1321:
	.ascii	"S_GTORCHSHRT2\000"
.LASF23:
	.ascii	"_maxwds\000"
.LASF1323:
	.ascii	"S_GTORCHSHRT4\000"
.LASF1316:
	.ascii	"S_BTORCHSHRT\000"
.LASF2488:
	.ascii	"MainMenu\000"
.LASF1579:
	.ascii	"spawnstate\000"
.LASF511:
	.ascii	"S_TFOG2\000"
.LASF2519:
	.ascii	"mouse_e\000"
.LASF1212:
	.ascii	"S_BSKULL\000"
.LASF1851:
	.ascii	"sfx_rlaunc\000"
.LASF1345:
	.ascii	"S_TNT1\000"
.LASF1958:
	.ascii	"name\000"
.LASF1784:
	.ascii	"floor_yoffs\000"
.LASF268:
	.ascii	"SPR_FIRE\000"
.LASF247:
	.ascii	"SPR_SAWG\000"
.LASF119:
	.ascii	"PU_FREE\000"
.LASF1025:
	.ascii	"S_BSPI_ATK1\000"
.LASF1026:
	.ascii	"S_BSPI_ATK2\000"
.LASF1027:
	.ascii	"S_BSPI_ATK3\000"
.LASF1028:
	.ascii	"S_BSPI_ATK4\000"
.LASF195:
	.ascii	"boolean\000"
.LASF2363:
	.ascii	"key_menu_up\000"
.LASF1092:
	.ascii	"S_PAIN_DIE1\000"
.LASF1093:
	.ascii	"S_PAIN_DIE2\000"
.LASF1094:
	.ascii	"S_PAIN_DIE3\000"
.LASF1095:
	.ascii	"S_PAIN_DIE4\000"
.LASF1096:
	.ascii	"S_PAIN_DIE5\000"
.LASF1097:
	.ascii	"S_PAIN_DIE6\000"
.LASF2423:
	.ascii	"mousebforward\000"
.LASF332:
	.ascii	"SPR_GOR1\000"
.LASF339:
	.ascii	"SPR_GOR2\000"
.LASF340:
	.ascii	"SPR_GOR3\000"
.LASF341:
	.ascii	"SPR_GOR4\000"
.LASF342:
	.ascii	"SPR_GOR5\000"
.LASF1157:
	.ascii	"S_BRAIN_PAIN\000"
.LASF1889:
	.ascii	"sfx_sgtatk\000"
.LASF2178:
	.ascii	"M_EndGameResponse\000"
.LASF442:
	.ascii	"S_MISSILEFLASH2\000"
.LASF2197:
	.ascii	"M_StringHeight\000"
.LASF396:
	.ascii	"S_SGUN\000"
.LASF1674:
	.ascii	"damagecount\000"
.LASF349:
	.ascii	"SPR_CBRA\000"
.LASF2077:
	.ascii	"weap_toggle\000"
.LASF2629:
	.ascii	"strncmp\000"
.LASF1068:
	.ascii	"S_CYBER_PAIN\000"
.LASF1155:
	.ascii	"S_KEENPAIN2\000"
.LASF378:
	.ascii	"S_NULL\000"
.LASF2443:
	.ascii	"s_MSGOFF\000"
.LASF1437:
	.ascii	"MT_SHADOWS\000"
.LASF2089:
	.ascii	"enem_end\000"
.LASF1956:
	.ascii	"setup_group\000"
.LASF2372:
	.ascii	"key_strafe\000"
.LASF1731:
	.ascii	"automapmode_e\000"
.LASF1394:
	.ascii	"S_BSKUL_STND\000"
.LASF452:
	.ascii	"S_PLASMA\000"
.LASF1677:
	.ascii	"extralight\000"
.LASF1425:
	.ascii	"MT_POSSESSED\000"
.LASF1163:
	.ascii	"S_BRAINEYESEE\000"
.LASF2337:
	.ascii	"consoleplayer\000"
.LASF1742:
	.ascii	"ev_keyup\000"
.LASF927:
	.ascii	"S_BOSS_RAISE1\000"
.LASF928:
	.ascii	"S_BOSS_RAISE2\000"
.LASF221:
	.ascii	"VPT_FLIP\000"
.LASF930:
	.ascii	"S_BOSS_RAISE4\000"
.LASF931:
	.ascii	"S_BOSS_RAISE5\000"
.LASF932:
	.ascii	"S_BOSS_RAISE6\000"
.LASF933:
	.ascii	"S_BOSS_RAISE7\000"
.LASF52:
	.ascii	"_cookie\000"
.LASF830:
	.ascii	"S_TROO_ATK1\000"
.LASF831:
	.ascii	"S_TROO_ATK2\000"
.LASF832:
	.ascii	"S_TROO_ATK3\000"
.LASF37:
	.ascii	"_on_exit_args\000"
.LASF1817:
	.ascii	"width\000"
.LASF2396:
	.ascii	"key_weapontoggle\000"
.LASF1871:
	.ascii	"sfx_oof\000"
.LASF2193:
	.ascii	"M_EndGame\000"
.LASF2504:
	.ascii	"load_e\000"
.LASF1768:
	.ascii	"soundorg\000"
.LASF167:
	.ascii	"NUMWEAPONS\000"
.LASF2236:
	.ascii	"slot\000"
.LASF2440:
	.ascii	"s_NIGHTMARE\000"
.LASF1180:
	.ascii	"S_ARM1\000"
.LASF1182:
	.ascii	"S_ARM2\000"
.LASF2317:
	.ascii	"gltexformats\000"
.LASF2564:
	.ascii	"weap_settings1\000"
.LASF1635:
	.ascii	"player\000"
.LASF1838:
	.ascii	"sfx_pistol\000"
.LASF2011:
	.ascii	"rdthsempty1\000"
.LASF2013:
	.ascii	"rdthsempty2\000"
.LASF2417:
	.ascii	"key_map_clear\000"
.LASF1965:
	.ascii	"setupscreen\000"
.LASF1908:
	.ascii	"sfx_vildth\000"
.LASF1218:
	.ascii	"S_STIM\000"
.LASF2361:
	.ascii	"key_menu_right\000"
.LASF317:
	.ascii	"SPR_BROK\000"
.LASF1843:
	.ascii	"sfx_dbcls\000"
.LASF1207:
	.ascii	"S_BKEY2\000"
.LASF2624:
	.ascii	"strncpy\000"
.LASF2199:
	.ascii	"patch\000"
.LASF605:
	.ascii	"S_SPOS_XDIE1\000"
.LASF606:
	.ascii	"S_SPOS_XDIE2\000"
.LASF607:
	.ascii	"S_SPOS_XDIE3\000"
.LASF608:
	.ascii	"S_SPOS_XDIE4\000"
.LASF609:
	.ascii	"S_SPOS_XDIE5\000"
.LASF610:
	.ascii	"S_SPOS_XDIE6\000"
.LASF611:
	.ascii	"S_SPOS_XDIE7\000"
.LASF612:
	.ascii	"S_SPOS_XDIE8\000"
.LASF613:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1749:
	.ascii	"event_t\000"
.LASF1968:
	.ascii	"setup_menu_s\000"
.LASF1975:
	.ascii	"setup_menu_t\000"
.LASF2355:
	.ascii	"hud_displayed\000"
.LASF1270:
	.ascii	"S_DEADTORSO\000"
.LASF246:
	.ascii	"SPR_MISF\000"
.LASF245:
	.ascii	"SPR_MISG\000"
.LASF258:
	.ascii	"SPR_MISL\000"
.LASF2081:
	.ascii	"enem_backing\000"
.LASF2339:
	.ascii	"demoplayback\000"
.LASF1833:
	.ascii	"CR_LIMIT\000"
.LASF2244:
	.ascii	"M_MouseHoriz\000"
.LASF2229:
	.ascii	"M_VerifyForcedLoadGame\000"
.LASF1164:
	.ascii	"S_BRAINEYE1\000"
.LASF2082:
	.ascii	"enem_monkeys\000"
.LASF48:
	.ascii	"__sFILE\000"
.LASF2141:
	.ascii	"compat_maskedanim\000"
.LASF2464:
	.ascii	"screenSize\000"
.LASF2094:
	.ascii	"general_uncapped\000"
.LASF1663:
	.ascii	"weaponowned\000"
.LASF1658:
	.ascii	"cards\000"
.LASF2078:
	.ascii	"weap_toggle2\000"
.LASF1759:
	.ascii	"no_toptextures\000"
.LASF2039:
	.ascii	"mousesens\000"
.LASF1796:
	.ascii	"sidenum\000"
.LASF302:
	.ascii	"SPR_RSKU\000"
.LASF2035:
	.ascii	"endgame\000"
.LASF2491:
	.ascii	"read_e2\000"
.LASF1814:
	.ascii	"RF_IGNORE\000"
.LASF1939:
	.ascii	"sfx_ssdth\000"
.LASF2612:
	.ascii	"G_DeferedInitNew\000"
.LASF1951:
	.ascii	"NUMSFX\000"
.LASF2427:
	.ascii	"joybstrafe\000"
.LASF180:
	.ascii	"pw_allmap\000"
.LASF1280:
	.ascii	"S_MEAT2\000"
.LASF1281:
	.ascii	"S_MEAT3\000"
.LASF1282:
	.ascii	"S_MEAT4\000"
.LASF1283:
	.ascii	"S_MEAT5\000"
.LASF2184:
	.ascii	"input\000"
.LASF2230:
	.ascii	"M_SaveSelect\000"
.LASF2127:
	.ascii	"compat_skull\000"
.LASF454:
	.ascii	"S_PLASMAUP\000"
.LASF2272:
	.ascii	"W_CheckNumForName\000"
.LASF1641:
	.ascii	"movefactor\000"
.LASF388:
	.ascii	"S_PISTOL\000"
.LASF1295:
	.ascii	"S_EVILEYE\000"
.LASF1643:
	.ascii	"PrevX\000"
.LASF1644:
	.ascii	"PrevY\000"
.LASF376:
	.ascii	"NUMSPRITES\000"
.LASF532:
	.ascii	"S_PLAY_ATK1\000"
.LASF533:
	.ascii	"S_PLAY_ATK2\000"
.LASF2550:
	.ascii	"ChatStrDef\000"
.LASF2388:
	.ascii	"key_endgame\000"
.LASF2331:
	.ascii	"language\000"
.LASF1757:
	.ascii	"degenmobj_t\000"
.LASF2165:
	.ascii	"M_SelectDone\000"
.LASF173:
	.ascii	"am_misl\000"
.LASF1187:
	.ascii	"S_BEXP2\000"
.LASF1188:
	.ascii	"S_BEXP3\000"
.LASF1189:
	.ascii	"S_BEXP4\000"
.LASF1190:
	.ascii	"S_BEXP5\000"
.LASF77:
	.ascii	"_result_k\000"
.LASF1284:
	.ascii	"S_STALAGTITE\000"
.LASF187:
	.ascii	"ss_auto\000"
.LASF371:
	.ascii	"SPR_BRS1\000"
.LASF2518:
	.ascii	"SoundDef\000"
.LASF102:
	.ascii	"_r48\000"
.LASF1634:
	.ascii	"gear\000"
.LASF227:
	.ascii	"think_t\000"
.LASF1578:
	.ascii	"doomednum\000"
.LASF2607:
	.ascii	"R_InitTranMap\000"
.LASF1655:
	.ascii	"armorpoints\000"
.LASF397:
	.ascii	"S_SGUNDOWN\000"
.LASF2022:
	.ascii	"nightmare\000"
.LASF1666:
	.ascii	"attackdown\000"
.LASF2123:
	.ascii	"compat_doorstuck\000"
.LASF1474:
	.ascii	"MT_MISC7\000"
.LASF2181:
	.ascii	"M_ExtHelpNextScreen\000"
.LASF1475:
	.ascii	"MT_MISC8\000"
.LASF1476:
	.ascii	"MT_MISC9\000"
.LASF2589:
	.ascii	"extended_help_index\000"
.LASF2286:
	.ascii	"group\000"
.LASF2140:
	.ascii	"compat_soul\000"
.LASF1910:
	.ascii	"sfx_pedth\000"
.LASF485:
	.ascii	"S_PLASBALL\000"
.LASF2055:
	.ascii	"set_statbar\000"
.LASF2235:
	.ascii	"M_DoSave\000"
.LASF2106:
	.ascii	"general_smooth\000"
.LASF1627:
	.ascii	"health\000"
.LASF2357:
	.ascii	"key_right\000"
.LASF143:
	.ascii	"gamestate_t\000"
.LASF1657:
	.ascii	"powers\000"
.LASF2556:
	.ascii	"gather_count\000"
.LASF1031:
	.ascii	"S_BSPI_DIE1\000"
.LASF1032:
	.ascii	"S_BSPI_DIE2\000"
.LASF344:
	.ascii	"SPR_COL1\000"
.LASF303:
	.ascii	"SPR_YSKU\000"
.LASF346:
	.ascii	"SPR_COL3\000"
.LASF347:
	.ascii	"SPR_COL4\000"
.LASF356:
	.ascii	"SPR_COL5\000"
.LASF350:
	.ascii	"SPR_COL6\000"
.LASF1954:
	.ascii	"m_map\000"
.LASF1611:
	.ascii	"mobj_s\000"
.LASF1690:
	.ascii	"mobj_t\000"
.LASF1286:
	.ascii	"S_SHRTGRNCOL\000"
.LASF2434:
	.ascii	"s_QSAVESPOT\000"
.LASF2366:
	.ascii	"key_menu_escape\000"
.LASF1747:
	.ascii	"data2\000"
.LASF330:
	.ascii	"SPR_COLU\000"
.LASF1896:
	.ascii	"sfx_podth1\000"
.LASF36:
	.ascii	"__tm_isdst\000"
.LASF2625:
	.ascii	"atoi\000"
.LASF2264:
	.ascii	"M_DrawMouse\000"
.LASF2020:
	.ascii	"hurtme\000"
.LASF2104:
	.ascii	"general_corpse\000"
.LASF1810:
	.ascii	"slopetype_t\000"
.LASF2554:
	.ascii	"chat_string_buffer\000"
.LASF158:
	.ascii	"wp_fist\000"
.LASF492:
	.ascii	"S_ROCKET\000"
.LASF2148:
	.ascii	"mess_timed\000"
.LASF1654:
	.ascii	"deltaviewheight\000"
.LASF1378:
	.ascii	"S_OLDBFG42\000"
.LASF1379:
	.ascii	"S_OLDBFG43\000"
.LASF1760:
	.ascii	"no_bottomtextures\000"
.LASF2462:
	.ascii	"hide_setup\000"
.LASF1774:
	.ascii	"prevsec\000"
.LASF979:
	.ascii	"S_SPID_STND\000"
.LASF9:
	.ascii	"size_t\000"
.LASF1716:
	.ascii	"comp_doorstuck\000"
.LASF213:
	.ascii	"prboom_4_compatibility\000"
.LASF737:
	.ascii	"S_FATSHOTX1\000"
.LASF738:
	.ascii	"S_FATSHOTX2\000"
.LASF739:
	.ascii	"S_FATSHOTX3\000"
.LASF2189:
	.ascii	"M_SaveGame\000"
.LASF179:
	.ascii	"pw_ironfeet\000"
.LASF2018:
	.ascii	"killthings\000"
.LASF2340:
	.ascii	"demorecording\000"
.LASF2620:
	.ascii	"I_UpdateVideoMode\000"
.LASF2300:
	.ascii	"M_DrawAutoMap\000"
.LASF1267:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF61:
	.ascii	"_data\000"
.LASF1899:
	.ascii	"sfx_bgdth1\000"
.LASF2445:
	.ascii	"s_NETEND\000"
.LASF1900:
	.ascii	"sfx_bgdth2\000"
.LASF210:
	.ascii	"prboom_1_compatibility\000"
.LASF835:
	.ascii	"S_TROO_DIE1\000"
.LASF836:
	.ascii	"S_TROO_DIE2\000"
.LASF837:
	.ascii	"S_TROO_DIE3\000"
.LASF838:
	.ascii	"S_TROO_DIE4\000"
.LASF839:
	.ascii	"S_TROO_DIE5\000"
.LASF2429:
	.ascii	"joybspeed\000"
.LASF1994:
	.ascii	"status\000"
.LASF1607:
	.ascii	"angle\000"
.LASF1274:
	.ascii	"S_HEADONASTICK\000"
.LASF587:
	.ascii	"S_SPOS_RUN1\000"
.LASF588:
	.ascii	"S_SPOS_RUN2\000"
.LASF589:
	.ascii	"S_SPOS_RUN3\000"
.LASF590:
	.ascii	"S_SPOS_RUN4\000"
.LASF591:
	.ascii	"S_SPOS_RUN5\000"
.LASF592:
	.ascii	"S_SPOS_RUN6\000"
.LASF593:
	.ascii	"S_SPOS_RUN7\000"
.LASF594:
	.ascii	"S_SPOS_RUN8\000"
.LASF281:
	.ascii	"SPR_SPID\000"
.LASF1162:
	.ascii	"S_BRAINEYE\000"
.LASF276:
	.ascii	"SPR_HEAD\000"
.LASF965:
	.ascii	"S_SKULL_RUN1\000"
.LASF966:
	.ascii	"S_SKULL_RUN2\000"
.LASF2426:
	.ascii	"joybfire\000"
.LASF219:
	.ascii	"complevel_t\000"
.LASF115:
	.ascii	"_nextf\000"
.LASF2100:
	.ascii	"general_wad1\000"
.LASF2101:
	.ascii	"general_wad2\000"
.LASF202:
	.ascii	"finaldoom_compatibility\000"
.LASF935:
	.ascii	"S_BOS2_STND2\000"
.LASF42:
	.ascii	"_atexit\000"
.LASF1897:
	.ascii	"sfx_podth2\000"
.LASF1898:
	.ascii	"sfx_podth3\000"
.LASF727:
	.ascii	"S_SKEL_DIE5\000"
.LASF1739:
	.ascii	"mnact_float\000"
.LASF2456:
	.ascii	"snd_card\000"
.LASF2471:
	.ascii	"messageRoutine\000"
.LASF648:
	.ascii	"S_VILE_PAIN2\000"
.LASF1152:
	.ascii	"S_COMMKEEN11\000"
.LASF1153:
	.ascii	"S_COMMKEEN12\000"
.LASF1194:
	.ascii	"S_BON1\000"
.LASF1200:
	.ascii	"S_BON2\000"
.LASF1392:
	.ascii	"S_BON3\000"
.LASF1393:
	.ascii	"S_BON4\000"
.LASF1656:
	.ascii	"armortype\000"
.LASF2493:
	.ascii	"ReadMenu1\000"
.LASF799:
	.ascii	"S_CPOS_PAIN2\000"
.LASF1612:
	.ascii	"thinker\000"
.LASF284:
	.ascii	"SPR_APBX\000"
.LASF182:
	.ascii	"NUMPOWERS\000"
.LASF2090:
	.ascii	"general_trans\000"
.LASF298:
	.ascii	"SPR_BKEY\000"
.LASF1576:
	.ascii	"NUMMOBJTYPES\000"
.LASF2116:
	.ascii	"general_spriteedges\000"
.LASF152:
	.ascii	"it_yellowcard\000"
.LASF2265:
	.ascii	"mhmx\000"
.LASF1382:
	.ascii	"S_PLS1EXP\000"
.LASF2059:
	.ascii	"set_chatstrings\000"
.LASF1650:
	.ascii	"player_s\000"
.LASF1702:
	.ascii	"player_t\000"
.LASF1272:
	.ascii	"S_HEADSONSTICK\000"
.LASF462:
	.ascii	"S_BFG1\000"
.LASF463:
	.ascii	"S_BFG2\000"
.LASF464:
	.ascii	"S_BFG3\000"
.LASF465:
	.ascii	"S_BFG4\000"
.LASF425:
	.ascii	"S_DSGUNFLASH1\000"
.LASF426:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1334:
	.ascii	"S_COLONGIBS\000"
.LASF2618:
	.ascii	"Z_Malloc\000"
.LASF1818:
	.ascii	"leftoffset\000"
.LASF477:
	.ascii	"S_TBALLX1\000"
.LASF478:
	.ascii	"S_TBALLX2\000"
.LASF479:
	.ascii	"S_TBALLX3\000"
.LASF2130:
	.ascii	"compat_god\000"
.LASF2313:
	.ascii	"set_menu_itemon\000"
.LASF1894:
	.ascii	"sfx_pldeth\000"
.LASF2530:
	.ascii	"set_chat_active\000"
.LASF2102:
	.ascii	"general_deh1\000"
.LASF508:
	.ascii	"S_TFOG\000"
.LASF15:
	.ascii	"__wchb\000"
.LASF438:
	.ascii	"S_MISSILE1\000"
.LASF439:
	.ascii	"S_MISSILE2\000"
.LASF440:
	.ascii	"S_MISSILE3\000"
.LASF232:
	.ascii	"cnext\000"
.LASF2638:
	.ascii	"__builtin_strcpy\000"
.LASF1906:
	.ascii	"sfx_spidth\000"
.LASF2206:
	.ascii	"M_FinishReadThis\000"
.LASF918:
	.ascii	"S_BOSS_PAIN\000"
.LASF2075:
	.ascii	"weap_pref9\000"
.LASF83:
	.ascii	"_atexit0\000"
.LASF380:
	.ascii	"S_PUNCH\000"
.LASF2246:
	.ascii	"M_FullScreen\000"
.LASF980:
	.ascii	"S_SPID_STND2\000"
.LASF1669:
	.ascii	"refire\000"
.LASF1795:
	.ascii	"iLineID\000"
.LASF1689:
	.ascii	"visited\000"
.LASF1930:
	.ascii	"sfx_getpow\000"
.LASF1309:
	.ascii	"S_GREENTORCH2\000"
.LASF2014:
	.ascii	"read2_end\000"
.LASF2609:
	.ascii	"S_StartSound\000"
.LASF764:
	.ascii	"S_FATT_PAIN\000"
.LASF2114:
	.ascii	"general_filterz\000"
.LASF98:
	.ascii	"_asctime_buf\000"
.LASF537:
	.ascii	"S_PLAY_DIE2\000"
.LASF538:
	.ascii	"S_PLAY_DIE3\000"
.LASF539:
	.ascii	"S_PLAY_DIE4\000"
.LASF540:
	.ascii	"S_PLAY_DIE5\000"
.LASF541:
	.ascii	"S_PLAY_DIE6\000"
.LASF542:
	.ascii	"S_PLAY_DIE7\000"
.LASF1927:
	.ascii	"sfx_itmbk\000"
.LASF2285:
	.ascii	"oldkey\000"
.LASF74:
	.ascii	"__sdidinit\000"
.LASF1446:
	.ascii	"MT_PAIN\000"
.LASF2252:
	.ascii	"cursor_start\000"
.LASF174:
	.ascii	"NUMAMMO\000"
.LASF237:
	.ascii	"SPR_SHTG\000"
.LASF163:
	.ascii	"wp_plasma\000"
.LASF1671:
	.ascii	"itemcount\000"
.LASF2563:
	.ascii	"mult_screens_index\000"
.LASF1750:
	.ascii	"ns_global\000"
.LASF993:
	.ascii	"S_SPID_ATK1\000"
.LASF994:
	.ascii	"S_SPID_ATK2\000"
.LASF995:
	.ascii	"S_SPID_ATK3\000"
.LASF996:
	.ascii	"S_SPID_ATK4\000"
.LASF2529:
	.ascii	"set_mess_active\000"
.LASF95:
	.ascii	"_add\000"
.LASF1829:
	.ascii	"CR_BLUE\000"
.LASF1730:
	.ascii	"patch_translation_e\000"
.LASF408:
	.ascii	"S_SGUNFLASH1\000"
.LASF409:
	.ascii	"S_SGUNFLASH2\000"
.LASF2126:
	.ascii	"compat_pain\000"
.LASF117:
	.ascii	"_unused\000"
.LASF1680:
	.ascii	"psprites\000"
.LASF2359:
	.ascii	"key_up\000"
.LASF2345:
	.ascii	"mouseSensitivity_horiz\000"
.LASF1248:
	.ascii	"S_CLIP\000"
.LASF2343:
	.ascii	"gametic\000"
.LASF1913:
	.ascii	"sfx_bgact\000"
.LASF2549:
	.ascii	"MessageDef\000"
.LASF1983:
	.ascii	"def_mouseb\000"
.LASF1460:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1388:
	.ascii	"S_PLS2BALL2\000"
.LASF1858:
	.ascii	"sfx_dorcls\000"
.LASF853:
	.ascii	"S_SARG_STND\000"
.LASF2019:
	.ascii	"toorough\000"
.LASF765:
	.ascii	"S_FATT_PAIN2\000"
.LASF521:
	.ascii	"S_IFOG01\000"
.LASF522:
	.ascii	"S_IFOG02\000"
.LASF2267:
	.ascii	"M_DrawEmptyCell\000"
.LASF1834:
	.ascii	"V_FillRect_f\000"
.LASF2177:
	.ascii	"M_QuickLoadResponse\000"
.LASF309:
	.ascii	"SPR_PINS\000"
.LASF307:
	.ascii	"SPR_PINV\000"
.LASF266:
	.ascii	"SPR_SPOS\000"
.LASF1399:
	.ascii	"S_BSKUL_ATK1\000"
.LASF1400:
	.ascii	"S_BSKUL_ATK2\000"
.LASF1401:
	.ascii	"S_BSKUL_ATK3\000"
.LASF24:
	.ascii	"_sign\000"
.LASF2594:
	.ascii	"W_GetNumForName\000"
.LASF410:
	.ascii	"S_DSGUN\000"
.LASF2226:
	.ascii	"M_DrawNewGame\000"
.LASF2538:
	.ascii	"setup_e\000"
.LASF2526:
	.ascii	"set_status_active\000"
.LASF1963:
	.ascii	"minvalue\000"
.LASF834:
	.ascii	"S_TROO_PAIN2\000"
.LASF2324:
	.ascii	"SCREENWIDTH\000"
.LASF1926:
	.ascii	"sfx_bdcls\000"
.LASF1727:
	.ascii	"comp_maskedanim\000"
.LASF2118:
	.ascii	"general_hom\000"
.LASF2320:
	.ascii	"edgetypes\000"
.LASF1177:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1178:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1179:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF1006:
	.ascii	"S_SPID_DIE8\000"
.LASF1904:
	.ascii	"sfx_brsdth\000"
.LASF2296:
	.ascii	"M_DrawKeybnd\000"
.LASF1832:
	.ascii	"CR_BLUE2\000"
.LASF1996:
	.ascii	"alphaKey\000"
.LASF2525:
	.ascii	"set_weapon_active\000"
.LASF1454:
	.ascii	"MT_BARREL\000"
.LASF1478:
	.ascii	"MT_MISC11\000"
.LASF1479:
	.ascii	"MT_MISC12\000"
.LASF1481:
	.ascii	"MT_MISC13\000"
.LASF1483:
	.ascii	"MT_MISC14\000"
.LASF1484:
	.ascii	"MT_MISC15\000"
.LASF1485:
	.ascii	"MT_MISC16\000"
.LASF1488:
	.ascii	"MT_MISC17\000"
.LASF1489:
	.ascii	"MT_MISC18\000"
.LASF1490:
	.ascii	"MT_MISC19\000"
.LASF1186:
	.ascii	"S_BEXP\000"
.LASF2008:
	.ascii	"readthis\000"
.LASF86:
	.ascii	"__sf\000"
.LASF2542:
	.ascii	"Generic_Setup\000"
.LASF68:
	.ascii	"_stdout\000"
.LASF1030:
	.ascii	"S_BSPI_PAIN2\000"
.LASF2420:
	.ascii	"autorun\000"
.LASF659:
	.ascii	"S_FIRE1\000"
.LASF660:
	.ascii	"S_FIRE2\000"
.LASF661:
	.ascii	"S_FIRE3\000"
.LASF662:
	.ascii	"S_FIRE4\000"
.LASF663:
	.ascii	"S_FIRE5\000"
.LASF664:
	.ascii	"S_FIRE6\000"
.LASF665:
	.ascii	"S_FIRE7\000"
.LASF666:
	.ascii	"S_FIRE8\000"
.LASF667:
	.ascii	"S_FIRE9\000"
.LASF155:
	.ascii	"it_yellowskull\000"
.LASF2567:
	.ascii	"stat_settings\000"
.LASF2349:
	.ascii	"nosfxparm\000"
.LASF1462:
	.ascii	"MT_BLOOD\000"
.LASF1629:
	.ascii	"movecount\000"
.LASF2458:
	.ascii	"hu_font\000"
.LASF2619:
	.ascii	"fopen\000"
.LASF2173:
	.ascii	"M_RestartLevelResponse\000"
.LASF1491:
	.ascii	"MT_MISC20\000"
.LASF1492:
	.ascii	"MT_MISC21\000"
.LASF1493:
	.ascii	"MT_MISC22\000"
.LASF1494:
	.ascii	"MT_MISC23\000"
.LASF1495:
	.ascii	"MT_MISC24\000"
.LASF1496:
	.ascii	"MT_MISC25\000"
.LASF1498:
	.ascii	"MT_MISC26\000"
.LASF357:
	.ascii	"SPR_TBLU\000"
.LASF1216:
	.ascii	"S_YSKULL\000"
.LASF447:
	.ascii	"S_SAWDOWN\000"
.LASF130:
	.ascii	"commercial\000"
.LASF1106:
	.ascii	"S_SSWV_RUN1\000"
.LASF1107:
	.ascii	"S_SSWV_RUN2\000"
.LASF1108:
	.ascii	"S_SSWV_RUN3\000"
.LASF1109:
	.ascii	"S_SSWV_RUN4\000"
.LASF1110:
	.ascii	"S_SSWV_RUN5\000"
.LASF27:
	.ascii	"__tm\000"
.LASF1112:
	.ascii	"S_SSWV_RUN7\000"
.LASF1113:
	.ascii	"S_SSWV_RUN8\000"
.LASF2162:
	.ascii	"flat\000"
.LASF159:
	.ascii	"wp_pistol\000"
.LASF123:
	.ascii	"PU_LEVEL\000"
.LASF543:
	.ascii	"S_PLAY_XDIE1\000"
.LASF544:
	.ascii	"S_PLAY_XDIE2\000"
.LASF545:
	.ascii	"S_PLAY_XDIE3\000"
.LASF546:
	.ascii	"S_PLAY_XDIE4\000"
.LASF547:
	.ascii	"S_PLAY_XDIE5\000"
.LASF548:
	.ascii	"S_PLAY_XDIE6\000"
.LASF549:
	.ascii	"S_PLAY_XDIE7\000"
.LASF550:
	.ascii	"S_PLAY_XDIE8\000"
.LASF551:
	.ascii	"S_PLAY_XDIE9\000"
.LASF1482:
	.ascii	"MT_INS\000"
.LASF1480:
	.ascii	"MT_INV\000"
.LASF457:
	.ascii	"S_PLASMAFLASH1\000"
.LASF458:
	.ascii	"S_PLASMAFLASH2\000"
.LASF1506:
	.ascii	"MT_MISC32\000"
.LASF1507:
	.ascii	"MT_MISC33\000"
.LASF1508:
	.ascii	"MT_MISC34\000"
.LASF1509:
	.ascii	"MT_MISC35\000"
.LASF1510:
	.ascii	"MT_MISC36\000"
.LASF1511:
	.ascii	"MT_MISC37\000"
.LASF1512:
	.ascii	"MT_MISC38\000"
.LASF1513:
	.ascii	"MT_MISC39\000"
.LASF325:
	.ascii	"SPR_CSAW\000"
.LASF863:
	.ascii	"S_SARG_ATK1\000"
.LASF864:
	.ascii	"S_SARG_ATK2\000"
.LASF865:
	.ascii	"S_SARG_ATK3\000"
.LASF51:
	.ascii	"_lbfsize\000"
.LASF1720:
	.ascii	"comp_infcheat\000"
.LASF1221:
	.ascii	"S_SOUL2\000"
.LASF1222:
	.ascii	"S_SOUL3\000"
.LASF1223:
	.ascii	"S_SOUL4\000"
.LASF1224:
	.ascii	"S_SOUL5\000"
.LASF1225:
	.ascii	"S_SOUL6\000"
.LASF1756:
	.ascii	"vertex_t\000"
.LASF2120:
	.ascii	"compat_dropoff\000"
.LASF631:
	.ascii	"S_VILE_RUN11\000"
.LASF2261:
	.ascii	"horizScaler\000"
.LASF1993:
	.ascii	"OutputLevels\000"
.LASF2115:
	.ascii	"general_filter_threshold\000"
.LASF177:
	.ascii	"pw_strength\000"
.LASF1586:
	.ascii	"painchance\000"
.LASF1263:
	.ascii	"S_SHOT2\000"
.LASF1514:
	.ascii	"MT_MISC40\000"
.LASF1515:
	.ascii	"MT_MISC41\000"
.LASF1516:
	.ascii	"MT_MISC42\000"
.LASF1517:
	.ascii	"MT_MISC43\000"
.LASF1518:
	.ascii	"MT_MISC44\000"
.LASF226:
	.ascii	"actionf_t\000"
.LASF1520:
	.ascii	"MT_MISC46\000"
.LASF1521:
	.ascii	"MT_MISC47\000"
.LASF1522:
	.ascii	"MT_MISC48\000"
.LASF1523:
	.ascii	"MT_MISC49\000"
.LASF283:
	.ascii	"SPR_APLS\000"
.LASF240:
	.ascii	"SPR_PISF\000"
.LASF239:
	.ascii	"SPR_PISG\000"
.LASF150:
	.ascii	"skill_t\000"
.LASF2344:
	.ascii	"players\000"
.LASF53:
	.ascii	"_read\000"
.LASF49:
	.ascii	"_flags\000"
.LASF2171:
	.ascii	"M_StartControlPanel\000"
.LASF71:
	.ascii	"_emergency\000"
.LASF1381:
	.ascii	"S_PLS1BALL2\000"
.LASF1038:
	.ascii	"S_BSPI_RAISE1\000"
.LASF1039:
	.ascii	"S_BSPI_RAISE2\000"
.LASF1040:
	.ascii	"S_BSPI_RAISE3\000"
.LASF1041:
	.ascii	"S_BSPI_RAISE4\000"
.LASF1042:
	.ascii	"S_BSPI_RAISE5\000"
.LASF1043:
	.ascii	"S_BSPI_RAISE6\000"
.LASF1044:
	.ascii	"S_BSPI_RAISE7\000"
.LASF1131:
	.ascii	"S_SSWV_XDIE5\000"
.LASF1132:
	.ascii	"S_SSWV_XDIE6\000"
.LASF1133:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1134:
	.ascii	"S_SSWV_XDIE8\000"
.LASF1135:
	.ascii	"S_SSWV_XDIE9\000"
.LASF116:
	.ascii	"_nmalloc\000"
.LASF1682:
	.ascii	"msecnode_s\000"
.LASF1459:
	.ascii	"MT_BFG\000"
.LASF1728:
	.ascii	"COMP_NUM\000"
.LASF1524:
	.ascii	"MT_MISC50\000"
.LASF1525:
	.ascii	"MT_MISC51\000"
.LASF1526:
	.ascii	"MT_MISC52\000"
.LASF1527:
	.ascii	"MT_MISC53\000"
.LASF1528:
	.ascii	"MT_MISC54\000"
.LASF1529:
	.ascii	"MT_MISC55\000"
.LASF1530:
	.ascii	"MT_MISC56\000"
.LASF1531:
	.ascii	"MT_MISC57\000"
.LASF1532:
	.ascii	"MT_MISC58\000"
.LASF1439:
	.ascii	"MT_BRUISER\000"
.LASF25:
	.ascii	"_wds\000"
.LASF189:
	.ascii	"ss_mess\000"
.LASF129:
	.ascii	"registered\000"
.LASF2613:
	.ascii	"D_StartTitle\000"
.LASF244:
	.ascii	"SPR_CHGF\000"
.LASF243:
	.ascii	"SPR_CHGG\000"
.LASF2061:
	.ascii	"generic_setupempty1\000"
.LASF142:
	.ascii	"GS_DEMOSCREEN\000"
.LASF1763:
	.ascii	"nexttag\000"
.LASF1103:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1738:
	.ascii	"mnact_inactive\000"
.LASF80:
	.ascii	"_cvtlen\000"
.LASF2038:
	.ascii	"option_empty1\000"
.LASF1451:
	.ascii	"MT_BOSSTARGET\000"
.LASF1535:
	.ascii	"MT_MISC61\000"
.LASF1536:
	.ascii	"MT_MISC62\000"
.LASF1537:
	.ascii	"MT_MISC63\000"
.LASF1538:
	.ascii	"MT_MISC64\000"
.LASF1539:
	.ascii	"MT_MISC65\000"
.LASF1540:
	.ascii	"MT_MISC66\000"
.LASF1541:
	.ascii	"MT_MISC67\000"
.LASF1542:
	.ascii	"MT_MISC68\000"
.LASF1543:
	.ascii	"MT_MISC69\000"
.LASF1992:
	.ascii	"LO_ALWAYS\000"
.LASF1839:
	.ascii	"sfx_shotgn\000"
.LASF329:
	.ascii	"SPR_SGN2\000"
.LASF1453:
	.ascii	"MT_SPAWNFIRE\000"
.LASF270:
	.ascii	"SPR_FBXP\000"
.LASF2032:
	.ascii	"load_end\000"
.LASF2042:
	.ascii	"sfx_vol\000"
.LASF2154:
	.ascii	"prog_stub\000"
.LASF2597:
	.ascii	"G_ForcedLoadGame\000"
.LASF2134:
	.ascii	"compat_stairs\000"
.LASF105:
	.ascii	"_wctomb_state\000"
.LASF1255:
	.ascii	"S_SBOX\000"
.LASF1544:
	.ascii	"MT_MISC70\000"
.LASF1545:
	.ascii	"MT_MISC71\000"
.LASF91:
	.ascii	"_iobs\000"
.LASF1547:
	.ascii	"MT_MISC73\000"
.LASF1548:
	.ascii	"MT_MISC74\000"
.LASF1549:
	.ascii	"MT_MISC75\000"
.LASF1550:
	.ascii	"MT_MISC76\000"
.LASF1450:
	.ascii	"MT_BOSSSPIT\000"
.LASF1552:
	.ascii	"MT_MISC78\000"
.LASF1553:
	.ascii	"MT_MISC79\000"
.LASF2157:
	.ascii	"adcr\000"
.LASF223:
	.ascii	"VPT_STRETCH\000"
.LASF1695:
	.ascii	"chatchar\000"
.LASF520:
	.ascii	"S_IFOG\000"
.LASF2536:
	.ascii	"set_compat_active\000"
.LASF2515:
	.ascii	"quitsounds2\000"
.LASF999:
	.ascii	"S_SPID_DIE1\000"
.LASF1000:
	.ascii	"S_SPID_DIE2\000"
.LASF1001:
	.ascii	"S_SPID_DIE3\000"
.LASF1002:
	.ascii	"S_SPID_DIE4\000"
.LASF1003:
	.ascii	"S_SPID_DIE5\000"
.LASF1004:
	.ascii	"S_SPID_DIE6\000"
.LASF1005:
	.ascii	"S_SPID_DIE7\000"
.LASF122:
	.ascii	"PU_MUSIC\000"
.LASF1007:
	.ascii	"S_SPID_DIE9\000"
.LASF2632:
	.ascii	"c:/devl/prboom3ds/src/m_menu.c\000"
.LASF2414:
	.ascii	"key_map_gobig\000"
.LASF2348:
	.ascii	"endmsg\000"
.LASF84:
	.ascii	"_sig_func\000"
.LASF1672:
	.ascii	"secretcount\000"
.LASF2371:
	.ascii	"key_use\000"
.LASF2354:
	.ascii	"hud_distributed\000"
.LASF1554:
	.ascii	"MT_MISC80\000"
.LASF1555:
	.ascii	"MT_MISC81\000"
.LASF1556:
	.ascii	"MT_MISC82\000"
.LASF405:
	.ascii	"S_SGUN7\000"
.LASF1558:
	.ascii	"MT_MISC84\000"
.LASF1559:
	.ascii	"MT_MISC85\000"
.LASF1560:
	.ascii	"MT_MISC86\000"
.LASF2590:
	.ascii	"ExtHelpMenu\000"
.LASF2253:
	.ascii	"char_width\000"
.LASF1438:
	.ascii	"MT_HEAD\000"
.LASF2569:
	.ascii	"auto_settings2\000"
.LASF2621:
	.ascii	"V_SetPalette\000"
.LASF1859:
	.ascii	"sfx_stnmov\000"
.LASF2021:
	.ascii	"violence\000"
.LASF2474:
	.ascii	"saveCharIndex\000"
.LASF2424:
	.ascii	"mousebbackward\000"
.LASF2639:
	.ascii	"I_Error\000"
.LASF411:
	.ascii	"S_DSGUNDOWN\000"
.LASF1909:
	.ascii	"sfx_kntdth\000"
.LASF1664:
	.ascii	"ammo\000"
.LASF1078:
	.ascii	"S_CYBER_DIE10\000"
.LASF854:
	.ascii	"S_SARG_STND2\000"
.LASF1405:
	.ascii	"S_BSKUL_DIE1\000"
.LASF1406:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1407:
	.ascii	"S_BSKUL_DIE3\000"
.LASF1408:
	.ascii	"S_BSKUL_DIE4\000"
.LASF1409:
	.ascii	"S_BSKUL_DIE5\000"
.LASF1410:
	.ascii	"S_BSKUL_DIE6\000"
.LASF1411:
	.ascii	"S_BSKUL_DIE7\000"
.LASF1412:
	.ascii	"S_BSKUL_DIE8\000"
.LASF2242:
	.ascii	"M_ForcedLoadGame\000"
.LASF2338:
	.ascii	"usergame\000"
.LASF1247:
	.ascii	"S_PVIS2\000"
.LASF1420:
	.ascii	"nextstate\000"
.LASF1257:
	.ascii	"S_BFUG\000"
.LASF2219:
	.ascii	"M_Messages\000"
.LASF313:
	.ascii	"SPR_PVIS\000"
.LASF1949:
	.ascii	"sfx_dgdth\000"
.LASF178:
	.ascii	"pw_invisibility\000"
.LASF312:
	.ascii	"SPR_PMAP\000"
.LASF1646:
	.ascii	"subsector_s\000"
.LASF2626:
	.ascii	"HU_Start\000"
.LASF185:
	.ascii	"ss_weap\000"
.LASF1012:
	.ascii	"S_BSPI_SIGHT\000"
.LASF1918:
	.ascii	"sfx_noway\000"
.LASF2387:
	.ascii	"key_quicksave\000"
.LASF2541:
	.ascii	"generic_setup_e\000"
.LASF1866:
	.ascii	"sfx_mnpain\000"
.LASF2544:
	.ascii	"KeybndDef\000"
.LASF1755:
	.ascii	"ns_prboom\000"
.LASF1633:
	.ascii	"pursuecount\000"
.LASF735:
	.ascii	"S_FATSHOT1\000"
.LASF736:
	.ascii	"S_FATSHOT2\000"
.LASF1804:
	.ascii	"r_flags\000"
.LASF2145:
	.ascii	"mess_color_chat\000"
.LASF1265:
	.ascii	"S_STALAG\000"
.LASF2223:
	.ascii	"M_DrawString\000"
.LASF480:
	.ascii	"S_RBALL1\000"
.LASF481:
	.ascii	"S_RBALL2\000"
.LASF2016:
	.ascii	"help_end\000"
.LASF1329:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF2436:
	.ascii	"s_QSPROMPT\000"
.LASF176:
	.ascii	"pw_invulnerability\000"
.LASF2601:
	.ascii	"sprintf\000"
.LASF1383:
	.ascii	"S_PLS1EXP2\000"
.LASF1384:
	.ascii	"S_PLS1EXP3\000"
.LASF1385:
	.ascii	"S_PLS1EXP4\000"
.LASF1386:
	.ascii	"S_PLS1EXP5\000"
.LASF231:
	.ascii	"function\000"
.LASF2398:
	.ascii	"key_weapon2\000"
.LASF1501:
	.ascii	"MT_SHOTGUN\000"
.LASF2588:
	.ascii	"extended_help_count\000"
.LASF2294:
	.ascii	"lumps_missing\000"
.LASF2401:
	.ascii	"key_weapon5\000"
.LASF1426:
	.ascii	"MT_SHOTGUY\000"
.LASF2405:
	.ascii	"key_weapon9\000"
.LASF1435:
	.ascii	"MT_TROOP\000"
.LASF1882:
	.ascii	"sfx_spisit\000"
.LASF936:
	.ascii	"S_BOS2_RUN1\000"
.LASF937:
	.ascii	"S_BOS2_RUN2\000"
.LASF938:
	.ascii	"S_BOS2_RUN3\000"
.LASF939:
	.ascii	"S_BOS2_RUN4\000"
.LASF940:
	.ascii	"S_BOS2_RUN5\000"
.LASF941:
	.ascii	"S_BOS2_RUN6\000"
.LASF942:
	.ascii	"S_BOS2_RUN7\000"
.LASF943:
	.ascii	"S_BOS2_RUN8\000"
.LASF140:
	.ascii	"GS_INTERMISSION\000"
.LASF2098:
	.ascii	"general_joy\000"
.LASF65:
	.ascii	"_reent\000"
.LASF205:
	.ascii	"boom_compatibility_compatibility\000"
.LASF2318:
	.ascii	"gen_skillstrings\000"
.LASF2558:
	.ascii	"keys_settings1\000"
.LASF2561:
	.ascii	"keys_settings4\000"
.LASF2198:
	.ascii	"M_DrawTitle\000"
.LASF60:
	.ascii	"_offset\000"
.LASF868:
	.ascii	"S_SARG_DIE1\000"
.LASF869:
	.ascii	"S_SARG_DIE2\000"
.LASF870:
	.ascii	"S_SARG_DIE3\000"
.LASF871:
	.ascii	"S_SARG_DIE4\000"
.LASF872:
	.ascii	"S_SARG_DIE5\000"
.LASF873:
	.ascii	"S_SARG_DIE6\000"
.LASF554:
	.ascii	"S_POSS_RUN1\000"
.LASF555:
	.ascii	"S_POSS_RUN2\000"
.LASF556:
	.ascii	"S_POSS_RUN3\000"
.LASF557:
	.ascii	"S_POSS_RUN4\000"
.LASF558:
	.ascii	"S_POSS_RUN5\000"
.LASF559:
	.ascii	"S_POSS_RUN6\000"
.LASF560:
	.ascii	"S_POSS_RUN7\000"
.LASF561:
	.ascii	"S_POSS_RUN8\000"
.LASF412:
	.ascii	"S_DSGUNUP\000"
.LASF2546:
	.ascii	"StatusHUDDef\000"
.LASF2473:
	.ascii	"saveSlot\000"
.LASF2188:
	.ascii	"M_LoadGame\000"
.LASF111:
	.ascii	"_mbsrtowcs_state\000"
.LASF1069:
	.ascii	"S_CYBER_DIE1\000"
.LASF2461:
	.ascii	"showMessages\000"
.LASF2395:
	.ascii	"key_setup\000"
.LASF153:
	.ascii	"it_redcard\000"
.LASF2512:
	.ascii	"detailNames\000"
.LASF1294:
	.ascii	"S_TECHPILLAR\000"
.LASF2139:
	.ascii	"compat_666\000"
.LASF2065:
	.ascii	"weap_bfg\000"
.LASF2281:
	.ascii	"mousex\000"
.LASF2133:
	.ascii	"compat_skymap\000"
.LASF2570:
	.ascii	"auto_settings\000"
.LASF2615:
	.ascii	"fread\000"
.LASF2637:
	.ascii	"G_CheckDemoStatus\000"
.LASF31:
	.ascii	"__tm_mday\000"
.LASF1649:
	.ascii	"firstline\000"
.LASF161:
	.ascii	"wp_chaingun\000"
.LASF1885:
	.ascii	"sfx_vilsit\000"
.LASF1637:
	.ascii	"spawnpoint\000"
.LASF585:
	.ascii	"S_SPOS_STND\000"
.LASF1279:
	.ascii	"S_LIVESTICK2\000"
.LASF713:
	.ascii	"S_SKEL_FIST1\000"
.LASF714:
	.ascii	"S_SKEL_FIST2\000"
.LASF715:
	.ascii	"S_SKEL_FIST3\000"
.LASF716:
	.ascii	"S_SKEL_FIST4\000"
.LASF1648:
	.ascii	"numlines\000"
.LASF963:
	.ascii	"S_SKULL_STND\000"
.LASF82:
	.ascii	"_new\000"
.LASF1979:
	.ascii	"def_int\000"
.LASF1090:
	.ascii	"S_PAIN_PAIN\000"
.LASF1718:
	.ascii	"comp_zombie\000"
.LASF2124:
	.ascii	"compat_pursuit\000"
.LASF127:
	.ascii	"PU_MAX\000"
.LASF1794:
	.ascii	"line_s\000"
.LASF2578:
	.ascii	"gen_settings3\000"
.LASF230:
	.ascii	"next\000"
.LASF85:
	.ascii	"__sglue\000"
.LASF1980:
	.ascii	"def_hex\000"
.LASF1863:
	.ascii	"sfx_dmpain\000"
.LASF1865:
	.ascii	"sfx_vipain\000"
.LASF2155:
	.ascii	"prog_stub1\000"
.LASF2156:
	.ascii	"prog_stub2\000"
.LASF621:
	.ascii	"S_VILE_RUN1\000"
.LASF622:
	.ascii	"S_VILE_RUN2\000"
.LASF623:
	.ascii	"S_VILE_RUN3\000"
.LASF624:
	.ascii	"S_VILE_RUN4\000"
.LASF625:
	.ascii	"S_VILE_RUN5\000"
.LASF626:
	.ascii	"S_VILE_RUN6\000"
.LASF627:
	.ascii	"S_VILE_RUN7\000"
.LASF628:
	.ascii	"S_VILE_RUN8\000"
.LASF629:
	.ascii	"S_VILE_RUN9\000"
.LASF2438:
	.ascii	"s_NEWGAME\000"
.LASF459:
	.ascii	"S_BFG\000"
.LASF1551:
	.ascii	"MT_MISC77\000"
.LASF2194:
	.ascii	"M_ChangeMessages\000"
.LASF906:
	.ascii	"S_BOSS_STND2\000"
.LASF289:
	.ascii	"SPR_BBRN\000"
.LASF880:
	.ascii	"S_HEAD_STND\000"
.LASF1278:
	.ascii	"S_LIVESTICK\000"
.LASF135:
	.ascii	"french\000"
.LASF89:
	.ascii	"_glue\000"
.LASF1418:
	.ascii	"tics\000"
.LASF1715:
	.ascii	"comp_pursuit\000"
.LASF1249:
	.ascii	"S_AMMO\000"
.LASF1734:
	.ascii	"am_rotate\000"
.LASF194:
	.ascii	"_Bool\000"
.LASF291:
	.ascii	"SPR_ARM1\000"
.LASF292:
	.ascii	"SPR_ARM2\000"
.LASF630:
	.ascii	"S_VILE_RUN10\000"
.LASF288:
	.ascii	"SPR_KEEN\000"
.LASF632:
	.ascii	"S_VILE_RUN12\000"
.LASF1402:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1403:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1169:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1170:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1171:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1172:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1173:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1174:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1175:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1176:
	.ascii	"S_SPAWNFIRE8\000"
.LASF1647:
	.ascii	"sector\000"
.LASF304:
	.ascii	"SPR_STIM\000"
.LASF2258:
	.ascii	"M_DrawThermo\000"
.LASF448:
	.ascii	"S_SAWUP\000"
.LASF482:
	.ascii	"S_RBALLX1\000"
.LASF483:
	.ascii	"S_RBALLX2\000"
.LASF484:
	.ascii	"S_RBALLX3\000"
.LASF1982:
	.ascii	"def_key\000"
.LASF228:
	.ascii	"thinker_s\000"
.LASF235:
	.ascii	"thinker_t\000"
.LASF1764:
	.ascii	"firsttag\000"
.LASF1449:
	.ascii	"MT_BOSSBRAIN\000"
.LASF1938:
	.ascii	"sfx_sssit\000"
.LASF1347:
	.ascii	"S_DETONATE\000"
.LASF1752:
	.ascii	"ns_flats\000"
.LASF1659:
	.ascii	"backpack\000"
.LASF1688:
	.ascii	"m_snext\000"
.LASF874:
	.ascii	"S_SARG_RAISE1\000"
.LASF204:
	.ascii	"tasdoom_compatibility\000"
.LASF1981:
	.ascii	"def_bool\000"
.LASF2093:
	.ascii	"general_videomode\000"
.LASF10:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF1565:
	.ascii	"MT_STEALTHVILE\000"
.LASF1827:
	.ascii	"CR_GOLD\000"
.LASF1799:
	.ascii	"frontsector\000"
.LASF2034:
	.ascii	"setup\000"
.LASF2295:
	.ascii	"M_DrawSetup\000"
.LASF2559:
	.ascii	"keys_settings2\000"
.LASF2560:
	.ascii	"keys_settings3\000"
.LASF1806:
	.ascii	"ST_HORIZONTAL\000"
.LASF2080:
	.ascii	"enem_remember\000"
.LASF1557:
	.ascii	"MT_MISC83\000"
.LASF1455:
	.ascii	"MT_TROOPSHOT\000"
.LASF47:
	.ascii	"_size\000"
.LASF2352:
	.ascii	"V_DrawNumPatch\000"
.LASF595:
	.ascii	"S_SPOS_ATK1\000"
.LASF596:
	.ascii	"S_SPOS_ATK2\000"
.LASF597:
	.ascii	"S_SPOS_ATK3\000"
.LASF700:
	.ascii	"S_SKEL_STND2\000"
.LASF2200:
	.ascii	"altcm\000"
.LASF1236:
	.ascii	"S_MEGA2\000"
.LASF1237:
	.ascii	"S_MEGA3\000"
.LASF1238:
	.ascii	"S_MEGA4\000"
.LASF502:
	.ascii	"S_BFGEXP2\000"
.LASF503:
	.ascii	"S_BFGEXP3\000"
.LASF504:
	.ascii	"S_BFGEXP4\000"
.LASF643:
	.ascii	"S_VILE_ATK11\000"
.LASF970:
	.ascii	"S_SKULL_ATK4\000"
.LASF1191:
	.ascii	"S_BBAR1\000"
.LASF1192:
	.ascii	"S_BBAR2\000"
.LASF1193:
	.ascii	"S_BBAR3\000"
.LASF2342:
	.ascii	"gamestate\000"
.LASF64:
	.ascii	"_flags2\000"
.LASF1045:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1932:
	.ascii	"sfx_boscub\000"
.LASF1907:
	.ascii	"sfx_bspdth\000"
.LASF1840:
	.ascii	"sfx_sgcock\000"
.LASF99:
	.ascii	"_localtime_buf\000"
.LASF2275:
	.ascii	"M_StringWidth\000"
.LASF553:
	.ascii	"S_POSS_STND2\000"
.LASF581:
	.ascii	"S_POSS_RAISE1\000"
.LASF582:
	.ascii	"S_POSS_RAISE2\000"
.LASF583:
	.ascii	"S_POSS_RAISE3\000"
.LASF584:
	.ascii	"S_POSS_RAISE4\000"
.LASF1273:
	.ascii	"S_GIBS\000"
.LASF1636:
	.ascii	"lastlook\000"
.LASF1776:
	.ascii	"heightsec\000"
.LASF1676:
	.ascii	"attacker\000"
.LASF1575:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF2610:
	.ascii	"exit\000"
.LASF2397:
	.ascii	"key_weapon1\000"
.LASF882:
	.ascii	"S_HEAD_ATK1\000"
.LASF883:
	.ascii	"S_HEAD_ATK2\000"
.LASF884:
	.ascii	"S_HEAD_ATK3\000"
.LASF2399:
	.ascii	"key_weapon3\000"
.LASF2400:
	.ascii	"key_weapon4\000"
.LASF2380:
	.ascii	"key_zoomout\000"
.LASF2418:
	.ascii	"key_map_grid\000"
.LASF1870:
	.ascii	"sfx_wpnup\000"
.LASF1812:
	.ascii	"RF_MID_TILE\000"
.LASF1600:
	.ascii	"raisestate\000"
.LASF2192:
	.ascii	"M_QuickLoad\000"
.LASF1305:
	.ascii	"S_BLUETORCH2\000"
.LASF1306:
	.ascii	"S_BLUETORCH3\000"
.LASF1307:
	.ascii	"S_BLUETORCH4\000"
.LASF2617:
	.ascii	"G_SaveGameName\000"
.LASF570:
	.ascii	"S_POSS_DIE4\000"
.LASF1596:
	.ascii	"mass\000"
.LASF1710:
	.ascii	"comp_model\000"
.LASF2389:
	.ascii	"key_messages\000"
.LASF1288:
	.ascii	"S_SHRTREDCOL\000"
.LASF1726:
	.ascii	"comp_soul\000"
.LASF948:
	.ascii	"S_BOS2_PAIN2\000"
.LASF2063:
	.ascii	"weap_recoil\000"
.LASF271:
	.ascii	"SPR_SKEL\000"
.LASF2161:
	.ascii	"M_DrawBackground\000"
.LASF2146:
	.ascii	"mess_chat_timer\000"
.LASF1864:
	.ascii	"sfx_popain\000"
.LASF751:
	.ascii	"S_FATT_RUN10\000"
.LASF752:
	.ascii	"S_FATT_RUN11\000"
.LASF753:
	.ascii	"S_FATT_RUN12\000"
.LASF1253:
	.ascii	"S_CELP\000"
.LASF2407:
	.ascii	"key_map_right\000"
.LASF2577:
	.ascii	"gen_settings2\000"
.LASF1442:
	.ascii	"MT_SKULL\000"
.LASF2301:
	.ascii	"M_DrawEnemy\000"
.LASF852:
	.ascii	"S_TROO_RAISE5\000"
.LASF369:
	.ascii	"SPR_POB1\000"
.LASF370:
	.ascii	"SPR_POB2\000"
.LASF2122:
	.ascii	"compat_staylift\000"
.LASF423:
	.ascii	"S_DSNR1\000"
.LASF1987:
	.ascii	"LO_CONFIRM\000"
.LASF1436:
	.ascii	"MT_SERGEANT\000"
.LASF2243:
	.ascii	"M_ReadSaveStrings\000"
.LASF208:
	.ascii	"lxdoom_1_compatibility\000"
.LASF191:
	.ascii	"ss_gen\000"
.LASF2516:
	.ascii	"sound_e\000"
.LASF486:
	.ascii	"S_PLASBALL2\000"
.LASF1816:
	.ascii	"float\000"
.LASF1336:
	.ascii	"S_BRAINSTEM\000"
.LASF2240:
	.ascii	"M_DrawInstructions\000"
.LASF1758:
	.ascii	"iSectorID\000"
.LASF717:
	.ascii	"S_SKEL_MISS1\000"
.LASF718:
	.ascii	"S_SKEL_MISS2\000"
.LASF719:
	.ascii	"S_SKEL_MISS3\000"
.LASF720:
	.ascii	"S_SKEL_MISS4\000"
.LASF1931:
	.ascii	"sfx_bospit\000"
.LASF2151:
	.ascii	"mess_scrollup\000"
.LASF2183:
	.ascii	"string\000"
.LASF1570:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF1208:
	.ascii	"S_RKEY\000"
.LASF449:
	.ascii	"S_SAW1\000"
.LASF694:
	.ascii	"S_TRACER\000"
.LASF2410:
	.ascii	"key_map_down\000"
.LASF1692:
	.ascii	"sidemove\000"
.LASF1047:
	.ascii	"S_ARACH_PLEX\000"
.LASF1104:
	.ascii	"S_SSWV_STND\000"
.LASF644:
	.ascii	"S_VILE_HEAL1\000"
.LASF645:
	.ascii	"S_VILE_HEAL2\000"
.LASF124:
	.ascii	"PU_LEVSPEC\000"
.LASF75:
	.ascii	"__cleanup\000"
.LASF166:
	.ascii	"wp_supershotgun\000"
.LASF107:
	.ascii	"_signal_buf\000"
.LASF2565:
	.ascii	"weap_settings\000"
.LASF1029:
	.ascii	"S_BSPI_PAIN\000"
.LASF1601:
	.ascii	"mobjinfo_t\000"
.LASF763:
	.ascii	"S_FATT_ATK10\000"
.LASF998:
	.ascii	"S_SPID_PAIN2\000"
.LASF154:
	.ascii	"it_blueskull\000"
.LASF1022:
	.ascii	"S_BSPI_RUN10\000"
.LASF1023:
	.ascii	"S_BSPI_RUN11\000"
.LASF1024:
	.ascii	"S_BSPI_RUN12\000"
.LASF2472:
	.ascii	"saveStringEnter\000"
.LASF183:
	.ascii	"ss_none\000"
.LASF2376:
	.ascii	"key_loadgame\000"
.LASF1950:
	.ascii	"sfx_dgpain\000"
.LASF2522:
	.ascii	"tempstring\000"
.LASF2201:
	.ascii	"M_DrawReadThis1\000"
.LASF1241:
	.ascii	"S_PMAP2\000"
.LASF1242:
	.ascii	"S_PMAP3\000"
.LASF1243:
	.ascii	"S_PMAP4\000"
.LASF1244:
	.ascii	"S_PMAP5\000"
.LASF1245:
	.ascii	"S_PMAP6\000"
.LASF1876:
	.ascii	"sfx_bgsit1\000"
.LASF1877:
	.ascii	"sfx_bgsit2\000"
.LASF1792:
	.ascii	"special\000"
.LASF2485:
	.ascii	"numdefaults\000"
.LASF1808:
	.ascii	"ST_POSITIVE\000"
.LASF2378:
	.ascii	"key_reverse\000"
.LASF169:
	.ascii	"weapontype_t\000"
.LASF2457:
	.ascii	"demo_smoothturns\000"
.LASF1884:
	.ascii	"sfx_kntsit\000"
.LASF1423:
	.ascii	"state_t\000"
.LASF2527:
	.ascii	"set_auto_active\000"
.LASF2299:
	.ascii	"M_DrawColPal\000"
.LASF2204:
	.ascii	"M_ReadThis\000"
.LASF1653:
	.ascii	"viewheight\000"
.LASF2392:
	.ascii	"key_gamma\000"
.LASF2128:
	.ascii	"compat_blazing\000"
.LASF2459:
	.ascii	"message_dontfuckwithme\000"
.LASF2605:
	.ascii	"G_SaveGame\000"
.LASF103:
	.ascii	"_mblen_state\000"
.LASF1946:
	.ascii	"sfx_dgsit\000"
.LASF260:
	.ascii	"SPR_BFE1\000"
.LASF261:
	.ascii	"SPR_BFE2\000"
.LASF1662:
	.ascii	"pendingweapon\000"
.LASF2479:
	.ascii	"skullAnimCounter\000"
.LASF2603:
	.ascii	"S_SetMusicVolume\000"
.LASF1325:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1326:
	.ascii	"S_RTORCHSHRT3\000"
.LASF1327:
	.ascii	"S_RTORCHSHRT4\000"
.LASF2121:
	.ascii	"compat_falloff\000"
.LASF429:
	.ascii	"S_CHAINUP\000"
.LASF2586:
	.ascii	"chat_settings1\000"
.LASF2553:
	.ascii	"chat_index\000"
.LASF833:
	.ascii	"S_TROO_PAIN\000"
.LASF1801:
	.ascii	"specialdata\000"
.LASF296:
	.ascii	"SPR_BON1\000"
.LASF297:
	.ascii	"SPR_BON2\000"
.LASF2218:
	.ascii	"M_Compat\000"
.LASF536:
	.ascii	"S_PLAY_DIE1\000"
.LASF1447:
	.ascii	"MT_WOLFSS\000"
.LASF1616:
	.ascii	"bprev\000"
.LASF2579:
	.ascii	"gen_settings\000"
.LASF1210:
	.ascii	"S_YKEY\000"
.LASF62:
	.ascii	"_lock\000"
.LASF1121:
	.ascii	"S_SSWV_PAIN2\000"
.LASF136:
	.ascii	"german\000"
.LASF2044:
	.ascii	"music_vol\000"
.LASF1902:
	.ascii	"sfx_cacdth\000"
.LASF2513:
	.ascii	"msgNames\000"
.LASF1302:
	.ascii	"S_HEARTCOL\000"
.LASF2079:
	.ascii	"enem_infighting\000"
.LASF2623:
	.ascii	"strtok\000"
.LASF2469:
	.ascii	"messageLastMenuActive\000"
.LASF1619:
	.ascii	"ceilingz\000"
.LASF1114:
	.ascii	"S_SSWV_ATK1\000"
.LASF1115:
	.ascii	"S_SSWV_ATK2\000"
.LASF1116:
	.ascii	"S_SSWV_ATK3\000"
.LASF1117:
	.ascii	"S_SSWV_ATK4\000"
.LASF1118:
	.ascii	"S_SSWV_ATK5\000"
.LASF1119:
	.ascii	"S_SSWV_ATK6\000"
.LASF63:
	.ascii	"_mbstate\000"
.LASF1344:
	.ascii	"S_TECH2LAMP4\000"
.LASF1220:
	.ascii	"S_SOUL\000"
.LASF251:
	.ascii	"SPR_BFGF\000"
.LASF250:
	.ascii	"SPR_BFGG\000"
.LASF600:
	.ascii	"S_SPOS_DIE1\000"
.LASF601:
	.ascii	"S_SPOS_DIE2\000"
.LASF602:
	.ascii	"S_SPOS_DIE3\000"
.LASF603:
	.ascii	"S_SPOS_DIE4\000"
.LASF604:
	.ascii	"S_SPOS_DIE5\000"
.LASF2593:
	.ascii	"cred_settings\000"
.LASF262:
	.ascii	"SPR_TFOG\000"
.LASF2033:
	.ascii	"general\000"
.LASF2273:
	.ascii	"M_IndexInChoices\000"
.LASF973:
	.ascii	"S_SKULL_DIE1\000"
.LASF974:
	.ascii	"S_SKULL_DIE2\000"
.LASF975:
	.ascii	"S_SKULL_DIE3\000"
.LASF976:
	.ascii	"S_SKULL_DIE4\000"
.LASF977:
	.ascii	"S_SKULL_DIE5\000"
.LASF978:
	.ascii	"S_SKULL_DIE6\000"
.LASF2047:
	.ascii	"mouse_horiz\000"
.LASF2066:
	.ascii	"weap_stub1\000"
.LASF2076:
	.ascii	"weap_stub2\000"
.LASF2402:
	.ascii	"key_weapon6\000"
.LASF2403:
	.ascii	"key_weapon7\000"
.LASF2404:
	.ascii	"key_weapon8\000"
.LASF2215:
	.ascii	"M_Automap\000"
.LASF1606:
	.ascii	"pspdef_t\000"
.LASF701:
	.ascii	"S_SKEL_RUN1\000"
.LASF702:
	.ascii	"S_SKEL_RUN2\000"
.LASF703:
	.ascii	"S_SKEL_RUN3\000"
.LASF704:
	.ascii	"S_SKEL_RUN4\000"
.LASF705:
	.ascii	"S_SKEL_RUN5\000"
.LASF706:
	.ascii	"S_SKEL_RUN6\000"
.LASF707:
	.ascii	"S_SKEL_RUN7\000"
.LASF708:
	.ascii	"S_SKEL_RUN8\000"
.LASF709:
	.ascii	"S_SKEL_RUN9\000"
.LASF2463:
	.ascii	"screenblocks\000"
.LASF2311:
	.ascii	"messageString\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF2260:
	.ascii	"thermDot\000"
.LASF1352:
	.ascii	"S_DOGS_RUN1\000"
.LASF1353:
	.ascii	"S_DOGS_RUN2\000"
.LASF1354:
	.ascii	"S_DOGS_RUN3\000"
.LASF1355:
	.ascii	"S_DOGS_RUN4\000"
.LASF1356:
	.ascii	"S_DOGS_RUN5\000"
.LASF1357:
	.ascii	"S_DOGS_RUN6\000"
.LASF1358:
	.ascii	"S_DOGS_RUN7\000"
.LASF1359:
	.ascii	"S_DOGS_RUN8\000"
.LASF693:
	.ascii	"S_SMOKE5\000"
.LASF2099:
	.ascii	"general_leds\000"
.LASF2585:
	.ascii	"mess_settings\000"
.LASF2046:
	.ascii	"sound_end\000"
.LASF888:
	.ascii	"S_HEAD_DIE1\000"
.LASF889:
	.ascii	"S_HEAD_DIE2\000"
.LASF890:
	.ascii	"S_HEAD_DIE3\000"
.LASF891:
	.ascii	"S_HEAD_DIE4\000"
.LASF892:
	.ascii	"S_HEAD_DIE5\000"
.LASF893:
	.ascii	"S_HEAD_DIE6\000"
.LASF1706:
	.ascii	"comp_pain\000"
.LASF360:
	.ascii	"SPR_SMBT\000"
.LASF2385:
	.ascii	"key_soundvolume\000"
.LASF2336:
	.ascii	"menuactive\000"
.LASF2521:
	.ascii	"MouseDef\000"
.LASF1645:
	.ascii	"PrevZ\000"
.LASF1921:
	.ascii	"sfx_hoof\000"
.LASF2150:
	.ascii	"mess_lines\000"
.LASF2571:
	.ascii	"color_palette_x\000"
.LASF2572:
	.ascii	"color_palette_y\000"
.LASF2568:
	.ascii	"auto_settings1\000"
.LASF2411:
	.ascii	"key_map_zoomin\000"
.LASF222:
	.ascii	"VPT_TRANS\000"
.LASF2060:
	.ascii	"set_setup_end\000"
.LASF1033:
	.ascii	"S_BSPI_DIE3\000"
.LASF1034:
	.ascii	"S_BSPI_DIE4\000"
.LASF1035:
	.ascii	"S_BSPI_DIE5\000"
.LASF534:
	.ascii	"S_PLAY_PAIN\000"
.LASF1036:
	.ascii	"S_BSPI_DIE6\000"
.LASF2307:
	.ascii	"M_InitHelpScreen\000"
.LASF1277:
	.ascii	"S_DEADSTICK\000"
.LASF156:
	.ascii	"it_redskull\000"
.LASF314:
	.ascii	"SPR_CLIP\000"
.LASF1693:
	.ascii	"angleturn\000"
.LASF12:
	.ascii	"_fpos_t\000"
.LASF414:
	.ascii	"S_DSGUN2\000"
.LASF2135:
	.ascii	"compat_floors\000"
.LASF1404:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF1941:
	.ascii	"sfx_keendt\000"
.LASF1448:
	.ascii	"MT_KEEN\000"
.LASF279:
	.ascii	"SPR_BOS2\000"
.LASF1143:
	.ascii	"S_COMMKEEN2\000"
.LASF1144:
	.ascii	"S_COMMKEEN3\000"
.LASF1145:
	.ascii	"S_COMMKEEN4\000"
.LASF1146:
	.ascii	"S_COMMKEEN5\000"
.LASF1147:
	.ascii	"S_COMMKEEN6\000"
.LASF1148:
	.ascii	"S_COMMKEEN7\000"
.LASF1149:
	.ascii	"S_COMMKEEN8\000"
.LASF1150:
	.ascii	"S_COMMKEEN9\000"
.LASF1389:
	.ascii	"S_PLS2BALLX1\000"
.LASF1390:
	.ascii	"S_PLS2BALLX2\000"
.LASF1391:
	.ascii	"S_PLS2BALLX3\000"
.LASF215:
	.ascii	"prboom_6_compatibility\000"
.LASF290:
	.ascii	"SPR_BOSF\000"
.LASF14:
	.ascii	"__wch\000"
.LASF1872:
	.ascii	"sfx_telept\000"
.LASF278:
	.ascii	"SPR_BOSS\000"
.LASF1254:
	.ascii	"S_SHEL\000"
.LASF337:
	.ascii	"SPR_POL1\000"
.LASF333:
	.ascii	"SPR_POL2\000"
.LASF336:
	.ascii	"SPR_POL3\000"
.LASF335:
	.ascii	"SPR_POL4\000"
.LASF334:
	.ascii	"SPR_POL5\000"
.LASF338:
	.ascii	"SPR_POL6\000"
.LASF355:
	.ascii	"SPR_FSKU\000"
.LASF1974:
	.ascii	"selectstrings\000"
.LASF2431:
	.ascii	"warning_about_changes\000"
.LASF2406:
	.ascii	"destination_keys\000"
.LASF348:
	.ascii	"SPR_CAND\000"
.LASF2636:
	.ascii	"M_GetPixelWidth\000"
.LASF212:
	.ascii	"prboom_3_compatibility\000"
.LASF1415:
	.ascii	"statenum_t\000"
.LASF807:
	.ascii	"S_CPOS_XDIE1\000"
.LASF808:
	.ascii	"S_CPOS_XDIE2\000"
.LASF809:
	.ascii	"S_CPOS_XDIE3\000"
.LASF164:
	.ascii	"wp_bfg\000"
.LASF811:
	.ascii	"S_CPOS_XDIE5\000"
.LASF812:
	.ascii	"S_CPOS_XDIE6\000"
.LASF2555:
	.ascii	"ResetButtonName\000"
.LASF1141:
	.ascii	"S_KEENSTND\000"
.LASF527:
	.ascii	"S_PLAY\000"
.LASF88:
	.ascii	"__FILE\000"
.LASF1365:
	.ascii	"S_DOGS_DIE1\000"
.LASF770:
	.ascii	"S_FATT_DIE5\000"
.LASF2517:
	.ascii	"SoundMenu\000"
.LASF2480:
	.ascii	"whichSkull\000"
.LASF771:
	.ascii	"S_FATT_DIE6\000"
.LASF1751:
	.ascii	"ns_sprites\000"
.LASF772:
	.ascii	"S_FATT_DIE7\000"
.LASF773:
	.ascii	"S_FATT_DIE8\000"
.LASF104:
	.ascii	"_mbtowc_state\000"
.LASF2437:
	.ascii	"s_QLPROMPT\000"
.LASF2144:
	.ascii	"mess_timer\000"
.LASF2503:
	.ascii	"NewGameMenu\000"
.LASF1320:
	.ascii	"S_GTORCHSHRT\000"
.LASF2084:
	.ascii	"enem_friction\000"
.LASF18:
	.ascii	"__value\000"
.LASF934:
	.ascii	"S_BOS2_STND\000"
.LASF170:
	.ascii	"am_clip\000"
.LASF2129:
	.ascii	"compat_doorlight\000"
.LASF1919:
	.ascii	"sfx_barexp\000"
.LASF1821:
	.ascii	"patchnum_t\000"
.LASF2543:
	.ascii	"SetupDef\000"
.LASF468:
	.ascii	"S_BLOOD1\000"
.LASF469:
	.ascii	"S_BLOOD2\000"
.LASF470:
	.ascii	"S_BLOOD3\000"
.LASF2592:
	.ascii	"helpstrings\000"
.LASF1928:
	.ascii	"sfx_flame\000"
.LASF552:
	.ascii	"S_POSS_STND\000"
.LASF1856:
	.ascii	"sfx_pstop\000"
.LASF2195:
	.ascii	"M_DrawSave\000"
.LASF2548:
	.ascii	"EnemyDef\000"
.LASF1935:
	.ascii	"sfx_bosdth\000"
.LASF2254:
	.ascii	"M_DrawScreenItems\000"
.LASF1275:
	.ascii	"S_HEADCANDLES\000"
.LASF1780:
	.ascii	"touching_thinglist\000"
.LASF110:
	.ascii	"_mbrtowc_state\000"
.LASF1652:
	.ascii	"viewz\000"
.LASF2365:
	.ascii	"key_menu_backspace\000"
.LASF1912:
	.ascii	"sfx_posact\000"
.LASF1711:
	.ascii	"comp_god\000"
.LASF1054:
	.ascii	"S_CYBER_RUN1\000"
.LASF1055:
	.ascii	"S_CYBER_RUN2\000"
.LASF1056:
	.ascii	"S_CYBER_RUN3\000"
.LASF1057:
	.ascii	"S_CYBER_RUN4\000"
.LASF1058:
	.ascii	"S_CYBER_RUN5\000"
.LASF1059:
	.ascii	"S_CYBER_RUN6\000"
.LASF209:
	.ascii	"mbf_compatibility\000"
.LASF1061:
	.ascii	"S_CYBER_RUN8\000"
.LASF33:
	.ascii	"__tm_year\000"
.LASF17:
	.ascii	"__count\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF361:
	.ascii	"SPR_SMGT\000"
.LASF1673:
	.ascii	"message\000"
.LASF192:
	.ascii	"ss_comp\000"
.LASF2391:
	.ascii	"key_quit\000"
.LASF1300:
	.ascii	"S_FLOATSKULL2\000"
.LASF1301:
	.ascii	"S_FLOATSKULL3\000"
.LASF1569:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF1986:
	.ascii	"LO_INFO\000"
.LASF267:
	.ascii	"SPR_VILE\000"
.LASF1704:
	.ascii	"comp_dropoff\000"
.LASF2496:
	.ascii	"ReadDef1\000"
.LASF2497:
	.ascii	"ReadDef2\000"
.LASF501:
	.ascii	"S_BFGEXP\000"
.LASF2062:
	.ascii	"generic_setup_end\000"
.LASF2111:
	.ascii	"general_filterfloor\000"
.LASF2576:
	.ascii	"gen_settings1\000"
.LASF1317:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1318:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1319:
	.ascii	"S_BTORCHSHRT4\000"
.LASF1883:
	.ascii	"sfx_bspsit\000"
.LASF2383:
	.ascii	"key_enter\000"
.LASF220:
	.ascii	"VPT_NONE\000"
.LASF1880:
	.ascii	"sfx_brssit\000"
.LASF399:
	.ascii	"S_SGUN1\000"
.LASF400:
	.ascii	"S_SGUN2\000"
.LASF401:
	.ascii	"S_SGUN3\000"
.LASF402:
	.ascii	"S_SGUN4\000"
.LASF403:
	.ascii	"S_SGUN5\000"
.LASF404:
	.ascii	"S_SGUN6\000"
.LASF282:
	.ascii	"SPR_BSPI\000"
.LASF406:
	.ascii	"S_SGUN8\000"
.LASF407:
	.ascii	"S_SGUN9\000"
.LASF2088:
	.ascii	"enem_dog_jumping\000"
.LASF1785:
	.ascii	"ceiling_xoffs\000"
.LASF1923:
	.ascii	"sfx_chgun\000"
.LASF1861:
	.ascii	"sfx_swtchx\000"
.LASF1219:
	.ascii	"S_MEDI\000"
.LASF867:
	.ascii	"S_SARG_PAIN2\000"
.LASF619:
	.ascii	"S_VILE_STND\000"
.LASF2591:
	.ascii	"ExtHelpDef\000"
.LASF1744:
	.ascii	"ev_joystick\000"
.LASF1686:
	.ascii	"m_tnext\000"
.LASF1955:
	.ascii	"m_menu\000"
.LASF1791:
	.ascii	"lightlevel\000"
.LASF2608:
	.ascii	"R_SmoothPlaying_Reset\000"
.LASF34:
	.ascii	"__tm_wday\000"
.LASF1456:
	.ascii	"MT_HEADSHOT\000"
.LASF2419:
	.ascii	"key_screenshot\000"
.LASF343:
	.ascii	"SPR_SMIT\000"
.LASF2498:
	.ascii	"HelpDef\000"
.LASF94:
	.ascii	"_mult\000"
.LASF1291:
	.ascii	"S_SKULLCOL\000"
.LASF280:
	.ascii	"SPR_SKUL\000"
.LASF1566:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF2364:
	.ascii	"key_menu_down\000"
.LASF1667:
	.ascii	"usedown\000"
.LASF145:
	.ascii	"sk_baby\000"
.LASF1380:
	.ascii	"S_PLS1BALL\000"
.LASF1860:
	.ascii	"sfx_swtchn\000"
.LASF1122:
	.ascii	"S_SSWV_DIE1\000"
.LASF1123:
	.ascii	"S_SSWV_DIE2\000"
.LASF1124:
	.ascii	"S_SSWV_DIE3\000"
.LASF1125:
	.ascii	"S_SSWV_DIE4\000"
.LASF1126:
	.ascii	"S_SSWV_DIE5\000"
.LASF1917:
	.ascii	"sfx_vilact\000"
.LASF241:
	.ascii	"SPR_SHTF\000"
.LASF944:
	.ascii	"S_BOS2_ATK1\000"
.LASF945:
	.ascii	"S_BOS2_ATK2\000"
.LASF946:
	.ascii	"S_BOS2_ATK3\000"
.LASF1564:
	.ascii	"MT_STEALTHBABY\000"
.LASF729:
	.ascii	"S_SKEL_RAISE1\000"
.LASF730:
	.ascii	"S_SKEL_RAISE2\000"
.LASF731:
	.ascii	"S_SKEL_RAISE3\000"
.LASF732:
	.ascii	"S_SKEL_RAISE4\000"
.LASF733:
	.ascii	"S_SKEL_RAISE5\000"
.LASF734:
	.ascii	"S_SKEL_RAISE6\000"
.LASF905:
	.ascii	"S_BOSS_STND\000"
.LASF1185:
	.ascii	"S_BAR2\000"
.LASF2045:
	.ascii	"sfx_empty2\000"
.LASF2460:
	.ascii	"chat_on\000"
.LASF1777:
	.ascii	"bottommap\000"
.LASF2168:
	.ascii	"choice\000"
.LASF1625:
	.ascii	"info\000"
.LASF2152:
	.ascii	"mess_background\000"
.LASF1084:
	.ascii	"S_PAIN_RUN5\000"
.LASF2212:
	.ascii	"M_KeyBindings\000"
.LASF562:
	.ascii	"S_POSS_ATK1\000"
.LASF563:
	.ascii	"S_POSS_ATK2\000"
.LASF564:
	.ascii	"S_POSS_ATK3\000"
.LASF840:
	.ascii	"S_TROO_XDIE1\000"
.LASF841:
	.ascii	"S_TROO_XDIE2\000"
.LASF842:
	.ascii	"S_TROO_XDIE3\000"
.LASF843:
	.ascii	"S_TROO_XDIE4\000"
.LASF844:
	.ascii	"S_TROO_XDIE5\000"
.LASF845:
	.ascii	"S_TROO_XDIE6\000"
.LASF846:
	.ascii	"S_TROO_XDIE7\000"
.LASF847:
	.ascii	"S_TROO_XDIE8\000"
.LASF1431:
	.ascii	"MT_SMOKE\000"
.LASF2369:
	.ascii	"key_straferight\000"
.LASF1608:
	.ascii	"type\000"
.LASF2599:
	.ascii	"strcmp\000"
.LASF1235:
	.ascii	"S_MEGA\000"
.LASF2408:
	.ascii	"key_map_left\000"
.LASF1959:
	.ascii	"menu\000"
.LASF2465:
	.ascii	"quickSaveSlot\000"
.LASF285:
	.ascii	"SPR_CYBR\000"
.LASF1819:
	.ascii	"topoffset\000"
.LASF1811:
	.ascii	"RF_TOP_TILE\000"
.LASF1911:
	.ascii	"sfx_skedth\000"
.LASF321:
	.ascii	"SPR_SBOX\000"
.LASF265:
	.ascii	"SPR_POSS\000"
.LASF1988:
	.ascii	"LO_WARN\000"
.LASF1822:
	.ascii	"CR_BRICK\000"
.LASF259:
	.ascii	"SPR_BFS1\000"
.LASF2132:
	.ascii	"compat_zombie\000"
.LASF2433:
	.ascii	"menu_background\000"
.LASF2470:
	.ascii	"messageNeedsInput\000"
.LASF263:
	.ascii	"SPR_IFOG\000"
.LASF1268:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1269:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF1905:
	.ascii	"sfx_cybdth\000"
.LASF2309:
	.ascii	"M_Init\000"
.LASF1617:
	.ascii	"subsector\000"
.LASF1920:
	.ascii	"sfx_punch\000"
.LASF1848:
	.ascii	"sfx_sawidl\000"
.LASF2112:
	.ascii	"general_filtersprite\000"
.LASF2481:
	.ascii	"skullName\000"
.LASF162:
	.ascii	"wp_missile\000"
.LASF633:
	.ascii	"S_VILE_ATK1\000"
.LASF634:
	.ascii	"S_VILE_ATK2\000"
.LASF635:
	.ascii	"S_VILE_ATK3\000"
.LASF636:
	.ascii	"S_VILE_ATK4\000"
.LASF637:
	.ascii	"S_VILE_ATK5\000"
.LASF638:
	.ascii	"S_VILE_ATK6\000"
.LASF639:
	.ascii	"S_VILE_ATK7\000"
.LASF640:
	.ascii	"S_VILE_ATK8\000"
.LASF641:
	.ascii	"S_VILE_ATK9\000"
.LASF586:
	.ascii	"S_SPOS_STND2\000"
.LASF1209:
	.ascii	"S_RKEY2\000"
.LASF997:
	.ascii	"S_SPID_PAIN\000"
.LASF1790:
	.ascii	"ceilingpic\000"
.LASF1948:
	.ascii	"sfx_dgact\000"
.LASF1984:
	.ascii	"def_colour\000"
.LASF1745:
	.ascii	"evtype_t\000"
.LASF171:
	.ascii	"am_shell\000"
.LASF2271:
	.ascii	"warn\000"
.LASF1252:
	.ascii	"S_CELL\000"
.LASF2158:
	.ascii	"cr_prog\000"
.LASF1733:
	.ascii	"am_overlay\000"
.LASF1581:
	.ascii	"seestate\000"
.LASF2573:
	.ascii	"palette_background\000"
.LASF56:
	.ascii	"_close\000"
.LASF1432:
	.ascii	"MT_FATSO\000"
.LASF1724:
	.ascii	"comp_sound\000"
.LASF323:
	.ascii	"SPR_BFUG\000"
.LASF1969:
	.ascii	"m_text\000"
.LASF1262:
	.ascii	"S_SHOT\000"
.LASF1434:
	.ascii	"MT_CHAINGUY\000"
.LASF1441:
	.ascii	"MT_KNIGHT\000"
.LASF461:
	.ascii	"S_BFGUP\000"
.LASF886:
	.ascii	"S_HEAD_PAIN2\000"
.LASF887:
	.ascii	"S_HEAD_PAIN3\000"
.LASF2274:
	.ascii	"choices\000"
.LASF2290:
	.ascii	"value\000"
.LASF22:
	.ascii	"_next\000"
.LASF875:
	.ascii	"S_SARG_RAISE2\000"
.LASF876:
	.ascii	"S_SARG_RAISE3\000"
.LASF877:
	.ascii	"S_SARG_RAISE4\000"
.LASF878:
	.ascii	"S_SARG_RAISE5\000"
.LASF879:
	.ascii	"S_SARG_RAISE6\000"
.LASF2017:
	.ascii	"ep_end\000"
.LASF1215:
	.ascii	"S_RSKULL2\000"
.LASF919:
	.ascii	"S_BOSS_PAIN2\000"
.LASF2510:
	.ascii	"OptionsMenu\000"
.LASF190:
	.ascii	"ss_chat\000"
.LASF1754:
	.ascii	"ns_hires\000"
.LASF1160:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1903:
	.ascii	"sfx_skldth\000"
.LASF1111:
	.ascii	"S_SSWV_RUN6\000"
.LASF1940:
	.ascii	"sfx_keenpn\000"
.LASF1195:
	.ascii	"S_BON1A\000"
.LASF1196:
	.ascii	"S_BON1B\000"
.LASF1197:
	.ascii	"S_BON1C\000"
.LASF1198:
	.ascii	"S_BON1D\000"
.LASF1199:
	.ascii	"S_BON1E\000"
.LASF2217:
	.ascii	"M_General\000"
.LASF1584:
	.ascii	"attacksound\000"
.LASF2213:
	.ascii	"M_Weapons\000"
.LASF1976:
	.ascii	"ppsz\000"
.LASF2117:
	.ascii	"general_patchedges\000"
.LASF1573:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF2327:
	.ascii	"gamemode\000"
.LASF1766:
	.ascii	"soundtarget\000"
.LASF1201:
	.ascii	"S_BON2A\000"
.LASF1202:
	.ascii	"S_BON2B\000"
.LASF1203:
	.ascii	"S_BON2C\000"
.LASF1204:
	.ascii	"S_BON2D\000"
.LASF1205:
	.ascii	"S_BON2E\000"
.LASF225:
	.ascii	"angle_t\000"
.LASF2478:
	.ascii	"itemOn\000"
.LASF1377:
	.ascii	"S_OLDBFG1\000"
.LASF1091:
	.ascii	"S_PAIN_PAIN2\000"
.LASF2495:
	.ascii	"HelpMenu\000"
.LASF381:
	.ascii	"S_PUNCHDOWN\000"
.LASF101:
	.ascii	"_rand_next\000"
.LASF2279:
	.ascii	"mousey\000"
.LASF2186:
	.ascii	"M_NewGame\000"
.LASF1828:
	.ascii	"CR_RED\000"
.LASF894:
	.ascii	"S_HEAD_RAISE1\000"
.LASF895:
	.ascii	"S_HEAD_RAISE2\000"
.LASF896:
	.ascii	"S_HEAD_RAISE3\000"
.LASF897:
	.ascii	"S_HEAD_RAISE4\000"
.LASF898:
	.ascii	"S_HEAD_RAISE5\000"
.LASF899:
	.ascii	"S_HEAD_RAISE6\000"
.LASF125:
	.ascii	"PU_CACHE\000"
.LASF1789:
	.ascii	"floorpic\000"
.LASF2598:
	.ascii	"strcpy\000"
.LASF2505:
	.ascii	"LoadMenue\000"
.LASF2234:
	.ascii	"M_MusicVol\000"
.LASF233:
	.ascii	"cprev\000"
.LASF1991:
	.ascii	"LO_DEBUG\000"
.LASF345:
	.ascii	"SPR_COL2\000"
.LASF1588:
	.ascii	"meleestate\000"
.LASF1705:
	.ascii	"comp_vile\000"
.LASF1970:
	.ascii	"m_flags\000"
.LASF441:
	.ascii	"S_MISSILEFLASH1\000"
.LASF362:
	.ascii	"SPR_SMRT\000"
.LASF443:
	.ascii	"S_MISSILEFLASH3\000"
.LASF444:
	.ascii	"S_MISSILEFLASH4\000"
.LASF1053:
	.ascii	"S_CYBER_STND2\000"
.LASF2210:
	.ascii	"M_ChangeSensitivity\000"
.LASF722:
	.ascii	"S_SKEL_PAIN2\000"
.LASF134:
	.ascii	"english\000"
.LASF132:
	.ascii	"indetermined\000"
.LASF2298:
	.ascii	"M_DrawStatusHUD\000"
.LASF1868:
	.ascii	"sfx_slop\000"
.LASF379:
	.ascii	"S_LIGHTDONE\000"
.LASF1937:
	.ascii	"sfx_mandth\000"
.LASF168:
	.ascii	"wp_nochange\000"
.LASF990:
	.ascii	"S_SPID_RUN10\000"
.LASF991:
	.ascii	"S_SPID_RUN11\000"
.LASF992:
	.ascii	"S_SPID_RUN12\000"
.LASF866:
	.ascii	"S_SARG_PAIN\000"
.LASF76:
	.ascii	"_result\000"
.LASF1465:
	.ascii	"MT_TELEPORTMAN\000"
.LASF1463:
	.ascii	"MT_TFOG\000"
.LASF2595:
	.ascii	"G_LoadGame\000"
.LASF203:
	.ascii	"dosdoom_compatibility\000"
.LASF512:
	.ascii	"S_TFOG3\000"
.LASF513:
	.ascii	"S_TFOG4\000"
.LASF514:
	.ascii	"S_TFOG5\000"
.LASF515:
	.ascii	"S_TFOG6\000"
.LASF516:
	.ascii	"S_TFOG7\000"
.LASF517:
	.ascii	"S_TFOG8\000"
.LASF518:
	.ascii	"S_TFOG9\000"
.LASF566:
	.ascii	"S_POSS_PAIN2\000"
.LASF2310:
	.ascii	"finecosine\000"
.LASF395:
	.ascii	"S_PISTOLFLASH\000"
.LASF137:
	.ascii	"unknown\000"
.LASF2596:
	.ascii	"Z_Free\000"
.LASF1684:
	.ascii	"m_thing\000"
.LASF949:
	.ascii	"S_BOS2_DIE1\000"
.LASF950:
	.ascii	"S_BOS2_DIE2\000"
.LASF951:
	.ascii	"S_BOS2_DIE3\000"
.LASF331:
	.ascii	"SPR_SMT2\000"
.LASF953:
	.ascii	"S_BOS2_DIE5\000"
.LASF955:
	.ascii	"S_BOS2_DIE7\000"
.LASF301:
	.ascii	"SPR_BSKU\000"
.LASF217:
	.ascii	"boom_compatibility\000"
.LASF2611:
	.ascii	"G_RestartLevel\000"
.LASF2501:
	.ascii	"EpiDef\000"
.LASF2627:
	.ascii	"M_ScreenShot\000"
.LASF2209:
	.ascii	"M_Sound\000"
.LASF92:
	.ascii	"_rand48\000"
.LASF1313:
	.ascii	"S_REDTORCH2\000"
.LASF1314:
	.ascii	"S_REDTORCH3\000"
.LASF1315:
	.ascii	"S_REDTORCH4\000"
.LASF1285:
	.ascii	"S_TALLGRNCOL\000"
.LASF1973:
	.ascii	"m_joy\000"
.LASF466:
	.ascii	"S_BFGFLASH1\000"
.LASF157:
	.ascii	"NUMCARDS\000"
.LASF1183:
	.ascii	"S_ARM2A\000"
.LASF114:
	.ascii	"_h_errno\000"
.LASF567:
	.ascii	"S_POSS_DIE1\000"
.LASF568:
	.ascii	"S_POSS_DIE2\000"
.LASF569:
	.ascii	"S_POSS_DIE3\000"
.LASF390:
	.ascii	"S_PISTOLUP\000"
.LASF571:
	.ascii	"S_POSS_DIE5\000"
.LASF2347:
	.ascii	"NUM_QUITMESSAGES\000"
.LASF1256:
	.ascii	"S_BPAK\000"
.LASF1708:
	.ascii	"comp_blazing\000"
.LASF1787:
	.ascii	"floorlightsec\000"
.LASF315:
	.ascii	"SPR_AMMO\000"
.LASF642:
	.ascii	"S_VILE_ATK10\000"
.LASF377:
	.ascii	"spritenum_t\000"
.LASF2482:
	.ascii	"currentMenu\000"
.LASF2312:
	.ascii	"forced_loadgame_message\000"
.LASF505:
	.ascii	"S_EXPLODE1\000"
.LASF506:
	.ascii	"S_EXPLODE2\000"
.LASF507:
	.ascii	"S_EXPLODE3\000"
.LASF198:
	.ascii	"doom_12_compatibility\000"
.LASF1419:
	.ascii	"action\000"
.LASF38:
	.ascii	"_fnargs\000"
.LASF2453:
	.ascii	"s_EMPTYSTRING\000"
.LASF363:
	.ascii	"SPR_HDB1\000"
.LASF364:
	.ascii	"SPR_HDB2\000"
.LASF365:
	.ascii	"SPR_HDB3\000"
.LASF366:
	.ascii	"SPR_HDB4\000"
.LASF367:
	.ascii	"SPR_HDB5\000"
.LASF368:
	.ascii	"SPR_HDB6\000"
.LASF907:
	.ascii	"S_BOSS_RUN1\000"
.LASF908:
	.ascii	"S_BOSS_RUN2\000"
.LASF909:
	.ascii	"S_BOSS_RUN3\000"
.LASF910:
	.ascii	"S_BOSS_RUN4\000"
.LASF445:
	.ascii	"S_SAW\000"
.LASF912:
	.ascii	"S_BOSS_RUN6\000"
.LASF913:
	.ascii	"S_BOSS_RUN7\000"
.LASF914:
	.ascii	"S_BOSS_RUN8\000"
.LASF1292:
	.ascii	"S_TORCHTREE\000"
.LASF1339:
	.ascii	"S_TECHLAMP3\000"
.LASF1340:
	.ascii	"S_TECHLAMP4\000"
.LASF1571:
	.ascii	"MT_STEALTHIMP\000"
.LASF1809:
	.ascii	"ST_NEGATIVE\000"
.LASF2105:
	.ascii	"general_realtic\000"
.LASF2635:
	.ascii	"M_DrawDefVerify\000"
.LASF96:
	.ascii	"_unused_rand\000"
.LASF2382:
	.ascii	"key_backspace\000"
.LASF2547:
	.ascii	"AutoMapDef\000"
.LASF902:
	.ascii	"S_BRBALLX1\000"
.LASF903:
	.ascii	"S_BRBALLX2\000"
.LASF904:
	.ascii	"S_BRBALLX3\000"
.LASF699:
	.ascii	"S_SKEL_STND\000"
.LASF1632:
	.ascii	"threshold\000"
.LASF1631:
	.ascii	"target\000"
.LASF1351:
	.ascii	"S_DOGS_STND2\000"
.LASF2449:
	.ascii	"s_GAMMALVL1\000"
.LASF2450:
	.ascii	"s_GAMMALVL2\000"
.LASF742:
	.ascii	"S_FATT_RUN1\000"
.LASF743:
	.ascii	"S_FATT_RUN2\000"
.LASF744:
	.ascii	"S_FATT_RUN3\000"
.LASF745:
	.ascii	"S_FATT_RUN4\000"
.LASF746:
	.ascii	"S_FATT_RUN5\000"
.LASF747:
	.ascii	"S_FATT_RUN6\000"
.LASF748:
	.ascii	"S_FATT_RUN7\000"
.LASF749:
	.ascii	"S_FATT_RUN8\000"
.LASF750:
	.ascii	"S_FATT_RUN9\000"
.LASF295:
	.ascii	"SPR_FCAN\000"
.LASF2421:
	.ascii	"mousebfire\000"
.LASF649:
	.ascii	"S_VILE_DIE1\000"
.LASF650:
	.ascii	"S_VILE_DIE2\000"
.LASF651:
	.ascii	"S_VILE_DIE3\000"
.LASF652:
	.ascii	"S_VILE_DIE4\000"
.LASF653:
	.ascii	"S_VILE_DIE5\000"
.LASF654:
	.ascii	"S_VILE_DIE6\000"
.LASF655:
	.ascii	"S_VILE_DIE7\000"
.LASF656:
	.ascii	"S_VILE_DIE8\000"
.LASF657:
	.ascii	"S_VILE_DIE9\000"
.LASF428:
	.ascii	"S_CHAINDOWN\000"
.LASF1211:
	.ascii	"S_YKEY2\000"
.LASF40:
	.ascii	"_fntypes\000"
.LASF1590:
	.ascii	"deathstate\000"
.LASF1813:
	.ascii	"RF_BOT_TILE\000"
.LASF1783:
	.ascii	"floor_xoffs\000"
.LASF696:
	.ascii	"S_TRACEEXP1\000"
.LASF697:
	.ascii	"S_TRACEEXP2\000"
.LASF698:
	.ascii	"S_TRACEEXP3\000"
.LASF224:
	.ascii	"fixed_t\000"
.LASF2444:
	.ascii	"s_MSGON\000"
.LASF2314:
	.ascii	"menu_buffer\000"
.LASF1805:
	.ascii	"sector_t\000"
.LASF1239:
	.ascii	"S_SUIT\000"
.LASF218:
	.ascii	"best_compatibility\000"
.LASF1561:
	.ascii	"MT_PUSH\000"
.LASF1837:
	.ascii	"sfx_None\000"
.LASF1613:
	.ascii	"snext\000"
.LASF658:
	.ascii	"S_VILE_DIE10\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF2532:
	.ascii	"setup_gather\000"
.LASF2447:
	.ascii	"s_DOSY\000"
.LASF196:
	.ascii	"byte\000"
.LASF1853:
	.ascii	"sfx_firsht\000"
.LASF1914:
	.ascii	"sfx_dmact\000"
.LASF1957:
	.ascii	"m_key\000"
.LASF2009:
	.ascii	"quitdoom\000"
.LASF2251:
	.ascii	"text\000"
.LASF2581:
	.ascii	"comp_settings2\000"
.LASF786:
	.ascii	"S_CPOS_RUN1\000"
.LASF787:
	.ascii	"S_CPOS_RUN2\000"
.LASF788:
	.ascii	"S_CPOS_RUN3\000"
.LASF789:
	.ascii	"S_CPOS_RUN4\000"
.LASF790:
	.ascii	"S_CPOS_RUN5\000"
.LASF791:
	.ascii	"S_CPOS_RUN6\000"
.LASF792:
	.ascii	"S_CPOS_RUN7\000"
.LASF793:
	.ascii	"S_CPOS_RUN8\000"
.LASF2428:
	.ascii	"joybuse\000"
.LASF186:
	.ascii	"ss_stat\000"
.LASF509:
	.ascii	"S_TFOG01\000"
.LASF510:
	.ascii	"S_TFOG02\000"
.LASF2430:
	.ascii	"defaultskill\000"
.LASF126:
	.ascii	"PU_NEWBLOCK\000"
.LASF1723:
	.ascii	"comp_respawn\000"
.LASF1762:
	.ascii	"ceilingheight\000"
.LASF2373:
	.ascii	"key_speed\000"
.LASF2477:
	.ascii	"savegamestrings\000"
.LASF2262:
	.ascii	"M_DrawOptions\000"
.LASF2239:
	.ascii	"M_ChangeDemoSmoothTurns\000"
.LASF2086:
	.ascii	"enem_helpers\000"
.LASF2509:
	.ascii	"options_e\000"
.LASF1753:
	.ascii	"ns_colormaps\000"
.LASF1289:
	.ascii	"S_CANDLESTIK\000"
.LASF1823:
	.ascii	"CR_TAN\000"
.LASF1947:
	.ascii	"sfx_dgatk\000"
.LASF2362:
	.ascii	"key_menu_left\000"
.LASF2007:
	.ascii	"savegame\000"
.LASF964:
	.ascii	"S_SKULL_STND2\000"
.LASF1736:
	.ascii	"am_grid\000"
.LASF519:
	.ascii	"S_TFOG10\000"
.LASF2248:
	.ascii	"index\000"
.LASF1602:
	.ascii	"ps_weapon\000"
.LASF2276:
	.ascii	"M_Responder\000"
.LASF2334:
	.ascii	"snd_MusicVolume\000"
.LASF149:
	.ascii	"sk_nightmare\000"
.LASF1713:
	.ascii	"comp_floors\000"
.LASF1324:
	.ascii	"S_RTORCHSHRT\000"
.LASF318:
	.ascii	"SPR_CELL\000"
.LASF319:
	.ascii	"SPR_CELP\000"
.LASF493:
	.ascii	"S_BFGSHOT\000"
.LASF1995:
	.ascii	"routine\000"
.LASF1924:
	.ascii	"sfx_tink\000"
.LASF207:
	.ascii	"boom_202_compatibility\000"
.LASF67:
	.ascii	"_stdin\000"
.LASF2191:
	.ascii	"M_QuickSaveResponse\000"
.LASF2432:
	.ascii	"print_warning_about_changes\000"
.LASF1360:
	.ascii	"S_DOGS_ATK1\000"
.LASF1361:
	.ascii	"S_DOGS_ATK2\000"
.LASF1362:
	.ascii	"S_DOGS_ATK3\000"
.LASF2250:
	.ascii	"M_DrawSetting\000"
.LASF2308:
	.ascii	"M_InitDefaults\000"
.LASF1464:
	.ascii	"MT_IFOG\000"
.LASF70:
	.ascii	"_inc\000"
.LASF43:
	.ascii	"_ind\000"
.LASF2375:
	.ascii	"key_savegame\000"
.LASF1786:
	.ascii	"ceiling_yoffs\000"
.LASF1413:
	.ascii	"S_MUSHROOM\000"
.LASF1568:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF3:
	.ascii	"short int\000"
.LASF272:
	.ascii	"SPR_MANF\000"
.LASF1304:
	.ascii	"S_BLUETORCH\000"
.LASF2356:
	.ascii	"hud_active\000"
.LASF1707:
	.ascii	"comp_skull\000"
.LASF54:
	.ascii	"_write\000"
.LASF2367:
	.ascii	"key_menu_enter\000"
.LASF1051:
	.ascii	"S_ARACH_PLEX5\000"
.LASF1943:
	.ascii	"sfx_skesit\000"
.LASF299:
	.ascii	"SPR_RKEY\000"
.LASF2499:
	.ascii	"episodes_e\000"
.LASF1585:
	.ascii	"painstate\000"
.LASF1052:
	.ascii	"S_CYBER_STND\000"
.LASF1387:
	.ascii	"S_PLS2BALL\000"
.LASF1881:
	.ascii	"sfx_cybsit\000"
.LASF2321:
	.ascii	"shiftdown\000"
.LASF2187:
	.ascii	"M_ChooseSkill\000"
.LASF1120:
	.ascii	"S_SSWV_PAIN\000"
.LASF172:
	.ascii	"am_cell\000"
.LASF1628:
	.ascii	"movedir\000"
.LASF2483:
	.ascii	"shiftxform\000"
.LASF775:
	.ascii	"S_FATT_DIE10\000"
.LASF2172:
	.ascii	"M_ClearMenus\000"
.LASF1717:
	.ascii	"comp_staylift\000"
.LASF1589:
	.ascii	"missilestate\000"
.LASF1967:
	.ascii	"setup_menu\000"
.LASF1846:
	.ascii	"sfx_bfg\000"
.LASF193:
	.ascii	"ss_max\000"
.LASF2552:
	.ascii	"CompatDef\000"
.LASF2587:
	.ascii	"chat_settings\000"
.LASF1458:
	.ascii	"MT_PLASMA\000"
.LASF1929:
	.ascii	"sfx_flamst\000"
.LASF2083:
	.ascii	"enem_avoid_hazards\000"
.LASF269:
	.ascii	"SPR_FATB\000"
.LASF2137:
	.ascii	"compat_model\000"
.LASF273:
	.ascii	"SPR_FATT\000"
.LASF2053:
	.ascii	"set_key_bindings\000"
.LASF1712:
	.ascii	"comp_falloff\000"
.LASF1232:
	.ascii	"S_PINS2\000"
.LASF1233:
	.ascii	"S_PINS3\000"
.LASF1234:
	.ascii	"S_PINS4\000"
.LASF2439:
	.ascii	"s_RESTARTLEVEL\000"
.LASF2425:
	.ascii	"mousebuse\000"
.LASF72:
	.ascii	"_current_category\000"
.LASF2249:
	.ascii	"M_DrawItem\000"
.LASF2634:
	.ascii	"allow_changes\000"
.LASF2174:
	.ascii	"M_VerifyNightmare\000"
.LASF2277:
	.ascii	"joywait\000"
.LASF1842:
	.ascii	"sfx_dbopn\000"
.LASF2095:
	.ascii	"general_sndchan\000"
.LASF2175:
	.ascii	"M_Mouse\000"
.LASF1330:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1879:
	.ascii	"sfx_cacsit\000"
.LASF2490:
	.ascii	"read_e\000"
.LASF133:
	.ascii	"GameMode_t\000"
.LASF2394:
	.ascii	"key_pause\000"
.LASF2255:
	.ascii	"M_DrawHelp\000"
.LASF1414:
	.ascii	"NUMSTATES\000"
.LASF1046:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF300:
	.ascii	"SPR_YKEY\000"
.LASF1443:
	.ascii	"MT_SPIDER\000"
.LASF1335:
	.ascii	"S_SMALLPOOL\000"
.LASF1609:
	.ascii	"options\000"
.LASF5:
	.ascii	"long int\000"
.LASF1290:
	.ascii	"S_CANDELABRA\000"
.LASF1820:
	.ascii	"lumpnum\000"
.LASF1322:
	.ascii	"S_GTORCHSHRT3\000"
.LASF46:
	.ascii	"_base\000"
.LASF1477:
	.ascii	"MT_MISC10\000"
.LASF1062:
	.ascii	"S_CYBER_ATK1\000"
.LASF1063:
	.ascii	"S_CYBER_ATK2\000"
.LASF1064:
	.ascii	"S_CYBER_ATK3\000"
.LASF1065:
	.ascii	"S_CYBER_ATK4\000"
.LASF1066:
	.ascii	"S_CYBER_ATK5\000"
.LASF1067:
	.ascii	"S_CYBER_ATK6\000"
.LASF2306:
	.ascii	"M_DrawCredits\000"
.LASF1665:
	.ascii	"maxammo\000"
.LASF1293:
	.ascii	"S_BIGTREE\000"
.LASF306:
	.ascii	"SPR_SOUL\000"
.LASF274:
	.ascii	"SPR_CPOS\000"
.LASF1847:
	.ascii	"sfx_sawup\000"
.LASF1227:
	.ascii	"S_PINV2\000"
.LASF1228:
	.ascii	"S_PINV3\000"
.LASF1229:
	.ascii	"S_PINV4\000"
.LASF436:
	.ascii	"S_MISSILEDOWN\000"
.LASF106:
	.ascii	"_l64a_buf\000"
.LASF1105:
	.ascii	"S_SSWV_STND2\000"
.LASF1722:
	.ascii	"comp_moveblock\000"
.LASF2113:
	.ascii	"general_filterpatch\000"
.LASF2287:
	.ascii	"search\000"
.LASF253:
	.ascii	"SPR_PUFF\000"
.LASF2259:
	.ascii	"thermWidth\000"
.LASF372:
	.ascii	"SPR_TLMP\000"
.LASF1299:
	.ascii	"S_FLOATSKULL\000"
.LASF1678:
	.ascii	"fixedcolormap\000"
.LASF69:
	.ascii	"_stderr\000"
.LASF2228:
	.ascii	"namebfr\000"
.LASF2221:
	.ascii	"M_ExtHelp\000"
.LASF1916:
	.ascii	"sfx_bspwlk\000"
.LASF2484:
	.ascii	"defaults\000"
.LASF1605:
	.ascii	"state\000"
.LASF598:
	.ascii	"S_SPOS_PAIN\000"
.LASF1990:
	.ascii	"LO_FATAL\000"
.LASF494:
	.ascii	"S_BFGSHOT2\000"
.LASF1966:
	.ascii	"current\000"
.LASF2442:
	.ascii	"s_SAVING\000"
.LASF971:
	.ascii	"S_SKULL_PAIN\000"
.LASF2360:
	.ascii	"key_down\000"
.LASF2494:
	.ascii	"ReadMenu2\000"
.LASF1328:
	.ascii	"S_HANGNOGUTS\000"
.LASF2087:
	.ascii	"enem_distfriend\000"
.LASF1499:
	.ascii	"MT_MISC27\000"
.LASF2051:
	.ascii	"mouse_end\000"
.LASF1500:
	.ascii	"MT_MISC28\000"
.LASF1503:
	.ascii	"MT_MISC29\000"
.LASF1639:
	.ascii	"lastenemy\000"
.LASF1886:
	.ascii	"sfx_mansit\000"
.LASF2207:
	.ascii	"M_FinishHelp\000"
.LASF29:
	.ascii	"__tm_min\000"
.LASF1577:
	.ascii	"mobjtype_t\000"
.LASF1700:
	.ascii	"PST_REBORN\000"
.LASF1961:
	.ascii	"location\000"
.LASF1771:
	.ascii	"ceilingdata\000"
.LASF128:
	.ascii	"shareware\000"
.LASF2103:
	.ascii	"general_deh2\000"
.LASF2037:
	.ascii	"scrnsize\000"
.LASF113:
	.ascii	"_wcsrtombs_state\000"
.LASF1137:
	.ascii	"S_SSWV_RAISE2\000"
.LASF1142:
	.ascii	"S_COMMKEEN\000"
.LASF1825:
	.ascii	"CR_GREEN\000"
.LASF1788:
	.ascii	"ceilinglightsec\000"
.LASF138:
	.ascii	"Language_t\000"
.LASF1184:
	.ascii	"S_BAR1\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF1741:
	.ascii	"ev_keydown\000"
.LASF885:
	.ascii	"S_HEAD_PAIN\000"
.LASF1445:
	.ascii	"MT_CYBORG\000"
.LASF2492:
	.ascii	"help_e\000"
.LASF723:
	.ascii	"S_SKEL_DIE1\000"
.LASF724:
	.ascii	"S_SKEL_DIE2\000"
.LASF725:
	.ascii	"S_SKEL_DIE3\000"
.LASF726:
	.ascii	"S_SKEL_DIE4\000"
.LASF308:
	.ascii	"SPR_PSTR\000"
.LASF728:
	.ascii	"S_SKEL_DIE6\000"
.LASF2368:
	.ascii	"key_strafeleft\000"
.LASF1504:
	.ascii	"MT_MISC30\000"
.LASF1505:
	.ascii	"MT_MISC31\000"
.LASF1260:
	.ascii	"S_LAUN\000"
.LASF373:
	.ascii	"SPR_TLP2\000"
.LASF1366:
	.ascii	"S_DOGS_DIE2\000"
.LASF1367:
	.ascii	"S_DOGS_DIE3\000"
.LASF1368:
	.ascii	"S_DOGS_DIE4\000"
.LASF1369:
	.ascii	"S_DOGS_DIE5\000"
.LASF1370:
	.ascii	"S_DOGS_DIE6\000"
.LASF1869:
	.ascii	"sfx_itemup\000"
.LASF165:
	.ascii	"wp_chainsaw\000"
.LASF254:
	.ascii	"SPR_BAL1\000"
.LASF255:
	.ascii	"SPR_BAL2\000"
.LASF320:
	.ascii	"SPR_SHEL\000"
.LASF229:
	.ascii	"prev\000"
.LASF2138:
	.ascii	"compat_zerotags\000"
.LASF2278:
	.ascii	"mousewait\000"
.LASF2616:
	.ascii	"fclose\000"
.LASF1775:
	.ascii	"nextsec\000"
.LASF2329:
	.ascii	"default_translucency\000"
.LASF2315:
	.ascii	"videomodes\000"
.LASF1709:
	.ascii	"comp_doorlight\000"
.LASF848:
	.ascii	"S_TROO_RAISE1\000"
.LASF849:
	.ascii	"S_TROO_RAISE2\000"
.LASF850:
	.ascii	"S_TROO_RAISE3\000"
.LASF851:
	.ascii	"S_TROO_RAISE4\000"
.LASF327:
	.ascii	"SPR_PLAS\000"
.LASF1258:
	.ascii	"S_MGUN\000"
.LASF264:
	.ascii	"SPR_PLAY\000"
.LASF2413:
	.ascii	"key_map\000"
.LASF1800:
	.ascii	"backsector\000"
.LASF1782:
	.ascii	"lines\000"
.LASF1779:
	.ascii	"topmap\000"
.LASF216:
	.ascii	"MAX_COMPATIBILITY_LEVEL\000"
.LASF1497:
	.ascii	"MT_CHAINGUN\000"
.LASF2270:
	.ascii	"M_ResetDefaults\000"
.LASF2487:
	.ascii	"main_e\000"
.LASF1230:
	.ascii	"S_PSTR\000"
.LASF1942:
	.ascii	"sfx_skeact\000"
.LASF1457:
	.ascii	"MT_ROCKET\000"
.LASF1303:
	.ascii	"S_HEARTCOL2\000"
.LASF2580:
	.ascii	"comp_settings1\000"
.LASF1519:
	.ascii	"MT_MISC45\000"
.LASF2520:
	.ascii	"MouseMenu\000"
.LASF2319:
	.ascii	"renderfilters\000"
.LASF1624:
	.ascii	"validcount\000"
.LASF646:
	.ascii	"S_VILE_HEAL3\000"
.LASF2056:
	.ascii	"set_automap\000"
.LASF354:
	.ascii	"SPR_CEYE\000"
.LASF1953:
	.ascii	"m_scrn\000"
.LASF1597:
	.ascii	"damage\000"
.LASF2528:
	.ascii	"set_enemy_active\000"
.LASF2551:
	.ascii	"GeneralDef\000"
.LASF427:
	.ascii	"S_CHAIN\000"
.LASF1770:
	.ascii	"floordata\000"
.LASF2048:
	.ascii	"mouse_empty1\000"
.LASF2050:
	.ascii	"mouse_empty2\000"
.LASF1687:
	.ascii	"m_sprev\000"
.LASF1398:
	.ascii	"S_BSKUL_RUN4\000"
.LASF1342:
	.ascii	"S_TECH2LAMP2\000"
.LASF1343:
	.ascii	"S_TECH2LAMP3\000"
.LASF1080:
	.ascii	"S_PAIN_RUN1\000"
.LASF1081:
	.ascii	"S_PAIN_RUN2\000"
.LASF766:
	.ascii	"S_FATT_DIE1\000"
.LASF1083:
	.ascii	"S_PAIN_RUN4\000"
.LASF767:
	.ascii	"S_FATT_DIE2\000"
.LASF1085:
	.ascii	"S_PAIN_RUN6\000"
.LASF768:
	.ascii	"S_FATT_DIE3\000"
.LASF769:
	.ascii	"S_FATT_DIE4\000"
.LASF689:
	.ascii	"S_SMOKE1\000"
.LASF690:
	.ascii	"S_SMOKE2\000"
.LASF691:
	.ascii	"S_SMOKE3\000"
.LASF692:
	.ascii	"S_SMOKE4\000"
.LASF391:
	.ascii	"S_PISTOL1\000"
.LASF392:
	.ascii	"S_PISTOL2\000"
.LASF393:
	.ascii	"S_PISTOL3\000"
.LASF394:
	.ascii	"S_PISTOL4\000"
.LASF1261:
	.ascii	"S_PLAS\000"
.LASF2196:
	.ascii	"M_GetKeyString\000"
.LASF2604:
	.ascii	"lprintf\000"
.LASF2010:
	.ascii	"main_end\000"
.LASF2574:
	.ascii	"enem_settings1\000"
.LASF599:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1533:
	.ascii	"MT_MISC59\000"
.LASF382:
	.ascii	"S_PUNCHUP\000"
.LASF2163:
	.ascii	"scrn\000"
.LASF1761:
	.ascii	"floorheight\000"
.LASF32:
	.ascii	"__tm_mon\000"
.LASF711:
	.ascii	"S_SKEL_RUN11\000"
.LASF712:
	.ascii	"S_SKEL_RUN12\000"
.LASF1583:
	.ascii	"reactiontime\000"
.LASF305:
	.ascii	"SPR_MEDI\000"
.LASF460:
	.ascii	"S_BFGDOWN\000"
.LASF495:
	.ascii	"S_BFGLAND\000"
.LASF2170:
	.ascii	"offset\000"
.LASF1158:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1159:
	.ascii	"S_BRAIN_DIE2\000"
.LASF66:
	.ascii	"_errno\000"
.LASF1161:
	.ascii	"S_BRAIN_DIE4\000"
.LASF1893:
	.ascii	"sfx_skeswg\000"
.LASF2125:
	.ascii	"compat_vile\000"
.LASF286:
	.ascii	"SPR_PAIN\000"
.LASF238:
	.ascii	"SPR_PUNG\000"
.LASF450:
	.ascii	"S_SAW2\000"
.LASF451:
	.ascii	"S_SAW3\000"
.LASF1276:
	.ascii	"S_HEADCANDLES2\000"
.LASF1502:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF2003:
	.ascii	"lastOn\000"
.LASF1591:
	.ascii	"xdeathstate\000"
.LASF446:
	.ascii	"S_SAWB\000"
.LASF1070:
	.ascii	"S_CYBER_DIE2\000"
.LASF1071:
	.ascii	"S_CYBER_DIE3\000"
.LASF1072:
	.ascii	"S_CYBER_DIE4\000"
.LASF1073:
	.ascii	"S_CYBER_DIE5\000"
.LASF1074:
	.ascii	"S_CYBER_DIE6\000"
.LASF1075:
	.ascii	"S_CYBER_DIE7\000"
.LASF1076:
	.ascii	"S_CYBER_DIE8\000"
.LASF1077:
	.ascii	"S_CYBER_DIE9\000"
.LASF2036:
	.ascii	"messages\000"
.LASF1433:
	.ascii	"MT_FATSHOT\000"
.LASF1444:
	.ascii	"MT_BABY\000"
.LASF2041:
	.ascii	"opt_end\000"
.LASF1534:
	.ascii	"MT_MISC60\000"
.LASF2486:
	.ascii	"NewDef\000"
.LASF2110:
	.ascii	"general_filterwall\000"
.LASF2182:
	.ascii	"M_StartMessage\000"
.LASF293:
	.ascii	"SPR_BAR1\000"
.LASF131:
	.ascii	"retail\000"
.LASF1308:
	.ascii	"S_GREENTORCH\000"
.LASF2557:
	.ascii	"gather_buffer\000"
.LASF2502:
	.ascii	"newgame_e\000"
.LASF1683:
	.ascii	"m_sector\000"
.LASF1681:
	.ascii	"didsecret\000"
.LASF2500:
	.ascii	"EpisodeMenu\000"
.LASF2225:
	.ascii	"M_DrawEpisode\000"
.LASF2180:
	.ascii	"menudef\000"
.LASF277:
	.ascii	"SPR_BAL7\000"
.LASF2531:
	.ascii	"setup_select\000"
.LASF1452:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1:
	.ascii	"signed char\000"
.LASF1891:
	.ascii	"sfx_vilatk\000"
.LASF109:
	.ascii	"_mbrlen_state\000"
.LASF1371:
	.ascii	"S_DOGS_RAISE1\000"
.LASF981:
	.ascii	"S_SPID_RUN1\000"
.LASF1373:
	.ascii	"S_DOGS_RAISE3\000"
.LASF982:
	.ascii	"S_SPID_RUN2\000"
.LASF740:
	.ascii	"S_FATT_STND\000"
.LASF1376:
	.ascii	"S_DOGS_RAISE6\000"
.LASF1156:
	.ascii	"S_BRAIN\000"
.LASF668:
	.ascii	"S_FIRE10\000"
.LASF669:
	.ascii	"S_FIRE11\000"
.LASF670:
	.ascii	"S_FIRE12\000"
.LASF671:
	.ascii	"S_FIRE13\000"
.LASF672:
	.ascii	"S_FIRE14\000"
.LASF673:
	.ascii	"S_FIRE15\000"
.LASF674:
	.ascii	"S_FIRE16\000"
.LASF675:
	.ascii	"S_FIRE17\000"
.LASF676:
	.ascii	"S_FIRE18\000"
.LASF677:
	.ascii	"S_FIRE19\000"
.LASF1037:
	.ascii	"S_BSPI_DIE7\000"
.LASF41:
	.ascii	"_is_cxa\000"
.LASF2303:
	.ascii	"M_DrawCompat\000"
.LASF2232:
	.ascii	"endstring\000"
.LASF310:
	.ascii	"SPR_MEGA\000"
.LASF1999:
	.ascii	"menu_s\000"
.LASF2004:
	.ascii	"menu_t\000"
.LASF1852:
	.ascii	"sfx_rxplod\000"
.LASF1998:
	.ascii	"menuitem_t\000"
.LASF2325:
	.ascii	"SCREENHEIGHT\000"
.LASF2302:
	.ascii	"M_DrawGeneral\000"
.LASF911:
	.ascii	"S_BOSS_RUN5\000"
.LASF2297:
	.ascii	"M_DrawWeapons\000"
.LASF952:
	.ascii	"S_BOS2_DIE4\000"
.LASF160:
	.ascii	"wp_shotgun\000"
.LASF1670:
	.ascii	"killcount\000"
.LASF954:
	.ascii	"S_BOS2_DIE6\000"
.LASF1546:
	.ascii	"MT_MISC72\000"
.LASF1989:
	.ascii	"LO_ERROR\000"
.LASF1815:
	.ascii	"RF_CLOSED\000"
.LASF2268:
	.ascii	"item\000"
.LASF214:
	.ascii	"prboom_5_compatibility\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF678:
	.ascii	"S_FIRE20\000"
.LASF679:
	.ascii	"S_FIRE21\000"
.LASF680:
	.ascii	"S_FIRE22\000"
.LASF681:
	.ascii	"S_FIRE23\000"
.LASF682:
	.ascii	"S_FIRE24\000"
.LASF683:
	.ascii	"S_FIRE25\000"
.LASF684:
	.ascii	"S_FIRE26\000"
.LASF685:
	.ascii	"S_FIRE27\000"
.LASF686:
	.ascii	"S_FIRE28\000"
.LASF687:
	.ascii	"S_FIRE29\000"
.LASF413:
	.ascii	"S_DSGUN1\000"
.LASF112:
	.ascii	"_wcrtomb_state\000"
.LASF415:
	.ascii	"S_DSGUN3\000"
.LASF416:
	.ascii	"S_DSGUN4\000"
.LASF417:
	.ascii	"S_DSGUN5\000"
.LASF418:
	.ascii	"S_DSGUN6\000"
.LASF419:
	.ascii	"S_DSGUN7\000"
.LASF420:
	.ascii	"S_DSGUN8\000"
.LASF421:
	.ascii	"S_DSGUN9\000"
.LASF2233:
	.ascii	"M_SfxVol\000"
.LASF2351:
	.ascii	"V_FillRect\000"
.LASF211:
	.ascii	"prboom_2_compatibility\000"
.LASF1857:
	.ascii	"sfx_doropn\000"
.LASF2067:
	.ascii	"weap_pref1\000"
.LASF2068:
	.ascii	"weap_pref2\000"
.LASF2069:
	.ascii	"weap_pref3\000"
.LASF2070:
	.ascii	"weap_pref4\000"
.LASF2071:
	.ascii	"weap_pref5\000"
.LASF2072:
	.ascii	"weap_pref6\000"
.LASF2073:
	.ascii	"weap_pref7\000"
.LASF2074:
	.ascii	"weap_pref8\000"
.LASF784:
	.ascii	"S_CPOS_STND\000"
.LASF146:
	.ascii	"sk_easy\000"
.LASF2455:
	.ascii	"I_GetTime\000"
.LASF375:
	.ascii	"SPR_DOGS\000"
.LASF2222:
	.ascii	"M_DoNothing\000"
.LASF688:
	.ascii	"S_FIRE30\000"
.LASF1743:
	.ascii	"ev_mouse\000"
.LASF2107:
	.ascii	"general_smoothfactor\000"
.LASF2006:
	.ascii	"loadgame\000"
.LASF2539:
	.ascii	"setup_screen\000"
.LASF1901:
	.ascii	"sfx_sgtdth\000"
.LASF695:
	.ascii	"S_TRACER2\000"
.LASF2214:
	.ascii	"M_StatusBar\000"
.LASF1165:
	.ascii	"S_SPAWN1\000"
.LASF1166:
	.ascii	"S_SPAWN2\000"
.LASF1167:
	.ascii	"S_SPAWN3\000"
.LASF1168:
	.ascii	"S_SPAWN4\000"
.LASF1251:
	.ascii	"S_BROK\000"
.LASF2633:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF2001:
	.ascii	"prevMenu\000"
.LASF1139:
	.ascii	"S_SSWV_RAISE4\000"
.LASF2534:
	.ascii	"default_verify\000"
.LASF471:
	.ascii	"S_PUFF1\000"
.LASF472:
	.ascii	"S_PUFF2\000"
.LASF473:
	.ascii	"S_PUFF3\000"
.LASF474:
	.ascii	"S_PUFF4\000"
.LASF2153:
	.ascii	"prog\000"
.LASF1421:
	.ascii	"misc1\000"
.LASF1422:
	.ascii	"misc2\000"
.LASF1699:
	.ascii	"PST_DEAD\000"
.LASF2353:
	.ascii	"V_DrawBackground\000"
.LASF2205:
	.ascii	"M_ReadThis2\000"
.LASF2257:
	.ascii	"M_StopMessage\000"
.LASF1925:
	.ascii	"sfx_bdopn\000"
.LASF328:
	.ascii	"SPR_SHOT\000"
.LASF467:
	.ascii	"S_BFGFLASH2\000"
.LASF181:
	.ascii	"pw_infrared\000"
.LASF2583:
	.ascii	"comp_settings\000"
.LASF915:
	.ascii	"S_BOSS_ATK1\000"
.LASF916:
	.ascii	"S_BOSS_ATK2\000"
.LASF917:
	.ascii	"S_BOSS_ATK3\000"
.LASF2052:
	.ascii	"set_compat\000"
.LASF2540:
	.ascii	"SetupMenu\000"
.LASF1660:
	.ascii	"frags\000"
.LASF1372:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1374:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1375:
	.ascii	"S_DOGS_RAISE5\000"
.LASF2422:
	.ascii	"mousebstrafe\000"
.LASF1638:
	.ascii	"tracer\000"
.LASF2370:
	.ascii	"key_fire\000"
.LASF2203:
	.ascii	"M_DrawStringCentered\000"
.LASF2475:
	.ascii	"saveOldString\000"
.LASF2092:
	.ascii	"general_fullscreen\000"
.LASF1878:
	.ascii	"sfx_sgtsit\000"
.LASF754:
	.ascii	"S_FATT_ATK1\000"
.LASF755:
	.ascii	"S_FATT_ATK2\000"
.LASF756:
	.ascii	"S_FATT_ATK3\000"
.LASF757:
	.ascii	"S_FATT_ATK4\000"
.LASF758:
	.ascii	"S_FATT_ATK5\000"
.LASF759:
	.ascii	"S_FATT_ATK6\000"
.LASF760:
	.ascii	"S_FATT_ATK7\000"
.LASF761:
	.ascii	"S_FATT_ATK8\000"
.LASF762:
	.ascii	"S_FATT_ATK9\000"
.LASF1416:
	.ascii	"sprite\000"
.LASF1721:
	.ascii	"comp_zerotags\000"
.LASF1332:
	.ascii	"S_HANGTLOOKUP\000"
.LASF487:
	.ascii	"S_PLASEXP\000"
.LASF2179:
	.ascii	"M_SetupNextMenu\000"
.LASF2143:
	.ascii	"mess_color_play\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF2631:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF968:
	.ascii	"S_SKULL_ATK2\000"
.LASF2507:
	.ascii	"SaveMenu\000"
.LASF2169:
	.ascii	"sens\000"
.LASF2288:
	.ascii	"oldbutton\000"
.LASF1732:
	.ascii	"am_active\000"
.LASF1461:
	.ascii	"MT_PUFF\000"
.LASF2630:
	.ascii	"M_LookupDefault\000"
.LASF1594:
	.ascii	"radius\000"
.LASF1854:
	.ascii	"sfx_firxpl\000"
.LASF1735:
	.ascii	"am_follow\000"
.LASF1971:
	.ascii	"m_group\000"
.LASF1697:
	.ascii	"ticcmd_t\000"
.LASF1740:
	.ascii	"mnact_full\000"
.LASF316:
	.ascii	"SPR_ROCK\000"
.LASF2291:
	.ascii	"M_WriteText\000"
.LASF2266:
	.ascii	"mvmx\000"
.LASF2606:
	.ascii	"R_SetViewSize\000"
.LASF1013:
	.ascii	"S_BSPI_RUN1\000"
.LASF1014:
	.ascii	"S_BSPI_RUN2\000"
.LASF1015:
	.ascii	"S_BSPI_RUN3\000"
.LASF1016:
	.ascii	"S_BSPI_RUN4\000"
.LASF1017:
	.ascii	"S_BSPI_RUN5\000"
.LASF1018:
	.ascii	"S_BSPI_RUN6\000"
.LASF1019:
	.ascii	"S_BSPI_RUN7\000"
.LASF1020:
	.ascii	"S_BSPI_RUN8\000"
.LASF1021:
	.ascii	"S_BSPI_RUN9\000"
.LASF252:
	.ascii	"SPR_BLUD\000"
.LASF1440:
	.ascii	"MT_BRUISERSHOT\000"
.LASF97:
	.ascii	"_strtok_last\000"
.LASF1895:
	.ascii	"sfx_pdiehi\000"
.LASF1364:
	.ascii	"S_DOGS_PAIN2\000"
.LASF1580:
	.ascii	"spawnhealth\000"
.LASF2374:
	.ascii	"key_escape\000"
.LASF1346:
	.ascii	"S_GRENADE\000"
.LASF1867:
	.ascii	"sfx_pepain\000"
.LASF141:
	.ascii	"GS_FINALE\000"
.LASF794:
	.ascii	"S_CPOS_ATK1\000"
.LASF795:
	.ascii	"S_CPOS_ATK2\000"
.LASF796:
	.ascii	"S_CPOS_ATK3\000"
.LASF797:
	.ascii	"S_CPOS_ATK4\000"
.LASF1691:
	.ascii	"forwardmove\000"
.LASF2412:
	.ascii	"key_map_zoomout\000"
.LASF1466:
	.ascii	"MT_EXTRABFG\000"
.LASF1266:
	.ascii	"S_BLOODYTWITCH\000"
.LASF2185:
	.ascii	"M_Episode\000"
.LASF2323:
	.ascii	"__ctype_ptr__\000"
.LASF2164:
	.ascii	"M_QuitResponse\000"
.LASF2416:
	.ascii	"key_map_mark\000"
.LASF2058:
	.ascii	"set_messages\000"
.LASF2575:
	.ascii	"enem_settings\000"
.LASF1802:
	.ascii	"tranlump\000"
.LASF1922:
	.ascii	"sfx_metal\000"
.LASF2358:
	.ascii	"key_left\000"
.LASF1287:
	.ascii	"S_TALLREDCOL\000"
.LASF1781:
	.ascii	"linecount\000"
.LASF120:
	.ascii	"PU_STATIC\000"
.LASF73:
	.ascii	"_current_locale\000"
.LASF1467:
	.ascii	"MT_MISC0\000"
.LASF1468:
	.ascii	"MT_MISC1\000"
.LASF1469:
	.ascii	"MT_MISC2\000"
.LASF1470:
	.ascii	"MT_MISC3\000"
.LASF1471:
	.ascii	"MT_MISC4\000"
.LASF1472:
	.ascii	"MT_MISC5\000"
.LASF1473:
	.ascii	"MT_MISC6\000"
.LASF967:
	.ascii	"S_SKULL_ATK1\000"
.LASF900:
	.ascii	"S_BRBALL1\000"
.LASF901:
	.ascii	"S_BRBALL2\000"
.LASF969:
	.ascii	"S_SKULL_ATK3\000"
.LASF1679:
	.ascii	"colormap\000"
.LASF2409:
	.ascii	"key_map_up\000"
.LASF2043:
	.ascii	"sfx_empty1\000"
.LASF1915:
	.ascii	"sfx_bspact\000"
.LASF1978:
	.ascii	"def_str\000"
.LASF242:
	.ascii	"SPR_SHT2\000"
.LASF1778:
	.ascii	"midmap\000"
.LASF2282:
	.ascii	"lastx\000"
.LASF2280:
	.ascii	"lasty\000"
.LASF45:
	.ascii	"__sbuf\000"
.LASF2533:
	.ascii	"colorbox_active\000"
.LASF1429:
	.ascii	"MT_UNDEAD\000"
.LASF822:
	.ascii	"S_TROO_RUN1\000"
.LASF823:
	.ascii	"S_TROO_RUN2\000"
.LASF824:
	.ascii	"S_TROO_RUN3\000"
.LASF825:
	.ascii	"S_TROO_RUN4\000"
.LASF826:
	.ascii	"S_TROO_RUN5\000"
.LASF827:
	.ascii	"S_TROO_RUN6\000"
.LASF828:
	.ascii	"S_TROO_RUN7\000"
.LASF829:
	.ascii	"S_TROO_RUN8\000"
.LASF2622:
	.ascii	"W_FindNumFromName\000"
.LASF1626:
	.ascii	"intflags\000"
.LASF1803:
	.ascii	"r_validcount\000"
.LASF1773:
	.ascii	"stairlock\000"
.LASF184:
	.ascii	"ss_keys\000"
.LASF2390:
	.ascii	"key_quickload\000"
.LASF2097:
	.ascii	"general_mouse\000"
.LASF374:
	.ascii	"SPR_TNT1\000"
.LASF2602:
	.ascii	"S_SetSfxVolume\000"
.LASF1772:
	.ascii	"lightingdata\000"
.LASF2231:
	.ascii	"M_QuitDOOM\000"
.LASF1264:
	.ascii	"S_COLU\000"
.LASF353:
	.ascii	"SPR_ELEC\000"
.LASF1154:
	.ascii	"S_KEENPAIN\000"
.LASF1599:
	.ascii	"flags\000"
.LASF972:
	.ascii	"S_SKULL_PAIN2\000"
.LASF1582:
	.ascii	"seesound\000"
.LASF2582:
	.ascii	"comp_settings3\000"
.LASF2289:
	.ascii	"old_value\000"
.LASF322:
	.ascii	"SPR_BPAK\000"
.LASF1060:
	.ascii	"S_CYBER_RUN7\000"
.LASF1048:
	.ascii	"S_ARACH_PLEX2\000"
.LASF1049:
	.ascii	"S_ARACH_PLEX3\000"
.LASF1050:
	.ascii	"S_ARACH_PLEX4\000"
.LASF118:
	.ascii	"FILE\000"
.LASF2326:
	.ascii	"finesine\000"
.LASF2054:
	.ascii	"set_weapons\000"
.LASF2024:
	.ascii	"load1\000"
.LASF1831:
	.ascii	"CR_YELLOW\000"
.LASF1151:
	.ascii	"S_COMMKEEN10\000"
.LASF947:
	.ascii	"S_BOS2_PAIN\000"
.LASF1830:
	.ascii	"CR_ORANGE\000"
.LASF1972:
	.ascii	"m_mouse\000"
.LASF197:
	.ascii	"uint_64_t\000"
.LASF2119:
	.ascii	"compat_telefrag\000"
.LASF1714:
	.ascii	"comp_skymap\000"
.LASF1008:
	.ascii	"S_SPID_DIE10\000"
.LASF1009:
	.ascii	"S_SPID_DIE11\000"
.LASF1960:
	.ascii	"default_s\000"
.LASF1985:
	.ascii	"default_t\000"
.LASF1668:
	.ascii	"cheats\000"
.LASF2467:
	.ascii	"messx\000"
.LASF2468:
	.ascii	"messy\000"
.LASF565:
	.ascii	"S_POSS_PAIN\000"
.LASF87:
	.ascii	"char\000"
.LASF1310:
	.ascii	"S_GREENTORCH3\000"
.LASF1311:
	.ascii	"S_GREENTORCH4\000"
.LASF2176:
	.ascii	"M_LoadSelect\000"
.LASF2241:
	.ascii	"M_DrawSaveLoadBorder\000"
.LASF1562:
	.ascii	"MT_PULL\000"
.LASF2566:
	.ascii	"stat_settings1\000"
.LASF1348:
	.ascii	"S_DETONATE2\000"
.LASF1349:
	.ascii	"S_DETONATE3\000"
.LASF257:
	.ascii	"SPR_PLSE\000"
.LASF249:
	.ascii	"SPR_PLSF\000"
.LASF248:
	.ascii	"SPR_PLSG\000"
.LASF2040:
	.ascii	"soundvol\000"
.LASF1944:
	.ascii	"sfx_skeatk\000"
.LASF200:
	.ascii	"doom2_19_compatibility\000"
.LASF256:
	.ascii	"SPR_PLSS\000"
.LASF2208:
	.ascii	"M_Options\000"
.LASF2448:
	.ascii	"s_GAMMALVL0\000"
.LASF1685:
	.ascii	"m_tprev\000"
.LASF58:
	.ascii	"_nbuf\000"
.LASF2451:
	.ascii	"s_GAMMALVL3\000"
.LASF2452:
	.ascii	"s_GAMMALVL4\000"
.LASF2166:
	.ascii	"M_DrawMenuString\000"
.LASF2511:
	.ascii	"OptionsDef\000"
.LASF1127:
	.ascii	"S_SSWV_XDIE1\000"
.LASF1128:
	.ascii	"S_SSWV_XDIE2\000"
.LASF1129:
	.ascii	"S_SSWV_XDIE3\000"
.LASF1130:
	.ascii	"S_SSWV_XDIE4\000"
.LASF1098:
	.ascii	"S_PAIN_RAISE1\000"
.LASF1099:
	.ascii	"S_PAIN_RAISE2\000"
.LASF1100:
	.ascii	"S_PAIN_RAISE3\000"
.LASF1101:
	.ascii	"S_PAIN_RAISE4\000"
.LASF1102:
	.ascii	"S_PAIN_RAISE5\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF1271:
	.ascii	"S_DEADBOTTOM\000"
.LASF311:
	.ascii	"SPR_SUIT\000"
.LASF1603:
	.ascii	"ps_flash\000"
.LASF528:
	.ascii	"S_PLAY_RUN1\000"
.LASF529:
	.ascii	"S_PLAY_RUN2\000"
.LASF530:
	.ascii	"S_PLAY_RUN3\000"
.LASF531:
	.ascii	"S_PLAY_RUN4\000"
.LASF2002:
	.ascii	"menuitems\000"
.LASF2211:
	.ascii	"M_Setup\000"
.LASF647:
	.ascii	"S_VILE_PAIN\000"
.LASF1206:
	.ascii	"S_BKEY\000"
.LASF523:
	.ascii	"S_IFOG2\000"
.LASF524:
	.ascii	"S_IFOG3\000"
.LASF525:
	.ascii	"S_IFOG4\000"
.LASF526:
	.ascii	"S_IFOG5\000"
.LASF1675:
	.ascii	"bonuscount\000"
.LASF920:
	.ascii	"S_BOSS_DIE1\000"
.LASF921:
	.ascii	"S_BOSS_DIE2\000"
.LASF922:
	.ascii	"S_BOSS_DIE3\000"
.LASF923:
	.ascii	"S_BOSS_DIE4\000"
.LASF924:
	.ascii	"S_BOSS_DIE5\000"
.LASF925:
	.ascii	"S_BOSS_DIE6\000"
.LASF926:
	.ascii	"S_BOSS_DIE7\000"
.LASF50:
	.ascii	"_file\000"
.LASF2441:
	.ascii	"s_SWSTRING\000"
.LASF1841:
	.ascii	"sfx_dshtgn\000"
.LASF1424:
	.ascii	"MT_PLAYER\000"
.LASF199:
	.ascii	"doom_1666_compatibility\000"
.LASF2000:
	.ascii	"numitems\000"
.LASF881:
	.ascii	"S_HEAD_RUN1\000"
.LASF2202:
	.ascii	"M_DrawReadThis2\000"
.LASF810:
	.ascii	"S_CPOS_XDIE4\000"
.LASF1136:
	.ascii	"S_SSWV_RAISE1\000"
.LASF81:
	.ascii	"_cvtbuf\000"
.LASF1138:
	.ascii	"S_SSWV_RAISE3\000"
.LASF144:
	.ascii	"sk_none\000"
.LASF1140:
	.ascii	"S_SSWV_RAISE5\000"
.LASF1997:
	.ascii	"alttext\000"
.LASF2190:
	.ascii	"M_QuickSave\000"
.LASF1793:
	.ascii	"oldspecial\000"
.LASF2305:
	.ascii	"M_DrawChatStrings\000"
.LASF572:
	.ascii	"S_POSS_XDIE1\000"
.LASF573:
	.ascii	"S_POSS_XDIE2\000"
.LASF574:
	.ascii	"S_POSS_XDIE3\000"
.LASF575:
	.ascii	"S_POSS_XDIE4\000"
.LASF576:
	.ascii	"S_POSS_XDIE5\000"
.LASF577:
	.ascii	"S_POSS_XDIE6\000"
.LASF578:
	.ascii	"S_POSS_XDIE7\000"
.LASF579:
	.ascii	"S_POSS_XDIE8\000"
.LASF580:
	.ascii	"S_POSS_XDIE9\000"
.LASF774:
	.ascii	"S_FATT_DIE9\000"
.LASF2537:
	.ascii	"current_setup_menu\000"
.LASF2584:
	.ascii	"mess_settings1\000"
.LASF2435:
	.ascii	"s_SAVEDEAD\000"
.LASF1593:
	.ascii	"speed\000"
.LASF2330:
	.ascii	"general_translucency\000"
.LASF1333:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF1824:
	.ascii	"CR_GRAY\000"
.LASF2015:
	.ascii	"helpempty\000"
.LASF2149:
	.ascii	"mess_hud_timer\000"
.LASF287:
	.ascii	"SPR_SSWV\000"
.LASF488:
	.ascii	"S_PLASEXP2\000"
.LASF489:
	.ascii	"S_PLASEXP3\000"
.LASF490:
	.ascii	"S_PLASEXP4\000"
.LASF491:
	.ascii	"S_PLASEXP5\000"
.LASF430:
	.ascii	"S_CHAIN1\000"
.LASF431:
	.ascii	"S_CHAIN2\000"
.LASF432:
	.ascii	"S_CHAIN3\000"
.LASF535:
	.ascii	"S_PLAY_PAIN2\000"
.LASF2025:
	.ascii	"load2\000"
.LASF2026:
	.ascii	"load3\000"
.LASF2027:
	.ascii	"load4\000"
.LASF2028:
	.ascii	"load5\000"
.LASF2029:
	.ascii	"load6\000"
.LASF2030:
	.ascii	"load7\000"
.LASF2031:
	.ascii	"load8\000"
.LASF2256:
	.ascii	"M_Ticker\000"
.LASF1934:
	.ascii	"sfx_bospn\000"
.LASF147:
	.ascii	"sk_medium\000"
.LASF1417:
	.ascii	"frame\000"
.LASF1486:
	.ascii	"MT_MEGA\000"
.LASF1888:
	.ascii	"sfx_sklatk\000"
.LASF1604:
	.ascii	"NUMPSPRITES\000"
.LASF30:
	.ascii	"__tm_hour\000"
.LASF57:
	.ascii	"_ubuf\000"
.LASF2350:
	.ascii	"usegamma\000"
.LASF2476:
	.ascii	"inhelpscreens\000"
.LASF2131:
	.ascii	"compat_infcheat\000"
.LASF1296:
	.ascii	"S_EVILEYE2\000"
.LASF1297:
	.ascii	"S_EVILEYE3\000"
.LASF1298:
	.ascii	"S_EVILEYE4\000"
.LASF2316:
	.ascii	"gltexfilters\000"
.LASF2109:
	.ascii	"general_menubg\000"
.LASF800:
	.ascii	"S_CPOS_DIE1\000"
.LASF801:
	.ascii	"S_CPOS_DIE2\000"
.LASF39:
	.ascii	"_dso_handle\000"
.LASF803:
	.ascii	"S_CPOS_DIE4\000"
.LASF804:
	.ascii	"S_CPOS_DIE5\000"
.LASF802:
	.ascii	"S_CPOS_DIE3\000"
.LASF806:
	.ascii	"S_CPOS_DIE7\000"
.LASF805:
	.ascii	"S_CPOS_DIE6\000"
.LASF2379:
	.ascii	"key_zoomin\000"
.LASF2238:
	.ascii	"M_Trans\000"
.LASF2216:
	.ascii	"M_Enemy\000"
.LASF139:
	.ascii	"GS_LEVEL\000"
.LASF1341:
	.ascii	"S_TECH2LAMP\000"
.LASF1213:
	.ascii	"S_BSKULL2\000"
.LASF1807:
	.ascii	"ST_VERTICAL\000"
.LASF475:
	.ascii	"S_TBALL1\000"
.LASF476:
	.ascii	"S_TBALL2\000"
.LASF496:
	.ascii	"S_BFGLAND2\000"
.LASF497:
	.ascii	"S_BFGLAND3\000"
.LASF498:
	.ascii	"S_BFGLAND4\000"
.LASF499:
	.ascii	"S_BFGLAND5\000"
.LASF500:
	.ascii	"S_BFGLAND6\000"
.LASF2160:
	.ascii	"M_UpdateCurrent\000"
.LASF2283:
	.ascii	"ptr1\000"
.LASF2284:
	.ascii	"ptr2\000"
.LASF398:
	.ascii	"S_SGUNUP\000"
.LASF1698:
	.ascii	"PST_LIVE\000"
.LASF2085:
	.ascii	"enem_help_friends\000"
.LASF1563:
	.ascii	"MT_DOGS\000"
.LASF351:
	.ascii	"SPR_TRE1\000"
.LASF352:
	.ascii	"SPR_TRE2\000"
.LASF2524:
	.ascii	"set_keybnd_active\000"
.LASF2108:
	.ascii	"general_defskill\000"
.LASF1338:
	.ascii	"S_TECHLAMP2\000"
.LASF1598:
	.ascii	"activesound\000"
.LASF620:
	.ascii	"S_VILE_STND2\000"
.LASF1574:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF2304:
	.ascii	"M_DrawMessages\000"
.LASF2147:
	.ascii	"mess_color_review\000"
.LASF359:
	.ascii	"SPR_TRED\000"
.LASF2346:
	.ascii	"mouseSensitivity_vert\000"
.LASF1701:
	.ascii	"playerstate_t\000"
.LASF1079:
	.ascii	"S_PAIN_STND\000"
.LASF2489:
	.ascii	"MainDef\000"
.LASF785:
	.ascii	"S_CPOS_STND2\000"
.LASF1231:
	.ascii	"S_PINS\000"
.LASF1226:
	.ascii	"S_PINV\000"
.LASF2136:
	.ascii	"compat_moveblock\000"
.LASF100:
	.ascii	"_gamma_signgam\000"
.LASF234:
	.ascii	"references\000"
.LASF2328:
	.ascii	"compatibility_level\000"
.LASF776:
	.ascii	"S_FATT_RAISE1\000"
.LASF777:
	.ascii	"S_FATT_RAISE2\000"
.LASF778:
	.ascii	"S_FATT_RAISE3\000"
.LASF779:
	.ascii	"S_FATT_RAISE4\000"
.LASF780:
	.ascii	"S_FATT_RAISE5\000"
.LASF781:
	.ascii	"S_FATT_RAISE6\000"
.LASF782:
	.ascii	"S_FATT_RAISE7\000"
.LASF783:
	.ascii	"S_FATT_RAISE8\000"
.LASF2293:
	.ascii	"M_Drawer\000"
.LASF1592:
	.ascii	"deathsound\000"
.LASF2545:
	.ascii	"WeaponDef\000"
.LASF2535:
	.ascii	"set_general_active\000"
.LASF1936:
	.ascii	"sfx_manatk\000"
.LASF2227:
	.ascii	"M_DrawExtHelp\000"
.LASF2614:
	.ascii	"Z_Strdup\000"
.LASF35:
	.ascii	"__tm_yday\000"
.LASF2167:
	.ascii	"color\000"
.LASF1630:
	.ascii	"strafecount\000"
.LASF1855:
	.ascii	"sfx_pstart\000"
.LASF1962:
	.ascii	"defaultvalue\000"
.LASF1887:
	.ascii	"sfx_pesit\000"
.LASF2393:
	.ascii	"key_spy\000"
.LASF2005:
	.ascii	"newgame\000"
.LASF90:
	.ascii	"_niobs\000"
.LASF2508:
	.ascii	"SaveDef\000"
.LASF1337:
	.ascii	"S_TECHLAMP\000"
.LASF2237:
	.ascii	"M_SizeDisplay\000"
.LASF433:
	.ascii	"S_CHAINFLASH1\000"
.LASF434:
	.ascii	"S_CHAINFLASH2\000"
.LASF1312:
	.ascii	"S_REDTORCH\000"
.LASF148:
	.ascii	"sk_hard\000"
.LASF2523:
	.ascii	"setup_active\000"
.LASF175:
	.ascii	"am_noammo\000"
.LASF1694:
	.ascii	"consistancy\000"
.LASF151:
	.ascii	"it_bluecard\000"
.LASF1618:
	.ascii	"floorz\000"
.LASF2292:
	.ascii	"M_DrawLoad\000"
.LASF614:
	.ascii	"S_SPOS_RAISE1\000"
.LASF615:
	.ascii	"S_SPOS_RAISE2\000"
.LASF616:
	.ascii	"S_SPOS_RAISE3\000"
.LASF617:
	.ascii	"S_SPOS_RAISE4\000"
.LASF618:
	.ascii	"S_SPOS_RAISE5\000"
.LASF1719:
	.ascii	"comp_stairs\000"
.LASF2415:
	.ascii	"key_map_follow\000"
.LASF1217:
	.ascii	"S_YSKULL2\000"
.LASF798:
	.ascii	"S_CPOS_PAIN\000"
.LASF1862:
	.ascii	"sfx_plpain\000"
.LASF2386:
	.ascii	"key_hud\000"
.LASF2506:
	.ascii	"LoadDef\000"
.LASF1259:
	.ascii	"S_CSAW\000"
.LASF1836:
	.ascii	"V_DrawBackground_f\000"
.LASF2600:
	.ascii	"strlen\000"
.LASF1890:
	.ascii	"sfx_skepch\000"
.LASF1703:
	.ascii	"comp_telefrag\000"
.LASF1977:
	.ascii	"def_none\000"
.LASF1086:
	.ascii	"S_PAIN_ATK1\000"
.LASF1087:
	.ascii	"S_PAIN_ATK2\000"
.LASF1088:
	.ascii	"S_PAIN_ATK3\000"
.LASF1089:
	.ascii	"S_PAIN_ATK4\000"
.LASF1892:
	.ascii	"sfx_claw\000"
.LASF741:
	.ascii	"S_FATT_STND2\000"
.LASF389:
	.ascii	"S_PISTOLDOWN\000"
.LASF28:
	.ascii	"__tm_sec\000"
.LASF188:
	.ascii	"ss_enem\000"
.LASF1610:
	.ascii	"mapthing_t\000"
.LASF59:
	.ascii	"_blksize\000"
.LASF1250:
	.ascii	"S_ROCK\000"
.LASF1767:
	.ascii	"blockbox\000"
.LASF1952:
	.ascii	"m_null\000"
.LASF2096:
	.ascii	"general_pitch\000"
.LASF2332:
	.ascii	"netgame\000"
.LASF2247:
	.ascii	"M_InitExtendedHelp\000"
.LASF383:
	.ascii	"S_PUNCH1\000"
.LASF384:
	.ascii	"S_PUNCH2\000"
.LASF385:
	.ascii	"S_PUNCH3\000"
.LASF386:
	.ascii	"S_PUNCH4\000"
.LASF387:
	.ascii	"S_PUNCH5\000"
.LASF983:
	.ascii	"S_SPID_RUN3\000"
.LASF984:
	.ascii	"S_SPID_RUN4\000"
.LASF985:
	.ascii	"S_SPID_RUN5\000"
.LASF986:
	.ascii	"S_SPID_RUN6\000"
.LASF987:
	.ascii	"S_SPID_RUN7\000"
.LASF988:
	.ascii	"S_SPID_RUN8\000"
.LASF989:
	.ascii	"S_SPID_RUN9\000"
.LASF1587:
	.ascii	"painsound\000"
.LASF2381:
	.ascii	"key_chat\000"
.LASF821:
	.ascii	"S_TROO_STND2\000"
.LASF206:
	.ascii	"boom_201_compatibility\000"
.LASF13:
	.ascii	"wint_t\000"
.LASF2341:
	.ascii	"singledemo\000"
.LASF2377:
	.ascii	"key_autorun\000"
.LASF1798:
	.ascii	"slopetype\000"
.LASF1797:
	.ascii	"bbox\000"
.LASF929:
	.ascii	"S_BOSS_RAISE3\000"
.LASF1844:
	.ascii	"sfx_dbload\000"
.LASF2446:
	.ascii	"s_ENDGAME\000"
.LASF1651:
	.ascii	"playerstate\000"
.LASF1737:
	.ascii	"menuactive_e\000"
.LASF11:
	.ascii	"_off_t\000"
.LASF2245:
	.ascii	"M_MouseVert\000"
.LASF2091:
	.ascii	"general_transpct\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF2224:
	.ascii	"M_DrawMainMenu\000"
.LASF2142:
	.ascii	"compat_sound\000"
.LASF1428:
	.ascii	"MT_FIRE\000"
.LASF1640:
	.ascii	"friction\000"
.LASF1395:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1396:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1397:
	.ascii	"S_BSKUL_RUN3\000"
.LASF93:
	.ascii	"_seed\000"
.LASF2628:
	.ascii	"HU_MoveHud\000"
.LASF1011:
	.ascii	"S_BSPI_STND2\000"
.LASF55:
	.ascii	"_seek\000"
.LASF2466:
	.ascii	"messageToPrint\000"
.LASF1769:
	.ascii	"thinglist\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
