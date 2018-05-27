/// @description Insert description here
// You can write your code in this editor

//Скрипты для отработки горячих клавиш, блокировок, курсора и т.п.
scr_WorkHotKeys();
scr_WorkCursorClickAnim();

//запускаем таймер
if not timeline_running{
   timeline_position = 0;
   timeline_running = true;
}
else{
	timeline_position += 1;
}

//проверка времени
if timeline_position >= global.TransitionDuration {
	room_goto(transitionToLevel);
}

if transitionToLevel == global.rmEndTitles{
	obj_BossShoot.image_index += 0.15*obj_BossShoot.image_speed;
	obj_ProtDead.image_index += 0.15*obj_ProtDead.image_speed;
	
	if obj_BossShoot.image_index >= 12 and not bossShoot { 
		obj_ProtDead.image_speed = obj_BossShoot.image_speed;
		bossShoot = true;
		soundID = audio_play_sound(sou_PistolShoot, 1, false);
		audio_sound_gain(soundID , global.VolumeSound, 0);
		soundID = audio_play_sound(sou_Laugh, 1, false);
		audio_sound_gain(soundID , global.VolumeSound, 1000);
	}

	if (obj_BossShoot.image_index >= sprite_get_number(obj_BossShoot.sprite_index) - 0.6){ 
		obj_BossShoot.image_speed = 0;
	}
	
	if (obj_ProtDead.image_index >= sprite_get_number(obj_ProtDead.sprite_index) - 0.6){ 
		obj_ProtDead.image_speed = 0;
	}	
}