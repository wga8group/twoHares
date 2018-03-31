/// @description Insert description here
// You can write your code in this editor

//Смена курсора. Необходимо для его нормальной отработки.
cursor_sprite = spr_CursorMain;

//Активация чекпоинтов
switch(global.CurrentCheckpointsAvailable){
	case 1:
		obj_ButtonCheckpoint1.visible = true;
	case 2:
	
	case 3:
	
	default:
	break;
}