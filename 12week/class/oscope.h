#pragma once
#include "tv.h"
class oscope : public tv {
public:
   oscope();//con
   float getvoltage();
   float getcurrent();
};
