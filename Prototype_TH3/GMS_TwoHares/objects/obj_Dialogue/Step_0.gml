/// @description Insert description here
// You can write your code in this editor
if (visible == true) {
	show_debug_message(clickCount);
	if mouse_check_button_pressed(mb_left){
		if clickCount  >= messageCount {
			visible = false;
			clickCount = 0;
			charactersNumber = 0;
			return 0;
		}
		clickCount += 1;
		charactersNumber = 0;
	}	
	//Обработка текста
	charactersNumber += 1;
	printText = string_copy(message[clickCount], 1, charactersNumber);	
}

