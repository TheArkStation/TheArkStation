GLOBAL_LIST_EMPTY(trapSpecies)
#define CREATETRAP(PATH, ICOBASE, PREVIEW_ICON) \
/datum/species/##PATH/trap/New(){ \
	name += " (Female)"; \
	spawn_flags &= ~SPECIES_CAN_JOIN; \
	spawn_flags |= SPECIES_IS_RESTRICTED; \
	icobase = ##ICOBASE; \
	preview_icon = ##PREVIEW_ICON; \
	genders = list(FEMALE); \
	GLOB.trapSpecies += name; \
	. = ..(); \
}

CREATETRAP(human, 'code_ark/icons/mob/human_races/species/human/human_body.dmi', 'code_ark/icons/mob/human_races/species/human/human_preview.dmi')
CREATETRAP(human/vatgrown, 'code_ark/icons/mob/human_races/species/human/vatgrown_body.dmi', 'code_ark/icons/mob/human_races/species/human/vatgrown_preview.dmi')

#undef CREATETRAP
