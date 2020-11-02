/obj/machinery/media/mixing_console
	name = "mixing console"
	desc = "It's an advanced accoustic system control panel. It's connected to loudspeakers to cover a larger area. Along with some default tracks stored, it has access to a global music database."
	icon = 'code_ark/icons/obj/machinery.dmi'
	icon_state = "mixing_base"
	anchored = 1
	power_channel = EQUIP
	idle_power_usage = 10
	active_power_usage = 100
	clicksound = 'sound/machines/buttonbeep.ogg'

	var/playing = 0
	var/volume = 20

	var/sound_id
	var/datum/sound_token/sound_token

	var/datum/track/current_track
	var/list/datum/track/tracks

	var/list/obj/machinery/media/speaker/speakers

/obj/machinery/media/speaker
	name = "loudspeaker"
	desc = "It's a relatively powerful loudspeaker connected to a mixing console to provide the joy of music."
	icon = 'code_ark/icons/obj/machinery.dmi'
	icon_state = "speaker"
	idle_power_usage = 10
	active_power_usage = 200
	var/playing = 0
	var/volume = 20

	var/sound_id
	var/datum/sound_token/sound_token

	var/obj/machinery/media/mixing_console/master

/obj/machinery/media/mixing_console/Initialize()
	. = ..()
	sound_id = "[type]_[sequential_id(type)]"
	tracks = setup_music_tracks(tracks)
	return INITIALIZE_HINT_LATELOAD

/obj/machinery/media/mixing_console/LateInitialize()
	. = ..()
	tracks = setup_music_tracks(tracks)
	for (var/obj/machinery/media/speaker/S in world)
		if(S.id_tag == id_tag)
			speakers += S
			S.master = src

/obj/machinery/media/speaker/Initialize()
	. = ..()
	sound_id = "[type]_[sequential_id(type)]"

/obj/machinery/media/mixing_console/Destroy()
	StopPlaying()
	QDEL_NULL_LIST(tracks)
	current_track = null
	. = ..()

/obj/machinery/media/speaker/Destroy()
	StopPlaying()
	. = ..()

/obj/machinery/media/mixing_console/power_change()
	. = ..()
	if(stat & (NOPOWER|BROKEN) && playing)
		StopPlaying()
		for (var/obj/machinery/media/speaker/S in speakers)
			S.StopPlaying()

/obj/machinery/media/speaker/power_change()
	. = ..()
	if(stat & (NOPOWER|BROKEN) && playing)
		StopPlaying()

/obj/machinery/media/mixing_console/proc/StopPlaying()
	playing = 0
	update_use_power(POWER_USE_IDLE)
	update_icon()
	QDEL_NULL(sound_token)

/obj/machinery/media/speaker/proc/StopPlaying()
	playing = 0
	update_use_power(POWER_USE_IDLE)
	update_icon()
	QDEL_NULL(sound_token)

/obj/machinery/media/mixing_console/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	var/list/mixer_tracks = new
	for(var/datum/track/T in tracks)
		mixer_tracks.Add(list(list("track"=T.title)))

	var/list/data = list(
		"current_track" = current_track != null ? current_track.title : "No track selected",
		"playing" = playing,
		"tracks" = mixer_tracks,
		"volume" = volume
	)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "mixing_console.tmpl", "Mixer Console", 340, 440)
		ui.set_initial_data(data)
		ui.open()
