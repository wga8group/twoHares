/// @description Insert description here
// You can write your code in this editor

if (ScriptCanBeTake(self,global.objProtagonist) == true){
	global.objFirstLevelLogic.itemsPickUpCount += 1;
	global.objDialogue.visible = true;
	global.objDialogue.messageCount = 1;
	global.objDialogue.printText = "";
	global.objDialogue.message[1] = "Ммм, ништячок";
	instance_destroy(self,true);
}
