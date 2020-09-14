/obj/structure/lift/panel
	var/datum/sound_token/sound_token
	var/sound_id

/obj/structure/lift/panel/Initialize()
	. = ..()
	sound_id = "[type]_[sequential_id(type)]"
	sound_token = GLOB.sound_player.PlayLoopingSound(src, sound_id, 'sound/music/elevatormusic.ogg', volume = 20, range = 3, falloff = 2, prefer_mute = TRUE)

/obj/structure/lift/panel/Destroy()
	. = ..()
	QDEL_NULL(sound_token)
