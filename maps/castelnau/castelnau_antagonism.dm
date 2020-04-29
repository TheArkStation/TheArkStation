//Makes sure we don't get any merchant antags as a balance concern. Can also be used for future castelnau specific antag restrictions.
/datum/antagonist/changeling
	blacklisted_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/warden, /datum/job/officer)

/datum/antagonist/godcultist
	blacklisted_jobs = list(/datum/job/captain, /datum/job/hop)

/datum/antagonist/cultist
	blacklisted_jobs = list(/datum/job/hop)

/datum/antagonist/loyalists
	blacklisted_jobs = list()

/datum/antagonist/revolutionary
	blacklisted_jobs = list()

/datum/antagonist/traitor
	blacklisted_jobs = list(/datum/job/captain, /datum/job/warden, /datum/job/officer)

/datum/antagonist/ert/equip(var/mob/living/carbon/human/player)
	if(!..())
		return 0
	player.char_branch = mil_branches.get_branch("Ship Personnel", "Science Personnel", "Other")
	player.char_rank = mil_branches.get_rank("Civilian", "Mercenary")

	var/decl/hierarchy/outfit/ert_outfit = outfit_by_type((player.mind == leader) ? /decl/hierarchy/outfit/job/castelnau/ert/leader : /decl/hierarchy/outfit/job/castelnau/ert)
	ert_outfit.equip(player)

	return 1
