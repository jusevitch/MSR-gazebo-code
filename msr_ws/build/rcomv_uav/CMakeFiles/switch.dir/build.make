# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav

# Include any dependencies generated for this target.
include CMakeFiles/switch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/switch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/switch.dir/flags.make

CMakeFiles/switch.dir/src/Switch.cpp.o: CMakeFiles/switch.dir/flags.make
CMakeFiles/switch.dir/src/Switch.cpp.o: /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav/src/Switch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/switch.dir/src/Switch.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/switch.dir/src/Switch.cpp.o -c /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav/src/Switch.cpp

CMakeFiles/switch.dir/src/Switch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/switch.dir/src/Switch.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav/src/Switch.cpp > CMakeFiles/switch.dir/src/Switch.cpp.i

CMakeFiles/switch.dir/src/Switch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/switch.dir/src/Switch.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav/src/Switch.cpp -o CMakeFiles/switch.dir/src/Switch.cpp.s

CMakeFiles/switch.dir/src/Switch.cpp.o.requires:

.PHONY : CMakeFiles/switch.dir/src/Switch.cpp.o.requires

CMakeFiles/switch.dir/src/Switch.cpp.o.provides: CMakeFiles/switch.dir/src/Switch.cpp.o.requires
	$(MAKE) -f CMakeFiles/switch.dir/build.make CMakeFiles/switch.dir/src/Switch.cpp.o.provides.build
.PHONY : CMakeFiles/switch.dir/src/Switch.cpp.o.provides

CMakeFiles/switch.dir/src/Switch.cpp.o.provides.build: CMakeFiles/switch.dir/src/Switch.cpp.o


# Object files for target switch
switch_OBJECTS = \
"CMakeFiles/switch.dir/src/Switch.cpp.o"

# External object files for target switch
switch_EXTERNAL_OBJECTS =

/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: CMakeFiles/switch.dir/src/Switch.cpp.o
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: CMakeFiles/switch.dir/build.make
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/libroscpp.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/librosconsole.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/librostime.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /opt/ros/kinetic/lib/libcpp_common.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch: CMakeFiles/switch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/switch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/switch.dir/build: /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/devel/.private/rcomv_uav/lib/rcomv_uav/switch

.PHONY : CMakeFiles/switch.dir/build

CMakeFiles/switch.dir/requires: CMakeFiles/switch.dir/src/Switch.cpp.o.requires

.PHONY : CMakeFiles/switch.dir/requires

CMakeFiles/switch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/switch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/switch.dir/clean

CMakeFiles/switch.dir/depend:
	cd /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/src/RCOMV/rcomv_uav /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav /home/dasc/Ruilin/MSR-gazebo-code/msr_ws/build/rcomv_uav/CMakeFiles/switch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/switch.dir/depend

