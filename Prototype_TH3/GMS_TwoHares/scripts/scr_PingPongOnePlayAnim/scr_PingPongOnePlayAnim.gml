argument0.image_index += 0.15*argument0.image_speed;

if (argument0.image_index >= sprite_get_number(argument0.sprite_index) - 0.3){ 
	argument0.image_speed *= -1;
}

if (argument0.image_index < 0.15){
	argument0.image_speed = 0;
	argument0.image_index = 0.15
}