switch(currentState) 
{
	case characterStates.startRoom:
		argument0.image_speed = 0;
	break;	
	
	case characterStates.WakeUp:
		argument0.image_speed = 1;
		OnePlayAnimation(argument0);
		if (argument0.image_index >= sprite_get_number(argument0.sprite_index)-1){
			argument0.sprite_index = global.sprProtNakedIdleRight;
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 2;
			global.objDialogue.printText = "";
			global.objDialogue.clickCount += 1;
			global.objDialogue.message[1] = "ТОМ: \nОох, моя голова...";
			global.objDialogue.message[2] = "ТОМ: \nТак, нужно быстрее собраться на работу, главное ничего не забыть.";
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

