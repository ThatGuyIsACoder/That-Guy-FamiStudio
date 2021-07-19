;this file for FamiStudio Sound Engine generated by FamiStudio

shatterhand_music_data:
	.db 1
	.dw .instruments
	.dw .samples-4
	.dw .song0ch0,.song0ch1,.song0ch2,.song0ch3,.song0ch4
	.db LOW(.tempo_env_9_mid), HIGH(.tempo_env_9_mid), 0, 0

.instruments:
	.dw .env3,.env0,.env9,.env7
	.dw .env5,.env1,.env9,.env7
	.dw .env10,.env8,.env9,.env7
	.dw .env14,.env6,.env9,.env7
	.dw .env2,.env0,.env9,.env4
	.dw .env2,.env0,.env12,.env4
	.dw .env2,.env0,.env11,.env4
	.dw .env13,.env8,.env9,.env7

.samples:
.env0:
	.db $c0,$7f,$00,$00
.env1:
	.db $c0,$bf,$c1,$00,$02
.env2:
	.db $06,$c8,$c9,$c5,$00,$03,$c4,$c4,$c2,$00,$08
.env3:
	.db $04,$cf,$7f,$00,$01
.env4:
	.db $00,$c0,$08,$c0,$04,$bd,$03,$bd,$00,$03
.env5:
	.db $00,$cf,$ca,$c3,$c2,$c0,$00,$05
.env6:
	.db $c0,$c2,$c5,$00,$02
.env7:
	.db $00,$c0,$7f,$00,$01
.env8:
	.db $c0,$c1,$c2,$00,$02
.env9:
	.db $7f,$00,$00
.env10:
	.db $00,$cb,$ca,$09,$c9,$00,$04
.env11:
	.db $c2,$7f,$00,$00
.env12:
	.db $c1,$7f,$00,$00
.env13:
	.db $00,$ca,$c6,$c3,$c0,$00,$04
.env14:
	.db $00,$cb,$cb,$c5,$03,$c4,$03,$c3,$03,$c2,$00,$09
.tempo_env_9_mid:
	.db $03,$06,$04,$05,$80
.song0ch0:
.song0ch0loop:
	.db $6a, LOW(.tempo_env_9_mid), HIGH(.tempo_env_9_mid), $7e, $88
.song0ref7:
	.db $22, $9b, $f9, $83, $25, $89, $f9, $81, $62, $22, $22, $9b, $f9, $83, $27, $89, $f9, $81, $62, $22, $22, $9b, $f9, $83
	.db $2a, $89, $f9, $81, $62, $22, $22, $9b, $f9, $83, $29, $9b, $f9, $83, $27, $89, $f9, $81, $62, $29
.song0ref51:
	.db $25, $89, $f9, $81, $62, $27, $20, $89, $f9, $81, $62, $25, $6b
	.db $ff, $32
	.dw .song0ref7
	.db $6b, $00, $62, $25, $8d, $33, $89, $f9, $81, $62, $20
.song0ref78:
	.db $31, $89, $f9, $81, $62, $33, $2c, $89, $f9, $81, $62, $31, $33, $89, $f9, $81, $62, $2c
	.db $ff, $0a
	.dw .song0ref78
	.db $27, $89, $f9, $81, $62, $2c
	.db $ff, $0a
	.dw .song0ref51
	.db $29, $89, $f9, $81, $62, $20, $25, $89, $f9, $81, $62, $29, $20, $89, $f9, $81, $62, $25, $1d, $89, $f9, $81, $62, $20
.song0ref132:
	.db $20, $89, $f9, $81, $62, $1d, $22, $89, $f9, $81, $62, $20, $6b, $33, $89, $f9, $81, $62, $22, $00, $62, $22, $8d, $2a
	.db $89, $f9, $81, $62, $33, $00, $62, $33
