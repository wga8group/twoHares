/// @description Insert description here
// You can write your code in this editor

audio_stop_all();
cursor_sprite = spr_CursorMain;
obj_BossShoot.visible = false;
obj_ProtDead.visible = false;
bossShoot = false;
global.TransitionDuration = 160;

var file;

switch(global.CurrentLevel){
	case GameLevels.CutScene_1:
		var soundID = audio_play_sound(sou_StartGame, 1, false);
		audio_sound_gain(soundID , global.VolumeSound, 0);
		transitionToLevel = global.rmCutScene1;
		transitionMessage = global.TransitionMessage1;
	break;
	
	case GameLevels.Level_1:
		if global.CurrentCheckpointsAvailable <= 0 {
			global.CurrentCheckpointsAvailable += 1;
			file = file_text_open_write("Saves" + "GameSaves.txt");
			file_text_write_real(file, global.CurrentCheckpointsAvailable);
			file_text_close(file);
		}
		transitionToLevel = global.rmHomeLevel1;
		transitionMessage = global.TransitionMessage2;	
	break;	
	
	case GameLevels.Level_2:
		if global.CurrentCheckpointsAvailable <= 1 {
			global.CurrentCheckpointsAvailable += 1;
			file = file_text_open_write("Saves" + "GameSaves.txt");
			file_text_write_real(file, global.CurrentCheckpointsAvailable);
			file_text_close(file);
		}
		transitionToLevel = global.rmOfficeLevel2;
		transitionMessage = global.TransitionMessage3;
	break;		

	case GameLevels.Level_3:
		if global.CurrentCheckpointsAvailable <= 2 {
			global.CurrentCheckpointsAvailable += 1;
			file = file_text_open_write("Saves" + "GameSaves.txt");
			file_text_write_real(file, global.CurrentCheckpointsAvailable);
			file_text_close(file);
		}
		transitionToLevel = global.rmOfficeLevel3;
		transitionMessage = global.TransitionMessage4;
	break;	

	case GameLevels.Level_4:
		if global.CurrentCheckpointsAvailable <= 3 {
			global.CurrentCheckpointsAvailable += 1;
			file = file_text_open_write("Saves" + "GameSaves.txt");
			file_text_write_real(file, global.CurrentCheckpointsAvailable);
			file_text_close(file);
		}
		transitionToLevel = global.rmOfficeLevel4;
		transitionMessage = global.TransitionMessage5;
	break;

	case GameLevels.Level_End:
		global.TransitionDuration = 500;
		obj_BossShoot.visible = true;
		obj_ProtDead.image_speed = 0;
		obj_ProtDead.visible = true;
		
		
		var soundID = audio_play_sound(sou_TitleMusic, 1, false);
		audio_sound_gain(soundID , global.VolumeMusic, 0);

		transitionToLevel = global.rmEndTitles;
		transitionMessage = global.TransitionMessageEnd;
	break;

	default:
		transitionToLevel = global.rmMainMenu;
		transitionMessage = "";
	break;
}