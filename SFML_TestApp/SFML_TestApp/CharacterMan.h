#pragma once
#include "CustomLibrary.h"

class CharacterMan
{
public:
	
	CharacterMan(String, float, float, float, float);
	~CharacterMan();
	void update(float);
	void KeyMoveLeft(float);
	void KeyMoveRight(float);
	void KeyMoveUp(float);
	void KeyMoveDown(float);
	void MouseMove(float, float, float);

	float x, y, w, h, dx, dy, speed, currentFrame, tempX, tempY;
	int dir;
	String file;
	Image image;
	Texture texture;
	Sprite sprite;
	bool isMove;

};