.song0ref164:
	.db $8d, $62, $2a, $8f, $2c, $89, $f9, $81, $62, $2a, $00, $62, $2a, $8d, $62, $2c, $8f, $29, $89, $f9, $81, $62, $2c, $00
	.db $62, $2c, $8d, $62, $29, $8f, $2a, $89, $f9, $81, $62, $29, $00, $62, $29, $8d, $27, $ad, $f9, $83, $6b, $29, $89, $f9
	.db $81, $62, $27, $00, $62, $27, $8d, $25, $89, $f9, $81, $62, $29, $27, $d1, $f9, $83, $00, $62, $27, $8d, $1d, $89, $f9
	.db $81, $62, $27
	.db $ff, $0a
	.dw .song0ref132
	.db $27, $89, $f9, $81, $62, $22
	.db $ff, $0a
	.dw .song0ref51
.song0ref251:
	.db $22, $89, $f9, $81, $62, $20, $6b, $00, $62, $20, $8d, $62, $22, $8f, $2a, $89, $f9, $81, $62, $22, $00, $62, $22
	.db $ff, $3c
	.dw .song0ref164
	.db $ff, $0a
	.dw .song0ref132
	.db $27, $89, $f9, $81, $62, $22
	.db $ff, $0a
	.dw .song0ref51
	.db $ff, $0a
	.dw .song0ref251
	.db $8a
.song0ref293:
	.db $2f, $ad, $f9, $83, $31, $89, $f9, $81, $62, $2f
.song0ref303:
	.db $33, $89, $f9, $81, $62, $31, $35, $89, $f9, $81, $62, $33, $36, $9b, $f9, $83
.song0ref319:
	.db $38, $89, $f9, $81, $62, $36, $36, $89, $f9, $81, $62, $38, $00, $62, $38, $8d, $32, $ad, $f9, $83, $6b, $2f, $bf, $f9
	.db $83, $35, $8f, $f9, $81, $62, $2f, $33, $8f, $f9, $81, $62, $35, $32, $8f, $f9, $81, $62, $33, $33, $9b, $f9, $83, $2e
	.db $89, $f9, $81, $62, $33, $36, $9b, $f9, $83
.song0ref376:
	.db $35, $89
.song0ref378:
	.db $f9, $81, $62, $36, $33, $89, $f9, $81, $62, $35, $31, $89, $f9, $81, $62, $33, $6b, $00, $62, $33, $8d, $62, $31, $8f
	.db $ff, $13
	.dw .song0ref293
	.db $31, $9b, $f9, $83
	.db $ff, $0a
	.dw .song0ref303
	.db $00, $62, $33, $8d, $36, $ad, $f9, $83, $6b, $38, $bf
.song0ref423:
	.db $f9, $83, $38, $89, $f9, $83, $3a, $89, $f9, $81, $62, $38, $3d, $89, $f9, $81, $62, $3a, $38, $89, $f9, $81, $62, $3d
	.db $00, $62, $3d, $8d, $88, $2a, $89, $f9, $81, $62, $38
.song0ref458:
	.db $29, $89, $f9, $81, $62, $2a, $25, $89, $f9, $81, $62, $29, $1e, $89, $f9, $81, $62, $25, $1d, $89, $f9, $81, $62, $1e
	.db $ff, $55
	.dw .song0ref132
	.db $ff, $0a
	.dw .song0ref132
	.db $27, $89, $f9, $81, $62, $22
	.db $ff, $0a
	.dw .song0ref51
	.db $ff, $11
	.dw .song0ref251
	.db $ff, $3c
	.dw .song0ref164
	.db $ff, $0a
	.dw .song0ref132
	.db $27, $89, $f9, $81, $62, $22
	.db $ff, $0a
	.dw .song0ref51
	.db $ff, $0a
	.dw .song0ref251
	.db $31, $9b, $f9, $83, $31, $89, $f9, $83
	.db $ff, $0a
	.dw .song0ref303
	.db $35, $ad, $f9, $83, $35, $89, $f9, $83, $33, $89, $f9, $81, $62, $35, $00, $62, $35, $8d, $32, $ad, $f9, $83, $6b, $33
	.db $bf, $f9, $83, $33, $89
