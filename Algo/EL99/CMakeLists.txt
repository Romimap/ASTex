cmake_minimum_required(VERSION 2.8)
 
project(EL99 LANGUAGES CXX)

find_package(ASTex)

add_executable(test_EL99 "")
target_sources(test_EL99 PRIVATE EL99.hxx test_EL99.cpp)
target_link_libraries(test_EL99 PRIVATE ASTex)

# nice vs solution
set_target_properties(test_EL99 PROPERTIES FOLDER Algo)

