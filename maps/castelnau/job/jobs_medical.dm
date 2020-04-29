/datum/job/senior_doctor
	title = "Surgeon"
	department = "Medical"
	department_flag = MED

	minimal_player_age = 14
	ideal_character_age = 45
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	selection_color = "#013d3b"
	economic_power = 8
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/medical/senior
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_ADEPT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_VIROLOGY    = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)
	skill_points = 26

	access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	minimal_access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors)

/datum/job/doctor
	title = "Doctor"
	department = "Medical"
	department_flag = MED

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Surgeon"
	economic_power = 7
	ideal_character_age = 40
	alt_titles = list(
		"Paramedic",
		"Chemist")

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/medical/doctor
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_MEDICAL   = SKILL_BASIC,
		                SKILL_CHEMISTRY = SKILL_BASIC,
	                    SKILL_ANATOMY   = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	minimal_access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors)
	skill_points = 22

