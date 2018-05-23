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
			currentState = characterStates.SomeDialogue;
		}
	break;	

	case characterStates.SomeDialogue:
		global.StateBlockHeroAction = true;
		global.objDialogue.messageCount = 5;		
		global.objDialogue.message[1] = global.textFourthLevelSomeDialogue_1;	
		global.objDialogue.message[2] = global.textFourthLevelSomeDialogue_2;
		global.objDialogue.message[3] = global.textFourthLevelSomeDialogue_3;
		global.objDialogue.message[4] = global.textFourthLevelSomeDialogue_4;
		global.objDialogue.message[5] = global.textFourthLevelSomeDialogue_5;
		global.objDialogue.printText = "";			
		global.objDialogue.visible = true;
		global.objNpcCourier.NewPath = true;
		global.objNpcCourier.NewX = 16;
		global.objNpcCourier.NewY = 121;
		currentState = characterStates.DressedWalk;
	break;

	case characterStates.DressedWalk:
		
	break;
	
	case characterStates.GirlDialogue:
		
	break;	

	case characterStates.BossDialogue:
		
	break;

	default:
	break;
}