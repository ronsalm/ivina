#include "stdio.h"

#include "ICounter.h"
#include "CounterFactory.h"

int main()
{
	printf("Counter Experiment\n");

	std::unique_ptr<CounterFactory> cf = std::make_unique<CounterFactory>();
	std::unique_ptr<ICounter> c = std::move( cf->build(COUNTER) ); 

	return 0;
}
