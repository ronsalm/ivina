# CMake generated Testfile for 
# Source directory: /Users/rsalm/Projects/Ivina/src/counters/Incrementor/gtest
# Build directory: /Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/gtest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(incrementor "/Users/rsalm/Projects/Ivina/bin/Debug/gtest-incrementor")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(incrementor "/Users/rsalm/Projects/Ivina/bin/Release/gtest-incrementor")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(incrementor "/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-incrementor")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(incrementor "/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-incrementor")
else()
  add_test(incrementor NOT_AVAILABLE)
endif()
