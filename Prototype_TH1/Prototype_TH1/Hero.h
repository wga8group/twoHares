#pragma once
#include "Parent.h"

//персонаж
class Hero :
	public Parent
{
public:
	Hero(String pathFile, float startX, float startY, float spriteWidth, float spriteHeight);
	~Hero();
	void update(float); //хз, я тут "перегружаю" вместо "переопрделения", вроде логичнее так
	void MouseMove(float, float, float);
	void MoveHeroToPoint(float);

	float dx, dy, speed, currentFrame, tempX, tempY, centreX, distanceX;
	int dir;
	bool isMove;
};

