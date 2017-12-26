#include "Furniture.h"

//мебель без анимации
Furniture::Furniture(String pathFile, float startX, float startY, float spriteWidth, float spriteHeight)
{
	file = pathFile;
	x = startX, y = startY;
	fSprWidth = spriteWidth; fSprHeight = spriteHeight;
	iSprWidth = static_cast<int>(fSprWidth); iSprHeight = static_cast<int>(fSprHeight);

	image.loadFromFile("images/" + file);
	texture.loadFromImage(image);
	sprite.setTexture(texture);
	sprite.setTextureRect(IntRect(0, 0, iSprWidth, iSprHeight));
}


Furniture::~Furniture()
{
}

/* заготовочка для мебели с анимацией, чтобы не забыть, как делать
void Furniture::update() {
	
}*/