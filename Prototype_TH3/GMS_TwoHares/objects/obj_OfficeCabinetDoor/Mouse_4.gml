/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.objDialogue.message[1] = global.textThirdLevelDoor_1;
		if	global.AlcoholInInventory {
			if global.OfficeSafeOpen {
				cursor_sprite = spr_CursorMain;
				global.CurrentLevel = GameLevels.Level_4;
				room_goto(global.rmTransition);
				exit;
			}
		global.objDialogue.message[1] = global.textThirdLevelDoor_2;			
		}
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";		
	}
}	
	

/*
if global.objLogicLevel2.chosenAnswerWithBoss_1 {
			if global.objLogicLevel2.wasDialogueWithGirl {
				cursor_sprite = spr_CursorMain;
				//global.CurrentLevel = GameLevels.Level_3;
				//room_goto(global.rmTransition);	
				room_goto(global.rmMainMenu);
			}
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textSecondLevelDoor2;
			exit;
		}
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textSecondLevelDoor1;	
