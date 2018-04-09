project(q1)

cmake_minimum_required (VERSION 3.5)

# -g allows for gdb debugging
# turn on -03 for best performance
add_definitions(-std=c++11)

set(CXX_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS, "${CXX_FLAGS}")

find_package(Eigen3)

include_directories(
    ${EIGEN3_INCLUDE_DIR}
    /usr/local/include
)

set(sources src/main.cpp)

link_directories(/usr/local/lib)

add_executable(polyfit ${sources})

target_link_libraries(polyfit)
