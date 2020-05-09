
/mob/living/carbon/human
	var/list/examine_hygene = list()


/decl/scent_intensity/perfume  //Custom intensity cause message is a bit different
	cooldown = 1 MINUTES
	intensity = 2

/decl/scent_intensity/perfume/PrintMessage(var/mob/user, var/descriptor, var/scent)
	to_chat(user, SPAN_NOTICE("[scent]")) //Message is constructed in reagent proc


/datum/reagent/perfume  //As reagent, because why not?
	name = "perfume"
	description = "a general perfume"
	color = "#0064c877"  //basically water
	var/flawor

/datum/reagent/perfume/touch_mob(var/mob/living/L, var/amount)
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		var/datum/gender/T = gender_datums[H.get_gender()]
		to_chat(H,"<span class='notice'>You smell like[flawor]</span>")
		var/msg = "[T.He] smells like [flawor]"
		H.examine_hygene += msg
		set_extension(H, /datum/extension/scent/custom, "[H.name] smells like[flawor]", /decl/scent_intensity/perfume, SCENT_DESC_ODOR , 5)

/obj/item/weapon/reagent_containers/spray/perfume
	name = "perfume sprayer"
	desc = "A bottle of an expensive perfume from Rosso Caprice."
	gender = PLURAL
	volume = 35
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "Nyx_Noir"

/datum/reagent/perfume
	color = COLOR_BLUE_GRAY

/obj/item/weapon/reagent_containers/spray/perfume/Nyx
	name = "Nyx Noir"
	icon_state = "Nyx_Noir"
	item_state = "Nyx_Noir"

/obj/item/weapon/reagent_containers/spray/perfume/Nyx/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Nyx, volume)

/datum/reagent/perfume/Nyx
	name = "Nyx Noir"
	flawor = " tobacco and vanilla."

/obj/item/weapon/reagent_containers/spray/perfume/Amouage
	name = "Amouage"
	icon_state = "Amouage"
	item_state = "Amouage"

/obj/item/weapon/reagent_containers/spray/perfume/Amouage/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Amouage, volume)

/datum/reagent/perfume/Amouage
	name = "Amouage"
	flawor = " geranium and bergamot."

/obj/item/weapon/reagent_containers/spray/perfume/Blood_Rune
	name = "Blood Rune"
	icon_state = "Blood_Rune"
	item_state = "Blood_Rune"

/obj/item/weapon/reagent_containers/spray/perfume/Blood_Rune/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Blood_Rune, volume)

/datum/reagent/perfume/Blood_Rune
	name = "Blood Rune"
	flawor = " rose and vetiver."

/obj/item/weapon/reagent_containers/spray/perfume/Star_Dust
	name = "Star Dust #5"
	icon_state = "Star_Dust_#5"
	item_state = "Star_Dust_#5"

/obj/item/weapon/reagent_containers/spray/perfume/Star_Dust/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Star_Dust, volume)

/datum/reagent/perfume/Star_Dust
	name = "Star Dust #5"
	flawor = " saffron and incense."

/obj/item/weapon/reagent_containers/spray/perfume/Olympus_Nights
	name = "Olympus Nights"
	icon_state = "Olympus_Nights"
	item_state = "Olympus_Nights"

/obj/item/weapon/reagent_containers/spray/perfume/Olympus_Nights/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Olympus_Nights, volume)

/datum/reagent/perfume/Olympus_Nights
	name = "Olympus Nights"
	flawor = " absinthe and labdanum."

/obj/item/weapon/reagent_containers/spray/perfume/Provocateur
	name = "Provocateur"
	icon_state = "Provocateur"
	item_state = "Provocateur"

/obj/item/weapon/reagent_containers/spray/perfume/Provocateur/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Provocateur, volume)

/datum/reagent/perfume/Provocateur
	name = "Provocateur"
	flawor = " jasmine and raspberry."

/obj/item/weapon/reagent_containers/spray/perfume/Veleno
	name = "Veleno"
	icon_state = "Veleno"
	item_state = "Veleno"

/obj/item/weapon/reagent_containers/spray/perfume/Veleno/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Veleno, volume)

/datum/reagent/perfume/Veleno
	name = "Veleno"
	flawor = " lilac and patchouli."

/obj/item/weapon/reagent_containers/spray/perfume/Scandal
	name = "Scandal"
	icon_state = "Scandal"
	item_state = "Scandal"

/obj/item/weapon/reagent_containers/spray/perfume/Scandal/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Scandal, volume)

/datum/reagent/perfume/Scandal
	name = "Scandal"
	flawor = " lemon and musk."

/obj/item/weapon/reagent_containers/spray/perfume/Narciso
	name = "Narciso"
	icon_state = "Narciso"
	item_state = "Narciso"

