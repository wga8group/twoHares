

#include "CharacterMan.h"
#include "CustomLibrary.h"

CharacterMan::CharacterMan(String F, float X, float Y, float W, float H) {
	dx = 0; dy = 0; speed = 0; dir = 0;
	file = F;
	w = W; h = H;
	image.loadFromFile("images/" + file);
	//image.createMaskFromColor(Color(41, 33, 59));
	texture.loadFromImage(image);
	sprite.setTexture(texture);
	x = X, y = Y;
	sprite.setTextureRect(IntRect(0, 0, w, h));
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
		float distance = 0;
		distance = fabs(tempX - x);
		if (distance > 2) {
			if (tempX >= x) { dx = speed; dy = 0; }
			if (tempX < x) { dx = -speed; dy = 0; }
		}
		else {
			isMove = false;
		}
		break;

	}

	x += dx*time;
	y += dy*time;
	if (!isMove) speed = 0;
	else {
		currentFrame += 0.005*time;
		if (currentFrame > 8)
			currentFrame -= 8;
		if (tempX >= x) { sprite.setTextureRect(IntRect(20 * int(currentFrame), 0, 20, 60)); }
		if (tempX < x) { sprite.setTextureRect(IntRect(20 * int(currentFrame) + 20, 0, -20, 60)); }
	}

	sprite.setPosition(x, y);
}


void CharacterMan::KeyMoveLeft(float time) {
	dir = 1; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(20 * int(currentFrame) + 20, 0, -20, 60));
}

void CharacterMan::KeyMoveRight(float time) {
	dir = 0; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(20 * int(currentFrame), 0, 20, 60));
}

void CharacterMan::KeyMoveUp(float time) {
	dir = 3; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(20 * int(currentFrame), 0, 20, 60));
}

void CharacterMan::KeyMoveDown(float time) {
	dir = 2; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 8)
		currentFrame -= 8;
	sprite.setTextureRect(IntRect(20 * int(currentFrame) + 20, 0, -20, 60));
}

void CharacterMan::MouseMove(float time, float mouseX, float mouseY) {
	dir = 4; speed = 0.1;
	tempX = mouseX; tempY = mouseY;
}