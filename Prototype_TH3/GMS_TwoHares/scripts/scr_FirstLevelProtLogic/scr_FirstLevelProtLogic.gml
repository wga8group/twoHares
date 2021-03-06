switch(currentState) 
{
	case characterStates.startRoom:
		argument0.image_speed = 0;
		if not ProtoWakeUpSoundID {
			ProtoWakeUpSoundID = audio_play_sound_at(soundOutOfBed, argument0.x, argument0.y, 0, 100, 300, 1, false, 1);
			audio_sound_gain(ProtoWakeUpSoundID, global.VolumeSound, 0);
		}		
	break;	
	
	case characterStates.WakeUp:
		argument0.image_speed = 1;
		scr_OnePlayAnimation(argument0);
		if (argument0.image_index >= sprite_get_number(argument0.sprite_index)-1){
			argument0.sprite_index = global.sprProtNakedIdleRight;
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 2;
			global.objDialogue.printText = "";
			global.objDialogue.clickCount += 1;
			global.objDialogue.message[1] = global.textFirstLevelWakeUp1;
			global.objDialogue.message[2] = global.textFirstLevelWakeUp2;
			currentState = characterStates.NakedWalk;
		}			
	break;
	
	case characterStates.NakedWalk:

	break;	

	case characterStates.DressingUp:

	break;	

	case characterStates.DressedWalk:

	break;
	
	default:
	
	break;			
}

