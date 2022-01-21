//Cryokatana itself

/obj/item/melee/sabre/security
	name = "security cryokatana"
	desc = "A techblade katana that reduces the internal body temperature of those struck by the blade, \
			as well as freezing them from the inside out. Can be applied nonlethally to subdue them with freezing temperatures. How does it do this? Cryotechnology!"
	icon_state = "security_katana"
	item_state = "security_katana"
	force = 15
	block_chance = 30
	armour_penetration = 10

	var/obj/item/stock_parts/cell/cell
	var/preload_cell_type //if not empty the baton starts with this type of cell
	var/cell_hit_cost = 1000
	var/can_remove_cell = TRUE

	///are we using our cryo mode?
	var/turned_on = FALSE

/obj/item/melee/sabre/security/on_exit_storage(datum/component/storage/concrete/S)
	var/obj/item/storage/belt/sheath/B = S.real_location()
	if(istype(B))
		playsound(B, 'sound/items/unsheath.ogg', 25, TRUE)

/obj/item/melee/sabre/security/on_enter_storage(datum/component/storage/concrete/S)
	var/obj/item/storage/belt/sheath/B = S.real_location()
	if(istype(B))
		playsound(B, 'sound/items/sheath.ogg', 25, TRUE)

/obj/item/melee/sabre/security/loaded //this one starts with a cell pre-installed.
	preload_cell_type = /obj/item/stock_parts/cell/high/plus

/obj/item/melee/sabre/security/get_cell()
	return cell

/obj/item/melee/sabre/security/Initialize()
	. = ..()
	if(preload_cell_type)
		if(!ispath(preload_cell_type,/obj/item/stock_parts/cell))
			log_mapping("[src] at [AREACOORD(src)] had an invalid preload_cell_type: [preload_cell_type].")
		else
			cell = new preload_cell_type(src)
	update_icon()

/obj/item/melee/sabre/security/Destroy()
	if(cell)
		QDEL_NULL(cell)
	return ..()

/obj/item/melee/sabre/security/handle_atom_del(atom/A)
	if(A == cell)
		cell = null
		turned_on = FALSE
		update_icon()
	return ..()

/obj/item/melee/sabre/security/proc/deductcharge(chrgdeductamt)
	if(cell)
		//Note this value returned is significant, as it will determine
		//if a stun is applied or not
		. = cell.use(chrgdeductamt)
		if(turned_on && cell.charge < cell_hit_cost)
			//we're below minimum, turn off
			turned_on = FALSE
			update_icon()
			playsound(src, "sparks", 75, TRUE, -1)

/obj/item/melee/sabre/security/update_icon_state()
	if(turned_on)
		icon_state = "[initial(icon_state)]_active"
		item_state = "[initial(item_state)]_active"
	else if(!cell)
		icon_state = "[initial(icon_state)]_nocell"
	else
		icon_state = "[initial(icon_state)]"
		item_state = "[initial(item_state)]"

/obj/item/melee/sabre/security/examine(mob/user)
	. = ..()
	if(cell)
		. += "<span class='notice'>\The [src] is [round(cell.percent())]% charged.</span>"
	else
		. += "<span class='warning'>\The [src] does not have a power source installed.</span>"

/obj/item/melee/sabre/security/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stock_parts/cell))
		var/obj/item/stock_parts/cell/C = W
		if(cell)
			to_chat(user, "<span class='warning'>[src] already has a cell!</span>")
		else
			if(C.maxcharge < cell_hit_cost)
				to_chat(user, "<span class='notice'>[src] requires a higher capacity cell.</span>")
				return
			if(!user.transferItemToLoc(W, src))
				return
			cell = W
			to_chat(user, "<span class='notice'>You install a cell in [src].</span>")
			update_icon()

	else if(W.tool_behaviour == TOOL_SCREWDRIVER)
		tryremovecell(user)
	else
		return ..()

/obj/item/melee/sabre/security/proc/tryremovecell(mob/user)
	if(cell && can_remove_cell)
		cell.update_icon()
		cell.forceMove(get_turf(src))
		cell = null
		to_chat(user, "<span class='notice'>You remove the cell from [src].</span>")
		turned_on = FALSE
		update_icon()

/obj/item/melee/sabre/security/attack_self(mob/user)
	toggle_on(user)

