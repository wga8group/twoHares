switch(argument0.dialogueState){
	
	case 0:
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textSecondLevelGirl_1;
		argument0.dialogueState = 1;
	break;
	
	case 1:
		if mouse_check_button_pressed(mb_left) {
			argument0.dialogueState = 2;
			global.objDialogueChoice.visible = true;
			global.objDialogueChoice.ChoiceSelected = 0;
			global.objButtonChoice1.messageChoice = global.textSecondLevelProtAnswer1[1];
			global.objButtonChoice2.messageChoice = global.textSecondLevelProtAnswer1[2];			
			global.objButtonChoice3.messageChoice = global.textSecondLevelProtAnswer1[3];			
			global.objButtonChoice1.visible = true;
			global.objButtonChoice2.visible = true;
			global.objButtonChoice3.visible = true;
		}
	break;	
	
	case 2:
		if global.objDialogueChoice.ChoiceSelected {
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 2;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textSecondLevelGirlChoice[global.objDialogueChoice.ChoiceSelected];
			global.objDialogue.message[2] = global.textSecondLevelProt_1;
			argument0.dialogueState = 3;
		}
	break;	

	default:
		argument0.wasDialogueWithGirl = true;
		argument0.currentState = characterStates.DressedWalk;	
		argument0.dialogueState = 0;
	break;	
}