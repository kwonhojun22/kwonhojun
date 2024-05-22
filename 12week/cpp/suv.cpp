#include "SUV.h"
#include <iostream>
void suv::setSparewheels(int ii) {
	spareWheels = ii;
}
int suv::getSparewheels() {
	return spareWheels;
};
float suv::getTotalPrice() {
	return (this->wheels * 100.0 + this->price);
}
void suv::klaxon(int ii) {
	for (int i = 0; i < ii; i++) {
		std::cout << "Beep\n";
	}
}
