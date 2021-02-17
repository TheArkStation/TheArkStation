// Objects' visuals and basics

/obj/machinery/computer/hotel
	name = "hotel reservations system console"
	desc = "Used to manage reservations around the hotel."
	icon_keyboard = "generic_key"
	icon_screen = "security"
	light_color = "#c7c7c7"


	var/console_mode = 1 // 1 - room list, 2 - specific room info, 3 - reservation
	var/console_auto_mode = 0 // 0 - manual reservations, 1 - automatic reservations

	var/datum/hotel_room/selected_room

	var/obj/machinery/computer/hotel_terminal/hotel_terminal

/obj/machinery/computer/hotel_terminal
	name = "hotel reservations systems terminal"
	desc = "It can be used either for self-serivce reservations when set to automatic mode or as an ID scanner and payment terminal when operating."
	icon_keyboard = "generic_key"
	icon_screen = "security"
	light_color = "#c7c7c7"

	var/obj/machinery/computer/hotel/hotel_master

/obj/item/weapon/stock_parts/circuitboard/hotel
	name = T_BOARD("hotel reservations system console")
	build_path = /obj/machinery/computer/hotel

/obj/item/weapon/stock_parts/circuitboard/hotel_terminal
	name = T_BOARD("hotel reservations system serivce terminal")
	build_path = /obj/machinery/computer/hotel_terminal

// Machinery part

/obj/machinery/computer/hotel/Initialize()
	. = ..()
	setup_hotel_rooms()
	hotel_terminal = locate(/obj/machinery/computer/hotel_terminal)
	if(!hotel_terminal)
		set_broken(TRUE)
	else
		hotel_terminal.hotel_master = src

/obj/machinery/computer/hotel/Destroy() // FIX ME
	hotel_terminal.set_broken(TRUE)
	hotel_terminal.hotel_master = null
	. = ..()

/obj/machinery/computer/hotel_terminal/Destroy()
	hotel_master.hotel_terminal = null
	. = ..()

// UI

/obj/machinery/computer/hotel/interface_interact(var/mob/user)
	ui_interact(user)
	return TRUE

/obj/machinery/computer/hotel/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)

	var/list/hotel_single_room_list = new
	var/list/hotel_double_room_list = new
	var/list/hotel_special_room_list = new

	var/list/hotel_selected_room = new

	for(var/datum/hotel_room/R in GLOB.hotel_rooms)

		var/room_guest_list = ""

		if (R == selected_room)
			if(R.room_status == 2)
				var/N = 0
				for(var/guest_name in R.room_guests)
					room_guest_list += "[guest_name]"
					N += 1
				if (N < R.room_guests.len)
					room_guest_list += ", "
			hotel_selected_room = list(list(
			"number" = R.room_number,
			"status" = R.room_status,
			"requests" = R.room_requests,
			"beds" = R.bed_count,
			"capacity" = R.guest_count,
			"price" = R.hourly_price,
			"guests" = room_guest_list,
			"start" = R.room_reservation_start_time,
			"end" = R.room_reservation_end_time
			))
			continue

		if (R.special_room)
			hotel_special_room_list.Add(list(list("room" = list(
			"number" = R.room_number,
			"status" = R.room_status,
			"requests" = R.room_requests,
			"beds" = R.bed_count,
			"capacity" = R.guest_count,
			"price" = R.hourly_price,
			"start" = R.room_reservation_start_time,
			"end" = R.room_reservation_end_time
			))))
			continue

		if (R.guest_count == 2)
			hotel_double_room_list.Add(list(list("room" = list(
			"number" = R.room_number,
			"status" = R.room_status,
			"requests" = R.room_requests,
			"beds" = R.bed_count,
			"capacity" = R.guest_count,
			"price" = R.hourly_price,
			"start" = R.room_reservation_start_time,
			"end" = R.room_reservation_end_time
			))))
			continue

		if (R.guest_count == 1)
			hotel_single_room_list.Add(list(list("room" = list(
			"number" = R.room_number,
			"status" = R.room_status,
			"requests" = R.room_requests,
			"beds" = R.bed_count,
			"capacity" = R.guest_count,
			"price" = R.hourly_price,
			"start" = R.room_reservation_start_time,
			"end" = R.room_reservation_end_time
			))))
			continue

	var/list/data = list(
		"mode" = console_mode,
		"auto_mode" = console_auto_mode,
		"single_rooms" = hotel_single_room_list,
		"double_rooms" = hotel_double_room_list,
		"special_rooms" = hotel_special_room_list,
		"selected_room" = hotel_selected_room
	)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "hotel.tmpl", "Hotel Reservations System", 360, 440)
		ui.set_initial_data(data)
		ui.open()

/obj/machinery/computer/hotel/OnTopic(var/mob/user, var/list/href_list, state)
	if (href_list["room_select"])
		for (var/datum/hotel_room/R in GLOB.hotel_rooms)
			if (R.room_number == href_list["room_select"])
				console_mode = 2
				selected_room = R
				break
		return TOPIC_REFRESH

// PLACEHOLDERS - REMOVE - SHALL REPORT TO THE MASTER UPON DESTRUCTION

/obj/machinery/computer/hotel_room_controller
	var/datum/hotel_room/hotel_room