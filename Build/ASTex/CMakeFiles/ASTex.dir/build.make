# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/rfournier/Git/ASTex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rfournier/Git/ASTex/Build

# Include any dependencies generated for this target.
include ASTex/CMakeFiles/ASTex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ASTex/CMakeFiles/ASTex.dir/compiler_depend.make

# Include the progress variables for this target.
include ASTex/CMakeFiles/ASTex.dir/progress.make

# Include the compile flags for this target's objects.
include ASTex/CMakeFiles/ASTex.dir/flags.make

ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.o: ../ASTex/png_indexed_io.cpp
ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.o -MF CMakeFiles/ASTex.dir/png_indexed_io.cpp.o.d -o CMakeFiles/ASTex.dir/png_indexed_io.cpp.o -c /home/rfournier/Git/ASTex/ASTex/png_indexed_io.cpp

ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/png_indexed_io.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/png_indexed_io.cpp > CMakeFiles/ASTex.dir/png_indexed_io.cpp.i

ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/png_indexed_io.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/png_indexed_io.cpp -o CMakeFiles/ASTex.dir/png_indexed_io.cpp.s

ASTex/CMakeFiles/ASTex.dir/mask.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/mask.cpp.o: ../ASTex/mask.cpp
ASTex/CMakeFiles/ASTex.dir/mask.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ASTex/CMakeFiles/ASTex.dir/mask.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/mask.cpp.o -MF CMakeFiles/ASTex.dir/mask.cpp.o.d -o CMakeFiles/ASTex.dir/mask.cpp.o -c /home/rfournier/Git/ASTex/ASTex/mask.cpp

ASTex/CMakeFiles/ASTex.dir/mask.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/mask.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/mask.cpp > CMakeFiles/ASTex.dir/mask.cpp.i

ASTex/CMakeFiles/ASTex.dir/mask.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/mask.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/mask.cpp -o CMakeFiles/ASTex.dir/mask.cpp.s

ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.o: ../ASTex/easy_io.cpp
ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.o -MF CMakeFiles/ASTex.dir/easy_io.cpp.o.d -o CMakeFiles/ASTex.dir/easy_io.cpp.o -c /home/rfournier/Git/ASTex/ASTex/easy_io.cpp

ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/easy_io.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/easy_io.cpp > CMakeFiles/ASTex.dir/easy_io.cpp.i

ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/easy_io.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/easy_io.cpp -o CMakeFiles/ASTex.dir/easy_io.cpp.s

ASTex/CMakeFiles/ASTex.dir/fourier.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/fourier.cpp.o: ../ASTex/fourier.cpp
ASTex/CMakeFiles/ASTex.dir/fourier.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object ASTex/CMakeFiles/ASTex.dir/fourier.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/fourier.cpp.o -MF CMakeFiles/ASTex.dir/fourier.cpp.o.d -o CMakeFiles/ASTex.dir/fourier.cpp.o -c /home/rfournier/Git/ASTex/ASTex/fourier.cpp

ASTex/CMakeFiles/ASTex.dir/fourier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/fourier.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/fourier.cpp > CMakeFiles/ASTex.dir/fourier.cpp.i

ASTex/CMakeFiles/ASTex.dir/fourier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/fourier.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/fourier.cpp -o CMakeFiles/ASTex.dir/fourier.cpp.s

ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.o: ../ASTex/local_spectrum.cpp
ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.o -MF CMakeFiles/ASTex.dir/local_spectrum.cpp.o.d -o CMakeFiles/ASTex.dir/local_spectrum.cpp.o -c /home/rfournier/Git/ASTex/ASTex/local_spectrum.cpp

ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/local_spectrum.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/local_spectrum.cpp > CMakeFiles/ASTex.dir/local_spectrum.cpp.i

ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/local_spectrum.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/local_spectrum.cpp -o CMakeFiles/ASTex.dir/local_spectrum.cpp.s

ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.o: ../ASTex/file_paths.cpp
ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.o -MF CMakeFiles/ASTex.dir/file_paths.cpp.o.d -o CMakeFiles/ASTex.dir/file_paths.cpp.o -c /home/rfournier/Git/ASTex/ASTex/file_paths.cpp

ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/file_paths.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/file_paths.cpp > CMakeFiles/ASTex.dir/file_paths.cpp.i

ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/file_paths.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/file_paths.cpp -o CMakeFiles/ASTex.dir/file_paths.cpp.s

