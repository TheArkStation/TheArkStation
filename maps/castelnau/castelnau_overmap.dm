/obj/effect/overmap/visitable/ship/castelnau
	name = "MOTV Castelnau"
	fore_dir = WEST
	vessel_mass = 15000
	start_x = 4
	start_y = 5
	base = TRUE
	color = COLOR_PINK
	icon = 'icons/obj/overmap.dmi'
	initial_restricted_waypoints = list(
		"Prometeus" = list("nav_prometeus_dock"),
		"Bixie" = list("nav_bixie_dock"),
		"Perseus" = list("nav_perseus_dock")
	)
	initial_generic_waypoints = list(
		"nav_prometeus_dock",
		"nav_perseus_dock",
		"nav_bixie_dock",
		"nav_space_near_third_deck",
		"nav_space_third_1",
		"nav_space_third_0",
		"nav_space_second_1",
		"nav_space_second_0",
		"nav_space_first_0",
		"nav_space_first_1"
	)

/obj/effect/overmap/visitable/ship/landable/prometeus
	name = "Prometeus"
	shuttle = "Prometeus"
	vessel_mass = 4500
	fore_dir = WEST

/obj/effect/overmap/visitable/ship/landable/perseus
	name = "Perseus"
	shuttle = "Perseus"
	vessel_mass = 1000
	fore_dir = EAST

/obj/effect/overmap/visitable/ship/landable/bixie
	name = "Bixie"
	shuttle = "Bixie"
	vessel_mass = 1000
	fore_dir = EAST

/obj/machinery/computer/shuttle_control/explore/prometeus
	name = "prometeus control console"
	shuttle_tag = "Prometeus"
	req_access = list()

/obj/machinery/computer/shuttle_control/explore/perseus
	name = "perseus control console"
	shuttle_tag = "Perseus"
	req_access = list()

/obj/machinery/computer/shuttle_control/explore/bixie
	name = "bixie control console"
	shuttle_tag = "Bixie"
	req_access = list()

