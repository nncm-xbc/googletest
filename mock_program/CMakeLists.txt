cmake_minimum_required(VERSION 3.5)

project(SWENG_G2)

set(sources G02_test.cpp ../googletest/samples/sample1.cc)

add_executable(mock_program ${sources})

target_include_directories(mock_program PUBLIC ../googletest/samples/)

target_link_libraries(mock_program gtest)

set_property(TARGET mock_program PROPERTY CXX_STANDARD 17)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

execute_process (COMMAND ${CMAKE_COMMAND} -E copy
                ${CMAKE_CURRENT_SOURCE_DIR}/input.txt
                ${CMAKE_CURRENT_BINARY_DIR}/input.txt)