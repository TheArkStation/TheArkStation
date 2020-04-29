/datum/job/warden
	title = "Sheriff"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	economic_power = 8
	minimal_player_age = 14
	ideal_character_age = 35
	alt_titles = list(
		"PMC Ranger",
		"Security Pointman"
		)
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/warden
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/merc, /datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_HAULING	  = SKILL_ADEPT,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 25

	access = list(access_castelnau_sheriff,
				  access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_maint_tunnels,
				  access_castelnau_external_airlocks,
				  access_castelnau_hangar,
				  access_castelnau_eva)

	minimal_access = list(access_castelnau_sheriff,
					 access_castelnau_security,
					 access_castelnau_brig,
					 access_castelnau_armory,
					 access_castelnau_maint_tunnels,
				 	 access_castelnau_external_airlocks,
				  	 access_castelnau_hangar,
				  	 access_castelnau_eva)

/datum/job/officer
	title = "Deputy Sheriff"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sheriff"
	economic_power = 6
	minimal_player_age = 10
	ideal_character_age = 25
	alt_titles = list(
		"PMC Junior Ranger",
		"Security Operative")

	skill_points = 20

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/officer
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/merc, /datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)

	access = list(access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_maint_tunnels,
				  access_castelnau_external_airlocks,
				  access_castelnau_hangar,
				  access_castelnau_eva)

	minimal_access = list(access_castelnau_security,
					 access_castelnau_brig,
					 access_castelnau_armory,
					 access_castelnau_maint_tunnels,
				 	 access_castelnau_external_airlocks,
				  	 access_castelnau_hangar,
				  	 access_castelnau_eva)

/*/datum/job/specialist
	title = "Security Specialist"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sheriff"
	selection_color = "#601c1c"
	economic_power = 6
	minimal_player_age = 10
	ideal_character_age = 25
	alt_titles = list(
		"PMC Cybersecurity Agent",
		"Marshal")

	skill_points = 20

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/officer
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/merc, /datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	access = list(access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_maint_tunnels,
				  access_castelnau_external_airlocks,
				  access_castelnau_hangar,
				  access_castelnau_eva)

	minimal_access = list(access_castelnau_security,
					 access_castelnau_brig,
					 access_castelnau_armory,
					 access_castelnau_maint_tunnels,
				 	 access_castelnau_external_airlocks,
				  	 access_castelnau_hangar,
				  	 access_castelnau_eva) */