.song0ref558:
	.db $f9, $83, $35, $89, $f9, $81, $62, $33, $36, $89, $f9, $81, $62, $35, $38, $ad, $f9, $83, $36, $89, $f9, $81, $62, $38
	.db $35, $89, $f9, $81, $62, $36, $00, $62, $36, $8d, $33, $ad, $f9, $83, $6b, $00, $62, $33, $9f
.song0ref601:
	.db $35, $9b, $f9, $83, $35, $89, $f9, $83, $36, $89, $f9, $81, $62, $35, $38, $89, $f9, $81, $62, $36, $3a, $ad, $f9, $83
	.db $38, $89, $f9, $81, $62, $3a, $36, $89, $f9, $81, $62, $38, $00, $62, $38, $8d
	.db $ff, $0a
	.dw .song0ref319
	.db $35, $89, $f9, $81, $62, $36, $6b, $32, $bf, $f9, $83, $33, $bf, $f9, $83, $35, $89, $f9, $81, $62, $33, $35, $8b, $f9
	.db $81, $00, $62, $35, $8d, $35, $d1, $f9, $83, $6b, $3a, $89, $f9, $81, $62, $35
.song0ref684:
	.db $33, $89, $f9, $81, $62, $3a, $2e, $89, $f9, $81, $62, $33, $38, $89, $f9, $81, $62, $2e, $31, $89, $f9, $81, $62, $38
	.db $2c, $89, $f9, $81, $62, $31, $2a, $9b, $f9, $83, $00, $62, $2a, $8d, $2a, $89, $f9, $83
	.db $ff, $0a
	.dw .song0ref458
	.db $2a, $89, $f9, $81, $62, $25
	.db $ff, $0a
	.dw .song0ref458
.song0ref738:
	.db $27, $89, $f9, $81, $62, $25, $6b, $2a, $89, $f9, $81, $62, $27, $2a, $89, $f9, $83, $00, $62, $2a, $8d, $2c, $89, $f9
	.db $81, $62, $2a, $2c, $89, $f9, $83, $00, $62, $2c, $8d, $2a, $89, $f9, $81, $62, $2c, $2a, $89, $f9, $83, $00, $62, $2a
	.db $8d, $2c, $89, $2c, $81, $62, $2a, $2c, $89, $f9, $83, $00, $62, $2c, $8d, $33, $89, $f9, $81, $62, $2c, $31, $89, $f9
	.db $81, $62, $33, $2f, $89, $f9, $81, $62, $31, $2e, $89, $f9, $81, $62, $2f, $6b, $3a, $89, $f9, $81, $62, $2e
	.db $ff, $24
	.dw .song0ref684
	.db $ff, $0a
	.dw .song0ref458
	.db $2a, $89, $f9, $81, $62, $25
	.db $ff, $0a
	.dw .song0ref458
	.db $ff, $49
	.dw .song0ref738
	.db $6b, $23, $9b, $f9, $83, $2a, $89, $f9, $81, $62, $23, $25, $9b, $f9, $83, $2c, $9b, $f9, $83, $27, $9b, $f9, $83, $2e
	.db $9b, $f9, $83, $35, $89, $f9, $81, $62, $2e, $36, $89, $f9, $81, $35, $8b
	.db $ff, $0d
	.dw .song0ref378
	.db $6b, $36, $89, $f9, $81, $62, $31, $36, $89, $f9, $83, $00, $62, $36, $8d, $35, $89, $f9, $81, $62, $36
.song0ref913:
	.db $35, $89, $f9, $83, $00, $62, $35, $8d, $36, $89, $f9, $81, $62, $35, $36, $89, $f9, $83, $00, $62, $36, $8d, $1d, $89
	.db $f9, $81, $62, $36, $22, $89, $f9, $81, $62, $1d, $29, $89, $f9, $81, $62, $22, $31, $89, $f9, $81, $62, $29, $35, $ad
	.db $f9, $83, $fd
	.dw .song0ch0loop
