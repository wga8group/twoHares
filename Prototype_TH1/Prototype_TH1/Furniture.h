#pragma once
#include "Parent.h"

//������ ��� ��������
class Furniture :
	public Parent
{
public:
	Furniture(String pathFile, float startX, float startY, float spriteWidth, float spriteHeight);
	~Furniture();
	//virtual void update(); �������� ����� ����� ������ ��� "������" � ���������
};

