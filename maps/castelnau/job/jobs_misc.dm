/datum/job/assistant
	title = "Crewman"
	alt_titles = list()
	total_positions = 4
	spawn_positions = 4
	department = "Civilian"
	department_flag = CIV
	supervisors = "the Captain, the First Officer and the Second Officer"
	selection_color = "#515151"
	economic_power = 6
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crewman
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
