/// @description Insert description here
if not global.StateBlockHeroAction {
	scr_WalkNpc(self,self.NewX,self.NewY);
}
else{
	//отключаем звук ходьбы
	if WalkSoundID {
		audio_stop_sound(WalkSoundID);
		WalkSoundID = undefined;
	}
	//спрайты состояния покоя
	if path {
		if self.x != path_get_x(path, 1) || self.y != path_get_y(path, 1){
			if (self.direction >= 90 && self.direction < 270)
			{
			    self.sprite_index = self.AnimIdleLeft;
			}
			else
			{
			    self.sprite_index = self.AnimIdleRight;
			}
		}
	}
}

