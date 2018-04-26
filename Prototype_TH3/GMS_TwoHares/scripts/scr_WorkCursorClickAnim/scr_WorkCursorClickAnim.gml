//Смена курсора по клику мыши
if global.ChangeCursor {
	if global.ChangeCursorThink < 3 {
		global.ChangeCursorThink += 1;
	}
	else{
		scr_ToggleCursor();
		global.ChangeCursor = false;
		global.ChangeCursorThink = 0;
	}
}

if mouse_check_button_pressed(mb_left){
	scr_ToggleCursor();
	global.ChangeCursor = true;
}