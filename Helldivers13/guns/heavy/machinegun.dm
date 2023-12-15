/obj/item/gun/ballistic/automatic/helldivermg
	name = "MG-94 Machinegun"
	desc = "An automatic HMG. Helldivers use it for it's heavy firepower, but it does slow them down quite a bit."
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "heavymachinegun"
	burst_size = 1
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	mag_type = /obj/item/ammo_box/magazine/mm712x82/helldivermg
	item_flags = SLOWS_WHILE_IN_HAND
	slot_flags = ITEM_SLOT_BELT
	slowdown = 0.7
	actions_types = list()

/obj/item/gun/ballistic/automatic/helldivermg/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.12 SECONDS)
