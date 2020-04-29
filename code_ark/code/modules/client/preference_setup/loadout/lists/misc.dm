/datum/gear/cosmetic_box
	display_name = "cosmetic box"
	sort_category = "Cosmetics"
	cost = 3
	path = /obj/item/weapon/storage/cosmetic_bag

/datum/gear/cosmetic_box/New()
	..()
	var/list/cosmetic_boxes = list(
		"male cosmetic bag" = /obj/item/weapon/storage/cosmetic_bag/male,
		"female cosmetic bag" = /obj/item/weapon/storage/cosmetic_bag/female
		)

	var/list/toothbrushes = list(
		"red toothbrush" = /obj/item/weapon/toothbrush/red,
		"pink toothbrush" = /obj/item/weapon/toothbrush/pink,
		"blue toothbrush" = /obj/item/weapon/toothbrush/blue,
		"green toothbrush" = /obj/item/weapon/toothbrush/green,
		"yellow toothbrush" = /obj/item/weapon/toothbrush/yellow
		)

	var/list/perfumes = list()
	for(var/perfume_type in typesof(/obj/item/weapon/reagent_containers/spray/perfume))
		var/obj/item/weapon/reagent_containers/spray/perfume/perfume = perfume_type
		perfumes[initial(perfume.name)] = perfume_type

	var/list/lipsticks = list()
	for(var/lipstick_type in typesof(/obj/item/weapon/lipstick/fashionable))
		var/obj/item/weapon/lipstick/fashionable/lipstick = lipstick_type
		lipsticks[initial(lipstick.name)] = lipstick_type

	gear_tweaks += new/datum/gear_tweak/path(cosmetic_boxes)
	gear_tweaks += new/datum/gear_tweak/contents(toothbrushes, perfumes, lipsticks)

/datum/gear/toothbrush
	display_name = "toothbrush selection"
	sort_category = "Cosmetics"
	cost = 1
	path = /obj/item/weapon/toothbrush

/datum/gear/toothbrush/New()
	gear_tweaks += new/datum/gear_tweak/path(list(
		"red toothbrush" = /obj/item/weapon/toothbrush/red,
		"pink toothbrush" = /obj/item/weapon/toothbrush/pink,
		"blue toothbrush" = /obj/item/weapon/toothbrush/blue,
		"green toothbrush" = /obj/item/weapon/toothbrush/green,
		"yellow toothbrush" = /obj/item/weapon/toothbrush/yellow
		))

/datum/gear/perfume
	display_name = "perfume selection"
	sort_category = "Cosmetics"
	cost = 1
	path = /obj/item/weapon/reagent_containers/spray/perfume
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/napkin_pack
	display_name = "napkin pack"
	cost = 1
	path = /obj/item/weapon/storage/napkin_pack