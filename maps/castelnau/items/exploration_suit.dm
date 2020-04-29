/obj/item/clothing/head/helmet/space/void/exploration
	name = "exploration voidsuit helmet"
	desc = "A helmet of Exoplanet Exploration Unit, standard issue for Expeditionary Corps away missions. It has an armored glass dome for superiour visibility and extra anti-radiation lining."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	icon_state = "helm_explorer"
	sprite_sheets = list(
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi'
		)
	sprite_sheets_obj = list()
	armor = list(melee = 30, bullet = 10, laser = 15,energy = 45, bomb = 30, bio = 100, rad = 90)
	light_overlay = "yellow_light"
	tinted = FALSE

/obj/item/clothing/suit/space/void/exploration
	name = "exploration voidsuit"
	icon = 'maps/torch/icons/obj/obj_suit_solgov.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/onmob_suit_solgov.dmi')
	desc = "The bulky Exoplanet Exploration Unit is a standard voidsuit for Expeditionary Corps field operations. It features extra padding and respectable radiation-resistant lining."
	icon_state = "void_explorer"
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi'
		)
	sprite_sheets_obj = list()
	armor = list(melee = 40, bullet = 10, laser = 15,energy = 45, bomb = 30, bio = 100, rad = 90)
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank,/obj/item/device/suit_cooling_unit,/obj/item/stack/flag,/obj/item/device/scanner/health,/obj/item/device/gps,/obj/item/weapon/pinpointer/radio,/obj/item/device/radio/beacon,/obj/item/weapon/material/hatchet/machete,/obj/item/weapon/shovel)

/obj/item/clothing/suit/space/void/exploration/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/exploration
	boots = /obj/item/clothing/shoes/magboots
