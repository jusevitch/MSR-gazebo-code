# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboclaw_node: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iroboclaw_node:/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboclaw_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" NAME_WE)
add_custom_target(_roboclaw_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboclaw_node" "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" ""
)

get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" NAME_WE)
add_custom_target(_roboclaw_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboclaw_node" "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw_node
)
_generate_msg_cpp(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw_node
)

### Generating Services

### Generating Module File
_generate_module_cpp(roboclaw_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboclaw_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboclaw_node_generate_messages roboclaw_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_cpp _roboclaw_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_cpp _roboclaw_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboclaw_node_gencpp)
add_dependencies(roboclaw_node_gencpp roboclaw_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboclaw_node
)
_generate_msg_eus(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboclaw_node
)

### Generating Services

### Generating Module File
_generate_module_eus(roboclaw_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboclaw_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboclaw_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboclaw_node_generate_messages roboclaw_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_eus _roboclaw_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_eus _roboclaw_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboclaw_node_geneus)
add_dependencies(roboclaw_node_geneus roboclaw_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw_node
)
_generate_msg_lisp(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw_node
)

### Generating Services

### Generating Module File
_generate_module_lisp(roboclaw_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboclaw_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboclaw_node_generate_messages roboclaw_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_lisp _roboclaw_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_lisp _roboclaw_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboclaw_node_genlisp)
add_dependencies(roboclaw_node_genlisp roboclaw_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboclaw_node
)
_generate_msg_nodejs(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboclaw_node
)

### Generating Services

### Generating Module File
_generate_module_nodejs(roboclaw_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboclaw_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboclaw_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboclaw_node_generate_messages roboclaw_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_nodejs _roboclaw_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_nodejs _roboclaw_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboclaw_node_gennodejs)
add_dependencies(roboclaw_node_gennodejs roboclaw_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw_node
)
_generate_msg_py(roboclaw_node
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw_node
)

### Generating Services

### Generating Module File
_generate_module_py(roboclaw_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboclaw_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboclaw_node_generate_messages roboclaw_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Motors_currents.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_py _roboclaw_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/roboclaw_ros/roboclaw_node/msg/Wheels_speeds.msg" NAME_WE)
add_dependencies(roboclaw_node_generate_messages_py _roboclaw_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboclaw_node_genpy)
add_dependencies(roboclaw_node_genpy roboclaw_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboclaw_node_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboclaw_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboclaw_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboclaw_node_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboclaw_node_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboclaw_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboclaw_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboclaw_node_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw_node)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboclaw_node_generate_messages_py std_msgs_generate_messages_py)
endif()
