//The following is a list of defs to be used for the Castelnau loadout.

//For jobs that allow for decorative or ceremonial clothing
#define FORMAL_ROLES list(/datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant, /datum/job/bartender)

//For civilian jobs that may have a uniform, but not a strict one
#define SEMIFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/bartender, /datum/job/scientist, /datum/job/senior_scientist)

//For civilian jobs that may have a strict uniform.
#define SEMIANDFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/bartender, /datum/job/senior_scientist, /datum/job/scientist)

//For roles with no uniform or formal clothing requirements
#define RESTRICTED_ROLES list(/datum/job/assistant, /datum/job/bartender)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/senior_doctor, /datum/job/doctor, /datum/job/roboticist)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/senior_doctor, /datum/job/doctor, /datum/job/roboticist, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant)

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/janitor)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/warden, /*/datum/job/specialist,*/ /datum/job/officer)

//For members of the supply department
#define SUPPLY_ROLES list(/datum/job/qm)

//For members of the service department
#define SERVICE_ROLES list(/datum/job/janitor, /datum/job/chef, /datum/job/bartender)

//For members of the research department and jobs that are scientific
#define RESEARCH_ROLES list(/datum/job/scientist, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/assistant, /datum/job/senior_scientist, /datum/job/roboticist)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(/datum/job/captain, /datum/job/hop, /*/datum/job/specialist,*/ /datum/job/officer, /datum/job/warden)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(/datum/job/captain, /datum/job/hop, /*/datum/job/specialist,*/ /datum/job/officer, /datum/job/warden, /datum/job/submap/skrellscoutship_crew, /datum/job/submap/skrellscoutship_crew/leader)

#define UNIFORMED_BRANCHES list(/datum/mil_branch/science_personnel, /datum/mil_rank/civ/civ, /datum/mil_branch/ship_personnel, /datum/mil_rank/civ/merc)

#define CIVILIAN_BRANCHES list(/datum/mil_rank/civ/civ, /datum/mil_rank/civ/merc, /datum/mil_branch/science_personnel, /datum/mil_branch/ship_personnel, /datum/mil_branch/other)

#define SOLGOV_BRANCHES list()
