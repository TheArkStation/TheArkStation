/datum/map/castelnau
	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior
	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod6/station,
		/area/shuttle/escape_pod7/station,
		/area/shuttle/escape_pod8/station,
		/area/shuttle/escape_pod9/station,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom
	)

/area/maintenance/exterior

#define CREATE_CST_AREA(P) /area/castelnau/P

/area/castelnau/
	icon = 'maps/castelnau/icons/areas.dmi'

/area/shuttle/escape_pod6/station
	name = "Escape Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod7/station
	name = "Escape Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Escape Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Escape Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Merchant
/area/shuttle/merchant/home
	name = "Merchant Vessel"
	icon_state = "shuttlegrn"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/merchant_station
	name = "Merchant Station"
	icon_state = "LP"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

// CentCom
/area/centcom/control
	name = "Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "Centcom Transport Shuttle"

/area/centcom/living
	name = "Centcom Living Quarters"

/area/centcom/suppy
	name = "Centcom Supply Shuttle"

/area/centcom/test
	name = "Centcom Testing Facility"

/area/shuttle/administration/centcom
	name = "Administration Shuttle"
	icon_state = "shuttlered"

// ACTORS GUILD
/area/acting
	name = "Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "Backstage"

/area/acting/stage
	name = "Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome
/area/tdome
	name = "Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA

/area/tdome/tdome1
	name = "Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "Thunderdome (Observer.)"
	icon_state = "purple"

/area/tdome/testing
	name = "Thunderdome (TESTING AREA)"
	icon_state = "purple"

/area/tdome/testing/engineering
	requires_power = 0
	dynamic_lighting = 1

/area/tdome/testing/engineering/unpowered
	requires_power = 1

//Z 1
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

/area/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"
	req_access = list(access_brig)

/////////////////
//  CASTELNAU  //
/////////////////

//Shuttles
/area/shuttle/castelnau
	icon = 'maps/castelnau/icons/areas.dmi'
	base_turf = /turf/space
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	requires_power = 1

//Prometeus

/area/shuttle/castelnau/prometeus
	req_access = list(access_castelnau_prometeus)

/area/shuttle/castelnau/prometeus/cockpit
	icon_state = "pro_crew"
	name = "Prometeus - Cockpit"

/area/shuttle/castelnau/prometeus/external
	icon_state = "pro_ext"
	name = "Prometeus - External Storage"

/area/shuttle/castelnau/prometeus/power
	icon_state = "pro_eng"
	name = "Prometeus - Power Compartment"

/area/shuttle/castelnau/prometeus/medical
	icon_state = "pro_med"
	name = "Prometeus - Medical Compartment"

/area/shuttle/castelnau/prometeus/airlock
	icon_state = "pro_ext"
	name = "Prometeus - Airlock Compartment"

/area/shuttle/castelnau/prometeus/hall
	icon_state = "pro_hall"
	name = "Prometeus - Hall"

/area/shuttle/castelnau/prometeus/rnd
	icon_state = "pro_rnd"
	name = "Prometeus - Research"

/area/shuttle/castelnau/prometeus/robotic
	icon_state = "pro_robo"
	name = "Prometeus - Robotic Lab"

/area/shuttle/castelnau/prometeus/anomaly
	icon_state = "pro_ano"
	name = "Prometeus - Anomaly Lab"

/area/shuttle/castelnau/prometeus/botany
	icon_state = "pro_bot"
	name = "Prometeus - Xenobotany"

/area/shuttle/castelnau/prometeus/equip
	icon_state = "pro_lock"
	name = "Prometeus - Equipment"

/area/shuttle/castelnau/prometeus/eva
	icon_state = "pro_eva"
	name = "Prometeus - EVA"

/area/shuttle/castelnau/prometeus/xen
	icon_state = "pro_xen"
	name = "Prometeus - Xenobiology"

/area/shuttle/castelnau/prometeus/gas
	icon_state = "pro_gas"
	name = "Prometeus - Gas Lab"

