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
include tracking/CMakeFiles/rgbd_rtk_tracking.dir/depend.make

# Include the progress variables for this target.
include tracking/CMakeFiles/rgbd_rtk_tracking.dir/progress.make

# Include the compile flags for this target's objects.
include tracking/CMakeFiles/rgbd_rtk_tracking.dir/flags.make

tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o: tracking/CMakeFiles/rgbd_rtk_tracking.dir/flags.make
tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o: ../tracking/klt_tracker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o -c /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking/klt_tracker.cpp

tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.i"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking/klt_tracker.cpp > CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.i

tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.s"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking/klt_tracker.cpp -o CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.s

tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.requires:
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.requires

tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.provides: tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.requires
	$(MAKE) -f tracking/CMakeFiles/rgbd_rtk_tracking.dir/build.make tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.provides.build
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.provides

tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.provides.build: tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o

tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o: tracking/CMakeFiles/rgbd_rtk_tracking.dir/flags.make
tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o: ../tracking/surf_tracker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o -c /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking/surf_tracker.cpp

tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.i"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking/surf_tracker.cpp > CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.i

tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.s"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking/surf_tracker.cpp -o CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.s

tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.requires:
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.requires

tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.provides: tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.requires
	$(MAKE) -f tracking/CMakeFiles/rgbd_rtk_tracking.dir/build.make tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.provides.build
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.provides

tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.provides.build: tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o

# Object files for target rgbd_rtk_tracking
rgbd_rtk_tracking_OBJECTS = \
"CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o" \
"CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o"

# External object files for target rgbd_rtk_tracking
rgbd_rtk_tracking_EXTERNAL_OBJECTS =

tracking/lib/librgbd_rtk_tracking.so.1.0: tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o
tracking/lib/librgbd_rtk_tracking.so.1.0: tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o
tracking/lib/librgbd_rtk_tracking.so.1.0: tracking/CMakeFiles/rgbd_rtk_tracking.dir/build.make
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_world.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_videostab.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_video.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_ts.a
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_superres.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_stitching.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_photo.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_objdetect.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_nonfree.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_ml.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_legacy.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_imgproc.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_highgui.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_gpu.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_flann.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_features2d.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_core.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_contrib.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_calib3d.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libz.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libjpeg.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libpng.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libz.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libjpeg.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libpng.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/lib/x86_64-linux-gnu/libtiff.so
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_nonfree.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_gpu.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_photo.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_objdetect.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_legacy.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_video.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_ml.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_calib3d.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_features2d.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_highgui.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_imgproc.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_flann.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: /usr/local/lib/libopencv_core.so.2.4.13
tracking/lib/librgbd_rtk_tracking.so.1.0: tracking/CMakeFiles/rgbd_rtk_tracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library lib/librgbd_rtk_tracking.so"
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rgbd_rtk_tracking.dir/link.txt --verbose=$(VERBOSE)
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && $(CMAKE_COMMAND) -E cmake_symlink_library lib/librgbd_rtk_tracking.so.1.0 lib/librgbd_rtk_tracking.so.1.0 lib/librgbd_rtk_tracking.so

tracking/lib/librgbd_rtk_tracking.so: tracking/lib/librgbd_rtk_tracking.so.1.0

# Rule to build all files generated by this target.
tracking/CMakeFiles/rgbd_rtk_tracking.dir/build: tracking/lib/librgbd_rtk_tracking.so
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/build

tracking/CMakeFiles/rgbd_rtk_tracking.dir/requires: tracking/CMakeFiles/rgbd_rtk_tracking.dir/klt_tracker.cpp.o.requires
tracking/CMakeFiles/rgbd_rtk_tracking.dir/requires: tracking/CMakeFiles/rgbd_rtk_tracking.dir/surf_tracker.cpp.o.requires
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/requires

tracking/CMakeFiles/rgbd_rtk_tracking.dir/clean:
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking && $(CMAKE_COMMAND) -P CMakeFiles/rgbd_rtk_tracking.dir/cmake_clean.cmake
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/clean

tracking/CMakeFiles/rgbd_rtk_tracking.dir/depend:
	cd /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/tracking /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking /home/josuearaujo/Documentos/Josué/SLAM/SLAMNatalnet/rgbd_rtk-SurfSift/build/tracking/CMakeFiles/rgbd_rtk_tracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tracking/CMakeFiles/rgbd_rtk_tracking.dir/depend

