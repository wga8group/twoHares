

#include "CharacterMan.h"
#include "CustomLibrary.h"

CharacterMan::CharacterMan(String F, float X, float Y, float W, float H) {
	dx = 0; dy = 0; speed = 0; dir = 0;
	file = F;
	w = W; h = H;
	iSprWidth = static_cast<int>(w); iSprHeight = static_cast<int>(h);
	image.loadFromFile("images/" + file);
	//image.createMaskFromColor(Color(41, 33, 59));
	texture.loadFromImage(image);
	sprite.setTexture(texture);
	x = X, y = Y;
	sprite.setTextureRect(IntRect(0, 0, iSprWidth, iSprHeight));
	currentFrame = 0;
	tempX = x, tempY = y;
	isMove = false;
}


CharacterMan::~CharacterMan()
{
}

void CharacterMan::update(float time) {
	switch (dir) {
	case 0: dx = speed; dy = 0; break;
	case 1: dx = -speed; dy = 0; break;
	case 2: dx = 0; dy = speed; break;
	case 3: dx = 0; dy = -speed; break;
	case 4: 
		float centreX = x + w;
		float centreY = y + (3 * (h - 10));
		float distanceX = fabs(tempX - centreX);
		float distanceY = fabs(tempY - centreY);

		if (distanceX > 2) {
			if (tempX > centreX) { dx = speed; dy = 0; }
			if (tempX <= centreX) { dx = -speed; dy = 0; }
		}
		else if (distanceY > 2) {
			if (tempY > centreY) { dx = 0; dy = speed; }
			if (tempY <= centreY) { dx = 0; dy = -speed; }
		}
		else {
			dx = 0;
			dy = 0;
			isMove = false;
		}

		break;

	}

	if (!isMove) speed = 0;
	else DoStepOnX(time);

	x += dx*time;
	y += dy*time;
	
	sprite.setPosition(x, y);
}


void CharacterMan::DoStepOnX(float time)
{
	currentFrame += static_cast<float>(0.005*time);
	if (currentFrame > 8)
		currentFrame -= 8;

	float centreX = x + w;
	float centreY = y + (3 * (h-10));
	float distanceX = fabs(tempX - centreX);
	float distanceY = fabs(tempY - centreY);
	if (distanceX > 2) {
		if (tempX > centreX) { sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame), 0, iSprWidth, iSprHeight)); }
		if (tempX <= centreX) { sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame) + iSprWidth, 0, -iSprWidth, iSprHeight)); }
	}
	else {
		if (tempY > centreY) { sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame), 0, iSprWidth, iSprHeight)); }
		if (tempY <= centreY) { sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame) + iSprWidth, 0, -iSprWidth, iSprHeight)); }
	}
}

void CharacterMan::KeyMoveLeft(float time) {
	dir = 1; speed = 0.1F;
	currentFrame += static_cast<float>(0.005*time);
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame) + iSprWidth, 0, -iSprWidth, iSprHeight));
}

void CharacterMan::KeyMoveRight(float time) {
	dir = 0; speed = 0.1F;
	currentFrame += static_cast<float>(0.005*time);
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame), 0, iSprWidth, iSprHeight));
}

void CharacterMan::KeyMoveUp(float time) {
	dir = 3; speed = 0.1F;
	currentFrame += static_cast<float>(0.005*time);
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame), 0, iSprWidth, iSprHeight));
}

void CharacterMan::KeyMoveDown(float time) {
	dir = 2; speed = 0.1F;
	currentFrame += static_cast<float>(0.005*time);
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(iSprWidth * int(currentFrame) + iSprWidth, 0, -iSprWidth, iSprHeight));
}

void CharacterMan::MouseMove(float time, float mouseX, float mouseY) {
	dir = 4; speed = 0.1F;
	tempX = mouseX; tempY = mouseY;
}