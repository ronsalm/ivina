add_library(object

# Headers
    "../"
    ${CMAKE_HEADER_PUBLIC}

# Source
        ${CMAKE_HEADER_OBJECT}
        IObject.cpp
		Object.cpp 
		ObjectManager.cpp)

add_subdirectory(gtest)
enable_testing()
