# CMake generated Testfile for 
# Source directory: /Users/rsalm/Projects/Ivina/src/counters/Decrementor/gtest
# Build directory: /Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/gtest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(decrementor "/Users/rsalm/Projects/Ivina/bin/Debug/gtest-decrementor")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(decrementor "/Users/rsalm/Projects/Ivina/bin/Release/gtest-decrementor")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(decrementor "/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-decrementor")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(decrementor "/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-decrementor")
else()
  add_test(decrementor NOT_AVAILABLE)
endif()
