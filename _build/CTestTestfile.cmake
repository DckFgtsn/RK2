# CMake generated Testfile for 
# Source directory: /home/tony/DckFgtsn/workspace/tasks/RK2
# Build directory: /home/tony/DckFgtsn/workspace/tasks/RK2/_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(check "/home/tony/DckFgtsn/workspace/tasks/RK2/_build/check")
set_tests_properties(check PROPERTIES  _BACKTRACE_TRIPLES "/home/tony/DckFgtsn/workspace/tasks/RK2/CMakeLists.txt;33;add_test;/home/tony/DckFgtsn/workspace/tasks/RK2/CMakeLists.txt;0;")
subdirs("source")
subdirs("examples")
subdirs("tests")
subdirs("third-party/gtest")
