/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if global.objLogicLevel2.chosenAnswerWithBoss_1 && global.objLogicLevel2.chosenAnswerWithBoss_2 {
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textSecondLevelBoss_2;			
		}
		else{
			global.objLogicLevel2.currentState = characterStates.BossDialogue;
		}
	}
}