add_library(incrementor OBJECT

#Headers
    "../"
    ${CMAKE_HEADER_PUBLIC}

#Source
    Incrementor.cpp
)

add_subdirectory(gtest)
enable_testing()
