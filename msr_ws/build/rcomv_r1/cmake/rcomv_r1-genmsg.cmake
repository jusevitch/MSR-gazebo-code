# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rcomv_r1: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ircomv_r1:/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rcomv_r1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" NAME_WE)
add_custom_target(_rcomv_r1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rcomv_r1" "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" ""
)

get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" NAME_WE)
add_custom_target(_rcomv_r1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rcomv_r1" "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rcomv_r1
)
_generate_msg_cpp(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rcomv_r1
)

### Generating Services

### Generating Module File
_generate_module_cpp(rcomv_r1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rcomv_r1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rcomv_r1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rcomv_r1_generate_messages rcomv_r1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_cpp _rcomv_r1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_cpp _rcomv_r1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rcomv_r1_gencpp)
add_dependencies(rcomv_r1_gencpp rcomv_r1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rcomv_r1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rcomv_r1
)
_generate_msg_eus(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rcomv_r1
)

### Generating Services

### Generating Module File
_generate_module_eus(rcomv_r1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rcomv_r1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rcomv_r1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rcomv_r1_generate_messages rcomv_r1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_eus _rcomv_r1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_eus _rcomv_r1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rcomv_r1_geneus)
add_dependencies(rcomv_r1_geneus rcomv_r1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rcomv_r1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rcomv_r1
)
_generate_msg_lisp(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rcomv_r1
)

### Generating Services

### Generating Module File
_generate_module_lisp(rcomv_r1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rcomv_r1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rcomv_r1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rcomv_r1_generate_messages rcomv_r1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_lisp _rcomv_r1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_lisp _rcomv_r1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rcomv_r1_genlisp)
add_dependencies(rcomv_r1_genlisp rcomv_r1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rcomv_r1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rcomv_r1
)
_generate_msg_nodejs(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rcomv_r1
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rcomv_r1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rcomv_r1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rcomv_r1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rcomv_r1_generate_messages rcomv_r1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_nodejs _rcomv_r1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_nodejs _rcomv_r1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rcomv_r1_gennodejs)
add_dependencies(rcomv_r1_gennodejs rcomv_r1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rcomv_r1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rcomv_r1
)
_generate_msg_py(rcomv_r1
  "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rcomv_r1
)

### Generating Services

### Generating Module File
_generate_module_py(rcomv_r1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rcomv_r1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rcomv_r1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rcomv_r1_generate_messages rcomv_r1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/ParametricPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_py _rcomv_r1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_r1/msg/CubicPath.msg" NAME_WE)
add_dependencies(rcomv_r1_generate_messages_py _rcomv_r1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rcomv_r1_genpy)
add_dependencies(rcomv_r1_genpy rcomv_r1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rcomv_r1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rcomv_r1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rcomv_r1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rcomv_r1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rcomv_r1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rcomv_r1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rcomv_r1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rcomv_r1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rcomv_r1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rcomv_r1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rcomv_r1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rcomv_r1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
