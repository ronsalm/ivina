#include "gtest/gtest.h"
#include "../Object.h"

void SetUp()
{
	
}

TEST( Init , Object )
{
    std::unique_ptr<Object> obj = std::make_unique<Object>("gtest",0);
    ASSERT_NE( nullptr, obj );
}

TEST( Get , Object )
{
    unsigned int id;
    
    for (id = 0; id <= 42; id++)
    {
        std::unique_ptr<Object> obj = std::make_unique<Object>("gtest",id);    
        ASSERT_EQ( id, obj->getPid() );
    }
}

int main( int argc, char**argv)
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
