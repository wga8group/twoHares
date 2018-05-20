/// @description Insert description here
// You can write your code in this editor

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();
scr_WorkBlockHeroAction(currentState);

//Логика уровня
switch(currentState){
	
	case characterStates.startRoom:
		global.objBlackout.visible = true;
		global.objBlackout.image_alpha = clamp(global.objBlackout.image_alpha - 0.01, 0, 1)
		if global.objBlackout.image_alpha <= 0 {
			global.objBlackout.image_alpha = 0;
			global.objBlackout.visible = false; 
			currentState = characterStates.DressedWalk;
		}
	break;	
	
	case characterStates.DressedWalk:
		
	break;
	
	default:
	break;
}