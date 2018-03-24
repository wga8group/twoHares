/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.itemsPickUpCount);
if (global.objProtagonist.x <= x + 20) && (global.objProtagonist.x >= x - 20){
	global.itemsPickUpCount += 1;
	//instance_create_layer(x,y,"Text",obj_DialogueTest);
	global.objDialogue.visible = true;
	global.objDialogue.charactersNumber = 0;
	global.objDialogue.printText = "";
	global.objDialogue.message = "используя Ваши Google-запросы, мы вычислили Вас и назвали нашим соратником. Мы - Организация. Но также мы - никто. Мы полностью анонимное сообщество, подготавливающее общество к тому, чтобы оно могло сбросить свои рабские оковы. Мы знаем кто Вы, Томас Фишер и как вы можете послужить нашему благому делу. Думаю, вы в курсе последних событий. Если нет, подойдите к компьютеру и освежите память. Мы думаем, что Ваш босс может быть к этому причастен. ";
	instance_destroy(self,true);
}
else{
	show_debug_message("not near");
}