.song0ch1:
.song0ch1loop:
	.db $8a
.song0ref968:
	.db $27, $9b, $f9, $83, $2a, $89, $f9, $81, $62, $27, $27, $9b, $f9, $83, $2c, $89, $f9, $81, $62, $27, $27, $9b, $f9, $83
	.db $2e, $89, $f9, $81, $62, $27, $27, $9b, $f9, $83, $2c, $9b, $f9, $83, $2a, $89, $f9, $81, $62, $2c
	.db $ff, $0a
	.dw .song0ref458
	.db $ff, $28
	.dw .song0ref968
	.db $ff, $0a
	.dw .song0ref458
	.db $00, $62, $29, $8d, $36, $89, $f9, $81, $62, $25
.song0ref1031:
	.db $35, $89, $f9, $81, $62, $36, $31, $89, $f9, $81, $62, $35, $36, $89, $f9, $81, $62, $31
	.db $ff, $0a
	.dw .song0ref1031
	.db $2a, $89, $f9, $81, $62, $31
	.db $ff, $0a
	.dw .song0ref458
	.db $2c, $89, $f9, $81, $62, $25, $29, $89, $f9, $81, $62, $2c, $25, $89, $f9, $81, $62, $29, $22, $89, $f9, $81, $62, $25
.song0ref1085:
	.db $25, $89, $f9, $81, $62, $22
.song0ref1091:
	.db $27, $89, $f9, $81, $62, $25, $3f, $89, $f9, $81, $62, $27, $00, $62, $27, $8d, $2e, $89, $f9, $81, $62, $3f, $00, $62
	.db $3f
.song0ref1116:
	.db $8d, $62, $2e, $8f, $2f, $89, $f9, $81, $62, $2e, $00, $62, $2e, $8d, $62, $2f, $8f, $2c, $89, $f9, $81, $62, $2f, $00
	.db $62, $2f, $8d, $62, $2c, $8f, $2e, $89, $f9, $81, $62, $2c, $00, $62, $2c, $8d, $2a, $ad, $f9, $83, $2c, $89, $f9, $81
	.db $62, $2a, $00, $62, $2a, $8d, $29, $89, $f9, $81, $62, $2c, $2a, $d1, $f9, $83, $00, $62, $2a, $8d, $22, $89, $f9, $81
	.db $62, $2a
	.db $ff, $0a
	.dw .song0ref1085
	.db $2a, $89, $f9, $81, $62, $27
	.db $ff, $0a
	.dw .song0ref458
.song0ref1202:
	.db $27, $89, $f9, $81, $62, $25, $00, $62, $25, $8d, $62, $27, $8f, $2e, $89, $f9, $81, $62, $27, $00, $62, $27
	.db $ff, $3c
	.dw .song0ref1116
	.db $ff, $0a
	.dw .song0ref1085
	.db $2a, $89, $f9, $81, $62, $27
	.db $ff, $0a
	.dw .song0ref458
	.db $ff, $0a
	.dw .song0ref1202
	.db $8c, $33, $ad
	.db $ff, $0d
	.dw .song0ref558
.song0ref1248:
	.db $89, $f9, $81, $62, $36, $3a, $9b, $f9, $83
