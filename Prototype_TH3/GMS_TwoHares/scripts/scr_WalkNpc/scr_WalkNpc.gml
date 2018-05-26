argument0.depth = -1*argument0.y;

with (argument0)
{
    // handle pathfinding
	if argument0.NewPath {
		argument0.NewPath = false;
	    path = path_add();
	    if mp_grid_path(grid, path, argument0.x, argument0.y, argument1, argument2, 1)
	    {
	        path_start(path, 0.7, path_action_stop, 1);
	    }
	    else 
	    {
	        var i;
	        for (i = argument2; i <= 135; i += 1)
	        {
	            if mp_grid_path(grid, path, argument0.x, argument0.y, argument1, 0+i, 1)
	            {
	                path_start(path, 0.7, path_action_stop, 1);
	                break;
	            }
	        }
	        for (i = argument2; i > 0; i -= 1)
	        {
	            if mp_grid_path(grid, path, argument0.x, argument0.y, argument1, 0+i, 1)
	            {
	                path_start(path, 0.7, path_action_stop, 1);
	                break;
	            }
	        }
	    }	
	}

     // handle animation
    if path and (path_exists(path))
    {
		var targetx, targety;
        targetx = path_get_x(path, 1);
        targety = path_get_y(path, 1);
        if (argument0.x == targetx && argument0.y == targety)
        {
			if argument0.WalkSoundID {
				audio_stop_sound(argument0.WalkSoundID);
				argument0.WalkSoundID = undefined;
			}
            if (argument0.direction >= 90 && argument0.direction < 270)
            {
                argument0.sprite_index = argument0.AnimIdleRight;
            }
            else
            {
                argument0.sprite_index = argument0.AnimIdleLeft;
            }	
        }
        else
        {
			if not argument0.WalkSoundID {
				argument0.WalkSoundID = audio_play_sound_at(argument0.SoundWalk, argument0.x, argument0.y, 0, 100, 300, 1, true, 1);
				audio_sound_gain(argument0.WalkSoundID, global.VolumeSound, 0);
			}
            argument0.direction = point_direction(argument0.xprevious, argument0.yprevious, targetx, targety);
            if (argument0.direction >= 90 && argument0.direction < 270)
            {
                argument0.sprite_index = argument0.AnimWalkLeft;
            }
            else
            {
                argument0.sprite_index = argument0.AnimWalkRight;
            }
        }
    }
}
