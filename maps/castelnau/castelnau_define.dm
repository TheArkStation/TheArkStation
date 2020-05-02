GLOBAL_LIST_INIT(castelnay_command, list("Captain"))
/datum/map/castelnau
	name = "Castelnau"
	full_name = "MOTV Castelnau"
	path = "castelnau"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	load_legacy_saves = TRUE

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels = list(1,2,3)
	admin_levels = list(4,5)
	empty_levels = list(6)
	accessible_z_levels = list("1"=1,"2"=1,"3"=1, "6" = 30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("freemail.castelnau.net",
							 "freemail.net"
							 )

	allowed_spawns = list("Cryogenic Storage", "Prometeus Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "MOTV Castelnau"
	station_short = "Castelnau"
	dock_name     = "TBD"
	boss_name     = "Interstellar Emergency Frequency"
	boss_short    = "Interstellar Emergency Frequency"
	company_name  = "Castelnau Tow. Ltd."
	company_short = "CT"

	map_admin_faxes = list("Interstellar Emergency Frequency")

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/nanotrasen
	use_overmap = 1
	num_exoplanets = 2
	planet_size = list(200,200)

	away_site_budget = 4
	id_hud_icons = 'maps/castelnau/icons/assignment_hud.dmi'

	starting_money = 30000

/datum/map/castelnau/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/castelnau/get_map_info()
	. = list()
	. +=  "Вы находитесь на борту <b>[station_name]</b>, мультизадачного орбитального буксира класса Таурус. Между капитаном этого судна и независимой группой учёных был заключён контракт о буксировке и обеспечении научного шаттла Прометей с целью исследования последними глубокого космоса в своих интересах."
	. +=  "Охрана судна укомплектована как сотрудниками, нанятыми капитаном лично, так и служащими частных военных компаний."
	. +=  "Особый дресс-код на борту отсутствует. В целом, экипаж волен носить ту одежду, что ему нравится. Не забудьте выбрать свой стиль перед входом в игру."
	return jointext(., "<br>")

/*/datum/map/castelnau/map_info(victim)
	to_chat(victim, "<h2>Информация о карте</h2>")
	to_chat(victim, "Вы находитесь на борту <b>[station_name]</b>, мультизадачного орбитального буксира класса Таурус. Между капитаном этого судна и независимой группой учённых был заключён контракт о буксировке и обеспечении научного шаттла Прометей с целью исследования последними глубокого космоса в своих интересах.")
	to_chat(victim, "Охрана судна укомплектована как сотрудниками, нанятыми капитаном лично, так и служащими частных военных компаний.")
	to_chat(victim, "Техническая информация: если у вас не играет музыка от инструментов и проигрывателей, то вам стоит откатить версию бьенда с самой последней до 1456.") */

/datum/map/castelnau/send_welcome()
	var/welcome_text = "<center><br /><font size = 3><b>MSM Prometeus</b> Показания Сенсоров:</font><hr />"
	welcome_text += "Отчет сгенерирован [stationdate2text()] в [stationtime2text()]</center><br /><br />"
	welcome_text += "Текущая система: <b>[system_name()]</b><br />"
	welcome_text += "Следующая система для прыжка: <b>[generate_system_name()]</b><br />"
	welcome_text += "Дней до ближайшей обитаемой системы: <b>[rand(1,5)]</b><br />"
	welcome_text += "Дней с последнего визита в порт: <b>[rand(30,90)]</b><br />"
	welcome_text += "Результаты сканирования показали следующие потенциальные объекты для исследования:<br />"
	var/list/space_things = list()
	var/obj/effect/overmap/visitable/castelnau = map_sectors["1"]
	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
		if(O.name == castelnau.name)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/visitable/O in space_things)
		var/location_desc = " на текущем квадрате."
		if(O.loc != castelnau.loc)
			var/bearing = round(90 - Atan2(O.x - castelnau.x, O.y - castelnau.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", по азимуту [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Обнаружены сигналы бедствия:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>Сигналов бедствия не обнаружено.<br />"
	welcome_text += "<hr>"

	post_comm_message("MSM Prometeus Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")
