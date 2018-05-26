/// @description Insert description here
if visible {
	global.objDialogue.message[1] = global.textUseScrewdriverMessage;	
	global.objDialogue.messageCount = 1;

	if (scr_CanBeTake(global.objOffice4GirlPC,global.objProtagonist) == true){
		if global.objLogicLevel4.wasDialogueWithGirl {
			global.objDialogue.message[1] = global.textFourthLevelGirlPC_6;	
			global.objDialogue.messageCount = 1;
			global.ScrewdriverInInventory = false;
			global.objLogicLevel4.wasUsedScrewdriver = true;
		}
	}
	
	global.objDialogue.printText = "";
	global.objDialogue.visible = true;	
}