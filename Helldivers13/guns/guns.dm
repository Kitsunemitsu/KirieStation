//Secondaries
/obj/item/gun/ballistic/automatic/peacemaker
	name = "P-2 Peacemaker"
	desc = "The standard helldiver sidearm. Swapping to your pistol is always faster than reloading."
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "peacemaker"
	burst_size = 3
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_SMALL
	weapon_weight = WEAPON_LIGHT
	mag_type = /obj/item/ammo_box/magazine/glock
	actions_types = list()

//Primaries
//Rifles
/obj/item/gun/ballistic/automatic/liberator
	name = "AR-19 Liberator"
	desc = "An automatic 5.56 gun, standard issue among helldivers"
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "liberator"
	burst_size = 1
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	mag_type = /obj/item/ammo_box/magazine/m556/helldiver
	item_flags = SLOWS_WHILE_IN_HAND
	slot_flags = ITEM_SLOT_BELT
	slowdown = 0.12
	actions_types = list()

/obj/item/gun/ballistic/automatic/liberator/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.23 SECONDS)

//LMGs
/obj/item/gun/ballistic/automatic/stalwart
	name = "MG-105 Stalwart"
	desc = "An automatic LMG. Helldivers use it for it's heavy firepower, but it does slow them down quite a bit."
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "stalwart"
	burst_size = 1
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	mag_type = /obj/item/ammo_box/magazine/mm712x82/helldiver
	item_flags = SLOWS_WHILE_IN_HAND
	slot_flags = ITEM_SLOT_BELT
	slowdown = 0.21
	actions_types = list()

/obj/item/gun/ballistic/automatic/stalwart/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.17 SECONDS)

//SMGs
/obj/item/gun/ballistic/automatic/defender
	name = "SMG-45 Defender"
	desc = "An automatic 9mm submachinegun. Light, easy to carry, and leaves your hands free for other things"
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "defender"
	burst_size = 1
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/uzim9mm/defender
	item_flags = SLOWS_WHILE_IN_HAND
	slot_flags = ITEM_SLOT_BELT
	slowdown = 0.05
	actions_types = list()

/obj/item/gun/ballistic/automatic/defender/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)


//Shotguns
/obj/item/gun/ballistic/automatic/breaker
	name = "SG-225 Breaker"
	desc = "A fully automatic shotgun used by helldivers across the galaxy."
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "breaker"
	burst_size = 1
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/m12g/helldiver
	item_flags = SLOWS_WHILE_IN_HAND
	slot_flags = ITEM_SLOT_BELT
	slowdown = 0.12
	actions_types = list()

/obj/item/gun/ballistic/automatic/breaker/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.32 SECONDS)

