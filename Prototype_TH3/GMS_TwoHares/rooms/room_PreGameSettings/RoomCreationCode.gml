
//Начальное разрешение
SetResolution(800,600);
//SetResolution(1366,768);

//Название уровней
global.rmMainMenu = room_MainMenu;
global.rmCutScene1 = room_BarCutScene1;
global.rmHomeFirstLevel = room_Home1;


room_goto(room_MainMenu);


//Название объектов
global.objProtagonist = obj_Prot;
global.objItem1 = obj_Item1;
global.objDialogue = obj_DialogueTest;

//Названия спрайтов
global.sprDialogue = spr_Dialogue;

//Переменные первого уровня
global.itemsPickUpCount = 0;