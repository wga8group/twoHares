
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(global.fontStyle1);


if window_get_width() >= 2560 {
	draw_text_ext_transformed_colour(window_get_width()/2, 30, argument0, 15, window_get_width()*20/60, 4, 4, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

if window_get_width() >= 1920 {
	draw_text_ext_transformed_colour(window_get_width()/2, 30, argument0, 15, window_get_width()*20/60, 3.5, 3.5, 0, c_red,c_red,c_red,c_red,1);
	exit;
}
	
if window_get_width() >= 1366 {
	draw_text_ext_transformed_colour(window_get_width()/2, 20, argument0, 15, window_get_width()*20/60, 2.5, 2.5, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

if window_get_width() >= 1360 {
	draw_text_ext_transformed_colour(window_get_width()/2, 20, argument0, 15, window_get_width()*20/60, 2.5, 2.5, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

if window_get_width() >= 1280 && window_get_height() >= 700 {
	draw_text_ext_transformed_colour(window_get_width()/2, -0, argument0, 10, window_get_width()*20/60, 2.5, 2.5, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

if window_get_width() >= 1280 {
	draw_text_ext_transformed_colour(window_get_width()/2, 0, argument0, 10, window_get_width()*20/60, 2.5, 2.5, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

if window_get_width() >= 1024 {
	draw_text_ext_transformed_colour(window_get_width()/2, -20, argument0, 10, window_get_width()*20/60, 2, 2, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

if window_get_width() >= 800 {
	draw_text_ext_transformed_colour(window_get_width()/2, -50, argument0, 10, window_get_width()*20/60, 2, 2, 0, c_red,c_red,c_red,c_red,1);
	exit;
}

draw_text_ext_transformed_colour(window_get_width()/2, -50, argument0, 10, window_get_width()*20/60, 2, 2, 0, c_red,c_red,c_red,c_red,1);
