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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android"

# Include any dependencies generated for this target.
include CMakeFiles/serverCamara.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serverCamara.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serverCamara.dir/flags.make

CMakeFiles/serverCamara.dir/serverCamara.o: CMakeFiles/serverCamara.dir/flags.make
CMakeFiles/serverCamara.dir/serverCamara.o: serverCamara.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serverCamara.dir/serverCamara.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/serverCamara.dir/serverCamara.o -c "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android/serverCamara.cpp"

CMakeFiles/serverCamara.dir/serverCamara.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverCamara.dir/serverCamara.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android/serverCamara.cpp" > CMakeFiles/serverCamara.dir/serverCamara.i

CMakeFiles/serverCamara.dir/serverCamara.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverCamara.dir/serverCamara.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android/serverCamara.cpp" -o CMakeFiles/serverCamara.dir/serverCamara.s

CMakeFiles/serverCamara.dir/serverCamara.o.requires:
.PHONY : CMakeFiles/serverCamara.dir/serverCamara.o.requires

CMakeFiles/serverCamara.dir/serverCamara.o.provides: CMakeFiles/serverCamara.dir/serverCamara.o.requires
	$(MAKE) -f CMakeFiles/serverCamara.dir/build.make CMakeFiles/serverCamara.dir/serverCamara.o.provides.build
.PHONY : CMakeFiles/serverCamara.dir/serverCamara.o.provides

CMakeFiles/serverCamara.dir/serverCamara.o.provides.build: CMakeFiles/serverCamara.dir/serverCamara.o

# Object files for target serverCamara
serverCamara_OBJECTS = \
"CMakeFiles/serverCamara.dir/serverCamara.o"

# External object files for target serverCamara
serverCamara_EXTERNAL_OBJECTS =

serverCamara: CMakeFiles/serverCamara.dir/serverCamara.o
serverCamara: /usr/local/lib/libopencv_calib3d.so
serverCamara: /usr/local/lib/libopencv_contrib.so
serverCamara: /usr/local/lib/libopencv_core.so
serverCamara: /usr/local/lib/libopencv_features2d.so
serverCamara: /usr/local/lib/libopencv_flann.so
serverCamara: /usr/local/lib/libopencv_gpu.so
serverCamara: /usr/local/lib/libopencv_highgui.so
serverCamara: /usr/local/lib/libopencv_imgproc.so
serverCamara: /usr/local/lib/libopencv_legacy.so
serverCamara: /usr/local/lib/libopencv_ml.so
serverCamara: /usr/local/lib/libopencv_nonfree.so
serverCamara: /usr/local/lib/libopencv_objdetect.so
serverCamara: /usr/local/lib/libopencv_photo.so
serverCamara: /usr/local/lib/libopencv_stitching.so
serverCamara: /usr/local/lib/libopencv_ts.so
serverCamara: /usr/local/lib/libopencv_video.so
serverCamara: /usr/local/lib/libopencv_videostab.so
serverCamara: CMakeFiles/serverCamara.dir/build.make
serverCamara: CMakeFiles/serverCamara.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable serverCamara"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serverCamara.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serverCamara.dir/build: serverCamara
.PHONY : CMakeFiles/serverCamara.dir/build

CMakeFiles/serverCamara.dir/requires: CMakeFiles/serverCamara.dir/serverCamara.o.requires
.PHONY : CMakeFiles/serverCamara.dir/requires

CMakeFiles/serverCamara.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serverCamara.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serverCamara.dir/clean

CMakeFiles/serverCamara.dir/depend:
	cd "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android" "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android" "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android" "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android" "/home/gachaconr/Desktop/various tests/CamaraLaptop2Android/CMakeFiles/serverCamara.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/serverCamara.dir/depend

