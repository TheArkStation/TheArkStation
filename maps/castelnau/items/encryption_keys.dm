/obj/item/device/encryptionkey/heads/castelnau_captain
	name = "captain's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1)

/obj/item/device/encryptionkey/castelnau_adjutant
	name = "adjutant's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Engineering" = 1, "Security" = 1)

/obj/item/weapon/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/device/encryptionkey/headset_sec = 3,
					  /obj/item/device/encryptionkey/headset_med = 3,
					  /obj/item/device/encryptionkey/headset_cargo = 3)

/obj/item/weapon/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()