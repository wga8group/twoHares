/// @description Insert description here
if not global.StateBlockHeroAction {
	scr_WalkProt(obj_ProtDressed, spr_ProtIdleLeft, spr_ProtIdleRight, spr_ProtWalkLeft, spr_ProtWalkRight, RoomSteps);
}
else{
	//отключаем звук ходьбы
	if WalkSoundID {
		audio_stop_sound(WalkSoundID);
		WalkSoundID = undefined;
	}
	//спрайты состояния покоя
	if (direction >= 90 && direction < 270)
	{
	    sprite_index = spr_ProtIdleLeft;
	}
	else
	{
	    sprite_index = spr_ProtIdleRight;
	}
}
