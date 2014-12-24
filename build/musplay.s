	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"musplay.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	mus_init_music
	.type	mus_init_music, %function
mus_init_music:
.LFB3:
	.file 1 "c:/devl/prboom3ds/arm9/source/musplay.c"
	.loc 1 898 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE3:
	.size	mus_init_music, .-mus_init_music
	.align	2
	.global	mus_play_music
	.type	mus_play_music, %function
mus_play_music:
.LFB4:
	.loc 1 900 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	bx	lr
	.cfi_endproc
.LFE4:
	.size	mus_play_music, .-mus_play_music
	.align	2
	.global	mus_stop_music
	.type	mus_stop_music, %function
mus_stop_music:
.LFB5:
	.loc 1 902 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE5:
	.size	mus_stop_music, .-mus_stop_music
	.align	2
	.global	mus_update_volume
	.type	mus_update_volume, %function
mus_update_volume:
.LFB6:
	.loc 1 904 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE6:
	.size	mus_update_volume, .-mus_update_volume
	.global	playingChannels
	.comm	MLtime,4,4
	.global	OPLchannels
	.data
	.align	2
	.type	OPLchannels, %object
	.size	OPLchannels, 4
OPLchannels:
	.word	9
	.bss
	.align	2
	.type	playingChannels, %object
	.size	playingChannels, 4
playingChannels:
	.space	4
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h"
	.file 4 "c:/devl/prboom3ds/arm9/source/musplay.h"
	.file 5 "c:/devkitPro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x494
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x1
	.4byte	.LASF75
	.4byte	.LASF76
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1c
	.4byte	0x45
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2a
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x14
	.4byte	0x84
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0xf
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x11
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.byte	0x25
	.4byte	0x19a
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x26
	.4byte	0xa6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x27
	.4byte	0xa6
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x28
	.4byte	0xa6
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x29
	.4byte	0xa6
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2a
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2b
	.4byte	0xa6
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2c
	.4byte	0xa6
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2d
	.4byte	0xa6
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2e
	.4byte	0xa6
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2f
	.4byte	0xa6
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.byte	0x30
	.4byte	0xa6
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x31
	.4byte	0xa6
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.byte	0x32
	.4byte	0xa6
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.byte	0x33
	.4byte	0xa6
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x4
	.byte	0x34
	.4byte	0x4c
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x4
	.byte	0x35
	.4byte	0xdd
	.uleb128 0x7
	.byte	0x24
	.byte	0x4
	.byte	0x38
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.byte	0x39
	.4byte	0xb1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4
	.byte	0x3a
	.4byte	0xa6
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x4
	.byte	0x3b
	.4byte	0xa6
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0x3c
	.4byte	0x1de
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x19a
	.4byte	0x1ee
	.uleb128 0xa
	.4byte	0x76
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0x3d
	.4byte	0x1a5
	.uleb128 0x7
	.byte	0xa0
	.byte	0x4
	.byte	0x4b
	.4byte	0x256
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4c
	.4byte	0x256
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x4
	.byte	0x4d
	.4byte	0x266
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x4
	.byte	0x4e
	.4byte	0x266
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0x4f
	.4byte	0x276
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x4
	.byte	0x50
	.4byte	0x276
	.byte	0x70
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.byte	0x51
	.4byte	0x266
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.byte	0x52
	.4byte	0x266
	.byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	0x25
	.4byte	0x266
	.uleb128 0xa
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0xbc
	.4byte	0x276
	.uleb128 0xa
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0xc7
	.4byte	0x286
	.uleb128 0xa
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x4
	.byte	0x53
	.4byte	0x1f9
	.uleb128 0x7
	.byte	0xc8
	.byte	0x4
	.byte	0x55
	.4byte	0x31e
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x4
	.byte	0x56
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x4
	.byte	0x57
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.byte	0x5a
	.4byte	0x25
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5b
	.4byte	0x25
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5c
	.4byte	0x25
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5d
	.4byte	0x25
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.byte	0x5f
	.4byte	0x61
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x4
	.byte	0x60
	.4byte	0x61
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x4
	.byte	0x61
	.4byte	0x25
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x4
	.byte	0x62
	.4byte	0x25
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x4
	.byte	0x67
	.4byte	0x286
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x4
	.byte	0x68
	.4byte	0x291
	.uleb128 0x7
	.byte	0x1c
	.byte	0x4
	.byte	0x71
	.4byte	0x3b6
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x4
	.byte	0x72
	.4byte	0xbc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x4
	.byte	0x73
	.4byte	0xbc
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x4
	.byte	0x74
	.4byte	0xbc
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.byte	0x75
	.4byte	0xbc
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x4
	.byte	0x76
	.4byte	0xbc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4
	.byte	0x77
	.4byte	0xc7
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x4
	.byte	0x78
	.4byte	0xd2
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.byte	0x79
	.4byte	0x25
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x4
	.byte	0x7a
	.4byte	0x25
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0x7b
	.4byte	0x3b6
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.byte	0x7c
	.4byte	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x19a
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x4
	.byte	0x7d
	.4byte	0x329
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x382
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x384
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fe
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x384
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x386
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x388
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1e
	.4byte	0x42e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x1
	.byte	0x21
	.4byte	0x31e
	.uleb128 0x9
	.4byte	0x3bc
	.4byte	0x44f
	.uleb128 0xa
	.4byte	0x76
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x1
	.byte	0x24
	.4byte	0x43f
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	OPLchannels
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x1f
	.4byte	0x47c
	.uleb128 0x5
	.byte	0x3
	.4byte	MLtime
	.uleb128 0x11
	.4byte	0x61
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.byte	0x20
	.4byte	0x492
	.uleb128 0x5
	.byte	0x3
	.4byte	playingChannels
	.uleb128 0x11
	.4byte	0x25
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
	.uleb128 0x16
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
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
.LASF55:
	.ascii	"ticks\000"
