/// @description Insert description here
//globalvar grid;
//grid = mp_grid_create(0, 0, room_width div 5, room_height div 5, 5, 5);
//mp_grid_add_instances(grid, obj_wall, true);
//path = noone;
NewPath = false;
path = undefined;
MoveToExit = false;
WalkSoundID = undefined;
AnimIdleLeft =  spr_CourierIdleLeft;
AnimIdleRight = spr_CourierIdleRight;
AnimWalkLeft =  spr_CourierWalkLeft;
AnimWalkRight =  spr_CourierWalkRight;
SoundWalk = RoomSteps;
NewX = self.x;
NewY = self.y;
