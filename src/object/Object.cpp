#include "Object.h"

Object::Object()
{
	pid = ++gid;
}

unsigned int Object::getGid()
{
	return gid;
}
	
unsigned int Object::getPid()
{
	return pid;
}
