# Counter GoogleTest
add_executable(gtest-decrementor gtest-decrementor.cpp)

set_target_properties(gtest-decrementor PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${GTEST_OUTPUT_DIR})

target_link_libraries(gtest-decrementor gtest pthread counters object)
add_test(NAME decrementor COMMAND $<TARGET_FILE:gtest-decrementor>)

enable_testing()
