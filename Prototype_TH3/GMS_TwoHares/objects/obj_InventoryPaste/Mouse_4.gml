/// @description Insert description here
if visible {
	global.objDialogue.message[1] = global.textUsePasteMessage;	
	global.objDialogue.messageCount = 1;

	if (scr_CanBeTake(global.objOffice4GirlPC,global.objProtagonist) == true){
		if global.objLogicLevel4.wasDialogueWithGirl{
			global.objDialogue.message[1] = global.textFourthLevelGirlPC_10;	
			global.objDialogue.messageCount = 1;
			
			if global.objLogicLevel4.wasUsedScrewdriver {
				global.objDialogue.message[1] = global.textFourthLevelGirlPC_11;	
				global.objDialogue.messageCount = 1;				
			}
			
			if global.objLogicLevel4.wasUsedBrush {
				global.objDialogue.message[1] = global.textFourthLevelGirlPC_8;
				global.objDialogue.message[2] = global.textFourthLevelGirlPC_9;	
				global.objDialogue.messageCount = 2;
				global.PasteInInventory = false;
				global.objLogicLevel4.wasUsedPaste = true;
				global.objLogicLevel4.wasEndRepairPC = true;
				global.objOffice4Girl.sprite_index = spr_OfficeGirlPrint;
			}
		}
	}
	
	global.objDialogue.printText = "";
	global.objDialogue.visible = true;	
}