/area/liberty
	icon = 'maps/liberty/icons/area.dmi'

/* sound_env options:
	STANDARD_STATION
	LARGE_ENCLOSED
	SMALL_ENCLOSED
	TUNNEL_ENCLOSED
	LARGE_SOFTFLOOR
	MEDIUM_SOFTFLOOR
	SMALL_SOFTFLOOR
	ASTEROID
	SPACE
	I have totally no idea what most of them sound like.
	Alternatively, sound ambience can be set directly in the "ambience" or "forced_ambience" variable. */

////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// LEVEL ZERO ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

// HOTEL
/area/liberty/hotel/casino
	name = "\improper Hotel - Casino"
	icon_state = "hotel_casino"
	sound_env = LARGE_SOFTFLOOR

/area/liberty/hotel/pool
	name = "\improper Hotel - Swiming Pool"
	icon_state = "hotel_pool"
	sound_env = LARGE_ENCLOSED

/area/liberty/hotel/hallway/lower
	name = "\improper Hotel - Lower Hallway"
	icon_state = "hotel_lower_hall"

/area/liberty/hotel/sauna
	name = "\improper Hotel - Sauna"
	icon_state = "hotel_sauna"
	sound_env = SMALL_SOFTFLOOR

/area/liberty/hotel/gym
	name = "\improper Hotel - Gym"
	icon_state = "hotel_gym"

/area/liberty/hotel/locker_room_m
	name = "\improper Hotel - Locker Room (Male)"
	icon_state = "hotel_lock_m"

/area/liberty/hotel/locker_room_f
	name = "\improper Hotel - Locker Room (Female)"
	icon_state = "hotel_lock_f"

// BRIG

/area/liberty/sfp
	req_access = list("ACCESS_SOL_SFP")

/area/liberty/sfp/hallway/zero
	name = "\improper SFP Field Office - Level Zero Hallway"
	icon_state = "department_lvl0"

/area/liberty/sfp/cells
	name = "\improper SFP Field Office - Holding Cells"
	icon_state = "department_cell"

/area/liberty/sfp/prison
	name = "\improper SFP Field Office - Long Term Cell"
	icon_state = "department_prison"

/area/liberty/sfp/laboratory
	name = "\improper SFP Field Office - Forensic Laboratory"
	icon_state = "department_laboratory"

/area/liberty/sfp/morgue
	name = "\improper SFP Field Office - Morgue"
	icon_state = "department_morgue"
	sound_env = LARGE_ENCLOSED

/area/liberty/sfp/archive
	name = "\improper SFP Field Office - Archive"
	icon_state = "department_archive"

// ENGINEERING

/area/liberty/engineering/atmos
	name = "\improper Engineering - Atmospherics"
	icon_state = "eng_atmos"
	sound_env = list('sound/ambience/ambiatm1.ogg')

/area/liberty/engineering/canister_storage
	name = "\improper Engineering - Canister Storage"
	icon_state = "eng_canister_storage"

/area/liberty/engineering/engine_monitoring_room
	name = "\improper Engineering - Engine Monitoring Room"
	icon_state = "eng_engine_monitoring_room"

/area/liberty/engineering/engine_room
	name = "\improper Engineering - Engine Room"
	icon_state = "eng_engine_room"

/area/liberty/engineering/engineering_hall_level_zero
	name = "\improper Engineering - Hallway Level Zero"
	icon_state = "eng_hall_00"

/area/liberty/engineering/engineering_prep_room
	name = "\improper Engineering - Prep Room"
	icon_state = "eng_prep_room"

/area/liberty/engineering/substation_level_zero
	name = "\improper Engineering - Substation Level Zero"
	icon_state = "eng_substation_00"

/area/liberty/engineering/restroom
	name = "\improper Engineering - Restroom"
	icon_state = "eng_restroom"

/area/liberty/engineering/shower
	name = "\improper Engineering - Shower"
	icon_state = "eng_shower"

/area/liberty/engineering/primary_storage // склад, что находится над атмосом
	name = "\improper Engineering - Primary Storage"
	icon_state = "eng_primary_storage"

/area/liberty/engineering/engineering_solar_level_zero
	name = "\improper Engineering - Solar Level Zero"
	icon_state = "eng_solar_00"

