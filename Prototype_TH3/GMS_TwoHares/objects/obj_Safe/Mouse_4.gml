/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if global.OfficeSafeOpen {
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textOfficeSafeEnd;				
		}
		else{
			global.objSafeCode.errorMessage1 = global.textOfficeSafeError_1;
			global.objSafeCode.errorMessage2 = global.textOfficeSafeError_2;
			global.objSafeCode.errorMessage3 = global.textOfficeSafeError_3;
			global.objSafeCode.currentPass = "";
			global.objSafeCode.visible = true;
		}
	}
}
