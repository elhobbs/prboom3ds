	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"m_misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	M_WriteFile
	.type	M_WriteFile, %function
M_WriteFile:
.LFB7:
	.file 1 "c:/devl/prboom3ds/src/m_misc.c"
	.loc 1 87 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 87 0
	mov	r7, r0
	mov	r8, r1
	mov	r6, r2
	.loc 1 90 0
	mov	r4, #0
	bl	__errno
.LVL1:
	.loc 1 92 0
	ldr	r1, .L8
	.loc 1 90 0
	str	r4, [r0]
	.loc 1 92 0
	mov	r0, r7
	bl	fopen
.LVL2:
	subs	r5, r0, #0
	beq	.L3
	.loc 1 96 0
	mov	r0, r8
.LVL3:
	mov	r1, #1
	mov	r2, r6
	mov	r3, r5
	bl	fwrite
.LVL4:
	mov	r8, r0
.LVL5:
	.loc 1 97 0
	mov	r0, r5
.LVL6:
	bl	fclose
.LVL7:
	.loc 1 100 0
	cmp	r6, r8
	bne	.L7
	mov	r0, #1
	.loc 1 104 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L7:
	.loc 1 101 0
	mov	r0, r7
	bl	remove
.LVL8:
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL9:
.L3:
	.loc 1 93 0
	mov	r0, r5
.LVL10:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L9:
	.align	2
.L8:
	.word	.LC0
	.cfi_endproc
.LFE7:
	.size	M_WriteFile, .-M_WriteFile
	.align	2
	.global	M_ReadFile
	.type	M_ReadFile, %function
M_ReadFile:
.LFB8:
	.loc 1 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL11:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 113 0
	mov	r5, r1
	.loc 1 116 0
	ldr	r1, .L15
.LVL12:
	bl	fopen
.LVL13:
	subs	r4, r0, #0
	beq	.L13
.LBB11:
	.loc 1 121 0
	mov	r1, #0
	mov	r2, #2
	bl	fseek
.LVL14:
	.loc 1 122 0
	mov	r0, r4
	bl	ftell
.LVL15:
	.loc 1 123 0
	mov	r1, #0
	.loc 1 122 0
	mov	r6, r0
.LVL16:
	.loc 1 123 0
	mov	r2, r1
	mov	r0, r4
.LVL17:
	bl	fseek
.LVL18:
	.loc 1 124 0
	mov	r1, #1
	mov	r2, #0
	mov	r0, r6
	bl	Z_Malloc
.LVL19:
	.loc 1 125 0
	mov	r2, r6
	.loc 1 124 0
	str	r0, [r5]
	.loc 1 125 0
	mov	r1, #1
	mov	r3, r4
	bl	fread
.LVL20:
	mov	r5, r0
.LVL21:
	cmp	r5, r6
	.loc 1 127 0
	mov	r0, r4
	.loc 1 125 0
	bne	.L12
	.loc 1 127 0
	bl	fclose
.LVL22:
	.loc 1 129 0
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL23:
.L12:
	.loc 1 131 0
	bl	fclose
.LVL24:
.LBE11:
	.loc 1 136 0
	mvn	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL25:
.L13:
	mvn	r0, #0
.LVL26:
	.loc 1 137 0
	ldmfd	sp!, {r4, r5, r6, pc}
.L16:
	.align	2
.L15:
	.word	.LC1
	.cfi_endproc
.LFE8:
	.size	M_ReadFile, .-M_ReadFile
	.align	2
	.global	M_SaveDefaults
	.type	M_SaveDefaults, %function
M_SaveDefaults:
.LFB9:
	.loc 1 855 0
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
	.loc 1 859 0
	ldr	r3, .L30
	ldr	r1, .L30+4
	ldr	r0, [r3]
	bl	fopen
.LVL27:
	.loc 1 860 0
	subs	r6, r0, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	.loc 1 865 0
	mov	r1, #1
	mov	r2, #19
	mov	r3, r6
	ldr	r0, .L30+8
.LVL28:
	bl	fwrite
.LVL29:
	.loc 1 869 0
	ldr	r7, .L30+12
	.loc 1 866 0
	mov	r1, #1
	mov	r2, #10
	mov	r3, r6
	ldr	r0, .L30+16
	bl	fwrite
.LVL30:
	.loc 1 867 0
	mov	r3, r6
	ldr	r0, .L30+20
	mov	r1, #1
	mov	r2, #19
	bl	fwrite
.LVL31:
	.loc 1 869 0
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L30+24
	bgt	.L24
	b	.L25
.LVL32:
.L20:
	.loc 1 875 0
	cmp	r2, #1
	beq	.L22
	.loc 1 880 0
	ldr	r3, [r4, #-24]
	.loc 1 879 0
	cmp	r2, #3
	.loc 1 880 0
	mov	r0, r6
	ldr	r3, [r3]
	.loc 1 879 0
	beq	.L29
.LVL33:
.L28:
	.loc 1 886 0
	ldr	r2, [r4, #-28]
	bl	fprintf
.LVL34:
.L21:
	.loc 1 869 0 discriminator 2
	ldr	r2, [r7]
	add	r5, r5, #1
.LVL35:
	cmp	r2, r5
	add	r4, r4, #44
	ble	.L25
.LVL36:
.L24:
	.loc 1 870 0
	ldrb	r2, [r4]	@ zero_extendqisi2
	.loc 1 882 0
	ldr	r1, .L30+28
	.loc 1 870 0
	cmp	r2, #0
	bne	.L20
	.loc 1 872 0
	mov	r0, r6
	ldr	r1, .L30+32
	ldr	r2, [r4, #-28]
	bl	fprintf
.LVL37:
	b	.L21
.LVL38:
.L29:
	.loc 1 880 0
	ldr	r1, .L30+36
	ldr	r2, [r4, #-28]
	bl	fprintf
.LVL39:
	b	.L21
.L22:
	.loc 1 886 0
	ldr	r3, [r4, #-20]
	mov	r0, r6
	ldr	r3, [r3]
	ldr	r1, .L30+40
	b	.L28
.LVL40:
.L25:
	.loc 1 890 0
	mov	r0, r6
	.loc 1 891 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL41:
	.loc 1 890 0
	b	fclose
.LVL42:
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC3
	.word	numdefaults
	.word	.LC4
	.word	.LC5
	.word	.LANCHOR1+28
	.word	.LC8
	.word	.LC6
	.word	.LC7
	.word	.LC9
	.cfi_endproc
.LFE9:
	.size	M_SaveDefaults, .-M_SaveDefaults
	.align	2
	.global	M_LookupDefault
	.type	M_LookupDefault, %function
M_LookupDefault:
.LFB10:
	.loc 1 900 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL43:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 902 0
	ldr	r3, .L43
	.loc 1 900 0
	mov	r7, r0
	.loc 1 902 0
	ldr	r6, [r3]
	cmp	r6, #0
	ble	.L33
	mov	r5, #0
	ldr	r4, .L43+4
.LVL44:
.L36:
	.loc 1 903 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	.loc 1 903 0 is_stmt 0 discriminator 1
	mov	r0, r7
	ldr	r1, [r4, #-28]
	bl	strcmp
.LVL45:
	cmp	r0, #0
	beq	.L42
.L34:
	.loc 1 902 0 is_stmt 1 discriminator 2
	add	r5, r5, #1
.LVL46:
	cmp	r5, r6
	add	r4, r4, #44
	bne	.L36
.LVL47:
.L33:
	.loc 1 905 0
	mov	r1, r7
	ldr	r0, .L43+8
	bl	I_Error
.LVL48:
	.loc 1 906 0
	mov	r0, #0
	.loc 1 907 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL49:
.L42:
	.loc 1 904 0
	mov	r0, #44
	ldr	r3, .L43+12
	mla	r0, r0, r5, r3
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L44:
	.align	2
.L43:
	.word	numdefaults
	.word	.LANCHOR1+28
	.word	.LC10
	.word	.LANCHOR1
	.cfi_endproc
.LFE10:
	.size	M_LookupDefault, .-M_LookupDefault
	.align	2
	.global	M_LoadDefaults
	.type	M_LoadDefaults, %function
M_LoadDefaults:
.LFB11:
	.loc 1 916 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL50:
	.loc 1 928 0
	mov	r3, #304
	.loc 1 916 0
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
	.loc 1 928 0
	mov	r5, #0
	ldr	r7, .L89
	ldr	r4, .L89+4
	.loc 1 916 0
	sub	sp, sp, #196
	.cfi_def_cfa_offset 232
	.loc 1 928 0
	str	r3, [r7]
.LVL51:
.L48:
	.loc 1 930 0
	ldr	r6, [r4, #8]
	.loc 1 929 0
	add	r5, r5, #1
.LVL52:
	.loc 1 930 0
	cmp	r6, #0
	beq	.L46
	.loc 1 931 0
	ldr	r0, [r4, #16]
	mov	r1, #1
	mov	r2, #0
	bl	Z_Strdup
.LVL53:
	str	r0, [r6]
.L46:
.LVL54:
	.loc 1 932 0
	ldr	r3, [r4, #4]
	add	r4, r4, #44
	cmp	r3, #0
	.loc 1 933 0
	ldrne	r2, [r4, #-32]
	strne	r2, [r3]
	.loc 1 929 0
	ldr	r3, [r7]
	cmp	r3, r5
	bgt	.L48
	.loc 1 944 0
	ldr	r0, .L89+8
	bl	M_CheckParm
.LVL55:
	.loc 1 945 0
	cmp	r0, #0
	beq	.L49
	.loc 1 945 0 is_stmt 0 discriminator 1
	ldr	r3, .L89+12
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r0, r3
	blt	.L84
.L49:
.LBB12:
	.loc 1 948 0 is_stmt 1
	bl	I_DoomExeDir
.LVL56:
	mov	r5, r0
.LVL57:
	.loc 1 950 0
	mov	r0, #0
.LVL58:
	mov	r3, r5
	mov	r1, r0
	ldr	r2, .L89+16
	bl	doom_snprintf
.LVL59:
	.loc 1 951 0
	add	r6, r0, #1
	mov	r1, #1
	mov	r2, #0
	mov	r0, r6
.LVL60:
	bl	Z_Malloc
.LVL61:
	ldr	r4, .L89+20
	.loc 1 952 0
	ldr	r2, .L89+16
	mov	r1, r6
	mov	r3, r5
	.loc 1 951 0
	str	r0, [r4]
	.loc 1 952 0
	bl	doom_snprintf
.LVL62:
	ldr	r2, [r4]
.LVL63:
.L50:
.LBE12:
	.loc 1 955 0
	ldr	r1, .L89+24
	mov	r0, #2
	bl	lprintf
.LVL64:
	.loc 1 959 0
	ldr	r0, [r4]
	ldr	r1, .L89+28
	bl	fopen
.LVL65:
	.loc 1 960 0
	subs	r5, r0, #0
	beq	.L45
	mov	r3, #0
	.loc 1 970 0
	ldr	r6, .L89+32
	str	r3, [sp, #4]
.LVL66:
.L51:
	.loc 1 962 0
	ldrh	r4, [r5, #12]
	and	r4, r4, #32
	uxth	r4, r4
	cmp	r4, #0
	bne	.L85
.LVL67:
	.loc 1 965 0
	add	r2, sp, #12
	add	r3, sp, #92
	mov	r0, r5
	ldr	r1, .L89+36
	bl	fscanf
.LVL68:
	cmp	r0, #2
	bne	.L51
	.loc 1 970 0
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	ldr	r3, [r6]
	add	r3, r3, r2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	tst	r3, #7
	beq	.L51
	.loc 1 973 0
	ldrb	r3, [sp, #92]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L86
	.loc 1 981 0
	cmp	r3, #48
	bne	.L56
	.loc 1 981 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #93]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L87
.L56:
	.loc 1 985 0 is_stmt 1
	add	r0, sp, #92
	ldr	r1, .L89+40
	add	r2, sp, #8
	bl	sscanf
.LVL69:
	.loc 1 964 0
	mov	r4, #0
.LVL70:
.L55:
	.loc 1 989 0
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L51
	mov	r10, #0
	ldr	fp, .L89+44
	b	.L63
.LVL71:
.L88:
	.loc 1 994 0
	mov	r2, r9
	mov	r0, #4
	bl	lprintf
.LVL72:
.L57:
	.loc 1 989 0 discriminator 2
	ldr	r2, [r7]
	add	r10, r10, #1
.LVL73:
	cmp	r2, r10
	add	fp, fp, #44
	ble	.L51
.LVL74:
.L63:
	.loc 1 990 0
	ldrb	r8, [fp]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L57
	.loc 1 990 0 is_stmt 0 discriminator 1
	ldr	r9, [fp, #-28]
	add	r0, sp, #12
	mov	r1, r9
	bl	strcmp
.LVL75:
	cmp	r0, #0
	bne	.L57
	.loc 1 993 0 is_stmt 1
	sub	ip, r8, #1
	clz	ip, ip
	mov	ip, ip, lsr #5
	cmp	ip, r4
	.loc 1 994 0
	ldr	r1, .L89+48
	.loc 1 993 0
	bne	.L88
	.loc 1 997 0
	cmp	r4, #0
	.loc 1 1002 0
	mov	r2, #44
	ldr	r3, .L89+4
	.loc 1 997 0
	bne	.L59
	.loc 1 1002 0
	mla	r2, r2, r10, r3
	ldr	r3, .L89+52
	ldr	r2, [r2, #20]
	ldr	r1, [sp, #8]
	cmp	r2, r3
	beq	.L61
	.loc 1 1002 0 is_stmt 0 discriminator 2
	cmp	r2, r1
	bgt	.L51
.L61:
	.loc 1 1003 0 is_stmt 1 discriminator 3
	mov	r2, #44
	ldr	r3, .L89+4
	mla	r2, r2, r10, r3
	.loc 1 1002 0 discriminator 3
	ldr	r3, .L89+52
	.loc 1 1003 0 discriminator 3
	ldr	r2, [r2, #24]
	.loc 1 1002 0 discriminator 3
	cmp	r2, r3
	beq	.L62
	.loc 1 1003 0
	cmp	r2, r1
	blt	.L51
.L62:
	.loc 1 1004 0
	mov	r2, #44
	ldr	r3, .L89+4
	mla	r3, r2, r10, r3
	ldr	r3, [r3, #4]
	str	r1, [r3]
	b	.L51
.LVL76:
.L85:
	.loc 1 1019 0
	mov	r0, r5
	bl	fclose
.LVL77:
.L45:
	.loc 1 1022 0
	add	sp, sp, #196
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL78:
.L59:
	.cfi_restore_state
.LBB13:
	.loc 1 1010 0 discriminator 2
	mla	r3, r2, r10, r3
	ldr	r4, [r3, #8]
.LVL79:
	.loc 1 1011 0 discriminator 2
	ldr	r0, [r4]
	bl	Z_Free
.LVL80:
	.loc 1 1012 0 discriminator 2
	ldr	r3, [sp, #4]
	str	r3, [r4]
	b	.L51
.LVL81:
.L84:
.LBE13:
	.loc 1 946 0
	ldr	r3, .L89+56
	add	r0, r0, #1
.LVL82:
	ldr	r3, [r3]
	mov	r2, #0
	mov	r1, #1
	ldr	r0, [r3, r0, asl #2]
.LVL83:
	bl	Z_Strdup
.LVL84:
	ldr	r4, .L89+20
	mov	r2, r0
	str	r0, [r4]
	b	.L50
.LVL85:
.L87:
	.loc 1 983 0
	add	r0, sp, #94
	ldr	r1, .L89+60
	add	r2, sp, #8
	bl	sscanf
.LVL86:
	b	.L55
.L86:
.LVL87:
	.loc 1 977 0
	add	r0, sp, #92
	bl	strlen
.LVL88:
	.loc 1 978 0
	mov	r2, r4
	.loc 1 977 0
	mov	fp, r0
.LVL89:
	.loc 1 978 0
	mov	r1, #1
	bl	Z_Malloc
.LVL90:
	.loc 1 979 0
	add	r3, sp, #192
	add	fp, r3, fp
.LVL91:
	.loc 1 980 0
	add	r1, sp, #93
	.loc 1 979 0
	strb	r4, [fp, #-101]
	.loc 1 978 0
	str	r0, [sp, #4]
.LVL92:
	.loc 1 976 0
	mov	r4, #1
	.loc 1 980 0
	bl	strcpy
.LVL93:
	b	.L55
.L90:
	.align	2
.L89:
	.word	numdefaults
	.word	.LANCHOR1
	.word	.LC11
	.word	myargc
	.word	.LC12
	.word	.LANCHOR0
	.word	.LC13
	.word	.LC14
	.word	__ctype_ptr__
	.word	.LC15
	.word	.LC17
	.word	.LANCHOR1+28
	.word	.LC18
	.word	-123456789
	.word	myargv
	.word	.LC16
	.cfi_endproc
.LFE11:
	.size	M_LoadDefaults, .-M_LoadDefaults
	.align	2
	.global	M_DoScreenShot
	.type	M_DoScreenShot, %function
M_DoScreenShot:
.LFB12:
	.loc 1 1045 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL94:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 1046 0
	bl	I_ScreenShot
.LVL95:
	cmp	r0, #0
	ldmeqfd	sp!, {r3, pc}
	.loc 1 1047 0
	ldr	r0, .L94
	.loc 1 1048 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 1047 0
	b	doom_printf
.LVL96:
.L95:
	.align	2
.L94:
	.word	.LC19
	.cfi_endproc
.LFE12:
	.size	M_DoScreenShot, .-M_DoScreenShot
	.align	2
	.global	M_ScreenShot
	.type	M_ScreenShot, %function
M_ScreenShot:
.LFB13:
	.loc 1 1061 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL97:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 1067 0
	ldr	r0, .L110
	.loc 1 1061 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 1067 0
	mov	r1, #2
	bl	access
.LVL98:
	cmp	r0, #0
	bne	.L97
	.loc 1 1069 0
	ldr	r5, .L110+4
	.loc 1 1063 0
	mov	r4, r0
	.loc 1 1069 0
	ldr	r6, [r5, #4]
.LVL99:
.LBB14:
	.loc 1 1074 0
	mov	r8, r5
.LBE14:
	.loc 1 1069 0
	mov	r3, r6
	.loc 1 1076 0
	ldr	r7, .L110+8
	b	.L101
.LVL100:
.L98:
	.loc 1 1076 0 is_stmt 0 discriminator 1
	ldr	r3, [r8, #4]
	subs	r2, r6, r3
	movne	r2, #1
	cmp	r3, r7
	movgt	r2, #0
	cmp	r2, #0
	beq	.L102
.LVL101:
.L101:
.LBB15:
	.loc 1 1072 0 is_stmt 1 discriminator 3
	mov	r0, #0
	str	r3, [sp]
	mov	r1, r0
	ldr	r2, .L110+12
	ldr	r3, .L110
	bl	doom_snprintf
.LVL102:
	.loc 1 1073 0 discriminator 3
	add	r9, r0, #1
	mov	r1, r9
	mov	r0, r4
.LVL103:
	mov	r2, #1
	mov	r3, #0
	bl	Z_Realloc
.LVL104:
	mov	r4, r0
.LVL105:
	.loc 1 1074 0 discriminator 3
	ldr	r3, [r5, #4]
	mov	r1, r9
	str	r3, [sp]
	ldr	r2, .L110+12
	ldr	r3, .L110
	bl	doom_snprintf
.LVL106:
	.loc 1 1075 0 discriminator 3
	ldr	r3, [r5, #4]
.LBE15:
	.loc 1 1076 0 discriminator 3
	mov	r0, r4
.LBB16:
	.loc 1 1075 0 discriminator 3
	add	r3, r3, #1
.LBE16:
	.loc 1 1076 0 discriminator 3
	mov	r1, #0
.LBB17:
	.loc 1 1075 0 discriminator 3
	str	r3, [r5, #4]
.LBE17:
	.loc 1 1076 0 discriminator 3
	bl	access
.LVL107:
	cmp	r0, #0
	beq	.L98
.L102:
	.loc 1 1078 0
	mov	r0, r4
	mov	r1, #0
	bl	access
.LVL108:
	cmp	r0, #0
	beq	.L109
	.loc 1 1080 0
	ldr	r3, .L110+16
	mov	r0, #0
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r1, #2
	moveq	r1, #108
	movne	r1, #87
	bl	S_StartSound
.LVL109:
	.loc 1 1081 0
	mov	r0, r4
	bl	M_DoScreenShot
.LVL110:
	.loc 1 1084 0
	mov	r0, r4
	.loc 1 1090 0
	add	sp, sp, #12
	.cfi_remember_state
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
.LVL111:
	.loc 1 1084 0
	b	Z_Free
.LVL112:
.L109:
	.cfi_restore_state
	mov	r0, r4
	bl	Z_Free
.LVL113:
.L97:
	.loc 1 1088 0
	ldr	r0, .L110+20
	.loc 1 1090 0
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
	.loc 1 1088 0
	b	doom_printf
.LVL114:
.L111:
	.align	2
.L110:
	.word	.LC20
	.word	.LANCHOR0
	.word	9999
	.word	.LC21
	.word	gamemode
	.word	.LC22
	.cfi_endproc
.LFE13:
	.size	M_ScreenShot, .-M_ScreenShot
	.comm	numdefaults,4,4
	.global	defaults
	.comm	map_point_coordinates,4,4
	.comm	mus_pause_opt,4,4
	.global	precache
	.comm	usemouse,4,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	defaults, %object
	.size	defaults, 13376
defaults:
	.word	.LC23
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC24
	.word	default_compatibility_level
	.space	4
	.word	-1
	.space	4
	.word	-1
	.word	17
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC25
	.word	realtic_clock_rate
	.space	4
	.word	100
	.space	4
	.word	0
	.word	-123456789
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC26
	.word	menu_background
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC27
	.word	bodyquesize
	.space	4
	.word	32
	.space	4
	.word	-1
	.word	-123456789
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC28
	.word	flashing_hom
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC29
	.word	default_demo_insurance
	.space	4
	.word	2
	.space	4
	.word	0
	.word	2
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC30
	.word	precache
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC31
	.word	demo_smoothturns
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC32
	.word	demo_smoothturnsfactor
	.space	4
	.word	6
	.space	4
	.word	1
	.word	16
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC33
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC34
	.word	0
	.word	wad_files
	.word	0
	.word	.LC35
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC36
	.word	0
	.word	wad_files+4
	.word	0
	.word	.LC35
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC37
	.word	0
	.word	deh_files
	.word	0
	.word	.LC35
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC38
	.word	0
	.word	deh_files+4
	.word	0
	.word	.LC35
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC39
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC40
	.word	defaultskill
	.space	4
	.word	3
	.space	4
	.word	1
	.word	5
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC41
	.word	default_weapon_recoil
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	2
	.word	weapon_recoil
	.space	4
	.word	.LC42
	.word	doom_weapon_toggles
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC43
	.word	default_player_bobbing
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	2
	.word	player_bobbing
	.space	4
	.word	.LC44
	.word	default_monsters_remember
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	monsters_remember
	.space	4
	.word	.LC45
	.word	default_monster_infighting
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	monster_infighting
	.space	4
	.word	.LC46
	.word	default_monster_backing
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	monster_backing
	.space	4
	.word	.LC47
	.word	default_monster_avoid_hazards
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	monster_avoid_hazards
	.space	4
	.word	.LC48
	.word	default_monkeys
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	monkeys
	.space	4
	.word	.LC49
	.word	default_monster_friction
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	monster_friction
	.space	4
	.word	.LC50
	.word	default_help_friends
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	help_friends
	.space	4
	.word	.LC51
	.word	default_allow_pushers
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	2
	.word	allow_pushers
	.space	4
	.word	.LC52
	.word	default_variable_friction
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	2
	.word	variable_friction
	.space	4
	.word	.LC53
	.word	default_dogs
	.space	4
	.word	0
	.space	4
	.word	0
	.word	3
	.byte	2
	.space	3
	.word	5
	.space	8
	.word	.LC54
	.word	default_distfriend
	.space	4
	.word	128
	.space	4
	.word	0
	.word	999
	.byte	2
	.space	3
	.word	5
	.word	distfriend
	.space	4
	.word	.LC55
	.word	default_dog_jumping
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	5
	.word	dog_jumping
	.space	4
	.word	.LC56
	.word	sts_always_red
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC57
	.word	sts_pct_always_gray
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC58
	.word	sts_traditional_keys
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC59
	.word	showMessages
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC60
	.word	autorun
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC61
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC62
	.word	default_comp+60
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+60
	.space	4
	.word	.LC63
	.word	default_comp+68
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+68
	.space	4
	.word	.LC64
	.word	default_comp+64
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+64
	.space	4
	.word	.LC65
	.word	default_comp
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp
	.space	4
	.word	.LC66
	.word	default_comp+4
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+4
	.space	4
	.word	.LC67
	.word	default_comp+36
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+36
	.space	4
	.word	.LC68
	.word	default_comp+56
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+56
	.space	4
	.word	.LC69
	.word	default_comp+52
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+52
	.space	4
	.word	.LC70
	.word	default_comp+48
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+48
	.space	4
	.word	.LC71
	.word	default_comp+8
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+8
	.space	4
	.word	.LC72
	.word	default_comp+12
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+12
	.space	4
	.word	.LC73
	.word	default_comp+16
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+16
	.space	4
	.word	.LC74
	.word	default_comp+20
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+20
	.space	4
	.word	.LC75
	.word	default_comp+24
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+24
	.space	4
	.word	.LC76
	.word	default_comp+32
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+32
	.space	4
	.word	.LC77
	.word	default_comp+44
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+44
	.space	4
	.word	.LC78
	.word	default_comp+40
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+40
	.space	4
	.word	.LC79
	.word	default_comp+28
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+28
	.space	4
	.word	.LC80
	.word	default_comp+72
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+72
	.space	4
	.word	.LC81
	.word	default_comp+76
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+76
	.space	4
	.word	.LC82
	.word	default_comp+84
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+84
	.space	4
	.word	.LC83
	.word	default_comp+88
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+88
	.space	4
	.word	.LC84
	.word	default_comp+92
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+92
	.space	4
	.word	.LC85
	.word	default_comp+96
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	9
	.word	comp+96
	.space	4
	.word	.LC86
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC87
	.word	snd_card
	.space	4
	.word	-1
	.space	4
	.word	-1
	.word	7
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC88
	.word	mus_card
	.space	4
	.word	-1
	.space	4
	.word	-1
	.word	9
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC89
	.word	pitched_sounds
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC90
	.word	snd_samplerate
	.space	4
	.word	22050
	.space	4
	.word	11025
	.word	48000
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC91
	.word	snd_SfxVolume
	.space	4
	.word	8
	.space	4
	.word	0
	.word	15
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC92
	.word	snd_MusicVolume
	.space	4
	.word	8
	.space	4
	.word	0
	.word	15
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC93
	.word	mus_pause_opt
	.space	4
	.word	2
	.space	4
	.word	0
	.word	2
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC94
	.word	default_numChannels
	.space	4
	.word	8
	.space	4
	.word	1
	.word	32
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC95
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC96
	.word	0
	.word	default_videomode
	.word	0
	.word	.LC97
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC98
	.word	desired_screenwidth
	.space	4
	.word	400
	.space	4
	.word	400
	.word	400
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC99
	.word	desired_screenheight
	.space	4
	.word	240
	.space	4
	.word	240
	.word	240
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC100
	.word	use_fullscreen
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC101
	.word	use_doublebuffer
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC102
	.word	default_translucency
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC103
	.word	tran_filter_pct
	.space	4
	.word	66
	.space	4
	.word	0
	.word	100
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC104
	.word	screenblocks
	.space	4
	.word	10
	.space	4
	.word	3
	.word	11
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC105
	.word	usegamma
	.space	4
	.word	3
	.space	4
	.word	0
	.word	4
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC106
	.word	movement_smooth
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC107
	.word	drawvars+24
	.space	4
	.word	1
	.space	4
	.word	1
	.word	3
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC108
	.word	drawvars+28
	.space	4
	.word	1
	.space	4
	.word	1
	.word	3
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC109
	.word	drawvars+32
	.space	4
	.word	1
	.space	4
	.word	1
	.word	3
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC110
	.word	drawvars+36
	.space	4
	.word	1
	.space	4
	.word	1
	.word	2
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC111
	.word	drawvars+40
	.space	4
	.word	1
	.space	4
	.word	1
	.word	3
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC112
	.word	drawvars+52
	.space	4
	.word	49152
	.space	4
	.word	0
	.word	-123456789
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC113
	.word	drawvars+44
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC114
	.word	drawvars+48
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC115
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC116
	.word	usemouse
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC117
	.word	mouseSensitivity_horiz
	.space	4
	.word	10
	.space	4
	.word	0
	.word	-123456789
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC118
	.word	mouseSensitivity_vert
	.space	4
	.word	10
	.space	4
	.word	0
	.word	-123456789
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC119
	.word	mousebfire
	.space	4
	.word	0
	.space	4
	.word	-1
	.word	2
	.byte	2
	.space	3
	.word	1
	.space	8
	.word	.LC120
	.word	mousebstrafe
	.space	4
	.word	1
	.space	4
	.word	-1
	.word	2
	.byte	2
	.space	3
	.word	1
	.space	8
	.word	.LC121
	.word	mousebforward
	.space	4
	.word	2
	.space	4
	.word	-1
	.word	2
	.byte	2
	.space	3
	.word	1
	.space	8
	.word	.LC122
	.word	mousebbackward
	.space	4
	.word	-1
	.space	4
	.word	-1
	.word	2
	.byte	2
	.space	3
	.word	1
	.space	8
	.word	.LC123
	.word	mousebuse
	.space	4
	.word	-1
	.space	4
	.word	-1
	.word	2
	.byte	2
	.space	3
	.word	1
	.space	8
	.word	.LC124
	.word	mouse_double_click_use
	.space	4
	.word	1
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC125
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC126
	.word	key_right
	.space	4
	.word	174
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC127
	.word	key_left
	.space	4
	.word	172
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC128
	.word	key_up
	.space	4
	.word	173
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC129
	.word	key_down
	.space	4
	.word	175
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC130
	.word	key_menu_right
	.space	4
	.word	174
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC131
	.word	key_menu_left
	.space	4
	.word	172
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC132
	.word	key_menu_up
	.space	4
	.word	173
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC133
	.word	key_menu_down
	.space	4
	.word	175
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC134
	.word	key_menu_backspace
	.space	4
	.word	127
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC135
	.word	key_menu_escape
	.space	4
	.word	27
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC136
	.word	key_menu_enter
	.space	4
	.word	13
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC137
	.word	key_setup
	.space	4
	.word	199
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC138
	.word	key_strafeleft
	.space	4
	.word	44
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC139
	.word	key_straferight
	.space	4
	.word	46
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC140
	.word	key_fire
	.space	4
	.word	157
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC141
	.word	key_use
	.space	4
	.word	32
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC142
	.word	key_strafe
	.space	4
	.word	184
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC143
	.word	key_speed
	.space	4
	.word	182
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC144
	.word	key_savegame
	.space	4
	.word	188
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC145
	.word	key_loadgame
	.space	4
	.word	189
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC146
	.word	key_soundvolume
	.space	4
	.word	190
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC147
	.word	key_hud
	.space	4
	.word	191
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC148
	.word	key_quicksave
	.space	4
	.word	192
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC149
	.word	key_endgame
	.space	4
	.word	193
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC150
	.word	key_messages
	.space	4
	.word	194
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC151
	.word	key_quickload
	.space	4
	.word	195
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC152
	.word	key_quit
	.space	4
	.word	196
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC153
	.word	key_gamma
	.space	4
	.word	215
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC154
	.word	key_spy
	.space	4
	.word	216
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC155
	.word	key_pause
	.space	4
	.word	255
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC156
	.word	key_autorun
	.space	4
	.word	186
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC157
	.word	key_chat
	.space	4
	.word	116
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC158
	.word	key_backspace
	.space	4
	.word	127
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC159
	.word	key_enter
	.space	4
	.word	13
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC160
	.word	key_map
	.space	4
	.word	9
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC161
	.word	key_map_right
	.space	4
	.word	174
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC162
	.word	key_map_left
	.space	4
	.word	172
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC163
	.word	key_map_up
	.space	4
	.word	173
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC164
	.word	key_map_down
	.space	4
	.word	175
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC165
	.word	key_map_zoomin
	.space	4
	.word	61
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC166
	.word	key_map_zoomout
	.space	4
	.word	45
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC167
	.word	key_map_gobig
	.space	4
	.word	48
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC168
	.word	key_map_follow
	.space	4
	.word	102
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC169
	.word	key_map_mark
	.space	4
	.word	109
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC170
	.word	key_map_clear
	.space	4
	.word	99
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC171
	.word	key_map_grid
	.space	4
	.word	103
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC172
	.word	key_map_rotate
	.space	4
	.word	114
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC173
	.word	key_map_overlay
	.space	4
	.word	111
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC174
	.word	key_reverse
	.space	4
	.word	47
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC175
	.word	key_zoomin
	.space	4
	.word	61
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC176
	.word	key_zoomout
	.space	4
	.word	45
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC177
	.word	destination_keys
	.space	4
	.word	103
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC178
	.word	destination_keys+4
	.space	4
	.word	105
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC179
	.word	destination_keys+8
	.space	4
	.word	98
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC180
	.word	destination_keys+12
	.space	4
	.word	114
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC181
	.word	key_weapontoggle
	.space	4
	.word	48
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC182
	.word	key_weapon1
	.space	4
	.word	49
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC183
	.word	key_weapon2
	.space	4
	.word	50
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC184
	.word	key_weapon3
	.space	4
	.word	51
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC185
	.word	key_weapon4
	.space	4
	.word	52
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC186
	.word	key_weapon5
	.space	4
	.word	53
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC187
	.word	key_weapon6
	.space	4
	.word	54
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC188
	.word	key_weapon7
	.space	4
	.word	55
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC189
	.word	key_weapon8
	.space	4
	.word	56
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC190
	.word	key_weapon9
	.space	4
	.word	57
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC191
	.word	key_screenshot
	.space	4
	.word	42
	.space	4
	.word	0
	.word	65536
	.byte	3
	.space	3
	.word	1
	.space	8
	.word	.LC192
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC193
	.word	0
	.word	chat_macros
	.word	0
	.word	.LC194
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC195
	.word	0
	.word	chat_macros+4
	.word	0
	.word	.LC196
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC197
	.word	0
	.word	chat_macros+8
	.word	0
	.word	.LC198
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC199
	.word	0
	.word	chat_macros+12
	.word	0
	.word	.LC200
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC201
	.word	0
	.word	chat_macros+16
	.word	0
	.word	.LC202
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC203
	.word	0
	.word	chat_macros+20
	.word	0
	.word	.LC204
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC205
	.word	0
	.word	chat_macros+24
	.word	0
	.word	.LC206
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC207
	.word	0
	.word	chat_macros+28
	.word	0
	.word	.LC208
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC209
	.word	0
	.word	chat_macros+32
	.word	0
	.word	.LC210
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC211
	.word	0
	.word	chat_macros+36
	.word	0
	.word	.LC212
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	7
	.space	8
	.word	.LC213
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC214
	.word	mapcolor_back
	.space	4
	.word	247
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC215
	.word	mapcolor_grid
	.space	4
	.word	104
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC216
	.word	mapcolor_wall
	.space	4
	.word	23
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC217
	.word	mapcolor_fchg
	.space	4
	.word	55
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC218
	.word	mapcolor_cchg
	.space	4
	.word	215
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC219
	.word	mapcolor_clsd
	.space	4
	.word	208
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC220
	.word	mapcolor_rkey
	.space	4
	.word	175
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC221
	.word	mapcolor_bkey
	.space	4
	.word	204
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC222
	.word	mapcolor_ykey
	.space	4
	.word	231
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC223
	.word	mapcolor_rdor
	.space	4
	.word	175
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC224
	.word	mapcolor_bdor
	.space	4
	.word	204
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC225
	.word	mapcolor_ydor
	.space	4
	.word	231
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC226
	.word	mapcolor_tele
	.space	4
	.word	119
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC227
	.word	mapcolor_secr
	.space	4
	.word	252
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC228
	.word	mapcolor_exit
	.space	4
	.word	0
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC229
	.word	mapcolor_unsn
	.space	4
	.word	104
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC230
	.word	mapcolor_flat
	.space	4
	.word	88
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC231
	.word	mapcolor_sprt
	.space	4
	.word	112
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC232
	.word	mapcolor_item
	.space	4
	.word	231
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC233
	.word	mapcolor_hair
	.space	4
	.word	208
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC234
	.word	mapcolor_sngl
	.space	4
	.word	208
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC235
	.word	mapcolor_me
	.space	4
	.word	112
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC236
	.word	mapcolor_enemy
	.space	4
	.word	177
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC237
	.word	mapcolor_frnd
	.space	4
	.word	112
	.space	4
	.word	0
	.word	255
	.byte	3
	.space	3
	.word	4
	.space	8
	.word	.LC238
	.word	map_secret_after
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	4
	.space	8
	.word	.LC239
	.word	map_point_coordinates
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	4
	.space	8
	.word	.LC240
	.word	automapmode
	.space	4
	.word	0
	.space	4
	.word	0
	.word	31
	.byte	3
	.space	3
	.word	0
	.space	8
	.word	.LC241
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC242
	.word	hudcolor_titl
	.space	4
	.word	5
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	4
	.space	8
	.word	.LC243
	.word	hudcolor_xyco
	.space	4
	.word	3
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	4
	.space	8
	.word	.LC244
	.word	hudcolor_mesg
	.space	4
	.word	6
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	6
	.space	8
	.word	.LC245
	.word	hudcolor_chat
	.space	4
	.word	5
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	6
	.space	8
	.word	.LC246
	.word	hudcolor_list
	.space	4
	.word	5
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	6
	.space	8
	.word	.LC247
	.word	hud_msg_lines
	.space	4
	.word	1
	.space	4
	.word	1
	.word	16
	.byte	2
	.space	3
	.word	6
	.space	8
	.word	.LC248
	.word	hud_list_bgon
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	6
	.space	8
	.word	.LC249
	.word	hud_distributed
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC250
	.word	health_red
	.space	4
	.word	25
	.space	4
	.word	0
	.word	200
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC251
	.word	health_yellow
	.space	4
	.word	50
	.space	4
	.word	0
	.word	200
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC252
	.word	health_green
	.space	4
	.word	100
	.space	4
	.word	0
	.word	200
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC253
	.word	armor_red
	.space	4
	.word	25
	.space	4
	.word	0
	.word	200
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC254
	.word	armor_yellow
	.space	4
	.word	50
	.space	4
	.word	0
	.word	200
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC255
	.word	armor_green
	.space	4
	.word	100
	.space	4
	.word	0
	.word	200
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC256
	.word	ammo_red
	.space	4
	.word	25
	.space	4
	.word	0
	.word	100
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC257
	.word	ammo_yellow
	.space	4
	.word	50
	.space	4
	.word	0
	.word	100
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC258
	.word	hud_active
	.space	4
	.word	2
	.space	4
	.word	0
	.word	2
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC259
	.word	hud_displayed
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	0
	.space	8
	.word	.LC260
	.word	hud_nosecrets
	.space	4
	.word	0
	.space	4
	.word	0
	.word	1
	.byte	2
	.space	3
	.word	3
	.space	8
	.word	.LC261
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC262
	.word	weapon_preferences
	.space	4
	.word	6
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC263
	.word	weapon_preferences+4
	.space	4
	.word	9
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC264
	.word	weapon_preferences+8
	.space	4
	.word	4
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC265
	.word	weapon_preferences+12
	.space	4
	.word	3
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC266
	.word	weapon_preferences+16
	.space	4
	.word	2
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC267
	.word	weapon_preferences+20
	.space	4
	.word	8
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC268
	.word	weapon_preferences+24
	.space	4
	.word	5
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC269
	.word	weapon_preferences+28
	.space	4
	.word	7
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC270
	.word	weapon_preferences+32
	.space	4
	.word	1
	.space	4
	.word	0
	.word	9
	.byte	2
	.space	3
	.word	2
	.space	8
	.word	.LC271
	.word	0
	.space	4
	.word	0
	.space	4
	.word	-123456789
	.word	-123456789
	.byte	0
	.space	3
	.word	0
	.space	8
	.word	.LC272
	.word	0
	.word	S_music_files+4
	.word	0
	.word	.LC273
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC274
	.word	0
	.word	S_music_files+8
	.word	0
	.word	.LC275
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC276
	.word	0
	.word	S_music_files+12
	.word	0
	.word	.LC277
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC278
	.word	0
	.word	S_music_files+16
	.word	0
	.word	.LC279
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC280
	.word	0
	.word	S_music_files+20
	.word	0
	.word	.LC281
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC282
	.word	0
	.word	S_music_files+24
	.word	0
	.word	.LC283
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC284
	.word	0
	.word	S_music_files+28
	.word	0
	.word	.LC285
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC286
	.word	0
	.word	S_music_files+32
	.word	0
	.word	.LC287
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC288
	.word	0
	.word	S_music_files+36
	.word	0
	.word	.LC289
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC290
	.word	0
	.word	S_music_files+40
	.word	0
	.word	.LC291
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC292
	.word	0
	.word	S_music_files+44
	.word	0
	.word	.LC293
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC294
	.word	0
	.word	S_music_files+48
	.word	0
	.word	.LC295
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC296
	.word	0
	.word	S_music_files+52
	.word	0
	.word	.LC297
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC298
	.word	0
	.word	S_music_files+56
	.word	0
	.word	.LC285
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC299
	.word	0
	.word	S_music_files+60
	.word	0
	.word	.LC300
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC301
	.word	0
	.word	S_music_files+64
	.word	0
	.word	.LC302
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC303
	.word	0
	.word	S_music_files+68
	.word	0
	.word	.LC304
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC305
	.word	0
	.word	S_music_files+72
	.word	0
	.word	.LC306
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC307
	.word	0
	.word	S_music_files+76
	.word	0
	.word	.LC306
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC308
	.word	0
	.word	S_music_files+80
	.word	0
	.word	.LC309
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC310
	.word	0
	.word	S_music_files+84
	.word	0
	.word	.LC311
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC312
	.word	0
	.word	S_music_files+88
	.word	0
	.word	.LC287
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC313
	.word	0
	.word	S_music_files+92
	.word	0
	.word	.LC285
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC314
	.word	0
	.word	S_music_files+96
	.word	0
	.word	.LC283
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC315
	.word	0
	.word	S_music_files+100
	.word	0
	.word	.LC302
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC316
	.word	0
	.word	S_music_files+104
	.word	0
	.word	.LC317
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC318
	.word	0
	.word	S_music_files+108
	.word	0
	.word	.LC289
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC319
	.word	0
	.word	S_music_files+112
	.word	0
	.word	.LC295
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC320
	.word	0
	.word	S_music_files+116
	.word	0
	.word	.LC321
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC322
	.word	0
	.word	S_music_files+120
	.word	0
	.word	.LC323
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC324
	.word	0
	.word	S_music_files+124
	.word	0
	.word	.LC325
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC326
	.word	0
	.word	S_music_files+128
	.word	0
	.word	.LC321
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC327
	.word	0
	.word	S_music_files+132
	.word	0
	.word	.LC328
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC329
	.word	0
	.word	S_music_files+136
	.word	0
	.word	.LC330
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC331
	.word	0
	.word	S_music_files+140
	.word	0
	.word	.LC332
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC333
	.word	0
	.word	S_music_files+144
	.word	0
	.word	.LC334
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC335
	.word	0
	.word	S_music_files+148
	.word	0
	.word	.LC336
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC337
	.word	0
	.word	S_music_files+152
	.word	0
	.word	.LC338
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC339
	.word	0
	.word	S_music_files+156
	.word	0
	.word	.LC340
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC341
	.word	0
	.word	S_music_files+160
	.word	0
	.word	.LC342
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC343
	.word	0
	.word	S_music_files+164
	.word	0
	.word	.LC344
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC345
	.word	0
	.word	S_music_files+168
	.word	0
	.word	.LC346
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC347
	.word	0
	.word	S_music_files+172
	.word	0
	.word	.LC330
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC348
	.word	0
	.word	S_music_files+176
	.word	0
	.word	.LC338
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC349
	.word	0
	.word	S_music_files+180
	.word	0
	.word	.LC336
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC350
	.word	0
	.word	S_music_files+184
	.word	0
	.word	.LC342
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC351
	.word	0
	.word	S_music_files+188
	.word	0
	.word	.LC328
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC352
	.word	0
	.word	S_music_files+192
	.word	0
	.word	.LC346
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC353
	.word	0
	.word	S_music_files+196
	.word	0
	.word	.LC330
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC354
	.word	0
	.word	S_music_files+200
	.word	0
	.word	.LC355
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC356
	.word	0
	.word	S_music_files+204
	.word	0
	.word	.LC340
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC357
	.word	0
	.word	S_music_files+208
	.word	0
	.word	.LC358
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC359
	.word	0
	.word	S_music_files+212
	.word	0
	.word	.LC332
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC360
	.word	0
	.word	S_music_files+216
	.word	0
	.word	.LC342
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC361
	.word	0
	.word	S_music_files+220
	.word	0
	.word	.LC362
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC363
	.word	0
	.word	S_music_files+224
	.word	0
	.word	.LC338
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC364
	.word	0
	.word	S_music_files+228
	.word	0
	.word	.LC365
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC366
	.word	0
	.word	S_music_files+232
	.word	0
	.word	.LC358
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC367
	.word	0
	.word	S_music_files+236
	.word	0
	.word	.LC355
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC368
	.word	0
	.word	S_music_files+240
	.word	0
	.word	.LC369
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC370
	.word	0
	.word	S_music_files+244
	.word	0
	.word	.LC340
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC371
	.word	0
	.word	S_music_files+248
	.word	0
	.word	.LC372
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC373
	.word	0
	.word	S_music_files+252
	.word	0
	.word	.LC374
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC375
	.word	0
	.word	S_music_files+256
	.word	0
	.word	.LC376
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC377
	.word	0
	.word	S_music_files+260
	.word	0
	.word	.LC378
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC379
	.word	0
	.word	S_music_files+264
	.word	0
	.word	.LC380
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.word	.LC381
	.word	0
	.word	S_music_files+268
	.word	0
	.word	.LC382
	.word	-123456789
	.word	-123456789
	.byte	1
	.space	3
	.word	0
	.space	8
	.type	precache, %object
	.size	precache, 4
precache:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"wb\000"
	.space	1
.LC1:
	.ascii	"rb\000"
	.space	1
.LC2:
	.ascii	"w\000"
	.space	2
.LC3:
	.ascii	"# Doom config file\012\000"
.LC4:
	.ascii	"# Format:\012\000"
	.space	1
.LC5:
	.ascii	"# variable   value\012\000"
.LC6:
	.ascii	"\012# %s\012\000"
	.space	1
.LC7:
	.ascii	"%-25s 0x%x\012\000"
.LC8:
	.ascii	"%-25s %5i\012\000"
	.space	1
.LC9:
	.ascii	"%-25s \"%s\"\012\000"
.LC10:
	.ascii	"M_LookupDefault: %s not found\000"
	.space	2
.LC11:
	.ascii	"-config\000"
.LC12:
	.ascii	"%s/prboom.cfg\000"
	.space	2
.LC13:
	.ascii	" default file: %s\012\000"
	.space	1
.LC14:
	.ascii	"r\000"
	.space	2
.LC15:
	.ascii	"%79s %[^\012]\012\000"
.LC16:
	.ascii	"%x\000"
	.space	1
.LC17:
	.ascii	"%i\000"
	.space	1
.LC18:
	.ascii	"M_LoadDefaults: Type mismatch reading %s\012\000"
	.space	2
.LC19:
	.ascii	"M_ScreenShot: Error writing screenshot\012\000"
.LC20:
	.ascii	".\000"
	.space	2
.LC21:
	.ascii	"%s/doom%02d.bmp\000"
.LC22:
	.ascii	"M_ScreenShot: Couldn't create screenshot\000"
	.space	3
.LC23:
	.ascii	"Misc settings\000"
	.space	2
.LC24:
	.ascii	"default_compatibility_level\000"
.LC25:
	.ascii	"realtic_clock_rate\000"
	.space	1
.LC26:
	.ascii	"menu_background\000"
.LC27:
	.ascii	"max_player_corpse\000"
	.space	2
.LC28:
	.ascii	"flashing_hom\000"
	.space	3
.LC29:
	.ascii	"demo_insurance\000"
	.space	1
.LC30:
	.ascii	"level_precache\000"
	.space	1
.LC31:
	.ascii	"demo_smoothturns\000"
	.space	3
.LC32:
	.ascii	"demo_smoothturnsfactor\000"
	.space	1
.LC33:
	.ascii	"Files\000"
	.space	2
.LC34:
	.ascii	"wadfile_1\000"
	.space	2
.LC35:
	.ascii	"\000"
	.space	3
.LC36:
	.ascii	"wadfile_2\000"
	.space	2
.LC37:
	.ascii	"dehfile_1\000"
	.space	2
.LC38:
	.ascii	"dehfile_2\000"
	.space	2
.LC39:
	.ascii	"Game settings\000"
	.space	2
.LC40:
	.ascii	"default_skill\000"
	.space	2
.LC41:
	.ascii	"weapon_recoil\000"
	.space	2
.LC42:
	.ascii	"doom_weapon_toggles\000"
.LC43:
	.ascii	"player_bobbing\000"
	.space	1
.LC44:
	.ascii	"monsters_remember\000"
	.space	2
.LC45:
	.ascii	"monster_infighting\000"
	.space	1
.LC46:
	.ascii	"monster_backing\000"
.LC47:
	.ascii	"monster_avoid_hazards\000"
	.space	2
.LC48:
	.ascii	"monkeys\000"
.LC49:
	.ascii	"monster_friction\000"
	.space	3
.LC50:
	.ascii	"help_friends\000"
	.space	3
.LC51:
	.ascii	"allow_pushers\000"
	.space	2
.LC52:
	.ascii	"variable_friction\000"
	.space	2
.LC53:
	.ascii	"player_helpers\000"
	.space	1
.LC54:
	.ascii	"friend_distance\000"
.LC55:
	.ascii	"dog_jumping\000"
.LC56:
	.ascii	"sts_always_red\000"
	.space	1
.LC57:
	.ascii	"sts_pct_always_gray\000"
.LC58:
	.ascii	"sts_traditional_keys\000"
	.space	3
.LC59:
	.ascii	"show_messages\000"
	.space	2
.LC60:
	.ascii	"autorun\000"
.LC61:
	.ascii	"Compatibility settings\000"
	.space	1
.LC62:
	.ascii	"comp_zombie\000"
.LC63:
	.ascii	"comp_infcheat\000"
	.space	2
.LC64:
	.ascii	"comp_stairs\000"
.LC65:
	.ascii	"comp_telefrag\000"
	.space	2
.LC66:
	.ascii	"comp_dropoff\000"
	.space	3
.LC67:
	.ascii	"comp_falloff\000"
	.space	3
.LC68:
	.ascii	"comp_staylift\000"
	.space	2
.LC69:
	.ascii	"comp_doorstuck\000"
	.space	1
.LC70:
	.ascii	"comp_pursuit\000"
	.space	3
.LC71:
	.ascii	"comp_vile\000"
	.space	2
.LC72:
	.ascii	"comp_pain\000"
	.space	2
.LC73:
	.ascii	"comp_skull\000"
	.space	1
.LC74:
	.ascii	"comp_blazing\000"
	.space	3
.LC75:
	.ascii	"comp_doorlight\000"
	.space	1
.LC76:
	.ascii	"comp_god\000"
	.space	3
.LC77:
	.ascii	"comp_skymap\000"
.LC78:
	.ascii	"comp_floors\000"
.LC79:
	.ascii	"comp_model\000"
	.space	1
.LC80:
	.ascii	"comp_zerotags\000"
	.space	2
.LC81:
	.ascii	"comp_moveblock\000"
	.space	1
.LC82:
	.ascii	"comp_sound\000"
	.space	1
.LC83:
	.ascii	"comp_666\000"
	.space	3
.LC84:
	.ascii	"comp_soul\000"
	.space	2
.LC85:
	.ascii	"comp_maskedanim\000"
.LC86:
	.ascii	"Sound settings\000"
	.space	1
.LC87:
	.ascii	"sound_card\000"
	.space	1
.LC88:
	.ascii	"music_card\000"
	.space	1
.LC89:
	.ascii	"pitched_sounds\000"
	.space	1
.LC90:
	.ascii	"samplerate\000"
	.space	1
.LC91:
	.ascii	"sfx_volume\000"
	.space	1
.LC92:
	.ascii	"music_volume\000"
	.space	3
.LC93:
	.ascii	"mus_pause_opt\000"
	.space	2
.LC94:
	.ascii	"snd_channels\000"
	.space	3
.LC95:
	.ascii	"Video settings\000"
	.space	1
.LC96:
	.ascii	"videomode\000"
	.space	2
.LC97:
	.ascii	"8\000"
	.space	2
.LC98:
	.ascii	"screen_width\000"
	.space	3
.LC99:
	.ascii	"screen_height\000"
	.space	2
.LC100:
	.ascii	"use_fullscreen\000"
	.space	1
.LC101:
	.ascii	"use_doublebuffer\000"
	.space	3
.LC102:
	.ascii	"translucency\000"
	.space	3
.LC103:
	.ascii	"tran_filter_pct\000"
.LC104:
	.ascii	"screenblocks\000"
	.space	3
.LC105:
	.ascii	"usegamma\000"
	.space	3
.LC106:
	.ascii	"uncapped_framerate\000"
	.space	1
.LC107:
	.ascii	"filter_wall\000"
.LC108:
	.ascii	"filter_floor\000"
	.space	3
.LC109:
	.ascii	"filter_sprite\000"
	.space	2
.LC110:
	.ascii	"filter_z\000"
	.space	3
.LC111:
	.ascii	"filter_patch\000"
	.space	3
.LC112:
	.ascii	"filter_threshold\000"
	.space	3
.LC113:
	.ascii	"sprite_edges\000"
	.space	3
.LC114:
	.ascii	"patch_edges\000"
.LC115:
	.ascii	"Mouse settings\000"
	.space	1
.LC116:
	.ascii	"use_mouse\000"
	.space	2
.LC117:
	.ascii	"mouse_sensitivity_horiz\000"
.LC118:
	.ascii	"mouse_sensitivity_vert\000"
	.space	1
.LC119:
	.ascii	"mouseb_fire\000"
.LC120:
	.ascii	"mouseb_strafe\000"
	.space	2
.LC121:
	.ascii	"mouseb_forward\000"
	.space	1
.LC122:
	.ascii	"mouseb_backward\000"
.LC123:
	.ascii	"mouseb_use\000"
	.space	1
.LC124:
	.ascii	"mouse_double_click_use\000"
	.space	1
.LC125:
	.ascii	"Key bindings\000"
	.space	3
.LC126:
	.ascii	"key_right\000"
	.space	2
.LC127:
	.ascii	"key_left\000"
	.space	3
.LC128:
	.ascii	"key_up\000"
	.space	1
.LC129:
	.ascii	"key_down\000"
	.space	3
.LC130:
	.ascii	"key_menu_right\000"
	.space	1
.LC131:
	.ascii	"key_menu_left\000"
	.space	2
.LC132:
	.ascii	"key_menu_up\000"
.LC133:
	.ascii	"key_menu_down\000"
	.space	2
.LC134:
	.ascii	"key_menu_backspace\000"
	.space	1
.LC135:
	.ascii	"key_menu_escape\000"
.LC136:
	.ascii	"key_menu_enter\000"
	.space	1
.LC137:
	.ascii	"key_setup\000"
	.space	2
.LC138:
	.ascii	"key_strafeleft\000"
	.space	1
.LC139:
	.ascii	"key_straferight\000"
.LC140:
	.ascii	"key_fire\000"
	.space	3
.LC141:
	.ascii	"key_use\000"
.LC142:
	.ascii	"key_strafe\000"
	.space	1
.LC143:
	.ascii	"key_speed\000"
	.space	2
.LC144:
	.ascii	"key_savegame\000"
	.space	3
.LC145:
	.ascii	"key_loadgame\000"
	.space	3
.LC146:
	.ascii	"key_soundvolume\000"
.LC147:
	.ascii	"key_hud\000"
.LC148:
	.ascii	"key_quicksave\000"
	.space	2
.LC149:
	.ascii	"key_endgame\000"
.LC150:
	.ascii	"key_messages\000"
	.space	3
.LC151:
	.ascii	"key_quickload\000"
	.space	2
.LC152:
	.ascii	"key_quit\000"
	.space	3
.LC153:
	.ascii	"key_gamma\000"
	.space	2
.LC154:
	.ascii	"key_spy\000"
.LC155:
	.ascii	"key_pause\000"
	.space	2
.LC156:
	.ascii	"key_autorun\000"
.LC157:
	.ascii	"key_chat\000"
	.space	3
.LC158:
	.ascii	"key_backspace\000"
	.space	2
.LC159:
	.ascii	"key_enter\000"
	.space	2
.LC160:
	.ascii	"key_map\000"
.LC161:
	.ascii	"key_map_right\000"
	.space	2
.LC162:
	.ascii	"key_map_left\000"
	.space	3
.LC163:
	.ascii	"key_map_up\000"
	.space	1
.LC164:
	.ascii	"key_map_down\000"
	.space	3
.LC165:
	.ascii	"key_map_zoomin\000"
	.space	1
.LC166:
	.ascii	"key_map_zoomout\000"
.LC167:
	.ascii	"key_map_gobig\000"
	.space	2
.LC168:
	.ascii	"key_map_follow\000"
	.space	1
.LC169:
	.ascii	"key_map_mark\000"
	.space	3
.LC170:
	.ascii	"key_map_clear\000"
	.space	2
.LC171:
	.ascii	"key_map_grid\000"
	.space	3
.LC172:
	.ascii	"key_map_rotate\000"
	.space	1
.LC173:
	.ascii	"key_map_overlay\000"
.LC174:
	.ascii	"key_reverse\000"
.LC175:
	.ascii	"key_zoomin\000"
	.space	1
.LC176:
	.ascii	"key_zoomout\000"
.LC177:
	.ascii	"key_chatplayer1\000"
.LC178:
	.ascii	"key_chatplayer2\000"
.LC179:
	.ascii	"key_chatplayer3\000"
.LC180:
	.ascii	"key_chatplayer4\000"
.LC181:
	.ascii	"key_weapontoggle\000"
	.space	3
.LC182:
	.ascii	"key_weapon1\000"
.LC183:
	.ascii	"key_weapon2\000"
.LC184:
	.ascii	"key_weapon3\000"
.LC185:
	.ascii	"key_weapon4\000"
.LC186:
	.ascii	"key_weapon5\000"
.LC187:
	.ascii	"key_weapon6\000"
.LC188:
	.ascii	"key_weapon7\000"
.LC189:
	.ascii	"key_weapon8\000"
.LC190:
	.ascii	"key_weapon9\000"
.LC191:
	.ascii	"key_screenshot\000"
	.space	1
.LC192:
	.ascii	"Chat macros\000"
.LC193:
	.ascii	"chatmacro0\000"
	.space	1
.LC194:
	.ascii	"No\000"
	.space	1
.LC195:
	.ascii	"chatmacro1\000"
	.space	1
.LC196:
	.ascii	"I'm ready to kick butt!\000"
.LC197:
	.ascii	"chatmacro2\000"
	.space	1
.LC198:
	.ascii	"I'm OK.\000"
.LC199:
	.ascii	"chatmacro3\000"
	.space	1
.LC200:
	.ascii	"I'm not looking too good!\000"
	.space	2
.LC201:
	.ascii	"chatmacro4\000"
	.space	1
.LC202:
	.ascii	"Help!\000"
	.space	2
.LC203:
	.ascii	"chatmacro5\000"
	.space	1
.LC204:
	.ascii	"You suck!\000"
	.space	2
.LC205:
	.ascii	"chatmacro6\000"
	.space	1
.LC206:
	.ascii	"Next time, scumbag...\000"
	.space	2
.LC207:
	.ascii	"chatmacro7\000"
	.space	1
.LC208:
	.ascii	"Come here!\000"
	.space	1
.LC209:
	.ascii	"chatmacro8\000"
	.space	1
.LC210:
	.ascii	"I'll take care of it.\000"
	.space	2
.LC211:
	.ascii	"chatmacro9\000"
	.space	1
.LC212:
	.ascii	"Yes\000"
.LC213:
	.ascii	"Automap settings\000"
	.space	3
.LC214:
	.ascii	"mapcolor_back\000"
	.space	2
.LC215:
	.ascii	"mapcolor_grid\000"
	.space	2
.LC216:
	.ascii	"mapcolor_wall\000"
	.space	2
.LC217:
	.ascii	"mapcolor_fchg\000"
	.space	2
.LC218:
	.ascii	"mapcolor_cchg\000"
	.space	2
.LC219:
	.ascii	"mapcolor_clsd\000"
	.space	2
.LC220:
	.ascii	"mapcolor_rkey\000"
	.space	2
.LC221:
	.ascii	"mapcolor_bkey\000"
	.space	2
.LC222:
	.ascii	"mapcolor_ykey\000"
	.space	2
.LC223:
	.ascii	"mapcolor_rdor\000"
	.space	2
.LC224:
	.ascii	"mapcolor_bdor\000"
	.space	2
.LC225:
	.ascii	"mapcolor_ydor\000"
	.space	2
.LC226:
	.ascii	"mapcolor_tele\000"
	.space	2
.LC227:
	.ascii	"mapcolor_secr\000"
	.space	2
.LC228:
	.ascii	"mapcolor_exit\000"
	.space	2
.LC229:
	.ascii	"mapcolor_unsn\000"
	.space	2
.LC230:
	.ascii	"mapcolor_flat\000"
	.space	2
.LC231:
	.ascii	"mapcolor_sprt\000"
	.space	2
.LC232:
	.ascii	"mapcolor_item\000"
	.space	2
.LC233:
	.ascii	"mapcolor_hair\000"
	.space	2
.LC234:
	.ascii	"mapcolor_sngl\000"
	.space	2
.LC235:
	.ascii	"mapcolor_me\000"
.LC236:
	.ascii	"mapcolor_enemy\000"
	.space	1
.LC237:
	.ascii	"mapcolor_frnd\000"
	.space	2
.LC238:
	.ascii	"map_secret_after\000"
	.space	3
.LC239:
	.ascii	"map_point_coord\000"
.LC240:
	.ascii	"automapmode\000"
.LC241:
	.ascii	"Heads-up display settings\000"
	.space	2
.LC242:
	.ascii	"hudcolor_titl\000"
	.space	2
.LC243:
	.ascii	"hudcolor_xyco\000"
	.space	2
.LC244:
	.ascii	"hudcolor_mesg\000"
	.space	2
.LC245:
	.ascii	"hudcolor_chat\000"
	.space	2
.LC246:
	.ascii	"hudcolor_list\000"
	.space	2
.LC247:
	.ascii	"hud_msg_lines\000"
	.space	2
.LC248:
	.ascii	"hud_list_bgon\000"
	.space	2
.LC249:
	.ascii	"hud_distributed\000"
.LC250:
	.ascii	"health_red\000"
	.space	1
.LC251:
	.ascii	"health_yellow\000"
	.space	2
.LC252:
	.ascii	"health_green\000"
	.space	3
.LC253:
	.ascii	"armor_red\000"
	.space	2
.LC254:
	.ascii	"armor_yellow\000"
	.space	3
.LC255:
	.ascii	"armor_green\000"
.LC256:
	.ascii	"ammo_red\000"
	.space	3
.LC257:
	.ascii	"ammo_yellow\000"
.LC258:
	.ascii	"hud_active\000"
	.space	1
.LC259:
	.ascii	"hud_displayed\000"
	.space	2
.LC260:
	.ascii	"hud_nosecrets\000"
	.space	2
.LC261:
	.ascii	"Weapon preferences\000"
	.space	1
.LC262:
	.ascii	"weapon_choice_1\000"
.LC263:
	.ascii	"weapon_choice_2\000"
.LC264:
	.ascii	"weapon_choice_3\000"
.LC265:
	.ascii	"weapon_choice_4\000"
.LC266:
	.ascii	"weapon_choice_5\000"
.LC267:
	.ascii	"weapon_choice_6\000"
.LC268:
	.ascii	"weapon_choice_7\000"
.LC269:
	.ascii	"weapon_choice_8\000"
.LC270:
	.ascii	"weapon_choice_9\000"
.LC271:
	.ascii	"Music\000"
	.space	2
.LC272:
	.ascii	"mus_e1m1\000"
	.space	3
.LC273:
	.ascii	"e1m1.mp3\000"
	.space	3
.LC274:
	.ascii	"mus_e1m2\000"
	.space	3
.LC275:
	.ascii	"e1m2.mp3\000"
	.space	3
.LC276:
	.ascii	"mus_e1m3\000"
	.space	3
.LC277:
	.ascii	"e1m3.mp3\000"
	.space	3
.LC278:
	.ascii	"mus_e1m4\000"
	.space	3
.LC279:
	.ascii	"e1m4.mp3\000"
	.space	3
.LC280:
	.ascii	"mus_e1m5\000"
	.space	3
.LC281:
	.ascii	"e1m5.mp3\000"
	.space	3
.LC282:
	.ascii	"mus_e1m6\000"
	.space	3
.LC283:
	.ascii	"e1m6.mp3\000"
	.space	3
.LC284:
	.ascii	"mus_e1m7\000"
	.space	3
.LC285:
	.ascii	"e1m7.mp3\000"
	.space	3
.LC286:
	.ascii	"mus_e1m8\000"
	.space	3
.LC287:
	.ascii	"e1m8.mp3\000"
	.space	3
.LC288:
	.ascii	"mus_e1m9\000"
	.space	3
.LC289:
	.ascii	"e1m9.mp3\000"
	.space	3
.LC290:
	.ascii	"mus_e2m1\000"
	.space	3
.LC291:
	.ascii	"e2m1.mp3\000"
	.space	3
.LC292:
	.ascii	"mus_e2m2\000"
	.space	3
.LC293:
	.ascii	"e2m2.mp3\000"
	.space	3
.LC294:
	.ascii	"mus_e2m3\000"
	.space	3
.LC295:
	.ascii	"e2m3.mp3\000"
	.space	3
.LC296:
	.ascii	"mus_e2m4\000"
	.space	3
.LC297:
	.ascii	"e2m4.mp3\000"
	.space	3
.LC298:
	.ascii	"mus_e2m5\000"
	.space	3
.LC299:
	.ascii	"mus_e2m6\000"
	.space	3
.LC300:
	.ascii	"e2m6.mp3\000"
	.space	3
.LC301:
	.ascii	"mus_e2m7\000"
	.space	3
.LC302:
	.ascii	"e2m7.mp3\000"
	.space	3
.LC303:
	.ascii	"mus_e2m8\000"
	.space	3
.LC304:
	.ascii	"e2m8.mp3\000"
	.space	3
.LC305:
	.ascii	"mus_e2m9\000"
	.space	3
.LC306:
	.ascii	"e3m1.mp3\000"
	.space	3
.LC307:
	.ascii	"mus_e3m1\000"
	.space	3
.LC308:
	.ascii	"mus_e3m2\000"
	.space	3
.LC309:
	.ascii	"e3m2.mp3\000"
	.space	3
.LC310:
	.ascii	"mus_e3m3\000"
	.space	3
.LC311:
	.ascii	"e3m3.mp3\000"
	.space	3
.LC312:
	.ascii	"mus_e3m4\000"
	.space	3
.LC313:
	.ascii	"mus_e3m5\000"
	.space	3
.LC314:
	.ascii	"mus_e3m6\000"
	.space	3
.LC315:
	.ascii	"mus_e3m7\000"
	.space	3
.LC316:
	.ascii	"mus_e3m8\000"
	.space	3
.LC317:
	.ascii	"e3m8.mp3\000"
	.space	3
.LC318:
	.ascii	"mus_e3m9\000"
	.space	3
.LC319:
	.ascii	"mus_inter\000"
	.space	2
.LC320:
	.ascii	"mus_intro\000"
	.space	2
.LC321:
	.ascii	"intro.mp3\000"
	.space	2
.LC322:
	.ascii	"mus_bunny\000"
	.space	2
.LC323:
	.ascii	"bunny.mp3\000"
	.space	2
.LC324:
	.ascii	"mus_victor\000"
	.space	1
.LC325:
	.ascii	"victor.mp3\000"
	.space	1
.LC326:
	.ascii	"mus_introa\000"
	.space	1
.LC327:
	.ascii	"mus_runnin\000"
	.space	1
.LC328:
	.ascii	"runnin.mp3\000"
	.space	1
.LC329:
	.ascii	"mus_stalks\000"
	.space	1
.LC330:
	.ascii	"stalks.mp3\000"
	.space	1
.LC331:
	.ascii	"mus_countd\000"
	.space	1
.LC332:
	.ascii	"countd.mp3\000"
	.space	1
.LC333:
	.ascii	"mus_betwee\000"
	.space	1
.LC334:
	.ascii	"betwee.mp3\000"
	.space	1
.LC335:
	.ascii	"mus_doom\000"
	.space	3
.LC336:
	.ascii	"doom.mp3\000"
	.space	3
.LC337:
	.ascii	"mus_the_da\000"
	.space	1
.LC338:
	.ascii	"the_da.mp3\000"
	.space	1
.LC339:
	.ascii	"mus_shawn\000"
	.space	2
.LC340:
	.ascii	"shawn.mp3\000"
	.space	2
.LC341:
	.ascii	"mus_ddtblu\000"
	.space	1
.LC342:
	.ascii	"ddtblu.mp3\000"
	.space	1
.LC343:
	.ascii	"mus_in_cit\000"
	.space	1
.LC344:
	.ascii	"in_cit.mp3\000"
	.space	1
.LC345:
	.ascii	"mus_dead\000"
	.space	3
.LC346:
	.ascii	"dead.mp3\000"
	.space	3
.LC347:
	.ascii	"mus_stlks2\000"
	.space	1
.LC348:
	.ascii	"mus_theda2\000"
	.space	1
.LC349:
	.ascii	"mus_doom2\000"
	.space	2
.LC350:
	.ascii	"mus_ddtbl2\000"
	.space	1
.LC351:
	.ascii	"mus_runni2\000"
	.space	1
.LC352:
	.ascii	"mus_dead2\000"
	.space	2
.LC353:
	.ascii	"mus_stlks3\000"
	.space	1
.LC354:
	.ascii	"mus_romero\000"
	.space	1
.LC355:
	.ascii	"romero.mp3\000"
	.space	1
.LC356:
	.ascii	"mus_shawn2\000"
	.space	1
.LC357:
	.ascii	"mus_messag\000"
	.space	1
.LC358:
	.ascii	"messag.mp3\000"
	.space	1
.LC359:
	.ascii	"mus_count2\000"
	.space	1
.LC360:
	.ascii	"mus_ddtbl3\000"
	.space	1
.LC361:
	.ascii	"mus_ampie\000"
	.space	2
.LC362:
	.ascii	"ampie.mp3\000"
	.space	2
.LC363:
	.ascii	"mus_theda3\000"
	.space	1
.LC364:
	.ascii	"mus_adrian\000"
	.space	1
.LC365:
	.ascii	"adrian.mp3\000"
	.space	1
.LC366:
	.ascii	"mus_messg2\000"
	.space	1
.LC367:
	.ascii	"mus_romer2\000"
	.space	1
.LC368:
	.ascii	"mus_tense\000"
	.space	2
.LC369:
	.ascii	"tense.mp3\000"
	.space	2
.LC370:
	.ascii	"mus_shawn3\000"
	.space	1
.LC371:
	.ascii	"mus_openin\000"
	.space	1
.LC372:
	.ascii	"openin.mp3\000"
	.space	1
.LC373:
	.ascii	"mus_evil\000"
	.space	3
.LC374:
	.ascii	"evil.mp3\000"
	.space	3
.LC375:
	.ascii	"mus_ultima\000"
	.space	1
.LC376:
	.ascii	"ultima.mp3\000"
	.space	1
.LC377:
	.ascii	"mus_read_m\000"
	.space	1
.LC378:
	.ascii	"read_m.mp3\000"
	.space	1
.LC379:
	.ascii	"mus_dm2ttl\000"
	.space	1
.LC380:
	.ascii	"dm2ttl.mp3\000"
	.space	1
.LC381:
	.ascii	"mus_dm2int\000"
	.space	1
.LC382:
	.ascii	"dm2int.mp3\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	defaultfile, %object
	.size	defaultfile, 4
defaultfile:
	.space	4
	.type	shot.9417, %object
	.size	shot.9417, 4
shot.9417:
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
	.file 10 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 11 "c:/devl/prboom3ds/src/info.h"
	.file 12 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 13 "c:/devl/prboom3ds/src/doomstat.h"
	.file 14 "c:/devl/prboom3ds/src/m_menu.h"
	.file 15 "c:/devl/prboom3ds/src/m_misc.h"
	.file 16 "c:/devl/prboom3ds/src/sounds.h"
	.file 17 "c:/devl/prboom3ds/src/lprintf.h"
	.file 18 "c:/devl/prboom3ds/src/r_draw.h"
	.file 19 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\ctype.h"
	.file 20 "c:/devl/prboom3ds/src/tables.h"
	.file 21 "c:/devl/prboom3ds/src/m_argv.h"
	.file 22 "c:/devl/prboom3ds/src/g_game.h"
	.file 23 "c:/devl/prboom3ds/src/am_map.h"
	.file 24 "c:/devl/prboom3ds/src/i_sound.h"
	.file 25 "c:/devl/prboom3ds/src/v_video.h"
	.file 26 "c:/devl/prboom3ds/src/i_video.h"
	.file 27 "c:/devl/prboom3ds/src/hu_stuff.h"
	.file 28 "c:/devl/prboom3ds/src/st_stuff.h"
	.file 29 "c:/devl/prboom3ds/src/s_sound.h"
	.file 30 "c:/devl/prboom3ds/src/d_main.h"
	.file 31 "c:/devl/prboom3ds/src/r_demo.h"
	.file 32 "c:/devl/prboom3ds/src/r_fps.h"
	.file 33 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 34 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\errno.h"
	.file 35 "c:/devl/prboom3ds/src/i_system.h"
	.file 36 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4863
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1926
	.byte	0x1
	.4byte	.LASF1927
	.4byte	.LASF1928
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
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
	.byte	0x3
	.byte	0x7
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x10
	.4byte	0x5c
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x27
	.4byte	0x5c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x161
	.4byte	0x30
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
	.byte	0x4
	.byte	0x47
	.4byte	0xfc
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0x49
	.4byte	0x39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4e
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4f
	.4byte	0xdb
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x53
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.4byte	0x63
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
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x30
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x30
	.4byte	0x39
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0x39
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
	.4byte	0x39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x39
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3a
	.4byte	0x39
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3b
	.4byte	0x39
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3c
	.4byte	0x39
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3d
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3e
	.4byte	0x39
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3f
	.4byte	0x39
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
	.4byte	0x37
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
	.4byte	0x39
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
	.4byte	0x39
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x47
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
	.4byte	0x39
	.byte	0x4
	.uleb128 0xe
	.ascii	"_w\000"
	.byte	0x5
	.byte	0xb6
	.4byte	0x39
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0xb7
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb8
	.4byte	0x4e
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
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc1
	.4byte	0x37
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
	.4byte	0x39
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
	.4byte	0x39
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
	.byte	0x5
	.2byte	0x239
	.4byte	0x555
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x23b
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.4byte	0x39
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
	.byte	0x5
	.2byte	0x258
	.4byte	0x788
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x25a
	.4byte	0x30
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
	.4byte	0x39
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x25f
	.4byte	0x71
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
	.4byte	0x39
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
	.4byte	0x30
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
	.byte	0x8
	.byte	0x49
	.4byte	0x8bd
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xbc
	.4byte	0x922
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
	.uleb128 0x20
	.4byte	.LASF138
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF139
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF140
	.sleb128 6
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xc8
	.4byte	0x96d
	.uleb128 0x20
	.4byte	.LASF141
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF142
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF143
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF144
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF145
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF146
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF147
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF148
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF149
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF150
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF151
	.sleb128 10
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xd8
	.4byte	0x99a
	.uleb128 0x20
	.4byte	.LASF152
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF153
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF154
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF155
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF156
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF157
	.sleb128 5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.byte	0xe2
	.4byte	0x9cd
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
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x8
	.2byte	0x13c
	.4byte	0xa19
	.uleb128 0x20
	.4byte	.LASF165
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF166
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF167
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF168
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF169
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF170
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF171
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF172
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF173
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF174
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF175
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF176
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x9
	.byte	0x42
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0x9
	.byte	0x4c
	.4byte	0x47
	.uleb128 0x1f
	.byte	0x1
	.byte	0x9
	.byte	0x77
	.4byte	0xabd
	.uleb128 0x20
	.4byte	.LASF179
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF180
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF181
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF182
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF183
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF184
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF185
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF186
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF187
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF188
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF189
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF190
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF191
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF192
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF193
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF194
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF195
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF196
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF197
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF198
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF199
	.sleb128 17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x9
	.byte	0x8e
	.4byte	0xa36
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0xa
	.byte	0x2f
	.4byte	0x39
	.uleb128 0x1f
	.byte	0x2
	.byte	0xb
	.byte	0xc8
	.4byte	0x26f7
	.uleb128 0x20
	.4byte	.LASF202
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF203
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF204
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF205
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF206
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF207
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF208
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF209
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF210
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF211
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF212
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF213
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF214
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF215
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF216
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF217
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF218
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF219
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF220
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF221
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF222
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF223
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF224
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF225
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF226
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF227
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF228
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF229
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF230
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF231
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF232
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF233
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF234
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF235
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF236
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF237
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF238
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF239
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF240
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF241
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF242
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF243
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF244
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF245
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF246
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF247
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF248
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF249
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF250
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF251
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF252
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF253
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF254
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF255
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF256
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF257
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF258
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF259
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF260
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF261
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF262
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF263
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF264
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF265
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF266
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF267
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF268
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF269
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF270
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF271
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF272
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF273
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF274
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF275
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF276
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF277
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF278
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF279
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF280
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF281
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF282
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF283
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF284
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF285
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF286
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF287
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF288
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF289
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF290
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF291
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF292
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF293
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF294
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF295
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF296
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF297
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF298
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF299
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF300
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF301
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF302
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF303
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF304
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF305
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF306
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF307
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF308
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF309
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF310
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF311
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF312
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF313
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF314
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF315
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF316
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF317
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF318
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF319
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF320
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF321
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF322
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF323
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF324
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF325
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF326
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF327
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF328
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF329
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF330
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF331
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF332
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF333
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF334
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF335
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF336
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF337
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF338
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF339
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF340
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF341
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF342
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF343
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF344
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF345
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF346
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF347
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF348
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF349
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF350
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF351
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF352
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF353
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF354
	.sleb128 152
	.uleb128 0x20
	.4byte	.LASF355
	.sleb128 153
	.uleb128 0x20
	.4byte	.LASF356
	.sleb128 154
	.uleb128 0x20
	.4byte	.LASF357
	.sleb128 155
	.uleb128 0x20
	.4byte	.LASF358
	.sleb128 156
	.uleb128 0x20
	.4byte	.LASF359
	.sleb128 157
	.uleb128 0x20
	.4byte	.LASF360
	.sleb128 158
	.uleb128 0x20
	.4byte	.LASF361
	.sleb128 159
	.uleb128 0x20
	.4byte	.LASF362
	.sleb128 160
	.uleb128 0x20
	.4byte	.LASF363
	.sleb128 161
	.uleb128 0x20
	.4byte	.LASF364
	.sleb128 162
	.uleb128 0x20
	.4byte	.LASF365
	.sleb128 163
	.uleb128 0x20
	.4byte	.LASF366
	.sleb128 164
	.uleb128 0x20
	.4byte	.LASF367
	.sleb128 165
	.uleb128 0x20
	.4byte	.LASF368
	.sleb128 166
	.uleb128 0x20
	.4byte	.LASF369
	.sleb128 167
	.uleb128 0x20
	.4byte	.LASF370
	.sleb128 168
	.uleb128 0x20
	.4byte	.LASF371
	.sleb128 169
	.uleb128 0x20
	.4byte	.LASF372
	.sleb128 170
	.uleb128 0x20
	.4byte	.LASF373
	.sleb128 171
	.uleb128 0x20
	.4byte	.LASF374
	.sleb128 172
	.uleb128 0x20
	.4byte	.LASF375
	.sleb128 173
	.uleb128 0x20
	.4byte	.LASF376
	.sleb128 174
	.uleb128 0x20
	.4byte	.LASF377
	.sleb128 175
	.uleb128 0x20
	.4byte	.LASF378
	.sleb128 176
	.uleb128 0x20
	.4byte	.LASF379
	.sleb128 177
	.uleb128 0x20
	.4byte	.LASF380
	.sleb128 178
	.uleb128 0x20
	.4byte	.LASF381
	.sleb128 179
	.uleb128 0x20
	.4byte	.LASF382
	.sleb128 180
	.uleb128 0x20
	.4byte	.LASF383
	.sleb128 181
	.uleb128 0x20
	.4byte	.LASF384
	.sleb128 182
	.uleb128 0x20
	.4byte	.LASF385
	.sleb128 183
	.uleb128 0x20
	.4byte	.LASF386
	.sleb128 184
	.uleb128 0x20
	.4byte	.LASF387
	.sleb128 185
	.uleb128 0x20
	.4byte	.LASF388
	.sleb128 186
	.uleb128 0x20
	.4byte	.LASF389
	.sleb128 187
	.uleb128 0x20
	.4byte	.LASF390
	.sleb128 188
	.uleb128 0x20
	.4byte	.LASF391
	.sleb128 189
	.uleb128 0x20
	.4byte	.LASF392
	.sleb128 190
	.uleb128 0x20
	.4byte	.LASF393
	.sleb128 191
	.uleb128 0x20
	.4byte	.LASF394
	.sleb128 192
	.uleb128 0x20
	.4byte	.LASF395
	.sleb128 193
	.uleb128 0x20
	.4byte	.LASF396
	.sleb128 194
	.uleb128 0x20
	.4byte	.LASF397
	.sleb128 195
	.uleb128 0x20
	.4byte	.LASF398
	.sleb128 196
	.uleb128 0x20
	.4byte	.LASF399
	.sleb128 197
	.uleb128 0x20
	.4byte	.LASF400
	.sleb128 198
	.uleb128 0x20
	.4byte	.LASF401
	.sleb128 199
	.uleb128 0x20
	.4byte	.LASF402
	.sleb128 200
	.uleb128 0x20
	.4byte	.LASF403
	.sleb128 201
	.uleb128 0x20
	.4byte	.LASF404
	.sleb128 202
	.uleb128 0x20
	.4byte	.LASF405
	.sleb128 203
	.uleb128 0x20
	.4byte	.LASF406
	.sleb128 204
	.uleb128 0x20
	.4byte	.LASF407
	.sleb128 205
	.uleb128 0x20
	.4byte	.LASF408
	.sleb128 206
	.uleb128 0x20
	.4byte	.LASF409
	.sleb128 207
	.uleb128 0x20
	.4byte	.LASF410
	.sleb128 208
	.uleb128 0x20
	.4byte	.LASF411
	.sleb128 209
	.uleb128 0x20
	.4byte	.LASF412
	.sleb128 210
	.uleb128 0x20
	.4byte	.LASF413
	.sleb128 211
	.uleb128 0x20
	.4byte	.LASF414
	.sleb128 212
	.uleb128 0x20
	.4byte	.LASF415
	.sleb128 213
	.uleb128 0x20
	.4byte	.LASF416
	.sleb128 214
	.uleb128 0x20
	.4byte	.LASF417
	.sleb128 215
	.uleb128 0x20
	.4byte	.LASF418
	.sleb128 216
	.uleb128 0x20
	.4byte	.LASF419
	.sleb128 217
	.uleb128 0x20
	.4byte	.LASF420
	.sleb128 218
	.uleb128 0x20
	.4byte	.LASF421
	.sleb128 219
	.uleb128 0x20
	.4byte	.LASF422
	.sleb128 220
	.uleb128 0x20
	.4byte	.LASF423
	.sleb128 221
	.uleb128 0x20
	.4byte	.LASF424
	.sleb128 222
	.uleb128 0x20
	.4byte	.LASF425
	.sleb128 223
	.uleb128 0x20
	.4byte	.LASF426
	.sleb128 224
	.uleb128 0x20
	.4byte	.LASF427
	.sleb128 225
	.uleb128 0x20
	.4byte	.LASF428
	.sleb128 226
	.uleb128 0x20
	.4byte	.LASF429
	.sleb128 227
	.uleb128 0x20
	.4byte	.LASF430
	.sleb128 228
	.uleb128 0x20
	.4byte	.LASF431
	.sleb128 229
	.uleb128 0x20
	.4byte	.LASF432
	.sleb128 230
	.uleb128 0x20
	.4byte	.LASF433
	.sleb128 231
	.uleb128 0x20
	.4byte	.LASF434
	.sleb128 232
	.uleb128 0x20
	.4byte	.LASF435
	.sleb128 233
	.uleb128 0x20
	.4byte	.LASF436
	.sleb128 234
	.uleb128 0x20
	.4byte	.LASF437
	.sleb128 235
	.uleb128 0x20
	.4byte	.LASF438
	.sleb128 236
	.uleb128 0x20
	.4byte	.LASF439
	.sleb128 237
	.uleb128 0x20
	.4byte	.LASF440
	.sleb128 238
	.uleb128 0x20
	.4byte	.LASF441
	.sleb128 239
	.uleb128 0x20
	.4byte	.LASF442
	.sleb128 240
	.uleb128 0x20
	.4byte	.LASF443
	.sleb128 241
	.uleb128 0x20
	.4byte	.LASF444
	.sleb128 242
	.uleb128 0x20
	.4byte	.LASF445
	.sleb128 243
	.uleb128 0x20
	.4byte	.LASF446
	.sleb128 244
	.uleb128 0x20
	.4byte	.LASF447
	.sleb128 245
	.uleb128 0x20
	.4byte	.LASF448
	.sleb128 246
	.uleb128 0x20
	.4byte	.LASF449
	.sleb128 247
	.uleb128 0x20
	.4byte	.LASF450
	.sleb128 248
	.uleb128 0x20
	.4byte	.LASF451
	.sleb128 249
	.uleb128 0x20
	.4byte	.LASF452
	.sleb128 250
	.uleb128 0x20
	.4byte	.LASF453
	.sleb128 251
	.uleb128 0x20
	.4byte	.LASF454
	.sleb128 252
	.uleb128 0x20
	.4byte	.LASF455
	.sleb128 253
	.uleb128 0x20
	.4byte	.LASF456
	.sleb128 254
	.uleb128 0x20
	.4byte	.LASF457
	.sleb128 255
	.uleb128 0x20
	.4byte	.LASF458
	.sleb128 256
	.uleb128 0x20
	.4byte	.LASF459
	.sleb128 257
	.uleb128 0x20
	.4byte	.LASF460
	.sleb128 258
	.uleb128 0x20
	.4byte	.LASF461
	.sleb128 259
	.uleb128 0x20
	.4byte	.LASF462
	.sleb128 260
	.uleb128 0x20
	.4byte	.LASF463
	.sleb128 261
	.uleb128 0x20
	.4byte	.LASF464
	.sleb128 262
	.uleb128 0x20
	.4byte	.LASF465
	.sleb128 263
	.uleb128 0x20
	.4byte	.LASF466
	.sleb128 264
	.uleb128 0x20
	.4byte	.LASF467
	.sleb128 265
	.uleb128 0x20
	.4byte	.LASF468
	.sleb128 266
	.uleb128 0x20
	.4byte	.LASF469
	.sleb128 267
	.uleb128 0x20
	.4byte	.LASF470
	.sleb128 268
	.uleb128 0x20
	.4byte	.LASF471
	.sleb128 269
	.uleb128 0x20
	.4byte	.LASF472
	.sleb128 270
	.uleb128 0x20
	.4byte	.LASF473
	.sleb128 271
	.uleb128 0x20
	.4byte	.LASF474
	.sleb128 272
	.uleb128 0x20
	.4byte	.LASF475
	.sleb128 273
	.uleb128 0x20
	.4byte	.LASF476
	.sleb128 274
	.uleb128 0x20
	.4byte	.LASF477
	.sleb128 275
	.uleb128 0x20
	.4byte	.LASF478
	.sleb128 276
	.uleb128 0x20
	.4byte	.LASF479
	.sleb128 277
	.uleb128 0x20
	.4byte	.LASF480
	.sleb128 278
	.uleb128 0x20
	.4byte	.LASF481
	.sleb128 279
	.uleb128 0x20
	.4byte	.LASF482
	.sleb128 280
	.uleb128 0x20
	.4byte	.LASF483
	.sleb128 281
	.uleb128 0x20
	.4byte	.LASF484
	.sleb128 282
	.uleb128 0x20
	.4byte	.LASF485
	.sleb128 283
	.uleb128 0x20
	.4byte	.LASF486
	.sleb128 284
	.uleb128 0x20
	.4byte	.LASF487
	.sleb128 285
	.uleb128 0x20
	.4byte	.LASF488
	.sleb128 286
	.uleb128 0x20
	.4byte	.LASF489
	.sleb128 287
	.uleb128 0x20
	.4byte	.LASF490
	.sleb128 288
	.uleb128 0x20
	.4byte	.LASF491
	.sleb128 289
	.uleb128 0x20
	.4byte	.LASF492
	.sleb128 290
	.uleb128 0x20
	.4byte	.LASF493
	.sleb128 291
	.uleb128 0x20
	.4byte	.LASF494
	.sleb128 292
	.uleb128 0x20
	.4byte	.LASF495
	.sleb128 293
	.uleb128 0x20
	.4byte	.LASF496
	.sleb128 294
	.uleb128 0x20
	.4byte	.LASF497
	.sleb128 295
	.uleb128 0x20
	.4byte	.LASF498
	.sleb128 296
	.uleb128 0x20
	.4byte	.LASF499
	.sleb128 297
	.uleb128 0x20
	.4byte	.LASF500
	.sleb128 298
	.uleb128 0x20
	.4byte	.LASF501
	.sleb128 299
	.uleb128 0x20
	.4byte	.LASF502
	.sleb128 300
	.uleb128 0x20
	.4byte	.LASF503
	.sleb128 301
	.uleb128 0x20
	.4byte	.LASF504
	.sleb128 302
	.uleb128 0x20
	.4byte	.LASF505
	.sleb128 303
	.uleb128 0x20
	.4byte	.LASF506
	.sleb128 304
	.uleb128 0x20
	.4byte	.LASF507
	.sleb128 305
	.uleb128 0x20
	.4byte	.LASF508
	.sleb128 306
	.uleb128 0x20
	.4byte	.LASF509
	.sleb128 307
	.uleb128 0x20
	.4byte	.LASF510
	.sleb128 308
	.uleb128 0x20
	.4byte	.LASF511
	.sleb128 309
	.uleb128 0x20
	.4byte	.LASF512
	.sleb128 310
	.uleb128 0x20
	.4byte	.LASF513
	.sleb128 311
	.uleb128 0x20
	.4byte	.LASF514
	.sleb128 312
	.uleb128 0x20
	.4byte	.LASF515
	.sleb128 313
	.uleb128 0x20
	.4byte	.LASF516
	.sleb128 314
	.uleb128 0x20
	.4byte	.LASF517
	.sleb128 315
	.uleb128 0x20
	.4byte	.LASF518
	.sleb128 316
	.uleb128 0x20
	.4byte	.LASF519
	.sleb128 317
	.uleb128 0x20
	.4byte	.LASF520
	.sleb128 318
	.uleb128 0x20
	.4byte	.LASF521
	.sleb128 319
	.uleb128 0x20
	.4byte	.LASF522
	.sleb128 320
	.uleb128 0x20
	.4byte	.LASF523
	.sleb128 321
	.uleb128 0x20
	.4byte	.LASF524
	.sleb128 322
	.uleb128 0x20
	.4byte	.LASF525
	.sleb128 323
	.uleb128 0x20
	.4byte	.LASF526
	.sleb128 324
	.uleb128 0x20
	.4byte	.LASF527
	.sleb128 325
	.uleb128 0x20
	.4byte	.LASF528
	.sleb128 326
	.uleb128 0x20
	.4byte	.LASF529
	.sleb128 327
	.uleb128 0x20
	.4byte	.LASF530
	.sleb128 328
	.uleb128 0x20
	.4byte	.LASF531
	.sleb128 329
	.uleb128 0x20
	.4byte	.LASF532
	.sleb128 330
	.uleb128 0x20
	.4byte	.LASF533
	.sleb128 331
	.uleb128 0x20
	.4byte	.LASF534
	.sleb128 332
	.uleb128 0x20
	.4byte	.LASF535
	.sleb128 333
	.uleb128 0x20
	.4byte	.LASF536
	.sleb128 334
	.uleb128 0x20
	.4byte	.LASF537
	.sleb128 335
	.uleb128 0x20
	.4byte	.LASF538
	.sleb128 336
	.uleb128 0x20
	.4byte	.LASF539
	.sleb128 337
	.uleb128 0x20
	.4byte	.LASF540
	.sleb128 338
	.uleb128 0x20
	.4byte	.LASF541
	.sleb128 339
	.uleb128 0x20
	.4byte	.LASF542
	.sleb128 340
	.uleb128 0x20
	.4byte	.LASF543
	.sleb128 341
	.uleb128 0x20
	.4byte	.LASF544
	.sleb128 342
	.uleb128 0x20
	.4byte	.LASF545
	.sleb128 343
	.uleb128 0x20
	.4byte	.LASF546
	.sleb128 344
	.uleb128 0x20
	.4byte	.LASF547
	.sleb128 345
	.uleb128 0x20
	.4byte	.LASF548
	.sleb128 346
	.uleb128 0x20
	.4byte	.LASF549
	.sleb128 347
	.uleb128 0x20
	.4byte	.LASF550
	.sleb128 348
	.uleb128 0x20
	.4byte	.LASF551
	.sleb128 349
	.uleb128 0x20
	.4byte	.LASF552
	.sleb128 350
	.uleb128 0x20
	.4byte	.LASF553
	.sleb128 351
	.uleb128 0x20
	.4byte	.LASF554
	.sleb128 352
	.uleb128 0x20
	.4byte	.LASF555
	.sleb128 353
	.uleb128 0x20
	.4byte	.LASF556
	.sleb128 354
	.uleb128 0x20
	.4byte	.LASF557
	.sleb128 355
	.uleb128 0x20
	.4byte	.LASF558
	.sleb128 356
	.uleb128 0x20
	.4byte	.LASF559
	.sleb128 357
	.uleb128 0x20
	.4byte	.LASF560
	.sleb128 358
	.uleb128 0x20
	.4byte	.LASF561
	.sleb128 359
	.uleb128 0x20
	.4byte	.LASF562
	.sleb128 360
	.uleb128 0x20
	.4byte	.LASF563
	.sleb128 361
	.uleb128 0x20
	.4byte	.LASF564
	.sleb128 362
	.uleb128 0x20
	.4byte	.LASF565
	.sleb128 363
	.uleb128 0x20
	.4byte	.LASF566
	.sleb128 364
	.uleb128 0x20
	.4byte	.LASF567
	.sleb128 365
	.uleb128 0x20
	.4byte	.LASF568
	.sleb128 366
	.uleb128 0x20
	.4byte	.LASF569
	.sleb128 367
	.uleb128 0x20
	.4byte	.LASF570
	.sleb128 368
	.uleb128 0x20
	.4byte	.LASF571
	.sleb128 369
	.uleb128 0x20
	.4byte	.LASF572
	.sleb128 370
	.uleb128 0x20
	.4byte	.LASF573
	.sleb128 371
	.uleb128 0x20
	.4byte	.LASF574
	.sleb128 372
	.uleb128 0x20
	.4byte	.LASF575
	.sleb128 373
	.uleb128 0x20
	.4byte	.LASF576
	.sleb128 374
	.uleb128 0x20
	.4byte	.LASF577
	.sleb128 375
	.uleb128 0x20
	.4byte	.LASF578
	.sleb128 376
	.uleb128 0x20
	.4byte	.LASF579
	.sleb128 377
	.uleb128 0x20
	.4byte	.LASF580
	.sleb128 378
	.uleb128 0x20
	.4byte	.LASF581
	.sleb128 379
	.uleb128 0x20
	.4byte	.LASF582
	.sleb128 380
	.uleb128 0x20
	.4byte	.LASF583
	.sleb128 381
	.uleb128 0x20
	.4byte	.LASF584
	.sleb128 382
	.uleb128 0x20
	.4byte	.LASF585
	.sleb128 383
	.uleb128 0x20
	.4byte	.LASF586
	.sleb128 384
	.uleb128 0x20
	.4byte	.LASF587
	.sleb128 385
	.uleb128 0x20
	.4byte	.LASF588
	.sleb128 386
	.uleb128 0x20
	.4byte	.LASF589
	.sleb128 387
	.uleb128 0x20
	.4byte	.LASF590
	.sleb128 388
	.uleb128 0x20
	.4byte	.LASF591
	.sleb128 389
	.uleb128 0x20
	.4byte	.LASF592
	.sleb128 390
	.uleb128 0x20
	.4byte	.LASF593
	.sleb128 391
	.uleb128 0x20
	.4byte	.LASF594
	.sleb128 392
	.uleb128 0x20
	.4byte	.LASF595
	.sleb128 393
	.uleb128 0x20
	.4byte	.LASF596
	.sleb128 394
	.uleb128 0x20
	.4byte	.LASF597
	.sleb128 395
	.uleb128 0x20
	.4byte	.LASF598
	.sleb128 396
	.uleb128 0x20
	.4byte	.LASF599
	.sleb128 397
	.uleb128 0x20
	.4byte	.LASF600
	.sleb128 398
	.uleb128 0x20
	.4byte	.LASF601
	.sleb128 399
	.uleb128 0x20
	.4byte	.LASF602
	.sleb128 400
	.uleb128 0x20
	.4byte	.LASF603
	.sleb128 401
	.uleb128 0x20
	.4byte	.LASF604
	.sleb128 402
	.uleb128 0x20
	.4byte	.LASF605
	.sleb128 403
	.uleb128 0x20
	.4byte	.LASF606
	.sleb128 404
	.uleb128 0x20
	.4byte	.LASF607
	.sleb128 405
	.uleb128 0x20
	.4byte	.LASF608
	.sleb128 406
	.uleb128 0x20
	.4byte	.LASF609
	.sleb128 407
	.uleb128 0x20
	.4byte	.LASF610
	.sleb128 408
	.uleb128 0x20
	.4byte	.LASF611
	.sleb128 409
	.uleb128 0x20
	.4byte	.LASF612
	.sleb128 410
	.uleb128 0x20
	.4byte	.LASF613
	.sleb128 411
	.uleb128 0x20
	.4byte	.LASF614
	.sleb128 412
	.uleb128 0x20
	.4byte	.LASF615
	.sleb128 413
	.uleb128 0x20
	.4byte	.LASF616
	.sleb128 414
	.uleb128 0x20
	.4byte	.LASF617
	.sleb128 415
	.uleb128 0x20
	.4byte	.LASF618
	.sleb128 416
	.uleb128 0x20
	.4byte	.LASF619
	.sleb128 417
	.uleb128 0x20
	.4byte	.LASF620
	.sleb128 418
	.uleb128 0x20
	.4byte	.LASF621
	.sleb128 419
	.uleb128 0x20
	.4byte	.LASF622
	.sleb128 420
	.uleb128 0x20
	.4byte	.LASF623
	.sleb128 421
	.uleb128 0x20
	.4byte	.LASF624
	.sleb128 422
	.uleb128 0x20
	.4byte	.LASF625
	.sleb128 423
	.uleb128 0x20
	.4byte	.LASF626
	.sleb128 424
	.uleb128 0x20
	.4byte	.LASF627
	.sleb128 425
	.uleb128 0x20
	.4byte	.LASF628
	.sleb128 426
	.uleb128 0x20
	.4byte	.LASF629
	.sleb128 427
	.uleb128 0x20
	.4byte	.LASF630
	.sleb128 428
	.uleb128 0x20
	.4byte	.LASF631
	.sleb128 429
	.uleb128 0x20
	.4byte	.LASF632
	.sleb128 430
	.uleb128 0x20
	.4byte	.LASF633
	.sleb128 431
	.uleb128 0x20
	.4byte	.LASF634
	.sleb128 432
	.uleb128 0x20
	.4byte	.LASF635
	.sleb128 433
	.uleb128 0x20
	.4byte	.LASF636
	.sleb128 434
	.uleb128 0x20
	.4byte	.LASF637
	.sleb128 435
	.uleb128 0x20
	.4byte	.LASF638
	.sleb128 436
	.uleb128 0x20
	.4byte	.LASF639
	.sleb128 437
	.uleb128 0x20
	.4byte	.LASF640
	.sleb128 438
	.uleb128 0x20
	.4byte	.LASF641
	.sleb128 439
	.uleb128 0x20
	.4byte	.LASF642
	.sleb128 440
	.uleb128 0x20
	.4byte	.LASF643
	.sleb128 441
	.uleb128 0x20
	.4byte	.LASF644
	.sleb128 442
	.uleb128 0x20
	.4byte	.LASF645
	.sleb128 443
	.uleb128 0x20
	.4byte	.LASF646
	.sleb128 444
	.uleb128 0x20
	.4byte	.LASF647
	.sleb128 445
	.uleb128 0x20
	.4byte	.LASF648
	.sleb128 446
	.uleb128 0x20
	.4byte	.LASF649
	.sleb128 447
	.uleb128 0x20
	.4byte	.LASF650
	.sleb128 448
	.uleb128 0x20
	.4byte	.LASF651
	.sleb128 449
	.uleb128 0x20
	.4byte	.LASF652
	.sleb128 450
	.uleb128 0x20
	.4byte	.LASF653
	.sleb128 451
	.uleb128 0x20
	.4byte	.LASF654
	.sleb128 452
	.uleb128 0x20
	.4byte	.LASF655
	.sleb128 453
	.uleb128 0x20
	.4byte	.LASF656
	.sleb128 454
	.uleb128 0x20
	.4byte	.LASF657
	.sleb128 455
	.uleb128 0x20
	.4byte	.LASF658
	.sleb128 456
	.uleb128 0x20
	.4byte	.LASF659
	.sleb128 457
	.uleb128 0x20
	.4byte	.LASF660
	.sleb128 458
	.uleb128 0x20
	.4byte	.LASF661
	.sleb128 459
	.uleb128 0x20
	.4byte	.LASF662
	.sleb128 460
	.uleb128 0x20
	.4byte	.LASF663
	.sleb128 461
	.uleb128 0x20
	.4byte	.LASF664
	.sleb128 462
	.uleb128 0x20
	.4byte	.LASF665
	.sleb128 463
	.uleb128 0x20
	.4byte	.LASF666
	.sleb128 464
	.uleb128 0x20
	.4byte	.LASF667
	.sleb128 465
	.uleb128 0x20
	.4byte	.LASF668
	.sleb128 466
	.uleb128 0x20
	.4byte	.LASF669
	.sleb128 467
	.uleb128 0x20
	.4byte	.LASF670
	.sleb128 468
	.uleb128 0x20
	.4byte	.LASF671
	.sleb128 469
	.uleb128 0x20
	.4byte	.LASF672
	.sleb128 470
	.uleb128 0x20
	.4byte	.LASF673
	.sleb128 471
	.uleb128 0x20
	.4byte	.LASF674
	.sleb128 472
	.uleb128 0x20
	.4byte	.LASF675
	.sleb128 473
	.uleb128 0x20
	.4byte	.LASF676
	.sleb128 474
	.uleb128 0x20
	.4byte	.LASF677
	.sleb128 475
	.uleb128 0x20
	.4byte	.LASF678
	.sleb128 476
	.uleb128 0x20
	.4byte	.LASF679
	.sleb128 477
	.uleb128 0x20
	.4byte	.LASF680
	.sleb128 478
	.uleb128 0x20
	.4byte	.LASF681
	.sleb128 479
	.uleb128 0x20
	.4byte	.LASF682
	.sleb128 480
	.uleb128 0x20
	.4byte	.LASF683
	.sleb128 481
	.uleb128 0x20
	.4byte	.LASF684
	.sleb128 482
	.uleb128 0x20
	.4byte	.LASF685
	.sleb128 483
	.uleb128 0x20
	.4byte	.LASF686
	.sleb128 484
	.uleb128 0x20
	.4byte	.LASF687
	.sleb128 485
	.uleb128 0x20
	.4byte	.LASF688
	.sleb128 486
	.uleb128 0x20
	.4byte	.LASF689
	.sleb128 487
	.uleb128 0x20
	.4byte	.LASF690
	.sleb128 488
	.uleb128 0x20
	.4byte	.LASF691
	.sleb128 489
	.uleb128 0x20
	.4byte	.LASF692
	.sleb128 490
	.uleb128 0x20
	.4byte	.LASF693
	.sleb128 491
	.uleb128 0x20
	.4byte	.LASF694
	.sleb128 492
	.uleb128 0x20
	.4byte	.LASF695
	.sleb128 493
	.uleb128 0x20
	.4byte	.LASF696
	.sleb128 494
	.uleb128 0x20
	.4byte	.LASF697
	.sleb128 495
	.uleb128 0x20
	.4byte	.LASF698
	.sleb128 496
	.uleb128 0x20
	.4byte	.LASF699
	.sleb128 497
	.uleb128 0x20
	.4byte	.LASF700
	.sleb128 498
	.uleb128 0x20
	.4byte	.LASF701
	.sleb128 499
	.uleb128 0x20
	.4byte	.LASF702
	.sleb128 500
	.uleb128 0x20
	.4byte	.LASF703
	.sleb128 501
	.uleb128 0x20
	.4byte	.LASF704
	.sleb128 502
	.uleb128 0x20
	.4byte	.LASF705
	.sleb128 503
	.uleb128 0x20
	.4byte	.LASF706
	.sleb128 504
	.uleb128 0x20
	.4byte	.LASF707
	.sleb128 505
	.uleb128 0x20
	.4byte	.LASF708
	.sleb128 506
	.uleb128 0x20
	.4byte	.LASF709
	.sleb128 507
	.uleb128 0x20
	.4byte	.LASF710
	.sleb128 508
	.uleb128 0x20
	.4byte	.LASF711
	.sleb128 509
	.uleb128 0x20
	.4byte	.LASF712
	.sleb128 510
	.uleb128 0x20
	.4byte	.LASF713
	.sleb128 511
	.uleb128 0x20
	.4byte	.LASF714
	.sleb128 512
	.uleb128 0x20
	.4byte	.LASF715
	.sleb128 513
	.uleb128 0x20
	.4byte	.LASF716
	.sleb128 514
	.uleb128 0x20
	.4byte	.LASF717
	.sleb128 515
	.uleb128 0x20
	.4byte	.LASF718
	.sleb128 516
	.uleb128 0x20
	.4byte	.LASF719
	.sleb128 517
	.uleb128 0x20
	.4byte	.LASF720
	.sleb128 518
	.uleb128 0x20
	.4byte	.LASF721
	.sleb128 519
	.uleb128 0x20
	.4byte	.LASF722
	.sleb128 520
	.uleb128 0x20
	.4byte	.LASF723
	.sleb128 521
	.uleb128 0x20
	.4byte	.LASF724
	.sleb128 522
	.uleb128 0x20
	.4byte	.LASF725
	.sleb128 523
	.uleb128 0x20
	.4byte	.LASF726
	.sleb128 524
	.uleb128 0x20
	.4byte	.LASF727
	.sleb128 525
	.uleb128 0x20
	.4byte	.LASF728
	.sleb128 526
	.uleb128 0x20
	.4byte	.LASF729
	.sleb128 527
	.uleb128 0x20
	.4byte	.LASF730
	.sleb128 528
	.uleb128 0x20
	.4byte	.LASF731
	.sleb128 529
	.uleb128 0x20
	.4byte	.LASF732
	.sleb128 530
	.uleb128 0x20
	.4byte	.LASF733
	.sleb128 531
	.uleb128 0x20
	.4byte	.LASF734
	.sleb128 532
	.uleb128 0x20
	.4byte	.LASF735
	.sleb128 533
	.uleb128 0x20
	.4byte	.LASF736
	.sleb128 534
	.uleb128 0x20
	.4byte	.LASF737
	.sleb128 535
	.uleb128 0x20
	.4byte	.LASF738
	.sleb128 536
	.uleb128 0x20
	.4byte	.LASF739
	.sleb128 537
	.uleb128 0x20
	.4byte	.LASF740
	.sleb128 538
	.uleb128 0x20
	.4byte	.LASF741
	.sleb128 539
	.uleb128 0x20
	.4byte	.LASF742
	.sleb128 540
	.uleb128 0x20
	.4byte	.LASF743
	.sleb128 541
	.uleb128 0x20
	.4byte	.LASF744
	.sleb128 542
	.uleb128 0x20
	.4byte	.LASF745
	.sleb128 543
	.uleb128 0x20
	.4byte	.LASF746
	.sleb128 544
	.uleb128 0x20
	.4byte	.LASF747
	.sleb128 545
	.uleb128 0x20
	.4byte	.LASF748
	.sleb128 546
	.uleb128 0x20
	.4byte	.LASF749
	.sleb128 547
	.uleb128 0x20
	.4byte	.LASF750
	.sleb128 548
	.uleb128 0x20
	.4byte	.LASF751
	.sleb128 549
	.uleb128 0x20
	.4byte	.LASF752
	.sleb128 550
	.uleb128 0x20
	.4byte	.LASF753
	.sleb128 551
	.uleb128 0x20
	.4byte	.LASF754
	.sleb128 552
	.uleb128 0x20
	.4byte	.LASF755
	.sleb128 553
	.uleb128 0x20
	.4byte	.LASF756
	.sleb128 554
	.uleb128 0x20
	.4byte	.LASF757
	.sleb128 555
	.uleb128 0x20
	.4byte	.LASF758
	.sleb128 556
	.uleb128 0x20
	.4byte	.LASF759
	.sleb128 557
	.uleb128 0x20
	.4byte	.LASF760
	.sleb128 558
	.uleb128 0x20
	.4byte	.LASF761
	.sleb128 559
	.uleb128 0x20
	.4byte	.LASF762
	.sleb128 560
	.uleb128 0x20
	.4byte	.LASF763
	.sleb128 561
	.uleb128 0x20
	.4byte	.LASF764
	.sleb128 562
	.uleb128 0x20
	.4byte	.LASF765
	.sleb128 563
	.uleb128 0x20
	.4byte	.LASF766
	.sleb128 564
	.uleb128 0x20
	.4byte	.LASF767
	.sleb128 565
	.uleb128 0x20
	.4byte	.LASF768
	.sleb128 566
	.uleb128 0x20
	.4byte	.LASF769
	.sleb128 567
	.uleb128 0x20
	.4byte	.LASF770
	.sleb128 568
	.uleb128 0x20
	.4byte	.LASF771
	.sleb128 569
	.uleb128 0x20
	.4byte	.LASF772
	.sleb128 570
	.uleb128 0x20
	.4byte	.LASF773
	.sleb128 571
	.uleb128 0x20
	.4byte	.LASF774
	.sleb128 572
	.uleb128 0x20
	.4byte	.LASF775
	.sleb128 573
	.uleb128 0x20
	.4byte	.LASF776
	.sleb128 574
	.uleb128 0x20
	.4byte	.LASF777
	.sleb128 575
	.uleb128 0x20
	.4byte	.LASF778
	.sleb128 576
	.uleb128 0x20
	.4byte	.LASF779
	.sleb128 577
	.uleb128 0x20
	.4byte	.LASF780
	.sleb128 578
	.uleb128 0x20
	.4byte	.LASF781
	.sleb128 579
	.uleb128 0x20
	.4byte	.LASF782
	.sleb128 580
	.uleb128 0x20
	.4byte	.LASF783
	.sleb128 581
	.uleb128 0x20
	.4byte	.LASF784
	.sleb128 582
	.uleb128 0x20
	.4byte	.LASF785
	.sleb128 583
	.uleb128 0x20
	.4byte	.LASF786
	.sleb128 584
	.uleb128 0x20
	.4byte	.LASF787
	.sleb128 585
	.uleb128 0x20
	.4byte	.LASF788
	.sleb128 586
	.uleb128 0x20
	.4byte	.LASF789
	.sleb128 587
	.uleb128 0x20
	.4byte	.LASF790
	.sleb128 588
	.uleb128 0x20
	.4byte	.LASF791
	.sleb128 589
	.uleb128 0x20
	.4byte	.LASF792
	.sleb128 590
	.uleb128 0x20
	.4byte	.LASF793
	.sleb128 591
	.uleb128 0x20
	.4byte	.LASF794
	.sleb128 592
	.uleb128 0x20
	.4byte	.LASF795
	.sleb128 593
	.uleb128 0x20
	.4byte	.LASF796
	.sleb128 594
	.uleb128 0x20
	.4byte	.LASF797
	.sleb128 595
	.uleb128 0x20
	.4byte	.LASF798
	.sleb128 596
	.uleb128 0x20
	.4byte	.LASF799
	.sleb128 597
	.uleb128 0x20
	.4byte	.LASF800
	.sleb128 598
	.uleb128 0x20
	.4byte	.LASF801
	.sleb128 599
	.uleb128 0x20
	.4byte	.LASF802
	.sleb128 600
	.uleb128 0x20
	.4byte	.LASF803
	.sleb128 601
	.uleb128 0x20
	.4byte	.LASF804
	.sleb128 602
	.uleb128 0x20
	.4byte	.LASF805
	.sleb128 603
	.uleb128 0x20
	.4byte	.LASF806
	.sleb128 604
	.uleb128 0x20
	.4byte	.LASF807
	.sleb128 605
	.uleb128 0x20
	.4byte	.LASF808
	.sleb128 606
	.uleb128 0x20
	.4byte	.LASF809
	.sleb128 607
	.uleb128 0x20
	.4byte	.LASF810
	.sleb128 608
	.uleb128 0x20
	.4byte	.LASF811
	.sleb128 609
	.uleb128 0x20
	.4byte	.LASF812
	.sleb128 610
	.uleb128 0x20
	.4byte	.LASF813
	.sleb128 611
	.uleb128 0x20
	.4byte	.LASF814
	.sleb128 612
	.uleb128 0x20
	.4byte	.LASF815
	.sleb128 613
	.uleb128 0x20
	.4byte	.LASF816
	.sleb128 614
	.uleb128 0x20
	.4byte	.LASF817
	.sleb128 615
	.uleb128 0x20
	.4byte	.LASF818
	.sleb128 616
	.uleb128 0x20
	.4byte	.LASF819
	.sleb128 617
	.uleb128 0x20
	.4byte	.LASF820
	.sleb128 618
	.uleb128 0x20
	.4byte	.LASF821
	.sleb128 619
	.uleb128 0x20
	.4byte	.LASF822
	.sleb128 620
	.uleb128 0x20
	.4byte	.LASF823
	.sleb128 621
	.uleb128 0x20
	.4byte	.LASF824
	.sleb128 622
	.uleb128 0x20
	.4byte	.LASF825
	.sleb128 623
	.uleb128 0x20
	.4byte	.LASF826
	.sleb128 624
	.uleb128 0x20
	.4byte	.LASF827
	.sleb128 625
	.uleb128 0x20
	.4byte	.LASF828
	.sleb128 626
	.uleb128 0x20
	.4byte	.LASF829
	.sleb128 627
	.uleb128 0x20
	.4byte	.LASF830
	.sleb128 628
	.uleb128 0x20
	.4byte	.LASF831
	.sleb128 629
	.uleb128 0x20
	.4byte	.LASF832
	.sleb128 630
	.uleb128 0x20
	.4byte	.LASF833
	.sleb128 631
	.uleb128 0x20
	.4byte	.LASF834
	.sleb128 632
	.uleb128 0x20
	.4byte	.LASF835
	.sleb128 633
	.uleb128 0x20
	.4byte	.LASF836
	.sleb128 634
	.uleb128 0x20
	.4byte	.LASF837
	.sleb128 635
	.uleb128 0x20
	.4byte	.LASF838
	.sleb128 636
	.uleb128 0x20
	.4byte	.LASF839
	.sleb128 637
	.uleb128 0x20
	.4byte	.LASF840
	.sleb128 638
	.uleb128 0x20
	.4byte	.LASF841
	.sleb128 639
	.uleb128 0x20
	.4byte	.LASF842
	.sleb128 640
	.uleb128 0x20
	.4byte	.LASF843
	.sleb128 641
	.uleb128 0x20
	.4byte	.LASF844
	.sleb128 642
	.uleb128 0x20
	.4byte	.LASF845
	.sleb128 643
	.uleb128 0x20
	.4byte	.LASF846
	.sleb128 644
	.uleb128 0x20
	.4byte	.LASF847
	.sleb128 645
	.uleb128 0x20
	.4byte	.LASF848
	.sleb128 646
	.uleb128 0x20
	.4byte	.LASF849
	.sleb128 647
	.uleb128 0x20
	.4byte	.LASF850
	.sleb128 648
	.uleb128 0x20
	.4byte	.LASF851
	.sleb128 649
	.uleb128 0x20
	.4byte	.LASF852
	.sleb128 650
	.uleb128 0x20
	.4byte	.LASF853
	.sleb128 651
	.uleb128 0x20
	.4byte	.LASF854
	.sleb128 652
	.uleb128 0x20
	.4byte	.LASF855
	.sleb128 653
	.uleb128 0x20
	.4byte	.LASF856
	.sleb128 654
	.uleb128 0x20
	.4byte	.LASF857
	.sleb128 655
	.uleb128 0x20
	.4byte	.LASF858
	.sleb128 656
	.uleb128 0x20
	.4byte	.LASF859
	.sleb128 657
	.uleb128 0x20
	.4byte	.LASF860
	.sleb128 658
	.uleb128 0x20
	.4byte	.LASF861
	.sleb128 659
	.uleb128 0x20
	.4byte	.LASF862
	.sleb128 660
	.uleb128 0x20
	.4byte	.LASF863
	.sleb128 661
	.uleb128 0x20
	.4byte	.LASF864
	.sleb128 662
	.uleb128 0x20
	.4byte	.LASF865
	.sleb128 663
	.uleb128 0x20
	.4byte	.LASF866
	.sleb128 664
	.uleb128 0x20
	.4byte	.LASF867
	.sleb128 665
	.uleb128 0x20
	.4byte	.LASF868
	.sleb128 666
	.uleb128 0x20
	.4byte	.LASF869
	.sleb128 667
	.uleb128 0x20
	.4byte	.LASF870
	.sleb128 668
	.uleb128 0x20
	.4byte	.LASF871
	.sleb128 669
	.uleb128 0x20
	.4byte	.LASF872
	.sleb128 670
	.uleb128 0x20
	.4byte	.LASF873
	.sleb128 671
	.uleb128 0x20
	.4byte	.LASF874
	.sleb128 672
	.uleb128 0x20
	.4byte	.LASF875
	.sleb128 673
	.uleb128 0x20
	.4byte	.LASF876
	.sleb128 674
	.uleb128 0x20
	.4byte	.LASF877
	.sleb128 675
	.uleb128 0x20
	.4byte	.LASF878
	.sleb128 676
	.uleb128 0x20
	.4byte	.LASF879
	.sleb128 677
	.uleb128 0x20
	.4byte	.LASF880
	.sleb128 678
	.uleb128 0x20
	.4byte	.LASF881
	.sleb128 679
	.uleb128 0x20
	.4byte	.LASF882
	.sleb128 680
	.uleb128 0x20
	.4byte	.LASF883
	.sleb128 681
	.uleb128 0x20
	.4byte	.LASF884
	.sleb128 682
	.uleb128 0x20
	.4byte	.LASF885
	.sleb128 683
	.uleb128 0x20
	.4byte	.LASF886
	.sleb128 684
	.uleb128 0x20
	.4byte	.LASF887
	.sleb128 685
	.uleb128 0x20
	.4byte	.LASF888
	.sleb128 686
	.uleb128 0x20
	.4byte	.LASF889
	.sleb128 687
	.uleb128 0x20
	.4byte	.LASF890
	.sleb128 688
	.uleb128 0x20
	.4byte	.LASF891
	.sleb128 689
	.uleb128 0x20
	.4byte	.LASF892
	.sleb128 690
	.uleb128 0x20
	.4byte	.LASF893
	.sleb128 691
	.uleb128 0x20
	.4byte	.LASF894
	.sleb128 692
	.uleb128 0x20
	.4byte	.LASF895
	.sleb128 693
	.uleb128 0x20
	.4byte	.LASF896
	.sleb128 694
	.uleb128 0x20
	.4byte	.LASF897
	.sleb128 695
	.uleb128 0x20
	.4byte	.LASF898
	.sleb128 696
	.uleb128 0x20
	.4byte	.LASF899
	.sleb128 697
	.uleb128 0x20
	.4byte	.LASF900
	.sleb128 698
	.uleb128 0x20
	.4byte	.LASF901
	.sleb128 699
	.uleb128 0x20
	.4byte	.LASF902
	.sleb128 700
	.uleb128 0x20
	.4byte	.LASF903
	.sleb128 701
	.uleb128 0x20
	.4byte	.LASF904
	.sleb128 702
	.uleb128 0x20
	.4byte	.LASF905
	.sleb128 703
	.uleb128 0x20
	.4byte	.LASF906
	.sleb128 704
	.uleb128 0x20
	.4byte	.LASF907
	.sleb128 705
	.uleb128 0x20
	.4byte	.LASF908
	.sleb128 706
	.uleb128 0x20
	.4byte	.LASF909
	.sleb128 707
	.uleb128 0x20
	.4byte	.LASF910
	.sleb128 708
	.uleb128 0x20
	.4byte	.LASF911
	.sleb128 709
	.uleb128 0x20
	.4byte	.LASF912
	.sleb128 710
	.uleb128 0x20
	.4byte	.LASF913
	.sleb128 711
	.uleb128 0x20
	.4byte	.LASF914
	.sleb128 712
	.uleb128 0x20
	.4byte	.LASF915
	.sleb128 713
	.uleb128 0x20
	.4byte	.LASF916
	.sleb128 714
	.uleb128 0x20
	.4byte	.LASF917
	.sleb128 715
	.uleb128 0x20
	.4byte	.LASF918
	.sleb128 716
	.uleb128 0x20
	.4byte	.LASF919
	.sleb128 717
	.uleb128 0x20
	.4byte	.LASF920
	.sleb128 718
	.uleb128 0x20
	.4byte	.LASF921
	.sleb128 719
	.uleb128 0x20
	.4byte	.LASF922
	.sleb128 720
	.uleb128 0x20
	.4byte	.LASF923
	.sleb128 721
	.uleb128 0x20
	.4byte	.LASF924
	.sleb128 722
	.uleb128 0x20
	.4byte	.LASF925
	.sleb128 723
	.uleb128 0x20
	.4byte	.LASF926
	.sleb128 724
	.uleb128 0x20
	.4byte	.LASF927
	.sleb128 725
	.uleb128 0x20
	.4byte	.LASF928
	.sleb128 726
	.uleb128 0x20
	.4byte	.LASF929
	.sleb128 727
	.uleb128 0x20
	.4byte	.LASF930
	.sleb128 728
	.uleb128 0x20
	.4byte	.LASF931
	.sleb128 729
	.uleb128 0x20
	.4byte	.LASF932
	.sleb128 730
	.uleb128 0x20
	.4byte	.LASF933
	.sleb128 731
	.uleb128 0x20
	.4byte	.LASF934
	.sleb128 732
	.uleb128 0x20
	.4byte	.LASF935
	.sleb128 733
	.uleb128 0x20
	.4byte	.LASF936
	.sleb128 734
	.uleb128 0x20
	.4byte	.LASF937
	.sleb128 735
	.uleb128 0x20
	.4byte	.LASF938
	.sleb128 736
	.uleb128 0x20
	.4byte	.LASF939
	.sleb128 737
	.uleb128 0x20
	.4byte	.LASF940
	.sleb128 738
	.uleb128 0x20
	.4byte	.LASF941
	.sleb128 739
	.uleb128 0x20
	.4byte	.LASF942
	.sleb128 740
	.uleb128 0x20
	.4byte	.LASF943
	.sleb128 741
	.uleb128 0x20
	.4byte	.LASF944
	.sleb128 742
	.uleb128 0x20
	.4byte	.LASF945
	.sleb128 743
	.uleb128 0x20
	.4byte	.LASF946
	.sleb128 744
	.uleb128 0x20
	.4byte	.LASF947
	.sleb128 745
	.uleb128 0x20
	.4byte	.LASF948
	.sleb128 746
	.uleb128 0x20
	.4byte	.LASF949
	.sleb128 747
	.uleb128 0x20
	.4byte	.LASF950
	.sleb128 748
	.uleb128 0x20
	.4byte	.LASF951
	.sleb128 749
	.uleb128 0x20
	.4byte	.LASF952
	.sleb128 750
	.uleb128 0x20
	.4byte	.LASF953
	.sleb128 751
	.uleb128 0x20
	.4byte	.LASF954
	.sleb128 752
	.uleb128 0x20
	.4byte	.LASF955
	.sleb128 753
	.uleb128 0x20
	.4byte	.LASF956
	.sleb128 754
	.uleb128 0x20
	.4byte	.LASF957
	.sleb128 755
	.uleb128 0x20
	.4byte	.LASF958
	.sleb128 756
	.uleb128 0x20
	.4byte	.LASF959
	.sleb128 757
	.uleb128 0x20
	.4byte	.LASF960
	.sleb128 758
	.uleb128 0x20
	.4byte	.LASF961
	.sleb128 759
	.uleb128 0x20
	.4byte	.LASF962
	.sleb128 760
	.uleb128 0x20
	.4byte	.LASF963
	.sleb128 761
	.uleb128 0x20
	.4byte	.LASF964
	.sleb128 762
	.uleb128 0x20
	.4byte	.LASF965
	.sleb128 763
	.uleb128 0x20
	.4byte	.LASF966
	.sleb128 764
	.uleb128 0x20
	.4byte	.LASF967
	.sleb128 765
	.uleb128 0x20
	.4byte	.LASF968
	.sleb128 766
	.uleb128 0x20
	.4byte	.LASF969
	.sleb128 767
	.uleb128 0x20
	.4byte	.LASF970
	.sleb128 768
	.uleb128 0x20
	.4byte	.LASF971
	.sleb128 769
	.uleb128 0x20
	.4byte	.LASF972
	.sleb128 770
	.uleb128 0x20
	.4byte	.LASF973
	.sleb128 771
	.uleb128 0x20
	.4byte	.LASF974
	.sleb128 772
	.uleb128 0x20
	.4byte	.LASF975
	.sleb128 773
	.uleb128 0x20
	.4byte	.LASF976
	.sleb128 774
	.uleb128 0x20
	.4byte	.LASF977
	.sleb128 775
	.uleb128 0x20
	.4byte	.LASF978
	.sleb128 776
	.uleb128 0x20
	.4byte	.LASF979
	.sleb128 777
	.uleb128 0x20
	.4byte	.LASF980
	.sleb128 778
	.uleb128 0x20
	.4byte	.LASF981
	.sleb128 779
	.uleb128 0x20
	.4byte	.LASF982
	.sleb128 780
	.uleb128 0x20
	.4byte	.LASF983
	.sleb128 781
	.uleb128 0x20
	.4byte	.LASF984
	.sleb128 782
	.uleb128 0x20
	.4byte	.LASF985
	.sleb128 783
	.uleb128 0x20
	.4byte	.LASF986
	.sleb128 784
	.uleb128 0x20
	.4byte	.LASF987
	.sleb128 785
	.uleb128 0x20
	.4byte	.LASF988
	.sleb128 786
	.uleb128 0x20
	.4byte	.LASF989
	.sleb128 787
	.uleb128 0x20
	.4byte	.LASF990
	.sleb128 788
	.uleb128 0x20
	.4byte	.LASF991
	.sleb128 789
	.uleb128 0x20
	.4byte	.LASF992
	.sleb128 790
	.uleb128 0x20
	.4byte	.LASF993
	.sleb128 791
	.uleb128 0x20
	.4byte	.LASF994
	.sleb128 792
	.uleb128 0x20
	.4byte	.LASF995
	.sleb128 793
	.uleb128 0x20
	.4byte	.LASF996
	.sleb128 794
	.uleb128 0x20
	.4byte	.LASF997
	.sleb128 795
	.uleb128 0x20
	.4byte	.LASF998
	.sleb128 796
	.uleb128 0x20
	.4byte	.LASF999
	.sleb128 797
	.uleb128 0x20
	.4byte	.LASF1000
	.sleb128 798
	.uleb128 0x20
	.4byte	.LASF1001
	.sleb128 799
	.uleb128 0x20
	.4byte	.LASF1002
	.sleb128 800
	.uleb128 0x20
	.4byte	.LASF1003
	.sleb128 801
	.uleb128 0x20
	.4byte	.LASF1004
	.sleb128 802
	.uleb128 0x20
	.4byte	.LASF1005
	.sleb128 803
	.uleb128 0x20
	.4byte	.LASF1006
	.sleb128 804
	.uleb128 0x20
	.4byte	.LASF1007
	.sleb128 805
	.uleb128 0x20
	.4byte	.LASF1008
	.sleb128 806
	.uleb128 0x20
	.4byte	.LASF1009
	.sleb128 807
	.uleb128 0x20
	.4byte	.LASF1010
	.sleb128 808
	.uleb128 0x20
	.4byte	.LASF1011
	.sleb128 809
	.uleb128 0x20
	.4byte	.LASF1012
	.sleb128 810
	.uleb128 0x20
	.4byte	.LASF1013
	.sleb128 811
	.uleb128 0x20
	.4byte	.LASF1014
	.sleb128 812
	.uleb128 0x20
	.4byte	.LASF1015
	.sleb128 813
	.uleb128 0x20
	.4byte	.LASF1016
	.sleb128 814
	.uleb128 0x20
	.4byte	.LASF1017
	.sleb128 815
	.uleb128 0x20
	.4byte	.LASF1018
	.sleb128 816
	.uleb128 0x20
	.4byte	.LASF1019
	.sleb128 817
	.uleb128 0x20
	.4byte	.LASF1020
	.sleb128 818
	.uleb128 0x20
	.4byte	.LASF1021
	.sleb128 819
	.uleb128 0x20
	.4byte	.LASF1022
	.sleb128 820
	.uleb128 0x20
	.4byte	.LASF1023
	.sleb128 821
	.uleb128 0x20
	.4byte	.LASF1024
	.sleb128 822
	.uleb128 0x20
	.4byte	.LASF1025
	.sleb128 823
	.uleb128 0x20
	.4byte	.LASF1026
	.sleb128 824
	.uleb128 0x20
	.4byte	.LASF1027
	.sleb128 825
	.uleb128 0x20
	.4byte	.LASF1028
	.sleb128 826
	.uleb128 0x20
	.4byte	.LASF1029
	.sleb128 827
	.uleb128 0x20
	.4byte	.LASF1030
	.sleb128 828
	.uleb128 0x20
	.4byte	.LASF1031
	.sleb128 829
	.uleb128 0x20
	.4byte	.LASF1032
	.sleb128 830
	.uleb128 0x20
	.4byte	.LASF1033
	.sleb128 831
	.uleb128 0x20
	.4byte	.LASF1034
	.sleb128 832
	.uleb128 0x20
	.4byte	.LASF1035
	.sleb128 833
	.uleb128 0x20
	.4byte	.LASF1036
	.sleb128 834
	.uleb128 0x20
	.4byte	.LASF1037
	.sleb128 835
	.uleb128 0x20
	.4byte	.LASF1038
	.sleb128 836
	.uleb128 0x20
	.4byte	.LASF1039
	.sleb128 837
	.uleb128 0x20
	.4byte	.LASF1040
	.sleb128 838
	.uleb128 0x20
	.4byte	.LASF1041
	.sleb128 839
	.uleb128 0x20
	.4byte	.LASF1042
	.sleb128 840
	.uleb128 0x20
	.4byte	.LASF1043
	.sleb128 841
	.uleb128 0x20
	.4byte	.LASF1044
	.sleb128 842
	.uleb128 0x20
	.4byte	.LASF1045
	.sleb128 843
	.uleb128 0x20
	.4byte	.LASF1046
	.sleb128 844
	.uleb128 0x20
	.4byte	.LASF1047
	.sleb128 845
	.uleb128 0x20
	.4byte	.LASF1048
	.sleb128 846
	.uleb128 0x20
	.4byte	.LASF1049
	.sleb128 847
	.uleb128 0x20
	.4byte	.LASF1050
	.sleb128 848
	.uleb128 0x20
	.4byte	.LASF1051
	.sleb128 849
	.uleb128 0x20
	.4byte	.LASF1052
	.sleb128 850
	.uleb128 0x20
	.4byte	.LASF1053
	.sleb128 851
	.uleb128 0x20
	.4byte	.LASF1054
	.sleb128 852
	.uleb128 0x20
	.4byte	.LASF1055
	.sleb128 853
	.uleb128 0x20
	.4byte	.LASF1056
	.sleb128 854
	.uleb128 0x20
	.4byte	.LASF1057
	.sleb128 855
	.uleb128 0x20
	.4byte	.LASF1058
	.sleb128 856
	.uleb128 0x20
	.4byte	.LASF1059
	.sleb128 857
	.uleb128 0x20
	.4byte	.LASF1060
	.sleb128 858
	.uleb128 0x20
	.4byte	.LASF1061
	.sleb128 859
	.uleb128 0x20
	.4byte	.LASF1062
	.sleb128 860
	.uleb128 0x20
	.4byte	.LASF1063
	.sleb128 861
	.uleb128 0x20
	.4byte	.LASF1064
	.sleb128 862
	.uleb128 0x20
	.4byte	.LASF1065
	.sleb128 863
	.uleb128 0x20
	.4byte	.LASF1066
	.sleb128 864
	.uleb128 0x20
	.4byte	.LASF1067
	.sleb128 865
	.uleb128 0x20
	.4byte	.LASF1068
	.sleb128 866
	.uleb128 0x20
	.4byte	.LASF1069
	.sleb128 867
	.uleb128 0x20
	.4byte	.LASF1070
	.sleb128 868
	.uleb128 0x20
	.4byte	.LASF1071
	.sleb128 869
	.uleb128 0x20
	.4byte	.LASF1072
	.sleb128 870
	.uleb128 0x20
	.4byte	.LASF1073
	.sleb128 871
	.uleb128 0x20
	.4byte	.LASF1074
	.sleb128 872
	.uleb128 0x20
	.4byte	.LASF1075
	.sleb128 873
	.uleb128 0x20
	.4byte	.LASF1076
	.sleb128 874
	.uleb128 0x20
	.4byte	.LASF1077
	.sleb128 875
	.uleb128 0x20
	.4byte	.LASF1078
	.sleb128 876
	.uleb128 0x20
	.4byte	.LASF1079
	.sleb128 877
	.uleb128 0x20
	.4byte	.LASF1080
	.sleb128 878
	.uleb128 0x20
	.4byte	.LASF1081
	.sleb128 879
	.uleb128 0x20
	.4byte	.LASF1082
	.sleb128 880
	.uleb128 0x20
	.4byte	.LASF1083
	.sleb128 881
	.uleb128 0x20
	.4byte	.LASF1084
	.sleb128 882
	.uleb128 0x20
	.4byte	.LASF1085
	.sleb128 883
	.uleb128 0x20
	.4byte	.LASF1086
	.sleb128 884
	.uleb128 0x20
	.4byte	.LASF1087
	.sleb128 885
	.uleb128 0x20
	.4byte	.LASF1088
	.sleb128 886
	.uleb128 0x20
	.4byte	.LASF1089
	.sleb128 887
	.uleb128 0x20
	.4byte	.LASF1090
	.sleb128 888
	.uleb128 0x20
	.4byte	.LASF1091
	.sleb128 889
	.uleb128 0x20
	.4byte	.LASF1092
	.sleb128 890
	.uleb128 0x20
	.4byte	.LASF1093
	.sleb128 891
	.uleb128 0x20
	.4byte	.LASF1094
	.sleb128 892
	.uleb128 0x20
	.4byte	.LASF1095
	.sleb128 893
	.uleb128 0x20
	.4byte	.LASF1096
	.sleb128 894
	.uleb128 0x20
	.4byte	.LASF1097
	.sleb128 895
	.uleb128 0x20
	.4byte	.LASF1098
	.sleb128 896
	.uleb128 0x20
	.4byte	.LASF1099
	.sleb128 897
	.uleb128 0x20
	.4byte	.LASF1100
	.sleb128 898
	.uleb128 0x20
	.4byte	.LASF1101
	.sleb128 899
	.uleb128 0x20
	.4byte	.LASF1102
	.sleb128 900
	.uleb128 0x20
	.4byte	.LASF1103
	.sleb128 901
	.uleb128 0x20
	.4byte	.LASF1104
	.sleb128 902
	.uleb128 0x20
	.4byte	.LASF1105
	.sleb128 903
	.uleb128 0x20
	.4byte	.LASF1106
	.sleb128 904
	.uleb128 0x20
	.4byte	.LASF1107
	.sleb128 905
	.uleb128 0x20
	.4byte	.LASF1108
	.sleb128 906
	.uleb128 0x20
	.4byte	.LASF1109
	.sleb128 907
	.uleb128 0x20
	.4byte	.LASF1110
	.sleb128 908
	.uleb128 0x20
	.4byte	.LASF1111
	.sleb128 909
	.uleb128 0x20
	.4byte	.LASF1112
	.sleb128 910
	.uleb128 0x20
	.4byte	.LASF1113
	.sleb128 911
	.uleb128 0x20
	.4byte	.LASF1114
	.sleb128 912
	.uleb128 0x20
	.4byte	.LASF1115
	.sleb128 913
	.uleb128 0x20
	.4byte	.LASF1116
	.sleb128 914
	.uleb128 0x20
	.4byte	.LASF1117
	.sleb128 915
	.uleb128 0x20
	.4byte	.LASF1118
	.sleb128 916
	.uleb128 0x20
	.4byte	.LASF1119
	.sleb128 917
	.uleb128 0x20
	.4byte	.LASF1120
	.sleb128 918
	.uleb128 0x20
	.4byte	.LASF1121
	.sleb128 919
	.uleb128 0x20
	.4byte	.LASF1122
	.sleb128 920
	.uleb128 0x20
	.4byte	.LASF1123
	.sleb128 921
	.uleb128 0x20
	.4byte	.LASF1124
	.sleb128 922
	.uleb128 0x20
	.4byte	.LASF1125
	.sleb128 923
	.uleb128 0x20
	.4byte	.LASF1126
	.sleb128 924
	.uleb128 0x20
	.4byte	.LASF1127
	.sleb128 925
	.uleb128 0x20
	.4byte	.LASF1128
	.sleb128 926
	.uleb128 0x20
	.4byte	.LASF1129
	.sleb128 927
	.uleb128 0x20
	.4byte	.LASF1130
	.sleb128 928
	.uleb128 0x20
	.4byte	.LASF1131
	.sleb128 929
	.uleb128 0x20
	.4byte	.LASF1132
	.sleb128 930
	.uleb128 0x20
	.4byte	.LASF1133
	.sleb128 931
	.uleb128 0x20
	.4byte	.LASF1134
	.sleb128 932
	.uleb128 0x20
	.4byte	.LASF1135
	.sleb128 933
	.uleb128 0x20
	.4byte	.LASF1136
	.sleb128 934
	.uleb128 0x20
	.4byte	.LASF1137
	.sleb128 935
	.uleb128 0x20
	.4byte	.LASF1138
	.sleb128 936
	.uleb128 0x20
	.4byte	.LASF1139
	.sleb128 937
	.uleb128 0x20
	.4byte	.LASF1140
	.sleb128 938
	.uleb128 0x20
	.4byte	.LASF1141
	.sleb128 939
	.uleb128 0x20
	.4byte	.LASF1142
	.sleb128 940
	.uleb128 0x20
	.4byte	.LASF1143
	.sleb128 941
	.uleb128 0x20
	.4byte	.LASF1144
	.sleb128 942
	.uleb128 0x20
	.4byte	.LASF1145
	.sleb128 943
	.uleb128 0x20
	.4byte	.LASF1146
	.sleb128 944
	.uleb128 0x20
	.4byte	.LASF1147
	.sleb128 945
	.uleb128 0x20
	.4byte	.LASF1148
	.sleb128 946
	.uleb128 0x20
	.4byte	.LASF1149
	.sleb128 947
	.uleb128 0x20
	.4byte	.LASF1150
	.sleb128 948
	.uleb128 0x20
	.4byte	.LASF1151
	.sleb128 949
	.uleb128 0x20
	.4byte	.LASF1152
	.sleb128 950
	.uleb128 0x20
	.4byte	.LASF1153
	.sleb128 951
	.uleb128 0x20
	.4byte	.LASF1154
	.sleb128 952
	.uleb128 0x20
	.4byte	.LASF1155
	.sleb128 953
	.uleb128 0x20
	.4byte	.LASF1156
	.sleb128 954
	.uleb128 0x20
	.4byte	.LASF1157
	.sleb128 955
	.uleb128 0x20
	.4byte	.LASF1158
	.sleb128 956
	.uleb128 0x20
	.4byte	.LASF1159
	.sleb128 957
	.uleb128 0x20
	.4byte	.LASF1160
	.sleb128 958
	.uleb128 0x20
	.4byte	.LASF1161
	.sleb128 959
	.uleb128 0x20
	.4byte	.LASF1162
	.sleb128 960
	.uleb128 0x20
	.4byte	.LASF1163
	.sleb128 961
	.uleb128 0x20
	.4byte	.LASF1164
	.sleb128 962
	.uleb128 0x20
	.4byte	.LASF1165
	.sleb128 963
	.uleb128 0x20
	.4byte	.LASF1166
	.sleb128 964
	.uleb128 0x20
	.4byte	.LASF1167
	.sleb128 965
	.uleb128 0x20
	.4byte	.LASF1168
	.sleb128 966
	.uleb128 0x20
	.4byte	.LASF1169
	.sleb128 967
	.uleb128 0x20
	.4byte	.LASF1170
	.sleb128 968
	.uleb128 0x20
	.4byte	.LASF1171
	.sleb128 969
	.uleb128 0x20
	.4byte	.LASF1172
	.sleb128 970
	.uleb128 0x20
	.4byte	.LASF1173
	.sleb128 971
	.uleb128 0x20
	.4byte	.LASF1174
	.sleb128 972
	.uleb128 0x20
	.4byte	.LASF1175
	.sleb128 973
	.uleb128 0x20
	.4byte	.LASF1176
	.sleb128 974
	.uleb128 0x20
	.4byte	.LASF1177
	.sleb128 975
	.uleb128 0x20
	.4byte	.LASF1178
	.sleb128 976
	.uleb128 0x20
	.4byte	.LASF1179
	.sleb128 977
	.uleb128 0x20
	.4byte	.LASF1180
	.sleb128 978
	.uleb128 0x20
	.4byte	.LASF1181
	.sleb128 979
	.uleb128 0x20
	.4byte	.LASF1182
	.sleb128 980
	.uleb128 0x20
	.4byte	.LASF1183
	.sleb128 981
	.uleb128 0x20
	.4byte	.LASF1184
	.sleb128 982
	.uleb128 0x20
	.4byte	.LASF1185
	.sleb128 983
	.uleb128 0x20
	.4byte	.LASF1186
	.sleb128 984
	.uleb128 0x20
	.4byte	.LASF1187
	.sleb128 985
	.uleb128 0x20
	.4byte	.LASF1188
	.sleb128 986
	.uleb128 0x20
	.4byte	.LASF1189
	.sleb128 987
	.uleb128 0x20
	.4byte	.LASF1190
	.sleb128 988
	.uleb128 0x20
	.4byte	.LASF1191
	.sleb128 989
	.uleb128 0x20
	.4byte	.LASF1192
	.sleb128 990
	.uleb128 0x20
	.4byte	.LASF1193
	.sleb128 991
	.uleb128 0x20
	.4byte	.LASF1194
	.sleb128 992
	.uleb128 0x20
	.4byte	.LASF1195
	.sleb128 993
	.uleb128 0x20
	.4byte	.LASF1196
	.sleb128 994
	.uleb128 0x20
	.4byte	.LASF1197
	.sleb128 995
	.uleb128 0x20
	.4byte	.LASF1198
	.sleb128 996
	.uleb128 0x20
	.4byte	.LASF1199
	.sleb128 997
	.uleb128 0x20
	.4byte	.LASF1200
	.sleb128 998
	.uleb128 0x20
	.4byte	.LASF1201
	.sleb128 999
	.uleb128 0x20
	.4byte	.LASF1202
	.sleb128 1040
	.uleb128 0x20
	.4byte	.LASF1203
	.sleb128 1041
	.uleb128 0x20
	.4byte	.LASF1204
	.sleb128 1042
	.uleb128 0x20
	.4byte	.LASF1205
	.sleb128 1043
	.uleb128 0x20
	.4byte	.LASF1206
	.sleb128 1044
	.uleb128 0x20
	.4byte	.LASF1207
	.sleb128 1045
	.uleb128 0x20
	.4byte	.LASF1208
	.sleb128 1046
	.uleb128 0x20
	.4byte	.LASF1209
	.sleb128 1047
	.uleb128 0x20
	.4byte	.LASF1210
	.sleb128 1048
	.uleb128 0x20
	.4byte	.LASF1211
	.sleb128 1049
	.uleb128 0x20
	.4byte	.LASF1212
	.sleb128 1050
	.uleb128 0x20
	.4byte	.LASF1213
	.sleb128 1051
	.uleb128 0x20
	.4byte	.LASF1214
	.sleb128 1052
	.uleb128 0x20
	.4byte	.LASF1215
	.sleb128 1053
	.uleb128 0x20
	.4byte	.LASF1216
	.sleb128 1054
	.uleb128 0x20
	.4byte	.LASF1217
	.sleb128 1055
	.uleb128 0x20
	.4byte	.LASF1218
	.sleb128 1056
	.uleb128 0x20
	.4byte	.LASF1219
	.sleb128 1057
	.uleb128 0x20
	.4byte	.LASF1220
	.sleb128 1058
	.uleb128 0x20
	.4byte	.LASF1221
	.sleb128 1059
	.uleb128 0x20
	.4byte	.LASF1222
	.sleb128 1060
	.uleb128 0x20
	.4byte	.LASF1223
	.sleb128 1061
	.uleb128 0x20
	.4byte	.LASF1224
	.sleb128 1062
	.uleb128 0x20
	.4byte	.LASF1225
	.sleb128 1063
	.uleb128 0x20
	.4byte	.LASF1226
	.sleb128 1064
	.uleb128 0x20
	.4byte	.LASF1227
	.sleb128 1065
	.uleb128 0x20
	.4byte	.LASF1228
	.sleb128 1066
	.uleb128 0x20
	.4byte	.LASF1229
	.sleb128 1067
	.uleb128 0x20
	.4byte	.LASF1230
	.sleb128 1068
	.uleb128 0x20
	.4byte	.LASF1231
	.sleb128 1069
	.uleb128 0x20
	.4byte	.LASF1232
	.sleb128 1070
	.uleb128 0x20
	.4byte	.LASF1233
	.sleb128 1071
	.uleb128 0x20
	.4byte	.LASF1234
	.sleb128 1072
	.uleb128 0x20
	.4byte	.LASF1235
	.sleb128 1073
	.uleb128 0x20
	.4byte	.LASF1236
	.sleb128 1074
	.uleb128 0x20
	.4byte	.LASF1237
	.sleb128 1075
	.uleb128 0x20
	.4byte	.LASF1238
	.sleb128 1076
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0xb
	.2byte	0x4fd
	.4byte	0x2af0
	.uleb128 0x20
	.4byte	.LASF1239
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1240
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1241
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1242
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1243
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1244
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1245
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1246
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1247
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1248
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1249
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1250
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1251
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1252
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1253
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1254
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1255
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1256
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1257
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1258
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1259
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1260
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1261
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1262
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1263
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1264
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1265
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1266
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1267
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1268
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1269
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1270
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1271
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1272
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1273
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1274
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1275
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1276
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1277
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1278
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1279
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1280
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1281
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1282
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1283
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1284
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1285
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1286
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1287
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1288
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1289
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1290
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1291
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1292
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1293
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1294
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1295
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1296
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1297
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1298
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1299
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1300
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1301
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1302
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1303
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1304
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1305
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1306
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1307
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1308
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1309
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1310
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1311
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1312
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1313
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1314
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1315
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1316
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1317
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1318
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1319
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1320
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1321
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1322
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1323
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1324
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1325
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1326
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1327
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1328
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1329
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1330
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1331
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1332
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1333
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1334
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1335
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1336
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1337
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1338
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1339
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1340
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1341
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1342
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1343
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1344
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1345
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1346
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1347
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1348
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1349
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1350
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1351
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1352
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1353
	.sleb128 114
	.uleb128 0x20
	.4byte	.LASF1354
	.sleb128 115
	.uleb128 0x20
	.4byte	.LASF1355
	.sleb128 116
	.uleb128 0x20
	.4byte	.LASF1356
	.sleb128 117
	.uleb128 0x20
	.4byte	.LASF1357
	.sleb128 118
	.uleb128 0x20
	.4byte	.LASF1358
	.sleb128 119
	.uleb128 0x20
	.4byte	.LASF1359
	.sleb128 120
	.uleb128 0x20
	.4byte	.LASF1360
	.sleb128 121
	.uleb128 0x20
	.4byte	.LASF1361
	.sleb128 122
	.uleb128 0x20
	.4byte	.LASF1362
	.sleb128 123
	.uleb128 0x20
	.4byte	.LASF1363
	.sleb128 124
	.uleb128 0x20
	.4byte	.LASF1364
	.sleb128 125
	.uleb128 0x20
	.4byte	.LASF1365
	.sleb128 126
	.uleb128 0x20
	.4byte	.LASF1366
	.sleb128 127
	.uleb128 0x20
	.4byte	.LASF1367
	.sleb128 128
	.uleb128 0x20
	.4byte	.LASF1368
	.sleb128 129
	.uleb128 0x20
	.4byte	.LASF1369
	.sleb128 130
	.uleb128 0x20
	.4byte	.LASF1370
	.sleb128 131
	.uleb128 0x20
	.4byte	.LASF1371
	.sleb128 132
	.uleb128 0x20
	.4byte	.LASF1372
	.sleb128 133
	.uleb128 0x20
	.4byte	.LASF1373
	.sleb128 134
	.uleb128 0x20
	.4byte	.LASF1374
	.sleb128 135
	.uleb128 0x20
	.4byte	.LASF1375
	.sleb128 136
	.uleb128 0x20
	.4byte	.LASF1376
	.sleb128 137
	.uleb128 0x20
	.4byte	.LASF1377
	.sleb128 138
	.uleb128 0x20
	.4byte	.LASF1378
	.sleb128 139
	.uleb128 0x20
	.4byte	.LASF1379
	.sleb128 140
	.uleb128 0x20
	.4byte	.LASF1380
	.sleb128 141
	.uleb128 0x20
	.4byte	.LASF1381
	.sleb128 142
	.uleb128 0x20
	.4byte	.LASF1382
	.sleb128 143
	.uleb128 0x20
	.4byte	.LASF1383
	.sleb128 144
	.uleb128 0x20
	.4byte	.LASF1384
	.sleb128 145
	.uleb128 0x20
	.4byte	.LASF1385
	.sleb128 146
	.uleb128 0x20
	.4byte	.LASF1386
	.sleb128 147
	.uleb128 0x20
	.4byte	.LASF1387
	.sleb128 148
	.uleb128 0x20
	.4byte	.LASF1388
	.sleb128 149
	.uleb128 0x20
	.4byte	.LASF1389
	.sleb128 150
	.uleb128 0x20
	.4byte	.LASF1390
	.sleb128 151
	.uleb128 0x20
	.4byte	.LASF1391
	.sleb128 152
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0xc
	.byte	0x47
	.4byte	0x2b0b
	.uleb128 0x20
	.4byte	.LASF1392
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1393
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1394
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x2b1b
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0xd
	.byte	0x57
	.4byte	0x2bc6
	.uleb128 0x20
	.4byte	.LASF1395
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1396
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1397
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1398
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1399
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1400
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1401
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1402
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1403
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1404
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1405
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1406
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1407
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1408
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1409
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1410
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1411
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1412
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1413
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1414
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1415
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1416
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1417
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1418
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1419
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1420
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1421
	.sleb128 32
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1655
	.byte	0x1
	.byte	0xd
	.byte	0xaa
	.4byte	0x2bf1
	.uleb128 0x20
	.4byte	.LASF1422
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1423
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1424
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1425
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1426
	.sleb128 16
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0xe
	.byte	0x89
	.4byte	0x2c12
	.uleb128 0x20
	.4byte	.LASF1427
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1428
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1429
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1430
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1431
	.byte	0xe
	.byte	0x8e
	.4byte	0x2bf1
	.uleb128 0x7
	.byte	0x4
	.byte	0xe
	.byte	0xa9
	.4byte	0x2c5d
	.uleb128 0x23
	.ascii	"var\000"
	.byte	0xe
	.byte	0xab
	.4byte	0x877
	.uleb128 0x8
	.4byte	.LASF1432
	.byte	0xe
	.byte	0xac
	.4byte	0x2c5d
	.uleb128 0x8
	.4byte	.LASF1433
	.byte	0xe
	.byte	0xad
	.4byte	0x586
	.uleb128 0x23
	.ascii	"def\000"
	.byte	0xe
	.byte	0xae
	.4byte	0x2cdc
	.uleb128 0x8
	.4byte	.LASF1434
	.byte	0xe
	.byte	0xaf
	.4byte	0x2d67
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x39
	.uleb128 0xd
	.4byte	.LASF1435
	.byte	0x2c
	.byte	0xf
	.byte	0x3f
	.4byte	0x2cdc
	.uleb128 0xc
	.4byte	.LASF1433
	.byte	0xf
	.byte	0x41
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1436
	.byte	0xf
	.byte	0x4f
	.4byte	0x3220
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1437
	.byte	0xf
	.byte	0x53
	.4byte	0x3240
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1438
	.byte	0xf
	.byte	0x55
	.4byte	0x39
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1439
	.byte	0xf
	.byte	0x56
	.4byte	0x39
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1440
	.byte	0xf
	.byte	0x60
	.4byte	0x325f
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1441
	.byte	0xf
	.byte	0x61
	.4byte	0x39
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1442
	.byte	0xf
	.byte	0x62
	.4byte	0x2c5d
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1443
	.byte	0xf
	.byte	0x66
	.4byte	0x2d67
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c63
	.uleb128 0xd
	.4byte	.LASF1444
	.byte	0x24
	.byte	0xe
	.byte	0xa1
	.4byte	0x2d67
	.uleb128 0xc
	.4byte	.LASF1445
	.byte	0xe
	.byte	0xa3
	.4byte	0x586
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1446
	.byte	0xe
	.byte	0xa4
	.4byte	0x39
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1447
	.byte	0xe
	.byte	0xa5
	.4byte	0x2c12
	.byte	0x8
	.uleb128 0xe
	.ascii	"m_x\000"
	.byte	0xe
	.byte	0xa6
	.4byte	0x4e
	.byte	0xa
	.uleb128 0xe
	.ascii	"m_y\000"
	.byte	0xe
	.byte	0xa7
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xe
	.ascii	"var\000"
	.byte	0xe
	.byte	0xb0
	.4byte	0x2c1d
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1448
	.byte	0xe
	.byte	0xb2
	.4byte	0x2c5d
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1449
	.byte	0xe
	.byte	0xb3
	.4byte	0x2c5d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1450
	.byte	0xe
	.byte	0xb4
	.4byte	0x2a3
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1451
	.byte	0xe
	.byte	0xb5
	.4byte	0x2d6d
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ce2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x586
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x10
	.byte	0x6a
	.4byte	0x2f25
	.uleb128 0x20
	.4byte	.LASF1452
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1453
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1454
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1455
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1456
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1457
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1458
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1459
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1460
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1461
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1462
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1463
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1464
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1465
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1466
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1467
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1468
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1469
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1470
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1471
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1472
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1473
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1474
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1475
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1476
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1477
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1478
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1479
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1480
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1481
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1482
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1483
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1484
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1485
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1486
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1487
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1488
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1489
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1490
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1491
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1492
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1493
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1494
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1495
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1496
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1497
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1498
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1499
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1500
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1501
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1502
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1503
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1504
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1505
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1506
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1507
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1508
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1509
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1510
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1511
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1512
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1513
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1514
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1515
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1516
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1517
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1518
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1519
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1520
	.sleb128 68
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x10
	.byte	0xb6
	.4byte	0x3213
	.uleb128 0x20
	.4byte	.LASF1521
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1522
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1523
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1524
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1525
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1526
	.sleb128 5
	.uleb128 0x20
	.4byte	.LASF1527
	.sleb128 6
	.uleb128 0x20
	.4byte	.LASF1528
	.sleb128 7
	.uleb128 0x20
	.4byte	.LASF1529
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1530
	.sleb128 9
	.uleb128 0x20
	.4byte	.LASF1531
	.sleb128 10
	.uleb128 0x20
	.4byte	.LASF1532
	.sleb128 11
	.uleb128 0x20
	.4byte	.LASF1533
	.sleb128 12
	.uleb128 0x20
	.4byte	.LASF1534
	.sleb128 13
	.uleb128 0x20
	.4byte	.LASF1535
	.sleb128 14
	.uleb128 0x20
	.4byte	.LASF1536
	.sleb128 15
	.uleb128 0x20
	.4byte	.LASF1537
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1538
	.sleb128 17
	.uleb128 0x20
	.4byte	.LASF1539
	.sleb128 18
	.uleb128 0x20
	.4byte	.LASF1540
	.sleb128 19
	.uleb128 0x20
	.4byte	.LASF1541
	.sleb128 20
	.uleb128 0x20
	.4byte	.LASF1542
	.sleb128 21
	.uleb128 0x20
	.4byte	.LASF1543
	.sleb128 22
	.uleb128 0x20
	.4byte	.LASF1544
	.sleb128 23
	.uleb128 0x20
	.4byte	.LASF1545
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1546
	.sleb128 25
	.uleb128 0x20
	.4byte	.LASF1547
	.sleb128 26
	.uleb128 0x20
	.4byte	.LASF1548
	.sleb128 27
	.uleb128 0x20
	.4byte	.LASF1549
	.sleb128 28
	.uleb128 0x20
	.4byte	.LASF1550
	.sleb128 29
	.uleb128 0x20
	.4byte	.LASF1551
	.sleb128 30
	.uleb128 0x20
	.4byte	.LASF1552
	.sleb128 31
	.uleb128 0x20
	.4byte	.LASF1553
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1554
	.sleb128 33
	.uleb128 0x20
	.4byte	.LASF1555
	.sleb128 34
	.uleb128 0x20
	.4byte	.LASF1556
	.sleb128 35
	.uleb128 0x20
	.4byte	.LASF1557
	.sleb128 36
	.uleb128 0x20
	.4byte	.LASF1558
	.sleb128 37
	.uleb128 0x20
	.4byte	.LASF1559
	.sleb128 38
	.uleb128 0x20
	.4byte	.LASF1560
	.sleb128 39
	.uleb128 0x20
	.4byte	.LASF1561
	.sleb128 40
	.uleb128 0x20
	.4byte	.LASF1562
	.sleb128 41
	.uleb128 0x20
	.4byte	.LASF1563
	.sleb128 42
	.uleb128 0x20
	.4byte	.LASF1564
	.sleb128 43
	.uleb128 0x20
	.4byte	.LASF1565
	.sleb128 44
	.uleb128 0x20
	.4byte	.LASF1566
	.sleb128 45
	.uleb128 0x20
	.4byte	.LASF1567
	.sleb128 46
	.uleb128 0x20
	.4byte	.LASF1568
	.sleb128 47
	.uleb128 0x20
	.4byte	.LASF1569
	.sleb128 48
	.uleb128 0x20
	.4byte	.LASF1570
	.sleb128 49
	.uleb128 0x20
	.4byte	.LASF1571
	.sleb128 50
	.uleb128 0x20
	.4byte	.LASF1572
	.sleb128 51
	.uleb128 0x20
	.4byte	.LASF1573
	.sleb128 52
	.uleb128 0x20
	.4byte	.LASF1574
	.sleb128 53
	.uleb128 0x20
	.4byte	.LASF1575
	.sleb128 54
	.uleb128 0x20
	.4byte	.LASF1576
	.sleb128 55
	.uleb128 0x20
	.4byte	.LASF1577
	.sleb128 56
	.uleb128 0x20
	.4byte	.LASF1578
	.sleb128 57
	.uleb128 0x20
	.4byte	.LASF1579
	.sleb128 58
	.uleb128 0x20
	.4byte	.LASF1580
	.sleb128 59
	.uleb128 0x20
	.4byte	.LASF1581
	.sleb128 60
	.uleb128 0x20
	.4byte	.LASF1582
	.sleb128 61
	.uleb128 0x20
	.4byte	.LASF1583
	.sleb128 62
	.uleb128 0x20
	.4byte	.LASF1584
	.sleb128 63
	.uleb128 0x20
	.4byte	.LASF1585
	.sleb128 64
	.uleb128 0x20
	.4byte	.LASF1586
	.sleb128 65
	.uleb128 0x20
	.4byte	.LASF1587
	.sleb128 66
	.uleb128 0x20
	.4byte	.LASF1588
	.sleb128 67
	.uleb128 0x20
	.4byte	.LASF1589
	.sleb128 68
	.uleb128 0x20
	.4byte	.LASF1590
	.sleb128 69
	.uleb128 0x20
	.4byte	.LASF1591
	.sleb128 70
	.uleb128 0x20
	.4byte	.LASF1592
	.sleb128 71
	.uleb128 0x20
	.4byte	.LASF1593
	.sleb128 72
	.uleb128 0x20
	.4byte	.LASF1594
	.sleb128 73
	.uleb128 0x20
	.4byte	.LASF1595
	.sleb128 74
	.uleb128 0x20
	.4byte	.LASF1596
	.sleb128 75
	.uleb128 0x20
	.4byte	.LASF1597
	.sleb128 76
	.uleb128 0x20
	.4byte	.LASF1598
	.sleb128 77
	.uleb128 0x20
	.4byte	.LASF1599
	.sleb128 78
	.uleb128 0x20
	.4byte	.LASF1600
	.sleb128 79
	.uleb128 0x20
	.4byte	.LASF1601
	.sleb128 80
	.uleb128 0x20
	.4byte	.LASF1602
	.sleb128 81
	.uleb128 0x20
	.4byte	.LASF1603
	.sleb128 82
	.uleb128 0x20
	.4byte	.LASF1604
	.sleb128 83
	.uleb128 0x20
	.4byte	.LASF1605
	.sleb128 84
	.uleb128 0x20
	.4byte	.LASF1606
	.sleb128 85
	.uleb128 0x20
	.4byte	.LASF1607
	.sleb128 86
	.uleb128 0x20
	.4byte	.LASF1608
	.sleb128 87
	.uleb128 0x20
	.4byte	.LASF1609
	.sleb128 88
	.uleb128 0x20
	.4byte	.LASF1610
	.sleb128 89
	.uleb128 0x20
	.4byte	.LASF1611
	.sleb128 90
	.uleb128 0x20
	.4byte	.LASF1612
	.sleb128 91
	.uleb128 0x20
	.4byte	.LASF1613
	.sleb128 92
	.uleb128 0x20
	.4byte	.LASF1614
	.sleb128 93
	.uleb128 0x20
	.4byte	.LASF1615
	.sleb128 94
	.uleb128 0x20
	.4byte	.LASF1616
	.sleb128 95
	.uleb128 0x20
	.4byte	.LASF1617
	.sleb128 96
	.uleb128 0x20
	.4byte	.LASF1618
	.sleb128 97
	.uleb128 0x20
	.4byte	.LASF1619
	.sleb128 98
	.uleb128 0x20
	.4byte	.LASF1620
	.sleb128 99
	.uleb128 0x20
	.4byte	.LASF1621
	.sleb128 100
	.uleb128 0x20
	.4byte	.LASF1622
	.sleb128 101
	.uleb128 0x20
	.4byte	.LASF1623
	.sleb128 102
	.uleb128 0x20
	.4byte	.LASF1624
	.sleb128 103
	.uleb128 0x20
	.4byte	.LASF1625
	.sleb128 104
	.uleb128 0x20
	.4byte	.LASF1626
	.sleb128 105
	.uleb128 0x20
	.4byte	.LASF1627
	.sleb128 106
	.uleb128 0x20
	.4byte	.LASF1628
	.sleb128 107
	.uleb128 0x20
	.4byte	.LASF1629
	.sleb128 108
	.uleb128 0x20
	.4byte	.LASF1630
	.sleb128 109
	.uleb128 0x20
	.4byte	.LASF1631
	.sleb128 110
	.uleb128 0x20
	.4byte	.LASF1632
	.sleb128 111
	.uleb128 0x20
	.4byte	.LASF1633
	.sleb128 112
	.uleb128 0x20
	.4byte	.LASF1634
	.sleb128 113
	.uleb128 0x20
	.4byte	.LASF1635
	.sleb128 114
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1636
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa2b
	.uleb128 0xb
	.byte	0x8
	.byte	0xf
	.byte	0x4c
	.4byte	0x3240
	.uleb128 0xe
	.ascii	"pi\000"
	.byte	0xf
	.byte	0x4d
	.4byte	0x2c5d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1637
	.byte	0xf
	.byte	0x4e
	.4byte	0x2d6d
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0xf
	.byte	0x50
	.4byte	0x325f
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0xf
	.byte	0x51
	.4byte	0x39
	.byte	0
	.uleb128 0xe
	.ascii	"psz\000"
	.byte	0xf
	.byte	0x52
	.4byte	0x586
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0xf
	.byte	0x57
	.4byte	0x3298
	.uleb128 0x20
	.4byte	.LASF1638
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1639
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1640
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1641
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1642
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1643
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1644
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1645
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1646
	.byte	0xf
	.byte	0x67
	.4byte	0x2c63
	.uleb128 0x1f
	.byte	0x1
	.byte	0x11
	.byte	0x28
	.4byte	0x32d7
	.uleb128 0x20
	.4byte	.LASF1647
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1648
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1649
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1650
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF1651
	.sleb128 16
	.uleb128 0x20
	.4byte	.LASF1652
	.sleb128 32
	.uleb128 0x20
	.4byte	.LASF1653
	.sleb128 64
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1654
	.byte	0x11
	.byte	0x30
	.4byte	0x32a3
	.uleb128 0x22
	.4byte	.LASF1656
	.byte	0x4
	.byte	0x12
	.byte	0x35
	.4byte	0x3317
	.uleb128 0x20
	.4byte	.LASF1657
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1658
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1659
	.sleb128 2
	.uleb128 0x20
	.4byte	.LASF1660
	.sleb128 3
	.uleb128 0x20
	.4byte	.LASF1661
	.sleb128 4
	.uleb128 0x20
	.4byte	.LASF1662
	.sleb128 4294967295
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1663
	.byte	0x4
	.byte	0x12
	.byte	0x41
	.4byte	0x333a
	.uleb128 0x20
	.4byte	.LASF1664
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF1665
	.sleb128 1
	.uleb128 0x20
	.4byte	.LASF1666
	.sleb128 4294967295
	.byte	0
	.uleb128 0xb
	.byte	0x38
	.byte	0x12
	.byte	0x6f
	.4byte	0x33eb
	.uleb128 0xc
	.4byte	.LASF1667
	.byte	0x12
	.byte	0x70
	.4byte	0x321a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1668
	.byte	0x12
	.byte	0x71
	.4byte	0x33eb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF1669
	.byte	0x12
	.byte	0x72
	.4byte	0x33f1
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF1670
	.byte	0x12
	.byte	0x73
	.4byte	0x39
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF1671
	.byte	0x12
	.byte	0x74
	.4byte	0x39
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF1672
	.byte	0x12
	.byte	0x75
	.4byte	0x39
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF1673
	.byte	0x12
	.byte	0x77
	.4byte	0x32e2
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF1674
	.byte	0x12
	.byte	0x78
	.4byte	0x32e2
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF1675
	.byte	0x12
	.byte	0x79
	.4byte	0x32e2
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF1676
	.byte	0x12
	.byte	0x7a
	.4byte	0x32e2
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF1677
	.byte	0x12
	.byte	0x7b
	.4byte	0x32e2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF1678
	.byte	0x12
	.byte	0x7d
	.4byte	0x3317
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF1679
	.byte	0x12
	.byte	0x7e
	.4byte	0x3317
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF1680
	.byte	0x12
	.byte	0x83
	.4byte	0xac8
	.byte	0x34
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x55
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF1681
	.byte	0x12
	.byte	0x84
	.4byte	0x333a
	.uleb128 0x24
	.4byte	.LASF1682
	.byte	0x1
	.byte	0x4d
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF1683
	.byte	0x1
	.byte	0x4e
	.byte	0x3
	.uleb128 0x25
	.4byte	.LASF1686
	.byte	0x1
	.byte	0x56
	.4byte	0xa20
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34d6
	.uleb128 0x26
	.4byte	.LASF1433
	.byte	0x1
	.byte	0x56
	.4byte	0x586
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LASF1684
	.byte	0x1
	.byte	0x56
	.4byte	0x37
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LASF1685
	.byte	0x1
	.byte	0x56
	.4byte	0x39
	.4byte	.LLST2
	.uleb128 0x27
	.ascii	"fp\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x2d73
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0x45a8
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0x45b3
	.4byte	0x348c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0x45cd
	.4byte	0x34b1
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0x45f1
	.4byte	0x34c5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0x4606
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1687
	.byte	0x1
	.byte	0x70
	.4byte	0x39
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35fd
	.uleb128 0x26
	.4byte	.LASF1433
	.byte	0x1
	.byte	0x70
	.4byte	0x586
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF1688
	.byte	0x1
	.byte	0x70
	.4byte	0x35fd
	.4byte	.LLST5
	.uleb128 0x27
	.ascii	"fp\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x2d73
	.4byte	.LLST6
	.uleb128 0x2c
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x35e2
	.uleb128 0x2d
	.4byte	.LASF1685
	.byte	0x1
	.byte	0x76
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x461b
	.4byte	0x3555
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL15
	.4byte	0x463a
	.4byte	0x3569
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0x461b
	.4byte	0x3587
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0x464f
	.4byte	0x35a5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0x4674
	.4byte	0x35c4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0x45f1
	.4byte	0x35d8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0x45f1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL13
	.4byte	0x45b3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x321a
	.uleb128 0x2e
	.4byte	.LASF1690
	.byte	0x1
	.2byte	0x356
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3708
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x358
	.4byte	0x39
	.4byte	.LLST8
	.uleb128 0x2f
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x359
	.4byte	0x2d73
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LVL27
	.4byte	0x45b3
	.4byte	0x364c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0x4698
	.4byte	0x3673
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL30
	.4byte	0x4698
	.4byte	0x369a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0x4698
	.4byte	0x36c1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x28
	.4byte	.LVL34
	.4byte	0x46c0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0x46c0
	.4byte	0x36e7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL39
	.4byte	0x46c0
	.4byte	0x36fe
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x30
	.4byte	.LVL42
	.4byte	0x45f1
	.byte	0
	.uleb128 0x31
	.4byte	.LASF1689
	.byte	0x1
	.2byte	0x383
	.4byte	0x2cdc
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x376e
	.uleb128 0x32
	.4byte	.LASF1433
	.byte	0x1
	.2byte	0x383
	.4byte	0x586
	.4byte	.LLST10
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x385
	.4byte	0x39
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0x46db
	.4byte	0x3754
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0x46f5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF1691
	.byte	0x1
	.2byte	0x393
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a63
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x395
	.4byte	0x39
	.4byte	.LLST12
	.uleb128 0x2f
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x396
	.4byte	0x39
	.4byte	.LLST13
	.uleb128 0x2f
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x397
	.4byte	0x2d73
	.4byte	.LLST14
	.uleb128 0x33
	.ascii	"def\000"
	.byte	0x1
	.2byte	0x398
	.4byte	0x3a63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x34
	.4byte	.LASF1692
	.byte	0x1
	.2byte	0x399
	.4byte	0x3a73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x35
	.4byte	.LASF1693
	.byte	0x1
	.2byte	0x39a
	.4byte	0x555
	.4byte	.LLST15
	.uleb128 0x34
	.4byte	.LASF1694
	.byte	0x1
	.2byte	0x39b
	.4byte	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x35
	.4byte	.LASF1695
	.byte	0x1
	.2byte	0x39c
	.4byte	0xa20
	.4byte	.LLST16
	.uleb128 0x2c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x389b
	.uleb128 0x35
	.4byte	.LASF1696
	.byte	0x1
	.2byte	0x3b4
	.4byte	0x586
	.4byte	.LLST17
	.uleb128 0x2f
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x3b6
	.4byte	0x39
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LVL56
	.4byte	0x4707
	.uleb128 0x29
	.4byte	.LVL59
	.4byte	0x4712
	.4byte	0x385d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL61
	.4byte	0x464f
	.4byte	0x387b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL62
	.4byte	0x4712
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x38de
	.uleb128 0x1b
	.byte	0x4
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x38c6
	.uleb128 0x36
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x2d6d
	.uleb128 0x36
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x3a83
	.byte	0
	.uleb128 0x2f
	.ascii	"u\000"
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x38a8
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LVL80
	.4byte	0x4732
	.byte	0
	.uleb128 0x29
	.4byte	.LVL53
	.4byte	0x4743
	.4byte	0x38f6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0x4762
	.4byte	0x390d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x29
	.4byte	.LVL64
	.4byte	0x4777
	.4byte	0x3929
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x29
	.4byte	.LVL65
	.4byte	0x45b3
	.4byte	0x3940
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x29
	.4byte	.LVL68
	.4byte	0x4792
	.4byte	0x396b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL69
	.4byte	0x47ad
	.4byte	0x3990
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x29
	.4byte	.LVL72
	.4byte	0x4777
	.4byte	0x39a9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x29
	.4byte	.LVL75
	.4byte	0x46db
	.4byte	0x39c4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x29
	.4byte	.LVL77
	.4byte	0x45f1
	.4byte	0x39d8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL84
	.4byte	0x4743
	.4byte	0x39f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL86
	.4byte	0x47ad
	.4byte	0x3a15
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -146
	.byte	0
	.uleb128 0x29
	.4byte	.LVL88
	.4byte	0x47c8
	.4byte	0x3a2a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x29
	.4byte	.LVL90
	.4byte	0x464f
	.4byte	0x3a49
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL93
	.4byte	0x47dd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -147
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x3a73
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	0x55b
	.4byte	0x3a83
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x63
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x555
	.uleb128 0x2e
	.4byte	.LASF1697
	.byte	0x1
	.2byte	0x414
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ad8
	.uleb128 0x32
	.4byte	.LASF1698
	.byte	0x1
	.2byte	0x414
	.4byte	0x586
	.4byte	.LLST20
	.uleb128 0x29
	.4byte	.LVL95
	.4byte	0x47f7
	.4byte	0x3ac4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x37
	.4byte	.LVL96
	.4byte	0x480c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF1699
	.byte	0x1
	.2byte	0x424
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c78
	.uleb128 0x34
	.4byte	.LASF1700
	.byte	0x1
	.2byte	0x426
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	shot.9417
	.uleb128 0x35
	.4byte	.LASF1701
	.byte	0x1
	.2byte	0x427
	.4byte	0x555
	.4byte	.LLST21
	.uleb128 0x35
	.4byte	.LASF1702
	.byte	0x1
	.2byte	0x428
	.4byte	0x39
	.4byte	.LLST22
	.uleb128 0x35
	.4byte	.LASF1703
	.byte	0x1
	.2byte	0x429
	.4byte	0x39
	.4byte	.LLST23
	.uleb128 0x38
	.4byte	.LASF1910
	.byte	0x1
	.2byte	0x42b
	.4byte	0x39
	.4byte	0x3b42
	.uleb128 0x39
	.byte	0
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x3bd2
	.uleb128 0x35
	.4byte	.LASF1704
	.byte	0x1
	.2byte	0x430
	.4byte	0x39
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	.LVL102
	.4byte	0x4712
	.4byte	0x3b85
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL104
	.4byte	0x481e
	.4byte	0x3ba9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL106
	.4byte	0x4712
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL98
	.4byte	0x4842
	.4byte	0x3bee
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x29
	.4byte	.LVL107
	.4byte	0x4842
	.4byte	0x3c07
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL108
	.4byte	0x4842
	.4byte	0x3c20
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL109
	.4byte	0x4854
	.4byte	0x3c33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL110
	.4byte	0x3a89
	.4byte	0x3c47
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL112
	.4byte	0x4732
	.uleb128 0x29
	.4byte	.LVL113
	.4byte	0x4732
	.4byte	0x3c64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL114
	.4byte	0x480c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF1929
	.byte	0x14
	.byte	0x50
	.4byte	0x3c83
	.uleb128 0x18
	.4byte	0x3c88
	.uleb128 0xf
	.byte	0x4
	.4byte	0xac8
	.uleb128 0x34
	.4byte	.LASF1705
	.byte	0x1
	.2byte	0x350
	.4byte	0x555
	.uleb128 0x5
	.byte	0x3
	.4byte	defaultfile
	.uleb128 0x3c
	.4byte	.LASF1706
	.byte	0x13
	.byte	0x2d
	.4byte	0x555
	.uleb128 0x9
	.4byte	0xac8
	.4byte	0x3cbc
	.uleb128 0x3d
	.4byte	0xd4
	.2byte	0x27ff
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1707
	.byte	0x14
	.byte	0x4d
	.4byte	0x3cab
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x3cdd
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x9
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1708
	.byte	0xc
	.byte	0x55
	.4byte	0x3cc7
	.uleb128 0x3c
	.4byte	.LASF1709
	.byte	0xd
	.byte	0x3e
	.4byte	0x8e4
	.uleb128 0x3c
	.4byte	.LASF1710
	.byte	0xd
	.byte	0x45
	.4byte	0xabd
	.uleb128 0x3c
	.4byte	.LASF1711
	.byte	0xd
	.byte	0x4d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1712
	.byte	0xd
	.byte	0x4f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1713
	.byte	0xd
	.byte	0x52
	.4byte	0x39
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x3d2f
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1f
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1714
	.byte	0xd
	.byte	0x75
	.4byte	0x3d1f
	.uleb128 0x3c
	.4byte	.LASF1715
	.byte	0xd
	.byte	0x75
	.4byte	0x3d1f
	.uleb128 0x3c
	.4byte	.LASF1716
	.byte	0xd
	.byte	0xa0
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1717
	.byte	0xd
	.byte	0xa1
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1718
	.byte	0xd
	.byte	0xa4
	.4byte	0x30
	.uleb128 0x3c
	.4byte	.LASF1719
	.byte	0xd
	.byte	0xa4
	.4byte	0x30
	.uleb128 0x3c
	.4byte	.LASF1720
	.byte	0xd
	.byte	0xb1
	.4byte	0x2bc6
	.uleb128 0x3e
	.4byte	.LASF1721
	.byte	0x1
	.byte	0x90
	.4byte	0xa20
	.uleb128 0x5
	.byte	0x3
	.4byte	precache
	.uleb128 0x3f
	.4byte	.LASF1722
	.byte	0xd
	.2byte	0x10d
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1723
	.byte	0xd
	.2byte	0x10e
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1724
	.byte	0xd
	.2byte	0x124
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1725
	.byte	0xd
	.2byte	0x125
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1726
	.byte	0xd
	.2byte	0x127
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1727
	.byte	0xd
	.2byte	0x128
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1728
	.byte	0xd
	.2byte	0x12a
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1729
	.byte	0xd
	.2byte	0x12b
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1730
	.byte	0xd
	.2byte	0x12d
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1731
	.byte	0xd
	.2byte	0x12e
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1732
	.byte	0xd
	.2byte	0x130
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1733
	.byte	0xd
	.2byte	0x131
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1734
	.byte	0xd
	.2byte	0x134
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1735
	.byte	0xd
	.2byte	0x135
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1736
	.byte	0xd
	.2byte	0x135
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1737
	.byte	0xd
	.2byte	0x139
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1738
	.byte	0xd
	.2byte	0x139
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1739
	.byte	0xd
	.2byte	0x13c
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1740
	.byte	0xd
	.2byte	0x13c
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1741
	.byte	0xd
	.2byte	0x13f
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1742
	.byte	0xd
	.2byte	0x13f
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1743
	.byte	0xd
	.2byte	0x142
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1744
	.byte	0xd
	.2byte	0x142
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1745
	.byte	0xd
	.2byte	0x145
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1746
	.byte	0xd
	.2byte	0x145
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1747
	.byte	0xd
	.2byte	0x147
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1748
	.byte	0xd
	.2byte	0x149
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1749
	.byte	0xd
	.2byte	0x14c
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1750
	.byte	0xd
	.2byte	0x14c
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1751
	.byte	0xd
	.2byte	0x14e
	.4byte	0x39
	.uleb128 0x3f
	.4byte	.LASF1752
	.byte	0xd
	.2byte	0x14e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1753
	.byte	0x15
	.byte	0x29
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1754
	.byte	0x15
	.byte	0x2a
	.4byte	0x3f17
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3f1d
	.uleb128 0x18
	.4byte	0x586
	.uleb128 0x3c
	.4byte	.LASF1755
	.byte	0x16
	.byte	0x5a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1756
	.byte	0x16
	.byte	0x5b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1757
	.byte	0x16
	.byte	0x5c
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1758
	.byte	0x16
	.byte	0x5d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1759
	.byte	0x16
	.byte	0x5e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1760
	.byte	0x16
	.byte	0x5f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1761
	.byte	0x16
	.byte	0x60
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1762
	.byte	0x16
	.byte	0x61
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1763
	.byte	0x16
	.byte	0x62
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1764
	.byte	0x16
	.byte	0x63
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1765
	.byte	0x16
	.byte	0x64
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1766
	.byte	0x16
	.byte	0x65
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1767
	.byte	0x16
	.byte	0x66
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1768
	.byte	0x16
	.byte	0x68
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1769
	.byte	0x16
	.byte	0x69
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1770
	.byte	0x16
	.byte	0x6a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1771
	.byte	0x16
	.byte	0x6b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1772
	.byte	0x16
	.byte	0x6d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1773
	.byte	0x16
	.byte	0x6e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1774
	.byte	0x16
	.byte	0x6f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1775
	.byte	0x16
	.byte	0x70
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1776
	.byte	0x16
	.byte	0x71
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1777
	.byte	0x16
	.byte	0x72
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1778
	.byte	0x16
	.byte	0x73
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1779
	.byte	0x16
	.byte	0x74
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1780
	.byte	0x16
	.byte	0x75
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1781
	.byte	0x16
	.byte	0x77
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1782
	.byte	0x16
	.byte	0x78
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1783
	.byte	0x16
	.byte	0x79
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1784
	.byte	0x16
	.byte	0x7a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1785
	.byte	0x16
	.byte	0x7b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1786
	.byte	0x16
	.byte	0x7c
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1787
	.byte	0x16
	.byte	0x7d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1788
	.byte	0x16
	.byte	0x7e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1789
	.byte	0x16
	.byte	0x7f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1790
	.byte	0x16
	.byte	0x80
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1791
	.byte	0x16
	.byte	0x81
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1792
	.byte	0x16
	.byte	0x86
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1793
	.byte	0x16
	.byte	0x87
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1794
	.byte	0x16
	.byte	0x88
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1795
	.byte	0x16
	.byte	0x89
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1796
	.byte	0x16
	.byte	0x8a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1797
	.byte	0x16
	.byte	0x8b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1798
	.byte	0x16
	.byte	0x8c
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1799
	.byte	0x16
	.byte	0x8d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1800
	.byte	0x16
	.byte	0x8e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1801
	.byte	0x16
	.byte	0x8f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1802
	.byte	0x16
	.byte	0x90
	.4byte	0x2b0b
	.uleb128 0x3c
	.4byte	.LASF1803
	.byte	0x16
	.byte	0x91
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1804
	.byte	0x16
	.byte	0x92
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1805
	.byte	0x16
	.byte	0x93
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1806
	.byte	0x16
	.byte	0x94
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1807
	.byte	0x16
	.byte	0x95
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1808
	.byte	0x16
	.byte	0x96
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1809
	.byte	0x16
	.byte	0x97
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1810
	.byte	0x16
	.byte	0x98
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1811
	.byte	0x16
	.byte	0x99
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1812
	.byte	0x16
	.byte	0x9a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1813
	.byte	0x16
	.byte	0x9b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1814
	.byte	0x16
	.byte	0x9c
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1815
	.byte	0x16
	.byte	0x9d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1816
	.byte	0x16
	.byte	0x9e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1817
	.byte	0x16
	.byte	0x9f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1818
	.byte	0x16
	.byte	0xa0
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1819
	.byte	0x16
	.byte	0xa1
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1820
	.byte	0x16
	.byte	0xa2
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1821
	.byte	0x16
	.byte	0xa3
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1822
	.byte	0x16
	.byte	0xa4
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1823
	.byte	0x16
	.byte	0xa5
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1824
	.byte	0x16
	.byte	0xa6
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1825
	.byte	0x16
	.byte	0xac
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1826
	.byte	0x16
	.byte	0xaf
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1827
	.byte	0xe
	.byte	0x54
	.4byte	0xa20
	.uleb128 0x3c
	.4byte	.LASF1828
	.byte	0x17
	.byte	0x52
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1829
	.byte	0x17
	.byte	0x53
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1830
	.byte	0x17
	.byte	0x54
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1831
	.byte	0x17
	.byte	0x55
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1832
	.byte	0x17
	.byte	0x56
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1833
	.byte	0x17
	.byte	0x57
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1834
	.byte	0x17
	.byte	0x58
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1835
	.byte	0x17
	.byte	0x59
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1836
	.byte	0x17
	.byte	0x5a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1837
	.byte	0x17
	.byte	0x5b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1838
	.byte	0x17
	.byte	0x5c
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1839
	.byte	0x17
	.byte	0x5d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1840
	.byte	0x17
	.byte	0x5e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1841
	.byte	0x17
	.byte	0x5f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1842
	.byte	0x17
	.byte	0x61
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1843
	.byte	0x17
	.byte	0x62
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1844
	.byte	0x17
	.byte	0x63
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1845
	.byte	0x17
	.byte	0x64
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1846
	.byte	0x17
	.byte	0x65
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1847
	.byte	0x17
	.byte	0x66
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1848
	.byte	0x17
	.byte	0x67
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1849
	.byte	0x17
	.byte	0x68
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1850
	.byte	0x17
	.byte	0x69
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1851
	.byte	0x17
	.byte	0x6b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1852
	.byte	0x17
	.byte	0x6d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1853
	.byte	0x18
	.byte	0x73
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1854
	.byte	0x18
	.byte	0x74
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1855
	.byte	0x18
	.byte	0x76
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1856
	.byte	0x19
	.byte	0x5a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1857
	.byte	0x19
	.byte	0x7b
	.4byte	0x586
	.uleb128 0x3c
	.4byte	.LASF1858
	.byte	0x1a
	.byte	0x4e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1859
	.byte	0x1a
	.byte	0x4f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1860
	.byte	0x1b
	.byte	0x4a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1861
	.byte	0x1b
	.byte	0x4b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1862
	.byte	0x1b
	.byte	0x4d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1863
	.byte	0x1b
	.byte	0x4e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1864
	.byte	0x1b
	.byte	0x50
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1865
	.byte	0x1b
	.byte	0x51
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1866
	.byte	0x1b
	.byte	0x52
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1867
	.byte	0x1b
	.byte	0x53
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1868
	.byte	0x1b
	.byte	0x55
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1869
	.byte	0x1b
	.byte	0x57
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1870
	.byte	0x1b
	.byte	0x58
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1871
	.byte	0x1c
	.byte	0x59
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1872
	.byte	0x1c
	.byte	0x5a
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1873
	.byte	0x1c
	.byte	0x5b
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1874
	.byte	0x1c
	.byte	0x5c
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1875
	.byte	0x1c
	.byte	0x5d
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1876
	.byte	0x1c
	.byte	0x5e
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1877
	.byte	0x1c
	.byte	0x5f
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1878
	.byte	0x1c
	.byte	0x60
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1879
	.byte	0x1c
	.byte	0x61
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1880
	.byte	0x1c
	.byte	0x62
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1881
	.byte	0x1c
	.byte	0x63
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1882
	.byte	0x1d
	.byte	0x5e
	.4byte	0x39
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x44b2
	.uleb128 0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1883
	.byte	0x1e
	.byte	0x4e
	.4byte	0x44a2
	.uleb128 0x3c
	.4byte	.LASF1884
	.byte	0x1e
	.byte	0x4e
	.4byte	0x44a2
	.uleb128 0x3c
	.4byte	.LASF1885
	.byte	0x12
	.byte	0x86
	.4byte	0x33f7
	.uleb128 0x3c
	.4byte	.LASF1886
	.byte	0x1f
	.byte	0x27
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1887
	.byte	0x1f
	.byte	0x28
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1888
	.byte	0x20
	.byte	0x28
	.4byte	0x39
	.uleb128 0x3e
	.4byte	.LASF1889
	.byte	0x1
	.byte	0x8f
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	usemouse
	.uleb128 0x3c
	.4byte	.LASF1890
	.byte	0x1
	.byte	0xa1
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1891
	.byte	0x1
	.byte	0xa2
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1892
	.byte	0x1
	.byte	0xa4
	.4byte	0x39
	.uleb128 0x3c
	.4byte	.LASF1893
	.byte	0x1
	.byte	0xa5
	.4byte	0x39
	.uleb128 0x3e
	.4byte	.LASF1894
	.byte	0x1
	.byte	0xa8
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	mus_pause_opt
	.uleb128 0x9
	.4byte	0x586
	.4byte	0x454d
	.uleb128 0x40
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF1895
	.byte	0x1
	.byte	0xab
	.4byte	0x4542
	.uleb128 0x3c
	.4byte	.LASF1896
	.byte	0x1
	.byte	0xad
	.4byte	0x4542
	.uleb128 0x3e
	.4byte	.LASF1897
	.byte	0x1
	.byte	0xb2
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	map_point_coordinates
	.uleb128 0x9
	.4byte	0x3298
	.4byte	0x4585
	.uleb128 0x3d
	.4byte	0xd4
	.2byte	0x12f
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF1898
	.byte	0x1
	.byte	0xb4
	.4byte	0x4574
	.uleb128 0x5
	.byte	0x3
	.4byte	defaults
	.uleb128 0x41
	.4byte	.LASF1899
	.byte	0x1
	.2byte	0x34f
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	numdefaults
	.uleb128 0x42
	.4byte	.LASF1912
	.byte	0x22
	.byte	0xf
	.4byte	0x2c5d
	.uleb128 0x43
	.4byte	.LASF1900
	.byte	0x6
	.byte	0xd8
	.4byte	0x2d73
	.4byte	0x45cd
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1901
	.byte	0x6
	.byte	0xc5
	.4byte	0x25
	.4byte	0x45f1
	.uleb128 0x14
	.4byte	0x877
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x2d73
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1902
	.byte	0x6
	.byte	0xa4
	.4byte	0x39
	.4byte	0x4606
	.uleb128 0x14
	.4byte	0x2d73
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1903
	.byte	0x6
	.byte	0xdb
	.4byte	0x39
	.4byte	0x461b
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1904
	.byte	0x6
	.byte	0xcb
	.4byte	0x39
	.4byte	0x463a
	.uleb128 0x14
	.4byte	0x2d73
	.uleb128 0x14
	.4byte	0x5c
	.uleb128 0x14
	.4byte	0x39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1905
	.byte	0x6
	.byte	0xd1
	.4byte	0x5c
	.4byte	0x464f
	.uleb128 0x14
	.4byte	0x2d73
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1906
	.byte	0x7
	.byte	0x49
	.4byte	0x37
	.4byte	0x466e
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x466e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.uleb128 0x43
	.4byte	.LASF1907
	.byte	0x6
	.byte	0xc4
	.4byte	0x25
	.4byte	0x4698
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x2d73
	.byte	0
	.uleb128 0x44
	.4byte	.LASF1930
	.byte	0x24
	.byte	0
	.4byte	.LASF1901
	.4byte	0x30
	.4byte	0x46c0
	.uleb128 0x14
	.4byte	0x877
	.uleb128 0x14
	.4byte	0x30
	.uleb128 0x14
	.4byte	0x30
	.uleb128 0x14
	.4byte	0x37
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1908
	.byte	0x6
	.byte	0xa9
	.4byte	0x39
	.4byte	0x46db
	.uleb128 0x14
	.4byte	0x2d73
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1909
	.byte	0x21
	.byte	0x1c
	.4byte	0x39
	.4byte	0x46f5
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x45
	.4byte	.LASF1911
	.byte	0x11
	.byte	0x3d
	.4byte	0x4707
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x42
	.4byte	.LASF1913
	.byte	0x23
	.byte	0x41
	.4byte	0x586
	.uleb128 0x43
	.4byte	.LASF1914
	.byte	0x11
	.byte	0x47
	.4byte	0x39
	.4byte	0x4732
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x45
	.4byte	.LASF1915
	.byte	0x7
	.byte	0x4a
	.4byte	0x4743
	.uleb128 0x14
	.4byte	0x37
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1916
	.byte	0x7
	.byte	0x51
	.4byte	0x555
	.4byte	0x4762
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x466e
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1917
	.byte	0x15
	.byte	0x2d
	.4byte	0x39
	.4byte	0x4777
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1918
	.byte	0x11
	.byte	0x36
	.4byte	0x39
	.4byte	0x4792
	.uleb128 0x14
	.4byte	0x32d7
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1919
	.byte	0x6
	.byte	0xab
	.4byte	0x39
	.4byte	0x47ad
	.uleb128 0x14
	.4byte	0x2d73
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1920
	.byte	0x6
	.byte	0xb1
	.4byte	0x39
	.4byte	0x47c8
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1921
	.byte	0x21
	.byte	0x21
	.4byte	0x25
	.4byte	0x47dd
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1922
	.byte	0x21
	.byte	0x1e
	.4byte	0x555
	.4byte	0x47f7
	.uleb128 0x14
	.4byte	0x555
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1923
	.byte	0x1a
	.byte	0x39
	.4byte	0x39
	.4byte	0x480c
	.uleb128 0x14
	.4byte	0x586
	.byte	0
	.uleb128 0x45
	.4byte	.LASF1924
	.byte	0x16
	.byte	0x56
	.4byte	0x481e
	.uleb128 0x14
	.4byte	0x586
	.uleb128 0x39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1925
	.byte	0x7
	.byte	0x50
	.4byte	0x37
	.4byte	0x4842
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x25
	.uleb128 0x14
	.4byte	0x39
	.uleb128 0x14
	.4byte	0x466e
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1910
	.byte	0x1
	.2byte	0x42b
	.4byte	0x39
	.4byte	0x4854
	.uleb128 0x39
	.byte	0
	.uleb128 0x46
	.4byte	.LASF1931
	.byte	0x1d
	.byte	0x3e
	.uleb128 0x14
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x39
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
	.uleb128 0x24
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-1-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -236
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -236
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -236
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -236
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL61-1-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95-1-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106-1-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL112-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
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
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF837:
	.ascii	"S_BSPI_RUN1\000"
.LASF838:
	.ascii	"S_BSPI_RUN2\000"
.LASF839:
	.ascii	"S_BSPI_RUN3\000"
.LASF840:
	.ascii	"S_BSPI_RUN4\000"
.LASF841:
	.ascii	"S_BSPI_RUN5\000"
.LASF842:
	.ascii	"S_BSPI_RUN6\000"
.LASF843:
	.ascii	"S_BSPI_RUN7\000"
.LASF844:
	.ascii	"S_BSPI_RUN8\000"
.LASF845:
	.ascii	"S_BSPI_RUN9\000"
.LASF1565:
	.ascii	"sfx_cybsit\000"
.LASF1531:
	.ascii	"sfx_sawup\000"
.LASF1790:
	.ascii	"key_pause\000"
.LASF492:
	.ascii	"S_FIRE10\000"
.LASF493:
	.ascii	"S_FIRE11\000"
.LASF494:
	.ascii	"S_FIRE12\000"
.LASF495:
	.ascii	"S_FIRE13\000"
.LASF496:
	.ascii	"S_FIRE14\000"
.LASF497:
	.ascii	"S_FIRE15\000"
.LASF498:
	.ascii	"S_FIRE16\000"
.LASF499:
	.ascii	"S_FIRE17\000"
.LASF500:
	.ascii	"S_FIRE18\000"
.LASF501:
	.ascii	"S_FIRE19\000"
.LASF1739:
	.ascii	"monster_backing\000"
.LASF1721:
	.ascii	"precache\000"
.LASF1712:
	.ascii	"default_translucency\000"
.LASF1373:
	.ascii	"MT_MISC84\000"
.LASF1306:
	.ascii	"MT_MISC20\000"
.LASF1060:
	.ascii	"S_MEGA2\000"
.LASF1061:
	.ascii	"S_MEGA3\000"
.LASF1062:
	.ascii	"S_MEGA4\000"
.LASF1310:
	.ascii	"MT_MISC24\000"
.LASF1311:
	.ascii	"MT_MISC25\000"
.LASF1313:
	.ascii	"MT_MISC26\000"
.LASF1314:
	.ascii	"MT_MISC27\000"
.LASF1315:
	.ascii	"MT_MISC28\000"
.LASF1318:
	.ascii	"MT_MISC29\000"
.LASF691:
	.ascii	"S_SARG_PAIN2\000"
.LASF1767:
	.ascii	"key_straferight\000"
.LASF1796:
	.ascii	"key_weapon4\000"
.LASF142:
	.ascii	"wp_pistol\000"
.LASF1425:
	.ascii	"am_follow\000"
.LASF1917:
	.ascii	"M_CheckParm\000"
.LASF1637:
	.ascii	"ppsz\000"
.LASF1517:
	.ascii	"mus_read_m\000"
.LASF1627:
	.ascii	"sfx_skesit\000"
.LASF1608:
	.ascii	"sfx_tink\000"
.LASF502:
	.ascii	"S_FIRE20\000"
.LASF503:
	.ascii	"S_FIRE21\000"
.LASF504:
	.ascii	"S_FIRE22\000"
.LASF505:
	.ascii	"S_FIRE23\000"
.LASF506:
	.ascii	"S_FIRE24\000"
.LASF507:
	.ascii	"S_FIRE25\000"
.LASF508:
	.ascii	"S_FIRE26\000"
.LASF509:
	.ascii	"S_FIRE27\000"
.LASF510:
	.ascii	"S_FIRE28\000"
.LASF511:
	.ascii	"S_FIRE29\000"
.LASF1641:
	.ascii	"def_hex\000"
.LASF1319:
	.ascii	"MT_MISC30\000"
.LASF1320:
	.ascii	"MT_MISC31\000"
.LASF1321:
	.ascii	"MT_MISC32\000"
.LASF1322:
	.ascii	"MT_MISC33\000"
.LASF853:
	.ascii	"S_BSPI_PAIN\000"
.LASF1324:
	.ascii	"MT_MISC35\000"
.LASF325:
	.ascii	"S_BFGEXP\000"
.LASF155:
	.ascii	"am_misl\000"
.LASF1327:
	.ascii	"MT_MISC38\000"
.LASF1328:
	.ascii	"MT_MISC39\000"
.LASF176:
	.ascii	"_Bool\000"
.LASF186:
	.ascii	"boom_compatibility_compatibility\000"
.LASF1836:
	.ascii	"mapcolor_ykey\000"
.LASF856:
	.ascii	"S_BSPI_DIE2\000"
.LASF1389:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF1394:
	.ascii	"NUMPSPRITES\000"
.LASF860:
	.ascii	"S_BSPI_DIE6\000"
.LASF1614:
	.ascii	"sfx_getpow\000"
.LASF1512:
	.ascii	"mus_tense\000"
.LASF63:
	.ascii	"_mbstate\000"
.LASF1453:
	.ascii	"mus_e1m1\000"
.LASF1454:
	.ascii	"mus_e1m2\000"
.LASF42:
	.ascii	"_atexit\000"
.LASF1456:
	.ascii	"mus_e1m4\000"
.LASF1457:
	.ascii	"mus_e1m5\000"
.LASF1458:
	.ascii	"mus_e1m6\000"
.LASF1459:
	.ascii	"mus_e1m7\000"
.LASF1460:
	.ascii	"mus_e1m8\000"
.LASF1461:
	.ascii	"mus_e1m9\000"
.LASF751:
	.ascii	"S_BOSS_RAISE1\000"
.LASF1691:
	.ascii	"M_LoadDefaults\000"
.LASF752:
	.ascii	"S_BOSS_RAISE2\000"
.LASF1253:
	.ascii	"MT_HEAD\000"
.LASF753:
	.ascii	"S_BOSS_RAISE3\000"
.LASF512:
	.ascii	"S_FIRE30\000"
.LASF657:
	.ascii	"S_TROO_PAIN\000"
.LASF946:
	.ascii	"S_SSWV_DIE1\000"
.LASF756:
	.ascii	"S_BOSS_RAISE6\000"
.LASF948:
	.ascii	"S_SSWV_DIE3\000"
.LASF949:
	.ascii	"S_SSWV_DIE4\000"
.LASF950:
	.ascii	"S_SSWV_DIE5\000"
.LASF768:
	.ascii	"S_BOS2_ATK1\000"
.LASF769:
	.ascii	"S_BOS2_ATK2\000"
.LASF770:
	.ascii	"S_BOS2_ATK3\000"
.LASF1868:
	.ascii	"hud_displayed\000"
.LASF1329:
	.ascii	"MT_MISC40\000"
.LASF1330:
	.ascii	"MT_MISC41\000"
.LASF1331:
	.ascii	"MT_MISC42\000"
.LASF1332:
	.ascii	"MT_MISC43\000"
.LASF525:
	.ascii	"S_SKEL_RUN1\000"
.LASF300:
	.ascii	"S_TBALL2\000"
.LASF527:
	.ascii	"S_SKEL_RUN3\000"
.LASF528:
	.ascii	"S_SKEL_RUN4\000"
.LASF529:
	.ascii	"S_SKEL_RUN5\000"
.LASF530:
	.ascii	"S_SKEL_RUN6\000"
.LASF531:
	.ascii	"S_SKEL_RUN7\000"
.LASF532:
	.ascii	"S_SKEL_RUN8\000"
.LASF533:
	.ascii	"S_SKEL_RUN9\000"
.LASF145:
	.ascii	"wp_missile\000"
.LASF1011:
	.ascii	"S_BEXP2\000"
.LASF706:
	.ascii	"S_HEAD_ATK1\000"
.LASF707:
	.ascii	"S_HEAD_ATK2\000"
.LASF708:
	.ascii	"S_HEAD_ATK3\000"
.LASF960:
	.ascii	"S_SSWV_RAISE1\000"
.LASF961:
	.ascii	"S_SSWV_RAISE2\000"
.LASF32:
	.ascii	"__tm_mon\000"
.LASF963:
	.ascii	"S_SSWV_RAISE4\000"
.LASF40:
	.ascii	"_fntypes\000"
.LASF1248:
	.ascii	"MT_FATSHOT\000"
.LASF1404:
	.ascii	"comp_falloff\000"
.LASF1631:
	.ascii	"sfx_dgatk\000"
.LASF1126:
	.ascii	"S_HEARTCOL\000"
.LASF70:
	.ascii	"_inc\000"
.LASF43:
	.ascii	"_ind\000"
.LASF1718:
	.ascii	"desired_screenwidth\000"
.LASF766:
	.ascii	"S_BOS2_RUN7\000"
.LASF1043:
	.ascii	"S_MEDI\000"
.LASF1050:
	.ascii	"S_PINV\000"
.LASF1297:
	.ascii	"MT_INS\000"
.LASF1340:
	.ascii	"MT_MISC51\000"
.LASF1341:
	.ascii	"MT_MISC52\000"
.LASF1295:
	.ascii	"MT_INV\000"
.LASF1343:
	.ascii	"MT_MISC54\000"
.LASF1926:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF261:
	.ascii	"S_MISSILEUP\000"
.LASF1346:
	.ascii	"MT_MISC57\000"
.LASF1347:
	.ascii	"MT_MISC58\000"
.LASF1348:
	.ascii	"MT_MISC59\000"
.LASF1700:
	.ascii	"shot\000"
.LASF1657:
	.ascii	"RDRAW_FILTER_NONE\000"
.LASF438:
	.ascii	"S_SPOS_RAISE1\000"
.LASF1820:
	.ascii	"mousebstrafe\000"
.LASF1525:
	.ascii	"sfx_dshtgn\000"
.LASF165:
	.ascii	"ss_none\000"
.LASF232:
	.ascii	"S_SGUNFLASH1\000"
.LASF233:
	.ascii	"S_SGUNFLASH2\000"
.LASF780:
	.ascii	"S_BOS2_RAISE1\000"
.LASF781:
	.ascii	"S_BOS2_RAISE2\000"
.LASF782:
	.ascii	"S_BOS2_RAISE3\000"
.LASF783:
	.ascii	"S_BOS2_RAISE4\000"
.LASF784:
	.ascii	"S_BOS2_RAISE5\000"
.LASF49:
	.ascii	"_flags\000"
.LASF786:
	.ascii	"S_BOS2_RAISE7\000"
.LASF545:
	.ascii	"S_SKEL_PAIN\000"
.LASF1032:
	.ascii	"S_RKEY\000"
.LASF1931:
	.ascii	"S_StartSound\000"
.LASF1537:
	.ascii	"sfx_firsht\000"
.LASF897:
	.ascii	"S_CYBER_DIE5\000"
.LASF1529:
	.ascii	"sfx_plasma\000"
.LASF214:
	.ascii	"S_PISTOLUP\000"
.LASF1451:
	.ascii	"selectstrings\000"
.LASF900:
	.ascii	"S_CYBER_DIE8\000"
.LASF1672:
	.ascii	"int_pitch\000"
.LASF1542:
	.ascii	"sfx_dorcls\000"
.LASF1349:
	.ascii	"MT_MISC60\000"
.LASF1350:
	.ascii	"MT_MISC61\000"
.LASF1351:
	.ascii	"MT_MISC62\000"
.LASF1352:
	.ascii	"MT_MISC63\000"
.LASF80:
	.ascii	"_cvtlen\000"
.LASF1354:
	.ascii	"MT_MISC65\000"
.LASF1355:
	.ascii	"MT_MISC66\000"
.LASF1356:
	.ascii	"MT_MISC67\000"
.LASF329:
	.ascii	"S_EXPLODE1\000"
.LASF330:
	.ascii	"S_EXPLODE2\000"
.LASF331:
	.ascii	"S_EXPLODE3\000"
.LASF430:
	.ascii	"S_SPOS_XDIE2\000"
.LASF1828:
	.ascii	"mapcolor_back\000"
.LASF84:
	.ascii	"_sig_func\000"
.LASF520:
	.ascii	"S_TRACEEXP1\000"
.LASF521:
	.ascii	"S_TRACEEXP2\000"
.LASF522:
	.ascii	"S_TRACEEXP3\000"
.LASF908:
	.ascii	"S_PAIN_RUN5\000"
.LASF1010:
	.ascii	"S_BEXP\000"
.LASF1680:
	.ascii	"mag_threshold\000"
.LASF1127:
	.ascii	"S_HEARTCOL2\000"
.LASF306:
	.ascii	"S_RBALLX1\000"
.LASF1683:
	.ascii	"I_EndRead\000"
.LASF1528:
	.ascii	"sfx_dbload\000"
.LASF1206:
	.ascii	"S_PLS1EXP\000"
.LASF1280:
	.ascii	"MT_TELEPORTMAN\000"
.LASF62:
	.ascii	"_lock\000"
.LASF58:
	.ascii	"_nbuf\000"
.LASF117:
	.ascii	"_unused\000"
.LASF1359:
	.ascii	"MT_MISC70\000"
.LASF927:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1361:
	.ascii	"MT_MISC72\000"
.LASF1362:
	.ascii	"MT_MISC73\000"
.LASF1363:
	.ascii	"MT_MISC74\000"
.LASF1364:
	.ascii	"MT_MISC75\000"
.LASF1365:
	.ascii	"MT_MISC76\000"
.LASF1133:
	.ascii	"S_GREENTORCH2\000"
.LASF1134:
	.ascii	"S_GREENTORCH3\000"
.LASF1135:
	.ascii	"S_GREENTORCH4\000"
.LASF1818:
	.ascii	"autorun\000"
.LASF1715:
	.ascii	"default_comp\000"
.LASF1809:
	.ascii	"key_map\000"
.LASF974:
	.ascii	"S_COMMKEEN9\000"
.LASF623:
	.ascii	"S_CPOS_PAIN2\000"
.LASF126:
	.ascii	"PU_NEWBLOCK\000"
.LASF846:
	.ascii	"S_BSPI_RUN10\000"
.LASF847:
	.ascii	"S_BSPI_RUN11\000"
.LASF848:
	.ascii	"S_BSPI_RUN12\000"
.LASF930:
	.ascii	"S_SSWV_RUN1\000"
.LASF931:
	.ascii	"S_SSWV_RUN2\000"
.LASF932:
	.ascii	"S_SSWV_RUN3\000"
.LASF933:
	.ascii	"S_SSWV_RUN4\000"
.LASF934:
	.ascii	"S_SSWV_RUN5\000"
.LASF935:
	.ascii	"S_SSWV_RUN6\000"
.LASF936:
	.ascii	"S_SSWV_RUN7\000"
.LASF937:
	.ascii	"S_SSWV_RUN8\000"
.LASF1115:
	.ascii	"S_SKULLCOL\000"
.LASF1482:
	.ascii	"mus_bunny\000"
.LASF1752:
	.ascii	"default_monkeys\000"
.LASF1447:
	.ascii	"m_group\000"
.LASF1247:
	.ascii	"MT_FATSO\000"
.LASF659:
	.ascii	"S_TROO_DIE1\000"
.LASF660:
	.ascii	"S_TROO_DIE2\000"
.LASF661:
	.ascii	"S_TROO_DIE3\000"
.LASF662:
	.ascii	"S_TROO_DIE4\000"
.LASF663:
	.ascii	"S_TROO_DIE5\000"
.LASF128:
	.ascii	"shareware\000"
.LASF1839:
	.ascii	"mapcolor_ydor\000"
.LASF73:
	.ascii	"_current_locale\000"
.LASF1040:
	.ascii	"S_YSKULL\000"
.LASF1041:
	.ascii	"S_YSKULL2\000"
.LASF1272:
	.ascii	"MT_ROCKET\000"
.LASF1370:
	.ascii	"MT_MISC81\000"
.LASF1371:
	.ascii	"MT_MISC82\000"
.LASF1372:
	.ascii	"MT_MISC83\000"
.LASF618:
	.ascii	"S_CPOS_ATK1\000"
.LASF619:
	.ascii	"S_CPOS_ATK2\000"
.LASF620:
	.ascii	"S_CPOS_ATK3\000"
.LASF621:
	.ascii	"S_CPOS_ATK4\000"
.LASF1239:
	.ascii	"MT_PLAYER\000"
.LASF347:
	.ascii	"S_IFOG2\000"
.LASF348:
	.ascii	"S_IFOG3\000"
.LASF349:
	.ascii	"S_IFOG4\000"
.LASF350:
	.ascii	"S_IFOG5\000"
.LASF1486:
	.ascii	"mus_stalks\000"
.LASF1129:
	.ascii	"S_BLUETORCH2\000"
.LASF1130:
	.ascii	"S_BLUETORCH3\000"
.LASF1131:
	.ascii	"S_BLUETORCH4\000"
.LASF743:
	.ascii	"S_BOSS_PAIN2\000"
.LASF443:
	.ascii	"S_VILE_STND\000"
.LASF971:
	.ascii	"S_COMMKEEN6\000"
.LASF972:
	.ascii	"S_COMMKEEN7\000"
.LASF973:
	.ascii	"S_COMMKEEN8\000"
.LASF822:
	.ascii	"S_SPID_PAIN2\000"
.LASF95:
	.ascii	"_add\000"
.LASF1692:
	.ascii	"strparm\000"
.LASF1555:
	.ascii	"sfx_oof\000"
.LASF1783:
	.ascii	"key_quicksave\000"
.LASF855:
	.ascii	"S_BSPI_DIE1\000"
.LASF1174:
	.ascii	"S_DOGS_STND\000"
.LASF1414:
	.ascii	"comp_moveblock\000"
.LASF1738:
	.ascii	"default_distfriend\000"
.LASF1044:
	.ascii	"S_SOUL\000"
.LASF1587:
	.ascii	"sfx_skldth\000"
.LASF1144:
	.ascii	"S_GTORCHSHRT\000"
.LASF1054:
	.ascii	"S_PSTR\000"
.LASF1743:
	.ascii	"monster_friction\000"
.LASF1684:
	.ascii	"source\000"
.LASF886:
	.ascii	"S_CYBER_ATK1\000"
.LASF887:
	.ascii	"S_CYBER_ATK2\000"
.LASF888:
	.ascii	"S_CYBER_ATK3\000"
.LASF889:
	.ascii	"S_CYBER_ATK4\000"
.LASF890:
	.ascii	"S_CYBER_ATK5\000"
.LASF891:
	.ascii	"S_CYBER_ATK6\000"
.LASF1081:
	.ascii	"S_BFUG\000"
.LASF564:
	.ascii	"S_FATT_STND\000"
.LASF1001:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1002:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1003:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF1693:
	.ascii	"newstring\000"
.LASF285:
	.ascii	"S_BFGUP\000"
.LASF1462:
	.ascii	"mus_e2m1\000"
.LASF1463:
	.ascii	"mus_e2m2\000"
.LASF1464:
	.ascii	"mus_e2m3\000"
.LASF1465:
	.ascii	"mus_e2m4\000"
.LASF1466:
	.ascii	"mus_e2m5\000"
.LASF1467:
	.ascii	"mus_e2m6\000"
.LASF1468:
	.ascii	"mus_e2m7\000"
.LASF1469:
	.ascii	"mus_e2m8\000"
.LASF1470:
	.ascii	"mus_e2m9\000"
.LASF672:
	.ascii	"S_TROO_RAISE1\000"
.LASF673:
	.ascii	"S_TROO_RAISE2\000"
.LASF674:
	.ascii	"S_TROO_RAISE3\000"
.LASF675:
	.ascii	"S_TROO_RAISE4\000"
.LASF676:
	.ascii	"S_TROO_RAISE5\000"
.LASF1085:
	.ascii	"S_PLAS\000"
.LASF967:
	.ascii	"S_COMMKEEN2\000"
.LASF968:
	.ascii	"S_COMMKEEN3\000"
.LASF969:
	.ascii	"S_COMMKEEN4\000"
.LASF970:
	.ascii	"S_COMMKEEN5\000"
.LASF351:
	.ascii	"S_PLAY\000"
.LASF917:
	.ascii	"S_PAIN_DIE2\000"
.LASF918:
	.ascii	"S_PAIN_DIE3\000"
.LASF919:
	.ascii	"S_PAIN_DIE4\000"
.LASF920:
	.ascii	"S_PAIN_DIE5\000"
.LASF921:
	.ascii	"S_PAIN_DIE6\000"
.LASF1250:
	.ascii	"MT_TROOP\000"
.LASF472:
	.ascii	"S_VILE_PAIN2\000"
.LASF51:
	.ascii	"_lbfsize\000"
.LASF1661:
	.ascii	"RDRAW_FILTER_MAXFILTERS\000"
.LASF1885:
	.ascii	"drawvars\000"
.LASF600:
	.ascii	"S_FATT_RAISE1\000"
.LASF146:
	.ascii	"wp_plasma\000"
.LASF602:
	.ascii	"S_FATT_RAISE3\000"
.LASF603:
	.ascii	"S_FATT_RAISE4\000"
.LASF604:
	.ascii	"S_FATT_RAISE5\000"
.LASF605:
	.ascii	"S_FATT_RAISE6\000"
.LASF606:
	.ascii	"S_FATT_RAISE7\000"
.LASF607:
	.ascii	"S_FATT_RAISE8\000"
.LASF1883:
	.ascii	"wad_files\000"
.LASF316:
	.ascii	"S_ROCKET\000"
.LASF1271:
	.ascii	"MT_HEADSHOT\000"
.LASF869:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1108:
	.ascii	"S_STALAGTITE\000"
.LASF710:
	.ascii	"S_HEAD_PAIN2\000"
.LASF711:
	.ascii	"S_HEAD_PAIN3\000"
.LASF1849:
	.ascii	"mapcolor_hair\000"
.LASF1224:
	.ascii	"S_BSKUL_ATK2\000"
.LASF178:
	.ascii	"byte\000"
.LASF258:
	.ascii	"S_CHAINFLASH2\000"
.LASF1806:
	.ascii	"key_map_down\000"
.LASF368:
	.ascii	"S_PLAY_XDIE2\000"
.LASF1649:
	.ascii	"LO_WARN\000"
.LASF139:
	.ascii	"it_redskull\000"
.LASF1597:
	.ascii	"sfx_bgact\000"
.LASF1278:
	.ascii	"MT_TFOG\000"
.LASF419:
	.ascii	"S_SPOS_ATK1\000"
.LASF61:
	.ascii	"_data\000"
.LASF421:
	.ascii	"S_SPOS_ATK3\000"
.LASF356:
	.ascii	"S_PLAY_ATK1\000"
.LASF357:
	.ascii	"S_PLAY_ATK2\000"
.LASF1397:
	.ascii	"comp_vile\000"
.LASF123:
	.ascii	"PU_LEVEL\000"
.LASF1835:
	.ascii	"mapcolor_bkey\000"
.LASF1865:
	.ascii	"hud_list_bgon\000"
.LASF981:
	.ascii	"S_BRAIN_PAIN\000"
.LASF1707:
	.ascii	"finesine\000"
.LASF1401:
	.ascii	"comp_doorlight\000"
.LASF1668:
	.ascii	"short_topleft\000"
.LASF1488:
	.ascii	"mus_betwee\000"
.LASF1137:
	.ascii	"S_REDTORCH2\000"
.LASF65:
	.ascii	"_reent\000"
.LASF1139:
	.ascii	"S_REDTORCH4\000"
.LASF1774:
	.ascii	"key_autorun\000"
.LASF646:
	.ascii	"S_TROO_RUN1\000"
.LASF647:
	.ascii	"S_TROO_RUN2\000"
.LASF648:
	.ascii	"S_TROO_RUN3\000"
.LASF649:
	.ascii	"S_TROO_RUN4\000"
.LASF650:
	.ascii	"S_TROO_RUN5\000"
.LASF651:
	.ascii	"S_TROO_RUN6\000"
.LASF652:
	.ascii	"S_TROO_RUN7\000"
.LASF653:
	.ascii	"S_TROO_RUN8\000"
.LASF1621:
	.ascii	"sfx_mandth\000"
.LASF1644:
	.ascii	"def_mouseb\000"
.LASF637:
	.ascii	"S_CPOS_RAISE1\000"
.LASF561:
	.ascii	"S_FATSHOTX1\000"
.LASF562:
	.ascii	"S_FATSHOTX2\000"
.LASF563:
	.ascii	"S_FATSHOTX3\000"
.LASF641:
	.ascii	"S_CPOS_RAISE5\000"
.LASF642:
	.ascii	"S_CPOS_RAISE6\000"
.LASF86:
	.ascii	"__sf\000"
.LASF1652:
	.ascii	"LO_DEBUG\000"
.LASF1428:
	.ascii	"m_scrn\000"
.LASF141:
	.ascii	"wp_fist\000"
.LASF1677:
	.ascii	"filterpatch\000"
.LASF46:
	.ascii	"_base\000"
.LASF1907:
	.ascii	"fread\000"
.LASF1873:
	.ascii	"health_green\000"
.LASF104:
	.ascii	"_mbtowc_state\000"
.LASF677:
	.ascii	"S_SARG_STND\000"
.LASF902:
	.ascii	"S_CYBER_DIE10\000"
.LASF1378:
	.ascii	"MT_DOGS\000"
.LASF1591:
	.ascii	"sfx_bspdth\000"
.LASF1096:
	.ascii	"S_HEADSONSTICK\000"
.LASF1382:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1626:
	.ascii	"sfx_skeact\000"
.LASF1903:
	.ascii	"remove\000"
.LASF1667:
	.ascii	"byte_topleft\000"
.LASF1622:
	.ascii	"sfx_sssit\000"
.LASF553:
	.ascii	"S_SKEL_RAISE1\000"
.LASF1385:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF207:
	.ascii	"S_PUNCH1\000"
.LASF208:
	.ascii	"S_PUNCH2\000"
.LASF209:
	.ascii	"S_PUNCH3\000"
.LASF210:
	.ascii	"S_PUNCH4\000"
.LASF211:
	.ascii	"S_PUNCH5\000"
.LASF570:
	.ascii	"S_FATT_RUN5\000"
.LASF206:
	.ascii	"S_PUNCHUP\000"
.LASF27:
	.ascii	"__tm\000"
.LASF1765:
	.ascii	"key_menu_enter\000"
.LASF823:
	.ascii	"S_SPID_DIE1\000"
.LASF574:
	.ascii	"S_FATT_RUN9\000"
.LASF825:
	.ascii	"S_SPID_DIE3\000"
.LASF826:
	.ascii	"S_SPID_DIE4\000"
.LASF827:
	.ascii	"S_SPID_DIE5\000"
.LASF828:
	.ascii	"S_SPID_DIE6\000"
.LASF345:
	.ascii	"S_IFOG01\000"
.LASF346:
	.ascii	"S_IFOG02\000"
.LASF831:
	.ascii	"S_SPID_DIE9\000"
.LASF1823:
	.ascii	"mousebuse\000"
.LASF1225:
	.ascii	"S_BSKUL_ATK3\000"
.LASF1660:
	.ascii	"RDRAW_FILTER_ROUNDED\000"
.LASF1073:
	.ascii	"S_AMMO\000"
.LASF1519:
	.ascii	"mus_dm2int\000"
.LASF1505:
	.ascii	"mus_count2\000"
.LASF156:
	.ascii	"NUMAMMO\000"
.LASF1857:
	.ascii	"default_videomode\000"
.LASF904:
	.ascii	"S_PAIN_RUN1\000"
.LASF905:
	.ascii	"S_PAIN_RUN2\000"
.LASF906:
	.ascii	"S_PAIN_RUN3\000"
.LASF907:
	.ascii	"S_PAIN_RUN4\000"
.LASF35:
	.ascii	"__tm_yday\000"
.LASF909:
	.ascii	"S_PAIN_RUN6\000"
.LASF1140:
	.ascii	"S_BTORCHSHRT\000"
.LASF1569:
	.ascii	"sfx_vilsit\000"
.LASF1634:
	.ascii	"sfx_dgpain\000"
.LASF241:
	.ascii	"S_DSGUN5\000"
.LASF1440:
	.ascii	"type\000"
.LASF259:
	.ascii	"S_MISSILE\000"
.LASF244:
	.ascii	"S_DSGUN8\000"
.LASF245:
	.ascii	"S_DSGUN9\000"
.LASF1518:
	.ascii	"mus_dm2ttl\000"
.LASF180:
	.ascii	"doom_1666_compatibility\000"
.LASF1154:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1650:
	.ascii	"LO_ERROR\000"
.LASF1807:
	.ascii	"key_map_zoomin\000"
.LASF1760:
	.ascii	"key_menu_left\000"
.LASF1400:
	.ascii	"comp_blazing\000"
.LASF96:
	.ascii	"_unused_rand\000"
.LASF1701:
	.ascii	"lbmname\000"
.LASF1702:
	.ascii	"startshot\000"
.LASF1905:
	.ascii	"ftell\000"
.LASF1867:
	.ascii	"hud_distributed\000"
.LASF1448:
	.ascii	"m_mouse\000"
.LASF1446:
	.ascii	"m_flags\000"
.LASF1725:
	.ascii	"default_allow_pushers\000"
.LASF1252:
	.ascii	"MT_SHADOWS\000"
.LASF534:
	.ascii	"S_SKEL_RUN10\000"
.LASF535:
	.ascii	"S_SKEL_RUN11\000"
.LASF536:
	.ascii	"S_SKEL_RUN12\000"
.LASF202:
	.ascii	"S_NULL\000"
.LASF121:
	.ascii	"PU_SOUND\000"
.LASF744:
	.ascii	"S_BOSS_DIE1\000"
.LASF745:
	.ascii	"S_BOSS_DIE2\000"
.LASF746:
	.ascii	"S_BOSS_DIE3\000"
.LASF747:
	.ascii	"S_BOSS_DIE4\000"
.LASF748:
	.ascii	"S_BOSS_DIE5\000"
.LASF749:
	.ascii	"S_BOSS_DIE6\000"
.LASF750:
	.ascii	"S_BOSS_DIE7\000"
.LASF914:
	.ascii	"S_PAIN_PAIN\000"
.LASF1726:
	.ascii	"variable_friction\000"
.LASF283:
	.ascii	"S_BFG\000"
.LASF1878:
	.ascii	"ammo_yellow\000"
.LASF77:
	.ascii	"_result_k\000"
.LASF69:
	.ascii	"_stderr\000"
.LASF1647:
	.ascii	"LO_INFO\000"
.LASF76:
	.ascii	"_result\000"
.LASF1690:
	.ascii	"M_SaveDefaults\000"
.LASF1695:
	.ascii	"isstring\000"
.LASF1471:
	.ascii	"mus_e3m1\000"
.LASF39:
	.ascii	"_dso_handle\000"
.LASF1473:
	.ascii	"mus_e3m3\000"
.LASF929:
	.ascii	"S_SSWV_STND2\000"
.LASF1475:
	.ascii	"mus_e3m5\000"
.LASF1476:
	.ascii	"mus_e3m6\000"
.LASF167:
	.ascii	"ss_weap\000"
.LASF1478:
	.ascii	"mus_e3m8\000"
.LASF1479:
	.ascii	"mus_e3m9\000"
.LASF1906:
	.ascii	"Z_Malloc\000"
.LASF1799:
	.ascii	"key_weapon7\000"
.LASF1064:
	.ascii	"S_PMAP\000"
.LASF1884:
	.ascii	"deh_files\000"
.LASF1851:
	.ascii	"mapcolor_me\000"
.LASF34:
	.ascii	"__tm_wday\000"
.LASF1070:
	.ascii	"S_PVIS\000"
.LASF36:
	.ascii	"__tm_isdst\000"
.LASF284:
	.ascii	"S_BFGDOWN\000"
.LASF1264:
	.ascii	"MT_BOSSBRAIN\000"
.LASF1812:
	.ascii	"key_map_mark\000"
.LASF279:
	.ascii	"S_PLASMA1\000"
.LASF280:
	.ascii	"S_PLASMA2\000"
.LASF189:
	.ascii	"lxdoom_1_compatibility\000"
.LASF1556:
	.ascii	"sfx_telept\000"
.LASF1078:
	.ascii	"S_SHEL\000"
.LASF835:
	.ascii	"S_BSPI_STND2\000"
.LASF1416:
	.ascii	"comp_sound\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF68:
	.ascii	"_stdout\000"
.LASF1879:
	.ascii	"sts_always_red\000"
.LASF1175:
	.ascii	"S_DOGS_STND2\000"
.LASF1827:
	.ascii	"menu_background\000"
.LASF318:
	.ascii	"S_BFGSHOT2\000"
.LASF1723:
	.ascii	"mouseSensitivity_vert\000"
.LASF1577:
	.ascii	"sfx_skeswg\000"
.LASF1045:
	.ascii	"S_SOUL2\000"
.LASF1046:
	.ascii	"S_SOUL3\000"
.LASF1047:
	.ascii	"S_SOUL4\000"
.LASF1048:
	.ascii	"S_SOUL5\000"
.LASF1049:
	.ascii	"S_SOUL6\000"
.LASF1874:
	.ascii	"armor_red\000"
.LASF111:
	.ascii	"_mbsrtowcs_state\000"
.LASF805:
	.ascii	"S_SPID_RUN1\000"
.LASF806:
	.ascii	"S_SPID_RUN2\000"
.LASF25:
	.ascii	"_wds\000"
.LASF808:
	.ascii	"S_SPID_RUN4\000"
.LASF809:
	.ascii	"S_SPID_RUN5\000"
.LASF810:
	.ascii	"S_SPID_RUN6\000"
.LASF811:
	.ascii	"S_SPID_RUN7\000"
.LASF812:
	.ascii	"S_SPID_RUN8\000"
.LASF813:
	.ascii	"S_SPID_RUN9\000"
.LASF1012:
	.ascii	"S_BEXP3\000"
.LASF1013:
	.ascii	"S_BEXP4\000"
.LASF1535:
	.ascii	"sfx_rlaunc\000"
.LASF1194:
	.ascii	"S_DOGS_DIE6\000"
.LASF1858:
	.ascii	"use_doublebuffer\000"
.LASF1101:
	.ascii	"S_DEADSTICK\000"
.LASF1821:
	.ascii	"mousebforward\000"
.LASF1281:
	.ascii	"MT_EXTRABFG\000"
.LASF945:
	.ascii	"S_SSWV_PAIN2\000"
.LASF391:
	.ascii	"S_POSS_DIE1\000"
.LASF392:
	.ascii	"S_POSS_DIE2\000"
.LASF393:
	.ascii	"S_POSS_DIE3\000"
.LASF394:
	.ascii	"S_POSS_DIE4\000"
.LASF395:
	.ascii	"S_POSS_DIE5\000"
.LASF221:
	.ascii	"S_SGUNDOWN\000"
.LASF47:
	.ascii	"_size\000"
.LASF1624:
	.ascii	"sfx_keenpn\000"
.LASF872:
	.ascii	"S_ARACH_PLEX2\000"
.LASF873:
	.ascii	"S_ARACH_PLEX3\000"
.LASF874:
	.ascii	"S_ARACH_PLEX4\000"
.LASF875:
	.ascii	"S_ARACH_PLEX5\000"
.LASF1872:
	.ascii	"health_yellow\000"
.LASF1758:
	.ascii	"key_down\000"
.LASF1204:
	.ascii	"S_PLS1BALL\000"
.LASF922:
	.ascii	"S_PAIN_RAISE1\000"
.LASF923:
	.ascii	"S_PAIN_RAISE2\000"
.LASF924:
	.ascii	"S_PAIN_RAISE3\000"
.LASF926:
	.ascii	"S_PAIN_RAISE5\000"
.LASF560:
	.ascii	"S_FATSHOT2\000"
.LASF1640:
	.ascii	"def_int\000"
.LASF175:
	.ascii	"ss_max\000"
.LASF1589:
	.ascii	"sfx_cybdth\000"
.LASF54:
	.ascii	"_write\000"
.LASF787:
	.ascii	"S_SKULL_STND\000"
.LASF1450:
	.ascii	"action\000"
.LASF376:
	.ascii	"S_POSS_STND\000"
.LASF1521:
	.ascii	"sfx_None\000"
.LASF1824:
	.ascii	"mouse_double_click_use\000"
.LASF821:
	.ascii	"S_SPID_PAIN\000"
.LASF1391:
	.ascii	"NUMMOBJTYPES\000"
.LASF1395:
	.ascii	"comp_telefrag\000"
.LASF1663:
	.ascii	"sloped_edge_type_e\000"
.LASF807:
	.ascii	"S_SPID_RUN3\000"
.LASF234:
	.ascii	"S_DSGUN\000"
.LASF1113:
	.ascii	"S_CANDLESTIK\000"
.LASF1620:
	.ascii	"sfx_manatk\000"
.LASF162:
	.ascii	"pw_allmap\000"
.LASF1238:
	.ascii	"NUMSTATES\000"
.LASF299:
	.ascii	"S_TBALL1\000"
.LASF252:
	.ascii	"S_CHAINDOWN\000"
.LASF513:
	.ascii	"S_SMOKE1\000"
.LASF514:
	.ascii	"S_SMOKE2\000"
.LASF515:
	.ascii	"S_SMOKE3\000"
.LASF516:
	.ascii	"S_SMOKE4\000"
.LASF517:
	.ascii	"S_SMOKE5\000"
.LASF736:
	.ascii	"S_BOSS_RUN6\000"
.LASF737:
	.ascii	"S_BOSS_RUN7\000"
.LASF738:
	.ascii	"S_BOSS_RUN8\000"
.LASF1651:
	.ascii	"LO_FATAL\000"
.LASF1480:
	.ascii	"mus_inter\000"
.LASF1240:
	.ascii	"MT_POSSESSED\000"
.LASF1008:
	.ascii	"S_BAR1\000"
.LASF1750:
	.ascii	"default_monster_infighting\000"
.LASF1594:
	.ascii	"sfx_pedth\000"
.LASF1553:
	.ascii	"sfx_itemup\000"
.LASF1282:
	.ascii	"MT_MISC0\000"
.LASF1094:
	.ascii	"S_DEADTORSO\000"
.LASF1915:
	.ascii	"Z_Free\000"
.LASF236:
	.ascii	"S_DSGUNUP\000"
.LASF1616:
	.ascii	"sfx_boscub\000"
.LASF1697:
	.ascii	"M_DoScreenShot\000"
.LASF1910:
	.ascii	"access\000"
.LASF33:
	.ascii	"__tm_year\000"
.LASF1716:
	.ascii	"snd_SfxVolume\000"
.LASF1578:
	.ascii	"sfx_pldeth\000"
.LASF1426:
	.ascii	"am_grid\000"
.LASF1742:
	.ascii	"default_monster_avoid_hazards\000"
.LASF645:
	.ascii	"S_TROO_STND2\000"
.LASF1165:
	.ascii	"S_TECH2LAMP\000"
.LASF1717:
	.ascii	"snd_MusicVolume\000"
.LASF1541:
	.ascii	"sfx_doropn\000"
.LASF94:
	.ascii	"_mult\000"
.LASF1590:
	.ascii	"sfx_spidth\000"
.LASF1243:
	.ascii	"MT_FIRE\000"
.LASF1776:
	.ascii	"key_zoomin\000"
.LASF1326:
	.ascii	"MT_MISC37\000"
.LASF1736:
	.ascii	"default_dog_jumping\000"
.LASF742:
	.ascii	"S_BOSS_PAIN\000"
.LASF1781:
	.ascii	"key_soundvolume\000"
.LASF1514:
	.ascii	"mus_openin\000"
.LASF109:
	.ascii	"_mbrlen_state\000"
.LASF304:
	.ascii	"S_RBALL1\000"
.LASF305:
	.ascii	"S_RBALL2\000"
.LASF1551:
	.ascii	"sfx_pepain\000"
.LASF1109:
	.ascii	"S_TALLGRNCOL\000"
.LASF1568:
	.ascii	"sfx_kntsit\000"
.LASF194:
	.ascii	"prboom_4_compatibility\000"
.LASF1741:
	.ascii	"monster_avoid_hazards\000"
.LASF1788:
	.ascii	"key_gamma\000"
.LASF1588:
	.ascii	"sfx_brsdth\000"
.LASF1496:
	.ascii	"mus_theda2\000"
.LASF1508:
	.ascii	"mus_theda3\000"
.LASF1643:
	.ascii	"def_key\000"
.LASF1098:
	.ascii	"S_HEADONASTICK\000"
.LASF1671:
	.ascii	"short_pitch\000"
.LASF378:
	.ascii	"S_POSS_RUN1\000"
.LASF320:
	.ascii	"S_BFGLAND2\000"
.LASF321:
	.ascii	"S_BFGLAND3\000"
.LASF322:
	.ascii	"S_BFGLAND4\000"
.LASF323:
	.ascii	"S_BFGLAND5\000"
.LASF324:
	.ascii	"S_BFGLAND6\000"
.LASF384:
	.ascii	"S_POSS_RUN7\000"
.LASF385:
	.ascii	"S_POSS_RUN8\000"
.LASF67:
	.ascii	"_stdin\000"
.LASF1734:
	.ascii	"default_dogs\000"
.LASF367:
	.ascii	"S_PLAY_XDIE1\000"
.LASF116:
	.ascii	"_nmalloc\000"
.LASF369:
	.ascii	"S_PLAY_XDIE3\000"
.LASF370:
	.ascii	"S_PLAY_XDIE4\000"
.LASF371:
	.ascii	"S_PLAY_XDIE5\000"
.LASF372:
	.ascii	"S_PLAY_XDIE6\000"
.LASF373:
	.ascii	"S_PLAY_XDIE7\000"
.LASF374:
	.ascii	"S_PLAY_XDIE8\000"
.LASF375:
	.ascii	"S_PLAY_XDIE9\000"
.LASF773:
	.ascii	"S_BOS2_DIE1\000"
.LASF774:
	.ascii	"S_BOS2_DIE2\000"
.LASF775:
	.ascii	"S_BOS2_DIE3\000"
.LASF776:
	.ascii	"S_BOS2_DIE4\000"
.LASF777:
	.ascii	"S_BOS2_DIE5\000"
.LASF778:
	.ascii	"S_BOS2_DIE6\000"
.LASF779:
	.ascii	"S_BOS2_DIE7\000"
.LASF699:
	.ascii	"S_SARG_RAISE2\000"
.LASF343:
	.ascii	"S_TFOG10\000"
.LASF701:
	.ascii	"S_SARG_RAISE4\000"
.LASF1506:
	.ascii	"mus_ddtbl3\000"
.LASF396:
	.ascii	"S_POSS_XDIE1\000"
.LASF397:
	.ascii	"S_POSS_XDIE2\000"
.LASF398:
	.ascii	"S_POSS_XDIE3\000"
.LASF399:
	.ascii	"S_POSS_XDIE4\000"
.LASF400:
	.ascii	"S_POSS_XDIE5\000"
.LASF401:
	.ascii	"S_POSS_XDIE6\000"
.LASF402:
	.ascii	"S_POSS_XDIE7\000"
.LASF152:
	.ascii	"am_clip\000"
.LASF404:
	.ascii	"S_POSS_XDIE9\000"
.LASF1511:
	.ascii	"mus_romer2\000"
.LASF712:
	.ascii	"S_HEAD_DIE1\000"
.LASF713:
	.ascii	"S_HEAD_DIE2\000"
.LASF714:
	.ascii	"S_HEAD_DIE3\000"
.LASF715:
	.ascii	"S_HEAD_DIE4\000"
.LASF716:
	.ascii	"S_HEAD_DIE5\000"
.LASF717:
	.ascii	"S_HEAD_DIE6\000"
.LASF1088:
	.ascii	"S_COLU\000"
.LASF215:
	.ascii	"S_PISTOL1\000"
.LASF216:
	.ascii	"S_PISTOL2\000"
.LASF217:
	.ascii	"S_PISTOL3\000"
.LASF218:
	.ascii	"S_PISTOL4\000"
.LASF554:
	.ascii	"S_SKEL_RAISE2\000"
.LASF555:
	.ascii	"S_SKEL_RAISE3\000"
.LASF118:
	.ascii	"FILE\000"
.LASF557:
	.ascii	"S_SKEL_RAISE5\000"
.LASF558:
	.ascii	"S_SKEL_RAISE6\000"
.LASF1117:
	.ascii	"S_BIGTREE\000"
.LASF1431:
	.ascii	"setup_group\000"
.LASF1844:
	.ascii	"mapcolor_flat\000"
.LASF1770:
	.ascii	"key_strafe\000"
.LASF333:
	.ascii	"S_TFOG01\000"
.LASF334:
	.ascii	"S_TFOG02\000"
.LASF1633:
	.ascii	"sfx_dgdth\000"
.LASF389:
	.ascii	"S_POSS_PAIN\000"
.LASF724:
	.ascii	"S_BRBALL1\000"
.LASF1846:
	.ascii	"mapcolor_item\000"
.LASF725:
	.ascii	"S_BRBALL2\000"
.LASF1492:
	.ascii	"mus_ddtblu\000"
.LASF1246:
	.ascii	"MT_SMOKE\000"
.LASF1260:
	.ascii	"MT_CYBORG\000"
.LASF1405:
	.ascii	"comp_floors\000"
.LASF429:
	.ascii	"S_SPOS_XDIE1\000"
.LASF11:
	.ascii	"_off_t\000"
.LASF431:
	.ascii	"S_SPOS_XDIE3\000"
.LASF432:
	.ascii	"S_SPOS_XDIE4\000"
.LASF433:
	.ascii	"S_SPOS_XDIE5\000"
.LASF434:
	.ascii	"S_SPOS_XDIE6\000"
.LASF435:
	.ascii	"S_SPOS_XDIE7\000"
.LASF436:
	.ascii	"S_SPOS_XDIE8\000"
.LASF437:
	.ascii	"S_SPOS_XDIE9\000"
.LASF1549:
	.ascii	"sfx_vipain\000"
.LASF1745:
	.ascii	"help_friends\000"
.LASF9:
	.ascii	"size_t\000"
.LASF99:
	.ascii	"_localtime_buf\000"
.LASF1904:
	.ascii	"fseek\000"
.LASF1030:
	.ascii	"S_BKEY\000"
.LASF17:
	.ascii	"__count\000"
.LASF1886:
	.ascii	"demo_smoothturns\000"
.LASF160:
	.ascii	"pw_invisibility\000"
.LASF1852:
	.ascii	"map_secret_after\000"
.LASF1390:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF1638:
	.ascii	"def_none\000"
.LASF1242:
	.ascii	"MT_VILE\000"
.LASF1831:
	.ascii	"mapcolor_fchg\000"
.LASF1540:
	.ascii	"sfx_pstop\000"
.LASF137:
	.ascii	"it_blueskull\000"
.LASF1383:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF1837:
	.ascii	"mapcolor_rdor\000"
.LASF277:
	.ascii	"S_PLASMADOWN\000"
.LASF589:
	.ascii	"S_FATT_PAIN2\000"
.LASF987:
	.ascii	"S_BRAINEYESEE\000"
.LASF1187:
	.ascii	"S_DOGS_PAIN\000"
.LASF524:
	.ascii	"S_SKEL_STND2\000"
.LASF1218:
	.ascii	"S_BSKUL_STND\000"
.LASF1411:
	.ascii	"comp_stairs\000"
.LASF877:
	.ascii	"S_CYBER_STND2\000"
.LASF1817:
	.ascii	"key_screenshot\000"
.LASF947:
	.ascii	"S_SSWV_DIE2\000"
.LASF129:
	.ascii	"registered\000"
.LASF1826:
	.ascii	"bodyquesize\000"
.LASF403:
	.ascii	"S_POSS_XDIE8\000"
.LASF1171:
	.ascii	"S_DETONATE\000"
.LASF1407:
	.ascii	"comp_pursuit\000"
.LASF1077:
	.ascii	"S_CELP\000"
.LASF1840:
	.ascii	"mapcolor_tele\000"
.LASF1266:
	.ascii	"MT_BOSSTARGET\000"
.LASF1682:
	.ascii	"I_BeginRead\000"
.LASF190:
	.ascii	"mbf_compatibility\000"
.LASF81:
	.ascii	"_cvtbuf\000"
.LASF1147:
	.ascii	"S_GTORCHSHRT4\000"
.LASF191:
	.ascii	"prboom_1_compatibility\000"
.LASF1705:
	.ascii	"defaultfile\000"
.LASF1639:
	.ascii	"def_str\000"
.LASF1619:
	.ascii	"sfx_bosdth\000"
.LASF1747:
	.ascii	"flashing_hom\000"
.LASF482:
	.ascii	"S_VILE_DIE10\000"
.LASF1119:
	.ascii	"S_EVILEYE\000"
.LASF580:
	.ascii	"S_FATT_ATK3\000"
.LASF1612:
	.ascii	"sfx_flame\000"
.LASF1036:
	.ascii	"S_BSKULL\000"
.LASF1625:
	.ascii	"sfx_keendt\000"
.LASF457:
	.ascii	"S_VILE_ATK1\000"
.LASF458:
	.ascii	"S_VILE_ATK2\000"
.LASF459:
	.ascii	"S_VILE_ATK3\000"
.LASF460:
	.ascii	"S_VILE_ATK4\000"
.LASF461:
	.ascii	"S_VILE_ATK5\000"
.LASF462:
	.ascii	"S_VILE_ATK6\000"
.LASF463:
	.ascii	"S_VILE_ATK7\000"
.LASF204:
	.ascii	"S_PUNCH\000"
.LASF465:
	.ascii	"S_VILE_ATK9\000"
.LASF1605:
	.ascii	"sfx_hoof\000"
.LASF1477:
	.ascii	"mus_e3m7\000"
.LASF1491:
	.ascii	"mus_shawn\000"
.LASF1184:
	.ascii	"S_DOGS_ATK1\000"
.LASF1185:
	.ascii	"S_DOGS_ATK2\000"
.LASF1186:
	.ascii	"S_DOGS_ATK3\000"
.LASF760:
	.ascii	"S_BOS2_RUN1\000"
.LASF761:
	.ascii	"S_BOS2_RUN2\000"
.LASF762:
	.ascii	"S_BOS2_RUN3\000"
.LASF763:
	.ascii	"S_BOS2_RUN4\000"
.LASF764:
	.ascii	"S_BOS2_RUN5\000"
.LASF765:
	.ascii	"S_BOS2_RUN6\000"
.LASF15:
	.ascii	"__wchb\000"
.LASF767:
	.ascii	"S_BOS2_RUN8\000"
.LASF1816:
	.ascii	"key_map_overlay\000"
.LASF110:
	.ascii	"_mbrtowc_state\000"
.LASF30:
	.ascii	"__tm_hour\000"
.LASF197:
	.ascii	"MAX_COMPATIBILITY_LEVEL\000"
.LASF1920:
	.ascii	"sscanf\000"
.LASF834:
	.ascii	"S_BSPI_STND\000"
.LASF1536:
	.ascii	"sfx_rxplod\000"
.LASF624:
	.ascii	"S_CPOS_DIE1\000"
.LASF578:
	.ascii	"S_FATT_ATK1\000"
.LASF579:
	.ascii	"S_FATT_ATK2\000"
.LASF13:
	.ascii	"wint_t\000"
.LASF581:
	.ascii	"S_FATT_ATK4\000"
.LASF582:
	.ascii	"S_FATT_ATK5\000"
.LASF583:
	.ascii	"S_FATT_ATK6\000"
.LASF584:
	.ascii	"S_FATT_ATK7\000"
.LASF585:
	.ascii	"S_FATT_ATK8\000"
.LASF586:
	.ascii	"S_FATT_ATK9\000"
.LASF1548:
	.ascii	"sfx_popain\000"
.LASF82:
	.ascii	"_new\000"
.LASF1386:
	.ascii	"MT_STEALTHIMP\000"
.LASF1226:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1227:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1228:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF292:
	.ascii	"S_BLOOD1\000"
.LASF293:
	.ascii	"S_BLOOD2\000"
.LASF294:
	.ascii	"S_BLOOD3\000"
.LASF1494:
	.ascii	"mus_dead\000"
.LASF90:
	.ascii	"_niobs\000"
.LASF1502:
	.ascii	"mus_romero\000"
.LASF1547:
	.ascii	"sfx_dmpain\000"
.LASF1771:
	.ascii	"key_speed\000"
.LASF1427:
	.ascii	"m_null\000"
.LASF559:
	.ascii	"S_FATSHOT1\000"
.LASF1084:
	.ascii	"S_LAUN\000"
.LASF1170:
	.ascii	"S_GRENADE\000"
.LASF344:
	.ascii	"S_IFOG\000"
.LASF1430:
	.ascii	"m_menu\000"
.LASF66:
	.ascii	"_errno\000"
.LASF893:
	.ascii	"S_CYBER_DIE1\000"
.LASF894:
	.ascii	"S_CYBER_DIE2\000"
.LASF895:
	.ascii	"S_CYBER_DIE3\000"
.LASF896:
	.ascii	"S_CYBER_DIE4\000"
.LASF31:
	.ascii	"__tm_mday\000"
.LASF898:
	.ascii	"S_CYBER_DIE6\000"
.LASF899:
	.ascii	"S_CYBER_DIE7\000"
.LASF771:
	.ascii	"S_BOS2_PAIN\000"
.LASF901:
	.ascii	"S_CYBER_DIE9\000"
.LASF1571:
	.ascii	"sfx_pesit\000"
.LASF38:
	.ascii	"_fnargs\000"
.LASF1309:
	.ascii	"MT_MISC23\000"
.LASF1499:
	.ascii	"mus_runni2\000"
.LASF196:
	.ascii	"prboom_6_compatibility\000"
.LASF1114:
	.ascii	"S_CANDELABRA\000"
.LASF454:
	.ascii	"S_VILE_RUN10\000"
.LASF455:
	.ascii	"S_VILE_RUN11\000"
.LASF456:
	.ascii	"S_VILE_RUN12\000"
.LASF1074:
	.ascii	"S_ROCK\000"
.LASF223:
	.ascii	"S_SGUN1\000"
.LASF224:
	.ascii	"S_SGUN2\000"
.LASF225:
	.ascii	"S_SGUN3\000"
.LASF226:
	.ascii	"S_SGUN4\000"
.LASF227:
	.ascii	"S_SGUN5\000"
.LASF228:
	.ascii	"S_SGUN6\000"
.LASF229:
	.ascii	"S_SGUN7\000"
.LASF230:
	.ascii	"S_SGUN8\000"
.LASF231:
	.ascii	"S_SGUN9\000"
.LASF220:
	.ascii	"S_SGUN\000"
.LASF1110:
	.ascii	"S_SHRTGRNCOL\000"
.LASF1740:
	.ascii	"default_monster_backing\000"
.LASF1613:
	.ascii	"sfx_flamst\000"
.LASF1748:
	.ascii	"doom_weapon_toggles\000"
.LASF1483:
	.ascii	"mus_victor\000"
.LASF1898:
	.ascii	"defaults\000"
.LASF1267:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1830:
	.ascii	"mapcolor_wall\000"
.LASF1811:
	.ascii	"key_map_follow\000"
.LASF519:
	.ascii	"S_TRACER2\000"
.LASF22:
	.ascii	"_next\000"
.LASF1485:
	.ascii	"mus_runnin\000"
.LASF1118:
	.ascii	"S_TECHPILLAR\000"
.LASF523:
	.ascii	"S_SKEL_STND\000"
.LASF1882:
	.ascii	"default_numChannels\000"
.LASF1484:
	.ascii	"mus_introa\000"
.LASF678:
	.ascii	"S_SARG_STND2\000"
.LASF1606:
	.ascii	"sfx_metal\000"
.LASF107:
	.ascii	"_signal_buf\000"
.LASF424:
	.ascii	"S_SPOS_DIE1\000"
.LASF425:
	.ascii	"S_SPOS_DIE2\000"
.LASF426:
	.ascii	"S_SPOS_DIE3\000"
.LASF427:
	.ascii	"S_SPOS_DIE4\000"
.LASF428:
	.ascii	"S_SPOS_DIE5\000"
.LASF1573:
	.ascii	"sfx_sgtatk\000"
.LASF52:
	.ascii	"_cookie\000"
.LASF1753:
	.ascii	"myargc\000"
.LASF1153:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF1237:
	.ascii	"S_MUSHROOM\000"
.LASF1696:
	.ascii	"exedir\000"
.LASF1570:
	.ascii	"sfx_mansit\000"
.LASF687:
	.ascii	"S_SARG_ATK1\000"
.LASF688:
	.ascii	"S_SARG_ATK2\000"
.LASF689:
	.ascii	"S_SARG_ATK3\000"
.LASF1787:
	.ascii	"key_quit\000"
.LASF278:
	.ascii	"S_PLASMAUP\000"
.LASF1636:
	.ascii	"float\000"
.LASF1908:
	.ascii	"fprintf\000"
.LASF1793:
	.ascii	"key_weapon1\000"
.LASF1794:
	.ascii	"key_weapon2\000"
.LASF1795:
	.ascii	"key_weapon3\000"
.LASF1034:
	.ascii	"S_YKEY\000"
.LASF1797:
	.ascii	"key_weapon5\000"
.LASF1798:
	.ascii	"key_weapon6\000"
.LASF1800:
	.ascii	"key_weapon8\000"
.LASF1801:
	.ascii	"key_weapon9\000"
.LASF1724:
	.ascii	"allow_pushers\000"
.LASF1544:
	.ascii	"sfx_swtchn\000"
.LASF1754:
	.ascii	"myargv\000"
.LASF916:
	.ascii	"S_PAIN_DIE1\000"
.LASF1902:
	.ascii	"fclose\000"
.LASF1545:
	.ascii	"sfx_swtchx\000"
.LASF1437:
	.ascii	"defaultvalue\000"
.LASF446:
	.ascii	"S_VILE_RUN2\000"
.LASF1513:
	.ascii	"mus_shawn3\000"
.LASF1162:
	.ascii	"S_TECHLAMP2\000"
.LASF1699:
	.ascii	"M_ScreenShot\000"
.LASF1164:
	.ascii	"S_TECHLAMP4\000"
.LASF610:
	.ascii	"S_CPOS_RUN1\000"
.LASF611:
	.ascii	"S_CPOS_RUN2\000"
.LASF612:
	.ascii	"S_CPOS_RUN3\000"
.LASF613:
	.ascii	"S_CPOS_RUN4\000"
.LASF614:
	.ascii	"S_CPOS_RUN5\000"
.LASF615:
	.ascii	"S_CPOS_RUN6\000"
.LASF616:
	.ascii	"S_CPOS_RUN7\000"
.LASF617:
	.ascii	"S_CPOS_RUN8\000"
.LASF1014:
	.ascii	"S_BEXP5\000"
.LASF1914:
	.ascii	"doom_snprintf\000"
.LASF1855:
	.ascii	"snd_samplerate\000"
.LASF1628:
	.ascii	"sfx_skeatk\000"
.LASF1894:
	.ascii	"mus_pause_opt\000"
.LASF379:
	.ascii	"S_POSS_RUN2\000"
.LASF119:
	.ascii	"PU_FREE\000"
.LASF381:
	.ascii	"S_POSS_RUN4\000"
.LASF698:
	.ascii	"S_SARG_RAISE1\000"
.LASF382:
	.ascii	"S_POSS_RUN5\000"
.LASF700:
	.ascii	"S_SARG_RAISE3\000"
.LASF383:
	.ascii	"S_POSS_RUN6\000"
.LASF702:
	.ascii	"S_SARG_RAISE5\000"
.LASF703:
	.ascii	"S_SARG_RAISE6\000"
.LASF1825:
	.ascii	"defaultskill\000"
.LASF1679:
	.ascii	"patch_edges\000"
.LASF1580:
	.ascii	"sfx_podth1\000"
.LASF1581:
	.ascii	"sfx_podth2\000"
.LASF1582:
	.ascii	"sfx_podth3\000"
.LASF1424:
	.ascii	"am_rotate\000"
.LASF28:
	.ascii	"__tm_sec\000"
.LASF326:
	.ascii	"S_BFGEXP2\000"
.LASF327:
	.ascii	"S_BFGEXP3\000"
.LASF328:
	.ascii	"S_BFGEXP4\000"
.LASF1729:
	.ascii	"default_monsters_remember\000"
.LASF257:
	.ascii	"S_CHAINFLASH1\000"
.LASF37:
	.ascii	"_on_exit_args\000"
.LASF213:
	.ascii	"S_PISTOLDOWN\000"
.LASF878:
	.ascii	"S_CYBER_RUN1\000"
.LASF879:
	.ascii	"S_CYBER_RUN2\000"
.LASF880:
	.ascii	"S_CYBER_RUN3\000"
.LASF881:
	.ascii	"S_CYBER_RUN4\000"
.LASF882:
	.ascii	"S_CYBER_RUN5\000"
.LASF883:
	.ascii	"S_CYBER_RUN6\000"
.LASF884:
	.ascii	"S_CYBER_RUN7\000"
.LASF885:
	.ascii	"S_CYBER_RUN8\000"
.LASF1918:
	.ascii	"lprintf\000"
.LASF1065:
	.ascii	"S_PMAP2\000"
.LASF1066:
	.ascii	"S_PMAP3\000"
.LASF1067:
	.ascii	"S_PMAP4\000"
.LASF1068:
	.ascii	"S_PMAP5\000"
.LASF1069:
	.ascii	"S_PMAP6\000"
.LASF796:
	.ascii	"S_SKULL_PAIN2\000"
.LASF193:
	.ascii	"prboom_3_compatibility\000"
.LASF169:
	.ascii	"ss_auto\000"
.LASF622:
	.ascii	"S_CPOS_PAIN\000"
.LASF1583:
	.ascii	"sfx_bgdth1\000"
.LASF130:
	.ascii	"commercial\000"
.LASF112:
	.ascii	"_wcrtomb_state\000"
.LASF1509:
	.ascii	"mus_adrian\000"
.LASF925:
	.ascii	"S_PAIN_RAISE4\000"
.LASF1516:
	.ascii	"mus_ultima\000"
.LASF1900:
	.ascii	"fopen\000"
.LASF170:
	.ascii	"ss_enem\000"
.LASF1325:
	.ascii	"MT_MISC36\000"
.LASF731:
	.ascii	"S_BOSS_RUN1\000"
.LASF732:
	.ascii	"S_BOSS_RUN2\000"
.LASF733:
	.ascii	"S_BOSS_RUN3\000"
.LASF124:
	.ascii	"PU_LEVSPEC\000"
.LASF734:
	.ascii	"S_BOSS_RUN4\000"
.LASF735:
	.ascii	"S_BOSS_RUN5\000"
.LASF205:
	.ascii	"S_PUNCHDOWN\000"
.LASF1116:
	.ascii	"S_TORCHTREE\000"
.LASF1768:
	.ascii	"key_fire\000"
.LASF928:
	.ascii	"S_SSWV_STND\000"
.LASF518:
	.ascii	"S_TRACER\000"
.LASF975:
	.ascii	"S_COMMKEEN10\000"
.LASF976:
	.ascii	"S_COMMKEEN11\000"
.LASF977:
	.ascii	"S_COMMKEEN12\000"
.LASF892:
	.ascii	"S_CYBER_PAIN\000"
.LASF411:
	.ascii	"S_SPOS_RUN1\000"
.LASF412:
	.ascii	"S_SPOS_RUN2\000"
.LASF177:
	.ascii	"boolean\000"
.LASF414:
	.ascii	"S_SPOS_RUN4\000"
.LASF415:
	.ascii	"S_SPOS_RUN5\000"
.LASF416:
	.ascii	"S_SPOS_RUN6\000"
.LASF417:
	.ascii	"S_SPOS_RUN7\000"
.LASF418:
	.ascii	"S_SPOS_RUN8\000"
.LASF1075:
	.ascii	"S_BROK\000"
.LASF978:
	.ascii	"S_KEENPAIN\000"
.LASF1380:
	.ascii	"MT_STEALTHVILE\000"
.LASF1889:
	.ascii	"usemouse\000"
.LASF871:
	.ascii	"S_ARACH_PLEX\000"
.LASF1132:
	.ascii	"S_GREENTORCH\000"
.LASF149:
	.ascii	"wp_supershotgun\000"
.LASF271:
	.ascii	"S_SAWDOWN\000"
.LASF1211:
	.ascii	"S_PLS2BALL\000"
.LASF1888:
	.ascii	"movement_smooth\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF1534:
	.ascii	"sfx_sawhit\000"
.LASF1533:
	.ascii	"sfx_sawful\000"
.LASF1500:
	.ascii	"mus_dead2\000"
.LASF1780:
	.ascii	"key_enter\000"
.LASF1270:
	.ascii	"MT_TROOPSHOT\000"
.LASF1255:
	.ascii	"MT_BRUISERSHOT\000"
.LASF1601:
	.ascii	"sfx_vilact\000"
.LASF1810:
	.ascii	"key_map_gobig\000"
.LASF1375:
	.ascii	"MT_MISC86\000"
.LASF1392:
	.ascii	"ps_weapon\000"
.LASF1566:
	.ascii	"sfx_spisit\000"
.LASF359:
	.ascii	"S_PLAY_PAIN2\000"
.LASF1698:
	.ascii	"fname\000"
.LASF1381:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF1532:
	.ascii	"sfx_sawidl\000"
.LASF754:
	.ascii	"S_BOSS_RAISE4\000"
.LASF97:
	.ascii	"_strtok_last\000"
.LASF755:
	.ascii	"S_BOSS_RAISE5\000"
.LASF1097:
	.ascii	"S_GIBS\000"
.LASF609:
	.ascii	"S_CPOS_STND2\000"
.LASF1899:
	.ascii	"numdefaults\000"
.LASF1599:
	.ascii	"sfx_bspact\000"
.LASF422:
	.ascii	"S_SPOS_PAIN\000"
.LASF143:
	.ascii	"wp_shotgun\000"
.LASF1673:
	.ascii	"filterwall\000"
.LASF1925:
	.ascii	"Z_Realloc\000"
.LASF390:
	.ascii	"S_POSS_PAIN2\000"
.LASF1276:
	.ascii	"MT_PUFF\000"
.LASF1402:
	.ascii	"comp_model\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF262:
	.ascii	"S_MISSILE1\000"
.LASF263:
	.ascii	"S_MISSILE2\000"
.LASF264:
	.ascii	"S_MISSILE3\000"
.LASF93:
	.ascii	"_seed\000"
.LASF639:
	.ascii	"S_CPOS_RAISE3\000"
.LASF640:
	.ascii	"S_CPOS_RAISE4\000"
.LASF55:
	.ascii	"_seek\000"
.LASF1082:
	.ascii	"S_MGUN\000"
.LASF1845:
	.ascii	"mapcolor_sprt\000"
.LASF643:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1254:
	.ascii	"MT_BRUISER\000"
.LASF1472:
	.ascii	"mus_e3m2\000"
.LASF1474:
	.ascii	"mus_e3m4\000"
.LASF1803:
	.ascii	"key_map_right\000"
.LASF791:
	.ascii	"S_SKULL_ATK1\000"
.LASF792:
	.ascii	"S_SKULL_ATK2\000"
.LASF793:
	.ascii	"S_SKULL_ATK3\000"
.LASF794:
	.ascii	"S_SKULL_ATK4\000"
.LASF772:
	.ascii	"S_BOS2_PAIN2\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF1256:
	.ascii	"MT_KNIGHT\000"
.LASF1413:
	.ascii	"comp_zerotags\000"
.LASF1:
	.ascii	"signed char\000"
.LASF1703:
	.ascii	"success\000"
.LASF423:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1191:
	.ascii	"S_DOGS_DIE3\000"
.LASF1746:
	.ascii	"default_help_friends\000"
.LASF1604:
	.ascii	"sfx_punch\000"
.LASF587:
	.ascii	"S_FATT_ATK10\000"
.LASF1442:
	.ascii	"current\000"
.LASF1676:
	.ascii	"filterz\000"
.LASF1301:
	.ascii	"MT_MEGA\000"
.LASF1694:
	.ascii	"parm\000"
.LASF1333:
	.ascii	"MT_MISC44\000"
.LASF1334:
	.ascii	"MT_MISC45\000"
.LASF1335:
	.ascii	"MT_MISC46\000"
.LASF1520:
	.ascii	"NUMMUSIC\000"
.LASF1714:
	.ascii	"comp\000"
.LASF1730:
	.ascii	"weapon_recoil\000"
.LASF1263:
	.ascii	"MT_KEEN\000"
.LASF988:
	.ascii	"S_BRAINEYE1\000"
.LASF1744:
	.ascii	"default_monster_friction\000"
.LASF644:
	.ascii	"S_TROO_STND\000"
.LASF591:
	.ascii	"S_FATT_DIE2\000"
.LASF282:
	.ascii	"S_PLASMAFLASH2\000"
.LASF79:
	.ascii	"_freelist\000"
.LASF336:
	.ascii	"S_TFOG3\000"
.LASF337:
	.ascii	"S_TFOG4\000"
.LASF338:
	.ascii	"S_TFOG5\000"
.LASF339:
	.ascii	"S_TFOG6\000"
.LASF340:
	.ascii	"S_TFOG7\000"
.LASF341:
	.ascii	"S_TFOG8\000"
.LASF342:
	.ascii	"S_TFOG9\000"
.LASF757:
	.ascii	"S_BOSS_RAISE7\000"
.LASF1169:
	.ascii	"S_TNT1\000"
.LASF444:
	.ascii	"S_VILE_STND2\000"
.LASF1292:
	.ascii	"MT_MISC10\000"
.LASF1562:
	.ascii	"sfx_sgtsit\000"
.LASF1656:
	.ascii	"draw_filter_type_e\000"
.LASF60:
	.ascii	"_offset\000"
.LASF136:
	.ascii	"it_redcard\000"
.LASF1111:
	.ascii	"S_TALLREDCOL\000"
.LASF1911:
	.ascii	"I_Error\000"
.LASF1422:
	.ascii	"am_active\000"
.LASF1924:
	.ascii	"doom_printf\000"
.LASF1403:
	.ascii	"comp_god\000"
.LASF1792:
	.ascii	"key_weapontoggle\000"
.LASF1086:
	.ascii	"S_SHOT\000"
.LASF942:
	.ascii	"S_SSWV_ATK5\000"
.LASF1091:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF1092:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1093:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF526:
	.ascii	"S_SKEL_RUN2\000"
.LASF833:
	.ascii	"S_SPID_DIE11\000"
.LASF45:
	.ascii	"__sbuf\000"
.LASF1487:
	.ascii	"mus_countd\000"
.LASF106:
	.ascii	"_l64a_buf\000"
.LASF1481:
	.ascii	"mus_intro\000"
.LASF556:
	.ascii	"S_SKEL_RAISE4\000"
.LASF1524:
	.ascii	"sfx_sgcock\000"
.LASF1709:
	.ascii	"gamemode\000"
.LASF980:
	.ascii	"S_BRAIN\000"
.LASF1213:
	.ascii	"S_PLS2BALLX1\000"
.LASF1214:
	.ascii	"S_PLS2BALLX2\000"
.LASF1215:
	.ascii	"S_PLS2BALLX3\000"
.LASF1258:
	.ascii	"MT_SPIDER\000"
.LASF195:
	.ascii	"prboom_5_compatibility\000"
.LASF1766:
	.ascii	"key_strafeleft\000"
.LASF903:
	.ascii	"S_PAIN_STND\000"
.LASF1642:
	.ascii	"def_bool\000"
.LASF1564:
	.ascii	"sfx_brssit\000"
.LASF1658:
	.ascii	"RDRAW_FILTER_POINT\000"
.LASF319:
	.ascii	"S_BFGLAND\000"
.LASF1009:
	.ascii	"S_BAR2\000"
.LASF1176:
	.ascii	"S_DOGS_RUN1\000"
.LASF1177:
	.ascii	"S_DOGS_RUN2\000"
.LASF1178:
	.ascii	"S_DOGS_RUN3\000"
.LASF98:
	.ascii	"_asctime_buf\000"
.LASF1179:
	.ascii	"S_DOGS_RUN4\000"
.LASF1180:
	.ascii	"S_DOGS_RUN5\000"
.LASF1181:
	.ascii	"S_DOGS_RUN6\000"
.LASF1607:
	.ascii	"sfx_chgun\000"
.LASF1892:
	.ascii	"screenblocks\000"
.LASF153:
	.ascii	"am_shell\000"
.LASF14:
	.ascii	"__wch\000"
.LASF1853:
	.ascii	"snd_card\000"
.LASF1711:
	.ascii	"pitched_sounds\000"
.LASF1784:
	.ascii	"key_endgame\000"
.LASF113:
	.ascii	"_wcsrtombs_state\000"
.LASF1762:
	.ascii	"key_menu_down\000"
.LASF200:
	.ascii	"complevel_t\000"
.LASF599:
	.ascii	"S_FATT_DIE10\000"
.LASF380:
	.ascii	"S_POSS_RUN3\000"
.LASF140:
	.ascii	"NUMCARDS\000"
.LASF1136:
	.ascii	"S_REDTORCH\000"
.LASF1503:
	.ascii	"mus_shawn2\000"
.LASF1274:
	.ascii	"MT_BFG\000"
.LASF1575:
	.ascii	"sfx_vilatk\000"
.LASF1893:
	.ascii	"showMessages\000"
.LASF1610:
	.ascii	"sfx_bdcls\000"
.LASF120:
	.ascii	"PU_STATIC\000"
.LASF1277:
	.ascii	"MT_BLOOD\000"
.LASF10:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF212:
	.ascii	"S_PISTOL\000"
.LASF1659:
	.ascii	"RDRAW_FILTER_LINEAR\000"
.LASF1890:
	.ascii	"realtic_clock_rate\000"
.LASF1685:
	.ascii	"length\000"
.LASF1664:
	.ascii	"RDRAW_MASKEDCOLUMNEDGE_SQUARE\000"
.LASF182:
	.ascii	"ultdoom_compatibility\000"
.LASF862:
	.ascii	"S_BSPI_RAISE1\000"
.LASF863:
	.ascii	"S_BSPI_RAISE2\000"
.LASF864:
	.ascii	"S_BSPI_RAISE3\000"
.LASF865:
	.ascii	"S_BSPI_RAISE4\000"
.LASF866:
	.ascii	"S_BSPI_RAISE5\000"
.LASF867:
	.ascii	"S_BSPI_RAISE6\000"
.LASF868:
	.ascii	"S_BSPI_RAISE7\000"
.LASF5:
	.ascii	"long int\000"
.LASF951:
	.ascii	"S_SSWV_XDIE1\000"
.LASF952:
	.ascii	"S_SSWV_XDIE2\000"
.LASF953:
	.ascii	"S_SSWV_XDIE3\000"
.LASF954:
	.ascii	"S_SSWV_XDIE4\000"
.LASF955:
	.ascii	"S_SSWV_XDIE5\000"
.LASF956:
	.ascii	"S_SSWV_XDIE6\000"
.LASF183:
	.ascii	"finaldoom_compatibility\000"
.LASF958:
	.ascii	"S_SSWV_XDIE8\000"
.LASF959:
	.ascii	"S_SSWV_XDIE9\000"
.LASF249:
	.ascii	"S_DSGUNFLASH1\000"
.LASF250:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1308:
	.ascii	"MT_MISC22\000"
.LASF601:
	.ascii	"S_FATT_RAISE2\000"
.LASF1344:
	.ascii	"MT_MISC55\000"
.LASF1722:
	.ascii	"mouseSensitivity_horiz\000"
.LASF105:
	.ascii	"_wctomb_state\000"
.LASF138:
	.ascii	"it_yellowskull\000"
.LASF179:
	.ascii	"doom_12_compatibility\000"
.LASF1039:
	.ascii	"S_RSKULL2\000"
.LASF125:
	.ascii	"PU_CACHE\000"
.LASF814:
	.ascii	"S_SPID_RUN10\000"
.LASF815:
	.ascii	"S_SPID_RUN11\000"
.LASF816:
	.ascii	"S_SPID_RUN12\000"
.LASF1922:
	.ascii	"strcpy\000"
.LASF1554:
	.ascii	"sfx_wpnup\000"
.LASF1751:
	.ascii	"monkeys\000"
.LASF1733:
	.ascii	"default_player_bobbing\000"
.LASF1377:
	.ascii	"MT_PULL\000"
.LASF1223:
	.ascii	"S_BSKUL_ATK1\000"
.LASF265:
	.ascii	"S_MISSILEFLASH1\000"
.LASF266:
	.ascii	"S_MISSILEFLASH2\000"
.LASF267:
	.ascii	"S_MISSILEFLASH3\000"
.LASF268:
	.ascii	"S_MISSILEFLASH4\000"
.LASF91:
	.ascii	"_iobs\000"
.LASF71:
	.ascii	"_emergency\000"
.LASF1420:
	.ascii	"COMP_NUM\000"
.LASF1574:
	.ascii	"sfx_skepch\000"
.LASF1527:
	.ascii	"sfx_dbcls\000"
.LASF625:
	.ascii	"S_CPOS_DIE2\000"
.LASF1710:
	.ascii	"default_compatibility_level\000"
.LASF626:
	.ascii	"S_CPOS_DIE3\000"
.LASF627:
	.ascii	"S_CPOS_DIE4\000"
.LASF628:
	.ascii	"S_CPOS_DIE5\000"
.LASF629:
	.ascii	"S_CPOS_DIE6\000"
.LASF115:
	.ascii	"_nextf\000"
.LASF630:
	.ascii	"S_CPOS_DIE7\000"
.LASF101:
	.ascii	"_rand_next\000"
.LASF1489:
	.ascii	"mus_doom\000"
.LASF1856:
	.ascii	"usegamma\000"
.LASF1757:
	.ascii	"key_up\000"
.LASF1674:
	.ascii	"filterfloor\000"
.LASF1071:
	.ascii	"S_PVIS2\000"
.LASF1269:
	.ascii	"MT_BARREL\000"
.LASF1655:
	.ascii	"automapmode_e\000"
.LASF1236:
	.ascii	"S_BSKUL_DIE8\000"
.LASF803:
	.ascii	"S_SPID_STND\000"
.LASF1689:
	.ascii	"M_LookupDefault\000"
.LASF1759:
	.ascii	"key_menu_right\000"
.LASF575:
	.ascii	"S_FATT_RUN10\000"
.LASF576:
	.ascii	"S_FATT_RUN11\000"
.LASF577:
	.ascii	"S_FATT_RUN12\000"
.LASF192:
	.ascii	"prboom_2_compatibility\000"
.LASF1713:
	.ascii	"default_demo_insurance\000"
.LASF1838:
	.ascii	"mapcolor_bdor\000"
.LASF1261:
	.ascii	"MT_PAIN\000"
.LASF1151:
	.ascii	"S_RTORCHSHRT4\000"
.LASF420:
	.ascii	"S_SPOS_ATK2\000"
.LASF23:
	.ascii	"_maxwds\000"
.LASF290:
	.ascii	"S_BFGFLASH1\000"
.LASF291:
	.ascii	"S_BFGFLASH2\000"
.LASF824:
	.ascii	"S_SPID_DIE2\000"
.LASF1501:
	.ascii	"mus_stlks3\000"
.LASF1617:
	.ascii	"sfx_bossit\000"
.LASF829:
	.ascii	"S_SPID_DIE7\000"
.LASF830:
	.ascii	"S_SPID_DIE8\000"
.LASF1789:
	.ascii	"key_spy\000"
.LASF1120:
	.ascii	"S_EVILEYE2\000"
.LASF1121:
	.ascii	"S_EVILEYE3\000"
.LASF1122:
	.ascii	"S_EVILEYE4\000"
.LASF295:
	.ascii	"S_PUFF1\000"
.LASF296:
	.ascii	"S_PUFF2\000"
.LASF297:
	.ascii	"S_PUFF3\000"
.LASF298:
	.ascii	"S_PUFF4\000"
.LASF1417:
	.ascii	"comp_666\000"
.LASF1433:
	.ascii	"name\000"
.LASF1273:
	.ascii	"MT_PLASMA\000"
.LASF1629:
	.ascii	"sfx_radio\000"
.LASF849:
	.ascii	"S_BSPI_ATK1\000"
.LASF850:
	.ascii	"S_BSPI_ATK2\000"
.LASF851:
	.ascii	"S_BSPI_ATK3\000"
.LASF852:
	.ascii	"S_BSPI_ATK4\000"
.LASF1031:
	.ascii	"S_BKEY2\000"
.LASF150:
	.ascii	"NUMWEAPONS\000"
.LASF1188:
	.ascii	"S_DOGS_PAIN2\000"
.LASF1515:
	.ascii	"mus_evil\000"
.LASF836:
	.ascii	"S_BSPI_SIGHT\000"
.LASF1546:
	.ascii	"sfx_plpain\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF982:
	.ascii	"S_BRAIN_DIE1\000"
.LASF983:
	.ascii	"S_BRAIN_DIE2\000"
.LASF984:
	.ascii	"S_BRAIN_DIE3\000"
.LASF985:
	.ascii	"S_BRAIN_DIE4\000"
.LASF317:
	.ascii	"S_BFGSHOT\000"
.LASF1123:
	.ascii	"S_FLOATSKULL\000"
.LASF473:
	.ascii	"S_VILE_DIE1\000"
.LASF474:
	.ascii	"S_VILE_DIE2\000"
.LASF475:
	.ascii	"S_VILE_DIE3\000"
.LASF476:
	.ascii	"S_VILE_DIE4\000"
.LASF477:
	.ascii	"S_VILE_DIE5\000"
.LASF478:
	.ascii	"S_VILE_DIE6\000"
.LASF479:
	.ascii	"S_VILE_DIE7\000"
.LASF480:
	.ascii	"S_VILE_DIE8\000"
.LASF481:
	.ascii	"S_VILE_DIE9\000"
.LASF1832:
	.ascii	"mapcolor_cchg\000"
.LASF1786:
	.ascii	"key_quickload\000"
.LASF1782:
	.ascii	"key_hud\000"
.LASF1409:
	.ascii	"comp_staylift\000"
.LASF1436:
	.ascii	"location\000"
.LASF1033:
	.ascii	"S_RKEY2\000"
.LASF1004:
	.ascii	"S_ARM1\000"
.LASF1006:
	.ascii	"S_ARM2\000"
.LASF1192:
	.ascii	"S_DOGS_DIE4\000"
.LASF1193:
	.ascii	"S_DOGS_DIE5\000"
.LASF1099:
	.ascii	"S_HEADCANDLES\000"
.LASF1603:
	.ascii	"sfx_barexp\000"
.LASF729:
	.ascii	"S_BOSS_STND\000"
.LASF1778:
	.ascii	"key_chat\000"
.LASF1598:
	.ascii	"sfx_dmact\000"
.LASF709:
	.ascii	"S_HEAD_PAIN\000"
.LASF135:
	.ascii	"it_yellowcard\000"
.LASF184:
	.ascii	"dosdoom_compatibility\000"
.LASF1850:
	.ascii	"mapcolor_sngl\000"
.LASF56:
	.ascii	"_close\000"
.LASF1245:
	.ascii	"MT_TRACER\000"
.LASF590:
	.ascii	"S_FATT_DIE1\000"
.LASF87:
	.ascii	"char\000"
.LASF592:
	.ascii	"S_FATT_DIE3\000"
.LASF593:
	.ascii	"S_FATT_DIE4\000"
.LASF594:
	.ascii	"S_FATT_DIE5\000"
.LASF595:
	.ascii	"S_FATT_DIE6\000"
.LASF596:
	.ascii	"S_FATT_DIE7\000"
.LASF597:
	.ascii	"S_FATT_DIE8\000"
.LASF598:
	.ascii	"S_FATT_DIE9\000"
.LASF665:
	.ascii	"S_TROO_XDIE2\000"
.LASF666:
	.ascii	"S_TROO_XDIE3\000"
.LASF89:
	.ascii	"_glue\000"
.LASF668:
	.ascii	"S_TROO_XDIE5\000"
.LASF669:
	.ascii	"S_TROO_XDIE6\000"
.LASF670:
	.ascii	"S_TROO_XDIE7\000"
.LASF671:
	.ascii	"S_TROO_XDIE8\000"
.LASF1805:
	.ascii	"key_map_up\000"
.LASF1576:
	.ascii	"sfx_claw\000"
.LASF1112:
	.ascii	"S_SHRTREDCOL\000"
.LASF1429:
	.ascii	"m_map\000"
.LASF1919:
	.ascii	"fscanf\000"
.LASF1706:
	.ascii	"__ctype_ptr__\000"
.LASF1155:
	.ascii	"S_HANGTSKULL\000"
.LASF1877:
	.ascii	"ammo_red\000"
.LASF1930:
	.ascii	"__builtin_fwrite\000"
.LASF1773:
	.ascii	"key_loadgame\000"
.LASF1172:
	.ascii	"S_DETONATE2\000"
.LASF1173:
	.ascii	"S_DETONATE3\000"
.LASF132:
	.ascii	"indetermined\000"
.LASF164:
	.ascii	"NUMPOWERS\000"
.LASF1881:
	.ascii	"sts_traditional_keys\000"
.LASF940:
	.ascii	"S_SSWV_ATK3\000"
.LASF941:
	.ascii	"S_SSWV_ATK4\000"
.LASF246:
	.ascii	"S_DSGUN10\000"
.LASF1586:
	.ascii	"sfx_cacdth\000"
.LASF159:
	.ascii	"pw_strength\000"
.LASF26:
	.ascii	"_Bigint\000"
.LASF1543:
	.ascii	"sfx_stnmov\000"
.LASF1251:
	.ascii	"MT_SERGEANT\000"
.LASF1538:
	.ascii	"sfx_firxpl\000"
.LASF1102:
	.ascii	"S_LIVESTICK\000"
.LASF1042:
	.ascii	"S_STIM\000"
.LASF1434:
	.ascii	"menu\000"
.LASF1875:
	.ascii	"armor_yellow\000"
.LASF171:
	.ascii	"ss_mess\000"
.LASF1406:
	.ascii	"comp_skymap\000"
.LASF154:
	.ascii	"am_cell\000"
.LASF134:
	.ascii	"it_bluecard\000"
.LASF705:
	.ascii	"S_HEAD_RUN1\000"
.LASF360:
	.ascii	"S_PLAY_DIE1\000"
.LASF361:
	.ascii	"S_PLAY_DIE2\000"
.LASF362:
	.ascii	"S_PLAY_DIE3\000"
.LASF363:
	.ascii	"S_PLAY_DIE4\000"
.LASF364:
	.ascii	"S_PLAY_DIE5\000"
.LASF365:
	.ascii	"S_PLAY_DIE6\000"
.LASF366:
	.ascii	"S_PLAY_DIE7\000"
.LASF83:
	.ascii	"_atexit0\000"
.LASF1202:
	.ascii	"S_OLDBFG42\000"
.LASF1203:
	.ascii	"S_OLDBFG43\000"
.LASF332:
	.ascii	"S_TFOG\000"
.LASF1764:
	.ascii	"key_menu_escape\000"
.LASF1921:
	.ascii	"strlen\000"
.LASF692:
	.ascii	"S_SARG_DIE1\000"
.LASF693:
	.ascii	"S_SARG_DIE2\000"
.LASF1876:
	.ascii	"armor_green\000"
.LASF694:
	.ascii	"S_SARG_DIE3\000"
.LASF695:
	.ascii	"S_SARG_DIE4\000"
.LASF993:
	.ascii	"S_SPAWNFIRE1\000"
.LASF994:
	.ascii	"S_SPAWNFIRE2\000"
.LASF995:
	.ascii	"S_SPAWNFIRE3\000"
.LASF996:
	.ascii	"S_SPAWNFIRE4\000"
.LASF997:
	.ascii	"S_SPAWNFIRE5\000"
.LASF998:
	.ascii	"S_SPAWNFIRE6\000"
.LASF999:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1000:
	.ascii	"S_SPAWNFIRE8\000"
.LASF664:
	.ascii	"S_TROO_XDIE1\000"
.LASF667:
	.ascii	"S_TROO_XDIE4\000"
.LASF1687:
	.ascii	"M_ReadFile\000"
.LASF1157:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF108:
	.ascii	"_getdate_err\000"
.LASF1841:
	.ascii	"mapcolor_secr\000"
.LASF312:
	.ascii	"S_PLASEXP2\000"
.LASF313:
	.ascii	"S_PLASEXP3\000"
.LASF314:
	.ascii	"S_PLASEXP4\000"
.LASF315:
	.ascii	"S_PLASEXP5\000"
.LASF147:
	.ascii	"wp_bfg\000"
.LASF1141:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1142:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1143:
	.ascii	"S_BTORCHSHRT4\000"
.LASF1593:
	.ascii	"sfx_kntdth\000"
.LASF445:
	.ascii	"S_VILE_RUN1\000"
.LASF235:
	.ascii	"S_DSGUNDOWN\000"
.LASF447:
	.ascii	"S_VILE_RUN3\000"
.LASF448:
	.ascii	"S_VILE_RUN4\000"
.LASF449:
	.ascii	"S_VILE_RUN5\000"
.LASF450:
	.ascii	"S_VILE_RUN6\000"
.LASF451:
	.ascii	"S_VILE_RUN7\000"
.LASF452:
	.ascii	"S_VILE_RUN8\000"
.LASF453:
	.ascii	"S_VILE_RUN9\000"
.LASF696:
	.ascii	"S_SARG_DIE5\000"
.LASF697:
	.ascii	"S_SARG_DIE6\000"
.LASF1585:
	.ascii	"sfx_sgtdth\000"
.LASF1615:
	.ascii	"sfx_bospit\000"
.LASF1234:
	.ascii	"S_BSKUL_DIE6\000"
.LASF537:
	.ascii	"S_SKEL_FIST1\000"
.LASF538:
	.ascii	"S_SKEL_FIST2\000"
.LASF539:
	.ascii	"S_SKEL_FIST3\000"
.LASF540:
	.ascii	"S_SKEL_FIST4\000"
.LASF276:
	.ascii	"S_PLASMA\000"
.LASF1055:
	.ascii	"S_PINS\000"
.LASF1182:
	.ascii	"S_DOGS_RUN7\000"
.LASF1183:
	.ascii	"S_DOGS_RUN8\000"
.LASF1808:
	.ascii	"key_map_zoomout\000"
.LASF1708:
	.ascii	"weapon_preferences\000"
.LASF1212:
	.ascii	"S_PLS2BALL2\000"
.LASF1735:
	.ascii	"dog_jumping\000"
.LASF1550:
	.ascii	"sfx_mnpain\000"
.LASF1128:
	.ascii	"S_BLUETORCH\000"
.LASF1763:
	.ascii	"key_menu_backspace\000"
.LASF1704:
	.ascii	"size\000"
.LASF566:
	.ascii	"S_FATT_RUN1\000"
.LASF567:
	.ascii	"S_FATT_RUN2\000"
.LASF568:
	.ascii	"S_FATT_RUN3\000"
.LASF569:
	.ascii	"S_FATT_RUN4\000"
.LASF161:
	.ascii	"pw_ironfeet\000"
.LASF571:
	.ascii	"S_FATT_RUN6\000"
.LASF572:
	.ascii	"S_FATT_RUN7\000"
.LASF573:
	.ascii	"S_FATT_RUN8\000"
.LASF1104:
	.ascii	"S_MEAT2\000"
.LASF1105:
	.ascii	"S_MEAT3\000"
.LASF1106:
	.ascii	"S_MEAT4\000"
.LASF1107:
	.ascii	"S_MEAT5\000"
.LASF59:
	.ascii	"_blksize\000"
.LASF219:
	.ascii	"S_PISTOLFLASH\000"
.LASF439:
	.ascii	"S_SPOS_RAISE2\000"
.LASF440:
	.ascii	"S_SPOS_RAISE3\000"
.LASF441:
	.ascii	"S_SPOS_RAISE4\000"
.LASF442:
	.ascii	"S_SPOS_RAISE5\000"
.LASF57:
	.ascii	"_ubuf\000"
.LASF1819:
	.ascii	"mousebfire\000"
.LASF1870:
	.ascii	"hud_nosecrets\000"
.LASF1560:
	.ascii	"sfx_bgsit1\000"
.LASF1561:
	.ascii	"sfx_bgsit2\000"
.LASF1595:
	.ascii	"sfx_skedth\000"
.LASF103:
	.ascii	"_mblen_state\000"
.LASF85:
	.ascii	"__sglue\000"
.LASF1205:
	.ascii	"S_PLS1BALL2\000"
.LASF174:
	.ascii	"ss_comp\000"
.LASF1201:
	.ascii	"S_OLDBFG1\000"
.LASF471:
	.ascii	"S_VILE_PAIN\000"
.LASF75:
	.ascii	"__cleanup\000"
.LASF1804:
	.ascii	"key_map_left\000"
.LASF173:
	.ascii	"ss_gen\000"
.LASF1388:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF168:
	.ascii	"ss_stat\000"
.LASF1681:
	.ascii	"draw_vars_t\000"
.LASF1688:
	.ascii	"buffer\000"
.LASF938:
	.ascii	"S_SSWV_ATK1\000"
.LASF939:
	.ascii	"S_SSWV_ATK2\000"
.LASF468:
	.ascii	"S_VILE_HEAL1\000"
.LASF469:
	.ascii	"S_VILE_HEAL2\000"
.LASF470:
	.ascii	"S_VILE_HEAL3\000"
.LASF943:
	.ascii	"S_SSWV_ATK6\000"
.LASF1611:
	.ascii	"sfx_itmbk\000"
.LASF1567:
	.ascii	"sfx_bspsit\000"
.LASF1089:
	.ascii	"S_STALAG\000"
.LASF409:
	.ascii	"S_SPOS_STND\000"
.LASF1421:
	.ascii	"COMP_TOTAL\000"
.LASF12:
	.ascii	"_fpos_t\000"
.LASF804:
	.ascii	"S_SPID_STND2\000"
.LASF50:
	.ascii	"_file\000"
.LASF1342:
	.ascii	"MT_MISC53\000"
.LASF1493:
	.ascii	"mus_in_cit\000"
.LASF1648:
	.ascii	"LO_CONFIRM\000"
.LASF1090:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1159:
	.ascii	"S_SMALLPOOL\000"
.LASF1345:
	.ascii	"MT_MISC56\000"
.LASF588:
	.ascii	"S_FATT_PAIN\000"
.LASF1785:
	.ascii	"key_messages\000"
.LASF48:
	.ascii	"__sFILE\000"
.LASF352:
	.ascii	"S_PLAY_RUN1\000"
.LASF353:
	.ascii	"S_PLAY_RUN2\000"
.LASF354:
	.ascii	"S_PLAY_RUN3\000"
.LASF355:
	.ascii	"S_PLAY_RUN4\000"
.LASF1080:
	.ascii	"S_BPAK\000"
.LASF44:
	.ascii	"_fns\000"
.LASF1860:
	.ascii	"hudcolor_titl\000"
.LASF1037:
	.ascii	"S_BSKULL2\000"
.LASF1859:
	.ascii	"use_fullscreen\000"
.LASF1833:
	.ascii	"mapcolor_clsd\000"
.LASF966:
	.ascii	"S_COMMKEEN\000"
.LASF1539:
	.ascii	"sfx_pstart\000"
.LASF1848:
	.ascii	"mapcolor_frnd\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF114:
	.ascii	"_h_errno\000"
.LASF1384:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF758:
	.ascii	"S_BOS2_STND\000"
.LASF989:
	.ascii	"S_SPAWN1\000"
.LASF990:
	.ascii	"S_SPAWN2\000"
.LASF991:
	.ascii	"S_SPAWN3\000"
.LASF992:
	.ascii	"S_SPAWN4\000"
.LASF1138:
	.ascii	"S_REDTORCH3\000"
.LASF1163:
	.ascii	"S_TECHLAMP3\000"
.LASF148:
	.ascii	"wp_chainsaw\000"
.LASF1259:
	.ascii	"MT_BABY\000"
.LASF911:
	.ascii	"S_PAIN_ATK2\000"
.LASF1298:
	.ascii	"MT_MISC14\000"
.LASF1103:
	.ascii	"S_LIVESTICK2\000"
.LASF1666:
	.ascii	"RDRAW_MASKEDCOLUMNEDGE_MAX\000"
.LASF1148:
	.ascii	"S_RTORCHSHRT\000"
.LASF1305:
	.ascii	"MT_MISC19\000"
.LASF565:
	.ascii	"S_FATT_STND2\000"
.LASF704:
	.ascii	"S_HEAD_STND\000"
.LASF1678:
	.ascii	"sprite_edges\000"
.LASF679:
	.ascii	"S_SARG_RUN1\000"
.LASF680:
	.ascii	"S_SARG_RUN2\000"
.LASF681:
	.ascii	"S_SARG_RUN3\000"
.LASF682:
	.ascii	"S_SARG_RUN4\000"
.LASF683:
	.ascii	"S_SARG_RUN5\000"
.LASF684:
	.ascii	"S_SARG_RUN6\000"
.LASF685:
	.ascii	"S_SARG_RUN7\000"
.LASF686:
	.ascii	"S_SARG_RUN8\000"
.LASF1283:
	.ascii	"MT_MISC1\000"
.LASF1284:
	.ascii	"MT_MISC2\000"
.LASF1285:
	.ascii	"MT_MISC3\000"
.LASF1286:
	.ascii	"MT_MISC4\000"
.LASF1287:
	.ascii	"MT_MISC5\000"
.LASF1288:
	.ascii	"MT_MISC6\000"
.LASF1289:
	.ascii	"MT_MISC7\000"
.LASF1290:
	.ascii	"MT_MISC8\000"
.LASF1291:
	.ascii	"MT_MISC9\000"
.LASF269:
	.ascii	"S_SAW\000"
.LASF1866:
	.ascii	"hud_msg_lines\000"
.LASF1596:
	.ascii	"sfx_posact\000"
.LASF358:
	.ascii	"S_PLAY_PAIN\000"
.LASF1670:
	.ascii	"byte_pitch\000"
.LASF18:
	.ascii	"__value\000"
.LASF310:
	.ascii	"S_PLASBALL2\000"
.LASF1393:
	.ascii	"ps_flash\000"
.LASF41:
	.ascii	"_is_cxa\000"
.LASF1772:
	.ascii	"key_savegame\000"
.LASF1630:
	.ascii	"sfx_dgsit\000"
.LASF944:
	.ascii	"S_SSWV_PAIN\000"
.LASF979:
	.ascii	"S_KEENPAIN2\000"
.LASF1869:
	.ascii	"hud_active\000"
.LASF163:
	.ascii	"pw_infrared\000"
.LASF466:
	.ascii	"S_VILE_ATK10\000"
.LASF467:
	.ascii	"S_VILE_ATK11\000"
.LASF1438:
	.ascii	"minvalue\000"
.LASF78:
	.ascii	"_p5s\000"
.LASF1756:
	.ascii	"key_left\000"
.LASF1412:
	.ascii	"comp_infcheat\000"
.LASF1387:
	.ascii	"MT_STEALTHFATSO\000"
.LASF181:
	.ascii	"doom2_19_compatibility\000"
.LASF1369:
	.ascii	"MT_MISC80\000"
.LASF1443:
	.ascii	"setup_menu\000"
.LASF1019:
	.ascii	"S_BON1A\000"
.LASF1020:
	.ascii	"S_BON1B\000"
.LASF1021:
	.ascii	"S_BON1C\000"
.LASF1022:
	.ascii	"S_BON1D\000"
.LASF1023:
	.ascii	"S_BON1E\000"
.LASF188:
	.ascii	"boom_202_compatibility\000"
.LASF1854:
	.ascii	"mus_card\000"
.LASF1777:
	.ascii	"key_zoomout\000"
.LASF1415:
	.ascii	"comp_respawn\000"
.LASF335:
	.ascii	"S_TFOG2\000"
.LASF1552:
	.ascii	"sfx_slop\000"
.LASF1653:
	.ascii	"LO_ALWAYS\000"
.LASF1307:
	.ascii	"MT_MISC21\000"
.LASF690:
	.ascii	"S_SARG_PAIN\000"
.LASF1302:
	.ascii	"MT_CLIP\000"
.LASF1791:
	.ascii	"key_setup\000"
.LASF1635:
	.ascii	"NUMSFX\000"
.LASF1357:
	.ascii	"MT_MISC68\000"
.LASF1015:
	.ascii	"S_BBAR1\000"
.LASF1016:
	.ascii	"S_BBAR2\000"
.LASF1017:
	.ascii	"S_BBAR3\000"
.LASF203:
	.ascii	"S_LIGHTDONE\000"
.LASF854:
	.ascii	"S_BSPI_PAIN2\000"
.LASF1230:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1504:
	.ascii	"mus_messag\000"
.LASF1232:
	.ascii	"S_BSKUL_DIE4\000"
.LASF654:
	.ascii	"S_TROO_ATK1\000"
.LASF655:
	.ascii	"S_TROO_ATK2\000"
.LASF656:
	.ascii	"S_TROO_ATK3\000"
.LASF798:
	.ascii	"S_SKULL_DIE2\000"
.LASF799:
	.ascii	"S_SKULL_DIE3\000"
.LASF800:
	.ascii	"S_SKULL_DIE4\000"
.LASF801:
	.ascii	"S_SKULL_DIE5\000"
.LASF802:
	.ascii	"S_SKULL_DIE6\000"
.LASF253:
	.ascii	"S_CHAINUP\000"
.LASF1025:
	.ascii	"S_BON2A\000"
.LASF1026:
	.ascii	"S_BON2B\000"
.LASF1027:
	.ascii	"S_BON2C\000"
.LASF1028:
	.ascii	"S_BON2D\000"
.LASF1029:
	.ascii	"S_BON2E\000"
.LASF1312:
	.ascii	"MT_CHAINGUN\000"
.LASF301:
	.ascii	"S_TBALLX1\000"
.LASF302:
	.ascii	"S_TBALLX2\000"
.LASF303:
	.ascii	"S_TBALLX3\000"
.LASF151:
	.ascii	"wp_nochange\000"
.LASF1249:
	.ascii	"MT_CHAINGUY\000"
.LASF1444:
	.ascii	"setup_menu_s\000"
.LASF1557:
	.ascii	"sfx_posit1\000"
.LASF1558:
	.ascii	"sfx_posit2\000"
.LASF1559:
	.ascii	"sfx_posit3\000"
.LASF1439:
	.ascii	"maxvalue\000"
.LASF797:
	.ascii	"S_SKULL_DIE1\000"
.LASF1623:
	.ascii	"sfx_ssdth\000"
.LASF1160:
	.ascii	"S_BRAINSTEM\000"
.LASF965:
	.ascii	"S_KEENSTND\000"
.LASF1497:
	.ascii	"mus_doom2\000"
.LASF1572:
	.ascii	"sfx_sklatk\000"
.LASF1727:
	.ascii	"default_variable_friction\000"
.LASF1802:
	.ascii	"destination_keys\000"
.LASF166:
	.ascii	"ss_keys\000"
.LASF1731:
	.ascii	"default_weapon_recoil\000"
.LASF1843:
	.ascii	"mapcolor_unsn\000"
.LASF1814:
	.ascii	"key_map_grid\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF1871:
	.ascii	"health_red\000"
.LASF1100:
	.ascii	"S_HEADCANDLES2\000"
.LASF1279:
	.ascii	"MT_IFOG\000"
.LASF1418:
	.ascii	"comp_soul\000"
.LASF1495:
	.ascii	"mus_stlks2\000"
.LASF962:
	.ascii	"S_SSWV_RAISE3\000"
.LASF1618:
	.ascii	"sfx_bospn\000"
.LASF964:
	.ascii	"S_SSWV_RAISE5\000"
.LASF1398:
	.ascii	"comp_pain\000"
.LASF272:
	.ascii	"S_SAWUP\000"
.LASF1005:
	.ascii	"S_ARM1A\000"
.LASF608:
	.ascii	"S_CPOS_STND\000"
.LASF1079:
	.ascii	"S_SBOX\000"
.LASF1323:
	.ascii	"MT_MISC34\000"
.LASF1195:
	.ascii	"S_DOGS_RAISE1\000"
.LASF1196:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1197:
	.ascii	"S_DOGS_RAISE3\000"
.LASF311:
	.ascii	"S_PLASEXP\000"
.LASF1199:
	.ascii	"S_DOGS_RAISE5\000"
.LASF1200:
	.ascii	"S_DOGS_RAISE6\000"
.LASF100:
	.ascii	"_gamma_signgam\000"
.LASF1737:
	.ascii	"distfriend\000"
.LASF1095:
	.ascii	"S_DEADBOTTOM\000"
.LASF1732:
	.ascii	"player_bobbing\000"
.LASF1609:
	.ascii	"sfx_bdopn\000"
.LASF1152:
	.ascii	"S_HANGNOGUTS\000"
.LASF1056:
	.ascii	"S_PINS2\000"
.LASF1057:
	.ascii	"S_PINS3\000"
.LASF1058:
	.ascii	"S_PINS4\000"
.LASF1815:
	.ascii	"key_map_rotate\000"
.LASF910:
	.ascii	"S_PAIN_ATK1\000"
.LASF1928:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF912:
	.ascii	"S_PAIN_ATK3\000"
.LASF913:
	.ascii	"S_PAIN_ATK4\000"
.LASF1432:
	.ascii	"m_key\000"
.LASF957:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1916:
	.ascii	"Z_Strdup\000"
.LASF222:
	.ascii	"S_SGUNUP\000"
.LASF72:
	.ascii	"_current_category\000"
.LASF1728:
	.ascii	"monsters_remember\000"
.LASF1775:
	.ascii	"key_reverse\000"
.LASF1749:
	.ascii	"monster_infighting\000"
.LASF1007:
	.ascii	"S_ARM2A\000"
.LASF876:
	.ascii	"S_CYBER_STND\000"
.LASF483:
	.ascii	"S_FIRE1\000"
.LASF1035:
	.ascii	"S_YKEY2\000"
.LASF485:
	.ascii	"S_FIRE3\000"
.LASF1419:
	.ascii	"comp_maskedanim\000"
.LASF730:
	.ascii	"S_BOSS_STND2\000"
.LASF1602:
	.ascii	"sfx_noway\000"
.LASF1863:
	.ascii	"hudcolor_chat\000"
.LASF1662:
	.ascii	"RDRAW_FILTER_MAXFILTERS2\000"
.LASF273:
	.ascii	"S_SAW1\000"
.LASF274:
	.ascii	"S_SAW2\000"
.LASF275:
	.ascii	"S_SAW3\000"
.LASF1897:
	.ascii	"map_point_coordinates\000"
.LASF1018:
	.ascii	"S_BON1\000"
.LASF1024:
	.ascii	"S_BON2\000"
.LASF1490:
	.ascii	"mus_the_da\000"
.LASF270:
	.ascii	"S_SAWB\000"
.LASF1834:
	.ascii	"mapcolor_rkey\000"
.LASF658:
	.ascii	"S_TROO_PAIN2\000"
.LASF172:
	.ascii	"ss_chat\000"
.LASF1265:
	.ascii	"MT_BOSSSPIT\000"
.LASF74:
	.ascii	"__sdidinit\000"
.LASF484:
	.ascii	"S_FIRE2\000"
.LASF201:
	.ascii	"fixed_t\000"
.LASF486:
	.ascii	"S_FIRE4\000"
.LASF487:
	.ascii	"S_FIRE5\000"
.LASF488:
	.ascii	"S_FIRE6\000"
.LASF489:
	.ascii	"S_FIRE7\000"
.LASF490:
	.ascii	"S_FIRE8\000"
.LASF491:
	.ascii	"S_FIRE9\000"
.LASF1216:
	.ascii	"S_BON3\000"
.LASF1217:
	.ascii	"S_BON4\000"
.LASF1145:
	.ascii	"S_GTORCHSHRT2\000"
.LASF1076:
	.ascii	"S_CELL\000"
.LASF1336:
	.ascii	"MT_MISC47\000"
.LASF1337:
	.ascii	"MT_MISC48\000"
.LASF1198:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1338:
	.ascii	"MT_MISC49\000"
.LASF789:
	.ascii	"S_SKULL_RUN1\000"
.LASF790:
	.ascii	"S_SKULL_RUN2\000"
.LASF1156:
	.ascii	"S_HANGTLOOKUP\000"
.LASF251:
	.ascii	"S_CHAIN\000"
.LASF198:
	.ascii	"boom_compatibility\000"
.LASF281:
	.ascii	"S_PLASMAFLASH1\000"
.LASF237:
	.ascii	"S_DSGUN1\000"
.LASF238:
	.ascii	"S_DSGUN2\000"
.LASF239:
	.ascii	"S_DSGUN3\000"
.LASF240:
	.ascii	"S_DSGUN4\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF242:
	.ascii	"S_DSGUN6\000"
.LASF243:
	.ascii	"S_DSGUN7\000"
.LASF199:
	.ascii	"best_compatibility\000"
.LASF1654:
	.ascii	"OutputLevels\000"
.LASF1600:
	.ascii	"sfx_bspwlk\000"
.LASF638:
	.ascii	"S_CPOS_RAISE2\000"
.LASF1376:
	.ascii	"MT_PUSH\000"
.LASF1822:
	.ascii	"mousebbackward\000"
.LASF1592:
	.ascii	"sfx_vildth\000"
.LASF1880:
	.ascii	"sts_pct_always_gray\000"
.LASF286:
	.ascii	"S_BFG1\000"
.LASF287:
	.ascii	"S_BFG2\000"
.LASF288:
	.ascii	"S_BFG3\000"
.LASF289:
	.ascii	"S_BFG4\000"
.LASF1498:
	.ascii	"mus_ddtbl2\000"
.LASF1864:
	.ascii	"hudcolor_list\000"
.LASF1779:
	.ascii	"key_backspace\000"
.LASF1063:
	.ascii	"S_SUIT\000"
.LASF247:
	.ascii	"S_DSNR1\000"
.LASF248:
	.ascii	"S_DSNR2\000"
.LASF788:
	.ascii	"S_SKULL_STND2\000"
.LASF1051:
	.ascii	"S_PINV2\000"
.LASF1052:
	.ascii	"S_PINV3\000"
.LASF1053:
	.ascii	"S_PINV4\000"
.LASF1146:
	.ascii	"S_GTORCHSHRT3\000"
.LASF1891:
	.ascii	"tran_filter_pct\000"
.LASF1166:
	.ascii	"S_TECH2LAMP2\000"
.LASF1167:
	.ascii	"S_TECH2LAMP3\000"
.LASF1168:
	.ascii	"S_TECH2LAMP4\000"
.LASF1929:
	.ascii	"finecosine\000"
.LASF7:
	.ascii	"long long int\000"
.LASF631:
	.ascii	"S_CPOS_XDIE1\000"
.LASF632:
	.ascii	"S_CPOS_XDIE2\000"
.LASF633:
	.ascii	"S_CPOS_XDIE3\000"
.LASF634:
	.ascii	"S_CPOS_XDIE4\000"
.LASF635:
	.ascii	"S_CPOS_XDIE5\000"
.LASF636:
	.ascii	"S_CPOS_XDIE6\000"
.LASF1510:
	.ascii	"mus_messg2\000"
.LASF817:
	.ascii	"S_SPID_ATK1\000"
.LASF818:
	.ascii	"S_SPID_ATK2\000"
.LASF819:
	.ascii	"S_SPID_ATK3\000"
.LASF64:
	.ascii	"_flags2\000"
.LASF1410:
	.ascii	"comp_zombie\000"
.LASF541:
	.ascii	"S_SKEL_MISS1\000"
.LASF542:
	.ascii	"S_SKEL_MISS2\000"
.LASF543:
	.ascii	"S_SKEL_MISS3\000"
.LASF544:
	.ascii	"S_SKEL_MISS4\000"
.LASF795:
	.ascii	"S_SKULL_PAIN\000"
.LASF1038:
	.ascii	"S_RSKULL\000"
.LASF870:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF1339:
	.ascii	"MT_MISC50\000"
.LASF718:
	.ascii	"S_HEAD_RAISE1\000"
.LASF1374:
	.ascii	"MT_MISC85\000"
.LASF719:
	.ascii	"S_HEAD_RAISE2\000"
.LASF1229:
	.ascii	"S_BSKUL_DIE1\000"
.LASF720:
	.ascii	"S_HEAD_RAISE3\000"
.LASF1231:
	.ascii	"S_BSKUL_DIE3\000"
.LASF721:
	.ascii	"S_HEAD_RAISE4\000"
.LASF1233:
	.ascii	"S_BSKUL_DIE5\000"
.LASF722:
	.ascii	"S_HEAD_RAISE5\000"
.LASF1235:
	.ascii	"S_BSKUL_DIE7\000"
.LASF723:
	.ascii	"S_HEAD_RAISE6\000"
.LASF1829:
	.ascii	"mapcolor_grid\000"
.LASF1896:
	.ascii	"S_music_files\000"
.LASF1317:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF986:
	.ascii	"S_BRAINEYE\000"
.LASF1449:
	.ascii	"m_joy\000"
.LASF1379:
	.ascii	"MT_STEALTHBABY\000"
.LASF1913:
	.ascii	"I_DoomExeDir\000"
.LASF1435:
	.ascii	"default_s\000"
.LASF1646:
	.ascii	"default_t\000"
.LASF1275:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1847:
	.ascii	"mapcolor_enemy\000"
.LASF1842:
	.ascii	"mapcolor_exit\000"
.LASF464:
	.ascii	"S_VILE_ATK8\000"
.LASF405:
	.ascii	"S_POSS_RAISE1\000"
.LASF406:
	.ascii	"S_POSS_RAISE2\000"
.LASF407:
	.ascii	"S_POSS_RAISE3\000"
.LASF408:
	.ascii	"S_POSS_RAISE4\000"
.LASF260:
	.ascii	"S_MISSILEDOWN\000"
.LASF1408:
	.ascii	"comp_doorstuck\000"
.LASF1665:
	.ascii	"RDRAW_MASKEDCOLUMNEDGE_SLOPED\000"
.LASF1124:
	.ascii	"S_FLOATSKULL2\000"
.LASF1125:
	.ascii	"S_FLOATSKULL3\000"
.LASF1526:
	.ascii	"sfx_dbopn\000"
.LASF1530:
	.ascii	"sfx_bfg\000"
.LASF1059:
	.ascii	"S_MEGA\000"
.LASF739:
	.ascii	"S_BOSS_ATK1\000"
.LASF740:
	.ascii	"S_BOSS_ATK2\000"
.LASF741:
	.ascii	"S_BOSS_ATK3\000"
.LASF546:
	.ascii	"S_SKEL_PAIN2\000"
.LASF1083:
	.ascii	"S_CSAW\000"
.LASF158:
	.ascii	"pw_invulnerability\000"
.LASF726:
	.ascii	"S_BRBALLX1\000"
.LASF727:
	.ascii	"S_BRBALLX2\000"
.LASF728:
	.ascii	"S_BRBALLX3\000"
.LASF127:
	.ascii	"PU_MAX\000"
.LASF857:
	.ascii	"S_BSPI_DIE3\000"
.LASF858:
	.ascii	"S_BSPI_DIE4\000"
.LASF859:
	.ascii	"S_BSPI_DIE5\000"
.LASF144:
	.ascii	"wp_chaingun\000"
.LASF861:
	.ascii	"S_BSPI_DIE7\000"
.LASF1761:
	.ascii	"key_menu_up\000"
.LASF785:
	.ascii	"S_BOS2_RAISE6\000"
.LASF1353:
	.ascii	"MT_MISC64\000"
.LASF413:
	.ascii	"S_SPOS_RUN3\000"
.LASF915:
	.ascii	"S_PAIN_PAIN2\000"
.LASF1396:
	.ascii	"comp_dropoff\000"
.LASF1522:
	.ascii	"sfx_pistol\000"
.LASF88:
	.ascii	"__FILE\000"
.LASF1358:
	.ascii	"MT_MISC69\000"
.LASF1445:
	.ascii	"m_text\000"
.LASF1669:
	.ascii	"int_topleft\000"
.LASF1923:
	.ascii	"I_ScreenShot\000"
.LASF377:
	.ascii	"S_POSS_STND2\000"
.LASF1316:
	.ascii	"MT_SHOTGUN\000"
.LASF1769:
	.ascii	"key_use\000"
.LASF24:
	.ascii	"_sign\000"
.LASF1241:
	.ascii	"MT_SHOTGUY\000"
.LASF29:
	.ascii	"__tm_min\000"
.LASF1441:
	.ascii	"setupscreen\000"
.LASF1161:
	.ascii	"S_TECHLAMP\000"
.LASF1262:
	.ascii	"MT_WOLFSS\000"
.LASF1813:
	.ascii	"key_map_clear\000"
.LASF1901:
	.ascii	"fwrite\000"
.LASF1645:
	.ascii	"def_colour\000"
.LASF122:
	.ascii	"PU_MUSIC\000"
.LASF1755:
	.ascii	"key_right\000"
.LASF1189:
	.ascii	"S_DOGS_DIE1\000"
.LASF1719:
	.ascii	"desired_screenheight\000"
.LASF1190:
	.ascii	"S_DOGS_DIE2\000"
.LASF759:
	.ascii	"S_BOS2_STND2\000"
.LASF254:
	.ascii	"S_CHAIN1\000"
.LASF255:
	.ascii	"S_CHAIN2\000"
.LASF256:
	.ascii	"S_CHAIN3\000"
.LASF307:
	.ascii	"S_RBALLX2\000"
.LASF308:
	.ascii	"S_RBALLX3\000"
.LASF410:
	.ascii	"S_SPOS_STND2\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF1887:
	.ascii	"demo_smoothturnsfactor\000"
.LASF102:
	.ascii	"_r48\000"
.LASF1523:
	.ascii	"sfx_shotgn\000"
.LASF1686:
	.ascii	"M_WriteFile\000"
.LASF157:
	.ascii	"am_noammo\000"
.LASF1563:
	.ascii	"sfx_cacsit\000"
.LASF1861:
	.ascii	"hudcolor_xyco\000"
.LASF1452:
	.ascii	"mus_None\000"
.LASF1399:
	.ascii	"comp_skull\000"
.LASF1675:
	.ascii	"filtersprite\000"
.LASF1507:
	.ascii	"mus_ampie\000"
.LASF1219:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1220:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1221:
	.ascii	"S_BSKUL_RUN3\000"
.LASF1222:
	.ascii	"S_BSKUL_RUN4\000"
.LASF1584:
	.ascii	"sfx_bgdth2\000"
.LASF1909:
	.ascii	"strcmp\000"
.LASF187:
	.ascii	"boom_201_compatibility\000"
.LASF386:
	.ascii	"S_POSS_ATK1\000"
.LASF387:
	.ascii	"S_POSS_ATK2\000"
.LASF388:
	.ascii	"S_POSS_ATK3\000"
.LASF1360:
	.ascii	"MT_MISC71\000"
.LASF1912:
	.ascii	"__errno\000"
.LASF1149:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1150:
	.ascii	"S_RTORCHSHRT3\000"
.LASF820:
	.ascii	"S_SPID_ATK4\000"
.LASF1423:
	.ascii	"am_overlay\000"
.LASF3:
	.ascii	"short int\000"
.LASF1366:
	.ascii	"MT_MISC77\000"
.LASF1367:
	.ascii	"MT_MISC78\000"
.LASF1368:
	.ascii	"MT_MISC79\000"
.LASF1257:
	.ascii	"MT_SKULL\000"
.LASF53:
	.ascii	"_read\000"
.LASF1244:
	.ascii	"MT_UNDEAD\000"
.LASF133:
	.ascii	"GameMode_t\000"
.LASF547:
	.ascii	"S_SKEL_DIE1\000"
.LASF548:
	.ascii	"S_SKEL_DIE2\000"
.LASF549:
	.ascii	"S_SKEL_DIE3\000"
.LASF550:
	.ascii	"S_SKEL_DIE4\000"
.LASF551:
	.ascii	"S_SKEL_DIE5\000"
.LASF552:
	.ascii	"S_SKEL_DIE6\000"
.LASF92:
	.ascii	"_rand48\000"
.LASF1268:
	.ascii	"MT_SPAWNFIRE\000"
.LASF1087:
	.ascii	"S_SHOT2\000"
.LASF1158:
	.ascii	"S_COLONGIBS\000"
.LASF1895:
	.ascii	"chat_macros\000"
.LASF1632:
	.ascii	"sfx_dgact\000"
.LASF1862:
	.ascii	"hudcolor_mesg\000"
.LASF185:
	.ascii	"tasdoom_compatibility\000"
.LASF309:
	.ascii	"S_PLASBALL\000"
.LASF1579:
	.ascii	"sfx_pdiehi\000"
.LASF1455:
	.ascii	"mus_e1m3\000"
.LASF1720:
	.ascii	"automapmode\000"
.LASF131:
	.ascii	"retail\000"
.LASF1293:
	.ascii	"MT_MISC11\000"
.LASF1294:
	.ascii	"MT_MISC12\000"
.LASF1296:
	.ascii	"MT_MISC13\000"
.LASF832:
	.ascii	"S_SPID_DIE10\000"
.LASF1299:
	.ascii	"MT_MISC15\000"
.LASF1300:
	.ascii	"MT_MISC16\000"
.LASF1303:
	.ascii	"MT_MISC17\000"
.LASF1304:
	.ascii	"MT_MISC18\000"
.LASF1072:
	.ascii	"S_CLIP\000"
.LASF1207:
	.ascii	"S_PLS1EXP2\000"
.LASF1208:
	.ascii	"S_PLS1EXP3\000"
.LASF1209:
	.ascii	"S_PLS1EXP4\000"
.LASF1210:
	.ascii	"S_PLS1EXP5\000"
.LASF1927:
	.ascii	"c:/devl/prboom3ds/src/m_misc.c\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
