/obj/item/weapon/storage/mirror
	randpixel = 0

/obj/item/weapon/storage/mirror/advanced
	name = "smart mirror"
	desc = "An iMirror(TM) smart reflecting device! The leading brand utilizes nano-machinery to style your hair just right."
	icon = 'code_ark/icons/obj/furniture.dmi'
	icon_state = "mirror"
	var/scanning = 1
	var/on = 0
	var/last_state = 0
	var/range = 1

	startswith = list(
		/obj/item/weapon/haircomb/random,
		/obj/item/weapon/haircomb/brush,
		/obj/random/medical/lite,
		/obj/item/weapon/lipstick/random,
		/obj/random/soap,
		/obj/item/weapon/reagent_containers/spray/cleaner/deodorant,
		/obj/item/weapon/towel/random,
		/obj/item/weapon/tooth_gel,
		/obj/item/weapon/shampoo
		)

/obj/item/weapon/storage/mirror/advanced/on_update_icon()
	overlays.Cut()
	// Putting the base icon
	var/image/I
	if(!shattered)
		I = image(icon, on? "mirror_over" : "mirror_over_time")
		I.plane = EFFECTS_ABOVE_LIGHTING_PLANE
		I.layer = ABOVE_LIGHTING_LAYER
		overlays |= I
		set_light(on? 1 : 0.1, 0.1, 1.5, 2, "#ffffff")
	else
		set_light(0)

/obj/item/weapon/storage/mirror/advanced/shatter()
	..()
	update_icon()
	desc = "On ho, seven years of bad luck! The iMirror(TM) is totally shattered and no longer usable!"

/obj/item/weapon/storage/mirror/advanced/examine(mob/user, distance)
	if(..() && !shattered)
		to_chat(user, "The local vessel time is [stationtime2text()].")

/obj/item/weapon/storage/mirror/advanced/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/weapon/storage/mirror/advanced/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/weapon/storage/mirror/advanced/HasProximity(atom/movable/AM as mob|obj)
	if(!istype(AM))
		log_debug("DEBUG: HasProximity called with [AM] on [src] ([usr]).")
		return
	if (istype(AM, /obj/effect/beam))	return
	if (AM.move_speed < 12)	sense()
	return

/obj/item/weapon/storage/mirror/advanced/Process()
	..()
	sense()
	return

/obj/item/weapon/storage/mirror/advanced/proc/sense()
	if(shattered) return
	on = 0
	if(scanning)
		var/turf/mainloc = get_turf(src)
		for(var/mob/living/A in range(range,mainloc))
			if (A.move_speed < 12 )
				on = 1
	if(last_state != on)
		update_icon()
		last_state = on
	return
