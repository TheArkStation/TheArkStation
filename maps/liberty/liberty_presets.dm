///////////////////////////////////////////////
///////////////// Main tcomms /////////////////
///////////////////////////////////////////////

// Servers

/obj/machinery/telecomms/server/presets/liberty
	network = "tcomms"

/obj/machinery/telecomms/server/presets/liberty/admin
	id = "Administration Server"
	freq_listening = list(COMM_FREQ)
	channel_tags = list(list(COMM_FREQ, "Administration", COMMS_COLOR_COMMAND))
	autolinkers = list("administration")

/obj/machinery/telecomms/server/presets/liberty/engineering
	id = "Engineering Server"
	freq_listening = list(ENG_FREQ)
	channel_tags = list(list(ENG_FREQ, "Engineering", COMMS_COLOR_ENGINEER))
	autolinkers = list("engineering")
	network = "tcomms"

/obj/machinery/telecomms/server/presets/liberty/medical
	id = "Medical Server"
	freq_listening = list(MED_FREQ)
	channel_tags = list(list(MED_FREQ, "Medical", COMMS_COLOR_MEDICAL))
	autolinkers = list("medical")
	network = "tcomms"

/obj/machinery/telecomms/server/presets/liberty/harbor
	id = "Harbor Services Server"
	freq_listening = list(SUP_FREQ)
	channel_tags = list(list(SUP_FREQ, "Harbor", COMMS_COLOR_SUPPLY))
	autolinkers = list("harbor")
	network = "tcomms"

/obj/machinery/telecomms/server/presets/liberty/service
	id = "Service Server"
	freq_listening = list(SRV_FREQ)
	channel_tags = list(list(SRV_FREQ, "Harbor", COMMS_COLOR_SUPPLY))
	autolinkers = list("harbor")
	network = "tcomms"

/obj/machinery/telecomms/server/presets/liberty/unused
	id = "Unused Server"
	freq_listening = list()
	autolinkers = list("unused")

// Receivers

/obj/machinery/telecomms/receiver/liberty
	network = "tcomms"

/obj/machinery/telecomms/receiver/liberty/preset_one
	id = "Receiver One"
	autolinkers = list("receiver_one")
	freq_listening = list(COMM_FREQ, SUP_FREQ, SRV_FREQ)

/obj/machinery/telecomms/receiver/liberty/preset_two
	id = "Receiver Two"
	autolinkers = list("receiver_two")
	freq_listening = list(ENG_FREQ, MED_FREQ)

// Broadcasters

/obj/machinery/telecomms/broadcaster/liberty
	network = "tcomms"

/obj/machinery/telecomms/broadcaster/liberty/preset_one
	id = "Broadcaster One"
	autolinkers = list("broadcaster_one")
	freq_listening = list(COMM_FREQ, SUP_FREQ, SRV_FREQ)

/obj/machinery/telecomms/broadcaster/liberty/preset_two
	id = "Broadcaster Two"
	autolinkers = list("broadcaster_two")
	freq_listening = list(ENG_FREQ, MED_FREQ)

// Buses

/obj/machinery/telecomms/bus/liberty
	network = "tcomms"

/obj/machinery/telecomms/bus/liberty/preset_one
	id = "Bus One"
	freq_listening = list(COMM_FREQ, SUP_FREQ, SRV_FREQ)
	autolinkers = list("processor_one", "command", "harbor", "service")

/obj/machinery/telecomms/bus/liberty/preset_two
	id = "Bus Two"
	freq_listening = list(ENG_FREQ, MED_FREQ)
	autolinkers = list("processor_two", "engineering", "medical", "unused")

// Processors

//////////////////////////////////////////////
///////////////// SFP tcomms /////////////////
//////////////////////////////////////////////

/obj/machinery/telecomms/server/presets/liberty/sfp
	id = "Police Server"
	freq_listening = list(SEC_FREQ)
	channel_tags = list(list(SEC_FREQ, "Security", COLOR_SFP_BLUE))
	autolinkers = list("serverSFP", "broadcasterSFP")
	network = "sfp"

/obj/machinery/telecomms/receiver/liberty/preset_sfp
	id = "Police Receiver"
	network = "lucius"
	autolinkers = list("receiverSFP")
	freq_listening = list(SEC_FREQ)

/obj/machinery/telecomms/bus/liberty/preset_sfp
	id = "Police Mainframe"
	network = "sfp"
	autolinkers = list("receiverSFP", "processorSFP", "serverSFP")
	freq_listening = list(SEC_FREQ)

/obj/machinery/telecomms/processor/liberty/preset_sfp
	id = "Police Processor"
	network = "sfp"
	autolinkers = list("processorSFP")
	freq_listening = list(SEC_FREQ)

/obj/machinery/telecomms/broadcaster/liberty/preset_sfp
	id = "Police Broadcaster"
	network = "sfp"
	autolinkers = list("broadcasterSFP")
	freq_listening = list(SEC_FREQ)