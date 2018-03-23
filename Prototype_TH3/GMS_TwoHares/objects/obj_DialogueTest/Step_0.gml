/// @description Insert description here
// You can write your code in this editor
if (visible == true) {
	//Обработка текста
	charactersNumber += 1;
	printText = string_copy(message, 1, charactersNumber);
	if mouse_check_button_pressed(mb_left){
		if firstClick == true {
			firstClick = false;
		}
		else{
			visible = false;
			firstClick = true;
		}
	}
}

