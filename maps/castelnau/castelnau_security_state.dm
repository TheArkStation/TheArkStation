/datum/map/castelnau // setting the map to use this list
	security_state = /decl/security_state/default/castelnaudept

//castelnau map alert levels. Refer to security_state.dm.
/decl/security_state/default/castelnaudept
	all_security_levels = list(/decl/security_level/default/castelnaudept/code_green, /decl/security_level/default/castelnaudept/code_violet, /decl/security_level/default/castelnaudept/code_orange, /decl/security_level/default/castelnaudept/code_blue, /decl/security_level/default/castelnaudept/code_red, /decl/security_level/default/code_delta)

/decl/security_level/default/castelnaudept
	icon = 'maps/castelnau/icons/security_state.dmi'

/decl/security_level/default/castelnaudept/code_green
	name = "code green"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.25
	light_inner_range = 0.1
	light_outer_range = 1
	light_color_alarm = COLOR_GREEN
	light_color_status_display = COLOR_GREEN

	overlay_alarm = "alarm_green"
	overlay_status_display = "status_display_green"

	var/static/datum/announcement/priority/security/security_announcement_green = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/notice2.ogg'))

/decl/security_level/default/castelnaudept/code_green/switching_down_to()
	security_announcement_green.Announce("Ситуация была разрешена. Персоналу разрешается вернуться к исполнению своих обязанностей.", "Внимание, уровень тревоги был снижен до зелёного.")
	notify_station()

/decl/security_level/default/castelnaudept/code_violet
	name = "code violet"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_VIOLET
	light_color_status_display = COLOR_VIOLET

	overlay_alarm = "alarm_violet"
	overlay_status_display = "status_display_violet"

	up_description = "Сложилась чрезвычайная ситуация медицинского характера. Медицинскому персоналу немедленно обратиться за инструкциями к управлению судна. Всем остальным следует подчиняться всем соответствующим указаниям медицинского персонала."
	down_description = "Код тревоги изменён на оранжевый; Медицинскому персоналу немедленно обратиться за инструкциями к управлению судна. Всему остальному персоналу следует подчиняться всем соответствующим указаниям медицинского персонала."

/decl/security_level/default/castelnaudept/code_orange
	name = "code orange"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_ORANGE
	light_color_status_display = COLOR_ORANGE
	overlay_alarm = "alarm_orange"
	overlay_status_display = "status_display_orange"

	up_description = "Сложилась чрезвычайная ситуация технического характера. Инженерному персоналу немедленно обратиться за инструкциями к управлению судна. Всем остальным следует срочно эвакуироваться из затронутых зон и подчиняться всем соответствующим указаниям инженерного персонала."
	down_description = "Код тревоги изменён на оранжевый. Инженерному персоналу немедленно обратиться за инструкциями к управлению судна. Всем остальным следует срочно эвакуироваться из затронутых зон и подчиняться всем соответствующим указаниям инженерного персонала."


/decl/security_level/default/castelnaudept/code_blue
	name = "code blue"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_BLUE
	light_color_status_display = COLOR_BLUE
	overlay_alarm = "alarm_blue"
	overlay_status_display = "status_display_blue"

	up_description = "Сложилась опасная ситуация, затрагивающая безопасность судна. Охранному персоналу немедленно обратиться за инструкциями к управлению судна."
	down_description = "Код тревоги изменён на синий. Охранному персоналу немедленно обратиться за инструкциями к управлению судна."

/decl/security_level/default/castelnaudept/code_red
	name = "code red"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.75
	light_inner_range = 1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_RED
	overlay_alarm = "alarm_red"
	overlay_status_display = "status_display_red"

	var/static/datum/announcement/priority/security/security_announcement_red = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/redalert1.ogg'))

/decl/security_level/default/castelnaudept/code_red/switching_up_to()
	security_announcement_red.Announce("Имеет место крайняя опасность судну. Всему персоналу ожидать инструкций и исполнять команды бесприкословно.", "Код тревоги изменён на красный.")
	notify_station()
	GLOB.using_map.unbolt_saferooms()

/decl/security_level/default/castelnaudept/code_red/switching_down_to()
	security_announcement_red.Announce("The self-destruct mechanism has been deactivated. All staff are to report to their supervisor for orders. All crew should obey orders from relevant emergency personnel. Security personnel are permitted to search staff and facilities, and may have weapons unholstered at any time.", "Attention! Code red alert procedures now in effect!")
	notify_station()