/// @description Insert description here
// You can write your code in this editor

if (ScriptCanBeTake(obj_Item1,global.objProtagonist) == true){
	global.itemsPickUpCount += 1;
	global.objDialogue.visible = true;
	global.objDialogue.messageCount = 2;
	global.objDialogue.printText = "";
	global.objDialogue.message[1] = "НЕИЗВЕСТНЫЙ АБОНЕНТ:\nИсследовав Ваши Google-запросы, мы вычислили Вас и назвали нашим соратником. Мы - Организация. Но также мы - никто. Мы полностью анонимное сообщество, подготавливающее общество к тому, чтобы оно могло сбросить свои рабские оковы.";
	global.objDialogue.message[2] = "НЕИЗВЕСТНЫЙ АБОНЕНТ:\nМы знаем кто Вы, Томас Фишер и как вы можете послужить нашему благому делу. Думаю, вы в курсе последних событий. Если нет, подойдите к компьютеру и освежите память. Мы думаем, что Ваш босс может быть к этому причастен. Найдите...";
		
	instance_destroy(self,true);
}
else{
	show_debug_message("not near");
}