/obj/item/weapon/storage/box/syndie_kit
	name = "box"
	desc = "A sleek, sturdy box."
	icon_state = "box_of_doom"

//For uplink kits that provide bulkier items
/obj/item/weapon/storage/backpack/satchel/syndie_kit
	desc = "A sleek, sturdy satchel."
	icon_state = "satchel-norm"

//In case an uplink kit provides a lot of gear
/obj/item/weapon/storage/backpack/dufflebag/syndie_kit
	name = "black dufflebag"
	desc = "A sleek, sturdy dufflebag."
	icon_state = "duffle_syndie"


/obj/item/weapon/storage/box/syndie_kit/imp_freedom
	name = "boxed freedom implant (with injector)"

/obj/item/weapon/storage/box/syndie_kit/imp_freedom/New()
	..()
	var/obj/item/weapon/implanter/O = new(src)
	O.imp = new /obj/item/weapon/implant/freedom(O)
	O.update()
	return

/obj/item/weapon/storage/box/syndie_kit/imp_compress
	name = "box (C)"

/obj/item/weapon/storage/box/syndie_kit/imp_compress/New()
	new /obj/item/weapon/implanter/compressed(src)
	..()
	return

/obj/item/weapon/storage/box/syndie_kit/imp_explosive
	name = "box (E)"

/obj/item/weapon/storage/box/syndie_kit/imp_explosive/New()
	new /obj/item/weapon/implanter/explosive(src)
	..()
	return

/obj/item/weapon/storage/box/syndie_kit/imp_uplink
	name = "boxed uplink implant (with injector)"

/obj/item/weapon/storage/box/syndie_kit/imp_uplink/New()
	..()
	var/obj/item/weapon/implanter/O = new(src)
	O.imp = new /obj/item/weapon/implant/uplink(O)
	O.update()
	return

// Space suit uplink kit
/obj/item/weapon/storage/backpack/satchel/syndie_kit/space
	//name = "\improper EVA gear pack"

	startswith = list(
		/obj/item/clothing/suit/space/syndicate,
		/obj/item/clothing/head/helmet/space/syndicate,
		/obj/item/clothing/mask/gas/syndicate,
		/obj/item/weapon/tank/emergency/oxygen/double,
		)

// Chameleon uplink kit
/obj/item/weapon/storage/backpack/chameleon/sydie_kit
	startswith = list(
		/obj/item/clothing/under/chameleon,
		/obj/item/clothing/suit/chameleon,
		/obj/item/clothing/shoes/chameleon,
		/obj/item/clothing/mask/chameleon,
		/obj/item/weapon/storage/box/syndie_kit/chameleon,
		/obj/item/weapon/gun/energy/chameleon,
		)

/obj/item/weapon/storage/box/syndie_kit/chameleon
	name = "chameleon kit"
	desc = "Comes with all the clothes you need to impersonate most people.  Acting lessons sold seperately."
	startswith = list(
		/obj/item/clothing/gloves/chameleon,
		/obj/item/clothing/glasses/chameleon,
		/obj/item/clothing/head/chameleon,
		)

// Clerical uplink kit
/obj/item/weapon/storage/backpack/satchel/syndie_kit
	startswith = list(
		/obj/item/weapon/storage/box/syndie_kit/clerical,
		/obj/item/weapon/packageWrap,
		/obj/item/weapon/hand_labeler,
		)

/obj/item/weapon/storage/box/syndie_kit/clerical
	name = "clerical kit"
	desc = "Comes with all you need to fake paperwork. Assumes you have passed basic writing lessons."

	startswith = list(
		/obj/item/weapon/stamp/chameleon,
		/obj/item/weapon/pen/chameleon,
		/obj/item/device/destTagger,
		)

/obj/item/weapon/storage/box/syndie_kit/clerical/New()
	..()

/obj/item/weapon/storage/box/syndie_kit/spy
	name = "spy kit"
	desc = "For when you want to conduct voyeurism from afar."

