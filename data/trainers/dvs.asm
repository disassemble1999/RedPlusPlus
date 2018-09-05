GetTrainerEVsDVsAndPersonality: ; 270c4
; Return the EVs, DVs and Personality of OtherTrainerClass in bc
	ld a, [OtherTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerClassDVsAndPersonality
rept 6
	add hl, bc
endr

	ld a, [hli]
rept 6
	ld [de], a
	inc de
endr
	ld a, [hli]
	ld [DVAndPersonalityBuffer], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 1], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 2], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 3], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 4], a
	ret
; 270d6

TrainerClassDVsAndPersonality: ; 270d6
	;  EVs  HP   Def  SAt  Ability  Gender
	;  *    Atk  Spd  SDf  Nature   Form
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; RED
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; LEAF
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; PROF_OAK
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; YOUNGSTER
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; BUG_CATCHER
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; LASS
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; SAILOR
	db   8, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; JR_TRAINER_M
	db   8, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; JR_TRAINER_F
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; POKEMANIAC
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; SUPER_NERD
	db  24, $99, $99, $99, ABILITY_1 | QUIRKY, MALE   ; HIKER
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; BIKER
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; BURGLAR
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; ENGINEER
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; COUPLE
	db  16, $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; FISHER
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; SWIMMER
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; CUE_BALL
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; GAMBLER
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; BEAUTY
	db  48, $AA, $CC, $EE, ABILITY_1 | QUIRKY, MALE   ; PSYCHIC_TR
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; ROCKER
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; JUGGLER
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; TAMER
	db  16, $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; BIRD_KEEPER
	db  64, $FF, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; BLACKBELT
	db   0, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; SONY1
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; SWIMMER_F
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; ROCKET_F
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; SCIENTIST
	db 160, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; GIOVANNI
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; ROCKET
	db  64, $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; COOLTRAINER_M
	db  64, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; COOLTRAINER_F
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; BRUNO
	db 252, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; BROCK
	db 252, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; MISTY
	db 252, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; LT_SURGE
	db 252, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; ERIKA
	db 252, $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; KOGA
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; BLAINE
	db 252, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; SABRINA
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; GENTLEMAN
	db 160, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; SONY2
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; SONY3
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; LORELEI
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; CHANNELER
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; AGATHA
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; LANCE
	db  48, $AA, $CC, $EE, ABILITY_1 | QUIRKY, FEMALE ; HEX_MANIAC
	db 252, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; TRACEY
	db 112, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; EXECUTIVE_F
	db 112, $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; EXECUTIVE_M
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; ROCKER_F
	db  88, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; JESSIE_JAMES
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; COSPLAY_GIRL
	db  64, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; JANINE
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; PI_TRAINER
	db  64, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; FLANNERY
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; GIOVANNI_2
	db 252, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; SHRINE_MAIDEN
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; AROMA_LADY
	db  64, $FF, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; BATTLE_GIRL
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; BREEDER (low EVs due to breeding)
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; BOARDER
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; SKIER
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; FIREBREATHER
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; SR_AND_JR
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; KIMONO GIRL
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; SAGE
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; MEDIUM
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; LADY
	db  48, $DD, $BB, $DB, ABILITY_1 | QUIRKY, MALE   ; OFFICER_M
	db  48, $7B, $DB, $FF, ABILITY_1 | QUIRKY, FEMALE ; OFFICER_F
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; ARTIST
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; PARASOL_GIRL
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; POKEFAN_M
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; POKEFAN_F
	db 100, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; RICH_BOY (high EVs from vitamins)
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; RUIN_MANIAC
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; SCHOOLBOY
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; SCHOOLGIRL
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; TEACHER
	db  16, $88, $88, $88, ABILITY_1 | QUIRKY, FEMALE ; TWINS
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; LOOKER
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; FOSSIL
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; FOSSIL
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; FOSSIL
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; METEORITE
; 2715c
