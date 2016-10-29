Route10Mons:
IF DEF(_BLUE) ; Difficult Rom
; Grass Mons
	db $0F
	db 21,VOLTORB
	db 21,MAGNEMITE
	db 22,EKANS
	db 22,SANDSHREW
	db 23,MACHOP
	db 23,MACHOP
	db 27,GLOOM
	db 27,BELLOSSOM
	db 21,SKARMORY
	db 23,SKARMORY

; Water Mons
	db $0F
   	db 46,SEAKING
	db 48,CHINCHOU
	db 48,CHINCHOU
	db 48,POLIWHIRL
	db 47,SLOWPOKE
	db 57,SLOWPOKE
	db 55,SLOWBRO
	db 55,SLOWBRO
	db 60,LANTURN
	db 60,LANTURN

ELSE ; Normal Rom
; Grass Mons
	db $0F
	db 16,VOLTORB
	db 16,MAGNEMITE
	db 17,EKANS
	db 17,SANDSHREW
	db 18,MACHOP
	db 18,MACHOP
	db 22,GLOOM
	db 22,BELLOSSOM
	db 16,SKARMORY
	db 18,SKARMORY

; Water Mons
	db $0F
   	db 16,GOLDEEN
	db 18,CHINCHOU
	db 18,CHINCHOU
	db 18,POLIWAG
	db 17,SLOWPOKE
	db 17,SLOWPOKE
	db 25,SLOWBRO
	db 25,SLOWBRO
	db 30,LANTURN
	db 30,LANTURN
ENDC