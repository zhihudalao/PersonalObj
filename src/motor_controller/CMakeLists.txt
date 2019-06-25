cmake_minimum_required(VERSION 2.8.3)
project(motor_controller)
SET( CMAKE_CXX_FLAGS "-std=c++11 -O3")
find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  std_srvs
)
add_service_files(
   FILES
   cmd.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)
catkin_package(
  CATKIN_DEPENDS 
  message_runtime 
  roscpp  
  std_msgs
)
 
include_directories(
  include ${catkin_INCLUDE_DIRS}
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(motor_controller src/motor_controller.cpp)

add_dependencies(motor_controller ${motor_controller_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(motor_controller
  ${catkin_LIBRARIES}
)
