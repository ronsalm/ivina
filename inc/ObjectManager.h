#pragma once

#include <memory>
#include <vector>
#include <string>

#include "IObject.h"

class ObjectManager
{
	private:
		std::vector<std::string> objects;
	public:
		std::unique_ptr <IObject> createObject(const std::string);
};

