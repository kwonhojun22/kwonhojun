#pragma once
#include "car.h"
class motor : public car {
private:
	int spareWheels;
	int helmets;
public:
	void klaxon(int);
//void light(int);
	void setSparewheels(int);
	int getSparewheels();
	float getTotalPrice();
};
