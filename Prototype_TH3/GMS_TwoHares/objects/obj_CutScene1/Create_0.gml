/// @description Insert description here
// You can write your code in this editor

//название анимаций бармена с первой по третью стадию
bartenderAnimationFirst = spr_BartenderClean;
bartenderAnimationSecond = spr_BartenderLook;
bartenderAnimationThird = spr_BartenderBottle;

//названия звуков
soundWipeGlass = WipeGlass;
soundGlassTable = GlassTable;
soundGulp = Gulp;
soundBottleTable = BottleTable;
soundBreakingGlass = BreakingGlass;
soundBarBackgroundNoise = BarBackgroundNoise;

//названия спрайта диалогового окна и текущего объекта
sprDialogueName = spr_Dialogue;
thisObject = obj_CutScene1;


//переменные стадий
enum cutSceneStates{
	First,
	Second,
	Third,
	Four
}

//текущая стадия
currentState = cutSceneStates.First;

//переменные для занавеса
blackoutEnable = false;
blackoutDuration = room_speed;
blackoutTime = blackoutDuration;

//Переменные для отработки логики объектов
protagonistLogicState = 2;
bartenderSoundID = undefined;
barBackgroundSoundID = undefined;
charactersNumber = 0;
message = "";

//текст сообщений

strings[cutSceneStates.First] = global.textCutScene1_1;
strings[cutSceneStates.Second] = global.textCutScene1_2;
strings[cutSceneStates.Third] = global.textCutScene1_3;
strings[cutSceneStates.Four] = global.textCutScene1_4;


