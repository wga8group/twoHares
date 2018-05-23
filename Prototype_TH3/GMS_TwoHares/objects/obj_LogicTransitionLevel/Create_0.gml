/// @description Insert description here
// You can write your code in this editor

audio_stop_all();
cursor_sprite = spr_CursorMain;

switch(global.CurrentLevel){
	case GameLevels.CutScene_1:
		transitionToLevel = global.rmCutScene1;
		transitionMessage = global.TransitionMessage1;
	break;
	
	case GameLevels.Level_1:
		if global.CurrentCheckpointsAvailable <= 0 {
			global.CurrentCheckpointsAvailable += 1;
		}
		transitionToLevel = global.rmHomeLevel1;
		transitionMessage = global.TransitionMessage2;	
	break;	
	
	case GameLevels.Level_2:
		if global.CurrentCheckpointsAvailable <= 1 {
			global.CurrentCheckpointsAvailable += 1;
		}
		transitionToLevel = global.rmOfficeLevel2;
		transitionMessage = global.TransitionMessage3;
	break;		

	case GameLevels.Level_3:
		if global.CurrentCheckpointsAvailable <= 1 {
			global.CurrentCheckpointsAvailable += 1;
		}
		transitionToLevel = global.rmOfficeLevel3;
		transitionMessage = global.TransitionMessage4;
	break;	

	case GameLevels.Level_4:
		if global.CurrentCheckpointsAvailable <= 1 {
			global.CurrentCheckpointsAvailable += 1;
		}
		transitionToLevel = global.rmOfficeLevel4;
		transitionMessage = global.TransitionMessage5;
	break;

	default:
		transitionToLevel = global.rmMainMenu;
		transitionMessage = "";
	break;
}