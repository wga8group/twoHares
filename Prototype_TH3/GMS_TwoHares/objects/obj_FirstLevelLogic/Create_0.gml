/// @description Настройка параметров

//sounds
HomeMusicID = audio_play_sound(HomeMusic, 1, true);
audio_sound_gain(HomeMusicID, 0, 0);
audio_sound_gain(HomeMusicID, global.VolumeMusic, 1000);
HomeSoundID = audio_play_sound(HomeBack, 1, true);
audio_sound_gain(HomeSoundID, 0, 0);
audio_sound_gain(HomeSoundID, global.VolumeSound, 1000);


//Смена курсора. Необходимо для его нормальной отработки.
scr_ToggleCursor();
cursor_sprite = spr_CursorMain;


//переменные уровня
computerPickUp = false;
objFirstNews = obj_FirstNews;
soundOutOfBed = OutOfBed;
ProtoWakeUpSoundID = undefined;
currentState = characterStates.startRoom;

//глобальные установки
global.PhoneInInventory = false;
global.objProtagonist = obj_Prot;
global.objProtagonist.sprite_index = global.sprProtWakeUp;
global.objBlackout.visible = true;
global.objBlackout.image_alpha = 1;
