# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/INTRANET/breymond/myfiles/projectneuronfinal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/INTRANET/breymond/myfiles/projectneuronfinal/build

# Include any dependencies generated for this target.
include CMakeFiles/unitTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/unitTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unitTest.dir/flags.make

CMakeFiles/unitTest.dir/neuron2.cpp.o: CMakeFiles/unitTest.dir/flags.make
CMakeFiles/unitTest.dir/neuron2.cpp.o: ../neuron2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/breymond/myfiles/projectneuronfinal/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/unitTest.dir/neuron2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/unitTest.dir/neuron2.cpp.o -c /home/INTRANET/breymond/myfiles/projectneuronfinal/neuron2.cpp

CMakeFiles/unitTest.dir/neuron2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unitTest.dir/neuron2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/breymond/myfiles/projectneuronfinal/neuron2.cpp > CMakeFiles/unitTest.dir/neuron2.cpp.i

CMakeFiles/unitTest.dir/neuron2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unitTest.dir/neuron2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/breymond/myfiles/projectneuronfinal/neuron2.cpp -o CMakeFiles/unitTest.dir/neuron2.cpp.s

CMakeFiles/unitTest.dir/neuron2.cpp.o.requires:
.PHONY : CMakeFiles/unitTest.dir/neuron2.cpp.o.requires

CMakeFiles/unitTest.dir/neuron2.cpp.o.provides: CMakeFiles/unitTest.dir/neuron2.cpp.o.requires
	$(MAKE) -f CMakeFiles/unitTest.dir/build.make CMakeFiles/unitTest.dir/neuron2.cpp.o.provides.build
.PHONY : CMakeFiles/unitTest.dir/neuron2.cpp.o.provides

CMakeFiles/unitTest.dir/neuron2.cpp.o.provides.build: CMakeFiles/unitTest.dir/neuron2.cpp.o

CMakeFiles/unitTest.dir/neuron_test.cpp.o: CMakeFiles/unitTest.dir/flags.make
CMakeFiles/unitTest.dir/neuron_test.cpp.o: ../neuron_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/breymond/myfiles/projectneuronfinal/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/unitTest.dir/neuron_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/unitTest.dir/neuron_test.cpp.o -c /home/INTRANET/breymond/myfiles/projectneuronfinal/neuron_test.cpp

CMakeFiles/unitTest.dir/neuron_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unitTest.dir/neuron_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/breymond/myfiles/projectneuronfinal/neuron_test.cpp > CMakeFiles/unitTest.dir/neuron_test.cpp.i

CMakeFiles/unitTest.dir/neuron_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unitTest.dir/neuron_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/breymond/myfiles/projectneuronfinal/neuron_test.cpp -o CMakeFiles/unitTest.dir/neuron_test.cpp.s

CMakeFiles/unitTest.dir/neuron_test.cpp.o.requires:
.PHONY : CMakeFiles/unitTest.dir/neuron_test.cpp.o.requires

CMakeFiles/unitTest.dir/neuron_test.cpp.o.provides: CMakeFiles/unitTest.dir/neuron_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/unitTest.dir/build.make CMakeFiles/unitTest.dir/neuron_test.cpp.o.provides.build
.PHONY : CMakeFiles/unitTest.dir/neuron_test.cpp.o.provides

CMakeFiles/unitTest.dir/neuron_test.cpp.o.provides.build: CMakeFiles/unitTest.dir/neuron_test.cpp.o

# Object files for target unitTest
unitTest_OBJECTS = \
"CMakeFiles/unitTest.dir/neuron2.cpp.o" \
"CMakeFiles/unitTest.dir/neuron_test.cpp.o"

# External object files for target unitTest
unitTest_EXTERNAL_OBJECTS =

unitTest: CMakeFiles/unitTest.dir/neuron2.cpp.o
unitTest: CMakeFiles/unitTest.dir/neuron_test.cpp.o
unitTest: CMakeFiles/unitTest.dir/build.make
unitTest: googletest/libgtest.a
unitTest: googletest/libgtest_main.a
unitTest: googletest/libgtest.a
unitTest: CMakeFiles/unitTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable unitTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unitTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unitTest.dir/build: unitTest
.PHONY : CMakeFiles/unitTest.dir/build

CMakeFiles/unitTest.dir/requires: CMakeFiles/unitTest.dir/neuron2.cpp.o.requires
CMakeFiles/unitTest.dir/requires: CMakeFiles/unitTest.dir/neuron_test.cpp.o.requires
.PHONY : CMakeFiles/unitTest.dir/requires

CMakeFiles/unitTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unitTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unitTest.dir/clean

CMakeFiles/unitTest.dir/depend:
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/INTRANET/breymond/myfiles/projectneuronfinal /home/INTRANET/breymond/myfiles/projectneuronfinal /home/INTRANET/breymond/myfiles/projectneuronfinal/build /home/INTRANET/breymond/myfiles/projectneuronfinal/build /home/INTRANET/breymond/myfiles/projectneuronfinal/build/CMakeFiles/unitTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unitTest.dir/depend

