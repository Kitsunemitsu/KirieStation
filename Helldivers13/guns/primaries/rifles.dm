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
