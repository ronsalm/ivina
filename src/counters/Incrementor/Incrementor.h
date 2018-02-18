#pragma once

#include "IObject.h"

#include "../Counter.h"

class Incrementor: public Counter
{
	private:
		static unsigned int gid;
		unsigned int pid;

		std::unique_ptr<IObject> object; 
	public:
		Incrementor();	
		int count() override;
};
