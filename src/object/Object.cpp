#include "Object.h"

Object::Object(const std::string n,const unsigned int p):IObject(n,p)
{
    
}
	
const unsigned int Object::getPid()
{
	return pid;
}

const std::string Object::getName()
{
    return name;
}
