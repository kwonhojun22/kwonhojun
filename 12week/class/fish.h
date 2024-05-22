#pragma once
#include "ani.h"
class fish : public animal {
public:
	fish() { nTail = 1; cout << "fish" << endl; };//construct
	int nTail;
	void swim() { std::cout << " I swim \n"; }
};
