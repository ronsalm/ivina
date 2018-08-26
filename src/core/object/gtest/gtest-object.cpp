#include "gtest/gtest.h"
#include <memory>

#include "core/Object.h"

TEST ( Object, Construct )
{
std::shared_ptr<Object> obj = std::make_shared<Object>("gtest");
    ASSERT_NE(obj, nullptr);
}

TEST ( Object, UniqueName )
{
    Object obj = new Object("unique");
    ASSERT_NE(obj, nullptr);
    Object obj = new Object("unique");
    ASSERT_EQ(obj, nullptr);
}

TEST ( Object, getByName )
{
    Object obj = new Object("FancyName");

}

int main( int argc, char**argv)
{
::testing::InitGoogleTest(&argc, argv);
return RUN_ALL_TESTS();
}
