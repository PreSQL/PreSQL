cmake_minimum_required(VERSION 3.3)
project(PreSQL_Compiler)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_custom_target(MySQL_Lexer_Parser
    COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/src/grammar/build.sh
    COMMENT "Building MySQL lexer and parser files."
)

set(SOURCE_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/PreSQL_Compiler.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/PreSQL_Compiler.h)

add_executable(PreSQL_Compiler ${SOURCE_FILES})
add_dependencies(PreSQL_Compiler MySQL_Lexer_Parser)