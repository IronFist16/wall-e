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
include CMakeFiles/detectpeople.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/detectpeople.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/detectpeople.dir/flags.make

CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: CMakeFiles/detectpeople.dir/flags.make
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: ../src/detectpeople.cpp
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: ../manifest.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/genmsg/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/genpy/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/cpp_common/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rostime/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roscpp_traits/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roscpp_serialization/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/message_runtime/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/catkin/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/gencpp/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/genlisp/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/message_generation/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosbuild/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosconsole/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/std_msgs/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosgraph_msgs/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/xmlrpcpp/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roscpp/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosgraph/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rospack/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roslib/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rospy/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/geometry_msgs/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/sensor_msgs/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/cv_bridge/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/message_filters/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/class_loader/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/pluginlib/package.xml
CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/image_transport/package.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sophie/ROS/src/walle/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o -c /home/sophie/ROS/src/walle/src/detectpeople.cpp

CMakeFiles/detectpeople.dir/src/detectpeople.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectpeople.dir/src/detectpeople.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sophie/ROS/src/walle/src/detectpeople.cpp > CMakeFiles/detectpeople.dir/src/detectpeople.cpp.i

CMakeFiles/detectpeople.dir/src/detectpeople.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectpeople.dir/src/detectpeople.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sophie/ROS/src/walle/src/detectpeople.cpp -o CMakeFiles/detectpeople.dir/src/detectpeople.cpp.s

CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.requires:
.PHONY : CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.requires

CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.provides: CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.requires
	$(MAKE) -f CMakeFiles/detectpeople.dir/build.make CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.provides.build
.PHONY : CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.provides

CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.provides.build: CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o

# Object files for target detectpeople
detectpeople_OBJECTS = \
"CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o"

# External object files for target detectpeople
detectpeople_EXTERNAL_OBJECTS =

../bin/detectpeople: CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o
../bin/detectpeople: CMakeFiles/detectpeople.dir/build.make
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
../bin/detectpeople: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
../bin/detectpeople: CMakeFiles/detectpeople.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/detectpeople"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detectpeople.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/detectpeople.dir/build: ../bin/detectpeople
.PHONY : CMakeFiles/detectpeople.dir/build

CMakeFiles/detectpeople.dir/requires: CMakeFiles/detectpeople.dir/src/detectpeople.cpp.o.requires
.PHONY : CMakeFiles/detectpeople.dir/requires

CMakeFiles/detectpeople.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/detectpeople.dir/cmake_clean.cmake
.PHONY : CMakeFiles/detectpeople.dir/clean

CMakeFiles/detectpeople.dir/depend:
	cd /home/sophie/ROS/src/walle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sophie/ROS/src/walle /home/sophie/ROS/src/walle /home/sophie/ROS/src/walle/build /home/sophie/ROS/src/walle/build /home/sophie/ROS/src/walle/build/CMakeFiles/detectpeople.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/detectpeople.dir/depend

