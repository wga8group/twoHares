/// @description Insert description here

audio_stop_all();
menuMusicID = audio_play_sound(musMenuMain, 1, false);
audio_sound_gain(menuMusicID, 0, 0);
audio_sound_gain(menuMusicID, global.VolumeMusic, 5000);