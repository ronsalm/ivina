#ifndef _INCLUDE_INCREMENTOR_GMOCK_HEADER_
#define _INCLUDE_INCREMENTOR_GMOCK_HEADER_

#include "gmock/gmock.h"
#include "incrementor.h"

class MockIncrementor : public Incrementor
{
	public:
		MOCK_METHOD0(getCount, int());					
};

#endif
