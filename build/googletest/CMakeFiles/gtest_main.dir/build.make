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
include googletest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include googletest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include googletest/CMakeFiles/gtest_main.dir/flags.make

googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: googletest/CMakeFiles/gtest_main.dir/flags.make
googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: ../googletest/src/gtest_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/breymond/myfiles/projectneuronfinal/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /home/INTRANET/breymond/myfiles/projectneuronfinal/googletest/src/gtest_main.cc

googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/breymond/myfiles/projectneuronfinal/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/breymond/myfiles/projectneuronfinal/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires:
.PHONY : googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides: googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
	$(MAKE) -f googletest/CMakeFiles/gtest_main.dir/build.make googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build
.PHONY : googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides

googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build: googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

googletest/libgtest_main.a: googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
googletest/libgtest_main.a: googletest/CMakeFiles/gtest_main.dir/build.make
googletest/libgtest_main.a: googletest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgtest_main.a"
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googletest/CMakeFiles/gtest_main.dir/build: googletest/libgtest_main.a
.PHONY : googletest/CMakeFiles/gtest_main.dir/build

googletest/CMakeFiles/gtest_main.dir/requires: googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
.PHONY : googletest/CMakeFiles/gtest_main.dir/requires

googletest/CMakeFiles/gtest_main.dir/clean:
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : googletest/CMakeFiles/gtest_main.dir/clean

googletest/CMakeFiles/gtest_main.dir/depend:
	cd /home/INTRANET/breymond/myfiles/projectneuronfinal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/INTRANET/breymond/myfiles/projectneuronfinal /home/INTRANET/breymond/myfiles/projectneuronfinal/googletest /home/INTRANET/breymond/myfiles/projectneuronfinal/build /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest /home/INTRANET/breymond/myfiles/projectneuronfinal/build/googletest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googletest/CMakeFiles/gtest_main.dir/depend