/area/shuttle/castelnau/prometeus/dorm
	icon_state = "pro_dorm"
	name = "Prometeus - Dormitory"

/area/shuttle/castelnau/prometeus/tele
	icon_state = "pro_tele"
	name = "Prometeus - Telecomms"


//Perseus
/area/shuttle/castelnau/perseus
	req_access = list(access_castelnau_perseus)

/area/shuttle/castelnau/perseus/cockpit
	icon_state = "per_helm"
	name = "Perseus - cockpit"
	req_access = list(access_castelnau_perseus_helm)

/area/shuttle/castelnau/perseus/power
	icon_state = "per_eng"
	name = "Perseus - Power Compartment"

/area/shuttle/castelnau/perseus/cargo
	icon_state = "per_carg"
	name = "Perseus - Cargo Bay"

//Bixie
/area/shuttle/castelnau/bixie
	req_access = list(access_castelnau_bixie)

/area/shuttle/castelnau/bixie/cockpit
	icon_state = "bix_helm"
	name = "Bixie - Cockpit"
	req_access = list(access_castelnau_bixie_helm)

/area/shuttle/castelnau/bixie/power
	icon_state = "bix_eng"
	name = "Bixie - Power Compartment"

/area/shuttle/castelnau/bixie/cargo
	icon_state = "bix_carg"
	name = "Bixie - Cargo Bay"

//Access base
CREATE_CST_AREA(maintenance)
	req_access = list(access_castelnau_maint_tunnels)

CREATE_CST_AREA(engineering)
	req_access = list(access_castelnau_engineering)

CREATE_CST_AREA(medical)
	req_access = list(access_castelnau_medical)

CREATE_CST_AREA(security)
	req_access = list(access_castelnau_security)

CREATE_CST_AREA(command)
	req_access = list(access_castelnau_command)

//THIRD_DECK(Z-1)
CREATE_CST_AREA(hallway/primary/thirddeck/fore)
	name = "Third Deck Fore Hallway"
	icon_state = "hallF"

CREATE_CST_AREA(hallway/primary/thirddeck/aft)
	name = "Third Deck Aft Hallway"
	icon_state = "hallA"

CREATE_CST_AREA(maintenance/thirddeck/starboard)
	name = "Third Deck Starboard Maintenance"
	icon_state = "smaint"

CREATE_CST_AREA(maintenance/thirddeck/port)
	name = "Third Deck Port Maintenance"
	icon_state = "pmaint"

CREATE_CST_AREA(civ/janitor)
	name = "Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_castelnau_janitor)

CREATE_CST_AREA(storage/expedition)
	name = "Expedition Storage"
	icon_state = "storage"
	sound_env = SMALL_ENCLOSED

CREATE_CST_AREA(storage/cargo)
	name = "Cargo Storage"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED

CREATE_CST_AREA(supply/hangar)
	name = "Hangar Deck"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_castelnau_hangar)

CREATE_CST_AREA(supply/smelter)
	name = "Smelter"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_castelnau_hangar)

//SECOND_DECK(Z-2)
CREATE_CST_AREA(supply/office)
	name = "Supply Office"
	icon_state = "quartoffice"
	req_access = list(access_castelnau_supply)

CREATE_CST_AREA(supply/storage)
	name = "Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_castelnau_supply)

CREATE_CST_AREA(maintenance/seconddeck/forestarboard)
	name = "Second Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

CREATE_CST_AREA(maintenance/seconddeck/aftstarboard)
	name = "Second Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

CREATE_CST_AREA(maintenance/seconddeck/starboard)
	name = "Second Deck Starboard Maintenance"
	icon_state = "smaint"

CREATE_CST_AREA(maintenance/seconddeck/port)
	name = "Second Deck Port Maintenance"
	icon_state = "pmaint"

CREATE_CST_AREA(hallway/primary/seconddeck/center)
	name = "Second Deck Central Hallway"
	icon_state = "hallC3"

CREATE_CST_AREA(hallway/primary/seconddeck/central_stairwell)
	name = "Second Deck Central Stairwell"
	icon_state = "hallC2"

