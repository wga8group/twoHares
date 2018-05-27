/// @description Insert description here
// You can write your code in this editor

if not global.StateBlockHeroAction {
	var soundID = audio_play_sound(sou_OpenInventory, 1, false);
	audio_sound_gain(soundID , global.VolumeSound, 0);	
	global.objInventoryTable.visible = true;
	global.StateBlockHeroAction = true;
}

	
