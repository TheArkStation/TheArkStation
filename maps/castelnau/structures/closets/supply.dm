/*
 * Castenlau Supply
 */

/obj/structure/closet/secure_closet/quartermaster/castelnau
	name = "deck chief's locker"
	req_access = list(access_castelnau_qm)

/obj/structure/closet/secure_closet/quartermaster/castelnau/WillContain()
	return list(
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/weapon/hand_labeler,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder/yellow,
		/obj/item/stack/package_wrap/twenty_five,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/device/binoculars,
		/obj/item/weapon/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack = 75, /obj/item/weapon/storage/backpack/satchel/grey = 25)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/messenger = 75, /obj/item/weapon/storage/backpack/dufflebag = 25))
	)

/obj/structure/closet/secure_closet/miner/castelnau
	req_access = list(access_castelnau_supply)

/obj/structure/closet/secure_closet/miner/castelnau/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(
				/obj/item/weapon/storage/backpack/industrial,
				/obj/item/weapon/storage/backpack/satchel/eng
			)),
		/obj/item/device/radio/headset/headset_mining,
		/obj/item/clothing/under/rank/miner,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/shoes/black,
		/obj/item/device/scanner/gas,
		/obj/item/weapon/storage/ore,
		/obj/item/device/flashlight/lantern,
		/obj/item/weapon/shovel,
		/obj/item/weapon/pickaxe,
		/obj/item/clothing/glasses/meson
	)