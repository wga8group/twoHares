/// @description Insert description here
// You can write your code in this editor

phonePickUp = false;
computerPickUp = false;
objFirstNews = obj_FirstNews;
global.StateBlockHeroAction  = true;
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