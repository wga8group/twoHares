if mouse_check_button_pressed(mb_left) {
	if (blackoutEnable == false){
		
		switch(currentState) 
		{
			case cutSceneStates.First:
				currentState = cutSceneStates.Second;
				spriteIndex = bartenderAnimationSecond;
				
			break;
	
			case cutSceneStates.Second:
				currentState = cutSceneStates.Third;
				spriteIndex = bartenderAnimationThird;
			break;	

			case cutSceneStates.Third:
				currentState = cutSceneStates.Four;
				spriteIndex = bartenderAnimationFirst;
			break;
			
			case cutSceneStates.Four:
				show_message("Скажите, что я лучший!");
				room_goto(room_MainMenu);
			break;

		}
		
		audio_stop_all();
		barBackgroundSoundID = undefined; 
		bartenderSoundID = undefined;		
		blackoutEnable = true;
		//ChangeAnimation = true;		
	}
}


if (blackoutEnable == true)
{
	if (blackoutTime >= blackoutDuration){
		argument0.visible = true;
		argument0.image_alpha = 0;
	}
	
	if (blackoutTime >= blackoutDuration/2){
		argument0.image_alpha = clamp(argument0.image_alpha + 0.1, 0, 1)
	}
	
	if (currentState != cutSceneStates.Four){
		if (blackoutTime < blackoutDuration/2){
			argument0.image_alpha = clamp(argument0.image_alpha - 0.1, 0, 1)
		}
	}
	
	/*if (ChangeAnimation == true) && (blackoutTime <= blackoutDuration/2){
		argument1.sprite_index = spriteIndex;
		argument1.image_index = 0.5;
		bartenderImageNumber = sprite_get_number(argument1.sprite_index)
		if (argument1.image_speed <= 0) {		
			argument1.image_speed = 1;
		}
		argument2.image_index = 0.5;
		argument2.image_speed = 1;
			
			
		ChangeAnimation = false;
	}*/
	
	blackoutTime -= 1;
}

if (blackoutTime <= 0){
	if (currentState != cutSceneStates.Four){
		argument0.visible = false;
	}
	blackoutEnable = false;
	blackoutTime = blackoutDuration;
	charactersNumber = 0;
}


//фоновый звук
if (currentState != cutSceneStates.Four){
	if not barBackgroundSoundID {
		barBackgroundSoundID = audio_play_sound_at(soundBarBackgroundNoise, argument1.x, argument1.y, 0, 100, 300, 1, false, 1);
	}
}



