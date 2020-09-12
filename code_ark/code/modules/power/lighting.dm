/obj/item/weapon/light
	var/can_change_color = FALSE

/obj/item/weapon/light/attack_self(mob/user)
	if(!can_change_color)
		return ..()

	var/new_color = input("Input a color.",, b_colour) as null|color
	if(new_color == b_colour)
		return
	if(loc != user)
		return

	b_colour = new_color
	update_icon()
	to_chat(user, SPAN_NOTICE("You have changed \the [src] color to a <font color='[new_color]'><b>new one</b></font>."))

/obj/item/weapon/light/bulb/colorable
	name = "colorable light bulb"
	matter = list(MATERIAL_GLASS = 120)
	can_change_color = TRUE

/obj/item/weapon/light/tube/colorable
	name = "colorable light tube"
	matter = list(MATERIAL_GLASS = 140, MATERIAL_ALUMINIUM = 30)
	can_change_color = TRUE

/obj/item/weapon/light/tube/large/colorable
	name = "colorable large light tube"
	matter = list(MATERIAL_GLASS = 160, MATERIAL_ALUMINIUM = 50)
	can_change_color = TRUE

/obj/machinery/light/small/colorable
	light_type = /obj/item/weapon/light/bulb/colorable

/obj/machinery/light/colorable
	light_type = /obj/item/weapon/light/tube/colorable

/obj/machinery/light/spot/colorable
	light_type = /obj/item/weapon/light/tube/large/colorable

/obj/machinery/light_master_switch
	name = "master light switch"
	desc = "It turns lights on and off. It can be connected to several light switches in various areas to control the lights in a centralized manner."
	icon = 'code_ark/icons/obj/power.dmi'
	icon_state = "light-base"
	anchored = 1
	idle_power_usage = 20
	power_channel = EQUIP
	var/on = 1
	var/brightness = 1
	var/list/switches
	var/image/overlay

/obj/machinery/light_switch/slave
	name = "remote light witch"
	desc = "It turns lights on and off. However, there's no way you can toggle this switch since it's remotely connected to a master."
	icon = 'code_ark/icons/obj/power.dmi'
	icon_state = "light-remote"
	var/obj/machinery/light_master_switch/master

/obj/machinery/light_switch/slave/Initialize()
	..()
	SetName("remote light switch ([connected_area.name])")

	connected_area.set_lightswitch(on)
	update_icon()

/obj/machinery/light_switch/slave/interface_interact(mob/user)
	if(CanInteract(user, DefaultTopicState()))
		to_chat(user, SPAN_WARNING("There's no way you can flip a remote light switch. Try to find the linked master switch."))

/obj/machinery/light_master_switch/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/machinery/light_master_switch/LateInitialize()
	. = ..()
	switches = list()
	for (var/obj/machinery/light_switch/slave/S in world)
		if(S.id_tag == id_tag)
			switches += S
			S.master = src
			S.on = on
			S.connected_area.set_lightswitch(on)
			S.update_icon()
	update_icon()

/obj/machinery/light_master_switch/interface_interact(mob/user)
	if(CanInteract(user, DefaultTopicState()))
		if(stat & (BROKEN|NOPOWER))
			to_chat(user, SPAN_WARNING("The master light switch is inoperative!"))
			return
		if(alert("Would you like to flip the master switch or to change the brightness?",,"Master","Brightness") == "Master")
			on = !on
			playsound(src, "switch", 30)
			for (var/obj/machinery/light_switch/slave/S in switches)
				S.set_state(on)
		else
//			brightness = Clamp(input("Input the brightness in % (20-100)...", var/brightness_input) as num, 20, 100)/100
			for (var/obj/machinery/light_switch/slave/S in switches)
				for (var/obj/machinery/light/L in S.connected_area)
					L.lightbulb.b_max_bright = initial(L.lightbulb.b_max_bright)*brightness
		update_icon()

/obj/machinery/light_master_switch/on_update_icon()
	if(!overlay)
		overlay = image(icon, "light1-overlay")
		overlay.plane = EFFECTS_ABOVE_LIGHTING_PLANE
		overlay.layer = ABOVE_LIGHTING_LAYER
	overlays.Cut()
	if(stat & (NOPOWER|BROKEN))
		set_light(0)
	else
		overlay.icon_state = "light[on]-overlay"
		overlays += overlay
		set_light(0.1, 0.1, 1, 2, on ? "#82ff4c" : "#f86060")

/obj/machinery/light_switch/slave/on_update_icon()
	if(!overlay)
		overlay = image(icon, "light1-overlay")
		overlay.plane = EFFECTS_ABOVE_LIGHTING_PLANE
		overlay.layer = ABOVE_LIGHTING_LAYER
	overlays.Cut()
	if(stat & (NOPOWER|BROKEN))
		set_light(0)
	else
		overlay.icon_state = "light[on]-overlay"
		overlays += overlay
		set_light(0.1, 0.1, 1, 2, on ? "#82ff4c" : "#f86060")


