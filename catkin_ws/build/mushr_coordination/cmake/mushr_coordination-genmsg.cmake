# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mushr_coordination: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imushr_coordination:/home/robot/catkin_ws/src/mushr_coordination/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mushr_coordination_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" NAME_WE)
add_custom_target(_mushr_coordination_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mushr_coordination" "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" "geometry_msgs/Pose:geometry_msgs/PoseArray:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mushr_coordination
  "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_coordination
)

### Generating Services

### Generating Module File
_generate_module_cpp(mushr_coordination
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_coordination
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mushr_coordination_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mushr_coordination_generate_messages mushr_coordination_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" NAME_WE)
add_dependencies(mushr_coordination_generate_messages_cpp _mushr_coordination_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_coordination_gencpp)
add_dependencies(mushr_coordination_gencpp mushr_coordination_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_coordination_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mushr_coordination
  "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_coordination
)

### Generating Services

### Generating Module File
_generate_module_eus(mushr_coordination
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_coordination
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mushr_coordination_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mushr_coordination_generate_messages mushr_coordination_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" NAME_WE)
add_dependencies(mushr_coordination_generate_messages_eus _mushr_coordination_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_coordination_geneus)
add_dependencies(mushr_coordination_geneus mushr_coordination_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_coordination_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mushr_coordination
  "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_coordination
)

### Generating Services

### Generating Module File
_generate_module_lisp(mushr_coordination
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_coordination
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mushr_coordination_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mushr_coordination_generate_messages mushr_coordination_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" NAME_WE)
add_dependencies(mushr_coordination_generate_messages_lisp _mushr_coordination_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_coordination_genlisp)
add_dependencies(mushr_coordination_genlisp mushr_coordination_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_coordination_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mushr_coordination
  "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_coordination
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mushr_coordination
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_coordination
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mushr_coordination_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mushr_coordination_generate_messages mushr_coordination_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" NAME_WE)
add_dependencies(mushr_coordination_generate_messages_nodejs _mushr_coordination_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_coordination_gennodejs)
add_dependencies(mushr_coordination_gennodejs mushr_coordination_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_coordination_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mushr_coordination
  "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_coordination
)

### Generating Services

### Generating Module File
_generate_module_py(mushr_coordination
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_coordination
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mushr_coordination_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mushr_coordination_generate_messages mushr_coordination_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_coordination/msg/GoalPoseArray.msg" NAME_WE)
add_dependencies(mushr_coordination_generate_messages_py _mushr_coordination_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_coordination_genpy)
add_dependencies(mushr_coordination_genpy mushr_coordination_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_coordination_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_coordination)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_coordination
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mushr_coordination_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mushr_coordination_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_coordination)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_coordination
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mushr_coordination_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mushr_coordination_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_coordination)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_coordination
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mushr_coordination_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mushr_coordination_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_coordination)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_coordination
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mushr_coordination_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mushr_coordination_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_coordination)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_coordination\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_coordination
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mushr_coordination_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mushr_coordination_generate_messages_py geometry_msgs_generate_messages_py)
endif()