/obj/item/melee/sabre/security/proc/toggle_on(mob/user)
	if(cell && cell.charge > cell_hit_cost)
		turned_on = !turned_on
		to_chat(user, "<span class='notice'>[src] is now [turned_on ? "on" : "off"].</span>")
		playsound(src, "sparks", 75, TRUE, -1)
	else
		turned_on = FALSE
		if(!cell)
			to_chat(user, "<span class='warning'>[src] does not have a power source!</span>")
		else
			to_chat(user, "<span class='warning'>[src] is out of charge.</span>")
	update_icon()
	add_fingerprint(user)

/obj/item/melee/sabre/security/attack(mob/M, mob/living/user)
	if(iscyborg(M))
		..()
		return

	if(user.a_intent != INTENT_HARM)
		if(turned_on)
			if(cryo(M, user))
				user.do_attack_animation(M)
				return
	else
		if(turned_on)
			cryo(M, user)
		..()

/obj/item/melee/sabre/security/proc/cryo(mob/living/L, mob/user)
	if(shields_blocked(L, user))
		return FALSE
	else
		if(!deductcharge(cell_hit_cost))
			return FALSE

	L.adjust_bodytemperature(-60)
	L.apply_damage(25, STAMINA, BODY_ZONE_CHEST)
	playsound(src, 'sound/weapons/egloves.ogg', 50, TRUE, -1)
	if(user)
		L.lastattacker = user.real_name
		L.lastattackerckey = user.ckey
		L.visible_message("<span class='danger'>[user] has slashed [L] with [src], releasing a cloud of cold air in the wake of [src]'s slice!</span>", \
								"<span class='userdanger'>[user] has sliced you with [src]!</span>")
		log_combat(user, L, "cryosliced")

	return 1

/obj/item/melee/sabre/security/proc/shields_blocked(mob/living/L, mob/user)
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		if(H.check_shields(src, 0, "[user]'s [name]", MELEE_ATTACK)) //No message; check_shields() handles that
			playsound(H, 'sound/weapons/rapierhit.ogg', 50, TRUE)
			return TRUE
	return FALSE


//HOS Version
/obj/item/melee/sabre/security/hos
	name = "head of security's cryokatana"
	desc = "The head of security's personal cryotechblade. Finding him without it is a cause for concern."
	icon_state = "hos_katana"
	item_state = "hos_katana"
	force = 18
	block_chance = 50
	armour_penetration = 40
	preload_cell_type = /obj/item/stock_parts/cell/high/plus


//Sheath
/obj/item/storage/belt/sheath
	name = "katana sheath"
	desc = "A rudimentry leather sheath meant for holding a katana."
	icon_state = "security_katana_sheath"
	item_state = "security_katana_sheath"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/belt/sheath/PopulateContents()
	new /obj/item/katana(src)
	update_icon()

/obj/item/storage/belt/sheath/ComponentInitialize()
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 1
	STR.rustle_sound = FALSE
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.set_holdable(list(
		/obj/item/melee/sabre/security,
		/obj/item/katana
		))

/obj/item/storage/belt/sheath/update_icon_state()
	icon_state = "security_katana_sheath"
	item_state = "security_katana_sheath"
	if(contents.len)
		icon_state += "-sword"
		item_state += "-sword"


//Sec Sheath
/obj/item/storage/belt/sheath/security
	name = "security katana sheath"
	desc = "A rudimentry leather sheath meant for holding a security katana."

/obj/item/storage/belt/sheath/security/PopulateContents()
	new /obj/item/melee/sabre/security/loaded(src)
	update_icon()

/obj/item/storage/belt/sheath/security/hos/PopulateContents()
	new /obj/item/melee/sabre/security/hos(src)
	update_icon()


// Sheath Katana code
/obj/item/katana/on_exit_storage(datum/component/storage/concrete/S)
	var/obj/item/storage/belt/sheath/B = S.real_location()
	if(istype(B))
		playsound(B, 'sound/items/unsheath.ogg', 25, TRUE)

/obj/item/katana/on_enter_storage(datum/component/storage/concrete/S)
	var/obj/item/storage/belt/sheath/B = S.real_location()
	if(istype(B))
		playsound(B, 'sound/items/sheath.ogg', 25, TRUE)

