#pragma once

#include <memory>

#include "ICounter.h"

enum CounterType
{
	COUNTER,
	INCREMENTOR,
	DECREMENTOR
};

class CounterFactory
{
	public:
		CounterFactory();
		std::unique_ptr <ICounter> build (CounterType);
};
