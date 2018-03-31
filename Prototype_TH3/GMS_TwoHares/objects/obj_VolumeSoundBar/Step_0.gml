/// @description Insert description here

//Ползунок
if mouse_check_button_pressed(mb_left){
	var volumeButtonX = x+(sprite_width*currentVolume);
	var volumeButtonY = y;
	
	if point_in_circle(mouse_x, mouse_y, volumeButtonX, volumeButtonY, sprite_get_width(sprVolumeSlideButton)/2){
		buttonPress = true;
	}
}

if not mouse_check_button(mb_left){
	buttonPress = false;
}

if buttonPress {
	currentVolume = clamp((mouse_x-x)/sprite_width,0,1);
}


//Заносим изменения в глобалку
global.VolumeSound = currentVolume;
