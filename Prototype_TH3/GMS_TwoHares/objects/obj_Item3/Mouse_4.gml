/// @description Insert description here
// You can write your code in this editor

if (ScriptCanBeTake(obj_Item3,global.objProtagonist) == true){
	global.itemsPickUpCount += 1;
	global.objDialogue.visible = true;
	global.objDialogue.messageCount = 1;
	global.objDialogue.printText = "";
	global.objDialogue.message[1] = "Ммм, ништячок";
	instance_destroy(self,true);
}
else{
	show_debug_message("not near");
}