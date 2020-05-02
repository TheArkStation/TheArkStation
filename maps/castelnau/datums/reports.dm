//Report datums for use with the report editor and other programs.
/*
/datum/computer_file/report/recipient/crew_transfer
	form_name = "CTA-NTF-01"
	title = "пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/crew_transfer/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ - пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ (пїЅпїЅ)")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ (пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ)", required = 1)
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ СЏпїЅпїЅСЏпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅСЏ")
	hop_fields += add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/access_modification
	form_name = "AMA-NTF-02"
	title = "пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/access_modification/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ - пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ (пїЅпїЅ)")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ (пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ)", required = 1)
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅСЏ")
	hop_fields += add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	for(var/datum/report_field/field in hop_fields)
		field.set_access()

/datum/computer_file/report/recipient/borging
	form_name = "CC-NTF-09"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/borging/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ - пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ (пїЅпїЅ)")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ (пїЅпїЅпїЅпїЅпїЅпїЅпїЅ)", required = 1)
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/instruction, "пїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ, пїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅ пїЅ пїЅпїЅ. пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ. пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ NanoTrasen пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	hop_fields += add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	for(var/datum/report_field/field in hop_fields)
		field.set_access()

/datum/computer_file/report/recipient/sec
	logo = "\[logo\]"

/datum/computer_file/report/recipient/sec/New()
	..()

/datum/computer_file/report/recipient/sec/investigation
	form_name = "NT-SEC-43"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/investigation/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ.")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ")
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/sec/incident
	form_name = "NT-SEC-12"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/incident/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ. пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ!")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ/пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅ(пїЅ), пїЅпїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "Location")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ", "\[small\]\[i\](пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ, пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ/пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ", "\[small\]\[i\](пїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅ, пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/sec/evidence
	form_name = "NT-SEC-02b"
	title = "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/evidence/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅСЏпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

//Supply and Exploration; these are not shown in deck manager.

/datum/computer_file/report/recipient/docked
	logo = "\[logo\]"
	form_name = "NT-SUP-12"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()

/datum/computer_file/report/recipient/docked/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅ/пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅ пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/fauna
	logo = "\[logo\]"
	form_name = "NT-EXP-19f"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()

/datum/computer_file/report/recipient/fauna/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ/пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ/пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/instruction, "пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ, пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏпїЅ.")

//NT reports, mostly for liason but can be used by any NT personnel.

/datum/computer_file/report/recipient/nt
	logo = "\[logo\]"

/datum/computer_file/report/recipient/nt/proc/add_header()
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅ", "пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/anomaly
	form_name = "NT-1546"
	title = "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/anomaly/New()
	..()

/datum/computer_file/report/recipient/nt/anomaly/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/fire
	form_name = "NT-0102"
	title = "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NT"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/fire/New()
	..()

/datum/computer_file/report/recipient/nt/fire/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ")
	add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ.")

/datum/computer_file/report/recipient/nt/incident/New()
	..()

/datum/computer_file/report/recipient/nt/incident/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/incident/proc/add_signatures()
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/incident/ship
	form_name = "NT-3203"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/ship/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_signatures()


/datum/computer_file/report/recipient/nt/incident/personnel
	form_name = "NT-3205"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/personnel/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/asset
	form_name = "NT-3201"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/asset/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/xeno
	form_name = "NT-3213"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/xeno/generate_fields()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ NT-3213A.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅ-пїЅпїЅпїЅпїЅ")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/xeno_no_visa/
	form_name = "NT-3213A"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen: пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/xeno_no_visa/generate_fields()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NT-3213.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅ-пїЅпїЅпїЅпїЅ")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/synth
	form_name = "NT-3213X"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/synth/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/crew
	form_name = "NT-3241"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/crew/generate_fields()
	add_field(/datum/report_field/instruction, "пїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅСЏ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_signatures()

/datum/computer_file/report/recipient/nt/volunteer
	form_name = "NT-1443"
	title = "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ-пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/volunteer/generate_fields()
	..()
	var/list/temp_fields = list()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ: (пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ)")
	add_field(/datum/report_field/people/list_from_manifest, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅ, \"пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ\" пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen пїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅСЏ, пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ. пїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen, пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ. пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	temp_fields += add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ NanoTrasen")
	temp_fields += add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/deny
	form_name = "NT-1443D"
	title = "Rejection of Test Subject Volunteer Notice"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/deny/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ, пїЅпїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ NanoTrasen пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ. пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ. пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅСЏ. пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ,")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ NanoTrasen")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/memo/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/memo/internal
	form_name = "NT-0003"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

//No access restrictions for easier use.
/datum/computer_file/report/recipient/nt/sales
	form_name = "NT-2192"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/sales/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ (пїЅ)")
	add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/number, "пїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ (пїЅ)")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ (пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ). пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅ пїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅСЏпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅСЏ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/payout
	form_name = "NT-3310"
	title = "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/payout/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "пїЅпїЅпїЅпїЅпїЅСЏпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ,")
	add_field(/datum/report_field/pencode_text, "пїЅ пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ: (пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ, пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ),")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅСЏ пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/instruction, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ.")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/audit
	form_name = "NT-IAA-12"
	title = "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅ"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/audit/generate_fields()
	add_field(/datum/report_field/date, "пїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/time, "пїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/simple_text, "пїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅСЏ")
	add_field(/datum/report_field/pencode_text, "пїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/signature, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅ")
	add_field(/datum/report_field/options/yes_no, "пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ")

/datum/computer_file/report/recipient/nt/anomaly/New()
	..()
*/
