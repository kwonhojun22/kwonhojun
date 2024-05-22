#include <iostream>
#include "tv.h"
#include "oscope.h"
int main() {
   tv tv1, tv2;
   oscope os1, os2;
   cout << "(" << os1.x << " " << os1.y << ")" << endl;
   cout << "onoff" << os1.onoff<< " " << os2.onoff << endl;
   cout << "bright" << endl;
   cout << os1.getbrightness() << " " << os2.getbrightness() << endl;
   cout << "voltage" << endl;
   cout << os1.getvoltage() << " " << os2.getvoltage() << endl;
   cout << os1.volumecontrol() << endl;
   cout << os1.channel << endl;
   return 123;
}
