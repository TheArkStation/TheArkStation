
// COMPUTERS

/obj/machinery/computer/shuttle_control/explore/lucius
	name = "SEV Lucius control console"
	req_access = list(access_sol_command, access_sol_pilot)
	shuttle_tag = "SEV Lucius"

/obj/machinery/computer/shuttle_control/explore/lazarev
	name = "MRM Lazarev control console"
	req_access = list(access_sol_pilot)
	shuttle_tag = "MRM Lazarev"

// SHIP VARIABLES

/obj/effect/overmap/visitable/ship/landable/lucius
	name = "SEV Lucius"
	shuttle = "SEV Lucius"
	desc = "Sensor array detects a Lexington-class medium-sized ship under the SCG flag. The vessel is unarmed and belongs to Expeditionary Corps, apparently, serving an exploration mission."
	multiz = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	color = "#0b61a4"
	vessel_mass = 3000
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Lucius Hangar" = list("nav_lazarev_dock")
	)
//	initial_generic_waypoints = list(null) // PREPARE GENERIC WPTS!

/obj/effect/overmap/visitable/ship/landable/lazarev
	name = "MRM Lazarev"
	shuttle = "MRM Lazarev"
	fore_dir = WEST
	color = "#bd0606"
	vessel_mass = 750
	vessel_size = SHIP_SIZE_TINY

// AUTODOCKS

/datum/shuttle/autodock/overmap/lucius
	name = "SEV Lucius"
	warmup_time = 5
	multiz = 1
	range = 1
	current_location = "nav_lucius_start"
	dock_target = "lucius_dock"
	shuttle_area = list(
		/area/lucius/storage, /area/lucius/hallway/second, /area/lucius/hangar, /area/lucius/maintenance/second, /area/lucius/engineering, /area/lucius/fuel, /area/lucius/thrust,
		/area/lucius/bridge, /area/lucius/captain, /area/lucius/hallway/first/fore, /area/lucius/hallway/first/aft, /area/lucius/maintenance/first/port, /area/lucius/ano,
		/area/lucius/maintenance/first/starboard, /area/lucius/med, /area/lucius/crew_quarters, /area/lucius/cryo,/area/lucius/telecomms, /area/lucius/atmos, /area/lucius/xeno
		)
	knockdown = FALSE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/sol
	knockdown = 0
	defer_initialisation = TRUE

/datum/shuttle/autodock/overmap/lazarev
	name = "MRM Lazarev"
	warmup_time = 5
	current_location = "nav_lazarev_dock"
	range = 2
	dock_target = "lazarev_shuttle"
	logging_home_tag = "nav_lazarev_dock"
	shuttle_area = /area/lucius/lazarev
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	mothershuttle = "SEV Lucius"
	fuel_consumption = 3
	defer_initialisation = TRUE

// NAVPOINTS

/obj/effect/shuttle_landmark/lucius/start
	name = "Uncharted Space"
	landmark_tag = "nav_lucius_start"

/obj/effect/shuttle_landmark/lazarev/start
	name = "Lazarev Hangar"
	landmark_tag = "nav_lazarev_dock"
	base_area = /area/lucius/hangar
	base_turf = /turf/simulated/floor/tiled/techfloor
	docking_controller = "lazarev_shuttle_dock"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE
