#include <stdio.h>

#include "CounterFactory.h"

#include "ICounter.h"
#include "Incrementor/Incrementor.h"
#include "Decrementor/Decrementor.h"

CounterFactory::CounterFactory()
{
	
}

std::unique_ptr <ICounter> CounterFactory::build( CounterType type )
{
	std::unique_ptr <ICounter> c;

	switch(type)
	{
		case CounterType::INCREMENTOR:
			c = std::make_unique<Incrementor>();
			break;
		case CounterType::DECREMENTOR:
			c = std::make_unique<Decrementor>();
			break;
		default:
			c = std::make_unique<Counter>();
			break;
	}
	return c;	
}
