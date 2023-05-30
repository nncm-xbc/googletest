cmake_minimum_required(VERSION 3.5)

project(SWENG_G2)

set(sources G02_test.cpp)

add_executable(mock_program ${sources})

target_include_directories(mock_program PUBLIC ../googlemock/test/gmock_all_test.cc ../googletest/include/gtest/gtest.h)

target_link_libraries(mock_program gtest)
target_link_libraries(mock_program ACA_LIB_BP)

set_property(TARGET mock_program PROPERTY CXX_STANDARD 17)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")