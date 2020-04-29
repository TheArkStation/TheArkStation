/*
 * Castelnau Engineering
 */

/obj/structure/closet/secure_closet/engineering_personal
	req_access = list(access_castelnau_engineering)

/obj/structure/closet/secure_closet/engineering_personal/senior
	name = "senior engineer's locker"
	req_access = list(access_castelnau_seneng)

/obj/structure/closet/secure_closet/engineering_personal/senior/WillContain()
	return list(
		/obj/item/clothing/under/hazard,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/device/radio/headset/headset_eng,
		/obj/item/device/radio/headset/headset_eng/alt,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/clothing/glasses/meson,
		/obj/item/taperoll/engineering,
		/obj/item/taperoll/atmos,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/device/flash,
		/obj/item/device/flashlight/upgraded,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/insulated,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/industrial, /obj/item/weapon/storage/backpack/satchel/eng)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/eng, /obj/item/weapon/storage/backpack/messenger/engi))
	)

/obj/structure/closet/secure_closet/engineering_electrical
	req_access = list(access_castelnau_engineering)

/obj/structure/closet/secure_closet/engineering_welding
	req_access = list(access_castelnau_engineering)

/obj/structure/closet/secure_closet/atmos_personal
	req_access = list(access_castelnau_atmospherics)


