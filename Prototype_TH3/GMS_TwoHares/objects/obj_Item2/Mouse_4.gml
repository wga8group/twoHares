/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		global.objFirstLevelLogic.computerPickUp = true;
		global.objFirstLevelLogic.objFirstNews.visible = true;
		
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 3;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textFirstLevelItem2_1;
		global.objDialogue.message[2] = global.textFirstLevelItem2_2;
		global.objDialogue.message[3] =	global.textFirstLevelItem2_3;
		
	}
}
