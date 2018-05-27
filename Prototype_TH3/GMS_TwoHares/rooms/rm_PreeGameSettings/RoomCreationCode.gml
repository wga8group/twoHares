
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
global.rmOfficeLevel3 = rm_OfficeCabinetLevel3;
global.rmOfficeLevel4 = rm_OfficeLevel4;
global.rmEndTitles = rm_EndTitles;

//Название объектов
global.objProtagonist = obj_Prot;
global.objDialogue = obj_Dialogue;
global.objDialogueChoice = obj_DialogueChoice;
global.objButtonChoice1 = obj_ButtonChoice1;
global.objButtonChoice2 = obj_ButtonChoice2;
global.objButtonChoice3 = obj_ButtonChoice3;
global.objFirstLevelLogic = obj_FirstLevelLogic;
global.objLogicLevel2 = obj_LogicLevel2;
global.objLogicLevel4 = obj_LogicLevel4;
global.objBlackout = obj_Blackout;
global.objInventoryTable = obj_InventoryTable;
global.objInventoryButtonOpen = obj_InventoryButton_open;
global.objInventorryButtonClose = obj_InventorryButton_close;
global.objInventoryPhone = obj_InventoryPhone;
global.objInventoryAlcohol = obj_InventoryAlcohol;
global.objInventoryNote1 = obj_InventoryNote1;
global.objInventoryStone = obj_InventoryStone;
global.objInventoryScrewdriver = obj_InventoryScrewdriver;
global.objInventoryPaste = obj_InventoryPaste;
global.objInventoryBrush = obj_InventoryBrush;
global.objSafeCode = obj_SafeCode;
global.objNpcCourier = obj_NpcCourier;
global.objNpcCourierActive = obj_Office4Item8;
global.objOffice4GirlPC = obj_Office4GirlPC;
global.objOffice4Boss = obj_Office4Boss;
global.objOffice4Girl = obj_Office4Girl;


//Название стилей текста
global.fontStyle1 = font0;

//Сами тексты
scr_SetAllTextMessagesRuss();

//Названия спрайтов
global.sprDialogue = spr_Dialogue;
global.sprButtonChoice = spr_ButtonChoice;
global.sprProtWakeUp = spr_ProtWakeUp;
global.sprProtDressIdleRight = spr_ProtIdleRight;
global.sprProtNakedIdleRight = spr_ProtIdleNakedRight;
global.sprInventoryTable = spr_InventoryTable;
global.sprInventoryButton = spr_InventoryButton;
global.sprInventoryPhone = spr_InventoryPhone;
global.sprSafeHidden = spr_OfficeCabinetPicSnake;
global.sprSafe = spr_Safe;

//глобальные переменные логики
global.StateBlockHeroAction = false;
global.IsClickOnObject = false;
global.TransitionDuration = 160;
global.PhoneInInventory = false;
global.AlcoholInInventory = false;
global.NoteFirstInInventory = false;
global.StoneInInventory = false;
global.ScrewdriverInInventory = false;
global.PasteInInventory = false;
global.BrushInInventory = false;
global.BossSafePass = "260686";
global.OfficeSafeOpen = false;
global.IsRussLang = true;

enum GameLevels{
	CutScene_1,
	Level_1,
	Level_2,
	Level_3,
	Level_4,
	Level_End
}

//переменные стадий
enum characterStates{
	startRoom,
	WakeUp,
	NakedWalk,
	DressingUp,
	DressedWalk,
	GirlDialogue,
	BossDialogue,
	SomeDialogue
}

global.CurrentLevel = GameLevels.CutScene_1;


//Настройки курсора
cursor_sprite = spr_CursorMain;
window_set_cursor(cr_none);
global.ChangeCursor = false;
global.ChangeCursorThink = 0;
global.BlockFirstStep = true;

//чек-поинты
show_debug_message(working_directory)
show_debug_message(program_directory)
if !directory_exists("Saves")
   {
   directory_create("Saves");
   }
global.CurrentCheckpointsAvailable = 0;
global.SavesFile = file_text_open_read("Saves" + "GameSaves.txt");
if global.SavesFile {
	global.CurrentCheckpointsAvailable = file_text_read_real(global.SavesFile);
}



//Звук
global.VolumeSound = 0.5;
global.VolumeMusic = 0.5;


//Запуск меню
//room_goto(global.rmMainMenu);