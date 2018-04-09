
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.fontStyle1);


if window_get_width() >= 2560 {
	draw_text_ext_transformed(window_get_width()*2/60,window_get_height()*49/60, argument0, 20, window_get_width()*22/60,2.5,2.5,0);
	exit;
}

if window_get_width() >= 1920 {
	//draw_set_font(font0);
	//draw_text_ext(window_get_width()*3/60,window_get_height()*48/60, argument0, 20, window_get_width()*54/60);
	draw_text_ext_transformed(window_get_width()*2/60,window_get_height()*47/60, argument0, 20, window_get_width()*22/60,2.5,2.5,0);
	exit;
}
	
if window_get_width() >= 1366 {
	draw_text_ext_transformed(window_get_width()*3/60,window_get_height()*48/60, argument0, 20, window_get_width()*35/60,1.5,1.5,0);
	exit;
}

if window_get_width() >= 1360 {
	draw_text_ext_transformed(window_get_width()*3/60,window_get_height()*47/60, argument0, 20, window_get_width()*35/60,1.5,1.5,0);
	exit;
}

if window_get_width() >= 1280 && window_get_height() >= 700 {
	draw_text_ext_transformed(window_get_width()*3/60, window_get_height()*47/60, argument0, 20, window_get_width()*35/60,1.5,1.5,0);
	exit;
}

if window_get_width() >= 1280 {
	draw_text_ext_transformed(window_get_width()*3/60, window_get_height()*47/60, argument0, 20, window_get_width()*35/60,1.3,1.3,0);
	exit;
}

if window_get_width() >= 1024 {
	draw_text_ext_transformed(window_get_width()*3/60, window_get_height()*36/60, argument0, 20, window_get_width()*42/60,1.3,1.3,0);
	exit;
}

if window_get_width() >= 800 {
	draw_text_ext_transformed(window_get_width()*3/60, window_get_height()*35/60, argument0, 20, window_get_width()*54/60,1,1,0);
	exit;
}

draw_text_ext_transformed(window_get_width()*3/60, window_get_height()*35/60, argument0, 20, window_get_width()*54/60,1,1,0);