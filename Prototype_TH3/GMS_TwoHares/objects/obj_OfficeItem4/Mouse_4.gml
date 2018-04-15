/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		switch(irandom(2)){
			case 0:
				global.objDialogue.message[1] = global.textOfficeItem4_1;
				break;
			case 1:
				global.objDialogue.message[1] = global.textOfficeItem4_2;
				break;
			case 2:
				global.objDialogue.message[1] = global.textOfficeItem4_3;
				break;
			default:
				global.objDialogue.message[1] = global.textDefaultMessage;
				break;
		}		
	}
}