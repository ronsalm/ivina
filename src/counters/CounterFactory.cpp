#include <stdio.h>
#include <string>

#include "CounterFactory.h"

#include "ICounter.h"
#include "Incrementor/Incrementor.h"
#include "Decrementor/Decrementor.h"

CounterFactory::CounterFactory()
{
	
}

std::unique_ptr <ICounter> CounterFactory::build (const std::string name)
{
    std::unique_ptr <ICounter> c;
 
    if      ( ! name.compare("Incrementor") )
    {
        c = std::make_unique<Incrementor>();
    }
    else if ( ! name.compare("Decrementor") )
    {
        c = std::make_unique<Decrementor>();
    }
    else if ( ! name.compare("Counter") )
    {
        c = std::make_unique<Counter>();
    }
    else
    {
        throw "Undefined Counter Name";
    }
    return c;
}
