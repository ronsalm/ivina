#pragma once 

#include "IObject.h"

class Object: public IObject
{
	public:
        Object(const std::string name,const unsigned int);
    
		const unsigned int getPid();
        const std::string getName();
};
