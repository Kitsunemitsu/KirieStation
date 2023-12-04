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
	slowdown = 0.1
	actions_types = list()

/obj/item/gun/ballistic/automatic/breaker/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.32 SECONDS)

