/*
/datum/unit_test/station_wires_shall_be_connected
	exceptions = list(list(80, 107, 1, WEST))
*/
/datum/map/torch
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/shuttle = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/turbolift = NO_SCRUBBER|NO_VENT|NO_APC,
	)

	area_coherency_test_exempt_areas = list(
		/area/space
	)

	area_usage_test_exempted_areas = list(
		/area/overmap,
		/area/turbolift,
		/area/turbolift/liberty,
		/area/turbolift/liberty/hotel/ground,
		/area/turbolift/liberty/hotel/one,
		/area/turbolift/liberty/hotel/two,
		/area/turbolift/liberty/hotel/top,
		/area/turbolift/liberty/medbay/ground,
		/area/turbolift/liberty/medbay/top,
		/area/turbolift/liberty/east/ground,
		/area/turbolift/liberty/east/one,
		/area/turbolift/liberty/east/two,
		/area/turbolift/liberty/east/three,
		/area/turbolift/liberty/east/top,
		/area/turbolift/liberty/north/ground,
		/area/turbolift/liberty/north/one,
		/area/turbolift/liberty/north/two,
		/area/turbolift/liberty/north/top,
		/area/template_noop
	)

/*
/datum/unit_test/zas_area_test/cargo_bay
	name = "ZAS: Cargo Bay"
	area_path = /area/quartermaster/storage

datum/unit_test/zas_area_test/supply_centcomm
	name = "ZAS: Supply Shuttle (CentComm)"
	area_path = /area/supply/dock

datum/unit_test/zas_area_test/xenobio
	name = "ZAS: Xenobiology"
	area_path = /area/rnd/xenobiology
*/
