/// @description Insert description here


//global.rmPreeGameSettings.image_index += 0.15*global.rmPreeGameSettings.image_speed;
show_debug_message(image_index);
if (image_index >= sprite_get_number(sprite_index) - 0.6){ 
	room_goto(global.rmMainMenu);
}