.song0ref1257:
	.db $3b, $89, $f9, $81, $62, $3a, $3a, $89, $f9, $81, $62, $3b, $00, $62, $3b, $8d, $35, $ad, $f9, $83, $38, $bf, $f9, $83
	.db $38, $8f, $f9, $83, $36, $8f, $f9, $81, $62, $38, $35, $8f, $f9, $81, $62, $36, $36, $9b, $f9, $83, $33, $89, $f9, $81
	.db $62, $36, $3a, $d1, $f9, $83, $00, $62, $3a, $9f, $33, $ad
	.db $ff, $0d
	.dw .song0ref558
	.db $ff, $0d
	.dw .song0ref1248
	.db $3d, $89, $f9, $81, $62, $3b, $00, $62, $3b, $8d, $3f, $ad, $f9, $83, $41, $bf, $f9, $83, $41, $89, $f9, $83, $42, $89
	.db $f9, $81, $62, $41, $44, $89, $f9, $81, $62, $42, $41, $89, $f9, $81, $62, $44, $00, $62, $44, $8d, $8a, $36, $89, $f9
	.db $81, $62, $41
	.db $ff, $0a
	.dw .song0ref1031
	.db $2a, $89, $f9, $81, $62, $31
	.db $ff, $0a
	.dw .song0ref458
	.db $ff, $50
	.dw .song0ref1091
	.db $ff, $0a
	.dw .song0ref1085
	.db $2a, $89, $f9, $81, $62, $27
	.db $ff, $0a
	.dw .song0ref458
	.db $ff, $11
	.dw .song0ref1202
	.db $ff, $3c
	.dw .song0ref1116
	.db $ff, $0a
	.dw .song0ref1085
	.db $2a, $89, $f9, $81, $62, $27
	.db $ff, $0a
	.dw .song0ref458
	.db $ff, $0a
	.dw .song0ref1202
	.db $ff, $23
	.dw .song0ref601
	.db $35, $ad, $f9, $83, $36, $bf, $f9, $83, $36, $8b, $f9, $81, $38, $89, $f9, $81, $62, $36, $3a, $89, $f9, $81, $62, $38
	.db $3b, $ad, $f9, $83, $3a, $89, $f9, $81, $62, $3b, $38, $89, $f9, $81, $62, $3a, $00, $62, $3a, $8d, $36, $ad, $f9, $83
	.db $00, $62, $36, $9f, $38, $9b
	.db $ff, $0b
	.dw .song0ref423
	.db $3b, $89, $f9, $81, $62, $3a, $3d, $ad, $f9, $83, $3b, $89, $f9, $81, $62, $3d, $3a, $89, $f9, $81, $62, $3b, $00, $62
	.db $3b, $8d
	.db $ff, $0a
	.dw .song0ref1257
	.db $38, $89, $f9, $81, $62, $3a, $3a, $bf, $f9, $83, $3c, $bf, $f9, $83, $3d, $89, $f9, $81, $62, $3c, $3d, $89, $f9, $83
	.db $00, $62, $3d, $8d, $3e, $d1, $f9, $83, $3f, $89, $f9, $81, $62, $3e
.song0ref1549:
	.db $3a, $89, $f9, $81, $62, $3f, $33, $89, $f9, $81, $62, $3a, $3d, $89, $f9, $81, $62, $33, $38, $89, $f9, $81, $62, $3d
	.db $31, $89, $f9, $81, $62, $38, $2f, $9b, $f9, $83, $00, $62, $2f, $8d, $36, $89, $f9, $81, $62, $2f
	.db $ff, $0f
	.dw .song0ref1031
	.db $ff, $0a
	.dw .song0ref1031
.song0ref1599:
	.db $33, $89, $f9, $81, $62, $31, $2f, $89, $f9, $81, $62, $33, $2f, $89, $f9, $83, $00, $62, $2f, $8d, $31, $89, $f9, $81
	.db $62, $2f, $31, $89, $f9, $83, $00, $62, $31, $8d, $33, $89, $f9, $81, $62, $31, $33, $89, $f9, $83, $00, $62, $33, $8d
	.db $35, $89, $f9, $81, $62, $33
	.db $ff, $0c
	.dw .song0ref913
	.db $ff, $0f
	.dw .song0ref376
	.db $3f, $89, $f9, $81, $62, $31
	.db $ff, $25
	.dw .song0ref1549
	.db $ff, $0f
	.dw .song0ref1031
	.db $ff, $0a
	.dw .song0ref1031
	.db $ff, $2e
	.dw .song0ref1599
	.db $ff, $0c
	.dw .song0ref913
	.db $ff, $0f
	.dw .song0ref376
	.db $2f, $9b, $f9, $83, $36, $89, $f9, $81, $62, $2f, $31, $9b, $f9, $83, $38, $9b, $f9, $83, $33, $9b, $f9, $83, $3a, $9b
	.db $f9, $83, $41, $89, $f9, $81, $62, $3a, $42, $89, $f9, $81, $62, $41, $41, $89, $f9, $81, $62, $42, $3f, $89, $f9, $81
	.db $62, $41, $3d, $89, $f9, $81, $62, $3f
