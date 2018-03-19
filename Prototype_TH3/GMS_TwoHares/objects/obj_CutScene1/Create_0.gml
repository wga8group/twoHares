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

strings[cutSceneStates.First] = "БАРМЕН: \nГоворишь, никогда не видел снов? Странный ты тип. Быть такого не может... Наверное, ты просто их не запоминаешь.";
strings[cutSceneStates.Second] = "БАРМЕН: \nЭх, нашел из-за чего париться... Деньги платят и нормально, главное - остаться на плаву. Лично я всё больше склоняюсь к выводу, что миром правит не тайная ложа, а явная лажа.";
strings[cutSceneStates.Third] = "БАРМЕН: \nЗнаешь, жизнь очень странно устроена. Чтобы вылезти из колодца, надо в него упасть. Хмм.. Еще пивка?";
strings[cutSceneStates.Four] = "БАРМЕН: \nЭй! Ты меня слышишь?! Завязывай со всем этим дерьмом, а то доиграешься... ";

/*strings[cutSceneStates.First] = "BARTENDER:\nYou say you've never seen a dream? You are a strange type, it can not be like this ... It's probably just that you do not remember them.";
strings[cutSceneStates.Second] = "BARTENDER:\nEh, found because of what to sweat ... Money is paid and normal, the main thing - to stay afloat. Personally, I'm increasingly inclined to the conclusion that the world is ruled not by a secret bed, but by an obvious crap.";
strings[cutSceneStates.Third] = "BARTENDER:\nYou know, life is very strange arranged. To get out of the well, you need to fall into it. Hmm .. Another beer?";
strings[cutSceneStates.Four] = "BARTENDER:\nHey! Can you hear me?! Tie with all this shit, and then finish it ... ";
*/

