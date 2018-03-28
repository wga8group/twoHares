/// @description Insert description here
// You can write your code in this editor

if (ScriptCanBeTake(self,global.objProtagonist) == true){
	global.objDialogue.visible = true;
	global.objDialogue.messageCount = 1;
	global.objDialogue.printText = "";
	switch(irandom(2)){
		case 0:
			global.objDialogue.message[1] = "Не скучай Борысс.";
			break;
		case 1:
			global.objDialogue.message[1] = "Мой кот Борысс, люблю его.";
			break;
		case 2:
			global.objDialogue.message[1] = "Подъем, Борысс!";
			break;
		default:
			global.objDialogue.message[1] = "Не скучай Борысс.";
	}
}