/area/liberty/engineering/supermatter_space
	name = "\improper Engineering - Supermatter Space"
	icon_state = "eng_supermatter_space"
	sound_env = SPACE

///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// LEVEL ONE ////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

// MEDBAY

/area/liberty/medbay/reception
	name = "\improper Medbay - Reception"
	icon_state = "medbay_reception"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/chemistry
	name = "\improper Medbay - Chemistry Lab"
	icon_state = "medbay_chemistry"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/exam
	name = "\improper Medbay - Examination Room"
	icon_state = "medbay_exam"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/emergency
	name = "\improper Medbay - Emergency Treatment Center"
	icon_state = "medbay_emergency"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/preop_ward
	name = "\improper Medbay - Preoperating Ward"
	icon_state = "medbay_preop_ward"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/operating
	name = "\improper Medbay - Operating Room"
	icon_state = "medbay_operating"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/operating_storage
	name = "\improper Medbay - Operating Room Storage"
	icon_state = "medbay_operating_storage"
	// req_access = WRITE ACCESSES
	sound_env = SMALL_ENCLOSED

/area/liberty/medbay/hallway/one
	name = "\improper Medbay - Level One Hallway"
	icon_state = "medbay_lvl1"
	// req_access = WRITE ACCESSES

// HOTEL

/area/liberty/hotel/restaurant
	sound_env = LARGE_SOFTFLOOR

/area/liberty/hotel/restaurant/main
	name = "\improper Hotel - Restraurant Main Level"
	icon_state = "hotel_restaurant"

/area/liberty/hotel/toilet
	name = "\improper Hotel - Restroom"
	icon_state = "hotel_toilets"

/area/liberty/hotel/kitchen
	name = "\improper Hotel - Kitchen"
	icon_state = "hotel_kitchen"

/area/liberty/hotel/freezer
	name = "\improper Hotel - Freezer"
	icon_state = "hotel_freezer"

/area/liberty/hotel/administrator
	name = "\improper Hotel - Administrator's Office"
	icon_state = "hotel_administrator"
	sound_env = MEDIUM_SOFTFLOOR

/area/liberty/hotel/foyer
	name = "\improper Hotel - Foyer"
	icon_state = "hotel_foyer"
	sound_env = LARGE_SOFTFLOOR

/area/liberty/hotel/staff_room
	name = "\improper Hotel - Staff Room"
	icon_state = "hotel_staff_room"

/area/liberty/hotel/hallway/staff
	name = "\improper Hotel - Service Hallway"
	icon_state = "hotel_staff_hall"

// BRIG

/area/liberty/sfp/lobby
	name = "\improper SFP Field Office - Lobby"
	icon_state = "department_lobby"

/area/liberty/sfp/office
	name = "\improper SFP Field Office - Office"
	icon_state = "department_working_space"

/area/liberty/sfp/interrogation
	name = "\improper SFP Field Office - Interrogation"
	icon_state = "department_interrogation"
	sound_env = SMALL_ENCLOSED

/area/liberty/sfp/recreation
	name = "\improper SFP Field Office - Break Room"
	icon_state = "department_recreation"
	sound_env = SMALL_SOFTFLOOR

/area/liberty/sfp/chief
	name = "\improper SFP Field Office - Supervisor Office"
	icon_state = "department_chief"

/area/liberty/sfp/reception
	name = "\improper SFP Field Office - Reception"
	icon_state = "department_reception"

/area/liberty/sfp/armory
	name = "\improper SFP Field Office - Armory"
	icon_state = "department_armory"

/area/liberty/sfp/dorm
	name = "\improper SFP Field Office - Dormitory"
	icon_state = "department_dorm"

/area/liberty/sfp/hallway/one_north
	name = "\improper SFP Field Office - Level One North Hallway"
	icon_state = "department_lvl1n"

/area/liberty/sfp/hallway/one_south
	name = "\improper SFP Field Office - Level One South Hallway"
	icon_state = "department_lvl1s"

/area/liberty/sfp/server
	name = "\improper SFP Field Office - Server Room"
	icon_state = "department_server"
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')

// SCG

/area/liberty/scg
	req_access = list(list("ACCESS_SOL_SFP", "ACCESS_SOL_GENERAL"))

