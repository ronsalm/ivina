# CMake generated Testfile for 
# Source directory: /Users/rsalm/Projects/Ivina/src/counters/gtest
# Build directory: /Users/rsalm/Projects/Ivina/build/src/counters/gtest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(counter "/Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(counter "/Users/rsalm/Projects/Ivina/bin/Release/gtest-counter")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(counter "/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(counter "/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter")
else()
  add_test(counter NOT_AVAILABLE)
endif()
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(counter-factory "/Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter-factory")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(counter-factory "/Users/rsalm/Projects/Ivina/bin/Release/gtest-counter-factory")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(counter-factory "/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter-factory")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(counter-factory "/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter-factory")
else()
  add_test(counter-factory NOT_AVAILABLE)
endif()
