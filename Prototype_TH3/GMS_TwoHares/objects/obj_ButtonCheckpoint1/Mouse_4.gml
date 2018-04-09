/// @description Insert description here
// You can write your code in this editor
if visible {
	if mouse_check_button_pressed(mb_left){
		global.CurrentLevel = GameLevels.Level_1;
		room_goto(global.rmTransition);
	}
}