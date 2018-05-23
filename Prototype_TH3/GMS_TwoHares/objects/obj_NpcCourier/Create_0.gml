/// @description Insert description here
//globalvar grid;
//grid = mp_grid_create(0, 0, room_width div 5, room_height div 5, 5, 5);
//mp_grid_add_instances(grid, obj_wall, true);
//path = noone;
NewPath = false;
MoveToExit = false;
WalkSoundID = undefined;
AnimIdleLeft =  spr_ProtIdleLeft;
AnimIdleRight = spr_ProtIdleRight;
AnimWalkLeft =  spr_ProtWalkLeft;
AnimWalkRight =  spr_ProtWalkRight;
SoundWalk = RoomSteps;
NewX = self.x;
NewY = self.y;
