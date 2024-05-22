#include <iostream>
#include "car.h"
#include "suv.h"
#include "motor.h"
#include "engineer.h"
using namespace std;
int main() {
	// sprint 5
	car* mycars[5];
	mycars[0] = new suv;
	mycars[1] = new suv;
	mycars[2] = new motor;
	mycars[3] = new motor;
	mycars[4] = new suv;
	for (int i = 0; i < 5; i++) mycars[i]->klaxon(1);
//for (int i = 0; i < 5; i++) mycars[i]->light(1);
	// Sprint 4
	car* mycar;
	mycar = new car(100.0, 4, 4500.0,4); std::cout << mycar->speed << "\n";
	std::cout << mycar->getPrice() << "\n";
	cout << mycar->getWheels() << endl;
	cout << mycar->gear << endl;
	//std::cout << mycar->price << "\n";
	engineer* bab;
	bab = new engineer;
	std::cout << bab->getCarPrice(mycar) << "\n";

	getchar();
}
