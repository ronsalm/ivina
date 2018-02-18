add_subdirectory(Incrementor)
add_subdirectory(Decrementor)

add_library(counters

# Headers
        "../"
        ${CMAKE_HEADER_PUBLIC}

# Source
		CounterFactory.cpp
		Counter.cpp 
		$<TARGET_OBJECTS:decrementor>
		$<TARGET_OBJECTS:incrementor>)

add_subdirectory(gtest)
enable_testing()
