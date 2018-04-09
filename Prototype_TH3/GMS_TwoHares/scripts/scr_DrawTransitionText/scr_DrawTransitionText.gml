
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.fontStyle1);

var xOffset = argument1;
var alpha = 3*timeline_position/global.TransitionDuration;
if timeline_position >= global.TransitionDuration/2 {
	alpha = 2*(global.TransitionDuration - timeline_position)/global.TransitionDuration;
}


show_debug_message(alpha)

if window_get_width() >= 2560 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*15/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

if window_get_width() >= 1920 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*15/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}
	
if window_get_width() >= 1366 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*23/60, argument0, 8,8, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

if window_get_width() >= 1360 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*15/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

if window_get_width() >= 1280 && window_get_height() >= 700 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*15/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

if window_get_width() >= 1280 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*15/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

if window_get_width() >= 1024 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*15/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

if window_get_width() >= 800 {
	draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*17/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
	exit;
}

draw_text_transformed_colour(window_get_width()*(19+xOffset)/60, window_get_height()*17/60, argument0, 5,5, 0, c_white,c_white,c_white,c_white,alpha);
