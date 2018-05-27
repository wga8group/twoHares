/// @description Insert description here
// You can write your code in this editor

//звуки
audio_stop_all();
var soundID = audio_play_sound(sou_OfficeBackground, 1, true);
audio_sound_gain(soundID , global.VolumeSound, 0);
soundID = audio_play_sound(sou_OfficeBackground2, 1, true);
audio_sound_gain(soundID , global.VolumeSound, 0);
soundID = audio_play_sound(sou_OfficeMusic, 1, true);
audio_sound_gain(soundID , global.VolumeMusic, 1000);

//Смена курсора. Необходимо для его нормальной отработки.
scr_ToggleCursor();
cursor_sprite = spr_CursorMain;

//глобальные установки
global.PhoneInInventory = true;
global.AlcoholInInventory = true;
global.StoneInInventory = false;
global.ScrewdriverInInventory = false;
global.PasteInInventory = false;
global.BrushInInventory = false;
global.StateBlockHeroAction  = true;
global.objProtagonist = obj_ProtDressed;
global.objBlackout.visible = true;
global.objBlackout.image_alpha = 1;

//переменные уровня
currentState = characterStates.startRoom;
wasDialogueWithCourier = false;
wasDialogueWithBoss = false;
wasDialogueWithGirl = false;
wasDialogueWithPC = false;
wasUsedScrewdriver = false;
wasUsedBrush = false;
wasUsedPaste = false;
canRepairPC = false;
wasEndRepairPC = false;
endOfDay = false;
dialogueState = 0;
clickCount = 0;