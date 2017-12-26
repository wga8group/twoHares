#pragma once
#include "Parent.h"

//мебель без анимации
class Furniture :
	public Parent
{
public:
	Furniture(String pathFile, float startX, float startY, float spriteWidth, float spriteHeight);
	~Furniture();
	//virtual void update(); подобную штуку будем делать для "мебели" с анимацией
};

