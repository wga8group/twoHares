/// @description Insert description here
// You can write your code in this editor
if (visible == true) {
	if mouse_check_button_pressed(mb_left) {
		clickCount += 1;
	}
	
	if clickCount >= 4 {
		clickCount = 0;
		visible = false;
	}
}