depth = -1*y;

with (argument0)
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
                sprite_index = argument1;
            }
            else
            {
                sprite_index = argument2;
            }
        }
        else
        {
            direction = point_direction(xprevious, yprevious, targetx, targety);
            if (direction >= 90 && direction < 270)
            {
                sprite_index = argument3;
            }
            else
            {
                sprite_index = argument4;
            }
        }
    }
}