ASTex/CMakeFiles/ASTex.dir/special_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/special_io.cpp.o: ../ASTex/special_io.cpp
ASTex/CMakeFiles/ASTex.dir/special_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object ASTex/CMakeFiles/ASTex.dir/special_io.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/special_io.cpp.o -MF CMakeFiles/ASTex.dir/special_io.cpp.o.d -o CMakeFiles/ASTex.dir/special_io.cpp.o -c /home/rfournier/Git/ASTex/ASTex/special_io.cpp

ASTex/CMakeFiles/ASTex.dir/special_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/special_io.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/special_io.cpp > CMakeFiles/ASTex.dir/special_io.cpp.i

ASTex/CMakeFiles/ASTex.dir/special_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/special_io.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/special_io.cpp -o CMakeFiles/ASTex.dir/special_io.cpp.s

ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.o: ../ASTex/exr_io.cpp
ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.o -MF CMakeFiles/ASTex.dir/exr_io.cpp.o.d -o CMakeFiles/ASTex.dir/exr_io.cpp.o -c /home/rfournier/Git/ASTex/ASTex/exr_io.cpp

ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/exr_io.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/exr_io.cpp > CMakeFiles/ASTex.dir/exr_io.cpp.i

ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/exr_io.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/exr_io.cpp -o CMakeFiles/ASTex.dir/exr_io.cpp.s

ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.o: ../ASTex/image_collector.cpp
ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.o -MF CMakeFiles/ASTex.dir/image_collector.cpp.o.d -o CMakeFiles/ASTex.dir/image_collector.cpp.o -c /home/rfournier/Git/ASTex/ASTex/image_collector.cpp

ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/image_collector.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/image_collector.cpp > CMakeFiles/ASTex.dir/image_collector.cpp.i

ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/image_collector.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/image_collector.cpp -o CMakeFiles/ASTex.dir/image_collector.cpp.s

ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.o: ../ASTex/bilateral_filters.cpp
ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.o -MF CMakeFiles/ASTex.dir/bilateral_filters.cpp.o.d -o CMakeFiles/ASTex.dir/bilateral_filters.cpp.o -c /home/rfournier/Git/ASTex/ASTex/bilateral_filters.cpp

ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/bilateral_filters.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/bilateral_filters.cpp > CMakeFiles/ASTex.dir/bilateral_filters.cpp.i

ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/bilateral_filters.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/bilateral_filters.cpp -o CMakeFiles/ASTex.dir/bilateral_filters.cpp.s

ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.o: ../ASTex/distances_maps.cpp
ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.o -MF CMakeFiles/ASTex.dir/distances_maps.cpp.o.d -o CMakeFiles/ASTex.dir/distances_maps.cpp.o -c /home/rfournier/Git/ASTex/ASTex/distances_maps.cpp

ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/distances_maps.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/distances_maps.cpp > CMakeFiles/ASTex.dir/distances_maps.cpp.i

ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/distances_maps.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/distances_maps.cpp -o CMakeFiles/ASTex.dir/distances_maps.cpp.s

ASTex/CMakeFiles/ASTex.dir/pca.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/pca.cpp.o: ../ASTex/pca.cpp
ASTex/CMakeFiles/ASTex.dir/pca.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object ASTex/CMakeFiles/ASTex.dir/pca.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/pca.cpp.o -MF CMakeFiles/ASTex.dir/pca.cpp.o.d -o CMakeFiles/ASTex.dir/pca.cpp.o -c /home/rfournier/Git/ASTex/ASTex/pca.cpp

ASTex/CMakeFiles/ASTex.dir/pca.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/pca.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/pca.cpp > CMakeFiles/ASTex.dir/pca.cpp.i

