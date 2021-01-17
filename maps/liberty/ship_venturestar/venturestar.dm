// NECCESSARY INCLUDES

	#include "venturestar_areas.dm"
	#include "venturestar_shuttles.dm"
	#include "job/access.dm"
	#include "machinery/eng_equip.dm"

// TEMPLATE

/datum/map_template/ruin/away_site/venturestarship
	name = "ISV VentureStar"
	id = "awaysite_venturestar"
	description = "Industrial Space Vessel VentureStar."
	suffixes = list("../liberty/ship_venturestar/venturestar.dmm")
	cost = 0
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/venturestar)
	area_usage_test_exempted_root_areas = list(/area/venturestar)
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED

/obj/effect/overmap/visitable/sector/venturestarspace
	name = "Empty Sector"
	icon_state = "dust"
	in_space = 1
	hide_from_reports = TRUE

// SUBMAP DATA

/obj/effect/submap_landmark/joinable_submap/venturestar
	name = "ISV VentureStar"
	archetype = /decl/submap_archetype/venturestar

/decl/submap_archetype/venturestar
	descriptor = "ISV VentureStar"
	map = "ISV Venture Star"
	crew_jobs = list(null) // ADD JOBS
//	call_webhook = WEBHOOK_SUBMAP_LOADED_LUCIUS
