cmake_minimum_required(VERSION 3.15)
project(MyCppApp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE Debug)

include_directories(include)
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)
include(${CMAKE_BINARY_DIR}/conandeps_legacy.cmake)

find_package(FMT REQUIRED)

file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(MyCppApp ${SOURCES})

target_include_directories(MyCppApp PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(MyCppApp PRIVATE fmt::fmt)

