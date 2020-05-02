/obj/structure/bed/double
	name = "bed"
	desc = "This is used to lie in, sleep in or strap on."
	icon = 'code_ark/icons/obj/furniture.dmi'
	icon_state = "bed"
	base_icon = "bed"
	anchored = 1
	can_buckle = 1
	buckle_dir = SOUTH
	buckle_lying = 1
	buckle_pixel_shift = "x=0;y=0;z=12"

/obj/structure/bed/double/walnut
	desc = "This is used to lie in, sleep in or strap on. This one has a walnut base."
	icon_state = "bed_walnut"
	base_icon = "bed_walnut"


/obj/structure/bed/double/nightlight
	icon_state = "bed_nightlight"
	base_icon = "bed_nightlight"
	desc = "This is used to lie in, sleep in or strap on. It has a stylish nightlight strip."

/obj/structure/bed/double/nightlight/New(var/newloc)
	..(newloc,MATERIAL_ALUMINIUM,MATERIAL_CLOTH)
	set_light(0.2, 0.5, 2, 2, "#00e7dc")
