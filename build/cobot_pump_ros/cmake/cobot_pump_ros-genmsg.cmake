# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cobot_pump_ros: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cobot_pump_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" NAME_WE)
add_custom_target(_cobot_pump_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cobot_pump_ros" "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" ""
)

get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" NAME_WE)
add_custom_target(_cobot_pump_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cobot_pump_ros" "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" ""
)

get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" NAME_WE)
add_custom_target(_cobot_pump_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cobot_pump_ros" "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" ""
)

get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" NAME_WE)
add_custom_target(_cobot_pump_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cobot_pump_ros" "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" ""
)

get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" NAME_WE)
add_custom_target(_cobot_pump_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cobot_pump_ros" "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_cpp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_cpp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_cpp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_cpp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
)

### Generating Module File
_generate_module_cpp(cobot_pump_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cobot_pump_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cobot_pump_ros_generate_messages cobot_pump_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_cpp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_cpp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_cpp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_cpp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_cpp _cobot_pump_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cobot_pump_ros_gencpp)
add_dependencies(cobot_pump_ros_gencpp cobot_pump_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cobot_pump_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_eus(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_eus(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_eus(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_eus(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
)

### Generating Module File
_generate_module_eus(cobot_pump_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cobot_pump_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cobot_pump_ros_generate_messages cobot_pump_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_eus _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_eus _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_eus _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_eus _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_eus _cobot_pump_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cobot_pump_ros_geneus)
add_dependencies(cobot_pump_ros_geneus cobot_pump_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cobot_pump_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_lisp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_lisp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_lisp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_lisp(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
)

### Generating Module File
_generate_module_lisp(cobot_pump_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cobot_pump_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cobot_pump_ros_generate_messages cobot_pump_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_lisp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_lisp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_lisp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_lisp _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_lisp _cobot_pump_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cobot_pump_ros_genlisp)
add_dependencies(cobot_pump_ros_genlisp cobot_pump_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cobot_pump_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_nodejs(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_nodejs(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_nodejs(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_nodejs(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
)

### Generating Module File
_generate_module_nodejs(cobot_pump_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cobot_pump_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cobot_pump_ros_generate_messages cobot_pump_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_nodejs _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_nodejs _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_nodejs _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_nodejs _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_nodejs _cobot_pump_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cobot_pump_ros_gennodejs)
add_dependencies(cobot_pump_ros_gennodejs cobot_pump_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cobot_pump_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_py(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_py(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_py(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
)
_generate_srv_py(cobot_pump_ros
  "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
)

### Generating Module File
_generate_module_py(cobot_pump_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cobot_pump_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cobot_pump_ros_generate_messages cobot_pump_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_py _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_py _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_py _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_py _cobot_pump_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv" NAME_WE)
add_dependencies(cobot_pump_ros_generate_messages_py _cobot_pump_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cobot_pump_ros_genpy)
add_dependencies(cobot_pump_ros_genpy cobot_pump_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cobot_pump_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cobot_pump_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cobot_pump_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cobot_pump_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cobot_pump_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cobot_pump_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cobot_pump_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cobot_pump_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cobot_pump_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cobot_pump_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cobot_pump_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
