/// @description Insert description here
// You can write your code in this editor

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();
scr_WorkBlockHeroAction(currentState);

//логика объектов
script_execute(scr_FirstLevelProtLogic,global.objProtagonist);
script_execute(scr_FirstLevelBlackoutLogic,global.objBlackout);

