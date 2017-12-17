#pragma once
#include "CustomLibrary.h"

class Player
{
public:

	float x, y, w, h, dx, dy, speed, currentFrame;
	int dir;
	String file;
	Image image;
	Texture texture;
	Sprite sprite;

	Player(String, float, float, float, float);
	void update(float);
	void KeyMoveLeft(float);
	void KeyMoveRight(float);
	void KeyMoveUp(float);
	void KeyMoveDown(float);
	~Player();
};

