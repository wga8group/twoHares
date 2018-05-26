/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (scr_CanBeTake(self,global.objProtagonist) == true){
		if global.objLogicLevel4.endOfDay {
			cursor_sprite = spr_CursorMain;
			global.CurrentLevel = GameLevels.Level_End;			
			room_goto(global.rmTransition);
			exit;
		}
		global.objDialogue.visible = true;
		global.objDialogue.messageCount = 1;
		global.objDialogue.printText = "";
		global.objDialogue.message[1] = global.textFourthLevelItem10;
	}
}