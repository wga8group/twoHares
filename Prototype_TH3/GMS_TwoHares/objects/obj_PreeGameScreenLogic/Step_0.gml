/// @description Insert description here

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();

if mouse_check_button_pressed(mb_left) {
	pauseBeforeStart = false;
}


if not pauseBeforeStart{
	/*
	image_speed = 1;
	//Включаем звук
	if not splashScreenSoundID && (image_index >= 1){ 
		splashScreenSoundID = audio_play_sound(Splash_screen, 1, false);
		audio_sound_gain(splashScreenSoundID, 0.5, 0);
	}

	//Переходим в меню после окончания заставки
	if (image_index >= sprite_get_number(sprite_index) - 0.6){ 
		room_goto(global.rmMainMenu);
	}
	*/
	room_goto(global.rmMainMenu);
}