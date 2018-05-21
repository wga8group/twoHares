/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if IsFirstClick {
			IsFirstClick = false;
			safeSoundID = audio_play_sound_at(SafeOpen, self.x, self.y, 0, 100, 300, 1, false, 1);
			audio_sound_gain(safeSoundID, global.VolumeSound, 0);
			self.sprite_index = global.sprSafe;
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textOfficeSafeFirstClick;			
		}
		else{
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
}
