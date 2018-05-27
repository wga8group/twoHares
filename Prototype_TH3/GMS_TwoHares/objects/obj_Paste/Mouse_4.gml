/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.PasteInInventory  = true;
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textTakePasteMessage;
		var soundID = audio_play_sound(sou_PickUpItem, 1, false);
		audio_sound_gain(soundID , global.VolumeSound, 0);		
		instance_destroy(self,true);
	}
}
