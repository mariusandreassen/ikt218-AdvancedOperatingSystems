# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Assignment_5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Assignment_5.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Assignment_5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Assignment_5.dir/flags.make

CMakeFiles/Assignment_5.dir/main.c.o: CMakeFiles/Assignment_5.dir/flags.make
CMakeFiles/Assignment_5.dir/main.c.o: /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/main.c
CMakeFiles/Assignment_5.dir/main.c.o: CMakeFiles/Assignment_5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Assignment_5.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Assignment_5.dir/main.c.o -MF CMakeFiles/Assignment_5.dir/main.c.o.d -o CMakeFiles/Assignment_5.dir/main.c.o -c /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/main.c

CMakeFiles/Assignment_5.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Assignment_5.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/main.c > CMakeFiles/Assignment_5.dir/main.c.i

CMakeFiles/Assignment_5.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Assignment_5.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/main.c -o CMakeFiles/Assignment_5.dir/main.c.s

CMakeFiles/Assignment_5.dir/notes.c.o: CMakeFiles/Assignment_5.dir/flags.make
CMakeFiles/Assignment_5.dir/notes.c.o: /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/notes.c
CMakeFiles/Assignment_5.dir/notes.c.o: CMakeFiles/Assignment_5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Assignment_5.dir/notes.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Assignment_5.dir/notes.c.o -MF CMakeFiles/Assignment_5.dir/notes.c.o.d -o CMakeFiles/Assignment_5.dir/notes.c.o -c /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/notes.c

CMakeFiles/Assignment_5.dir/notes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Assignment_5.dir/notes.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/notes.c > CMakeFiles/Assignment_5.dir/notes.c.i

CMakeFiles/Assignment_5.dir/notes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Assignment_5.dir/notes.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/notes.c -o CMakeFiles/Assignment_5.dir/notes.c.s

CMakeFiles/Assignment_5.dir/songplayer.c.o: CMakeFiles/Assignment_5.dir/flags.make
CMakeFiles/Assignment_5.dir/songplayer.c.o: /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/songplayer.c
CMakeFiles/Assignment_5.dir/songplayer.c.o: CMakeFiles/Assignment_5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Assignment_5.dir/songplayer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Assignment_5.dir/songplayer.c.o -MF CMakeFiles/Assignment_5.dir/songplayer.c.o.d -o CMakeFiles/Assignment_5.dir/songplayer.c.o -c /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/songplayer.c

CMakeFiles/Assignment_5.dir/songplayer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Assignment_5.dir/songplayer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/songplayer.c > CMakeFiles/Assignment_5.dir/songplayer.c.i

CMakeFiles/Assignment_5.dir/songplayer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Assignment_5.dir/songplayer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/songplayer.c -o CMakeFiles/Assignment_5.dir/songplayer.c.s

# Object files for target Assignment_5
Assignment_5_OBJECTS = \
"CMakeFiles/Assignment_5.dir/main.c.o" \
"CMakeFiles/Assignment_5.dir/notes.c.o" \
"CMakeFiles/Assignment_5.dir/songplayer.c.o"

# External object files for target Assignment_5
Assignment_5_EXTERNAL_OBJECTS =

Assignment_5: CMakeFiles/Assignment_5.dir/main.c.o
Assignment_5: CMakeFiles/Assignment_5.dir/notes.c.o
Assignment_5: CMakeFiles/Assignment_5.dir/songplayer.c.o
Assignment_5: CMakeFiles/Assignment_5.dir/build.make
Assignment_5: CMakeFiles/Assignment_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable Assignment_5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Assignment_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Assignment_5.dir/build: Assignment_5
.PHONY : CMakeFiles/Assignment_5.dir/build

CMakeFiles/Assignment_5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Assignment_5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Assignment_5.dir/clean

CMakeFiles/Assignment_5.dir/depend:
	cd /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5 /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5 /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug /mnt/c/Users/Marius/ikt218-AdvancedOperatingSystems/Assignment_5/cmake-build-debug/CMakeFiles/Assignment_5.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Assignment_5.dir/depend

