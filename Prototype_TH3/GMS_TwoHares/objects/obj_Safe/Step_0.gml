/// @description Insert description here
if global.OfficeSafeOpen {
	if self.sprite_index != global.sprSafeHidden {
		self.sprite_index = global.sprSafeHidden;
		safeSoundID = audio_play_sound_at(SafeClose, self.x, self.y, 0, 100, 300, 1, false, 1);
		audio_sound_gain(safeSoundID, global.VolumeSound, 0);
	}
}
