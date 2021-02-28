// Objects' visuals and basics

/obj/machinery/computer/modular/preset/hotel
	default_software = list(
		/datum/computer_file/program/hotel_reservations,
		/datum/computer_file/program/wordprocessor
	)
	autorun_program = /datum/computer_file/program/hotel_reservations

/obj/machinery/hotel_terminal
	name = "hotel reservations systems terminal"
	desc = "It can be used either for self-serivce reservations when set to automatic mode or as an ID scanner and payment terminal when operating in connection with a console."
	icon = 'code_ark/icons/obj/machinery.dmi'
	icon_state = "hotel_terminal"
	density = 1

	var/auto_mode = 1		// 0 - manual, 1 - auto
	var/program_mode = 1	// 0 - error, 1 - room selection, 2 - reservation, 3 - ID scan, 4 - payment

	var/datum/nano_module/hotel_reservations/master_program
	var/datum/hotel_room/selected_room

/*/obj/item/weapon/stock_parts/circuitboard/hotel_terminal
	name = T_BOARD("hotel reservations system serivce terminal")
	build_path = /obj/machinery/hotel_terminal*/

/obj/machinery/hotel_terminal/Initialize()
	. = ..()
	setup_hotel_rooms()
	update_icon()

/obj/machinery/hotel_terminal/Destroy()
	if(master_program)
		master_program.connected_terminal = null
	. = ..()

/obj/machinery/hotel_terminal/on_update_icon()
	overlays.Cut()
	if(stat & (NOPOWER|BROKEN))
		set_light(0)
	var/screen_icon_state
	switch(program_mode)
		if(0)
			screen_icon_state = "hotel_terminal_error"
		if(1)
			if(auto_mode)
				screen_icon_state = "hotel_terminal_room_list"
			else
				screen_icon_state = "hotel_terminal_blocked"
		if(2)
			screen_icon_state = "hotel_terminal_room_reserve"
		if(3)
			screen_icon_state = "hotel_terminal_id_scan"
		if(4)
			screen_icon_state = "hotel_terminal_payment"
	var/image/I = image(icon, screen_icon_state)
	I.plane = EFFECTS_ABOVE_LIGHTING_PLANE
	I.layer = ABOVE_LIGHTING_LAYER
	overlays += I
	set_light(0.2, 0.5, 1, 2, "#cba561")

/obj/machinery/hotel_terminal/proc/flick_screen(var/screen_icon_state = "hotel_terminal_screensaver")
	if(stat & (NOPOWER|BROKEN))
		return
	overlays.Cut()
	var/image/I = image(icon, screen_icon_state)
	I.plane = EFFECTS_ABOVE_LIGHTING_PLANE
	I.layer = ABOVE_LIGHTING_LAYER
	overlays += I
	sleep(10)
	update_icon()


/obj/machinery/hotel_terminal/interface_interact(var/mob/user)
	flick_screen("hotel_terminal_screensaver")
	ui_interact(user)
	return TRUE

/obj/machinery/hotel_terminal/CanUseTopic(user, state)
	if(stat & (NOPOWER|BROKEN))
		to_chat(user, "<span class='warning'>\The [src] is broken!</span>")
		return STATUS_CLOSE
	return ..()

/obj/machinery/hotel_terminal/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)

	var/list/data

	data["mode"] = program_mode

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "hotel_terminal.tmpl", "Hotel Reservations Terminal", 390, 500)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/hotel_terminal/proc/give_error()

// PLACEHOLDERS - REMOVE - SHALL REPORT TO THE MASTER UPON DESTRUCTION

/obj/machinery/computer/hotel_room_controller
	var/datum/hotel_room/hotel_room