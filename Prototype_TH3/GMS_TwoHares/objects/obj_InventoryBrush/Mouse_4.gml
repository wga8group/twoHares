/// @description Insert description here
if visible {
	global.objDialogue.message[1] = global.textUseBrushMessage;	
	global.objDialogue.messageCount = 1;

	if (scr_CanBeTake(global.objOffice4GirlPC,global.objProtagonist) == true){
		if global.objLogicLevel4.wasDialogueWithGirl{
			global.objDialogue.message[1] = global.textFourthLevelGirlPC_10;	
			global.objDialogue.messageCount = 1;
			
			if global.objLogicLevel4.wasUsedScrewdriver {
				global.objDialogue.message[1] = global.textFourthLevelGirlPC_7;	
				global.objDialogue.messageCount = 1;
				global.BrushInInventory = false;
				global.objLogicLevel4.wasUsedBrush = true;
			}
		}
	}
	
	global.objDialogue.printText = "";
	global.objDialogue.visible = true;	
}