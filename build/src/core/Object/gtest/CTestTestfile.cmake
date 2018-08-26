# CMake generated Testfile for 
# Source directory: /Users/rsalm/Projects/Ivina/src/core/Object/gtest
# Build directory: /Users/rsalm/Projects/Ivina/build/src/core/Object/gtest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(object "/Users/rsalm/Projects/Ivina/bin/Debug/gtest-object")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(object "/Users/rsalm/Projects/Ivina/bin/Release/gtest-object")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(object "/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(object "/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object")
else()
  add_test(object NOT_AVAILABLE)
endif()
