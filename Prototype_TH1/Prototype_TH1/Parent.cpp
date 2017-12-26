#include "Parent.h"


/*
Parent::Parent(String pathFile, float startX, float startY, float spriteWidth, float spriteHeight)
{

}*/


Parent::~Parent()
{
}


void Parent::update() {
	sprite.setPosition(x, y);
}