/// @description Insert description here
if global.objSafeCode.visible {
	global.objSafeCode.addStar = true;
	if string_length(global.objSafeCode.currentPass) < 6 {
		global.objSafeCode.currentPass += "2";
	}
}