/// @description Insert description here
// You can write your code in this editor

if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if global.objLogicLevel4.wasDialogueWithBoss {
			global.objDialogue.message[1] = global.textFourthLevelBoss_2;
			global.objDialogue.messageCount = 1;			
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;	
			exit;
		}
		global.objLogicLevel4.currentState = characterStates.BossDialogue;
	}
}