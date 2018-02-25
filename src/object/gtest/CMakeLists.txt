# Object GoogleTest
add_executable(gtest-object gtest-object.cpp)

set_target_properties(gtest-object PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-object gtest pthread object)
add_test(NAME object COMMAND $<TARGET_FILE:gtest-object>)

# Object GoogleTest
add_executable(gtest-object-manager gtest-object-manager.cpp)

set_target_properties(gtest-object-manager PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-object-manager gtest pthread object)
add_test(NAME object-manager COMMAND $<TARGET_FILE:gtest-object-manager>)

enable_testing()
