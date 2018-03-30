
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
global.objInventoryTable = obj_InventoryTable;
global.objInventoryButtonOpen = obj_InventoryButton_open;
global.objInventorryButtonClose = obj_InventorryButton_close;
global.objInventoryPhone = obj_InventoryPhone;

//Название стилей текста
global.fontStyle1 = font0;

//Сами тексты
scrAllTextMessagesSettings();

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

//Настройки курсора
cursor_sprite = spr_CursorMain;
window_set_cursor(cr_none);
global.ChangeCursor = false;
global.ChangeCursorThink = 0;
global.BlockFirstStep = true;

room_goto(room_MainMenu);