/area/liberty/scg/docks
	name = "\improper SCG Secure Docks"
	icon_state = "sol_docks"

// HALLWAYS

/area/liberty/hallway/one/central
	name = "\improper Level One - Central Hall"
	icon_state = "lvl_1_central_hall"

/area/liberty/hallway/one/aft_port
	name = "\improper Level One - Aft Port Hallway"
	icon_state = "lvl_1_southwest_hall"

/area/liberty/hallway/one/fore_port
	name = "\improper Level One - Fore Port Hallway"
	icon_state = "lvl_1_northwest_hall"

/area/liberty/hallway/one/starboard
	name = "\improper Level One - Fore Port Hallway"
	icon_state = "lvl_1_east_hall"

/area/liberty/hallway/one/aft_terminal
	name = "\improper Level One - Aft Terminal"
	icon_state = "lvl_1_south_terminal"

/area/liberty/hallway/one/fore_terminal
	name = "\improper Level One - Fore Terminal"
	icon_state = "lvl_1_north_terminal"

/area/liberty/hallway/one/aft_docks
	name = "\improper Level One - Aft Docks"
	icon_state = "lvl_1_south_docks"

/area/liberty/hallway/one/fore_docks
	name = "\improper Level One - Fore Docks"
	icon_state = "lvl_1_north_docks"

// ENGINEERING

/area/liberty/engineering/substation_level_one
	name = "\improper Engineering - Substation Level One"
	icon_state = "eng_substation_01"

/area/liberty/engineering/hard_storage
	name = "\improper Engineering - Hard Storage"
	icon_state = "eng_hard_storage"

/area/liberty/engineering/substation_main
	name = "\improper Engineering - Substation Main"
	icon_state = "eng_substation_main"

/area/liberty/engineering/supermatter_tegs
	name = "\improper Engineering - Supermatter Tegs"
	icon_state = "eng_supermatter_tegs"
	ambience = list('sound/ambience/ambiatm1.ogg', 'sound/ambience/ambieng.ogg')

/area/liberty/engineering/technical_storage
	name = "\improper Engineering - Technical Storage"
	icon_state = "eng_technical_storage"

/area/liberty/engineering/engineering_hall_level_one
	name = "\improper Engineering - Hallway level one"
	icon_state = "eng_hall_01"

///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// LEVEL TWO ////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

// MEDBAY

/area/liberty/medbay/hallway/two
	name = "\improper Medbay - Level Two Hallway"
	icon_state = "medbay_lvl2"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/storage
	name = "\improper Medbay - Storage"
	icon_state = "medbay_storage"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/oncall_room
	name = "\improper Medbay - On-Call Room"
	icon_state = "medbay_oncall_room"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/locker_room
	name = "\improper Medbay - Locker Room"
	icon_state = "medbay_locker_room"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/cmo
	name = "\improper Medbay - Chief Medical Officer"
	icon_state = "medbay_cmo"
	// req_access = WRITE ACCESSES

/area/liberty/medbay/ward
	sound_env = SMALL_SOFTFLOOR

/area/liberty/medbay/ward/one
	name = "\improper Medbay - Ward One"
	icon_state = "medbay_ward1"

/area/liberty/medbay/ward/two
	name = "\improper Medbay - Ward Two"
	icon_state = "medbay_ward2"

/area/liberty/medbay/ward/three
	name = "\improper Medbay - Ward Three"
	icon_state = "medbay_ward3"

// HOTEL

/area/liberty/hotel/restaurant/upper
	name = "\improper Hotel - Restraurant Upper Level"
	icon_state = "hotel_restaurant_lvl2"

/area/liberty/hotel/room
	sound_env = SMALL_SOFTFLOOR

/area/liberty/hotel/room/one_zero_one
	name = "\improper Hotel - Room 101"
	icon_state = "hotel_room_101"

/area/liberty/hotel/room/one_zero_two
	name = "\improper Hotel - Room 102"
	icon_state = "hotel_room_102"

/area/liberty/hotel/room/one_zero_three
	name = "\improper Hotel - Room 103"
	icon_state = "hotel_room_103"

/area/liberty/hotel/room/one_zero_four
	name = "\improper Hotel - Room 104"
	icon_state = "hotel_room_104"

