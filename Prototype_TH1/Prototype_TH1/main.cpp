#include <SFML/Graphics.hpp>
#include "CustomLibrary.h"
#include "Hero.h"
#include "Furniture.h"

//внизу будет пон€тно, зачем эти две функции
void MainDraw(RenderWindow &Window, Furniture &Furn); 
void MainDraw(RenderWindow &Window, Hero &hero, float time);

int main()
{

	int iMapWidth = 720, iMapHeight = 405; //разрешение окна

	RenderWindow window(VideoMode(iMapWidth, iMapHeight), "Prototype TH 1");
	Clock clock;

	Image MapImage;
	MapImage.loadFromFile("images/BarBackround.png");
	Texture MapTexture;
	MapTexture.loadFromImage(MapImage);
	Sprite MapSprite;
	MapSprite.setTexture(MapTexture);

	//в душе не ебу, почему у них такие координаты
	//надеюсь, ты поймешь и объ€снишь мне
	Furniture BarToiletDoor("BarToiletDoor.png", 11, 147, 19.0, 75.0);
	Furniture BarFrontDoor("BarFrontDoor.png", 655, 150, 19.0, 75.0);
	Furniture BarBar("BarBar.png", 138, 227, 147.0, 37.0);
	Furniture BarLamps("BarLamps.png", 93, 57, 158.0, 61.0);
	
	//Hero Player("all.png", 100, 200, 20.0, 60.0);  //одетый  рэнк
	Hero Player("ProtagonistWalkNaked.png", 100, 200, 22.0, 60.0);  //раздетый  рэнк

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

		if (Mouse::isButtonPressed(Mouse::Left)) {
			float tempX = pos.x, tempY = pos.y;

			//выставл€ем границы по кра€м
			if ( pos.x < 60 ) {
				tempX = 60.0F;
			}
			if ( pos.x > (iMapWidth - 70) ) {
				tempX = static_cast<float>(iMapWidth - 70);
			}

			Player.isMove = true;
			Player.MouseMove(time, tempX, pos.y);
		}

		MapSprite.setTextureRect(IntRect(0, 0, 240, 135));
		MapSprite.setPosition(0, 0);
		MapSprite.setScale(3, 3);

		window.clear();
		window.draw(MapSprite);

		MainDraw(window, BarToiletDoor);
		MainDraw(window, BarFrontDoor);
		MainDraw(window, BarBar);
		MainDraw(window, BarLamps);
		MainDraw(window, Player, time);

		window.display();
	}
	return 0;
}

void MainDraw(RenderWindow &Window, Furniture &Furn) {
	Furn.sprite.setScale(3, 3);
	Furn.update();
	Window.draw(Furn.sprite);
}

void MainDraw(RenderWindow &Window, Hero &hero, float time) {
	hero.sprite.setScale(3, 3);
	hero.update(time);
	Window.draw(hero.sprite);
}