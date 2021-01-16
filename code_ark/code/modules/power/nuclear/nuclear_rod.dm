GLOBAL_LIST_INIT(nrods, list())
#define ROD_CONNECT_DIST 8
#define COOLING_COEFF 10
#define HEATING_COEFF 1200
#define SEALED_RAD_COEFF 0

/obj/machinery/power/nuclear_rod
	name = "Nuclear rod"
	desc = "A nuclear rod, that generates radiation, thermal energy and some problems ."
	icon = 'icons/obj/machines/nuclearcore.dmi'
	icon_state = "base_rod"
	anchored = 1
	density = 1
	var/sealed = FALSE
	use_power = 0
	var/accepted_rads = 0
	var/produced_neutrons = 0
	var/reaction_capability
	var/rodtemp = 293 //K
	var/list/reactants = list()
	var/integrity = 100
	var/broken = FALSE
	var/obj/item/weapon/nuclearfuel/rod/F = null
	var/list/possible_reactions = new /list(0)
	//kinda ugly, but supposed to work
	var/obj/machinery/power/nuclear_rod/reactor_host = null
	var/list/connected_rods = null
	//
	var/rod_processed = FALSE
	var/reactor_processed = FALSE


/obj/machinery/power/nuclear_rod/Initialize()
	. = ..()
	GLOB.nrods += src
	var/need_new_reactor = TRUE
	for(var/obj/machinery/power/nuclear_rod/N in GLOB.nrods)
		if(N.connected_rods != null)
			need_new_reactor = FALSE
			reactor_host = N
			N.connected_rods += src
	if(need_new_reactor)
		connected_rods = list()
		reactor_host = src
		connected_rods += src
		for(var/obj/machinery/power/nuclear_rod/N in GLOB.nrods)
			if(get_dist(src, N) <= ROD_CONNECT_DIST)
				N.reactor_host = src
				connected_rods += N



/obj/machinery/power/nuclear_rod/Destroy()
	GLOB.nrods -= src
	if(reactor_host != null)
		reactor_host.connected_rods -= src
	else
		connected_rods -= src
		var/obj/machinery/power/nuclear_rod/closest_rod = null
		var/dist = ROD_CONNECT_DIST + 1
		for(var/obj/machinery/power/nuclear_rod/N in connected_rods)
			if(get_dist(N, src) < dist)
				closest_rod = N
				dist = get_dist(N, src)
		closest_rod.connected_rods = connected_rods
		closest_rod.reactor_host = null
	return ..()

/obj/machinery/power/nuclear_rod/examine(mob/user)
	if (..(user, 3))
		to_chat(user, "The thermometer placed on the rod indicates that \the [src] has the temperature of [rodtemp] K.")
		return 1

/obj/machinery/power/nuclear_rod/physical_attack_hand(mob/user)   //Removing the assembly.
	add_fingerprint(user)
	if(reactants.len && do_after(user, 30,src) && rodtemp < 1000)

		var/obj/item/weapon/nuclearfuel/rod/F = new(get_turf(src), reactants)
		user.put_in_hands(F)
		reactants = list()

/obj/machinery/power/nuclear_rod/attackby(obj/item/weapon/W, mob/user)  //Interaction with tools
	if(rodtemp < 2000)
		if(!broken)
			src.add_fingerprint(user)
			if(isCrowbar(W))
				playsound(loc, 'sound/machines/click.ogg', 50, 1)
				user.visible_message("<span class='notice'>[user] begins to switch sealing on the rod.</span>")
				if(do_after(user, 50,src))
					switch(sealed)
						if(TRUE)
							sealed = FALSE
						if(FALSE)
							sealed = TRUE
					playsound(loc, 'sound/items/Deconstruct.ogg', 50, 1)
					user.visible_message("<span class='notice'>[user] switched sealing on the rod.</span>")
					return
				return

			else if(istype(W, /obj/item/weapon/nuclearfuel/rod))
				if(!reactants.len && rodtemp < 1000)
					playsound(loc, 'sound/machines/click.ogg', 50, 1)
					F = W
					message_admins("[user] loaded [src] with [W]")
					user.unEquip(W, src)

			else if(isWrench(W))
				playsound(loc, 'sound/items/Ratchet.ogg', 75, 1)
				switch(anchored)
					if(1.0)
						user.visible_message("<span class='notice'>[user] unwrenched rod from the ground.</span>")
						anchored = 0
					if(0.0)
						user.visible_message("<span class='notice'>[user] wrenched rod into place.</span>")
						anchored = 1

			else if(isWelder(W))
				to_chat(user, "<span class='notice'>You are fixing the rod with [W].</span>")
				playsound(src, 'sound/items/Welder.ogg', 10, 1)
				if(do_after(user, 40,src))
					integrity = 100

			else if(isMultitool(W))
				var/new_id = input("Enter a new ident tag.", "Nuclear rod", id_tag) as null|text
				if(new_id && user.Adjacent(src))
					id_tag = new_id
				var/new_name = input("Enter a new name for a rod.", "Nuclear rod", name) as null|text
				if(new_name && user.Adjacent(src))
					name = new_name

		else
			if(isWelder(W))
				to_chat(user, "<span class='notice'>You are removing molten rod with [W].</span>")
				playsound(src, 'sound/items/Welder.ogg', 10, 1)
				if(do_after(user, 100,src))
					qdel(src)
	else
		to_chat(user, "<span class='notice'>Rod is too hot to operate.</span>")

