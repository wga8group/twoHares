/// @description Insert description here
PhoneSoundID = audio_play_sound_at(VibroAlarmPhone, x, y, 0, 100, 300, 1, true, 1);
audio_sound_gain(PhoneSoundID, 0, 0);
audio_sound_gain(PhoneSoundID, global.VolumeSound, 1000);
