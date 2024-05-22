#pragma once
class car {
public:
	car() :speed(0.1), wheels(0), price(0.2),gear(5) {};
	car(float, int, float,float);
	virtual void klaxon(int);
	void setPrice(float);
	float getPrice();
	float speed;
	void speedChange(float);
	int wheels;
	void setWheels(int);
	int getWheels();
	float gear;

	friend class engineer;

	protected:
	float price;
	void speedUp(float);
	void speedDown(float);
	void changegear(float);
	
};
