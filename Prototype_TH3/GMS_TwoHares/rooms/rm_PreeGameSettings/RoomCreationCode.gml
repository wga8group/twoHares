
//Начальное разрешение
scr_SetResolution(800,600);
//scr_SetResolution(1280,600);
//scr_SetResolution(2560,1080);


//Название уровней
global.rmPreeGameSettings  = rm_PreeGameSettings;
global.rmMainMenu = rm_MenuMain;
global.rmCutScene1 = rm_BarCutScene1;
global.rmHomeFirstLevel = rm_HomeFirstLevel;
global.rmMenuChekpoints = rm_MenuCheckpoints;
global.rmMenuVolume = rm_MenuVolume;

//Название объектов
global.objProtagonist = obj_Prot;
global.objDialogue = obj_Dialogue;
global.objFirstLevelLogic = obj_FirstLevelLogic;
global.objBlackout = obj_Blackout;
global.objInventoryTable = obj_InventoryTable;
global.objInventoryButtonOpen = obj_InventoryButton_open;
global.objInventorryButtonClose = obj_InventorryButton_close;
global.objInventoryPhone = obj_InventoryPhone;

//Название стилей текста
global.fontStyle1 = font0;

//Сами тексты
scr_AllTextMessagesSettings();

//Названия спрайтов
global.sprDialogue = spr_Dialogue;
global.sprProtWakeUp = spr_ProtWakeUp;
global.sprProtDressIdleRight = spr_ProtIdleRight;
global.sprProtNakedIdleRight = spr_ProtIdleNakedRight;
global.sprInventoryTable = spr_InventoryTable;
global.sprInventoryButton = spr_InventoryButton;
global.sprInventoryPhone = spr_InventoryPhone;

//глобальные переменные логики
global.StateBlockHeroAction = true;
global.IsClickOnObject = false;

//Настройки курсора
cursor_sprite = spr_CursorMain;
window_set_cursor(cr_none);
global.ChangeCursor = false;
global.ChangeCursorThink = 0;
global.BlockFirstStep = true;

//чек-поинты
global.CurrentCheckpointsAvailable = 0;

//Звук
global.VolumeSound = 0.5;
global.VolumeMusic = 0.5;


//Запуск меню
//room_goto(global.rmMainMenu);