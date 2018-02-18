#include <stdio.h>

#include "Decrementor.h"

#include "IObject.h"
#include "ObjectManager.h"

unsigned int Decrementor::gid = 0;

Decrementor::Decrementor()
	    :pid(++gid)
{	
	std::unique_ptr <ObjectManager> objManager = std::make_unique<ObjectManager>();
	object = std::move( objManager->createObject("Decrementor") );
}


int Decrementor::count()
{
	return counter = Counter::count() - 1;
}
