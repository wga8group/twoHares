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
				if global.CurrentCheckpointsAvailable <= 0 {
					global.CurrentCheckpointsAvailable += 1;
				}
				cursor_sprite = spr_CursorMain;
				audio_stop_all();
				room_goto(global.rmHomeFirstLevel);
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
		barBackgroundSoundID = audio_play_sound(soundBarBackgroundNoise, 1, false);
		//barBackgroundSoundID = audio_play_sound_at(soundBarBackgroundNoise, room_width/2, room_height/2, 0, 100, 300, 1, false, 1);
		audio_sound_gain(barBackgroundSoundID, global.VolumeSound, 0);
	}
}



