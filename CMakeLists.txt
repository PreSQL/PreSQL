cmake_minimum_required(VERSION 3.3)
project(PreSQL)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_custom_target(MySQLGrammar
    COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/src/grammar/build.sh
    COMMENT "Building MySQL grammar."
)

set(SOURCE_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/PreSQL.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/PreSQL.h)

add_executable(PreSQL ${SOURCE_FILES})
add_dependencies(PreSQL MySQLGrammar)