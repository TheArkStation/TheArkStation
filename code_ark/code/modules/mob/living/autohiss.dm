///datum/species/resomi
//	autohiss_basic_map = list(
//			"ח" = list("ס"),
//
//			"Ç" = list("Ñ")
//		)
//	autohiss_extra_map = list(
//			"ק" = list("ש"),
//
//			"ז" = list("ר"),
//
//			"×" = list("Ù"),
//
//			"Æ" = list("Ø")
//		)
//	autohiss_exempt = list(LANGUAGE_RESOMI)



/datum/species/unathi
	autohiss_basic_map = list(
			"s" = list("s-s", "ss", "sss"),

			"ס" = list("ס-ס", "סס", "ססס"),

			"x" = list("s-s", "ss", "s", "sss"),
		)
	autohiss_extra_map = list(
			"צ" = list("ס-ס", "ס", "סס", "ססס"),

			"ק" = list("ר-ר", "ר", "רר", "ררר"),

			"ז" = list("ר-ר", "ר", "רר", "ררר"),
		)
	autohiss_exempt = list(
					LANGUAGE_UNATHI_SINTA,
					LANGUAGE_UNATHI_YEOSA
	    )


/datum/species/tajara
	autohiss_basic_map = list(
			"r" = list("rr", "r-r", "rrr"),
			"נ" = list("נ-נ", "ננ", "נננ"),
		)
	autohiss_extra_map = list()
	autohiss_exempt = list(
					LANGUAGE_SIIK_MAAS,
					LANGUAGE_SIIK_TAJR
	    )