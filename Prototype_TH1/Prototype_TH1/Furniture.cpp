#include "Furniture.h"

//������ ��� ��������
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

/* ����������� ��� ������ � ���������, ����� �� ������, ��� ������
void Furniture::update() {
	
}*/