ASTex/CMakeFiles/ASTex.dir/pca.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/pca.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/pca.cpp -o CMakeFiles/ASTex.dir/pca.cpp.s

ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.o: ../ASTex/thread_pool.cpp
ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.o -MF CMakeFiles/ASTex.dir/thread_pool.cpp.o.d -o CMakeFiles/ASTex.dir/thread_pool.cpp.o -c /home/rfournier/Git/ASTex/ASTex/thread_pool.cpp

ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/thread_pool.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/thread_pool.cpp > CMakeFiles/ASTex.dir/thread_pool.cpp.i

ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/thread_pool.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/thread_pool.cpp -o CMakeFiles/ASTex.dir/thread_pool.cpp.s

ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.o: ../ASTex/texton_io.cpp
ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.o -MF CMakeFiles/ASTex.dir/texton_io.cpp.o.d -o CMakeFiles/ASTex.dir/texton_io.cpp.o -c /home/rfournier/Git/ASTex/ASTex/texton_io.cpp

ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/texton_io.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/texton_io.cpp > CMakeFiles/ASTex.dir/texton_io.cpp.i

ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/texton_io.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/texton_io.cpp -o CMakeFiles/ASTex.dir/texton_io.cpp.s

ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o: ../ASTex/Stamping/sampler.cpp
ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o -MF CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o.d -o CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o -c /home/rfournier/Git/ASTex/ASTex/Stamping/sampler.cpp

ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/Stamping/sampler.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/Stamping/sampler.cpp > CMakeFiles/ASTex.dir/Stamping/sampler.cpp.i

ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/Stamping/sampler.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/Stamping/sampler.cpp -o CMakeFiles/ASTex.dir/Stamping/sampler.cpp.s

ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.o: ASTex/CMakeFiles/ASTex.dir/flags.make
ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.o: ../ASTex/rpn_utils.cpp
ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.o: ASTex/CMakeFiles/ASTex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.o"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.o -MF CMakeFiles/ASTex.dir/rpn_utils.cpp.o.d -o CMakeFiles/ASTex.dir/rpn_utils.cpp.o -c /home/rfournier/Git/ASTex/ASTex/rpn_utils.cpp

ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASTex.dir/rpn_utils.cpp.i"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rfournier/Git/ASTex/ASTex/rpn_utils.cpp > CMakeFiles/ASTex.dir/rpn_utils.cpp.i

ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASTex.dir/rpn_utils.cpp.s"
	cd /home/rfournier/Git/ASTex/Build/ASTex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rfournier/Git/ASTex/ASTex/rpn_utils.cpp -o CMakeFiles/ASTex.dir/rpn_utils.cpp.s

# Object files for target ASTex
ASTex_OBJECTS = \
"CMakeFiles/ASTex.dir/png_indexed_io.cpp.o" \
"CMakeFiles/ASTex.dir/mask.cpp.o" \
"CMakeFiles/ASTex.dir/easy_io.cpp.o" \
"CMakeFiles/ASTex.dir/fourier.cpp.o" \
"CMakeFiles/ASTex.dir/local_spectrum.cpp.o" \
"CMakeFiles/ASTex.dir/file_paths.cpp.o" \
"CMakeFiles/ASTex.dir/special_io.cpp.o" \
"CMakeFiles/ASTex.dir/exr_io.cpp.o" \
"CMakeFiles/ASTex.dir/image_collector.cpp.o" \
"CMakeFiles/ASTex.dir/bilateral_filters.cpp.o" \
"CMakeFiles/ASTex.dir/distances_maps.cpp.o" \
"CMakeFiles/ASTex.dir/pca.cpp.o" \
"CMakeFiles/ASTex.dir/thread_pool.cpp.o" \
"CMakeFiles/ASTex.dir/texton_io.cpp.o" \
"CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o" \
"CMakeFiles/ASTex.dir/rpn_utils.cpp.o"

# External object files for target ASTex
ASTex_EXTERNAL_OBJECTS =

ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/png_indexed_io.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/mask.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/easy_io.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/fourier.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/local_spectrum.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/file_paths.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/special_io.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/exr_io.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/image_collector.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/bilateral_filters.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/distances_maps.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/pca.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/thread_pool.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/texton_io.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/Stamping/sampler.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/rpn_utils.cpp.o
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/build.make
ASTex/libASTex.a: ASTex/CMakeFiles/ASTex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rfournier/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX static library libASTex.a"
	cd /home/rfournier/Git/ASTex/Build/ASTex && $(CMAKE_COMMAND) -P CMakeFiles/ASTex.dir/cmake_clean_target.cmake
	cd /home/rfournier/Git/ASTex/Build/ASTex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ASTex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ASTex/CMakeFiles/ASTex.dir/build: ASTex/libASTex.a
.PHONY : ASTex/CMakeFiles/ASTex.dir/build

ASTex/CMakeFiles/ASTex.dir/clean:
	cd /home/rfournier/Git/ASTex/Build/ASTex && $(CMAKE_COMMAND) -P CMakeFiles/ASTex.dir/cmake_clean.cmake
.PHONY : ASTex/CMakeFiles/ASTex.dir/clean

ASTex/CMakeFiles/ASTex.dir/depend:
	cd /home/rfournier/Git/ASTex/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rfournier/Git/ASTex /home/rfournier/Git/ASTex/ASTex /home/rfournier/Git/ASTex/Build /home/rfournier/Git/ASTex/Build/ASTex /home/rfournier/Git/ASTex/Build/ASTex/CMakeFiles/ASTex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ASTex/CMakeFiles/ASTex.dir/depend

