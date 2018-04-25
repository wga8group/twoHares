/// @description Настройка параметров
globalvar grid;
grid = mp_grid_create(0, 0, room_width div 5, room_height div 5, 5, 5);
mp_grid_add_instances(grid, obj_wall, true);
path = noone;
WalkSoundID = undefined;


