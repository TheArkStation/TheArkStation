/datum/controller/transfer_controller/Process()
	if (time_till_transfer_vote() <= 0)
		SSvote.initiate_vote(/datum/vote/end_game, automatic = 1)
		timerbuffer += config.vote_autotransfer_interval

/datum/vote/end_game
	name = "end game"
	question = "End the game?"

/datum/vote/end_game/can_run(mob/creator, automatic)
	if( !(automatic || config.allow_vote_restart || is_admin(creator)))
		return FALSE // Admins and autovotes bypass the config setting.
	var/decl/security_state/security_state = decls_repository.get_decl(GLOB.using_map.security_state)
	if (!automatic && security_state.current_security_level_is_same_or_higher_than(security_state.high_security_level))
		to_chat(creator, "The current alert status is too high to call for a game!")
		return FALSE
	if(GAME_STATE <= RUNLEVEL_SETUP)
		to_chat(creator, "The end game button has been disabled!")
		return FALSE
	return TRUE

/datum/vote/end_game/setup_vote(mob/creator, automatic)
	choices = list("End game", "Extend the Round ([config.vote_autotransfer_interval / 600] minutes)")
	if (config.allow_extra_antags && SSvote.is_addantag_allowed(creator, automatic))
		choices += "Add Antagonist"
	..()

/datum/vote/end_game/handle_default_votes()
	if(config.vote_no_default)
		return
	var/factor = 0.5
	switch(world.time / (1 MINUTE))
		if(0 to 60)
			factor = 0.5
		if(61 to 120)
			factor = 0.8
		if(121 to 240)
			factor = 1
		if(241 to 300)
			factor = 1.2
		else
			factor = 1.4
	choices["End game"] = round(choices["End game"] * factor)
	to_world("<font color='purple'>End game Factor: [factor]</font>")

/datum/vote/end_game/report_result()
	if(..())
		return 1
	if(result[1] == "End game")
		evacuation_controller.state = 5
	else if(result[1] == "Add Antagonist")
		SSvote.queued_auto_vote = /datum/vote/add_antagonist

/datum/vote/end_game/mob_not_participating(mob/user)
	if((. = ..()))
		return
	if(config.vote_no_dead_crew_transfer)
		return !isliving(user) || ismouse(user) || is_drone(user)

/datum/vote/end_game/check_toggle()
	return config.allow_vote_restart ? "Allowed" : "Disallowed"

/datum/vote/end_game/toggle(mob/user)
	if(is_admin(user))
		config.allow_vote_restart = !config.allow_vote_restart
