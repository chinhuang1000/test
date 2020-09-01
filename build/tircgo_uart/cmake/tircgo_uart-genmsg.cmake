# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tircgo_uart: 3 messages, 2 services")

set(MSG_I_FLAGS "-Itircgo_uart:/home/rachel/ws/src/tircgo_uart/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tircgo_uart_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_tircgo_uart_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tircgo_uart" "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" "tircgo_uart/Lidar_level_reply:tircgo_uart/Tracking_status_reply:std_msgs/Header"
)

get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_tircgo_uart_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tircgo_uart" "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" NAME_WE)
add_custom_target(_tircgo_uart_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tircgo_uart" "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" NAME_WE)
add_custom_target(_tircgo_uart_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tircgo_uart" "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" NAME_WE)
add_custom_target(_tircgo_uart_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tircgo_uart" "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg;/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
)
_generate_msg_cpp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
)
_generate_msg_cpp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
)

### Generating Services
_generate_srv_cpp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
)
_generate_srv_cpp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
)

### Generating Module File
_generate_module_cpp(tircgo_uart
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tircgo_uart_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tircgo_uart_generate_messages tircgo_uart_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_cpp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_cpp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_cpp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_cpp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_cpp _tircgo_uart_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tircgo_uart_gencpp)
add_dependencies(tircgo_uart_gencpp tircgo_uart_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tircgo_uart_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg;/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
)
_generate_msg_eus(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
)
_generate_msg_eus(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
)

### Generating Services
_generate_srv_eus(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
)
_generate_srv_eus(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
)

### Generating Module File
_generate_module_eus(tircgo_uart
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tircgo_uart_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tircgo_uart_generate_messages tircgo_uart_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_eus _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_eus _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_eus _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_eus _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_eus _tircgo_uart_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tircgo_uart_geneus)
add_dependencies(tircgo_uart_geneus tircgo_uart_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tircgo_uart_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg;/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
)
_generate_msg_lisp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
)
_generate_msg_lisp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
)

### Generating Services
_generate_srv_lisp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
)
_generate_srv_lisp(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
)

### Generating Module File
_generate_module_lisp(tircgo_uart
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tircgo_uart_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tircgo_uart_generate_messages tircgo_uart_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_lisp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_lisp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_lisp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_lisp _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_lisp _tircgo_uart_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tircgo_uart_genlisp)
add_dependencies(tircgo_uart_genlisp tircgo_uart_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tircgo_uart_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg;/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
)
_generate_msg_nodejs(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
)
_generate_msg_nodejs(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
)

### Generating Services
_generate_srv_nodejs(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
)
_generate_srv_nodejs(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
)

### Generating Module File
_generate_module_nodejs(tircgo_uart
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tircgo_uart_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tircgo_uart_generate_messages tircgo_uart_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_nodejs _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_nodejs _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_nodejs _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_nodejs _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_nodejs _tircgo_uart_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tircgo_uart_gennodejs)
add_dependencies(tircgo_uart_gennodejs tircgo_uart_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tircgo_uart_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg;/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
)
_generate_msg_py(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
)
_generate_msg_py(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
)

### Generating Services
_generate_srv_py(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
)
_generate_srv_py(tircgo_uart
  "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
)

### Generating Module File
_generate_module_py(tircgo_uart
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tircgo_uart_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tircgo_uart_generate_messages tircgo_uart_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/RobotStatus.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_py _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_py _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Tracking_status_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_py _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/msg/Lidar_level_reply.msg" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_py _tircgo_uart_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rachel/ws/src/tircgo_uart/srv/RobotInvoke.srv" NAME_WE)
add_dependencies(tircgo_uart_generate_messages_py _tircgo_uart_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tircgo_uart_genpy)
add_dependencies(tircgo_uart_genpy tircgo_uart_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tircgo_uart_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tircgo_uart
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(tircgo_uart_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tircgo_uart_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tircgo_uart
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(tircgo_uart_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tircgo_uart_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tircgo_uart
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(tircgo_uart_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tircgo_uart_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tircgo_uart
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(tircgo_uart_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tircgo_uart_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tircgo_uart
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(tircgo_uart_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tircgo_uart_generate_messages_py std_msgs_generate_messages_py)
endif()
