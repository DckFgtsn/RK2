cmake_minimum_required(VERSION 3.4)
project(bridge)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(bridge Concept1.cpp Concept2.cpp Shapes.cpp)

install(TARGETS bridge LIBRARY DESTINATION lib)
