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
					global.objDialogue.message[1] = "ТОМ:\nЯ не могу выйти на улицу в одних трусах!";
					return 0;
				}
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = "ТОМ:\nНу и куда я собрался без трубы и к тому же в таком виде? Совсем голова не варит...";					
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
					global.objDialogue.message[1] = "ТОМ:\nПодождите-ка, у меня что, всю ночь комп работал? Тепер придется сэкономить на выпивке... Нужно бегом выключить!";
					return 0;
				}
				global.objDialogue.visible = true;
				global.objDialogue.messageCount = 1;
				global.objDialogue.printText = "";
				global.objDialogue.message[1] = "ТОМ:\nБез телефона я просто умру от скуки, пока буду ехать в метро...";					

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


