/// @description Insert description here

//Для отработки горячих клавишь
scr_HotKeysWork();

//Включаем звук
if not splashScreenSoundID && (image_index >= 1){ 
	splashScreenSoundID = audio_play_sound(Splash_screen, 1, false);
	audio_sound_gain(splashScreenSoundID, 0.5, 0);
}

//Переходим в меню после окончания заставки
if (image_index >= sprite_get_number(sprite_index) - 0.6){ 
	room_goto(global.rmMainMenu);
}