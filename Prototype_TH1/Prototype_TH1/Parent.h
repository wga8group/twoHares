#pragma once
#include "CustomLibrary.h"

class Parent
{
public:
	//Parent(String, float, float, float, float);
	~Parent();
	void update();

	float x, y, fSprWidth, fSprHeight;
	int iSprWidth, iSprHeight;
	String file;
	Image image;
	Texture texture;
	Sprite sprite;
};

