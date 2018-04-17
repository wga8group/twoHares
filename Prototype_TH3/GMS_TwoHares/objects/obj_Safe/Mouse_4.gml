/// @description Insert description here
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		global.StateBlockHeroAction = true;
		global.objSafeCode.visible = true;
	}
}
