/// @description Insert description here
// You can write your code in this editor
var soundID = audio_play_sound(sou_MenuBatton, 1, false);
audio_sound_gain(soundID , global.VolumeSound, 0);

room_goto(global.rmMenuChekpoints);
