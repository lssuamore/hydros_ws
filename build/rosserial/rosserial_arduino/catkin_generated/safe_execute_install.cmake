execute_process(COMMAND "/home/rhouck/hydros_ws/build/rosserial/rosserial_arduino/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/rhouck/hydros_ws/build/rosserial/rosserial_arduino/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
