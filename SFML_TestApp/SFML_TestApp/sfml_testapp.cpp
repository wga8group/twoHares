#include "CustomLibrary.h"
#include "map.h"
#include "CharacterMan.h"
#include "Player.h"
#include "GraphMap.h"





int main()
{

	//RenderWindow window(VideoMode(640, 480), "SFML Lesson 9"); //Player
	RenderWindow window(VideoMode(720, 405), "SFML Lesson 9"); //CharMan
	//RenderWindow window(VideoMode(240, 135), "SFML Lesson 9"); //CharMan
	Clock clock;

	/*
	Image mapImage;
	mapImage.loadFromFile("images/map.png");
	Texture mapTexture;
	mapTexture.loadFromImage(mapImage);
	Sprite mapSprite;
	mapSprite.setTexture(mapTexture);*/

	Image testMapImage;
	testMapImage.loadFromFile("images/BarTest4.png");
	Texture testMapTexture;
	testMapTexture.loadFromImage(testMapImage);
	Sprite testMapSprite;
	testMapSprite.setTexture(testMapTexture);

	//Player hero("hero.png", 250, 250, 96.0, 96.0); //Player
	//CharacterMan hero("WalkingSpritesheet.png", 0, 0, 20.0, 60.0); //CharMan
	CharacterMan hero("all.png", 100, 200, 20.0, 60.0); //CharMan

	
	//int tempX = 0;//временная коорд Х.Снимаем ее после нажатия прав клав мыши
	//int tempY = 0;//коорд Y

	int sizeX = 580, sizeY = 70;
	GraphCoor tops[5][5];
	tops[0][0].x = 70; tops[0][0].y = 330;

	for (int i = 0; i < 5; i++) {
		int coor_y = 330 + (sizeY / 5) * i;
		for (int j = 0; j < 5; j++) {
			tops[i][j].x = 70 + (sizeX / 5) * j;
			tops[i][j].y = coor_y;
		}
	}

	while (window.isOpen())
	{

		Vector2i pixelPos = Mouse::getPosition(window);//забираем коорд курсора
		Vector2f pos = window.mapPixelToCoords(pixelPos);//переводим их в игровые (уходим от коорд окна)


		Event event;
		while (window.pollEvent(event))
		{
			if (event.type == Event::Closed)
				window.close();
		}
		
		float time = static_cast<float>(clock.getElapsedTime().asMicroseconds());
		clock.restart();
		time = time / 600;
		//std::cout<<time<<"\n";

		if (Mouse::isButtonPressed(Mouse::Left)) {
			//isMove = true;
			//tempX = pos.x;//забираем координату нажатия курсора Х
			//tempY = pos.y;//и Y
			

			std::cout << "x0: " << hero.x << " y0: " << hero.y << "\n";
			std::cout << "x1: " << pixelPos.x << " y1: " << pixelPos.y <<"\n";
			std::cout << "x2: " << pos.x << " y2: " << pos.y << "\n";
			for (int i = 0; i < 5; i++) {
				for (int j = 0; j < 5; j++) {
					bool check = inTops(pos.x, pos.y, tops[i][j].x, tops[i][j].y, 580 / 5, 70 / 5);
					if (check){
						std::cout << "[i] " << i << " [j] " << j << "\n";
					}
				}
			}
			
			hero.isMove = true;
			hero.MouseMove(time, pos.x, pos.y);

		}



		if (Keyboard::isKeyPressed(Keyboard::A)) {
			hero.KeyMoveLeft(time);
		}
		if (Keyboard::isKeyPressed(Keyboard::D)) {
			hero.KeyMoveRight(time);
		}
		if (Keyboard::isKeyPressed(Keyboard::W)) {
			hero.KeyMoveUp(time);
		}
		if (Keyboard::isKeyPressed(Keyboard::S)) {
			hero.KeyMoveDown(time);
		}


		/*
		if (isMove) {
			float distance = 0;
			distance = fabs(tempX - hero.x);
			if (distance > 2) {
				if (tempX >= hero.x) { hero.x += 0.1*time; }
				if (tempX < hero.x) { hero.x -= 0.1*time; }
			}
			else {
				isMove = false;
			}
		}*/

		
		hero.sprite.setScale(3, 3); //CharMan
		hero.update(time);
		window.clear();

		//-----------Player-------------------
		/*
		for (int i = 0; i < HEIGHT_MAP; i++)
			for (int j = 0; j < WIDTH_MAP; j++)
			{
				if (TileMap[i][j] == ' ')  mapSprite.setTextureRect(IntRect(0, 0, 32, 32));
				if (TileMap[i][j] == 's')  mapSprite.setTextureRect(IntRect(32, 0, 32, 32));
				if ((TileMap[i][j] == '0')) mapSprite.setTextureRect(IntRect(64, 0, 32, 32));
				mapSprite.setPosition(j * 32, i * 32);
				window.draw(mapSprite);
			}
		*/
		//-----------------------------------

		//------------CharMan----------------
		testMapSprite.setTextureRect(IntRect(0, 0, 240, 135));
		testMapSprite.setPosition(0, 0);
		testMapSprite.setScale(3, 3);
		window.draw(testMapSprite);
		//-----------------------------------

		window.draw(hero.sprite);
		window.display();
	}

	return 0;
}


