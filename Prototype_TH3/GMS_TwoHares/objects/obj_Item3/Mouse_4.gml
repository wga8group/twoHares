/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = "ТОМ: \nЯ и батя. Золотые времена. Помню, как однажды на рыбалке, он сказал: “ЯЯЯЯЯЗЬ, ЗДОРОВЕННЫЙ ЯЗЬ!";
	}
}