/// @description Insert description here
// You can write your code in this editor

audio_stop_all();

//Смена курсора. Необходимо для его нормальной отработки.
scr_ToggleCursor();
cursor_sprite = spr_CursorMain;

phonePickUp = false;
computerPickUp = false;
objFirstNews = obj_FirstNews;
global.StateBlockHeroAction  = true;
global.objProtagonist = obj_Prot;
global.objProtagonist.sprite_index = global.sprProtWakeUp;
global.objBlackout.visible = true;
global.objBlackout.image_alpha = 1;

//переменные стадий
enum characterStates{
	startRoom,
	WakeUp,
	NakedWalk,
	DressingUp,
	DressedWalk,
}

currentState = characterStates.startRoom;