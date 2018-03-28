/// @description Insert description here
// You can write your code in this editor

if (ScriptCanBeTake(self,global.objProtagonist) == true){
	global.objDialogue.visible = true;
	global.objDialogue.messageCount = 1;
	global.objDialogue.printText = "";
	global.objDialogue.message[1] = "ТОМ: \nНаграда за первое место в мотокроссе ….И ведь тогда моя жизнь имела смысл.";
}