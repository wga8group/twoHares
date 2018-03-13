//text
l += 0.4;

print = string_copy(str, 1, l)

if (mouse_check_button_pressed(mb_left)) && (next < array_length_1d(strings)-1)
{
	l = 0;
	next = next + 1;
}
str = strings[next];

//timer

if (timer_enable == true)
{
	timer -= 1;
}

if (timer <= 0){
	obj_Fade.visible = false;
	timer = 0;
	timer_enable = false
}

//animations switch

		if (mouse_check_button_pressed(mb_left))
		{
			switch(current_state) 
			{
			case cutSceneStates.First:
				current_state = cutSceneStates.Second;
				obj_Bartender.sprite_index = spr_BartenderLook;	
				timer = room_speed;
				timer_enable = true;
				obj_Fade.visible = true;
			break;
	
			case cutSceneStates.Second:
				current_state = cutSceneStates.Third;
				obj_Bartender.sprite_index = spr_BartenderBottle;	
				timer = room_speed;
				timer_enable = true;
				obj_Fade.visible = true;
			break;	

			case cutSceneStates.Third:
				current_state = cutSceneStates.First;
				obj_Bartender.sprite_index = spr_BartenderClean;	
				timer = room_speed;
				timer_enable = true;
				obj_Fade.visible = true;
			break;	
}
}


