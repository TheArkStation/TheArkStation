// Hotel room presets

/hotel_room_preset
	var/room_number
	var/bed_count
	var/guest_count // Do not set if corresponds to the number of beds
	var/hourly_price
	var/special_room = 0 // It indicates if the room can be reserved only through an employee

/hotel_room_preset/one_zero_one
	room_number = "101"
	bed_count = 1
	hourly_price = 123

/hotel_room_preset/one_zero_two
	room_number = "102"
	bed_count = 1
	hourly_price = 123

/hotel_room_preset/one_zero_three
	room_number = "103"
	bed_count = 1
	hourly_price = 123

/hotel_room_preset/one_zero_four
	room_number = "104"
	bed_count = 1
	hourly_price = 123

/hotel_room_preset/two_zero_one
	room_number = "201"
	bed_count = 2
	hourly_price = 223

/hotel_room_preset/two_zero_two
	room_number = "202"
	bed_count = 2
	hourly_price = 223

/hotel_room_preset/three_zero_one
	room_number = "301"
	bed_count = 1
	guest_count = 2
	hourly_price = 323

/hotel_room_preset/three_zero_two
	room_number = "302"
	bed_count = 1
	guest_count = 2
	hourly_price = 323

/hotel_room_preset/three_zero_three
	room_number = "303"
	bed_count = 1
	guest_count = 2
	hourly_price = 323

/hotel_room_preset/penthouse
	room_number = "Penthouse"
	bed_count = 1
	guest_count = 2
	hourly_price = 423
	special_room = 1

GLOBAL_LIST_INIT(hotel_room_presets, list(			// Make sure any rooms you've created above are added to this list and vice versa,
	"101" = /hotel_room_preset/one_zero_one,
	"102" = /hotel_room_preset/one_zero_two,
	"103" = /hotel_room_preset/one_zero_three,
	"104" = /hotel_room_preset/one_zero_four,
	"201" = /hotel_room_preset/two_zero_one,
	"202" = /hotel_room_preset/two_zero_two,
	"301" = /hotel_room_preset/three_zero_one,
	"302" = /hotel_room_preset/three_zero_two,
	"303" = /hotel_room_preset/three_zero_three,
	"Penthouse" = /hotel_room_preset/penthouse
))

GLOBAL_LIST_EMPTY(hotel_rooms)

/proc/setup_hotel_rooms()
	if (!LAZYLEN(GLOB.hotel_rooms))
		var/rooms_list = GLOB.hotel_room_presets
		for(var/room_number in rooms_list)
			var/hotel_room_preset_path = rooms_list[room_number]
			GLOB.hotel_rooms += new/datum/hotel_room(room_number, hotel_room_preset_path)

// Defining room datums

/datum/hotel_room
	var/room_number
	var/bed_count
	var/guest_count
	var/hourly_price
	var/special_room

	var/room_status = 0 // 0 - broken, 1 - available, 2 - occupied, 3 - blocked
	var/room_requests = 0 // 0 - nothing, 1 - do not disturb, 2 - make up the room, 3 - room turnover (set automatically at the end of the reservation)
	var/list/room_keys = list()
	var/list/room_guests = list()
	var/room_reservation_start_time
	var/room_reservation_end_time

	var/obj/machinery/hotel_room_sign/room_sign
	var/obj/machinery/computer/hotel_room_controller/room_controller
	var/obj/machinery/door/airlock/room_airlock

/datum/hotel_room/New(var/room_number, var/hotel_room_preset_path)
	src.room_number = room_number
	if(ispath(hotel_room_preset_path, /hotel_room_preset))
		var/hotel_room_preset/hotel_room_preset = decls_repository.get_decl(hotel_room_preset_path)
		src.bed_count = hotel_room_preset.bed_count
		if(hotel_room_preset.guest_count)
			src.guest_count = hotel_room_preset.guest_count
		else
			src.guest_count = hotel_room_preset.bed_count
		src.hourly_price = hotel_room_preset.hourly_price
		src.special_room = hotel_room_preset.special_room

		for(var/obj/machinery/hotel_room_sign/S in world)
			if (S.id_tag == "room_[room_number]_sign")
				room_sign = S
				break
		if(!room_sign)
			crash_with("A hotel room ([room_number]) is unable to find its sign!")

		for(var/obj/machinery/computer/hotel_room_controller/C in world)
			if (C.id_tag == "room_[room_number]_controller")
				room_controller = C
				break
		if(!room_controller)
			crash_with("A hotel room ([room_number]) is unable to find its controller!")

		for(var/obj/machinery/door/airlock/A in world)
			if (A.id_tag == "room_[room_number]_airlock")
				room_airlock = A
				break
		if(!room_airlock)
			crash_with("A hotel room ([room_number]) is unable to find its door!")

	else
		crash_with("A hotel room preset ([room_number]) is incorrect!")

	room_airlock.autoset_access = 0
	room_airlock.req_access = list(list("ACCESS_LIBERTY_HOTEL", "ACCESS_LIBERTY_ROOM_[room_number]"))
	room_controller.hotel_room = src
	room_sign.hotel_room = src

	room_status = 1

/datum/hotel_room/Destroy()
	room_controller.hotel_room = null
	room_sign.hotel_room = null
	QDEL_NULL_LIST(room_keys)
	. = ..()

/datum/hotel_room/proc/room_self_test()
	if (!istype(room_sign) || !istype(room_controller) || istype(room_airlock))
		room_status = 0

/datum/hotel_room/proc/room_inoperable() // FIX ME