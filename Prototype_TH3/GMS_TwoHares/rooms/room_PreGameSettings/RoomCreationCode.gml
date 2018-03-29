
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
global.objFirstLevelLogic = obj_FirstLevelLogic;
global.objBlackout = obj_Blackout;

//Название стилей текста
global.fontStyle1 = font0;

//Названия спрайтов
global.sprDialogue = spr_Dialogue;
global.sprProtWakeUp = spr_ProtWakeUp;
global.sprProtDressIdleRight = spr_ProtIdleRight;

//глобальные переменные логики
global.StateBlockHeroAction = true;

room_goto(room_MainMenu);