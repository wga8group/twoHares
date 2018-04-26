/// @description Insert description here
// You can write your code in this editor

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();

//запускаем таймер
if not timeline_running{
   timeline_position = 0;
   timeline_running = true;
}
else{
	timeline_position += 1;
}

//проверка времени
if timeline_position >= global.TransitionDuration {
	room_goto(transitionToLevel);
}