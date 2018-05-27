/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		
		if global.objLogicLevel4.wasUsedPaste {
			global.objDialogue.messageCount = 1;
			global.objDialogue.message[1] = global.textFourthLevelGirl_5;
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;
			exit;			
		}
		
		if global.objLogicLevel4.wasDialogueWithPC 
		and not global.BrushInInventory
		and not global.objLogicLevel4.wasUsedBrush {
			var soundID = audio_play_sound(sou_PickUpItem, 1, false);
			audio_sound_gain(soundID , global.VolumeSound, 0);
			global.BrushInInventory = true;
			global.objDialogue.messageCount = 2;
			global.objDialogue.message[1] = global.textFourthLevelGirl_3;
			global.objDialogue.message[2] = global.textFourthLevelGirl_4;
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;
			exit;
		}
		
		if global.objLogicLevel4.wasDialogueWithGirl {
			global.objDialogue.messageCount = 1;
			global.objDialogue.message[1] = global.textFourthLevelGirl_2;
			global.objDialogue.printText = "";
			global.objDialogue.visible = true;
			exit;
		}
		
		global.objLogicLevel4.currentState = characterStates.GirlDialogue;
	}
}