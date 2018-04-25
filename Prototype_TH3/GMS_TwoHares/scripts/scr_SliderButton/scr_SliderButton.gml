//Положение ползунка
var volumeButtonX = argument0.x+(argument0.sprite_width*argument2);
var volumeButtonY = argument0.y;
	
if mouse_check_button_pressed(mb_left){
	if point_in_circle(mouse_x, mouse_y, volumeButtonX, volumeButtonY, sprite_get_width(argument1)/2){
		argument0.buttonPress = true;
	}
}

if not mouse_check_button(mb_left){
	argument0.buttonPress = false;
}

if argument0.buttonPress {
	argument2 = clamp((mouse_x-x)/sprite_width,0,1);
}

//цвет курсора
if point_in_circle(mouse_x, mouse_y, volumeButtonX, volumeButtonY, sprite_get_width(argument1)/2){
	cursor_sprite = spr_CursorObjectMain;
	argument0.ChangeCursor = true;
}
else{
	if 	argument0.ChangeCursor{
		cursor_sprite = spr_CursorMain;
		argument0.ChangeCursor = false;
	}
}

//Возвращаем изменения
return argument2;