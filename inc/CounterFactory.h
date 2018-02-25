#pragma once

#include <string>
#include <memory>

#include "ICounter.h"

class CounterFactory
{
	public:
		CounterFactory();
        std::unique_ptr <ICounter> build (const std::string);
};
