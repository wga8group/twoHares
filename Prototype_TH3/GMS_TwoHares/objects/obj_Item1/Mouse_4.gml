/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		global.objFirstLevelLogic.phonePickUp = true;
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 3;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = "НЕИЗВЕСТНЫЙ АБОНЕНТ:\nИсследовав Ваши Google-запросы, мы вычислили Вас и назвали нашим соратником. Мы - Организация. Но также мы - никто. Мы полностью анонимное сообщество, подготавливающее общество к тому, чтобы оно могло сбросить свои рабские оковы.";
		global.objDialogue.message[2] = "НЕИЗВЕСТНЫЙ АБОНЕНТ:\nМы знаем кто Вы, Томас Фишер и как вы можете послужить нашему благому делу. Думаю, вы в курсе последних событий. Если нет, подойдите к компьютеру и освежите память. Мы думаем, что Ваш босс может быть к этому причастен. Найдите...";
		global.objDialogue.message[3] =	"ТОМ: \nИ как это понимать? Что найти?...Черт, говорили же мне переходить на Ubuntu..."

		instance_destroy(self,true);
		//show_debug_message(global.objFirstLevelLogic.phonePickUp);   //для дебага
	}
}
