/// @description Insert description here
// You can write your code in this editor
if visible {
	
	//курсор
	if global.BlockFirstStep {
		global.BlockFirstStep = false;
		cursor_sprite = spr_CursorMain;
	}

	//отлавливаем клик
	if mouse_check_button_pressed(mb_left){
		if clickCount  >= messageCount {
			visible = false;
			clickCount = 0;
			charactersNumber = 0;
			global.BlockFirstStep = true;
			exit;
		}
		clickCount += 1;
		charactersNumber = 0;
	}	

	if clickCount <= 0 {
		clickCount = 1;
	}
	
	//Обработка текста	
	charactersNumber += 1;
	printText = string_copy(message[clickCount], 1, charactersNumber);	
}

