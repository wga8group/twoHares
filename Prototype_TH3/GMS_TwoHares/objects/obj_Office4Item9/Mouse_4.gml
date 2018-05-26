/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if global.objLogicLevel4.endOfDay {
			exit;
		}
		
		if global.StoneInInventory
		and global.objLogicLevel4.wasDialogueWithBoss 
		and	global.objLogicLevel4.wasEndRepairPC {
			global.objLogicLevel4.endOfDay = true;
			global.objLogicLevel4.currentState = characterStates.DressingUp;
			exit;
		}
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textFourthLevelItem9;		
	}
}