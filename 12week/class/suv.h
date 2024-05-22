#pragma once
#include "car.h"
class suv : public car {
private:
	int spareWheels;
public:
	void klaxon(int);
void light(int);
	void setSparewheels(int);
	int getSparewheels();
	float getTotalPrice();
};
