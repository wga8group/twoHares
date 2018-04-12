/// @description Insert description here
// You can write your code in this editor

audio_stop_all();

//Смена курсора. Необходимо для его нормальной отработки.
scr_ToggleCursor();
cursor_sprite = spr_CursorMain;

global.PhoneInInventory = true;
global.StateBlockHeroAction  = true;
global.objProtagonist = obj_ProtDressed;
global.objBlackout.visible = true;
global.objBlackout.image_alpha = 1;

//переменные стадий
enum OfficeStatesLevel2{
	startRoom,
	Walk,
	GirlDialogue,
}

currentState = characterStates.startRoom;
wasDialogueWithGirl = false;
dialogueState = 0;