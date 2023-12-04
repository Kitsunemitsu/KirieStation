/obj/item/gun/ballistic/automatic/defender
	name = "SMG-45 Defender"
	desc = "An automatic 9mm submachinegun. Light, easy to carry, and leaves your hands free for other things"
	icon = 'Helldivers13/guns/icons.dmi'
	icon_state = "defender"
	burst_size = 1
	pin = /obj/item/firing_pin
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/uzim9mm/helldiver
	item_flags = SLOWS_WHILE_IN_HAND
	slot_flags = ITEM_SLOT_BELT
	slowdown = 0.05
	actions_types = list()

/obj/item/gun/ballistic/automatic/defender/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)
