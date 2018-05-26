switch(argument0.dialogueState){
	
	case 0:
		global.objDialogue.messageCount = 1;
		global.objDialogue.message[1] = global.textFourthLevelGirl_1;
		global.objDialogue.printText = "";
		global.objDialogue.visible = true;
		argument0.dialogueState = 1;
	break;
	
	case 1:
		if mouse_check_button_pressed(mb_left) {
			global.objDialogueChoice.ChoiceSelected = 0;
			global.objButtonChoice1.messageChoice = global.textFourthLevelGirlChoice[1];
			global.objButtonChoice2.messageChoice = global.textFourthLevelGirlChoice[2];			
			global.objButtonChoice3.messageChoice = global.textFourthLevelGirlChoice[3];			
			global.objDialogueChoice.visible = true;
			global.objButtonChoice1.visible = true;
			global.objButtonChoice2.visible = true;
			global.objButtonChoice3.visible = true;
			argument0.dialogueState = 2;
		}
	break;	
	
	case 2:
		if global.objDialogueChoice.ChoiceSelected {
			global.objDialogue.messageCount = 1;
			global.objDialogue.message[1] = global.textFourthLevelGirlChoice[global.objDialogueChoice.ChoiceSelected+3];
			if global.objDialogueChoice.ChoiceSelected == 3 {
				global.objDialogue.messageCount = 3;
				global.objDialogue.message[2] = global.textFourthLevelGirlChoice[7];
				global.objDialogue.message[3] = global.textFourthLevelGirlChoice[8];
			}
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;
			argument0.dialogueState = 3;
		}
	break;	

	default:
		argument0.wasDialogueWithGirl = true;
		argument0.currentState = characterStates.DressedWalk;	
		argument0.dialogueState = 0;
	break;	
}