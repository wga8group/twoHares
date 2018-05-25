/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if global.objLogicLevel4.wasDialogueWithCourier {
			global.objDialogue.messageCount = 1;
			global.objDialogue.message[1] = global.textFourthLevelCourier_8;			
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;
			exit;
		}
		global.objLogicLevel4.wasDialogueWithCourier = true;
		global.StoneInInventory = true;
		global.objDialogue.messageCount = 7;
		global.objDialogue.message[1] = global.textFourthLevelCourier_1;
		global.objDialogue.message[2] = global.textFourthLevelCourier_2;
		global.objDialogue.message[3] = global.textFourthLevelCourier_3;
		global.objDialogue.message[4] = global.textFourthLevelCourier_4;
		global.objDialogue.message[5] = global.textFourthLevelCourier_5;
		global.objDialogue.message[6] = global.textFourthLevelCourier_6;
		global.objDialogue.message[7] = global.textFourthLevelCourier_7;			
		global.objDialogue.printText = "";
		global.objDialogue.visible = true;		
	}
}