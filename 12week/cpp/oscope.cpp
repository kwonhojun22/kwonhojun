#include "oscope.h"
oscope::oscope() { x = 512; };
float oscope::getvoltage() {
   if (!onoff) return 0;
   return(float)(rand() % 50) - 25;
}
float oscope::getcurrent() {
   if (!onoff) return 0;
   return(float)(rand() % 20) - 10;
}