.song0ref1739:
	.db $3f, $89, $f9, $81, $62, $3d, $3f, $89, $f9, $83, $00, $62, $3f, $8d, $3d, $89, $f9, $81, $62, $3f, $3d, $89, $f9, $83
	.db $00, $62, $3d, $8d
	.db $ff, $0c
	.dw .song0ref1739
	.db $22, $89, $f9, $81, $62, $3f, $29, $89, $f9, $81, $62, $22, $2e, $89, $f9, $81, $62, $29, $35, $89, $f9, $81, $62, $2e
	.db $3a, $ad, $f9, $83, $fd
	.dw .song0ch1loop
.song0ch2:
.song0ch2loop:
	.db $80
.song0ref1803:
	.db $27
.song0ref1804:
	.db $8b
.song0ref1805:
	.db $00, $81, $27, $8b, $00, $81, $27, $8b, $00, $81
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $27, $8b, $00, $81, $27, $8b, $00, $81
.song0ref1829:
	.db $25, $9d
.song0ref1831:
	.db $00, $81, $22, $8b, $00, $81, $25, $8b, $00, $81, $29
	.db $ff, $0b
	.dw .song0ref1804
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0d
	.dw .song0ref1829
	.db $8b, $00, $81, $25, $f7, $00, $81, $25, $d3, $00, $81, $25, $8b
	.db $ff, $0a
	.dw .song0ref1831
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $27, $8b, $00, $81, $27, $8b
	.db $ff, $0a
	.dw .song0ref1831
.song0ref1906:
	.db $27, $8b, $00, $81
.song0ref1910:
	.db $2a
.song0ref1911:
	.db $8b, $00, $81, $29
.song0ref1915:
	.db $8b, $00, $81, $25, $8b, $00, $81, $27
.song0ref1923:
	.db $8b, $00, $81, $23, $8b, $00, $81, $23, $8b, $00, $81, $23
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $8b, $00, $81, $23, $8b
	.db $ff, $0a
	.dw .song0ref1831
	.db $ff, $14
	.dw .song0ref1906
.song0ref1967:
	.db $20, $8b, $00, $81, $20, $8b, $00, $81, $27, $8b, $00, $81, $2a, $8b, $00, $81
	.db $ff, $10
	.dw .song0ref1967
.song0ref1986:
	.db $22
.song0ref1987:
	.db $8b, $00, $81, $22, $8b, $00, $81, $29, $8b, $00, $81, $2c, $8b, $00, $81
	.db $ff, $10
	.dw .song0ref1986
	.db $ff, $10
	.dw .song0ref1967
	.db $ff, $10
	.dw .song0ref1986
.song0ref2011:
	.db $27, $8b, $00, $81, $27, $8b, $00, $81, $25, $8b, $00, $81, $25
	.db $ff, $0b
	.dw .song0ref1923
	.db $22, $8b, $00, $81, $22, $8b, $00, $81
	.db $ff, $10
	.dw .song0ref1967
	.db $ff, $10
	.dw .song0ref1967
	.db $ff, $10
	.dw .song0ref1986
	.db $ff, $10
	.dw .song0ref1986
	.db $23
.song0ref2048:
	.db $8b, $00, $81, $23, $8b, $00, $81, $2a, $8b, $00, $81, $2f
	.db $ff, $0c
	.dw .song0ref2048
	.db $8b, $00, $81, $25, $8b, $00, $93, $25, $8b, $00, $81, $25, $9d, $00, $81, $25, $8b, $00, $81, $25, $9d
	.db $ff, $0a
	.dw .song0ref1805
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $22
	.db $ff, $0b
	.dw .song0ref1915
	.db $ff, $19
	.dw .song0ref1910
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0c
	.dw .song0ref1923
	.db $8b, $00, $81, $23, $8b
	.db $ff, $0a
	.dw .song0ref1831
	.db $ff, $14
	.dw .song0ref1906