/area/liberty/hotel/room/two_zero_one
	name = "\improper Hotel - Room 201"
	icon_state = "hotel_room_201"

/area/liberty/hotel/room/two_zero_two
	name = "\improper Hotel - Room 202"
	icon_state = "hotel_room_202"

/area/liberty/hotel/room/three_zero_one
	name = "\improper Hotel - Room 301"
	icon_state = "hotel_room_301"

/area/liberty/hotel/room/three_zero_two
	name = "\improper Hotel - Room 302"
	icon_state = "hotel_room_302"

/area/liberty/hotel/room/three_zero_three
	name = "\improper Hotel - Room 303"
	icon_state = "hotel_room_303"

/area/liberty/hotel/hallway
	sound_env = MEDIUM_SOFTFLOOR

/area/liberty/hotel/hallway/west
	name = "\improper Hotel - West Hallway"
	icon_state = "hotel_west"

/area/liberty/hotel/hallway/east
	name = "\improper Hotel - East Hallway"
	icon_state = "hotel_east"

/area/liberty/hotel/dorm
	name = "\improper Hotel - Dormitory"
	icon_state = "hotel_dorm"
	sound_env = MEDIUM_SOFTFLOOR

/area/liberty/hotel/warehouse
	name = "\improper Hotel - Warehouse"
	icon_state = "hotel_warehouse"
	sound_env = SMALL_ENCLOSED

/area/liberty/hotel/dressing_room
	name = "\improper Hotel - Dressing Room"
	icon_state = "hotel_dressing_room"
	sound_env = SMALL_SOFTFLOOR

/area/liberty/hotel/over_stage
	name = "\improper Hotel - Stage Equipment"
	icon_state = "hotel_stage"

// CHAPEL

/area/liberty/chapel
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')

/area/liberty/chapel/lobby
	name = "\improper Chapel - Lobby"
	icon_state = "chapel_lobby"

/area/liberty/chapel/main
	name = "\improper Chapel - Main Hall"
	icon_state = "chapel_main_hall"
	sound_env = LARGE_ENCLOSED

/area/liberty/chapel/funeral_room
	name = "\improper Chapel - Funeral Room"
	icon_state = "chapel_funeral_room"

/area/liberty/chapel/office
	name = "\improper Chapel - Chaplain's Office"
	icon_state = "chapel_office"

// PRIVATE EYE

/area/liberty/private_eye
	name = "\improper Private Eye's Office"
	icon_state = "private_eye"
	sound_env = MEDIUM_SOFTFLOOR

// PSYCHOLOGIST

/area/liberty/psychologist
	sound_env = MEDIUM_SOFTFLOOR

/area/liberty/psychologist/waiting_room
	name = "\improper Psychologist - Waiting Room"
	icon_state = "psych_waiting_room"

/area/liberty/psychologist/therapy_room
	name = "\improper Psychologist - Therapy Room"
	icon_state = "psych_therapy_room"

///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TURBOLIFT ////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

/area/turbolift/liberty
	name = "\improper Turbolift"
	icon = 'maps/liberty/icons/area.dmi'
	icon_state = "turbolift"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list() // SET ACCESS

// HOTEL

/area/turbolift/liberty/hotel/ground
	name = "hotel (level zero)"
	base_turf = /turf/simulated/floor/plating
	lift_floor_label = "0"
	lift_floor_name = "Hotel - Level Zero"
	lift_announce_str = "Нулевой уровень отеля: Казино. Бассейн. Спортзал. Сауна."

/area/turbolift/liberty/hotel/one
	name = "\improper hotel - level one"
	base_turf = /turf/simulated/open
	lift_floor_label = "1"
	lift_floor_name = "Hotel - Level One"
	lift_announce_str = "Первый уровень отеля: Ресепшн. Ресторан. Администрация."

/area/turbolift/liberty/hotel/two
	name = "\improper hotel - level two"
	base_turf = /turf/simulated/open
	lift_floor_label = "2"
	lift_floor_name = "Hotel - Level Two"
	lift_announce_str = "Второй уровень отеля: Номера 101-104, 201-202, 301-303."

