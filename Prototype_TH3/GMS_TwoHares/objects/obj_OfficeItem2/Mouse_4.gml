/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 2;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textOfficeItem2_1;
		global.objDialogue.message[2] = global.textOfficeItem2_2;
	}
}