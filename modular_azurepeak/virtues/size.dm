/datum/virtue/size/giant
	name = "Giant"
	desc = "I've always been larger, stronger and hardier than the average person. I tend to lumber around a lot. Very little can escape my holds, and my immense size can break down frail, wooden doors. +1 STR, +1 CON, -1 SPD"
	added_traits = list(TRAIT_BIGGUY)
	custom_text = "Increases your sprite size."

/datum/virtue/size/giant/apply_to_human(mob/living/carbon/human/recipient)
	recipient.change_stat("strength", 1)
	recipient.change_stat("constitution", 1)
	recipient.change_stat("speed",-1)
	recipient.transform = recipient.transform.Scale(1.25, 1.25)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 16))
	recipient.update_transform()
