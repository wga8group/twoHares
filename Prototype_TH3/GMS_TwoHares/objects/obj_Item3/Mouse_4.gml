/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.itemsPickUpCount);
if (global.objProtagonist.x <= x + 10) && (global.objProtagonist.x >= x - 10){
	global.itemsPickUpCount += 1;
	//instance_create_layer(x,y,"Text",obj_DialogueTest);
	global.objDialogue.visible = true;
	global.objDialogue.charactersNumber = 0;
	global.objDialogue.printText = "";
	global.objDialogue.message = "Ммм, ништячок";
	instance_destroy(self,true);
}
else{
	show_debug_message("not near");
}