.LASF24:
	.ascii	"level_1\000"
.LASF31:
	.ascii	"level_2\000"
.LASF69:
	.ascii	"_mus\000"
.LASF48:
	.ascii	"state\000"
.LASF44:
	.ascii	"channelPitch\000"
.LASF20:
	.ascii	"att_dec_1\000"
.LASF27:
	.ascii	"att_dec_2\000"
.LASF30:
	.ascii	"scale_2\000"
.LASF9:
	.ascii	"sizetype\000"
.LASF39:
	.ascii	"OP2instrEntry\000"
.LASF21:
	.ascii	"sust_rel_1\000"
.LASF28:
	.ascii	"sust_rel_2\000"
.LASF64:
	.ascii	"realvolume\000"
.LASF71:
	.ascii	"OPLchannels\000"
.LASF36:
	.ascii	"finetune\000"
.LASF59:
	.ascii	"musicBlock\000"
.LASF14:
	.ascii	"BYTE\000"
.LASF70:
	.ascii	"channels\000"
.LASF3:
	.ascii	"short int\000"
.LASF57:
	.ascii	"channelcount\000"
.LASF61:
	.ascii	"musnumber\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF76:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF16:
	.ascii	"uchar\000"
.LASF7:
	.ascii	"long long int\000"
.LASF66:
	.ascii	"mus_init_music\000"
.LASF5:
	.ascii	"long int\000"
.LASF51:
	.ascii	"loopcount\000"
.LASF34:
	.ascii	"OPL2instrument\000"
.LASF50:
	.ascii	"volume\000"
.LASF37:
	.ascii	"note\000"
.LASF62:
	.ascii	"realnote\000"
.LASF11:
	.ascii	"__uint8_t\000"
.LASF45:
	.ascii	"channelSustain\000"
.LASF15:
	.ascii	"WORD\000"
.LASF25:
	.ascii	"feedback\000"
.LASF46:
	.ascii	"channelModulation\000"
.LASF22:
	.ascii	"wave_1\000"
.LASF67:
	.ascii	"mus_stop_music\000"
.LASF43:
	.ascii	"channelPan\000"
.LASF38:
	.ascii	"instr\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF1:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"flags\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF75:
	.ascii	"c:/devl/prboom3ds/arm9/source/musplay.c\000"
.LASF77:
	.ascii	"mus_play_music\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF54:
	.ascii	"time\000"
.LASF65:
	.ascii	"channelEntry\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"channelInstr\000"
.LASF10:
	.ascii	"char\000"
.LASF33:
	.ascii	"basenote\000"
.LASF18:
	.ascii	"sint\000"
.LASF13:
	.ascii	"_Bool\000"
.LASF42:
	.ascii	"channelLastVolume\000"
.LASF60:
	.ascii	"channel\000"
.LASF58:
	.ascii	"data\000"
.LASF78:
	.ascii	"OPLinstruments\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF47:
	.ascii	"OPLdata\000"
.LASF29:
	.ascii	"wave_2\000"
.LASF68:
	.ascii	"mus_update_volume\000"
.LASF74:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF19:
	.ascii	"trem_vibr_1\000"
.LASF26:
	.ascii	"trem_vibr_2\000"
.LASF56:
	.ascii	"playingcount\000"
.LASF73:
	.ascii	"playingChannels\000"
.LASF17:
	.ascii	"schar\000"
.LASF72:
	.ascii	"MLtime\000"
.LASF52:
	.ascii	"channelMask\000"
.LASF23:
	.ascii	"scale_1\000"
.LASF53:
	.ascii	"percussMask\000"
.LASF49:
	.ascii	"number\000"
.LASF63:
	.ascii	"pitch\000"
.LASF41:
	.ascii	"channelVolume\000"
.LASF32:
	.ascii	"unused\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
