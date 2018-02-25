#include <stdio.h>
#include <string>

#include "ICounter.h"
#include "CounterFactory.h"

int main()
{
	printf("Counter Experiment\n");

	std::unique_ptr<CounterFactory> cf = std::make_unique<CounterFactory>();
    std::unique_ptr<ICounter> c2 = std::move( cf->build( "Incrementor") );
    
	return 0;
}
