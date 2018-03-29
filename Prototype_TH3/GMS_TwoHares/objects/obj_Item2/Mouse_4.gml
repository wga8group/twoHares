/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		global.objFirstLevelLogic.computerPickUp = true;
		global.objFirstLevelLogic.objFirstNews.visible = true;
		
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 3;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = "НОВОСТИ:\nИзвестный физик и инженер Михаил Зелиц был найден мертвым в собственном доме. Незадолго до смерти Михаил работал над проектом Перун-1, предполагавшим впоследствии полное избавление от платы за электроэнергию.";
		global.objDialogue.message[2] = "НОВОСТИ:\nВ ходе расследования рабочие документы и личные записи ученого не были обнаружены. По версии следствия Михаил Зелиц совершил самоубийство, путем выстрела в голову из пистолета. ";
		global.objDialogue.message[3] =	"НОВОСТИ:\nПравоохранительные органы и ряд специалистов считают данное происшествие тщательно спланированным убийством."
	}
}
