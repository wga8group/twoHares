/// @description Insert description here

if mouse_check_button_pressed(mb_left){
	if global.IsRussLang {
		scr_SetAllTextMessagesEn();
		global.IsRussLang = false;
	}
else{
		scr_SetAllTextMessagesRuss();
		global.IsRussLang = true;
	}
}