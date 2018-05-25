/// @description Insert description here
// You can write your code in this editor
if visible and HasMessage {

	for (var i = 1; i <= self.messageCount; i += 1){
		global.objDialogue.message[i] = self.message[i];
	}
	
	global.objDialogue.messageCount = self.messageCount;
	global.objDialogue.printText = "";
	global.objDialogue.visible = true;
	HasMessage = false;
}