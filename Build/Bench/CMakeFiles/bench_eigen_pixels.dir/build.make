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
include Bench/CMakeFiles/bench_eigen_pixels.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Bench/CMakeFiles/bench_eigen_pixels.dir/compiler_depend.make

# Include the progress variables for this target.
include Bench/CMakeFiles/bench_eigen_pixels.dir/progress.make

# Include the compile flags for this target's objects.
include Bench/CMakeFiles/bench_eigen_pixels.dir/flags.make

Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o: Bench/CMakeFiles/bench_eigen_pixels.dir/flags.make
Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o: ../Bench/bench_eigen_pixels.cpp
Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o: Bench/CMakeFiles/bench_eigen_pixels.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o"
	cd /home/romimap/Git/ASTex/Build/Bench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o -MF CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o.d -o CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o -c /home/romimap/Git/ASTex/Bench/bench_eigen_pixels.cpp

Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.i"
	cd /home/romimap/Git/ASTex/Build/Bench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romimap/Git/ASTex/Bench/bench_eigen_pixels.cpp > CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.i

Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.s"
	cd /home/romimap/Git/ASTex/Build/Bench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romimap/Git/ASTex/Bench/bench_eigen_pixels.cpp -o CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.s

# Object files for target bench_eigen_pixels
bench_eigen_pixels_OBJECTS = \
"CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o"

# External object files for target bench_eigen_pixels
bench_eigen_pixels_EXTERNAL_OBJECTS =

bin/bench_eigen_pixels: Bench/CMakeFiles/bench_eigen_pixels.dir/bench_eigen_pixels.cpp.o
bin/bench_eigen_pixels: Bench/CMakeFiles/bench_eigen_pixels.dir/build.make
bin/bench_eigen_pixels: ASTex/libASTex.a
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdouble-conversion.so.3.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libi2d.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmjpeg.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libijg8.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libijg12.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libijg16.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmjpls.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmtkcharls.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libcmr.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmwlm.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmpstat.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmtls.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmsr.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmimage.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libxml2.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmdsig.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libssl.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmqrdb.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmnet.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libwrap.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmrt.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmimgle.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmseg.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmtract.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmpmap.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmect.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmfg.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmiod.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdcmdata.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/liboflog.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libofstd.so.16.3.6.6
bin/bench_eigen_pixels: /usr/lib/libITKDeprecated-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKDICOMParser-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOLSM-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOMesh-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKgiftiio-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libexpat.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libcurl.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libpthread.a
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libsz.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libdl.a
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libm.so
bin/bench_eigen_pixels: /usr/lib/libITKIOBruker-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOCSV-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOHDF5-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libnetcdf.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libpng.so
bin/bench_eigen_pixels: /usr/lib/libITKIOMINC-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOMRC-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKOptimizersv4-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitklbfgs-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKReview-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOBMP-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOGDCM-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libgdcmMSFF.so.3.0.10
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libgdcmDICT.so.3.0.10
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libgdcmIOD.so.3.0.10
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libgdcmDSED.so.3.0.10
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libgdcmCommon.so.3.0.10
bin/bench_eigen_pixels: /usr/lib/libITKIOGIPL-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOJPEG-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOMeta-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIONIFTI-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIONRRD-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKNrrdIO-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOPNG-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOTIFF-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitktiff-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/bench_eigen_pixels: /usr/lib/libITKIOVTK-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKLabelMap-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKQuadEdgeMesh-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKPolynomials-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKBiasCorrection-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKBioCell-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKFFT-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libfftw3.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libfftw3_threads.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libfftw3f.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libfftw3f_threads.so
bin/bench_eigen_pixels: /usr/lib/libITKIOBioRad-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOStimulate-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOSpatialObjects-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOXML-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKFEM-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKMetaIO-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libz.so
bin/bench_eigen_pixels: /usr/lib/libITKOptimizers-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOGE-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOSiemens-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOIPL-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOTransformHDF5-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOTransformInsightLegacy-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOTransformMatlab-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOTransformBase-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKTransformFactory-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKKLMRegionGrowing-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKVTK-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKWatersheds-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKStatistics-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitkNetlibSlatec-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKSpatialObjects-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKMesh-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKTransform-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKPath-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitkopenjpeg-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKVideoIO-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKIOImageBase-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKVideoCore-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKCommon-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitksys-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libITKVNLInstantiation-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitkvnl_algo-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitkvnl-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitkv3p_netlib-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitknetlib-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/libitkvcl-4.13.so.1
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libIlmImf-2_5.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libIlmImfUtil-2_5.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libIlmThread-2_5.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libHalf-2_5.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libIex-2_5.so
bin/bench_eigen_pixels: /usr/lib/x86_64-linux-gnu/libImath-2_5.so
bin/bench_eigen_pixels: Bench/CMakeFiles/bench_eigen_pixels.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/bench_eigen_pixels"
	cd /home/romimap/Git/ASTex/Build/Bench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_eigen_pixels.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Bench/CMakeFiles/bench_eigen_pixels.dir/build: bin/bench_eigen_pixels
.PHONY : Bench/CMakeFiles/bench_eigen_pixels.dir/build

Bench/CMakeFiles/bench_eigen_pixels.dir/clean:
	cd /home/romimap/Git/ASTex/Build/Bench && $(CMAKE_COMMAND) -P CMakeFiles/bench_eigen_pixels.dir/cmake_clean.cmake
.PHONY : Bench/CMakeFiles/bench_eigen_pixels.dir/clean

Bench/CMakeFiles/bench_eigen_pixels.dir/depend:
	cd /home/romimap/Git/ASTex/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/romimap/Git/ASTex /home/romimap/Git/ASTex/Bench /home/romimap/Git/ASTex/Build /home/romimap/Git/ASTex/Build/Bench /home/romimap/Git/ASTex/Build/Bench/CMakeFiles/bench_eigen_pixels.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Bench/CMakeFiles/bench_eigen_pixels.dir/depend

