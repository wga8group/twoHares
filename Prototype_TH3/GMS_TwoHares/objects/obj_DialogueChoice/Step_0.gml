/// @description Insert description here
// You can write your code in this editor
if (visible == true) {
	//закрываем инвентарь
	global.objInventoryTable.visible = false;
	
	//курсор
	if global.BlockFirstStep {
		global.BlockFirstStep = false;
		cursor_sprite = spr_CursorMain;
	}

	//отлавливаем клик
	if mouse_check_button_pressed(mb_left){
		if ChoiceSelected  >= 1 {
			visible = false;
			clickCount = 0;
			global.objButtonChoice1.visible = false;
			global.objButtonChoice2.visible = false;
			global.objButtonChoice3.visible = false;
			global.BlockFirstStep = true;
			return 0;
		}
	}	
	
}