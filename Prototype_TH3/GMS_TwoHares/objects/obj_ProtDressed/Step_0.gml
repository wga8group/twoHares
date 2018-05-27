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
	
	if x != path_get_x(path, 1) || y != path_get_y(path, 1){
		path = path_add();
		mp_grid_path(grid, path, x, y, x, y, 1)
		path_start(path, 0.7, path_action_stop, 1);
	}
}
