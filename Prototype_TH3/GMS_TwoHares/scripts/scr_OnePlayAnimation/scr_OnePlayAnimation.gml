
//через остановку скорости проигрывания
argument0.image_index += 0.15*argument0.image_speed;

if (argument0.image_index >= sprite_get_number(argument0.sprite_index) - 0.6){ 
	argument0.image_speed = 0;
}


//через дополнительный кадр в конце
/*
if (argument0.image_index >= sprite_get_number(argument0.sprite_index) - 1){
	
	argument0.image_index = sprite_get_number(argument0.sprite_index)-1;
}
else{
	argument0.image_index += 0.15*argument0.image_speed;
}
*/