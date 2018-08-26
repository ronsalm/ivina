#include <iostream>
#include "core/Object.h"

int main()
{
    Object obj = Object("test");
    std::cout << obj.name << std::endl;
}
