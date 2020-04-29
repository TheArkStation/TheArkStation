/decl/hierarchy/outfit/job/castelnau/crewman
	name = OUTFIT_JOB_NAME("Crewman - Castelnau")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id/castelnau/crewman

/decl/hierarchy/outfit/job/castelnau/stowaway
	name = OUTFIT_JOB_NAME("Stowaway - Castelnau")
	id_type = null
	pda_type = null
	l_ear = null
	l_pocket = /obj/item/weapon/wrench
	r_pocket = /obj/item/weapon/crowbar/prybar

/decl/hierarchy/outfit/job/castelnau/stowaway/post_equip(var/mob/living/carbon/human/H)
	..()

/decl/hierarchy/outfit/job/castelnau/ert
	name = OUTFIT_JOB_NAME("ERT - Castelnau")
	uniform = /obj/item/clothing/under/solgov/utility
	head = /obj/item/clothing/head/soft/black
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/weapon/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/device/radio/headset/ert
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/castelnau/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Castelnau")
	head = /obj/item/clothing/head/beret/centcom/captain
