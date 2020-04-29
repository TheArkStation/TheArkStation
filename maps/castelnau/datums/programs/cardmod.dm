/datum/computer_file/program/card_mod
	nanomodule_path = /datum/nano_module/program/card_mod/cast

/datum/nano_module/program/card_mod/cast/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	var/list/data = host.initial_data()
	var/obj/item/weapon/stock_parts/computer/card_slot/card_slot = program.computer.get_component(PART_CARD)

	data["src"] = "\ref[src]"
	data["station_name"] = station_name()
	data["manifest"] = html_crew_manifest()
	data["assignments"] = show_assignments
	data["have_id_slot"] = !!card_slot
	data["have_printer"] = program.computer.has_component(PART_PRINTER)
	data["authenticated"] = program.can_run(user)
	if(!data["have_id_slot"] || !data["have_printer"])
		mod_mode = 0 //We can't modify IDs when there is no card reader
	else
		data["have_id_slot"] = 0
		data["have_printer"] = 0
		data["authenticated"] = 0
	data["mmode"] = mod_mode
	data["centcom_access"] = is_centcom

	if(card_slot)
		var/obj/item/weapon/card/id/id_card = card_slot.stored_card
		data["has_id"] = !!id_card
		data["id_account_number"] = id_card ? id_card.associated_account_number : null
		data["id_email_login"] = id_card ? id_card.associated_email_login["login"] : null
		data["id_email_password"] = id_card ? stars(id_card.associated_email_login["password"], 0) : null
		data["id_rank"] = id_card && id_card.assignment ? id_card.assignment : "Unassigned"
		data["id_owner"] = id_card && id_card.registered_name ? id_card.registered_name : "-----"
		data["id_name"] = id_card ? id_card.name : "-----"

	data["command_jobs"] = format_jobs(SSjobs.titles_by_department(COM))
	data["engineering_jobs"] = format_jobs(SSjobs.titles_by_department(ENG))
	data["medical_jobs"] = format_jobs(SSjobs.titles_by_department(MED))
	data["science_jobs"] = format_jobs(SSjobs.titles_by_department(SCI))
	data["security_jobs"] = format_jobs(SSjobs.titles_by_department(SEC))
	data["service_jobs"] = format_jobs(SSjobs.titles_by_department(SRV))
	data["supply_jobs"] = format_jobs(SSjobs.titles_by_department(SUP))
	data["civilian_jobs"] = format_jobs(SSjobs.titles_by_department(CIV))
	data["centcom_jobs"] = format_jobs(get_all_centcom_jobs())

	data["all_centcom_access"] = is_centcom ? get_accesses(1) : null
	data["regions"] = get_accesses()

	if(card_slot?.stored_card)
		var/obj/item/weapon/card/id/id_card = card_slot.stored_card
		if(is_centcom)
			var/list/all_centcom_access = list()
			for(var/access in get_all_centcom_access())
				all_centcom_access.Add(list(list(
					"desc" = replacetext(get_centcom_access_desc(access), " ", "&nbsp"),
					"ref" = access,
					"allowed" = (access in id_card.access) ? 1 : 0)))
			data["all_centcom_access"] = all_centcom_access
		else
			var/list/regions = list()
			var/list/all_castel_acc_types = typesof(/datum/access/castelnau)
			all_castel_acc_types -= /datum/access/castelnau
			var/list/valid_ids = list()
			for (var/acc in all_castel_acc_types)
				var/datum/access/castelnau/ac = new acc
				valid_ids += ac.id
				qdel(acc)
			for(var/i = 1; i <= 8; i++)
				var/list/accesses = list()
				for(var/access in get_region_accesses(i))
					if (access && (access in valid_ids))
						accesses.Add(list(list(
							"desc" = replacetext(replacetext(get_access_desc(access), " ", "&nbsp"), "Castelnau", ""),
							"ref" = access,
							"allowed" = (access in id_card.access) ? 1 : 0 )))
				if (accesses.len > 0)
					regions.Add(list(list(
						"name" = get_region_accesses_name(i),
						"accesses" = accesses)))
			data["regions"] = regions

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "castl_cardmod.tmpl", name, 600, 700, state = state)
		ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()

/datum/computer_file/program/card_mod/authorized(var/obj/item/weapon/card/id/id_card)
	return id_card && (access_castelnau_idmod in id_card.access)
