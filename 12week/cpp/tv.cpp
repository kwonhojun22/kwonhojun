#pragma once
#include "tv.h"
tv::tv() {//public에서 있는 것들을 재정의
   x = 1000;
   y = 500;
   nswith = 1;
   voltage = 220;
   onoff = false;
   bright = 50;
}
void tv::turnon() {//함수사용
   if (this->onoff) onoff = false;
   else onoff = true;
}
void tv::brightcontrol() {
   bright = float(rand() % 100);
};
float const tv::getbrightness() {
   return bright;
};
void tv::turnchannel(int n) {
   channel = n;
   n = 100;
};
void tv::volumecontrol() {
   volume = float(rand() % 10);
}
