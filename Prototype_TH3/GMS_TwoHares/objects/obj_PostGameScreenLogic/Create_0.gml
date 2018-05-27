/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_Title;
depth = -1000;
x = 0;
y = 0;
visible = true;

self.pauseBeforeEnd = true;

var soundID = audio_play_sound(VibroAlarmPhone, 1, false);
audio_sound_gain(soundID , global.VolumeSound, 0);