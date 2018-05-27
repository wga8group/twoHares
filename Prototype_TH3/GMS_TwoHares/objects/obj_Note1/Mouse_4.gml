/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.NoteFirstInInventory = true;
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 3;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textOfficeItemNote1_1;
		global.objDialogue.message[2] = global.textOfficeItemNote1_2;
		global.objDialogue.message[3] = global.textOfficeItemNote1_3;
		var soundID = audio_play_sound(sou_PickingUpPaper, 1, false);
		audio_sound_gain(soundID , global.VolumeSound, 0);		
		instance_destroy(self,true);
	}
}
