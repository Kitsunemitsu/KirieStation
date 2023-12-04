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
