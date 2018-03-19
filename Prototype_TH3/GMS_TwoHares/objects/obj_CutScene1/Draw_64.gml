/// @description Insert description here
// You can write your code in this editor

if (blackoutEnable == false){
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(font0);
	//show_debug_message(window_get_width());
	//show_debug_message(window_get_height());
	
	if window_get_width() == 1920 && window_get_height() >= 1060 {
		//draw_set_font(font0);
		draw_text_ext(window_get_width()*1/30,window_get_height()*24/30, message, 20, window_get_width()*27/30);
	return undefined;
	}
	
	if window_get_width() == 1366 && window_get_height() >= 700 && window_get_height() < 880 {
		draw_text_ext(window_get_width()*1/30,window_get_height()*22/30, message, 20, window_get_width()*27/30);
	return undefined;
	}

	if window_get_width() == 1360 && window_get_height() >= 700 && window_get_height() < 880 {
		draw_text_ext(window_get_width()*1/30,window_get_height()*22/30, message, 20, window_get_width()*27/30);
	return undefined;
	}

	if window_get_width() == 1280 && window_get_height() >= 700 && window_get_height() < 880 {
		draw_text_ext(window_get_width()*1/30,window_get_height()*22/30, message, 20, window_get_width()*27/30);
	return undefined;
	}

	if window_get_width() == 1280 && window_get_height() >= 580 && window_get_height() < 700 {
		draw_text_ext(window_get_width()*1/30,window_get_height()*22/30, message, 20, window_get_width()*23/30);
	return undefined;
	}

	if window_get_width() == 1024 && window_get_height() >= 748 {
		draw_text_ext(window_get_width()*1/30,window_get_height()*17/30, message, 20, window_get_width()*27/30);
	return undefined;
	}

	if window_get_width() == 800 && window_get_height() >= 580 {
		draw_text_ext(window_get_width()*1/30,window_get_height()*18/30, message, 20, window_get_width()*27/30);
	return undefined;
	}
	
	draw_text_ext(window_get_width()*1/30,window_get_height()*21/30, message, 20, window_get_width()*27/30);
}
