/// @description Insert description here
// You can write your code in this editor

//Горячие клавиши (полный экран, меню и т.д.)
script_execute(scr_HotKeysWork);

//Логика уровня
switch(currentState){
	
	case characterStates.startRoom:
		global.objBlackout.visible = true;
		global.objBlackout.image_alpha = clamp(global.objBlackout.image_alpha - 0.01, 0, 1)
		if global.objBlackout.image_alpha <= 0 {
			global.objBlackout.image_alpha = 0;
			global.objBlackout.visible = false; 
			global.StateBlockHeroAction = false;
			currentState = OfficeStatesLevel2.Walk;
		}
	break;	
	
	case OfficeStatesLevel2.Walk:
		
	break;
	
	case OfficeStatesLevel2.GirlDialogue:
		scr_StepLogicLevel2(self);
	break;	
	
	default:
	break;
}