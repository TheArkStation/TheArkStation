/decl/hierarchy/outfit/job/castelnau/crew/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
	pda_type = /obj/item/modular_computer/pda/engineering
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/castelnau/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/castelnau/crew/engineering/senior_engineer
	name = OUTFIT_JOB_NAME("Senior Engineer - Castelnau")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/castelnau/crew/engineering/senior
	pda_type = /obj/item/modular_computer/pda/heads/ce

/decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer - Castelnau")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/castelnau/crew/engineering

/decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/atmos
	name = OUTFIT_JOB_NAME("Engineer (Atmos) - Castelnau")
	uniform = /obj/item/clothing/under/rank/atmospheric_technician

/decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/electr
	name = OUTFIT_JOB_NAME("Engineer (Electr) - Castelnau")
	uniform = /obj/item/clothing/under/hazard
