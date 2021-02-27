// Objects' visuals and basics

/obj/machinery/computer/modular/preset/hotel
	default_software = list(
		/datum/computer_file/program/hotel_reservations,
		/datum/computer_file/program/wordprocessor
	)
	autorun_program = /datum/computer_file/program/hotel_reservations

/obj/machinery/computer/hotel_terminal
	name = "hotel reservations systems terminal"
	desc = "It can be used either for self-serivce reservations when set to automatic mode or as an ID scanner and payment terminal when operating."
	icon_keyboard = "generic_key"
	icon_screen = "security"
	light_color = "#c7c7c7"

	var/auto_mode

/obj/item/weapon/stock_parts/circuitboard/hotel_terminal
	name = T_BOARD("hotel reservations system serivce terminal")
	build_path = /obj/machinery/computer/hotel_terminal

/* /obj/machinery/computer/hotel_terminal/Destroy()
	hotel_master.hotel_terminal = null
	. = ..() */											// FIX ME

// UI

/obj/machinery/computer/hotel_terminal/interface_interact(var/mob/user)
	ui_interact(user)
	return TRUE



// PLACEHOLDERS - REMOVE - SHALL REPORT TO THE MASTER UPON DESTRUCTION

/obj/machinery/computer/hotel_room_controller
	var/datum/hotel_room/hotel_room