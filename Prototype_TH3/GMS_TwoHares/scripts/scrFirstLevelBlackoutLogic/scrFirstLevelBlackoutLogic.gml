switch(currentState) 
{
	case characterStates.startRoom:
		argument0.visible = true;
		argument0.image_alpha = clamp(argument0.image_alpha - 0.02, 0, 1)
		show_debug_message(argument0.image_alpha);
		if argument0.image_alpha <= 0 {
			argument0.image_alpha = 0;
			argument0.visible = false; 
			currentState = characterStates.WakeUp;
			global.StateBlockHeroAction = false;
		}
	break;	
	
	default:
	
	break;	
}