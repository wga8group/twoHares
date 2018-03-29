/// @description Insert description here
// You can write your code in this editor
if (visible == true) {
	global.StateBlockHeroAction = true;
	if mouse_check_button_pressed(mb_left){
		if clickCount  >= messageCount {
			visible = false;
			clickCount = 0;
			charactersNumber = 0;
			global.StateBlockHeroAction = false;
			return 0;
		}
		clickCount += 1;
		charactersNumber = 0;
	}	
	//Обработка текста
	charactersNumber += 1;
	printText = string_copy(message[clickCount], 1, charactersNumber);	
}

