# Counter GoogleTest
add_executable(gtest-counter gtest-counter.cpp)

set_target_properties(gtest-counter PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-counter gtest pthread counters object)
add_test(NAME counter COMMAND $<TARGET_FILE:gtest-counter>)

# Counter Factory GoogleTest
add_executable(gtest-counter-factory gtest-counter-factory.cpp)

set_target_properties(gtest-counter-factory PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-counter-factory gtest pthread counters object)
add_test(NAME counter-factory COMMAND $<TARGET_FILE:gtest-counter-factory>)

enable_testing()