.song0ref2150:
	.db $25
.song0ref2151:
	.db $8b, $00, $81, $25, $8b, $00, $81, $25, $8b, $00, $81
	.db $ff, $0c
	.dw .song0ref2150
	.db $25, $8b, $00, $81, $25
.song0ref2170:
	.db $8b, $00, $81, $26, $8b, $00, $81, $26, $8b, $00, $81, $26
	.db $ff, $0c
	.dw .song0ref2170
	.db $ff, $0b
	.dw .song0ref2170
	.db $ff, $0c
	.dw .song0ref1803
	.db $ff, $0c
	.dw .song0ref1803
	.db $27, $8b, $00, $81, $27
.song0ref2199:
	.db $8b, $00, $81, $28, $8b, $00, $81, $28, $8b, $00, $81, $28
	.db $ff, $0c
	.dw .song0ref2199
	.db $ff, $0b
	.dw .song0ref2199
.song0ref2217:
	.db $29, $8b, $00, $81, $29, $8b, $00, $81, $29, $8b, $00, $81
	.db $ff, $0c
	.dw .song0ref2217
	.db $29
	.db $ff, $0b
	.dw .song0ref1911
	.db $ff, $0c
	.dw .song0ref2150
	.db $ff, $0c
	.dw .song0ref2150
	.db $25
.song0ref2243:
	.db $8b, $00, $81, $22, $8b, $00, $81, $22, $8b, $00, $81, $22
	.db $ff, $0c
	.dw .song0ref2243
	.db $ff, $0c
	.dw .song0ref2243
	.db $ff, $0b
	.dw .song0ref1987
	.db $2e, $9d, $00, $81, $2e, $8b, $00, $81, $29, $8b, $00, $81, $22
	.db $ff, $0b
	.dw .song0ref1804
	.db $27
	.db $ff, $0b
	.dw .song0ref2151
.song0ref2284:
	.db $25, $8b, $00, $81, $23, $af, $00, $81, $23, $8b, $00, $81, $23, $9d, $00, $81, $23, $8b, $00, $81, $23, $9d, $00, $81
	.db $23
.song0ref2309:
	.db $8b, $00, $81, $20, $8b, $00, $81, $20, $8b, $00, $81, $20
	.db $ff, $0c
	.dw .song0ref2243
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0b
	.dw .song0ref2151
	.db $25
	.db $ff, $0b
	.dw .song0ref1923
	.db $25
	.db $ff, $0b
	.dw .song0ref1915
	.db $ff, $0d
	.dw .song0ref2011
	.db $8b, $00, $81
	.db $ff, $25
	.dw .song0ref2284
	.db $ff, $0c
	.dw .song0ref2243
	.db $ff, $0c
	.dw .song0ref1923
	.db $ff, $0b
	.dw .song0ref2151
	.db $25
	.db $ff, $0b
	.dw .song0ref1923
	.db $25, $8b, $00, $81, $25
	.db $ff, $0c
	.dw .song0ref2309
	.db $8b, $00, $81, $20
	.db $ff, $0c
	.dw .song0ref2243
	.db $8b, $00, $81, $22
	.db $ff, $0c
	.dw .song0ref1923
	.db $8b, $00, $81, $23
	.db $ff, $0b
	.dw .song0ref2151
	.db $25
	.db $ff, $0b
	.dw .song0ref1915
	.db $27, $8b, $00, $93, $25, $8b, $00, $81, $25, $8b, $00, $93, $27, $8b, $00, $81, $27, $8b, $00, $93, $22
	.db $ff, $0c
	.dw .song0ref2243
	.db $8b, $00, $81, $22, $8b, $00, $81, $24, $8b, $00, $81, $26, $8b, $00, $81, $fd
	.dw .song0ch2loop
