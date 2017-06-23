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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build

# Include any dependencies generated for this target.
include applications/CMakeFiles/monocular_calibration.dir/depend.make

# Include the progress variables for this target.
include applications/CMakeFiles/monocular_calibration.dir/progress.make

# Include the compile flags for this target's objects.
include applications/CMakeFiles/monocular_calibration.dir/flags.make

applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o: applications/CMakeFiles/monocular_calibration.dir/flags.make
applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o: ../applications/monocular_calibration.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o -c /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/applications/monocular_calibration.cpp

applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.i"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/applications/monocular_calibration.cpp > CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.i

applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.s"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/applications/monocular_calibration.cpp -o CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.s

applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.requires:
.PHONY : applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.requires

applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.provides: applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.requires
	$(MAKE) -f applications/CMakeFiles/monocular_calibration.dir/build.make applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.provides.build
.PHONY : applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.provides

applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.provides.build: applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o

# Object files for target monocular_calibration
monocular_calibration_OBJECTS = \
"CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o"

# External object files for target monocular_calibration
monocular_calibration_EXTERNAL_OBJECTS =

applications/bin/monocular_calibration: applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o
applications/bin/monocular_calibration: applications/CMakeFiles/monocular_calibration.dir/build.make
applications/bin/monocular_calibration: /usr/local/lib/libopencv_world.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_videostab.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_video.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_ts.a
applications/bin/monocular_calibration: /usr/local/lib/libopencv_superres.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_stitching.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_photo.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_objdetect.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_nonfree.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_ml.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_legacy.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_imgproc.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_highgui.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_gpu.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_flann.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_features2d.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_core.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_contrib.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_calib3d.so.2.4.13
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libz.so
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libjpeg.so
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libpng.so
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libz.so
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libjpeg.so
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libpng.so
applications/bin/monocular_calibration: /usr/lib/x86_64-linux-gnu/libtiff.so
applications/bin/monocular_calibration: /usr/local/lib/libopencv_nonfree.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_gpu.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_photo.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_objdetect.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_legacy.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_video.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_ml.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_calib3d.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_features2d.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_highgui.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_imgproc.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_flann.so.2.4.13
applications/bin/monocular_calibration: /usr/local/lib/libopencv_core.so.2.4.13
applications/bin/monocular_calibration: applications/CMakeFiles/monocular_calibration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/monocular_calibration"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monocular_calibration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
applications/CMakeFiles/monocular_calibration.dir/build: applications/bin/monocular_calibration
.PHONY : applications/CMakeFiles/monocular_calibration.dir/build

applications/CMakeFiles/monocular_calibration.dir/requires: applications/CMakeFiles/monocular_calibration.dir/monocular_calibration.cpp.o.requires
.PHONY : applications/CMakeFiles/monocular_calibration.dir/requires

applications/CMakeFiles/monocular_calibration.dir/clean:
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications && $(CMAKE_COMMAND) -P CMakeFiles/monocular_calibration.dir/cmake_clean.cmake
.PHONY : applications/CMakeFiles/monocular_calibration.dir/clean

applications/CMakeFiles/monocular_calibration.dir/depend:
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/applications /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/applications/CMakeFiles/monocular_calibration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/CMakeFiles/monocular_calibration.dir/depend

