#include <climits>

#include "Counter.h"

#include "IObject.h"
#include "ObjectManager.h"

unsigned int Counter::gcntr = 0; 

bool Counter::gLock = true;

int Counter::counter = 0;


Counter::Counter()
{
	std::unique_ptr <ObjectManager> objManager = std::make_unique<ObjectManager>();
	object = std::move( objManager->createObject("Counter") );

	pcntr = 0;
	pLock = false;
	
	minimum = 0;
	maximum = 0;
}

unsigned int Counter::getGid()
{
	return object->getGid();
}

unsigned int Counter::getPid()
{
	return object->getPid();
}

unsigned int Counter::getGCntr()
{
	return gcntr;
}

unsigned int Counter::getPCntr()
{
	return pcntr;
}


int Counter::getCount()
{
	return counter;
}

bool Counter::validate()
{

	bool valid = (counter > minimum) && (counter < maximum);

	return  valid; 
}

int Counter::count()
{
	
	pcntr++;	
	gcntr++;
	
	return counter;
}

void Counter::reset()
{
	counter = 0;
	minimum = 0;
	maximum = 0;
	
	pcntr = 0;
	gcntr = 0;
}

void Counter::setMinimum(int min)
{
	if (maximum < min)
		throw "Minimum larger than Maximum";

	minimum = min;
}

int Counter::getMinimum()
{
	return minimum;
}

void Counter::setMaximum(int max)
{
	if (minimum > max)
		throw "Maximum smaller than Minimum";

	maximum = max;
}

int Counter::getMaximum()
{
	return maximum;
}
