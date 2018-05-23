/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.objDialogue.messageCount = 1;		
		global.objDialogue.message[1] = global.textFourthLevelDoor;	
		global.objDialogue.printText = "";			
		global.objDialogue.visible = true;
	}
}	
	


