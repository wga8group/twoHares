/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		global.objFirstLevelLogic.computerPickUp = true;
		global.objFirstLevelLogic.objFirstNews.visible = true;
		
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 4;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = "НОВОСТИ:\nИзвестный физик и инженер Михаил Зелиц, найденный мертвым у себя дома, работал над казалось бы фантастическим изобретением, генератором атмосферного электричества. Подобное изобретение в перспективе избавило бы человечество от платы за электроэнергию.";
		global.objDialogue.message[2] = "НОВОСТИ:\nПо версии следствия, это было самоубийство. Михаил Зелиц якобы застрелил себя из пистолета. Обнаружен с травмой головы не совместимой с жизнью.";
		global.objDialogue.message[3] =	"НОВОСТИ:\nПрезентация его проекта “Перун-1” должна была состоятся уже в этом квартале. Но к сожалению, не удалось найти его рабочих записей, чтобы его дело продолжили другие специалисты в области физики."
		global.objDialogue.message[4] =	"НОВОСТИ:\nРяд специалистов а также общественность считает, что это могло быть хорошо спланированное убийство."
	}
}
