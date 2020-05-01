/datum/map/castelnau
	species_to_job_whitelist = list()

#define COMMAND_JOBS /datum/job/captain, /datum/job/hop, /datum/job/adjutant
#define HUMAN_NOVOX_JOBS /datum/job/captain, /datum/job/hop, /datum/job/adjutant, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/warden, /datum/job/officer, /*/datum/job/specialist,*/ /datum/job/senior_doctor, /datum/job/doctor, /datum/job/qm, /datum/job/mining, /datum/job/janitor, /datum/job/chef, /datum/job/bartender, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/roboticist, /datum/job/scientist_assistant, /datum/job/scientist_pilot, /datum/job/assistant
	species_to_job_blacklist = list(
		/datum/species/unathi = list(/datum/job/captain, /datum/job/hop),
		/datum/species/unathi/yeosa = list(/datum/job/captain, /datum/job/hop),
		/datum/species/machine = list(/datum/job/captain),
		/datum/species/diona = list(COMMAND_JOBS, /datum/job/warden, /datum/job/officer),
		/datum/species/adherent = list(COMMAND_JOBS, /datum/job/warden, /datum/job/officer),
		/datum/species/nabber = list(COMMAND_JOBS, /datum/job/senior_engineer, /datum/job/senior_doctor, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/qm, /datum/job/warden, /datum/job/officer),
//		/datum/species/resomi = list(COMMAND_JOBS, /datum/job/senior_engineer, /datum/job/senior_doctor, /datum/job/senior_scientist, /datum/job/warden),
		/datum/species/vox = list(HUMAN_NOVOX_JOBS),
		/datum/species/vox/armalis = list(HUMAN_NOVOX_JOBS),
	)

#undef HUMAN_NOVOX_JOBS

	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/adjutant,
						/datum/job/senior_engineer, /datum/job/engineer,
						/datum/job/warden, /datum/job/officer,
						/datum/job/senior_doctor, /datum/job/doctor,
						/datum/job/qm, /datum/job/mining,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/senior_scientist, /datum/job/scientist, /datum/job/roboticist, /datum/job/scientist_assistant, /datum/job/scientist_pilot,
						/datum/job/assistant
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_castelnau_idmod),
		ACCESS_REGION_MEDBAY = list(access_castelnau_idmod),
		ACCESS_REGION_RESEARCH = list(access_castelnau_idmod),
		ACCESS_REGION_ENGINEERING = list(access_castelnau_idmod),
		ACCESS_REGION_COMMAND = list(access_castelnau_idmod),
		ACCESS_REGION_GENERAL = list(access_castelnau_idmod),
		ACCESS_REGION_SUPPLY = list(access_castelnau_idmod),
		ACCESS_REGION_NT = list(access_castelnau_prometeus_senior),
	)

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/scientist_assistant)
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/bartender)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/roboticist)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/doctor)
	..()
