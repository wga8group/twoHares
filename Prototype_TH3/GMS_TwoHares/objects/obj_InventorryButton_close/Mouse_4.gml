/// @description Insert description here

if(global.objInventoryTable.visible)
{
	var soundID = audio_play_sound(sou_CloseInventory, 1, false);
	audio_sound_gain(soundID , global.VolumeSound, 0);	
	global.objInventoryTable.visible=false;
	global.ClickAfterInventory = true;
	global.StateBlockHeroAction = false;
}
