#include <stdio.h>

#include "Incrementor.h"

#include "IObject.h"
#include "ObjectManager.h"

unsigned int Incrementor::gid = 0;

Incrementor::Incrementor()
	    :pid(++gid)
{
	std::unique_ptr <ObjectManager> objManager = std::make_unique<ObjectManager>();
	object = std::move( objManager->createObject("Incrementor") );
}

int Incrementor::count()
{
	return counter = Counter::count() + 1;
}