CREATE_CST_AREA(engineering/storage)
	name = "Engineering Storage"
	icon_state = "engineering_storage"

CREATE_CST_AREA(engineering/hardstorage)
	name = "Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

CREATE_CST_AREA(engineering/hallway)
	name = "Engineering Hallway"
	icon_state = "engineering_workshop"

CREATE_CST_AREA(engineering/engine_room)
	name = "Reactor Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_castelnau_engine)

CREATE_CST_AREA(engineering/gen_room)
	name = "Generators Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_castelnau_engine)

CREATE_CST_AREA(engineering/reactor_control_room)
	name = "Reactor Control Room"
	icon_state = "engine"
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_castelnau_engine)

CREATE_CST_AREA(engineering/engine_smes)
	name = "Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

CREATE_CST_AREA(engineering/engineering_monitoring)
	name = "Engineering Monitoring Room"
	icon_state = "engine_monitoring"
	area_flags = AREA_FLAG_RAD_SHIELDED

CREATE_CST_AREA(engineering/atmos)
	name = "Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_castelnau_atmospherics)

CREATE_CST_AREA(storage/tech)
	name = "Technical Storage"
	icon_state = "storage"

CREATE_CST_AREA(thruster)
	icon_state = "thruster"
	req_access = list(access_castelnau_thrusters)

CREATE_CST_AREA(thruster/d1port)
	name = "First Deck Port Nacelle"

CREATE_CST_AREA(thruster/d1starboard)
	name = "First Deck Starboard Nacelle"

CREATE_CST_AREA(thruster/d2port)
	name = "Second Deck Port Nacelle"

CREATE_CST_AREA(thruster/d2starboard)
	name = "Second Deck Starboard Nacelle"

CREATE_CST_AREA(engineering/foyer)
	name = "Engineering Foyer"
	icon_state = "engineering_foyer"
	req_access = list()

CREATE_CST_AREA(security/equip)
	name = "Security - Equipment"
	icon_state = "security_equip"
	req_access = list(access_castelnau_brig)

CREATE_CST_AREA(security/processing)
	name = "Security - Processing"
	icon_state = "security_processing"
	req_access = list(access_castelnau_brig)

CREATE_CST_AREA(security/hall)
	name = "Security - Hall"
	icon_state = "security"
	req_access = list(access_castelnau_brig)

CREATE_CST_AREA(security/brig)
	name = "Security - Brig"
	icon_state = "security_brig"
	req_access = list(access_castelnau_brig)

CREATE_CST_AREA(security/recreation)
	name = "Security - Recreation"
	icon_state = "security_brig"
	req_access = list(access_castelnau_brig)

CREATE_CST_AREA(security/aux)
	name = "Security - Auxiliary Equipment"
	icon_state = "security_brig"
	req_access = list(access_castelnau_brig)

CREATE_CST_AREA(command/fo)
	name = "Command - First Officer's Quarters"
	icon_state = "captain"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_castelnau_comoffice)

//FIRST_DECK(Z-3)
CREATE_CST_AREA(maintenance/firstdeck/aftstarboard)
	name = "First Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

CREATE_CST_AREA(maintenance/firstdeck/aftport)
	name = "First Deck Aft Port Maintenance"
	icon_state = "apmaint"

CREATE_CST_AREA(maintenance/firstdeck/aft)
	name = "First Deck Aft Maintenance"
	icon_state = "amaint"

CREATE_CST_AREA(maintenance/firstdeck/forestarboard)
	name = "First Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

CREATE_CST_AREA(maintenance/firstdeck/centralstarboard)
	name = "First Deck Starboard Maintenance"
	icon_state = "smaint"

CREATE_CST_AREA(maintenance/firstdeck/foreport)
	name = "First Deck Fore Maintenance"
	icon_state = "fpmaint"
	name = "First Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

CREATE_CST_AREA(maintenance/firstdeck/aftport)
	name = "First Deck Aft Port Maintenance"
	icon_state = "apmaint"

CREATE_CST_AREA(maintenance/firstdeck/forestarboard)
	name = "First Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

