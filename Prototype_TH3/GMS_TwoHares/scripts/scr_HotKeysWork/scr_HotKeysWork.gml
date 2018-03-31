//ввклюение-отключение полного экрана при нажатии alt + enter
if keyboard_check_direct(vk_alt) && keyboard_check_pressed(vk_enter){
	if window_get_fullscreen() {
		window_set_fullscreen(false)	
	}
	else{
		window_set_fullscreen(true)
	}
}

//Выход в главное меню
if keyboard_check_direct(vk_escape){
	room_goto(global.rmMainMenu);
}


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
//------------------------------------