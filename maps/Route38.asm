Route38_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 35, 12, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 35, 13, ROUTE_38_ECRUTEAK_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 12, 14, FRUITTREE_ROUTE_38, ORAN_BERRY

	const_def 1 ; object constants
