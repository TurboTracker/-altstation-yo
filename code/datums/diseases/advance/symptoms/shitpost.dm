/*
//////////////////////////////////////
Audible shitposting
        Noticable.
        Little Resistance
        Little stage speed
        Transmittable.
        Low Level.
BONUS
        Will annoy everyone
//////////////////////////////////////
*/

/datum/symptom/analtension

        name = "Anal tension"
        stealth = -3
        resistance = 1
        stage_speed = 1
        transmittable = 3
        level = 2
        severity = 3

/datum/symptom/analtension/Activate(var/datum/disease/advance/A)
        ..()
        if(prob(SYMPTOM_ACTIVATION_PROB * 1.5))
                var/mob/living/M = A.affected_mob
                switch(A.stage)
                        if(1, 2, 3, 4)
                                M << "<span notice='notice'>[pick("People do not like the things you like.", "You feel a strong need to post on an anonymous imageboard.")]</span>"
                                M.visible_message("<span class='danger'>[M] screams at the top of their lungs "FUCKING NORMIES GET OFF MY BOARD"</span>")
                        else
                                M << "<span notice='danger'>[pick("You feel a crippling pain in your rectum!")]</span>"
                                M.adjustBruteLoss(0.8)
        return