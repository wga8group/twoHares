if (blackoutEnable == false){
	switch(currentState) 
	{
		case cutSceneStates.First:
			scr_PingPongAnimation(argument0);
			if not bartenderSoundID {
				bartenderSoundID = audio_play_sound_at(soundWipeGlass, argument0.x, argument0.y, 0, 100, 300, 1, true, 1);
				audio_sound_gain(bartenderSoundID, global.VolumeSound, 0);
			}
		break;
	
		case cutSceneStates.Second:
			if (argument0.sprite_index == bartenderAnimationSecond){	
				scr_PingPongOnePlayAnim(argument0);
				if (argument0.image_speed == 0){
					argument0.sprite_index = bartenderAnimationFirst;
					argument0.image_speed = 1;
					argument0.image_index = 0.1;
				}
			}
			else{
				scr_PingPongAnimation(argument0);
				if not bartenderSoundID {
					bartenderSoundID = audio_play_sound_at(soundWipeGlass, argument0.x, argument0.y, 0, 100, 300, 1, true, 1);
					audio_sound_gain(bartenderSoundID, global.VolumeSound, 0);
				}
			}
		break;	

		case cutSceneStates.Third:
			scr_OnePlayAnimation(argument0);
			if (argument0.image_index >= sprite_get_number(argument0.sprite_index) - 2){
				if not bartenderSoundID {
					bartenderSoundID = audio_play_sound_at(soundBottleTable, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
					audio_sound_gain(bartenderSoundID, global.VolumeSound, 0);
				}
			}			
		break;
			
		case cutSceneStates.Four:
			if not bartenderSoundID {
				bartenderSoundID = audio_play_sound_at(soundBreakingGlass, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
				audio_sound_gain(bartenderSoundID, global.VolumeSound, 0);
			}
		break;
	}
}
else{
	if (blackoutTime <= blackoutDuration/2) {
		argument0.sprite_index = spriteIndex;
		argument0.image_index = 0.5;
		bartenderImageNumber = sprite_get_number(argument0.sprite_index)
		if (argument0.image_speed <= 0) {		
			argument0.image_speed = 1;
		}	
	}
}
