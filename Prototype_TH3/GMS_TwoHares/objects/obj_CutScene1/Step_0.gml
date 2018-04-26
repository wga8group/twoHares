/// @description Insert description here
// You can write your code in this editor

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();

//Отработка скриптов логики сцены
script_execute(scr_StepsLogic,obj_Blackout,obj_Bartender,obj_ProtDrink);
script_execute(scr_ProtagonistLogic,obj_ProtDrink);
script_execute(scr_BartenderLogic,obj_Bartender);

//Обработка текста
charactersNumber += 1;
message = string_copy(strings[currentState], 1, charactersNumber);
