/// @description Insert description here
// You can write your code in this editor

//Отработка скриптов логики сцены
script_execute(StepsLogic,obj_Blackout,obj_Bartender,obj_ProtDrink);
script_execute(ProtagonistLogic,obj_ProtDrink);
script_execute(BartenderLogic,obj_Bartender);

//Обработка текста
charactersNumber += 1;
message = string_copy(strings[currentState], 1, charactersNumber);

//Горячие клавиши (полный экран, меню и т.д.)
script_execute(scrHotKeysWork);