/obj/item/weapon/reagent_containers/spray/perfume/Narciso/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Narciso, volume)

/datum/reagent/perfume/Narciso
	name = "Narciso"
	flawor = " coriander and magnolia."

/obj/item/weapon/reagent_containers/spray/perfume/Amore_Verde
	name = "Amore Verde"
	icon_state = "Amore_Verde"
	item_state = "Amore_Verde"

/obj/item/weapon/reagent_containers/spray/perfume/Amore_Verde/New()
	..()
	reagents.add_reagent(/datum/reagent/perfume/Amore_Verde, volume)

/datum/reagent/perfume/Amore_Verde
	name = "Amore Verde"
	flawor = " peonies and greens."

/obj/item/weapon/shampoo
	name = "shampoo"
	desc = "A professional healing shampoo from VeyMed Miracle for different types of hair."
	w_class = ITEM_SIZE_SMALL
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "Professional_Shampoo"
	item_state = "Professional_Shampoo"
	var/now_using = FALSE //IDK where is a function which is not stack, so i did it myself

/obj/item/weapon/shampoo/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(ishuman(M) && !now_using)
		var/mob/living/carbon/human/H = M
		now_using = TRUE
		var/datum/gender/T = gender_datums[H.get_gender()]
		if(H == user)
			to_chat(user, "<span class='notice'>You started washing your hair with shampoo.</span>")
			if(do_after(user, 20, H) && !("[T.His] hair is clean and silky!" in H.examine_hygene))
				user.visible_message("<span class='notice'>[user] washes [T.his] hair with shampoo.</span>")
				H.examine_hygene += "[T.His] hair is clean and silky!"
		else
			user.visible_message("<span class='notice'>[user] started washing [H]'s hair with shampoo.</span>")
			if(do_after(user, 20, H) && do_after(H, 10, needhand = 0) && !("[T.His] hair is clean and silky!" in H.examine_hygene))
				user.visible_message("<span class='notice'>[user] washes [H]'s hair with shampoo.</span>")
				H.examine_hygene += "[T.His] hair is clean and silky!"
		now_using = FALSE

/obj/item/weapon/napkin
	name = "napkin"
	desc = "A thin absorbent napkin. Designed for different tasks."
	w_class = ITEM_SIZE_TINY
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "napkin"
	item_state = "napkin"
	var/now_using = FALSE //IDK where is a function which is not stack, so i did it myself

/obj/item/weapon/napkin/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(ishuman(M) && !now_using)
		now_using = TRUE
		var/mob/living/carbon/human/H = M
		if(H.lip_style == null)
			now_using = FALSE
			to_chat(user, "<span class='warning'>There is no lipstck to wipe off.</span>")
		else
			if(do_after(user, 5, H) && H == user)
				to_chat(user, "<span class='notice'>You wipe off the lipstick with [src].</span>")
				H.lip_style = null
				H.update_body()
			else
				user.visible_message("<span class='warning'>[user] begins to wipe [H]'s lipstick off with \the [src].</span>", \
								 	 "<span class='notice'>You begin to wipe off [H]'s lipstick.</span>")
				if(do_after(user, 10, H) && do_after(H, 10, needhand = 0))
					user.visible_message("<span class='notice'>[user] wipes [H]'s lipstick off with \the [src].</span>", \
										 "<span class='notice'>You wipe off [H]'s lipstick.</span>")
					H.lip_style = null
					H.update_body()
	now_using = FALSE

/obj/item/weapon/napkin/afterattack(atom/A, mob/user, proximity)
	if(!proximity)
		return
	if(ishuman(A))
		return
	user.visible_message("<span class='notice'>\The [user] begins to clean \the [A] with napkin.</span>")
	if(do_after(user, 20, A))
		A.clean_blood()
		to_chat(user, "<span class='notice'>You have finished cleaning!</span>")

/obj/item/weapon/storage/napkin_box
	max_storage_space = 8
	name = "napkin box"
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "napkin_box"
	item_state = "napkin_box"
	desc = "A box of thin absorbent napkins."
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_SMALL

/obj/item/weapon/storage/napkin_box/full
	startswith = list(/obj/item/weapon/napkin = 8)

/obj/item/weapon/storage/napkin_pack
	max_storage_space = 8
	name = "napkin pack"
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "napkin_pack"
	item_state = "napkin_pack"
	desc = "A pack of thin absorbent napkins."
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_SMALL

/obj/item/weapon/storage/napkin_pack/full
	startswith = list(/obj/item/weapon/napkin = 8)

/obj/item/weapon/toothbrush
	name = "toothbrush"
	desc = "A simple toothbrush from the VeyMed Miracle series."
	w_class = ITEM_SIZE_SMALL
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	var/gel = FALSE
	var/now_using = FALSE //IDK where is a function which is not stack, so i did it myself

