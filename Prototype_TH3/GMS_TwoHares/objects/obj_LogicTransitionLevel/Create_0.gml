/// @description Insert description here
// You can write your code in this editor

audio_stop_all();
cursor_sprite = spr_CursorMain;

switch(global.CurrentLevel){
	case GameLevels.CutScene_1:
		transitionToLevel = global.rmCutScene1;
		transitionMessage = global.TransitionMessage1;
		xOffsetForText = 0;
	break;
	
	case GameLevels.Level_1:
		transitionToLevel = global.rmHomeLevel1;
		transitionMessage = global.TransitionMessage2;	
		xOffsetForText = -1;
	break;	
	
	case GameLevels.Level_2:
		transitionToLevel = global.rmOfficeLevel2;
		transitionMessage = global.TransitionMessage3;
		xOffsetForText = -4;
	break;		
	
	default:
		transitionToLevel = global.rmMainMenu;
		transitionMessage = "";
		xOffsetForText = 0;
	break;
}