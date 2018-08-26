add_subdirectory(Object)

add_library(core
    object/Object.cpp
	$<TARGET_OBJECTS:Object>
)

enable_testing()
