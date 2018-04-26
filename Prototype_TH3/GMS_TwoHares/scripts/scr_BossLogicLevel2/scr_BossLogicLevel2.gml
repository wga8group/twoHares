switch(argument0.dialogueState){
	
	case 0:
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textSecondLevelBoss_1;
		argument0.clickCount = 0;
		argument0.dialogueState = 1;
	break;
	
	case 1:
		if mouse_check_button_pressed(mb_left) {
			argument0.clickCount += 1;
			if argument0.clickCount >= 1 {
				argument0.dialogueState = 2;
				global.objDialogueChoice.visible = true;
				global.objDialogueChoice.ChoiceSelected = 0;
				global.objButtonChoice1.messageChoice = global.textSecondLevelProtAnswer2[1];
				global.objButtonChoice2.messageChoice = global.textSecondLevelProtAnswer2[2];
				global.objButtonChoice3.messageChoice = global.textSecondLevelProtAnswer2[3];			
			
				if !argument0.chosenAnswerWithBoss_1 {
					global.objButtonChoice1.visible = true;
				}
			
				if !argument0.chosenAnswerWithBoss_2 {
					global.objButtonChoice2.visible = true;
				}
				global.objButtonChoice3.visible = true;
			}
		}
	break;	
	
	case 2:
		if global.objDialogueChoice.ChoiceSelected {
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 2;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textSecondLevelBossChoice[global.objDialogueChoice.ChoiceSelected];
			global.objDialogue.message[2] = global.textSecondLevelBossChoice[global.objDialogueChoice.ChoiceSelected+3];
			argument0.dialogueState = 1;
			
			if global.objDialogueChoice.ChoiceSelected == 1 {
				argument0.chosenAnswerWithBoss_1 = true; 
			}
			if global.objDialogueChoice.ChoiceSelected == 2 {
				argument0.chosenAnswerWithBoss_2 = true;
			}
			if global.objDialogueChoice.ChoiceSelected == 3 {
				argument0.dialogueState = 3;
			}	
			argument0.clickCount = -1;
		}
	break;	

	default:
		argument0.currentState = characterStates.DressedWalk;
		argument0.dialogueState = 0;
	break;	
}