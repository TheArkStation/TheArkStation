/******
Weapons
******/

/obj/item/weapon/gun/energy/gun/secure/corporate
	desc = "An access-locked EXO-branded LAEP90-S. It's designed to please paranoid corporate liaisons. Body cam not included."
	req_access = list(access_liaison)

/obj/item/weapon/gun/energy/stunrevolver/secure/nanotrasen
	name = "corporate stun revolver"
	desc = "This A&M X6 is fitted with an NT1019 chip which allows remote authorization of weapon functionality. It has a NanoTrasen logo on the grip."
	req_access = list(list(access_brig, access_heads, access_rd, access_sec_guard))

/******
Closets
******/

/obj/structure/closet/secure_closet/explo_gun
	name = "gun locker"
	desc = "Wall locker holding the boomstick."
	req_access = list(access_expedition_shuttle_helm)
	closet_appearance = /decl/closet_appearance/wall/explo_gun
	density = 0
	anchored = 1
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS

/obj/structure/closet/secure_closet/explo_gun/WillContain()
	return list(
		/obj/item/weapon/storage/box/ammo/explo_shells = 3,
		/obj/item/weapon/gun/projectile/shotgun/pump/exploration
	)

/decl/closet_appearance/wall/explo_gun
	color = COLOR_GRAY20
	decals = null
	can_lock = 1
	extra_decals = list(
		"stripe_outer" = COLOR_PURPLE
	)
