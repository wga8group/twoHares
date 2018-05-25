/// @description Insert description here
if global.PhoneInInventory and self.PlaySound {
	self.PlaySound = false;
	if not self.PhoneSoundID {
		self.PhoneSoundID = audio_play_sound_at(VibroPhone, self.x, self.y, 0, 100, 300, 1, false, 1);
		audio_sound_gain(self.PhoneSoundID, global.VolumeSound, 0);	
	}
}
