cmake_minimum_required(VERSION 3.4)
project(program)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(program Program.cpp)

target_link_libraries(program bridge)

install(TARGETS program RUNTIME DESTINATION bin)