/obj/item/weapon/storage/box/syndie_kit/spy/New()
	..()
	new /obj/item/device/spy_bug(src)
	new /obj/item/device/spy_bug(src)
	new /obj/item/device/spy_bug(src)
	new /obj/item/device/spy_bug(src)
	new /obj/item/device/spy_bug(src)
	new /obj/item/device/spy_bug(src)
	new /obj/item/device/spy_monitor(src)

/obj/item/weapon/storage/box/syndie_kit/g9mm
	name = "\improper Smooth operator"
	desc = "9mm with silencer kit."

/obj/item/weapon/storage/box/syndie_kit/g9mm/New()
	..()
	new /obj/item/weapon/gun/projectile/pistol(src)
	new /obj/item/weapon/silencer(src)

/obj/item/weapon/storage/box/syndie_kit/toxin
	name = "toxin kit"
	desc = "An apple will not be enough to keep the doctor away after this."

/obj/item/weapon/storage/box/syndie_kit/toxin/New()
	..()
	new /obj/item/weapon/reagent_containers/glass/beaker/vial/random/toxin(src)
	new /obj/item/weapon/reagent_containers/syringe(src)

/obj/item/weapon/storage/box/syndie_kit/cigarette
	name = "\improper Tricky smokes"
	desc = "Comes with the following brands of cigarettes, in this order: 2xFlash, 2xSmoke, 1xMindBreaker, 1xTricordrazine. Avoid mixing them up."

/obj/item/weapon/storage/box/syndie_kit/cigarette/New()
	..()
	var/obj/item/weapon/storage/fancy/cigarettes/pack
	pack = new /obj/item/weapon/storage/fancy/cigarettes(src)
	fill_cigarre_package(pack, list("aluminum" = 1, "potassium" = 1, "sulfur" = 1))
	pack.desc += " 'F' has been scribbled on it."

	pack = new /obj/item/weapon/storage/fancy/cigarettes(src)
	fill_cigarre_package(pack, list("aluminum" = 1, "potassium" = 1, "sulfur" = 1))
	pack.desc += " 'F' has been scribbled on it."

	pack = new /obj/item/weapon/storage/fancy/cigarettes(src)
	fill_cigarre_package(pack, list("potassium" = 1, "sugar" = 1, "phosphorus" = 1))
	pack.desc += " 'S' has been scribbled on it."

	pack = new /obj/item/weapon/storage/fancy/cigarettes(src)
	fill_cigarre_package(pack, list("potassium" = 1, "sugar" = 1, "phosphorus" = 1))
	pack.desc += " 'S' has been scribbled on it."

	pack = new /obj/item/weapon/storage/fancy/cigarettes(src)
	fill_cigarre_package(pack, list("potassium" = 1, "nitrogen" = 1, "silicon" = 1))
	// Mindbreaker
	fill_cigarre_package(pack, list("silicon" = 1.5, "hydrogen" = 1.5))

	pack.desc += " 'MB' has been scribbled on it."

	pack = new /obj/item/weapon/storage/fancy/cigarettes(src)
	fill_cigarre_package(pack, list("tricordrazine" = 4))
	pack.desc += " 'T' has been scribbled on it."

	new /obj/item/weapon/flame/lighter/zippo(src)

/proc/fill_cigarre_package(var/obj/item/weapon/storage/fancy/cigarettes/C, var/list/reagents)
	for(var/reagent in reagents)
		C.reagents.add_reagent(reagent, reagents[reagent] * C.storage_slots)

//Rig Electrowarfare and Voice Synthesiser kit
/obj/item/weapon/storage/backpack/satchel/syndie_kit/ewar_voice
	//name = "\improper Electrowarfare and Voice Synthesiser pack"
	//desc = "Kit for confounding organic and synthetic entities alike."
	startswith = list(
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/voice,
		)


/obj/item/weapon/storage/secure/briefcase/money
	name = "suspicious briefcase"
	desc = "An ominous briefcase that has the unmistakeable smell of old stale cigarette smoke, and gives those who look at it a bad feeling."

	startswith = list(/obj/item/weapon/spacecash/bundle/c1000 = 10)
