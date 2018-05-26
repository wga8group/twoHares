/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){

		global.objDialogue.messageCount = 1;
		global.objDialogue.message[1] = global.textFourthLevelGirlPC_1;
		
		if global.objLogicLevel4.wasDialogueWithGirl{
			if global.objLogicLevel4.wasDialogueWithPC {
				global.objDialogue.messageCount = 1;
				global.objDialogue.message[1] = global.textFourthLevelGirlPC_4;
			}
			else{			
				global.objDialogue.messageCount = 2;
				global.objDialogue.message[1] = global.textFourthLevelGirlPC_2;
				global.objDialogue.message[2] = global.textFourthLevelGirlPC_3;
				global.objLogicLevel4.wasDialogueWithPC = true;
			}
		}	
		
		if global.objLogicLevel4.canRepairPC {
			global.objDialogue.messageCount = 1;
			global.objDialogue.message[1] = global.textFourthLevelGirlPC_5;
		}		
		
		if global.objLogicLevel4.wasEndRepairPC {
			global.objDialogue.messageCount = 1;
			global.objDialogue.message[1] = global.textFourthLevelGirlPC_12;
		}		
				
		global.objDialogue.printText = "";		
		global.objDialogue.visible = true;		
	}
}