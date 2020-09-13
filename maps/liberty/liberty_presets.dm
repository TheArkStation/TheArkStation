// SFP tcomms

/obj/machinery/telecomms/server/presets/sfp
	id = "Police Server"
	freq_listening = list(SEC_FREQ)
	channel_tags = list(list(SEC_FREQ, "Security", COLOR_SFP_BLUE))
	autolinkers = list("serverSFP", "broadcasterSFP")
	network = "sfp"

/obj/machinery/telecomms/receiver/preset_sfp
	id = "Police Receiver"
	network = "lucius"
	autolinkers = list("receiverSFP")
	freq_listening = list(SEC_FREQ)

/obj/machinery/telecomms/bus/preset_sfp
	id = "Police Mainframe"
	network = "sfp"
	autolinkers = list("receiverSFP", "processorSFP", "serverSFP")
	freq_listening = list(SEC_FREQ)

/obj/machinery/telecomms/processor/preset_sfp
	id = "Police Processor"
	network = "sfp"
	autolinkers = list("processorSFP")
	freq_listening = list(SEC_FREQ)

/obj/machinery/telecomms/broadcaster/preset_sfp
	id = "Police Broadcaster"
	network = "sfp"
	autolinkers = list("broadcasterSFP")
	freq_listening = list(SEC_FREQ)