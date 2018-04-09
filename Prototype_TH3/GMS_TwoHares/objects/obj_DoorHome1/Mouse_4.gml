/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		switch(global.objFirstLevelLogic.currentState) 
		{
			case characterStates.NakedWalk:
				if global.objFirstLevelLogic.phonePickUp {
					global.objDialogue.visible = true;
					global.objDialogue.messageCount = 1;
					global.objDialogue.printText = "";
					global.objDialogue.message[1] = global.textFirstLevelDoor1;
					return 0;
				}
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = global.textFirstLevelDoor2;
			break;
	
			case characterStates.DressedWalk:
				if global.objFirstLevelLogic.phonePickUp {
					if global.objFirstLevelLogic.computerPickUp {
						cursor_sprite = spr_CursorMain;
						global.CurrentLevel = GameLevels.Level_2;
						room_goto(global.rmTransition);
						return 0;
					}
					global.objDialogue.visible = true;
					global.objDialogue.messageCount = 1;
					global.objDialogue.printText = "";
					global.objDialogue.message[1] = global.textFirstLevelDoor3;
					return 0;
				}
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = global.textFirstLevelDoor4;					

			break;
	
			default:
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = global.textFirstLevelDoor5;
			break;	
		}
	}
	
}	
	
	
	/*
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		if global.objFirstLevelLogic.itemsPickUpCount >= 1 {
			room_goto(global.rmMainMenu);
		}
		else{
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = "ТОМ: \nМне нужны все ништячки =\\";		
		}
	
	}


