/*
 * Castelnau Security
 */

/obj/structure/closet/secure_closet/warden/castenlau
	name = "sheriff's locker"
	req_access = list(access_castelnau_sheriff)

/obj/structure/closet/secure_closet/warden/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/head/beret/sec/corporate/warden,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/weapon/gun/energy/gun,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/weapon/gun/energy/taser,
		/obj/item/weapon/handcuffs,
		/obj/item/device/hailer,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/hand_labeler,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/crowbar/prybar,
		/obj/item/device/radio/off,
		/obj/item/clothing/mask/gas/half,
	)

/obj/structure/closet/secure_closet/security/castenlau
	name = "deputy sheriff's locker"
	req_access = list(access_castelnau_security)


/obj/structure/closet/secure_closet/security/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/flash,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/grenade/chem_grenade/teargas,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/weapon/gun/energy/gun/small,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/crowbar/prybar,
		/obj/item/device/radio/off,
		/obj/item/clothing/mask/gas/half,
	)

/*/obj/structure/closet/secure_closet/security/castenlau/specialist
	name = "security specialist's locker"
	req_access = list(access_castelnau_security)

/obj/structure/closet/secure_closet/security/castenlau/specialist/WillContain()
	return list(
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/weapon/storage/belt/holster/forensic,
		/obj/item/device/flash,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/weapon/gun/energy/gun/small,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/forensic,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/crowbar/prybar,
		/obj/item/device/radio/off,
		/obj/item/clothing/mask/gas/half,
		/obj/item/modular_computer/laptop/preset/custom_loadout/advanced,
		/obj/item/weapon/storage/briefcase/crimekit
	) */

/obj/structure/closet/crate/secure/weapon
	req_access = list(access_castelnau_security)

/obj/structure/closet/secure_closet/brig
	req_access = list(access_castelnau_security)