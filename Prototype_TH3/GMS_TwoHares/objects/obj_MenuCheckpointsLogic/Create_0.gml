/// @description Insert description here
// You can write your code in this editor

//Смена курсора. Необходимо для его нормальной отработки.
cursor_sprite = spr_CursorMain;

//Активация чекпоинтов
switch(global.CurrentCheckpointsAvailable){
	case 4:
		obj_ButtonCheckpoint4.visible = true;	
	case 3:
		obj_ButtonCheckpoint3.visible = true;
	case 2:
		obj_ButtonCheckpoint2.visible = true;
	case 1:
		obj_ButtonCheckpoint1.visible = true;
	default:
	break;
}