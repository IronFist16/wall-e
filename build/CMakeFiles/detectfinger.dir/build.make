# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/sophie/ROS/src/walle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sophie/ROS/src/walle/build

# Include any dependencies generated for this target.
include CMakeFiles/detectfinger.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/detectfinger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/detectfinger.dir/flags.make

CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: CMakeFiles/detectfinger.dir/flags.make
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: ../src/SingleControl/main.cpp
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: ../manifest.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/genmsg/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/genpy/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/cpp_common/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rostime/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/roscpp_traits/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/roscpp_serialization/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/message_runtime/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/catkin/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/gencpp/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/genlisp/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/message_generation/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rosbuild/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rosconsole/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/std_msgs/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rosgraph_msgs/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/xmlrpcpp/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/roscpp/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rosgraph/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rospack/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/roslib/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/rospy/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/geometry_msgs/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/sensor_msgs/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/cv_bridge/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/message_filters/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/class_loader/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/pluginlib/package.xml
CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o: /opt/ros/indigo/share/image_transport/package.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sophie/ROS/src/walle/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o -c /home/sophie/ROS/src/walle/src/SingleControl/main.cpp

CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sophie/ROS/src/walle/src/SingleControl/main.cpp > CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.i

CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sophie/ROS/src/walle/src/SingleControl/main.cpp -o CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.s

CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.requires:
.PHONY : CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.requires

CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.provides: CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/detectfinger.dir/build.make CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.provides.build
.PHONY : CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.provides

CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.provides.build: CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o

# Object files for target detectfinger
detectfinger_OBJECTS = \
"CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o"

# External object files for target detectfinger
detectfinger_EXTERNAL_OBJECTS =

../bin/detectfinger: CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o
../bin/detectfinger: CMakeFiles/detectfinger.dir/build.make
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
../bin/detectfinger: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
../bin/detectfinger: CMakeFiles/detectfinger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/detectfinger"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detectfinger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/detectfinger.dir/build: ../bin/detectfinger
.PHONY : CMakeFiles/detectfinger.dir/build

CMakeFiles/detectfinger.dir/requires: CMakeFiles/detectfinger.dir/src/SingleControl/main.cpp.o.requires
.PHONY : CMakeFiles/detectfinger.dir/requires

CMakeFiles/detectfinger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/detectfinger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/detectfinger.dir/clean

CMakeFiles/detectfinger.dir/depend:
	cd /home/sophie/ROS/src/walle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sophie/ROS/src/walle /home/sophie/ROS/src/walle /home/sophie/ROS/src/walle/build /home/sophie/ROS/src/walle/build /home/sophie/ROS/src/walle/build/CMakeFiles/detectfinger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/detectfinger.dir/depend
