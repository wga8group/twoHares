/// @description Insert description here
// You can write your code in this editor

if (ScriptCanBeTake(self,global.objProtagonist) == true){
	if global.objFirstLevelLogic.itemsPickUpCount >= 3 {
		room_goto(global.rmMainMenu);
	}
	else{
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = "Мне нужны все ништячки =\\";		
	}
	
}
