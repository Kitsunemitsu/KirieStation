/obj/item/clothing/head/caphat/galaxy
	name = "captain's peaked cap"
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	icon_state = "captain_hat"
/obj/item/clothing/gloves/color/captain/galaxy
	desc = "Regal white gloves, with a nice gold trim, a diamond anti-shock coating, and an integrated thermal barrier, and armoured bracers. Swanky."
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	icon_state = "captain_gloves"
/obj/item/clothing/under/rank/captain/galaxy
	desc = "It's a white jumpsuit with some gold markings denoting the rank of \"Captain\"."
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'

/obj/item/clothing/under/rank/captain/skirt/galaxy
	desc = "It's a white jumpskirt with some gold markings denoting the rank of \"Captain\"."
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'

/obj/item/clothing/head/hopcap/galaxy
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'

/obj/item/clothing/under/rank/civilian/head_of_personnel/galaxy
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'
	icon_state = "hop"
/obj/item/clothing/under/rank/civilian/head_of_personnel/skirt/galaxy
	icon = 'ModularTegustation/Teguicons/teguclothing.dmi'
	worn_icon = 'ModularTegustation/Teguicons/teguclothing_worn.dmi'

//lockers

/obj/structure/closet/secure_closet/captains_galaxy
	icon = 'ModularTegustation/Teguicons/closet.dmi'
	name = "\proper captain's locker"
	req_access = list(ACCESS_CAPTAIN)
	icon_state = "cap"

/obj/structure/closet/secure_closet/captains_galaxy/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/wintercoat/captain(src)
	new /obj/item/storage/backpack/captain(src)
	new /obj/item/storage/backpack/satchel/cap(src)
	new /obj/item/storage/backpack/duffelbag/captain(src)
	new /obj/item/clothing/neck/cloak/cap(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/clothing/shoes/sneakers/brown(src)
	new /obj/item/clothing/under/rank/captain/galaxy(src)
	new /obj/item/clothing/under/rank/captain/skirt/galaxy(src)
	new /obj/item/clothing/suit/armor/vest/capcarapace(src)
	new /obj/item/clothing/head/caphat/galaxy(src)
	new /obj/item/clothing/under/rank/captain/parade(src)
	new /obj/item/clothing/suit/armor/vest/capcarapace/alt(src)
	new /obj/item/clothing/head/caphat/parade(src)
	new /obj/item/clothing/suit/captunic(src)
	new /obj/item/clothing/head/crown/fancy(src)
	new /obj/item/cartridge/captain(src)
	new /obj/item/storage/box/silver_ids(src)
	new /obj/item/radio/headset/heads/captain/alt(src)
	new /obj/item/radio/headset/heads/captain(src)
	new /obj/item/clothing/glasses/sunglasses/gar/supergar(src)
	new /obj/item/clothing/gloves/color/captain/galaxy(src)
	new /obj/item/storage/belt/sabre(src)
	new /obj/item/gun/energy/e_gun(src)
	new /obj/item/door_remote/captain(src)
	new /obj/item/card/id/captains_spare(src)
	new /obj/item/storage/photo_album/captain(src)

/obj/structure/closet/secure_closet/hop_galaxy
	icon = 'ModularTegustation/Teguicons/closet.dmi'
	name = "\proper head of personnel's locker"
	req_access = list(ACCESS_HOP)
	icon_state = "hop"

/obj/structure/closet/secure_closet/hop_galaxy/PopulateContents()
	..()
	new /obj/item/clothing/neck/cloak/hop(src)
	new /obj/item/storage/lockbox/medal/service(src)
	new /obj/item/clothing/under/rank/civilian/head_of_personnel/galaxy(src)
	new /obj/item/clothing/under/rank/civilian/head_of_personnel/skirt/galaxy(src)
	new /obj/item/clothing/head/hopcap/galaxy(src)
	new /obj/item/cartridge/hop(src)
	new /obj/item/radio/headset/heads/hop(src)
	new /obj/item/clothing/shoes/sneakers/brown(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/clothing/suit/armor/vest/alt(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/gun/energy/e_gun(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/door_remote/civilian(src)
	new /obj/item/circuitboard/machine/techfab/department/service(src)
	new /obj/item/storage/photo_album/hop(src)
	new /obj/item/storage/lockbox/medal/hop(src)

//outfits

/datum/outfit/job/hop/galaxy
	name = "Captain (Galaxy Station)"
	uniform =  /obj/item/clothing/under/rank/civilian/head_of_personnel/galaxy
	head = /obj/item/clothing/head/hopcap/galaxy

/datum/outfit/job/captain/galaxy
	name = "Captain (Galaxy Station)"
	gloves = /obj/item/clothing/gloves/color/captain/galaxy
	uniform = /obj/item/clothing/under/rank/captain/galaxy
	head = /obj/item/clothing/head/caphat/galaxy
