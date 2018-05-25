/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.ScrewdriverInInventory  = true;
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textTakeScrewdriverMessage;
		instance_destroy(self,true);
	}
}
