/*
 * Castelnau Command
 */
/obj/structure/closet/secure_closet/captains/castelnau
	req_access = list(access_castelnau_captain)

/obj/structure/closet/secure_closet/captains/castelnau/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/gun/energy/gun,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/device/radio/headset/heads/castelnau_captain,
		/obj/item/device/radio/headset/heads/castelnau_captain/alt,
		/obj/item/weapon/storage/belt/general,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/clothing/head/caphat/formal,
		/obj/item/clothing/gloves/captain,
		/obj/item/weapon/storage/box/PDAs,
		/obj/item/weapon/storage/box/ids,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
	)

/obj/structure/closet/secure_closet/hop/castelnau
	name = "first officer's locker"
	req_access = list(access_castelnau_comoffice)

/obj/structure/closet/secure_closet/hop/castelnau/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/radio/headset/heads/hop,
		/obj/item/device/radio/headset/heads/hop/alt,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/weapon/gun/energy/gun,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/material/clipboard,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/PDAs,
		/obj/item/weapon/storage/box/ids,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
	)

/obj/structure/closet/secure_closet/adjutant
	name = "second officer's locker"
	req_access = list(access_castelnau_bridge)

/obj/structure/closet/secure_closet/adjutant/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/pen,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/modular_computer/tablet/lease/preset/command,
		/obj/item/device/radio/headset/adjutant,
		/obj/item/device/radio/headset/adjutant/alt,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)
