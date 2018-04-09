/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left){
	//room_goto(global.rmCutScene1);
	global.CurrentLevel = GameLevels.CutScene_1;
	room_goto(global.rmTransition);
}