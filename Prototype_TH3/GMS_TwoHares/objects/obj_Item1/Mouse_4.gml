/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.PhoneInInventory = true;
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 3;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textFirstLevelItem1_1;
		global.objDialogue.message[2] = global.textFirstLevelItem1_2;
		global.objDialogue.message[3] =	global.textFirstLevelItem1_3;
		audio_stop_sound(PhoneSoundID);
		var soundID = audio_play_sound(sou_PickUpItem, 1, false);
		audio_sound_gain(soundID , global.VolumeSound, 0);
		instance_destroy(self,true);
	}
}
