project(mpc)

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

link_directories(/usr/local/lib)

set(sources src/MPC.cpp)
add_executable(mpc ${sources})

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    target_link_libraries(mpc ipopt python2.7)
else()
    target_link_libraries(mpc ipopt python)
endif()