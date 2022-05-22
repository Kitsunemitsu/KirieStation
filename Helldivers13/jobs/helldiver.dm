/datum/job/helldiver
	title = "Helldiver"
	department_head = list("everyone")
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "everyone"
	selection_color = "#134975"
	maptype = "helldivers"
	access = list(ACCESS_CENT_GENERAL)
	minimal_access = list(ACCESS_CENT_GENERAL)
	paycheck = PAYCHECK_MEDIUM
	display_order = JOB_DISPLAY_ORDER_FACTION1_PVT

	outfit = /datum/outfit/job/helldiver


/datum/job/helldiver/lieutenant
	title = "Helldiver Lieutenant"
	total_positions = 2
	spawn_positions = 2
	display_order = JOB_DISPLAY_ORDER_FACTION1_SGT


/datum/job/helldiver/captain
	title = "Helldiver Captain"
	total_positions = 1
	spawn_positions = 1
	display_order = JOB_DISPLAY_ORDER_FACTION1_LT
	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS)


/datum/job/helldiver/marshal
	title = "Helldiver Marshal"
	department_head = list("Helldiver Lord")
	supervisors = "Helldiver Lord"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#073052"

	outfit = /datum/outfit/job/remnant/lt

	access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN, ACCESS_CENT_SPECOPS)
	minimal_access = list(ACCESS_CENT_GENERAL, ACCESS_CENT_CAPTAIN, ACCESS_CENT_SPECOPS)
	paycheck = PAYCHECK_COMMAND

	display_order = JOB_DISPLAY_ORDER_FACTION1_LEADER

