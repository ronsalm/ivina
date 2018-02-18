# Object GoogleTest
add_executable(gtest-object gtest-object.cpp)

set_target_properties(gtest-object PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-object gtest pthread object)
add_test(NAME object COMMAND $<TARGET_FILE:gtest-object>)

enable_testing()
