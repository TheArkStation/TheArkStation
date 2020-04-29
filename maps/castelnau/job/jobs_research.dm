/datum/job/senior_scientist
	title = "Senior Researcher"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "yourself"
	selection_color = "#633d63"
	economic_power = 12
	minimal_player_age = 10
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/research/senior_scientist
	allowed_branches = list(/datum/mil_branch/science_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	access = list(access_castelnau_prometeus_senior, access_castelnau_prometeus, access_castelnau_prometeus_helm)

	minimal_access = list(access_castelnau_prometeus_senior, access_castelnau_prometeus, access_castelnau_prometeus_helm)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_BOTANY      = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	forced_spawnpoint = "Prometeus Cryogenic Storage"

/datum/job/scientist
	title = "Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director"
	economic_power = 10
	ideal_character_age = 45
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist",
		"Psychologist" = /decl/hierarchy/outfit/job/castelnau/crew/research/scientist/psych)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/research/scientist
	allowed_branches = list(/datum/mil_branch/science_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	access = list(access_castelnau_prometeus)

	minimal_access = list(access_castelnau_prometeus)

	skill_points = 25

	forced_spawnpoint = "Prometeus Cryogenic Storage"

/datum/job/roboticist
	title = "Roboticist"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Senior Researcher"
	selection_color = "#633d63"
	economic_power = 6
	alt_titles = list(
		"Biomechanical Engineer")
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/research/roboticist
	allowed_branches = list(/datum/mil_branch/science_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_COMPUTER		= SKILL_ADEPT,
	                    SKILL_MECH          = SKILL_ADEPT,
	                    SKILL_DEVICES		= SKILL_ADEPT,
	                    SKILL_ANATOMY       = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_COMPUTER	   = SKILL_MAX,
						SKILL_MECH		   = SKILL_MAX,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_ANATOMY      = SKILL_EXPERT)

	access = list(access_castelnau_prometeus)

	minimal_access = list(access_castelnau_prometeus)

	skill_points = 20

	forced_spawnpoint = "Prometeus Cryogenic Storage"

/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "Science Personnel"
	selection_color = "#633d63"
	economic_power = 3
	ideal_character_age = 30
	alt_titles = list(
		"Testing Assistant" = /decl/hierarchy/outfit/job/castelnau/crew/research/assist/testsubject,
		"Laboratory Technician",
		"Science Intern",
		"Clerk",
		"Field Assistant")

	max_skill = list(   SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)


	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/research/assist
	allowed_branches = list(/datum/mil_branch/science_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	access = list(access_castelnau_prometeus)

	minimal_access = list(access_castelnau_prometeus)

	forced_spawnpoint = "Prometeus Cryogenic Storage"

/datum/job/scientist_pilot
	title = "Research Pilot"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Senior Scientist"
	selection_color = "#633d63"
	economic_power = 3
	ideal_character_age = 25

	min_skill = list(   SKILL_PILOT    = SKILL_ADEPT,
	                	SKILL_ENGINES  = SKILL_BASIC)


	max_skill = list(   SKILL_PILOT     = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/research/scientist_pilot
	allowed_branches = list(/datum/mil_branch/science_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	access = list(access_castelnau_prometeus, access_castelnau_prometeus_helm)
	minimal_access = list(access_castelnau_prometeus, access_castelnau_prometeus_helm)

	forced_spawnpoint = "Prometeus Cryogenic Storage"
