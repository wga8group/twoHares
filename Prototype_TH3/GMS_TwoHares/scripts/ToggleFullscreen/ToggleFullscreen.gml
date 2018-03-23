//ввклюение-отключение полного экрана при нажатии alt + enter
if keyboard_check_direct(vk_alt) && keyboard_check_pressed(vk_enter){
	if window_get_fullscreen() {
		window_set_fullscreen(false)	
	}
	else{
		window_set_fullscreen(true)
	}
}