CREATE_CST_AREA(maintenance/firstdeck/centralstarboard)
	name = "First Deck Starboard Maintenance"
	icon_state = "smaint"

	name = "First Deck Fore Maintenance"
	icon_state = "fpmaint"

CREATE_CST_AREA(engineering/shield)
	name = "Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED

CREATE_CST_AREA(medical/maintenance_equipstorage)
	name = "Infirmary Maintenance Storage"
	icon_state = "medbay4"
	req_access = list(access_castelnau_maint_tunnels)

CREATE_CST_AREA(medical/chemistry)
	name = "Chemistry"
	icon_state = "chem"

CREATE_CST_AREA(medical/infirmreception)
	name = "Infirmary Reception"
	icon_state = "medbay2"

CREATE_CST_AREA(medical/subacute)
	name = "Sub-Acute Ward"
	icon_state = "patients"

CREATE_CST_AREA(medical/morgue)
	name = "Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_castelnau_morgue)

CREATE_CST_AREA(medical/sleeper)
	name = "Emergency Treatment Center"
	icon_state = "exam_room"

CREATE_CST_AREA(medical/surgery)
	name = "Operating Theatre"
	icon_state = "surgery"

CREATE_CST_AREA(command/tcoms)
	name = "Telecoms Central Compartment"
	icon_state = "tcomsatcham"
	req_access = list(access_castelnau_tcoms)

CREATE_CST_AREA(hallway/primary/firstdeck/fore)
	name = "First Deck Fore Hallway"
	icon_state = "hallF"

CREATE_CST_AREA(hallway/primary/firstdeck/center)
	name = "First Deck Central Hallway"
	icon_state = "hallC1"

CREATE_CST_AREA(hallway/primary/firstdeck/aft)
	name = "First Deck Aft Hallway"
	icon_state = "hallA"

CREATE_CST_AREA(engineering/substation)
	icon = 'maps/castelnau/icons/areas.dmi'
	name = "Substation"
	icon_state = "eng_substation"

CREATE_CST_AREA(civ/bar)
	name = "Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

CREATE_CST_AREA(civ/restroom)
	name = "Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

CREATE_CST_AREA(civ/laundry)
	name = "Laundry Room"
	icon_state = "Sleep"

CREATE_CST_AREA(civ/bunk)
	name = "Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

CREATE_CST_AREA(civ/cryo)
	name = "Cryostorage"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

CREATE_CST_AREA(command/captain)
	name = "Command - Main Office"
	icon_state = "captain"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_castelnau_comoffice)

CREATE_CST_AREA(command/captainquarts)
	name = "Command - Captain's Quarters"
	icon_state = "captain"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_castelnau_captain)

CREATE_CST_AREA(command/eva)
	name = "EVA Storage"
	icon_state = "eva"
	req_access = list(access_castelnau_eva)

CREATE_CST_AREA(command/bridge)
	name = "Bridge"
	icon_state = "bridge"
	req_access = list(access_castelnau_bridge)

CREATE_CST_AREA(command/bridge/storage)
	name = "Bridge storage"
	icon_state = "bridge"
	req_access = list(access_castelnau_bridge)

CREATE_CST_AREA(storage/primary)
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

CREATE_CST_AREA(security/ivestigation)
	name = "Laboratory"
	icon_state = "security_inv"

CREATE_CST_AREA(security/observation)
	name = "Brig Observation"
	icon_state = "security_obs"

CREATE_CST_AREA(security/armory)
	name = "Armory"
	icon_state = "security_armory"
	req_access = list(access_castelnau_armory)

CREATE_CST_AREA(civ/lounge)
	name = "Lounge"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR

CREATE_CST_AREA(civ/kitchen)
	name = "Kitchen"
	icon_state = "kitchen"
	req_access = list(access_castelnau_kitchen)

CREATE_CST_AREA(civ/kitchen_backroom)
	name = "Kitchen Storage"
	icon_state = "kitchen_back"
	req_access = list(access_castelnau_kitchen)