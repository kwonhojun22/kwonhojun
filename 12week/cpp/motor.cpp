#include "motor.h"
#include <iostream>
void motor::setSparewheels(int ii) {
	spareWheels = ii;
}
int motor::getSparewheels() {
	return spareWheels;
};
float motor::getTotalPrice() {
	return (this->wheels * 100.0 + this->price);
}
void motor::klaxon(int ii) {
	for (int i = 0; i < ii; i++) {
		std::cout << "BagaBaga\n";
	}
}
/*void motor::light(int ii) {
	for (int i = 0; i < ii; i++) {
		std::cout << "ZZang" << std::endl;
	}
}*/
