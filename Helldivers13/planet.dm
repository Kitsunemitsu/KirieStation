/datum/map_generator/cave_generator/helldivers
	open_turf_types =  list(/turf/open/floor/plating/ironsand = 1)
	closed_turf_types =  list(/turf/closed/indestructible/rock = 1)
	initial_closed_chance = 30
	smoothing_iterations = 20
	mob_spawn_chance = 12


	///Note that this spawn list is also in the lavaland generator
	feature_spawn_list = list(/obj/structure/geyser/wittel = 6, /obj/structure/geyser/random = 2, /obj/structure/geyser/plasma_oxide = 10, /obj/structure/geyser/protozine = 10, /obj/structure/geyser/hollowwater = 10)
	mob_spawn_list = list(/mob/living/simple_animal/hostile/solgov/ranged = 50, /mob/living/simple_animal/hostile/solgov/ranged/assault = 15, \
						  /mob/living/simple_animal/hostile/solgov/ranged/cloaker = 5, /mob/living/simple_animal/hostile/solgov/ranged/smg = 10, \
						  /mob/living/simple_animal/hostile/solgov/ranged/heavy/shotgun = 15, /mob/living/simple_animal/hostile/solgov/ranged/heavy = 15, \
						  /mob/living/simple_animal/hostile/solgov/ranged/rifle = 2)
	flora_spawn_list = list()
	initial_closed_chance = 10
	smoothing_iterations = 50
	birth_limit = 4
	death_limit = 3

/area/lavaland/helldivers/desert // rivers spawn here
	icon_state = "danger"
	map_generator = /datum/map_generator/cave_generator/helldivers
	area_flags = VALID_TERRITORY | UNIQUE_AREA | CAVES_ALLOWED | FLORA_ALLOWED | MOB_SPAWN_ALLOWED | NO_ALERTS
