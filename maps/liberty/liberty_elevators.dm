/obj/turbolift_map_holder/liberty/hotel
	name = "Liberty hotel turbolift map placeholder"
	dir = EAST
	depth = 4
	lift_size_x = 3
	lift_size_y = 3

	areas_to_use = list(
	/area/turbolift/liberty/hotel/ground,
	/area/turbolift/liberty/hotel/levelone,
	/area/turbolift/liberty/hotel/leveltwo,
	/area/turbolift/liberty/hotel/top
		)

	ext_panel_y_adj = -3
	int_panel_y_adj = 1

/obj/machinery/computer/shuttle_control/lift/cargo
	name = "cargo lift controls"
	shuttle_tag = "Primary Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0