/// @description Insert description here

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();

if mouse_check_button_pressed(mb_left) {
	self.pauseBeforeEnd = false;
}

if not self.pauseBeforeEnd{
	room_goto(global.rmMainMenu);
}