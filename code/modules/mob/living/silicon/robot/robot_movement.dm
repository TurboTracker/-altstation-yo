/mob/living/silicon/robot/Process_Spacemove(var/movement_dir = 0)
	if(module)
		for(var/obj/item/weapon/tank/jetpack/J in module.modules)
			if(J && istype(J, /obj/item/weapon/tank/jetpack))
				if(J.allow_thrust(0.01))	return 1
	if(..())	return 1
	return 0

/mob/living/silicon/robot/mob_negates_gravity()
	return magpulse

 //No longer needed, but I'll leave it here incase we plan to re-use it.
/mob/living/silicon/robot/movement_delay()
	var/tally = 0 //Incase I need to add stuff other than "speed" later

	tally = speed+2*magpulse	//2 when traction on, 0 when off

	return tally+config.robot_delay
