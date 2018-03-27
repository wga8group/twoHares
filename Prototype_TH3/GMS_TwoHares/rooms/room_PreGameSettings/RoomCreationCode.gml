
//Начальное разрешение
SetResolution(800,600);
//SetResolution(1366,768);

//Название уровней
global.rmMainMenu = room_MainMenu;
global.rmCutScene1 = room_BarCutScene1;
global.rmHomeFirstLevel = room_HomeFirstLevel;

//Название объектов
global.objProtagonist = obj_Prot;
global.objDialogue = obj_Dialogue;

//Названия спрайтов
global.sprDialogue = spr_Dialogue;


room_goto(room_MainMenu);