.song0ch3:
.song0ch3loop:
.song0ref2436:
	.db $84, $2d, $a1, $86
.song0ref2440:
	.db $27, $a1, $84, $2d, $a1, $86, $27, $a1, $84, $2d, $a1, $86, $27, $a1
	.db $ff, $0c
	.dw .song0ref2436
	.db $ff, $0a
	.dw .song0ref2436
	.db $2d, $a1, $2d, $a1, $2d, $a1, $2d, $a1, $2d, $a1, $86, $27, $8f, $84, $2d, $8f, $86, $27, $81, $27, $8b, $84
.song0ref2482:
	.db $2d
.song0ref2483:
	.db $8f, $82, $21, $8f, $8e, $2d, $8f, $86, $27, $8f, $8e, $2d, $8f, $82, $21, $8f, $21, $8f, $86, $27, $8f, $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
.song0ref2512:
	.db $8e, $2d, $8f, $82, $21, $8f, $86, $27, $8f, $27, $8f, $82, $21, $8f, $86, $27, $8f, $27, $8f, $82, $21, $8f, $86, $27
	.db $ff, $0f
	.dw .song0ref2483
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $ff, $11
	.dw .song0ref2512
	.db $ff, $0f
	.dw .song0ref2483
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e, $2d, $8f, $86, $27, $8f, $82, $21, $8f
.song0ref2586:
	.db $21, $8f, $86, $27, $8f, $82, $21, $8f, $86, $27, $8f, $27, $8f, $27
	.db $ff, $0f
	.dw .song0ref2483
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $ff, $11
	.dw .song0ref2512
	.db $ff, $0f
	.dw .song0ref2483
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $ff, $11
	.dw .song0ref2512
	.db $ff, $0f
	.dw .song0ref2483
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e
	.db $ff, $10
	.dw .song0ref2482
	.db $8e, $2d, $8f, $86, $27, $8f, $27, $8f, $82
	.db $ff, $0b
	.dw .song0ref2586
	.db $8f, $27, $8f
.song0ref2670:
	.db $27, $a1, $27, $8f, $27, $a1, $27, $8f, $27, $a1, $82, $21, $8f, $86, $27, $8f, $82
	.db $ff, $0a
	.dw .song0ref2586
.song0ref2690:
	.db $82, $21, $8f, $21, $8f, $84, $2d, $8f, $82, $21, $8f, $21, $8f, $84, $2d, $8f
	.db $ff, $0c
	.dw .song0ref2690
	.db $86, $27, $a1
	.db $ff, $0a
	.dw .song0ref2670
	.db $27, $8f, $27, $a1, $82, $21, $8f, $86, $27, $8f, $82
	.db $ff, $0a
	.dw .song0ref2586
	.db $ff, $0c
	.dw .song0ref2690
	.db $ff, $0c
	.dw .song0ref2690
	.db $86, $27, $a1
	.db $ff, $0a
	.dw .song0ref2440
	.db $84, $2d, $a1, $86, $27, $a1, $84, $2d, $a1, $86
	.db $ff, $0a
	.dw .song0ref2670
	.db $27, $8f, $27, $a1, $27, $8f, $27, $8f, $27, $8f, $27, $8f, $27, $8f, $82, $21, $8f, $21, $8f, $fd
	.dw .song0ch3loop
.song0ch4:
.song0ch4loop:
.song0ref2777:
	.db $f7, $f7, $af, $f7, $f7, $af, $f7, $f7, $af, $f7, $f7, $af
	.db $ff, $0c
	.dw .song0ref2777
	.db $ff, $0c
	.dw .song0ref2777
	.db $ff, $0c
	.dw .song0ref2777
	.db $ff, $0c
	.dw .song0ref2777
	.db $ff, $0c
	.dw .song0ref2777
	.db $f7, $f7, $af, $fd
	.dw .song0ch4loop
