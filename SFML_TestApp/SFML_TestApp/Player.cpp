#include "Player.h"
#include "CustomLibrary.h"


Player::Player(String F, float X, float Y, float W, float H) {
	dx = 0; dy = 0; speed = 0; dir = 0;
	file = F;
	w = W; h = H;
	image.loadFromFile("images/" + file);
	image.createMaskFromColor(Color(41, 33, 59));
	texture.loadFromImage(image);
	sprite.setTexture(texture);
	x = X, y = Y;
	sprite.setTextureRect(IntRect(0, 0, w, h));
	currentFrame = 0;
}


void Player::update(float time) {
	switch (dir) {
	case 0: dx = speed; dy = 0; break;
	case 1: dx = -speed; dy = 0; break;
	case 2: dx = 0; dy = speed; break;
	case 3: dx = 0; dy = -speed; break;
	}

	x += dx*time;
	y += dy*time;
	speed = 0;

	sprite.setPosition(x, y);

}


void Player::KeyMoveLeft(float time) {
	dir = 1; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 3)
		currentFrame -= 3;
	sprite.setTextureRect(IntRect(96 * int(currentFrame), 96, 96, 96));
}

void Player::KeyMoveRight(float time) {
	dir = 0; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 3)
		currentFrame -= 3;
	sprite.setTextureRect(IntRect(96 * int(currentFrame), 192, 96, 96));
}

void Player::KeyMoveUp(float time) {
	dir = 3; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 3)
		currentFrame -= 3;
	sprite.setTextureRect(IntRect(96 * int(currentFrame), 288, 96, 96));
}

void Player::KeyMoveDown(float time) {
	dir = 2; speed = 0.1;
	currentFrame += 0.005*time;
	if (currentFrame > 3)
		currentFrame -= 3;
	sprite.setTextureRect(IntRect(96 * int(currentFrame), 0, 96, 96));
}


Player::~Player()
{
}
