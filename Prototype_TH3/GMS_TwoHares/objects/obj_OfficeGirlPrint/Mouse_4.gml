/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		
		//var soundID = audio_play_sound(sou_Keyboard, 1, false);
		//audio_sound_gain(soundID , global.VolumeSound, 0);

	
		if global.objLogicLevel2.wasDialogueWithGirl {
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = global.textSecondLevelGirl_2;			
		}
		else{
			global.objLogicLevel2.currentState = characterStates.GirlDialogue;
		}
	}
}