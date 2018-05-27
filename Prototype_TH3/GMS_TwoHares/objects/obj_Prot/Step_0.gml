/// @description Логика 
switch(global.objFirstLevelLogic.currentState) 
{
	case characterStates.NakedWalk:
		if not global.StateBlockHeroAction {
			scr_WalkProt(obj_Prot, spr_ProtIdleNakedLeft, spr_ProtIdleNakedRight, spr_ProtWalkNakedLeft, spr_ProtWalkNakedRight, RoomSteps);
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
	            sprite_index = spr_ProtIdleNakedLeft;
	        }
	        else
	        {
	            sprite_index = spr_ProtIdleNakedRight;
	        }
			
			if x != path_get_x(path, 1) || y != path_get_y(path, 1){
				path = path_add();
				mp_grid_path(grid, path, x, y, x, y, 1)
				path_start(path, 0.7, path_action_stop, 1);
			}
		}
	break;	

	case characterStates.DressingUp:
		if global.StateBlockHeroAction {
			//спрайты состояния покоя
	        if (direction >= 90 && direction < 270)
	        {
	            sprite_index = spr_ProtIdleNakedLeft;
	        }
	        else
	        {
	            sprite_index = spr_ProtIdleNakedRight;
	        }	
			
			if x != path_get_x(path, 1) || y != path_get_y(path, 1){
				path = path_add();
				mp_grid_path(grid, path, x, y, x, y, 1)
				path_start(path, 0.7, path_action_stop, 1);
			}			
		}
	break;	

	case characterStates.DressedWalk:
		if not global.StateBlockHeroAction {
			scr_WalkProt(obj_Prot, spr_ProtIdleLeft, spr_ProtIdleRight, spr_ProtWalkLeft, spr_ProtWalkRight, RoomSteps);
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
	break;
	
	default:
	
	break;			
}