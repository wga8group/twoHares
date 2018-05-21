/// @description Insert description here
if global.objSafeCode.visible {
	self.sprite_index = spr_ButtonPressed;
	global.objSafeCode.addStar = true;
	if string_length(global.objSafeCode.currentPass) < 6 {
		global.objSafeCode.currentPass += "3";
	}
}