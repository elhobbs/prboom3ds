	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"d_client.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	D_InitNetGame
	.type	D_InitNetGame, %function
D_InitNetGame:
.LFB8:
	.file 1 "c:/devl/prboom3ds/src/d_client.c"
	.loc 1 167 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 170 0
	mov	r1, #1
	mov	r2, #0
	mov	r0, #140
	bl	Z_Malloc
.LVL0:
	.loc 1 172 0
	mov	r4, #1
	.loc 1 170 0
	mov	r3, r0
	.loc 1 171 0
	mov	r0, #0
	.loc 1 173 0
	ldr	r5, .L15
	ldr	r1, .L15+4
	ldr	r2, [r5]
	ldr	ip, .L15+8
	add	r2, r2, r2, asl #1
	.loc 1 170 0
	ldr	r6, .L15+12
	.loc 1 173 0
	add	r2, r1, r2, asl #5
	.loc 1 171 0
	strh	r0, [r3, #28]	@ movhi
	.loc 1 172 0
	strh	r0, [r3, #12]	@ movhi
	strh	r4, [r3, #30]	@ movhi
	.loc 1 174 0
	ldr	r0, .L15+16
	.loc 1 173 0
	str	r2, [ip]
	.loc 1 170 0
	str	r3, [r6]
	.loc 1 174 0
	bl	M_CheckParm
.LVL1:
	cmp	r0, #0
	movne	r0, r4
	beq	.L14
.L2:
	.loc 1 176 0 discriminator 6
	ldr	lr, [r6]
	.loc 1 174 0 discriminator 6
	ldr	r3, .L15+20
	.loc 1 176 0 discriminator 6
	ldrsh	ip, [lr, #30]
	.loc 1 174 0 discriminator 6
	str	r0, [r3]
.LVL2:
	.loc 1 176 0 discriminator 6
	cmp	ip, #0
	ble	.L8
	ldr	r3, .L15+24
	mov	r4, ip
	mov	r2, r3
	.loc 1 177 0
	mov	r0, #1
	add	r1, r3, ip, asl #2
.LVL3:
.L4:
	.loc 1 177 0 is_stmt 0 discriminator 3
	str	r0, [r2], #4
	.loc 1 176 0 is_stmt 1 discriminator 3
	cmp	r2, r1
	bne	.L4
.LVL4:
	.loc 1 178 0
	cmp	ip, #4
	beq	.L6
.LVL5:
.L3:
	.loc 1 179 0 discriminator 2
	mov	r1, #0
	ldr	r2, .L15+28
	add	r3, r3, r4, asl #2
.LVL6:
.L5:
	str	r1, [r3], #4
	.loc 1 178 0 discriminator 2
	cmp	r3, r2
	bne	.L5
.L6:
	.loc 1 181 0
	ldrsh	r3, [lr, #28]
	ldr	r2, .L15+32
	str	r3, [r5]
	str	r3, [r2]
	ldmfd	sp!, {r4, r5, r6, pc}
.L14:
	.loc 1 174 0 discriminator 2
	ldr	r0, .L15+36
	bl	M_CheckParm
.LVL7:
	adds	r0, r0, #0
	movne	r0, #1
	b	.L2
.LVL8:
.L8:
	.loc 1 176 0
	mov	r4, #0
	ldr	r3, .L15+24
	b	.L3
.L16:
	.align	2
.L15:
	.word	consoleplayer
	.word	netcmds
	.word	.LANCHOR0
	.word	doomcom
	.word	.LC0
	.word	netgame
	.word	playeringame
	.word	playeringame+16
	.word	displayplayer
	.word	.LC1
	.cfi_endproc
.LFE8:
	.size	D_InitNetGame, .-D_InitNetGame
	.align	2
	.global	D_BuildNewTiccmds
	.type	D_BuildNewTiccmds, %function
D_BuildNewTiccmds:
.LFB9:
	.loc 1 373 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
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
	.loc 1 375 0
	ldr	r3, .L23
	ldr	r6, .L23+4
	ldr	r3, [r3]
	blx	r3
.LVL9:
	ldr	r4, [r6, #4]
.LVL10:
	.loc 1 376 0
	str	r0, [r6, #4]
.LVL11:
	.loc 1 377 0
	subs	r4, r0, r4
.LVL12:
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr	r7, .L23+8
	ldr	r8, .L23+12
	.loc 1 380 0
	mov	r5, r7
	.loc 1 381 0
	ldr	r9, .L23+16
.LVL13:
.L20:
	.loc 1 379 0
	bl	I_StartTic
.LVL14:
	.loc 1 380 0
	ldr	r3, [r7]
	ldr	r1, [r8]
	.loc 1 381 0
	mov	r2, r3, asr #31
	.loc 1 380 0
	rsb	r1, r1, r3
	cmp	r1, #6
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	.loc 1 381 0
	smull	r1, r0, r9, r3
	rsb	r0, r2, r0, asr #1
	add	r0, r0, r0, asl #1
	ldr	r2, [r6]
	sub	r0, r3, r0, asl #2
	add	r0, r2, r0, asl #3
	bl	G_BuildTiccmd
.LVL15:
	.loc 1 382 0
	ldr	r3, [r5]
	.loc 1 377 0
	subs	r4, r4, #1
.LVL16:
	.loc 1 382 0
	add	r3, r3, #1
	str	r3, [r5]
.LVL17:
	.loc 1 377 0
	bne	.L20
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L24:
	.align	2
.L23:
	.word	I_GetTime
	.word	.LANCHOR0
	.word	maketic
	.word	gametic
	.word	715827883
	.cfi_endproc
.LFE9:
	.size	D_BuildNewTiccmds, .-D_BuildNewTiccmds
	.align	2
	.global	TryRunTics
	.type	TryRunTics, %function
TryRunTics:
.LFB10:
	.loc 1 458 0
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
	.loc 1 460 0
	ldr	r6, .L51
	ldr	r7, .L51+4
	ldr	r3, [r6]
	blx	r3
.LVL18:
	ldr	r5, .L51+8
	mov	r8, r0
.LVL19:
	.loc 1 471 0
	ldr	r4, .L51+12
	.loc 1 477 0
	ldr	fp, .L51+16
	.loc 1 493 0
	ldr	r9, .L51+20
	.loc 1 496 0
	ldr	r10, .L51+24
	b	.L33
.LVL20:
.L28:
	.loc 1 479 0
	ldr	r3, [r6]
	blx	r3
.LVL21:
	rsb	r0, r8, r0
	cmp	r0, #10
	bgt	.L46
	.loc 1 493 0
	mov	r3, #1
	str	r3, [r9]
	.loc 1 494 0
	bl	V_GetMode
.LVL22:
	cmp	r0, #4
	ldr	r3, [r4]
	beq	.L47
	.loc 1 496 0
	cmp	r3, #0
	beq	.L33
	.loc 1 496 0 is_stmt 0 discriminator 1
	ldr	r2, .L51+28
	ldrb	r3, [r10]	@ zero_extendqisi2
	ldrb	r2, [r2]	@ zero_extendqisi2
	rsb	r3, r2, r3
	clz	r3, r3
	mov	r3, r3, lsr #5
	.loc 1 494 0 is_stmt 1 discriminator 1
	cmp	r3, #0
	bne	.L48
.L33:
	.loc 1 467 0
	bl	D_BuildNewTiccmds
.LVL23:
	.loc 1 469 0
	ldr	r3, [r7]
	ldr	r2, [r5]
.LVL24:
	.loc 1 470 0
	subs	r3, r3, r2
.LVL25:
	bne	.L49
	.loc 1 471 0
	ldr	r3, [r4]
.LVL26:
	cmp	r3, #0
	bne	.L28
	.loc 1 477 0
	mov	r3, #1000
	ldr	r0, [fp]
	mul	r0, r3, r0
	bl	I_uSleep
.LVL27:
	b	.L28
.L47:
	.loc 1 494 0 discriminator 1
	adds	r3, r3, #0
	movne	r3, #1
	cmp	r3, #0
	beq	.L33
.L48:
	.loc 1 498 0
	mov	r3, #1
	ldr	r2, .L51+32
	str	r3, [r2, #8]
	.loc 1 499 0
	bl	D_Display
.LVL28:
	.loc 1 500 0
	mov	r3, #0
	ldr	r2, .L51+32
	str	r3, [r2, #8]
	b	.L33
.LVL29:
.L49:
	mov	r4, r3
	ldr	r7, .L51+36
	ldr	r6, .L51+40
	b	.L27
.LVL30:
.L35:
	.loc 1 512 0
	bl	M_Ticker
.LVL31:
	.loc 1 513 0
	bl	I_GetTime_SaveMS
.LVL32:
	.loc 1 514 0
	bl	G_Ticker
.LVL33:
	.loc 1 515 0
	ldr	r3, [r6]
	ldr	r0, [r5]
	blx	r3
.LVL34:
	.loc 1 516 0
	ldr	r3, [r5]
	.loc 1 506 0
	subs	r4, r4, #1
.LVL35:
	.loc 1 516 0
	add	r3, r3, #1
	str	r3, [r5]
.LVL36:
	.loc 1 506 0
	beq	.L50
.L27:
.LVL37:
	.loc 1 510 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L35
	.loc 1 511 0
	bl	D_DoAdvanceDemo
.LVL38:
	b	.L35
.LVL39:
.L46:
	.loc 1 521 0
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
.LVL40:
	.loc 1 489 0
	b	M_Ticker
.LVL41:
.L50:
	.cfi_restore_state
	.loc 1 521 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L52:
	.align	2
.L51:
	.word	I_GetTime
	.word	maketic
	.word	gametic
	.word	movement_smooth
	.word	ms_to_next_tick
	.word	WasRenderedInTryRunTics
	.word	gamestate
	.word	wipegamestate
	.word	.LANCHOR0
	.word	advancedemo
	.word	P_Checksum
	.cfi_endproc
.LFE10:
	.size	TryRunTics, .-TryRunTics
	.comm	doomcom,4,4
	.comm	wanted_player_number,4,4
	.global	ticdup
	.comm	maketic,4,4
	.comm	netcmds,384,4
	.data
	.align	2
	.type	ticdup, %object
	.size	ticdup, 4
ticdup:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-solo-net\000"
	.space	2
.LC1:
	.ascii	"-net1\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	localcmds, %object
	.size	localcmds, 4
localcmds:
	.space	4
	.type	lastmadetic.8808, %object
	.size	lastmadetic.8808, 4
lastmadetic.8808:
	.space	4
	.type	isExtraDDisplay, %object
	.size	isExtraDDisplay, 4
isExtraDDisplay:
	.space	4
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 3 "c:/devl/prboom3ds/src/doomtype.h"
	.file 4 "c:/devl/prboom3ds/src/z_zone.h"
	.file 5 "c:/devl/prboom3ds/src/doomdef.h"
	.file 6 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 7 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 8 "c:/devl/prboom3ds/src/d_net.h"
	.file 9 "c:/devl/prboom3ds/src/protocol.h"
	.file 10 "c:/devl/prboom3ds/src/v_video.h"
	.file 11 "c:/devl/prboom3ds/src/tables.h"
	.file 12 "c:/devl/prboom3ds/src/doomstat.h"
	.file 13 "c:/devl/prboom3ds/src/d_main.h"
	.file 14 "c:/devl/prboom3ds/src/p_checksum.h"
	.file 15 "c:/devl/prboom3ds/src/i_system.h"
	.file 16 "c:/devl/prboom3ds/src/i_main.h"
	.file 17 "c:/devl/prboom3ds/src/r_fps.h"
	.file 18 "c:/devl/prboom3ds/src/m_argv.h"
	.file 19 "c:/devl/prboom3ds/src/g_game.h"
	.file 20 "c:/devl/prboom3ds/src/i_video.h"
	.file 21 "c:/devl/prboom3ds/src/m_menu.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x716
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.4byte	.LASF116
	.4byte	.LASF117
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xd4
	.4byte	0x64
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x42
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4c
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x9
	.4byte	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0xa
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.4byte	0xfe
	.uleb128 0xb
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF16
	.sleb128 1
	.uleb128 0xb
	.4byte	.LASF17
	.sleb128 2
	.uleb128 0xb
	.4byte	.LASF18
	.sleb128 3
	.uleb128 0xb
	.4byte	.LASF19
	.sleb128 4
	.uleb128 0xb
	.4byte	.LASF20
	.sleb128 5
	.uleb128 0xb
	.4byte	.LASF21
	.sleb128 6
	.uleb128 0xb
	.4byte	.LASF22
	.sleb128 7
	.uleb128 0xb
	.4byte	.LASF23
	.sleb128 8
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x5
	.byte	0x95
	.4byte	0x11f
	.uleb128 0xb
	.4byte	.LASF24
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF25
	.sleb128 1
	.uleb128 0xb
	.4byte	.LASF26
	.sleb128 2
	.uleb128 0xb
	.4byte	.LASF27
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x5
	.byte	0x9a
	.4byte	0xfe
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x6
	.byte	0x2f
	.4byte	0x5d
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.byte	0x31
	.4byte	0x186
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x7
	.byte	0x33
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.byte	0x34
	.4byte	0x25
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.byte	0x35
	.4byte	0x33
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x36
	.4byte	0x33
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x7
	.byte	0x37
	.4byte	0x98
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x7
	.byte	0x38
	.4byte	0x98
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x7
	.byte	0x39
	.4byte	0x135
	.uleb128 0xc
	.byte	0x68
	.byte	0x8
	.byte	0x47
	.4byte	0x1e2
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4a
	.4byte	0x64
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4c
	.4byte	0x98
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x4e
	.4byte	0x98
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x4f
	.4byte	0x98
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x50
	.4byte	0x98
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x51
	.4byte	0x1e2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x186
	.4byte	0x1f2
	.uleb128 0xf
	.4byte	0x6b
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x8
	.byte	0x53
	.4byte	0x191
	.uleb128 0xc
	.byte	0x8c
	.byte	0x8
	.byte	0x8c
	.4byte	0x2dd
	.uleb128 0x10
	.ascii	"id\000"
	.byte	0x8
	.byte	0x8f
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x92
	.4byte	0x33
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x95
	.4byte	0x33
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x97
	.4byte	0x33
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x9a
	.4byte	0x33
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x9e
	.4byte	0x33
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0xa0
	.4byte	0x33
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa2
	.4byte	0x33
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0xa4
	.4byte	0x33
	.byte	0x12
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0xa6
	.4byte	0x33
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0xa7
	.4byte	0x33
	.byte	0x16
	.uleb128 0x10
	.ascii	"map\000"
	.byte	0x8
	.byte	0xa8
	.4byte	0x33
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0xa9
	.4byte	0x33
	.byte	0x1a
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0xac
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0xad
	.4byte	0x33
	.byte	0x1e
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0xb5
	.4byte	0x33
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x8
	.byte	0xb7
	.4byte	0x33
	.byte	0x22
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x8
	.byte	0xba
	.4byte	0x1f2
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0x8
	.byte	0xbc
	.4byte	0x1fd
	.uleb128 0xc
	.byte	0x8
	.byte	0x9
	.byte	0x33
	.4byte	0x321
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x9
	.byte	0x34
	.4byte	0x98
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x9
	.byte	0x35
	.4byte	0x98
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x9
	.byte	0x36
	.4byte	0x321
	.byte	0x2
	.uleb128 0x10
	.ascii	"tic\000"
	.byte	0x9
	.byte	0x37
	.4byte	0x64
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	0x98
	.4byte	0x331
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x9
	.byte	0x38
	.4byte	0x2e8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF64
	.uleb128 0xa
	.byte	0x1
	.byte	0xa
	.byte	0x72
	.4byte	0x370
	.uleb128 0xb
	.4byte	.LASF65
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF66
	.sleb128 1
	.uleb128 0xb
	.4byte	.LASF67
	.sleb128 2
	.uleb128 0xb
	.4byte	.LASF68
	.sleb128 3
	.uleb128 0xb
	.4byte	.LASF69
	.sleb128 4
	.uleb128 0xb
	.4byte	.LASF70
	.sleb128 5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0xa
	.byte	0x79
	.4byte	0x343
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e6
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa8
	.4byte	0x5d
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LVL0
	.4byte	0x688
	.4byte	0x3bb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x6ad
	.4byte	0x3d2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x6ad
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x174
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x431
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x176
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	lastmadetic.8808
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x177
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x6c2
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x6c9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1c9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b9
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x5d
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x5d
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x6da
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x3e6
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0x6e5
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x6f6
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x6fd
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x704
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x70b
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0x712
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0x6fd
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0xb
	.byte	0x50
	.4byte	0x4c4
	.uleb128 0x7
	.4byte	0x4c9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x49
	.4byte	0x4da
	.uleb128 0x7
	.4byte	0x8d
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x1
	.byte	0x4a
	.4byte	0x4ea
	.uleb128 0x7
	.4byte	0x5d
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4b
	.4byte	0x5d
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4d
	.4byte	0x50b
	.uleb128 0x5
	.byte	0x3
	.4byte	localcmds
	.uleb128 0x6
	.byte	0x4
	.4byte	0x186
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4e
	.4byte	0x64
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4f
	.4byte	0x527
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x331
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0x1
	.byte	0x52
	.4byte	0x5d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.byte	0x55
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x3
	.4byte	isExtraDDisplay
	.uleb128 0xe
	.4byte	0x12a
	.4byte	0x561
	.uleb128 0x1e
	.4byte	0x6b
	.2byte	0x27ff
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF88
	.byte	0xb
	.byte	0x4d
	.4byte	0x550
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0xc
	.byte	0x8f
	.4byte	0x8d
	.uleb128 0x1f
	.4byte	.LASF55
	.byte	0xc
	.byte	0xc3
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF90
	.byte	0xc
	.byte	0xc4
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF91
	.byte	0xc
	.byte	0xe1
	.4byte	0x11f
	.uleb128 0x1f
	.4byte	.LASF92
	.byte	0xc
	.byte	0xe9
	.4byte	0x5d
	.uleb128 0xe
	.4byte	0x8d
	.4byte	0x5b3
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0xc
	.byte	0xf0
	.4byte	0x5a3
	.uleb128 0x20
	.4byte	.LASF94
	.byte	0xc
	.2byte	0x10b
	.4byte	0x11f
	.uleb128 0x21
	.4byte	.LASF95
	.byte	0x1
	.byte	0x50
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	maketic
	.uleb128 0xe
	.4byte	0x186
	.4byte	0x5f1
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x3
	.uleb128 0xf
	.4byte	0x6b
	.byte	0xb
	.byte	0
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0x1
	.byte	0x4c
	.4byte	0x5db
	.uleb128 0x5
	.byte	0x3
	.4byte	netcmds
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0x51
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	ticdup
	.uleb128 0x21
	.4byte	.LASF97
	.byte	0x1
	.byte	0x5a
	.4byte	0x624
	.uleb128 0x5
	.byte	0x3
	.4byte	doomcom
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2dd
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0xd
	.byte	0x3e
	.4byte	0x8d
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0xe
	.byte	0x1
	.4byte	0xb9
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0xf
	.byte	0x2a
	.4byte	0x5d
	.uleb128 0x22
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF101
	.byte	0x10
	.byte	0x2a
	.4byte	0x65b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64b
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x11
	.byte	0x28
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x11
	.byte	0x41
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF104
	.byte	0x1
	.byte	0x53
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	wanted_player_number
	.uleb128 0x23
	.4byte	.LASF105
	.byte	0x4
	.byte	0x49
	.4byte	0x72
	.4byte	0x6a7
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0x9
	.4byte	0x6a7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72
	.uleb128 0x23
	.4byte	.LASF106
	.byte	0x12
	.byte	0x2d
	.4byte	0x5d
	.4byte	0x6c2
	.uleb128 0x9
	.4byte	0xa3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF109
	.byte	0x14
	.byte	0x41
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x13
	.byte	0x50
	.4byte	0x6da
	.uleb128 0x9
	.4byte	0x50b
	.byte	0
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0xa
	.byte	0x80
	.4byte	0x370
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0xf
	.byte	0x35
	.4byte	0x6f6
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.uleb128 0x24
	.4byte	.LASF110
	.byte	0xd
	.byte	0x46
	.uleb128 0x24
	.4byte	.LASF111
	.byte	0x15
	.byte	0x35
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0xf
	.byte	0x31
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x13
	.byte	0x3f
	.uleb128 0x24
	.4byte	.LASF114
	.byte	0xd
	.byte	0x40
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0xb
	.byte	0x3
	.4byte	lastmadetic.8808
	.byte	0x6
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0xa
	.byte	0x3
	.4byte	maketic
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x58
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
.LASF22:
	.ascii	"PU_NEWBLOCK\000"
.LASF15:
	.ascii	"PU_FREE\000"
.LASF70:
	.ascii	"VID_MODEMAX\000"
.LASF47:
	.ascii	"datalength\000"
.LASF85:
	.ascii	"queuedpacket\000"
.LASF36:
	.ascii	"ticcmd_t\000"
.LASF80:
	.ascii	"server\000"
.LASF106:
	.ascii	"M_CheckParm\000"
.LASF75:
	.ascii	"newtics\000"
.LASF28:
	.ascii	"gamestate_t\000"
.LASF2:
	.ascii	"short int\000"
.LASF12:
	.ascii	"size_t\000"
.LASF26:
	.ascii	"GS_FINALE\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF111:
	.ascii	"M_Ticker\000"
.LASF100:
	.ascii	"ms_to_next_tick\000"
.LASF91:
	.ascii	"gamestate\000"
.LASF29:
	.ascii	"fixed_t\000"
.LASF73:
	.ascii	"D_BuildNewTiccmds\000"
.LASF46:
	.ascii	"remotenode\000"
.LASF104:
	.ascii	"wanted_player_number\000"
.LASF87:
	.ascii	"isExtraDDisplay\000"
.LASF13:
	.ascii	"boolean\000"
.LASF95:
	.ascii	"maketic\000"
.LASF21:
	.ascii	"PU_CACHE\000"
.LASF60:
	.ascii	"doomcom_t\000"
.LASF37:
	.ascii	"checksum\000"
.LASF38:
	.ascii	"retransmitfrom\000"
.LASF117:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF88:
	.ascii	"finesine\000"
.LASF97:
	.ascii	"doomcom\000"
.LASF0:
	.ascii	"signed char\000"
.LASF90:
	.ascii	"displayplayer\000"
.LASF64:
	.ascii	"float\000"
.LASF18:
	.ascii	"PU_MUSIC\000"
.LASF108:
	.ascii	"I_uSleep\000"
.LASF33:
	.ascii	"consistancy\000"
.LASF103:
	.ascii	"WasRenderedInTryRunTics\000"
.LASF6:
	.ascii	"long long int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF79:
	.ascii	"finecosine\000"
.LASF25:
	.ascii	"GS_INTERMISSION\000"
.LASF32:
	.ascii	"angleturn\000"
.LASF51:
	.ascii	"deathmatch\000"
.LASF78:
	.ascii	"entertime\000"
.LASF86:
	.ascii	"xtratics\000"
.LASF52:
	.ascii	"savegame\000"
.LASF112:
	.ascii	"I_GetTime_SaveMS\000"
.LASF89:
	.ascii	"netgame\000"
.LASF53:
	.ascii	"episode\000"
.LASF20:
	.ascii	"PU_LEVSPEC\000"
.LASF14:
	.ascii	"byte\000"
.LASF68:
	.ascii	"VID_MODE32\000"
.LASF19:
	.ascii	"PU_LEVEL\000"
.LASF55:
	.ascii	"consoleplayer\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF39:
	.ascii	"starttic\000"
.LASF16:
	.ascii	"PU_STATIC\000"
.LASF62:
	.ascii	"reserved\000"
.LASF61:
	.ascii	"type\000"
.LASF107:
	.ascii	"G_BuildTiccmd\000"
.LASF113:
	.ascii	"G_Ticker\000"
.LASF58:
	.ascii	"drone\000"
.LASF114:
	.ascii	"D_DoAdvanceDemo\000"
.LASF72:
	.ascii	"D_InitNetGame\000"
.LASF49:
	.ascii	"ticdup\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF110:
	.ascii	"D_Display\000"
.LASF65:
	.ascii	"VID_MODE8\000"
.LASF84:
	.ascii	"numqueuedpackets\000"
.LASF92:
	.ascii	"gametic\000"
.LASF10:
	.ascii	"char\000"
.LASF4:
	.ascii	"long int\000"
.LASF105:
	.ascii	"Z_Malloc\000"
.LASF81:
	.ascii	"remotetic\000"
.LASF43:
	.ascii	"doomdata_t\000"
.LASF44:
	.ascii	"intnum\000"
.LASF56:
	.ascii	"numplayers\000"
.LASF101:
	.ascii	"I_GetTime\000"
.LASF11:
	.ascii	"_Bool\000"
.LASF118:
	.ascii	"V_GetMode\000"
.LASF98:
	.ascii	"advancedemo\000"
.LASF31:
	.ascii	"sidemove\000"
.LASF59:
	.ascii	"data\000"
.LASF54:
	.ascii	"skill\000"
.LASF69:
	.ascii	"VID_MODEGL\000"
.LASF94:
	.ascii	"wipegamestate\000"
.LASF34:
	.ascii	"chatchar\000"
.LASF41:
	.ascii	"numtics\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF83:
	.ascii	"localcmds\000"
.LASF24:
	.ascii	"GS_LEVEL\000"
.LASF30:
	.ascii	"forwardmove\000"
.LASF63:
	.ascii	"packet_header_t\000"
.LASF115:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF27:
	.ascii	"GS_DEMOSCREEN\000"
.LASF57:
	.ascii	"angleoffset\000"
.LASF82:
	.ascii	"remotesend\000"
.LASF99:
	.ascii	"P_Checksum\000"
.LASF42:
	.ascii	"cmds\000"
.LASF93:
	.ascii	"playeringame\000"
.LASF96:
	.ascii	"netcmds\000"
.LASF45:
	.ascii	"command\000"
.LASF74:
	.ascii	"lastmadetic\000"
.LASF71:
	.ascii	"video_mode_t\000"
.LASF48:
	.ascii	"numnodes\000"
.LASF116:
	.ascii	"c:/devl/prboom3ds/src/d_client.c\000"
.LASF66:
	.ascii	"VID_MODE15\000"
.LASF67:
	.ascii	"VID_MODE16\000"
.LASF76:
	.ascii	"TryRunTics\000"
.LASF77:
	.ascii	"runtics\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF50:
	.ascii	"extratics\000"
.LASF35:
	.ascii	"buttons\000"
.LASF17:
	.ascii	"PU_SOUND\000"
.LASF102:
	.ascii	"movement_smooth\000"
.LASF23:
	.ascii	"PU_MAX\000"
.LASF109:
	.ascii	"I_StartTic\000"
.LASF40:
	.ascii	"player\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
