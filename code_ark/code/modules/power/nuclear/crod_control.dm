#define MAX_CONTROL_ROD_LENGTH 4
#define CONTROL_RODS_DOWN 0
#define TOO_MUCH_RAD 10000
#define TOO_LITTLE_RAD 1

/obj/machinery/computer/rod_control
	name = "Reactor control computer"
	icon_keyboard = "rd_key"
	icon_screen = "power"
	light_color = COLOR_BLUE
	idle_power_usage = 250
	active_power_usage = 500
	var/datum/nano_module/rmon/connected_console = null
	var/datum/nano_module/rcontrol/C
	//PD controller stuff
	var/delta
	var/prev_temp = 0 //K, for the jumpstart.


/obj/machinery/computer/rod_control/Initialize()
	. = ..()
	C =  new(src)
	C.id_tag = id_tag
	var/obj/machinery/computer/reactor_control/Pot_Host = null
	var/smallest_dist = 99999
	for(var/obj/machinery/computer/reactor_control/R in GLOB.reactor_consoles)
		if(get_dist(src, R) < smallest_dist)
			Pot_Host = R
			smallest_dist = get_dist(src, R)

	if(Pot_Host)
		connected_console = Pot_Host.mon


/obj/machinery/computer/rod_control/Process()
	if(C.Autoreg && connected_console)
		if(connected_console.average_temp > C.max_reactor_temp || connected_console.average_activity > TOO_MUCH_RAD)
			C.SetOverallLength(MAX_CONTROL_ROD_LENGTH)
		else
			if(connected_console.average_temp < C.min_reactor_temp || connected_console.average_activity < TOO_LITTLE_RAD)
				C.SetOverallLength(CONTROL_RODS_DOWN)
			else //Basically all normal functioning. The goal is to reduce the difference between two cycles of activity, so reactor becomes more stable.
				delta = connected_console.average_temp - prev_temp
				prev_temp = connected_console.average_temp
				C.SetOverallLength(C.average_length + delta * C.regulation_coeff * -1)

/obj/machinery/computer/rod_control/Destroy()
	QDEL_NULL(C)
	return ..()

/obj/machinery/computer/rod_control/interface_interact(mob/user)
	ui_interact(user)
	return TRUE

/obj/machinery/computer/rod_control/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	C.ui_interact(user, ui_key, ui, force_open, state)

/datum/nano_module/rcontrol
	name = "Reactor control"
	var/list/known_c_rods = list()
	var/datum/nano_module/rmon/connected_console
	var/id_tag
	//Autoregulation
	var/Autoreg = FALSE
	var/min_reactor_temp = 500 // K
	var/max_reactor_temp = 3500 // K
	var/average_length
	var/regulation_coeff = 0.005



/datum/nano_module/rcontrol/ui_interact(mob/user, ui_key = "rcon", datum/nanoui/ui=null, force_open=1, var/datum/topic_state/state = GLOB.default_state)
	FindDevices() // Update our devices list
	var/list/data = host.initial_data()
	var/sum_length = 0
	var/list/rodlist = new /list()
	for(var/obj/machinery/control_rod/R in known_c_rods)
		sum_length += R.rod_length
		rodlist.Add(list(list(
		"name" = R.name,
		"len" = R.rod_length,
		"targ" = R.target,
		"broken" = R.nocontrol,
		"tag" = "\ref[R]"
		)))

	data["maxtemp"] = max_reactor_temp
	data["mintemp"] = min_reactor_temp
	data["manual"] = !Autoreg
	data["regcoeff"] = regulation_coeff
	data["rods"] = sortByKey(rodlist, "name")
	data["id"] = id_tag

	average_length = sum_length / (known_c_rods.len)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "rcontrol.tmpl", "Reactor control Console", 600, 400, state = state)
		if(host.update_layout()) // This is necessary to ensure the status bar remains updated along with rest of the UI.
			ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/datum/nano_module/rcontrol/proc/SetOverallLength(var/new_overall)
	for(var/obj/machinery/control_rod/C in known_c_rods)
		if(C.target != new_overall)
			C.target = Clamp(new_overall, 0, 4)

/datum/nano_module/rcontrol/proc/FindDevices()
	known_c_rods = list()
	for(var/obj/machinery/control_rod/I in GLOB.control_rods)
		if(I.id_tag && (I.id_tag == id_tag)) //&& (get_dist(src, I) < 50))
			known_c_rods += I
	var/direction = 0
	while(direction <= 10)
		var/turf/T = get_step(host, direction)
		if(locate(/obj/machinery/computer/reactor_control) in T)
			var/obj/machinery/computer/reactor_control/C = locate(/obj/machinery/computer/reactor_control) in T
			connected_console = C.mon


/datum/nano_module/rcontrol/Topic(href, href_list)
	if(href_list["settarg"])
		var/obj/machinery/control_rod/Rd = locate((href_list["settarg"]))
		var/new_val = (input("Enter new target length", "Setting new length", Rd.target) as num)
		Rd.target = Clamp(new_val, 0, 4)

	if( href_list["setall"] )
		var/new_overall = (input("Enter new overall length", "Setting new length", 0) as num)
		SetOverallLength(new_overall)

	if(href_list["switchauto"]) //PD autocontroller
		Autoreg = !Autoreg

	if(href_list["set_max_temp"])
		max_reactor_temp = (input("Enter new maximal reactor temperature", "Setting new temperature", 0) as num)

	if(href_list["set_min_temp"])
		min_reactor_temp = (input("Enter new minimal reactor temperature", "Setting new temperature", 0) as num)

	if(href_list["set_regcoeff"])
		regulation_coeff = (input("Enter new coefficient between change in activity and control rod move", "Setting new parameter", 0) as num)





/obj/machinery/computer/rod_control/attackby(var/obj/item/W, var/mob/user)
	if(isMultitool(W))
		var/new_ident = input("Enter a new ID.", "Rod Control", id_tag) as null|text
		if(new_ident && user.Adjacent(src))
			id_tag = new_ident
			C.id_tag = new_ident
		return
	return ..()



/obj/item/weapon/stock_parts/circuitboard/reactor_control_console
	name = T_BOARD("Reactor control")
	build_path = /obj/machinery/computer/rod_control
	origin_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3, TECH_POWER = 5)