/obj/item/weapon/toothbrush/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(ishuman(M) && gel && !now_using)
		now_using = TRUE
		var/mob/living/carbon/human/H = M
		playsound(H.loc, 'code_ark/sound/effects/toothbrush.ogg', 75, 1)
		if(do_after(user, 10, H) && H == user)
			user.visible_message("<span class='notice'>[user] begin brushing your teeth with [src].</span>")
			if(do_after(user, 10, H))
				to_chat(user, "<span class='notice'>You brushed your teeth perfectly!</span>")
		else
			user.visible_message("<span class='notice'>[user] begin brushing [M]'s teeth with [src].</span>")
			if(do_after(user, 10, H) && do_after(H, 10, needhand = 0))
				user.visible_message("<span class='notice'>[user] finished brushing [M]'s teeth.</span>")
				to_chat(M, "<span class='notice'>[user] brushed your teeth perfectly!</span>")
		gel = FALSE
	else if(!gel)
		to_chat(user, "<span class='warning'>There is no gel on toothbrush.</span>")
	now_using = FALSE
	update_icon()

/obj/item/weapon/toothbrush/attackby(obj/item/weapon/P as obj, mob/user as mob)
	if(istype(P, /obj/item/weapon/tooth_gel))
		user.visible_message("<span class='notice'>[user] begun placing gel on [src].</span>")
		if(do_after(user, 10, user))
			gel = TRUE
			user.visible_message("<span class='notice'>[user] finished placing gel on [src].</span>")
	update_icon()

/obj/item/weapon/toothbrush/on_update_icon()
	overlays.Cut()
	if(gel)
		if(overlays.len == 0)
			overlays += overlay_image(icon, "gel", flags=RESET_COLOR)
	else
		overlays = list()

/obj/item/weapon/toothbrush/blue
	icon_state = "blue_tootbrush"
	item_state = "blue_tootbrush"
	desc = "A blue toothbrush."

/obj/item/weapon/toothbrush/pink
	icon_state = "pink_tootbrush"
	item_state = "pink_tootbrush"
	desc = "A pink toothbrush"

/obj/item/weapon/toothbrush/red
	icon_state = "red_tootbrush"
	item_state = "red_tootbrush"
	desc = "A red toothbrush."

/obj/item/weapon/toothbrush/green
	icon_state = "green_tootbrush"
	item_state = "green_tootbrush"
	desc = "A green toothbrush"

/obj/item/weapon/toothbrush/yellow
	icon_state = "yellow_tootbrush"
	item_state = "yellow_tootbrush"
	desc = "A yellow toothbrush."

/obj/item/weapon/tooth_gel
	name = "tooth gel"
	desc = "A tooth gel with an extra whitening effect from VeyMed."
	w_class = ITEM_SIZE_SMALL
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "tooth_gel"
	item_state = "tooth_gel"

/obj/item/weapon/lipstick/fashionable
	desc = "An exquisite lipstick for the elect by Rosso Caprice!"
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	icon_state = "Rosso Caprice Lipstick"

/obj/item/weapon/lipstick/fashionable/attack_self(mob/user as mob)
	to_chat(user, "<span class='notice'>You twist \the [src] [open ? "closed" : "open"].</span>")
	open = !open
	if(open)
		icon_state = "lipstick_[colour]"
	else
		icon_state = "Rosso Caprice Lipstick"

/obj/item/weapon/lipstick/fashionable/red
	name = "A fashionable red lipstick."
	colour = "lips_red_s"

/obj/item/weapon/lipstick/fashionable/carmine
	name = "A fashionable carmine lipstick."
	colour = "carmine"

/obj/item/weapon/lipstick/fashionable/crimson
	name = "A fashionable crimson lipstick."
	colour = "crimson"

/obj/item/weapon/lipstick/fashionable/maroon
	name = "A fashionable maroon lipstick."
	colour = "maroon"

/obj/item/weapon/lipstick/fashionable/imperial
	name = "A fashionable imperial lipstick"
	colour = "imperial"

/obj/item/weapon/storage/cosmetic_bag
	max_storage_space = 11
	name = "cosmetic bag"
	icon = 'code_ark/icons/obj/parfume_cosmetics.dmi'
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_SMALL

/obj/item/weapon/storage/cosmetic_bag/New()
	..()
	new /obj/item/weapon/shampoo(src)
	new /obj/item/weapon/tooth_gel(src)
	new /obj/item/weapon/soap(src)

/obj/item/weapon/storage/cosmetic_bag/male
	desc = "A gray practical bag for your hygiene items."
	icon_state = "male_cosmetic_bag"

/obj/item/weapon/storage/cosmetic_bag/female
	desc = "A stylish cosmetic bag that fits everything you need."
	icon_state = "female_cosmetic_bag"
