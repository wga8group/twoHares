
//Начальное разрешение
scr_SetResolution(800,600);
//scr_SetResolution(1024,768);
//scr_SetResolution(1280,600);
//scr_SetResolution(1280,720);
//scr_SetResolution(1280,768);
//scr_SetResolution(1360,768);
//scr_SetResolution(1366,768);
//scr_SetResolution(2560,1080);


//Название уровней
global.rmPreeGameSettings  = rm_PreeGameSettings;
global.rmMainMenu = rm_MenuMain;
global.rmMenuChekpoints = rm_MenuCheckpoints;
global.rmMenuVolume = rm_MenuVolume;
global.rmTransition = rm_TransitionLevel;
global.rmCutScene1 = rm_BarCutScene1;
global.rmHomeLevel1 = rm_HomeLevel1;
global.rmOfficeLevel2 = rm_OfficeLevel2;


//Название объектов
global.objProtagonist = obj_Prot;
global.objDialogue = obj_Dialogue;
global.objDialogueChoice = obj_DialogueChoice;
global.objButtonChoice1 = obj_ButtonChoice1;
global.objButtonChoice2 = obj_ButtonChoice2;
global.objButtonChoice3 = obj_ButtonChoice3;
global.objFirstLevelLogic = obj_FirstLevelLogic;
global.objLogicLevel2 = obj_LogicLevel2;
global.objBlackout = obj_Blackout;
global.objInventoryTable = obj_InventoryTable;
global.objInventoryButtonOpen = obj_InventoryButton_open;
global.objInventorryButtonClose = obj_InventorryButton_close;
global.objInventoryPhone = obj_InventoryPhone;
global.objInventoryAlcohol = obj_InventoryAlcohol;
global.objSafeCode = obj_SafeCode;

//Название стилей текста
global.fontStyle1 = font0;

//Сами тексты
scr_AllTextMessagesSettings();

//Названия спрайтов
global.sprDialogue = spr_Dialogue;
global.sprButtonChoice = spr_ButtonChoice;
global.sprProtWakeUp = spr_ProtWakeUp;
global.sprProtDressIdleRight = spr_ProtIdleRight;
global.sprProtNakedIdleRight = spr_ProtIdleNakedRight;
global.sprInventoryTable = spr_InventoryTable;
global.sprInventoryButton = spr_InventoryButton;
global.sprInventoryPhone = spr_InventoryPhone;

//глобальные переменные логики
global.StateBlockHeroAction = false;
global.IsClickOnObject = false;
global.TransitionDuration = 240;
global.PhoneInInventory = false;
global.BossSafePass = "260686";
global.AlcoholInNventory = false;
global.OfficeSafeOpen = false;

enum GameLevels{
	CutScene_1,
	Level_1,
	Level_2,
	Level_3
}

global.CurrentLevel = GameLevels.CutScene_1;


//Настройки курсора
cursor_sprite = spr_CursorMain;
window_set_cursor(cr_none);
global.ChangeCursor = false;
global.ChangeCursorThink = 0;
global.BlockFirstStep = true;

//чек-поинты
global.CurrentCheckpointsAvailable = 3;

//Звук
global.VolumeSound = 0.5;
global.VolumeMusic = 0.5;


//Запуск меню
room_goto(global.rmMainMenu);