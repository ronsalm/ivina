#pragma once 

#include "IObject.h"

class Object: public IObject
{
	public:
		Object();
		unsigned int getGid();
		unsigned int getPid();
};
