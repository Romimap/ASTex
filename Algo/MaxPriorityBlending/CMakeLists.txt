cmake_minimum_required(VERSION 3.0)
 
project(MaxPriorityBlending)


find_package(ASTex)

add_executable(max_priority_blending "")
target_sources(max_priority_blending PRIVATE main_maxpriorityblending.cpp maxpriorityblending.h maxpriorityblending_utils.h)
target_link_libraries(max_priority_blending PRIVATE ASTex)
