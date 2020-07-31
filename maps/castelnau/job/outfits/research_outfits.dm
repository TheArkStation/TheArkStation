/decl/hierarchy/outfit/job/castelnau/crew/research
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/research
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/device/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/color/white

/decl/hierarchy/outfit/job/castelnau/crew/research/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/castelnau/crew/research/senior_scientist
	name = OUTFIT_JOB_NAME("Senior Researcher - Castelnau")
	uniform = /obj/item/clothing/under/color/white
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/heads/rd
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/senior_scientist

/decl/hierarchy/outfit/job/castelnau/crew/research/scientist
	name = OUTFIT_JOB_NAME("Scientist - Castelnau")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/scientist

/decl/hierarchy/outfit/job/castelnau/crew/research/roboticist
	name = OUTFIT_JOB_NAME("Roboticist - Castelnau")
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/roboticist
	pda_type = /obj/item/modular_computer/pda/roboticist

/decl/hierarchy/outfit/job/castelnau/crew/research/scientist/psych
	name = OUTFIT_JOB_NAME("Psychologist - Castelnau")
	uniform = /obj/item/clothing/under/rank/psych
	suit = /obj/item/clothing/suit/storage/toggle/labcoat

/decl/hierarchy/outfit/job/castelnau/crew/research/assist
	name = OUTFIT_JOB_NAME("Research Assistant - Castelnau")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/castelnau/crew/research

/decl/hierarchy/outfit/job/castelnau/crew/research/scientist_pilot
	name = OUTFIT_JOB_NAME("Research Pilot - Castelnau")
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/scientist_pilot

/decl/hierarchy/outfit/job/castelnau/crew/research/assist/testsubject
	name = OUTFIT_JOB_NAME("Testing Assistant")
	uniform = /obj/item/clothing/under/color/white
