//Helldivers Armor
/obj/item/clothing/head/helmet/helldiver
	name = "Mk5 'Tactical' Helmet"
	desc = "Deployed in 2540, this is the standard issue helldiver armor. Jump feetfirst into hell."
	icon_state = "tactical"
	worn_icon = 'Helldivers13/clothing/helmet/worn.dmi'
	icon = 'Helldivers13/clothing/helmet/icon.dmi'
	inhand_icon_state = "syndicate_suit"
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list(MELEE = 40, BULLET = 50, LASER = 30, ENERGY = 30, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0)


/obj/item/clothing/head/helmet/helldiver/veteran
	name = "Mk5a 'Veteran' Helmet"
	desc = "Deployed for helldivers that have campaigned long."
	icon_state = "veteran"


/obj/item/clothing/head/helmet/helldiver/desert
	name = "Mk5d 'Desert' Helmet"
	desc = "Specialized for harsh hot and cool conditions."
	icon_state = "desert"


