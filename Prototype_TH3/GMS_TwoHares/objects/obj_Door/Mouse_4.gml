/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.itemsPickUpCount);
if (global.objProtagonist.x <= x + 10) && (global.objProtagonist.x >= x - 10){
	if global.itemsPickUpCount >= 3 {
		room_goto(global.rmMainMenu);
	}
	else{
		global.objDialogue.visible = true;
		global.objDialogue.charactersNumber = 0;
		global.objDialogue.printText = "";
		global.objDialogue.message = "Мне нужны все ништячки =\\";		
	}
	
}
