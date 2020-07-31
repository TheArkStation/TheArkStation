var/const/NETWORK_SHUTTLES    = "Shuttles"
var/const/NETWORK_FIRST_DECK  = "First Deck"
var/const/NETWORK_SECOND_DECK = "Second Deck"
var/const/NETWORK_THIRD_DECK  = "Third Deck"
var/const/NETWORK_SUPPLY      = "Supply"
var/const/NETWORK_HANGAR      = "Hangar"
var/const/NETWORK_PROMETEUS   = "Prometeus"

/datum/map/castelnau/get_network_access(var/network)
	/*switch(network)
		if(NETWORK_SHUTTLES)
			return access
		if(NETWORK_SUPPLY)
			return
		if(NETWORK_HANGAR)
			return
		if(NETWORK_PROMETEUS)
			return
	return get_shared_network_access(network) || ..()*/

/datum/map/castelnau
	// Networks that will show up as options in the camera monitor program
	station_networks = list(
		NETWORK_ROBOTS,
		NETWORK_FIRST_DECK,
		NETWORK_SECOND_DECK,
		NETWORK_THIRD_DECK,
		NETWORK_COMMAND,
		NETWORK_ENGINEERING,
		NETWORK_ENGINE,
		NETWORK_MEDICAL,
		NETWORK_RESEARCH,
		NETWORK_SECURITY,
		NETWORK_SUPPLY,
		NETWORK_HANGAR,
		NETWORK_SHUTTLES,
		NETWORK_PROMETEUS,
		NETWORK_ALARM_ATMOS,
		NETWORK_ALARM_CAMERA,
		NETWORK_ALARM_FIRE,
		NETWORK_ALARM_MOTION,
		NETWORK_ALARM_POWER,
		NETWORK_THUNDER,
	)

//
// Cameras
//

// Networks

/obj/machinery/camera/network/shuttle
	network = list(NETWORK_SHUTTLES)

/obj/machinery/camera/network/first_deck
	network = list(NETWORK_FIRST_DECK)

/obj/machinery/camera/network/second_deck
	network = list(NETWORK_SECOND_DECK)

/obj/machinery/camera/network/third_deck
	network = list(NETWORK_THIRD_DECK)

/obj/machinery/camera/network/prometeus
	network = list(NETWORK_PROMETEUS)

/obj/machinery/camera/network/supply
	network = list(NETWORK_SUPPLY)

/obj/machinery/camera/network/hangar
	network = list(NETWORK_HANGAR)

/obj/machinery/camera/network/command
	network = list(NETWORK_COMMAND)

/obj/machinery/camera/network/crescent
	network = list(NETWORK_CRESCENT)

/obj/machinery/camera/network/engine
	network = list(NETWORK_ENGINE)

/obj/machinery/camera/network/engineering_outpost
	network = list(NETWORK_ENGINEERING_OUTPOST)

// Motion
/obj/machinery/camera/motion/engineering_outpost
	network = list(NETWORK_ENGINEERING_OUTPOST)

// All Upgrades
/obj/machinery/camera/all/command
	network = list(NETWORK_COMMAND)

//
// T-Coms
//

/obj/machinery/telecomms/receiver/preset_prometeus
	id = "Prometeus Receiver"
	network = "prometeus"
	autolinkers = list("receiverPrometeus")
	freq_listening = list(SCI_FREQ)

/obj/machinery/telecomms/bus/preset_prometeus
	id = "Prometeus Mainframe"
	network = "prometeus"
	autolinkers = list("receiverPrometeus", "processorPrometeus", "sciencePrometeus")
	freq_listening = list(SCI_FREQ)

/obj/machinery/telecomms/processor/preset_prometeus
	id = "Prometeus Processor"
	network = "prometeus"
	autolinkers = list("processorPrometeus")
	freq_listening = list(SCI_FREQ)

/obj/machinery/telecomms/server/presets/science_prometeus
	id = "Prometeus Science Server"
	network = "prometeus"
	freq_listening = list(SCI_FREQ)
	channel_tags = list(list(SCI_FREQ, "Science", COMMS_COLOR_SCIENCE))
	autolinkers = list("sciencePrometeus", "broadcasterPrometeus")

/obj/machinery/telecomms/broadcaster/preset_prometeus
	id = "Prometeus Broadcaster"
	network = "prometeus"
	autolinkers = list("broadcasterPrometeus")
	freq_listening = list(SCI_FREQ)


//
// SMES units
//

// Substation SMES
/obj/machinery/power/smes/buildable/preset/castelnau/substation
	uncreated_component_parts = list(/obj/item/weapon/stock_parts/smes_coil = 1) // Note that it gets one more from construction
	_input_maxed = TRUE
	_output_maxed = TRUE

// Substation SMES (charged and with full I/O setting)
/obj/machinery/power/smes/buildable/preset/castelnau/substation_full
	uncreated_component_parts = list(/obj/item/weapon/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Main Engine output SMES
/obj/machinery/power/smes/buildable/preset/castelnau/engine_main
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2,
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Shuttle SMES
/obj/machinery/power/smes/buildable/preset/castelnau/shuttle
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Hangar SMES. Charges the shuttles so needs a pretty big throughput.
/obj/machinery/power/smes/buildable/preset/castelnau/hangar
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

var/const/NETWORK_COMMAND = "Command"
var/const/NETWORK_ENGINE  = "Engine"
var/const/NETWORK_ENGINEERING_OUTPOST = "Engineering Outpost"

/datum/map/proc/get_shared_network_access(var/network)
	switch(network)
		if(NETWORK_COMMAND)
			return access_heads
		if(NETWORK_ENGINE, NETWORK_ENGINEERING_OUTPOST)
			return access_engine

/datum/map/castelnau/default_internal_channels()
	return list(
		num2text(PUB_FREQ)   = list(),
		num2text(AI_FREQ)    = list(access_synth),
		num2text(ENT_FREQ)   = list(),
		num2text(ERT_FREQ)   = list(access_cent_specops),
		num2text(COMM_FREQ)  = list(access_castelnau_command),
		num2text(ENG_FREQ)   = list(access_castelnau_engineering),
		num2text(MED_FREQ)   = list(access_castelnau_medical),
		num2text(MED_I_FREQ) = list(access_castelnau_medical),
		num2text(SEC_FREQ)   = list(access_castelnau_security),
		num2text(SEC_I_FREQ) = list(access_castelnau_security),
		num2text(SCI_FREQ)   = list(access_castelnau_prometeus),
		num2text(SUP_FREQ)   = list(access_castelnau_supply),
		num2text(SRV_FREQ)   = list(list(access_castelnau_janitor, access_castelnau_bar, access_castelnau_kitchen)),
		num2text(EXP_FREQ)   = list() //DEBUG
	)

/obj/machinery/shield_diffuser/preset/castelnau
	enabled = 0
	icon_state = "fdiffuser_off"

/obj/machinery/door/airlock/glass/research
	stripe_color = COLOR_NT_RED

/obj/machinery/door/airlock/research
	stripe_color = COLOR_NT_RED

/obj/machinery/door/airlock/multi_tile/research
	stripe_color = COLOR_NT_RED
