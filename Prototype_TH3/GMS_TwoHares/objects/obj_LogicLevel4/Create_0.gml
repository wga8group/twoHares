/// @description Insert description here
// You can write your code in this editor

audio_stop_all();

//Смена курсора. Необходимо для его нормальной отработки.
scr_ToggleCursor();
cursor_sprite = spr_CursorMain;

//глобальные установки
global.PhoneInInventory = true;
global.AlcoholInInventory = true;
global.StateBlockHeroAction  = true;
global.objProtagonist = obj_ProtDressed;
global.objBlackout.visible = true;
global.objBlackout.image_alpha = 1;

//переменные уровня
currentState = characterStates.startRoom;
wasDialogueWithCourier = false;
wasDialogueWithBoss = false;
dialogueState = 0;
clickCount = 0;