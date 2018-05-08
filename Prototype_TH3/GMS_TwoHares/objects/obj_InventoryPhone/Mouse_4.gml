/// @description Insert description here
// You can write your code in this editor
if visible and HasMessage {
	global.objDialogue.message[1] = global.textOfficePhoneMessage;	
	global.objDialogue.messageCount = 1;
	global.objDialogue.printText = "";
	global.objDialogue.visible = true;
	HasMessage = false;
}