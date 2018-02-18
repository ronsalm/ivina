# Counter GoogleTest
add_executable(gtest-incrementor gtest-incrementor.cpp)

set_target_properties(gtest-incrementor PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-incrementor gtest pthread counters object)
add_test(NAME incrementor COMMAND $<TARGET_FILE:gtest-incrementor>)

enable_testing()
