/datum/job/ntmunitions
	title = "Munitions Officer"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the NT Squad Leader"
	selection_color = "#134975"
	exp_type = EXP_TYPE_NTMARINE
	maptype = "casio"

	outfit = /datum/outfit/job/ntmunitions

	access = list(ACCESS_MUNITIONS, ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MECH_SECURITY, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MUNITIONS, ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MECH_SECURITY, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SEC
	display_order = JOB_DISPLAY_ORDER_WARDEN

/obj/effect/landmark/start/ntmunitions
	name = "Munitions Officer"
	icon_state = "Security Officer"

/datum/outfit/job/ntmunitions
	name = "Munitions Officer"
	/datum/job/ntmunitions

	uniform = /obj/item/clothing/under/plasmaman/centcom_intern/marine
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset/headset_cent/alt
	id = /obj/item/card/id
	glasses = /obj/item/clothing/glasses/sunglasses
	back = null
	belt = /obj/item/storage/belt/military/assault
