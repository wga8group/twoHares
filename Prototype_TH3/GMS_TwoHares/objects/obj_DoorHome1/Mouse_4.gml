/// @description Insert description here
// You can write your code in this editor
if not global.StateBlockHeroAction {
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		switch(global.objFirstLevelLogic.currentState) 
		{
			case characterStates.NakedWalk:
				if global.objFirstLevelLogic.phonePickUp {
					global.objDialogue.visible = true;
					global.objDialogue.messageCount = 1;
					global.objDialogue.printText = "";
					global.objDialogue.message[1] = "ТОМ:\nНе могу же я выйти на улицу в чем мать родила!";
					return 0;
				}
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = "ТОМ:\nИ куда я собрался в таком виде, да еще и без телефона? От безделья напрочь бестолковый стал. ";					
			break;
	
			case characterStates.DressedWalk:
				if global.objFirstLevelLogic.phonePickUp {
					if global.objFirstLevelLogic.computerPickUp {
						room_goto(global.rmMainMenu);
						return 0;
					}
					global.objDialogue.visible = true;
					global.objDialogue.messageCount = 1;
					global.objDialogue.printText = "";
					global.objDialogue.message[1] = "ТОМ:\nТо сообщение от Организации: ''Думаю, Вы в курсе о последних событиях...'' О чём это? Думаю, в интернете есть информация. Нужно проверить.";
					return 0;
				}
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = "ТОМ:\nБез телефона я просто умру от скуки, пока буду ехать до работы...";					

			break;
	
			default:
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = "ТОМ:\nНу и как ты, бля, умудрился так сделать? Все! Сломал игру!";		
			break;	
		}
	}
	
}	
	
	
	/*
	if (ScriptCanBeTake(self,global.objProtagonist) == true){
		if global.objFirstLevelLogic.itemsPickUpCount >= 1 {
			room_goto(global.rmMainMenu);
		}
		else{
			global.objDialogue.visible = true;
			global.objDialogue.messageCount = 1;
			global.objDialogue.printText = "";
			global.objDialogue.message[1] = "ТОМ: \nМне нужны все ништячки =\\";		
		}
	
	}


