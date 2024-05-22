#include "engineer.h"
int engineer::getCarPrice(car* xx) {
	return xx->price; // access protected or private
}
int engineer::getCarwheel(car* yy) {
	return yy->wheels;
}