/obj/machinery/power/nuclear_rod/proc/check_state()   // Well, this is kinda ugly, but at least it works
	if (rodtemp > 5000)
		integrity -= (rodtemp - 5000)/10
	if (integrity <= 0 && broken == 0)
		explosion(src, -1, -1, rodtemp/ 500, rodtemp / 200)
		SSradiation.radiate (src, 500)
		sealed = 0
		broken = 1
		reactants = list()
		message_admins("[src] just molten down!")
		produced_neutrons = 2000


/obj/machinery/power/nuclear_rod/Process()     // Here is main purpouse of the rod - heating and radiating.
	if(!Process_Rod())
		message_admins("Something went terribly wrong with [src] processing")
	if(rodtemp < 0)
		rodtemp = 0
	if(F && !reactants.len)
		reactants = F.reactants
		qdel(F)

	var/datum/gas_mixture/environment = loc.return_air()
	if(sealed == 0)
		if(rodtemp > 500)
			set_light(0.6, 1, 7)
		SSradiation.radiate(src, produced_neutrons)
		var/ratio = min((COOLING_COEFF / 2), (environment.return_pressure()/ONE_ATMOSPHERE))
		var/chamb_temp = environment.temperature
		if ((rodtemp > chamb_temp) && ((rodtemp - (rodtemp-chamb_temp) * ratio / COOLING_COEFF) > 0))
			environment.add_thermal_energy((rodtemp-chamb_temp)*ratio* HEATING_COEFF)
			rodtemp -= (rodtemp-chamb_temp) * ratio / COOLING_COEFF
		else
			rodtemp += (chamb_temp - rodtemp) * ratio / 20
	else
		SSradiation.radiate(src, round (produced_neutrons * SEALED_RAD_COEFF))
	check_state()
	update_icon()

/obj/machinery/power/nuclear_rod/on_update_icon()
	if (broken == 1)
		icon_state = "broken_rod"
	else
		if (sealed == 0)
			if(!reactants.len)
				icon_state = "nofuel_rod"
			else
				switch(rodtemp)
					if(0 to 500)
						icon_state = "base_rod"
					if(500 to 1000)
						icon_state = "heat_rod"
					if(1000 to 3500)
						icon_state = "optimal_rod"
					else
						icon_state = "overheat_rod"
		else
			icon_state = "sealed_rod"


/obj/machinery/power/nuclear_rod/proc/Process_Rod() //This proc is quite baggy, so not be suprised by some strange shit, that certanly WILL happen, if you do not fix it.
	//at first, calculate neutron input
	if(reactor_host.reactor_processed == FALSE && rod_processed == FALSE)
		var/all_processed = TRUE
		rod_processed = TRUE
		for(var/obj/machinery/power/nuclear_rod/N in reactor_host.connected_rods)
			if(N.rod_processed == FALSE)
				all_processed = FALSE
				var/turf/T = get_step_to(src, N)
				var/turf/finalturf = get_step(get_step(N, WEST), EAST)
				var/neutron_loss = max(get_dist(src, finalturf)**2, 1)
				while(T != finalturf)
					if(locate(/obj/machinery/control_rod) in T)
						var/obj/machinery/control_rod/Cr = locate(/obj/machinery/control_rod) in T
						neutron_loss *= Cr.rod_length + 1

					else if(istype(T, /turf/simulated/wall))
						neutron_loss *= 20

					T = get_step_to(T, finalturf)

				reaction_capability += N.produced_neutrons / neutron_loss
				N.reaction_capability += produced_neutrons / neutron_loss


		if(all_processed)
			reactor_host.reactor_processed = TRUE

	else if(reactor_host.reactor_processed == TRUE && rod_processed == TRUE)
		rod_processed = FALSE
		var/all_reacted = TRUE
		for(var/obj/machinery/power/nuclear_rod/N in reactor_host.connected_rods)
			if(N.rod_processed == TRUE)
				all_reacted = FALSE

		if(all_reacted)
			reactor_host.reactor_processed = FALSE
		produced_neutrons = 0
		// then reactions themselves
		for(var/decl/nuclear_reaction/R in decls_repository.get_decls_of_subtype(/decl/nuclear_reaction))
			if(!R.React(src, produced_neutrons))
				message_admins("something went terribly wrong with reaction processing in [src]")

	return 1
