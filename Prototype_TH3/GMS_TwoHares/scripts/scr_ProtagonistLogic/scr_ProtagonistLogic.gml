if (blackoutEnable == false){
	switch(currentState) 
	{
		case cutSceneStates.First:
			scr_PingPongOnePlayAnim(argument0);
			if (argument0.image_index >= sprite_get_number(argument0.sprite_index) - 0.3){ 
				protagonistLogicState = 1;
				audio_play_sound_at(soundGulp, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
			}
			if (argument0.image_index <= 2){
				if (protagonistLogicState == 1){
					protagonistLogicState = 0;
					audio_play_sound_at(soundGlassTable, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
				}
			}			
		break;
	
		case cutSceneStates.Second:
			scr_PingPongOnePlayAnim(argument0);
			if (argument0.image_index >= sprite_get_number(argument0.sprite_index) - 0.3){ 
				protagonistLogicState = 1;
				audio_play_sound_at(soundGulp, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
			}
			if (argument0.image_index <= 2){
				if (protagonistLogicState == 1){
					protagonistLogicState = 0;
					audio_play_sound_at(soundGlassTable, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
				}
			}
		break;	

		case cutSceneStates.Third:
			argument0.image_speed = 0;
		break;
			
		case cutSceneStates.Four:
			
		break;			
	}
}
else{
	argument0.image_index = 0;
	argument0.image_speed = 1;
}
