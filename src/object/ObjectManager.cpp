#include "ObjectManager.h"

#include "IObject.h"
#include "Object.h"

#include <stdio.h>
#include <memory> 
#include <string>

std::unique_ptr <IObject> ObjectManager::createObject( const std::string name )
{
	objects.push_back(name);

	std::unique_ptr <IObject> o;
	o = std::make_unique<Object>();

	return o;	
}
