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
CMAKE_SOURCE_DIR = /home/romimap/Git/ASTex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/romimap/Git/ASTex/Build

# Include any dependencies generated for this target.
include Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/compiler_depend.make

# Include the progress variables for this target.
include Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/progress.make

# Include the compile flags for this target's objects.
include Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/flags.make

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/flags.make
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o: ../Algo/Graphcut/test_graphcut_2.cpp
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o -MF CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o.d -o CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o -c /home/romimap/Git/ASTex/Algo/Graphcut/test_graphcut_2.cpp

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.i"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romimap/Git/ASTex/Algo/Graphcut/test_graphcut_2.cpp > CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.i

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.s"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romimap/Git/ASTex/Algo/Graphcut/test_graphcut_2.cpp -o CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.s

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/flags.make
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o: ../Algo/Graphcut/graphcut.cpp
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o -MF CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o.d -o CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o -c /home/romimap/Git/ASTex/Algo/Graphcut/graphcut.cpp

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_graphcut_2.dir/graphcut.cpp.i"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romimap/Git/ASTex/Algo/Graphcut/graphcut.cpp > CMakeFiles/test_graphcut_2.dir/graphcut.cpp.i

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_graphcut_2.dir/graphcut.cpp.s"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romimap/Git/ASTex/Algo/Graphcut/graphcut.cpp -o CMakeFiles/test_graphcut_2.dir/graphcut.cpp.s

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/flags.make
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o: ../Algo/Graphcut/maxflow/graph.cpp
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o -MF CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o.d -o CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o -c /home/romimap/Git/ASTex/Algo/Graphcut/maxflow/graph.cpp

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.i"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romimap/Git/ASTex/Algo/Graphcut/maxflow/graph.cpp > CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.i

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.s"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romimap/Git/ASTex/Algo/Graphcut/maxflow/graph.cpp -o CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.s

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/flags.make
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o: ../Algo/Graphcut/maxflow/maxflow.cpp
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o -MF CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o.d -o CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o -c /home/romimap/Git/ASTex/Algo/Graphcut/maxflow/maxflow.cpp

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.i"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romimap/Git/ASTex/Algo/Graphcut/maxflow/maxflow.cpp > CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.i

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.s"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romimap/Git/ASTex/Algo/Graphcut/maxflow/maxflow.cpp -o CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.s

# Object files for target test_graphcut_2
test_graphcut_2_OBJECTS = \
"CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o" \
"CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o" \
"CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o" \
"CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o"

# External object files for target test_graphcut_2
test_graphcut_2_EXTERNAL_OBJECTS =

bin/test_graphcut_2: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/test_graphcut_2.cpp.o
bin/test_graphcut_2: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/graphcut.cpp.o
bin/test_graphcut_2: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/graph.cpp.o
bin/test_graphcut_2: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/maxflow/maxflow.cpp.o
bin/test_graphcut_2: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/build.make
bin/test_graphcut_2: ASTex/libASTex.a
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdouble-conversion.so.3.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libi2d.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmjpeg.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libijg8.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libijg12.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libijg16.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmjpls.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmtkcharls.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libcmr.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmwlm.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmpstat.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmtls.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmsr.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmimage.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libxml2.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmdsig.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libssl.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmqrdb.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmnet.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libwrap.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmrt.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmimgle.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmseg.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmtract.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmpmap.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmect.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmfg.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmiod.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdcmdata.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/liboflog.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libofstd.so.16.3.6.6
bin/test_graphcut_2: /usr/lib/libITKDeprecated-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKDICOMParser-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOLSM-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOMesh-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKgiftiio-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libexpat.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libcurl.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libpthread.a
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libsz.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libm.so
bin/test_graphcut_2: /usr/lib/libITKIOBruker-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOCSV-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOHDF5-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libnetcdf.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libpng.so
bin/test_graphcut_2: /usr/lib/libITKIOMINC-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOMRC-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKOptimizersv4-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitklbfgs-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKReview-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOBMP-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOGDCM-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libgdcmMSFF.so.3.0.10
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libgdcmDICT.so.3.0.10
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libgdcmIOD.so.3.0.10
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libgdcmDSED.so.3.0.10
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libgdcmCommon.so.3.0.10
bin/test_graphcut_2: /usr/lib/libITKIOGIPL-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOJPEG-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOMeta-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIONIFTI-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIONRRD-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKNrrdIO-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOPNG-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOTIFF-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitktiff-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/test_graphcut_2: /usr/lib/libITKIOVTK-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKLabelMap-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKQuadEdgeMesh-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKPolynomials-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKBiasCorrection-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKBioCell-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKFFT-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libfftw3.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libfftw3_threads.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libfftw3f.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libfftw3f_threads.so
bin/test_graphcut_2: /usr/lib/libITKIOBioRad-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOStimulate-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOSpatialObjects-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOXML-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKFEM-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKMetaIO-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libz.so
bin/test_graphcut_2: /usr/lib/libITKOptimizers-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOGE-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOSiemens-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOIPL-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOTransformHDF5-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOTransformInsightLegacy-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOTransformMatlab-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOTransformBase-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKTransformFactory-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKKLMRegionGrowing-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKVTK-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKWatersheds-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKStatistics-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitkNetlibSlatec-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKSpatialObjects-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKMesh-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKTransform-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKPath-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitkopenjpeg-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKVideoIO-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKIOImageBase-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKVideoCore-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKCommon-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitksys-4.13.so.1
bin/test_graphcut_2: /usr/lib/libITKVNLInstantiation-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitkvnl_algo-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitkvnl-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitkv3p_netlib-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitknetlib-4.13.so.1
bin/test_graphcut_2: /usr/lib/libitkvcl-4.13.so.1
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libIlmImf-2_5.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libIlmImfUtil-2_5.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libIlmThread-2_5.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libHalf-2_5.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libIex-2_5.so
bin/test_graphcut_2: /usr/lib/x86_64-linux-gnu/libImath-2_5.so
bin/test_graphcut_2: Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/test_graphcut_2"
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_graphcut_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/build: bin/test_graphcut_2
.PHONY : Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/build

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/clean:
	cd /home/romimap/Git/ASTex/Build/Algo/Graphcut && $(CMAKE_COMMAND) -P CMakeFiles/test_graphcut_2.dir/cmake_clean.cmake
.PHONY : Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/clean

Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/depend:
	cd /home/romimap/Git/ASTex/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/romimap/Git/ASTex /home/romimap/Git/ASTex/Algo/Graphcut /home/romimap/Git/ASTex/Build /home/romimap/Git/ASTex/Build/Algo/Graphcut /home/romimap/Git/ASTex/Build/Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Algo/Graphcut/CMakeFiles/test_graphcut_2.dir/depend
