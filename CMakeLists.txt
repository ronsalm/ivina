# Version
cmake_minimum_required(VERSION 3.2.7)

set(Counter_VERSION_MAJOR 1)
set(Counter_VERSION_MINOR 0)

# Project Name
project (Application)

# Compiler Flags
if (UNIX)
    set (CMAKE_CXX_COMPILER     "/usr/bin/g++")
elseif(APPLE)
    set (CMAKE_CXX_COMPILER     "/usr/bin/clang++")
endif(UNIX)

set (CMAKE_CXX_FLAGS                "-Wall")
set (CMAKE_CXX_FLAGS_DEBUG          "-g")
set (CMAKE_CXX_STANDARD 14)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

# Directory Setup
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)

set(GTEST_OUTPUT_DIR ${CMAKE_SOURCE_DIR}/bin)

set(CMAKE_HEADER_PUBLIC "${CMAKE_SOURCE_DIR}/inc")

include_directories(
	"${CMAKE_SOURCE_DIR}/inc" 
	"${CMAKE_SOURCE_DIR}/ext/inc" 
	) 
add_subdirectory("src")
add_subdirectory("doc")
add_subdirectory("ext")

# Google Test
enable_testing()

# Program
add_executable(application ${CMAKE_SOURCE_DIR}/src/main.cpp ${CMAKE_HEADER_PUBLIC} )
target_link_libraries(application counters object)