/area/turbolift/liberty/hotel/top
	name = "\improper hotel - level three"
	base_turf = /turf/simulated/open
	lift_floor_label = "3"
	lift_floor_name = "Hotel - Level Three"
	lift_announce_str = "Третий уровень отеля: Номер 401."

// MEDBAY

/area/turbolift/liberty/medbay/ground
	name = "medbay (level one)"
	base_turf = /turf/simulated/floor/plating
	lift_floor_label = "1"
	lift_floor_name = "Medbay - Level One"
	lift_announce_str = "Первый уровень медбэя: Приёмная. Пункт оказания неотложной помощи. Аптека. Операционная."

/area/turbolift/liberty/medbay/top
	name = "medbay (level two)"
	base_turf = /turf/simulated/open
	lift_floor_label = "2"
	lift_floor_name = "Medbay - Level Two"
	lift_announce_str = "Второй уровень медбэя: Палаты. Ординаторская. Главный врач. Склад."

// EAST

/area/turbolift/liberty/east/ground
	name = "east (level zero)"
	base_turf = /turf/simulated/floor/plating
	lift_floor_label = "0"
	lift_floor_name = "Liberty - Level Zero"
	lift_announce_str = "Нулевой уровень Либерти: Инженерный отсек. Складские помещения."

/area/turbolift/liberty/east/one
	name = "east (level one)"
	base_turf = /turf/simulated/open
	lift_floor_label = "1"
	lift_floor_name = "Liberty - Level One"
	lift_announce_str = "Первый уровень Либерти: Пассажирские терминалы 1 и 2. Отель. Торговая зона. Медбэй. Отделение Федеральной полиции."

/area/turbolift/liberty/east/two
	name = "east (level two)"
	base_turf = /turf/simulated/open
	lift_floor_label = "2"
	lift_floor_name = "Liberty - Level Two"
	lift_announce_str = "Второй уровень Либерти: Часовня. Библиотека. Прачечная. Офисные помещения. Конференц-зал."

/area/turbolift/liberty/east/three
	name = "east (level three)"
	base_turf = /turf/simulated/open
	lift_floor_label = "3"
	lift_floor_name = "Liberty - Level Three"
	lift_announce_str = "Третий уровень Либерти: Администрация комлпекса. Голодек."

/area/turbolift/liberty/east/top
	name = "east (level four)"
	base_turf = /turf/simulated/open
	lift_floor_label = "4"
	lift_floor_name = "Liberty - Level Four"
	lift_announce_str = "Четвёртый уровень Либерти: Башня управления."

// NORTH

/area/turbolift/liberty/north/ground
	name = "north (level zero)"
	base_turf = /turf/simulated/floor/plating
	lift_floor_label = "0"
	lift_floor_name = "Liberty - Level Zero"
	lift_announce_str = "Нулевой уровень Либерти: Инженерный отсек. Складские помещения."

/area/turbolift/liberty/north/one
	name = "north (level one)"
	base_turf = /turf/simulated/open
	lift_floor_label = "1"
	lift_floor_name = "Liberty - Level One"
	lift_announce_str = "Первый уровень Либерти: Пассажирские терминалы 1 и 2. Отель. Торговая зона. Медбэй. Отделение Федеральной полиции."

/area/turbolift/liberty/north/two
	name = "north (level two)"
	base_turf = /turf/simulated/open
	lift_floor_label = "2"
	lift_floor_name = "Liberty - Level Two"
	lift_announce_str = "Второй уровень Либерти: Часовня. Библиотека. Прачечная. Офисные помещения. Конференц-зал."

/area/turbolift/liberty/north/top
	name = "north (level three)"
	base_turf = /turf/simulated/open
	lift_floor_label = "3"
	lift_floor_name = "Liberty - Level Three"
	lift_announce_str = "Третий уровень Либерти: Администрация комлпекса. Голодек."

// ENGINEERING

/area/liberty/engineering/engineering_elevator_00
	name = "\improper Engineering - Elevator00"
	icon_state = "eng_elevator_00"

/area/liberty/engineering/engineering_elevator_01
	name = "\improper Engineering - Elevator01"
	icon_state = "eng_elevator_01"

/area/liberty/engineering/engineering_elevator_02
	name = "\improper Engineering - Elevator02"
	icon_state = "eng_elevator_02"
