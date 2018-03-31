
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.fontStyle1);

if window_get_width() == 1920 && window_get_height() >= 1060 {
	//draw_set_font(font0);
	//draw_text_ext(window_get_width()*3/60,window_get_height()*48/60, argument0, 20, window_get_width()*54/60);
	draw_text_ext_transformed(window_get_width()*2/60,window_get_height()*47/60, argument0, 20, window_get_width()*22/60,2.5,2.5,0);
return undefined;
}
	
if window_get_width() == 1366 && window_get_height() >= 700 && window_get_height() < 880 {
	draw_text_ext(window_get_width()*3/60,window_get_height()*48/60, argument0, 20, window_get_width()*54/60);
return undefined;
}

if window_get_width() == 1360 && window_get_height() >= 700 && window_get_height() < 880 {
	draw_text_ext(window_get_width()*3/60,window_get_height()*44/60, argument0, 20, window_get_width()*54/60);
return undefined;
}

if window_get_width() == 1280 && window_get_height() >= 700 && window_get_height() < 880 {
	draw_text_ext(window_get_width()*3/60,window_get_height()*44/60, argument0, 20, window_get_width()*54/60);
return undefined;
}

if window_get_width() == 1280 && window_get_height() >= 580 && window_get_height() < 700 {
	draw_text_ext(window_get_width()*3/60,window_get_height()*44/60, argument0, 20, window_get_width()*46/60);
return undefined;
}

if window_get_width() == 1024 && window_get_height() >= 748 {
	draw_text_ext(window_get_width()*3/60,window_get_height()*34/60, argument0, 20, window_get_width()*54/60);
return undefined;
}

if window_get_width() == 800 && window_get_height() >= 580 {
	draw_text_ext(window_get_width()*3/60,window_get_height()*35/60, argument0, 20, window_get_width()*54/60);
return undefined;
}

draw_text_ext(window_get_width()*3/60,window_get_height()*42/60, argument0, 20, window_get_width()*54/60);
