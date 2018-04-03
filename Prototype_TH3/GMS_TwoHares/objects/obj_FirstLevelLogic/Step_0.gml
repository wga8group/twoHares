/// @description Insert description here
// You can write your code in this editor

//Горячие клавиши (полный экран, меню и т.д.)
script_execute(scr_HotKeysWork);

//логика объектов
script_execute(scr_FirstLevelProtLogic,global.objProtagonist);
script_execute(scr_FirstLevelBlackoutLogic,global.objBlackout);

if mouse_check_button_pressed(mb_left)
{
	show_debug_message("false")	;
}