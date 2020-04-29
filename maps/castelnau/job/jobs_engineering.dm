/datum/job/senior_engineer
	title = "Senior Engineer"
	department = "Engineering"
	department_flag = ENG
	supervisors = "the Captain, the First Officer and the Second Officer"
	selection_color = "#5b4d20"

	total_positions = 1
	spawn_positions = 1
	economic_power = 7
	minimal_player_age = 14
	ideal_character_age = 34

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering/senior_engineer
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	skill_points = 24
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
						SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_COMPUTER     = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(
		access_castelnau_perseus, access_castelnau_perseus_helm, access_castelnau_maint_tunnels,
		access_castelnau_external_airlocks, access_castelnau_engineering, access_castelnau_engine, access_castelnau_seneng,
		access_castelnau_atmospherics, access_castelnau_thrusters, access_castelnau_hangar, access_castelnau_eva)

	minimal_access = list(
		access_castelnau_perseus, access_castelnau_perseus_helm, access_castelnau_maint_tunnels,
		access_castelnau_external_airlocks, access_castelnau_engineering, access_castelnau_engine, access_castelnau_seneng,
		access_castelnau_atmospherics, access_castelnau_thrusters, access_castelnau_hangar, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer
	title = "Engineer"
	department = "Engineering"
	department_flag = ENG
	supervisors = "the Senior Engineer"
	selection_color = "#5b4d20"

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 7
	ideal_character_age = 25
	economic_power = 6

	alt_titles = list(
		"Electrician" = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/electr,
		"Atmospheric Technician" = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/atmos,
		"Engineering Trainee")

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	skill_points = 20
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_COMPUTER	   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)


	access = list(access_castelnau_perseus, access_castelnau_maint_tunnels,
		access_castelnau_external_airlocks, access_castelnau_engineering, access_castelnau_engine,
		access_castelnau_atmospherics, access_castelnau_thrusters, access_castelnau_eva)

	minimal_access = list(access_castelnau_perseus, access_castelnau_maint_tunnels,
		access_castelnau_external_airlocks, access_castelnau_engineering, access_castelnau_engine,
		access_castelnau_atmospherics, access_castelnau_thrusters, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/shields_monitor)
