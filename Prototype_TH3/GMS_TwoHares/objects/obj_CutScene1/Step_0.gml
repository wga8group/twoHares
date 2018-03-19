/// @description Insert description here
// You can write your code in this editor

windowWidth = window_get_width();
windowHeight = window_get_height();

//Отработка скриптов
script_execute(StepsLogic,obj_Fade,obj_Bartender,obj_ProtDrink);
script_execute(ProtagonistLogic,obj_ProtDrink);
script_execute(BartenderLogic,obj_Bartender);

//Обработка текста
charactersNumber += 1;
message = string_copy(strings[currentState], 1, charactersNumber);

//ввклюение-отключение полного экрана при нажатии ctrl + enter
if keyboard_check_direct(vk_control) && keyboard_check_pressed(vk_enter){
	if window_get_fullscreen() {
		window_set_fullscreen(false)	
	}
	else{
		window_set_fullscreen(true)
	}
}

