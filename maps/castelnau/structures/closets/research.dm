/*
 * Castenlau Science
 */

/obj/structure/closet/secure_closet/scientist/senior_scientist_castelnau
	name = "senior scientist's locker"
	req_access = list(access_castelnau_prometeus_senior)

/obj/structure/closet/secure_closet/scientist/senior_scientist_castelnau/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/scientist,
		/obj/item/clothing/head/bio_hood/scientist,
		/obj/item/clothing/under/rank/research_director,
		/obj/item/clothing/under/rank/research_director/rdalt,
		/obj/item/clothing/under/rank/research_director/dress_rd,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/clothing/mask/gas,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/belt/general,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/taperoll/research,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/weapon/storage/box/secret_project_disks/science,
		/obj/prefab/hand_teleporter,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/xenoarchaeologist/castenlau
	req_access = list(access_castelnau_prometeus)

/obj/structure/closet/secure_closet/xenoarchaeologist/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/random/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/device/scanner/gas,
		/obj/item/weapon/storage/belt/general,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/clothing/glasses/meson,
		/obj/item/device/radio,
		/obj/item/device/flashlight/lantern,
		/obj/item/weapon/storage/belt/archaeology,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag, 50)
	)

/obj/structure/closet/secure_closet/scientist/castenlau
	req_access = list(access_castelnau_prometeus)

/obj/structure/closet/secure_closet/scientist/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/random/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/weapon/storage/belt/general,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/weapon/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/scientist/castenlau/pilot
	name = "pilot's locker"
	req_access = list(access_castelnau_prometeus_helm)

/obj/structure/closet/secure_closet/scientist/castenlau/pilot/WillContain()
	return list(
		/obj/item/clothing/under/rank/ntpilot/nanotrasen,
		/obj/item/clothing/under/rank/ntpilot/heph,
		/obj/item/clothing/under/rank/ntpilot,
		/obj/item/clothing/head/helmet/solgov/pilot,
		/obj/item/clothing/head/helmet/nt/pilot,
		/obj/item/device/spaceflare,
		/obj/item/device/flashlight/flare,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/weapon/storage/backpack/dufflebag/eng
	)

/obj/structure/closet/crate/secure/biohazard
	req_access = list(access_castelnau_prometeus)