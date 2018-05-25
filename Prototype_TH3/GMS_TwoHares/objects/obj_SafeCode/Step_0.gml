/// @description Insert description here
// You can write your code in this editor
if visible {


	if addStar {
		addStar = false;
		if not obj_SafeStar1.visible{
				obj_SafeStar1.visible = true;
			exit;
		}
		if not obj_SafeStar2.visible{
				obj_SafeStar2.visible = true;
			exit;
		}	
		if not obj_SafeStar3.visible{
				obj_SafeStar3.visible = true;
			exit;
		}
		if not obj_SafeStar4.visible{
				obj_SafeStar4.visible = true;
			exit;
		}
		if not obj_SafeStar5.visible{
				obj_SafeStar5.visible = true;
			exit;
		}	
		if not obj_SafeStar6.visible{
				obj_SafeStar6.visible = true;
			exit;
		}		
	}

	if string_length(global.objSafeCode.currentPass) >= 6 {
		attempt += 1;
		global.objSafeCode.visible = false;
		if currentPass == global.BossSafePass {
			global.OfficeSafeOpen = true;
			global.objDialogue.message[1] = global.textOfficeSafeSuccess_1;	
			global.objDialogue.message[2] = global.textOfficeSafeSuccess_2;	
			global.objDialogue.message[3] = global.textOfficeSafeSuccess_3;	
			global.objDialogue.messageCount = 3;
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;
			exit;
		}
		switch(attempt){
			case 1:
				global.objDialogue.message[1] = errorMessage1;	
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.visible = true;			
			break;
			
			case 2:
				global.objDialogue.message[1] = errorMessage2;	
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.visible = true;
				
				global.objInventoryPhone.message[1] = global.textOfficePhoneMessage;	
				global.objInventoryPhone.messageCount = 1;				
				global.objInventoryPhone.HasMessage = true;
				global.objInventoryPhone.PlaySound = true;
			break;
			
			default:
				global.objDialogue.message[1] = errorMessage3;	
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.visible = true;			
			break;
		}
	}

}
