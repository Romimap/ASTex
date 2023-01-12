cmake_minimum_required(VERSION 2.8)
 
project(TilingAndBlending LANGUAGES CXX)

find_package(ASTex)

add_executable(tiling_and_blending "")
target_sources(tiling_and_blending PRIVATE tiling_and_blending.cpp tiling_and_blending.h)
target_link_libraries(tiling_and_blending PRIVATE ASTex)

