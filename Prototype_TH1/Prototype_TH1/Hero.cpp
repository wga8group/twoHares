#include "Hero.h"


//персонаж
Hero::Hero(String pathFile, float startX, float startY, float spriteWidth, float spriteHeight)
{
	file = pathFile;
	x = startX, y = startY;
	fSprWidth = spriteWidth; fSprHeight = spriteHeight;
	iSprWidth = static_cast<int>(fSprWidth); iSprHeight = static_cast<int>(fSprHeight);

	dx = 0; dy = 0; speed = 0; dir = 0;
	centreX = x + fSprWidth;
	distanceX = fabs(tempX - centreX);
	currentFrame = 0;
	tempX = x, tempY = y;
	isMove = false;

	image.loadFromFile("images/" + file);
	texture.loadFromImage(image);
	sprite.setTexture(texture);
	sprite.setTextureRect(IntRect(0, 0, iSprWidth, iSprHeight));
}


Hero::~Hero()
{
}


void Hero::update(float time) {
	switch (dir) {
	case 0: // mouse move
		centreX = x + fSprWidth;
		distanceX = fabs(tempX - centreX);

		if (distanceX > 2) {
			if (tempX > centreX) { dx = speed; dy = 0; }
			if (tempX <= centreX) { dx = -speed; dy = 0; }
		}
		else {
			dx = 0;
			dy = 0;
			isMove = false;
		}

		break;
	}

	if (!isMove) speed = 0;
	else MoveHeroToPoint(time);

	x += dx*time;
	y += dy*time;

	sprite.setPosition(x, y);
}

void Hero::MouseMove(float time, float mouseX, float mouseY) {
	dir = 0; speed = 0.1F;
	tempX = mouseX; tempY = mouseY;
}

void Hero::MoveHeroToPoint(float time)
{
	currentFrame += static_cast<float>(0.005*time);
	if (currentFrame > 8)
		currentFrame -= 8;

	if (distanceX > 2) {
		if (tempX > centreX) { sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame), 0, iSprWidth, iSprHeight)); }
		if (tempX <= centreX) { sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame) + iSprWidth, 0, -iSprWidth, iSprHeight)); }
	}
}