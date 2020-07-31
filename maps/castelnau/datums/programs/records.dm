/datum/nano_module/records/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = 1, state = GLOB.default_state)
	var/list/data = host.initial_data()
	var/list/user_access = get_record_access(user)

	data["message"] = message
	if(active_record)
		user << browse_rsc(active_record.photo_front, "front_[active_record.uid].png")
		user << browse_rsc(active_record.photo_side, "side_[active_record.uid].png")
		data["pic_edit"] = check_access(user, access_castelnau_bridge) || check_access(user, access_castelnau_security)
		data += active_record.generate_nano_data(user_access)
	else
		var/list/all_records = list()

		for(var/datum/computer_file/report/crew_record/R in GLOB.all_crew_records)
			all_records.Add(list(list(
				"name" = R.get_name(),
				"rank" = R.get_job(),
				"milrank" = R.get_rank(),
				"id" = R.uid
			)))
		data["all_records"] = all_records
		data["creation"] = check_access(user, access_castelnau_bridge)
		data["dnasearch"] = check_access(user, access_castelnau_medical) || check_access(user, access_castelnau_security)
		data["fingersearch"] = check_access(user, access_castelnau_security)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "crew_records.tmpl", name, 700, 540, state = state)
		ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()

/datum/nano_module/records/Topic(href, href_list)
	if(..())
		return 1
	if(href_list["clear_active"])
		active_record = null
		return 1
	if(href_list["clear_message"])
		message = null
		return 1
	if(href_list["set_active"])
		var/ID = text2num(href_list["set_active"])
		for(var/datum/computer_file/report/crew_record/R in GLOB.all_crew_records)
			if(R.uid == ID)
				active_record = R
				break
		return 1
	if(href_list["new_record"])
		if(!check_access(usr, access_castelnau_bridge))
			to_chat(usr, "Access Denied.")
			return
		active_record = new/datum/computer_file/report/crew_record()
		GLOB.all_crew_records.Add(active_record)
		return 1
	if(href_list["print_active"])
		if(!active_record)
			return
		print_text(record_to_html(active_record, get_record_access(usr)), usr)
		return 1
	if(href_list["search"])
		var/field_name = href_list["search"]
		var/search = sanitize(input("Enter the value for search for.") as null|text)
		if(!search)
			return
		for(var/datum/computer_file/report/crew_record/R in GLOB.all_crew_records)
			var/datum/report_field/field = R.field_from_name(field_name)
			if(findtext(lowertext(field.get_value()), lowertext(search)))
				active_record = R
				return 1
		message = "Unable to find record containing '[search]'"
		return 1
