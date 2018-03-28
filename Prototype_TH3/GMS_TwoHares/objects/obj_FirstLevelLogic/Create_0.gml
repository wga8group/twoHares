/// @description Insert description here
// You can write your code in this editor

itemsPickUpCount = 0;
global.objProtagonist.sprite_index = global.sprProtWakeUp;


//переменные стадий
enum characterStates{
	WakeUp,
	NakedWalk,
	DressedWalk,
}

currentState = characterStates.WakeUp;