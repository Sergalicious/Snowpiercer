/obj/structure/skullpillar
    name = "skull pillar"
    icon = 'icons/skulls.dmi'
    icon_state = "pillar"
    anchored = 1
    density = 1
    var/counter = 0
    var/far_volume = 30

/obj/item/skull
  name = "Skull"
  icon = 'icons/skulls_hand.dmi'
  icon_state = "head_s"

/obj/structure/skullpillar/attack_hand(mob/user)
    user.visible_message("[user] touches  \the [src]!", "<font color='red'><b>You touch \the [src] and hear the echoes of people shouting in pain!<b></font>")

/obj/structure/skullpillar/attackby(var/obj/b as obj, var/mob/user as mob)
    if (istype (b, /obj/item/skull))
        user.visible_message("[user] adds \a skull to the [src]", "<font color='red'><b>You add \a skull to the [src] and hear the echo of someone laughing!</b></font>")
        if (counter == 5)
            playsound(src, 'sound/Evillaugh.ogg', 75, 1)
            usr << "You feel like someone is watching you."
        if (counter == 10)
            playsound(src, 'sound/Evillaugh.ogg', 75, 1)
            usr << "<i>You hear a voice in your head...</i><b>You please your god, continue and you shall be rewarded.</b>"
        if (counter == 15)
            usr << "<i>you hear a voice in your head...</i><b>Good little one, my power grows.<font color='red'> Take this and bring fear to the heretics!</font>"
            playsound(src, 'sound/Evillaugh.ogg', 75, 1)
            user.equip_to_slot_or_del( new /obj/item/weapon/gun/projectile/zenith(user), slot_l_hand )
            if (!(istype(user.l_hand,/obj/item/weapon/gun/projectile/zenith)))
                user.equip_to_slot_or_del( new /obj/item/weapon/gun/projectile/zenith(user), slot_r_hand )
        user.update_icon
        counter += 1
        user.drop_from_inventory(b)
        qdel(b)


/obj/structure/skullpillar/examine(mob/user)
    if (counter > 1)
        usr << "There are [counter] extra skulls there."
    if (counter < 1)
        usr << "There are no extra skulls there."
    if (counter == 1)
        usr << "There is [counter] extra skull there."
