/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.itemsPickUpCount);
if (ScriptCanBeTake(obj_DoorHome1,global.objProtagonist) == true){
	if global.itemsPickUpCount >= 3 {
		room_goto(global.rmMainMenu);
	}
	else{
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = "Мне нужны все ништячки =\\";		
	}
	
}
