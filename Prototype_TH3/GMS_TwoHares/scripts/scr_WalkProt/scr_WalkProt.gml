argument0.depth = -1*argument0.y;

if mouse_check_button_pressed(mb_left) and global.ClickAfterInventory {	
	global.ClickAfterInventory = false;
	exit;
}


with (argument0)
{
    // handle pathfinding
    if mouse_check_button_pressed(mb_left)
    {	
        path = path_add();
		
        if mp_grid_path(grid, path, argument0.x, argument0.y, mouse_x, mouse_y, 1)
        {
            path_start(path, 0.7, path_action_stop, 1);
        }
        else 
        {
	        var i;
	        for (i = mouse_y; i <= 135; i += 1)
	        {
	            if mp_grid_path(grid, path, argument0.x, argument0.y, mouse_x, 0+i, 1)
	            {
	                path_start(path, 0.7, path_action_stop, 1);
	                break;
	            }
	        }
	        for (i = mouse_y; i > 0; i -= 1)
	        {
	            if mp_grid_path(grid, path, argument0.x, argument0.y, mouse_x, 0+i, 1)
	            {
	                path_start(path, 0.7, path_action_stop, 1);
	                break;
	            }
	        }
	        for (i = mouse_x; i <= 240; i += 1)
	        {
	            if mp_grid_path(grid, path, argument0.x, argument0.y, 0+i, mouse_y, 1)
	            {
	                path_start(path, 0.7, path_action_stop, 1);
	                break;
	            }
	        }
	        for (i = mouse_x; i > 0; i -= 1)
	        {
				if mp_grid_path(grid, path, argument0.x, argument0.y, 0+i, mouse_y, 1)
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

        if argument0.x <= targetx+3 
		and argument0.x >= targetx-3 
		and argument0.y <= targety+3
		and argument0.y >= targety-3
        {
			if argument0.WalkSoundID {
				audio_stop_sound(argument0.WalkSoundID);
				argument0.WalkSoundID = undefined;
			}
            if (argument0.direction >= 90 && argument0.direction < 270)
            {
                argument0.sprite_index = argument1;
            }
            else
            {
                argument0.sprite_index = argument2;
            }
        }
        else
        {
			if not argument0.WalkSoundID {
				argument0.WalkSoundID = audio_play_sound_at(argument5, argument0.x, argument0.y, 0, 100, 300, 1, true, 1);
				audio_sound_gain(argument0.WalkSoundID, global.VolumeSound, 0);
			}
            argument0.direction = point_direction(argument0.xprevious, argument0.yprevious, targetx, targety);
            if (argument0.direction >= 90 && argument0.direction < 270)
            {
                argument0.sprite_index = argument3;
            }
            else
            {
                argument0.sprite_index = argument4;
            }
        }
    }	
}
