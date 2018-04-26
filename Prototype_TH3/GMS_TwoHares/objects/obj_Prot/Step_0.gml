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
		}
	break;
	
	default:
	
	break;			
}


/*
depth = -1*y;

with (obj_Prot)
{
    // handle pathfinding
    if mouse_check_button_pressed(mb_left)
    {
        path = path_add();
        if mp_grid_path(grid, path, x, y, mouse_x, mouse_y, 1)
        {
            path_start(path, 0.7, path_action_stop, 1);
        }
        else 
        {
            var i;
            for (i = mouse_y; i <= 135; i += 1)
            {
                if mp_grid_path(grid, path, x, y, mouse_x, 0+i, 1)
                {
                    path_start(path, 0.7, path_action_stop, 1);
                    break;
                }
            }
            for (i = mouse_y; i > 0; i -= 1)
            {
                if mp_grid_path(grid, path, x, y, mouse_x, 0+i, 1)
                {
                    path_start(path, 0.7, path_action_stop, 1);
                    break;
                }
            }
        }
    }
    
     // handle animation
    if (path_exists(path))
    {
        var targetx, targety;
        targetx = path_get_x(path, 1);
        targety = path_get_y(path, 1);
        if (x == targetx && y == targety)
        {
            if (direction >= 90 && direction < 270)
            {
                sprite_index = spr_ProtIdleLeft;
            }
            else
            {
                sprite_index = spr_ProtIdleRight;
            }
        }
        else
        {
            direction = point_direction(xprevious, yprevious, targetx, targety);
            if (direction >= 90 && direction < 270)
            {
                sprite_index = spr_ProtWalkLeft;
            }
            else
            {
                sprite_index = spr_ProtWalkRight;
            }
        }
    }
}
