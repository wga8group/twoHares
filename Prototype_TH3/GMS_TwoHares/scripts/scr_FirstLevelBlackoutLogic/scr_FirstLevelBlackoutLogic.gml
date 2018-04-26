switch(currentState) 
{
	case characterStates.startRoom:
		argument0.visible = true;
		argument0.image_alpha = clamp(argument0.image_alpha - 0.01, 0, 1)
		if argument0.image_alpha <= 0 {
			argument0.image_alpha = 0;
			argument0.visible = false; 
			currentState = characterStates.WakeUp;
		}
	break;	
	
	case characterStates.DressingUp:
		argument0.visible = true;
		argument0.image_alpha = clamp(argument0.image_alpha + 0.03, 0, 1);
		if argument0.image_alpha >= 1 {
			currentState = characterStates.DressedWalk;
		}		
	break;		
	
	case characterStates.DressedWalk:
		if argument0.visible {
			argument0.image_alpha = clamp(argument0.image_alpha - 0.03, 0, 1);
			if argument0.image_alpha <= 0 {
				argument0.image_alpha = 0;
				argument0.visible = false;
			}		
		}
	break;
	
	default:
	
	break;	
}