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
include Test/CMakeFiles/nlutz_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Test/CMakeFiles/nlutz_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include Test/CMakeFiles/nlutz_tests.dir/progress.make

# Include the compile flags for this target's objects.
include Test/CMakeFiles/nlutz_tests.dir/flags.make

Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o: Test/CMakeFiles/nlutz_tests.dir/flags.make
Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o: ../Test/nlutz_tests.cpp
Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o: Test/CMakeFiles/nlutz_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o"
	cd /home/romimap/Git/ASTex/Build/Test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o -MF CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o.d -o CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o -c /home/romimap/Git/ASTex/Test/nlutz_tests.cpp

Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.i"
	cd /home/romimap/Git/ASTex/Build/Test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/romimap/Git/ASTex/Test/nlutz_tests.cpp > CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.i

Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.s"
	cd /home/romimap/Git/ASTex/Build/Test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/romimap/Git/ASTex/Test/nlutz_tests.cpp -o CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.s

# Object files for target nlutz_tests
nlutz_tests_OBJECTS = \
"CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o"

# External object files for target nlutz_tests
nlutz_tests_EXTERNAL_OBJECTS =

bin/nlutz_tests: Test/CMakeFiles/nlutz_tests.dir/nlutz_tests.cpp.o
bin/nlutz_tests: Test/CMakeFiles/nlutz_tests.dir/build.make
bin/nlutz_tests: ASTex/libASTex.a
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdouble-conversion.so.3.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libi2d.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmjpeg.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libijg8.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libijg12.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libijg16.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmjpls.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmtkcharls.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libcmr.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmwlm.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmpstat.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmtls.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmsr.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmimage.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libxml2.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmdsig.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libssl.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmqrdb.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmnet.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libwrap.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmrt.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmimgle.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmseg.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmtract.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmpmap.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmect.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmfg.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmiod.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdcmdata.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/liboflog.so.16.3.6.6
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libofstd.so.16.3.6.6
bin/nlutz_tests: /usr/lib/libITKDeprecated-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKDICOMParser-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOLSM-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOMesh-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKgiftiio-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libexpat.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libcurl.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libpthread.a
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libsz.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libdl.a
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libm.so
bin/nlutz_tests: /usr/lib/libITKIOBruker-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOCSV-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOHDF5-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libnetcdf.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libpng.so
bin/nlutz_tests: /usr/lib/libITKIOMINC-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOMRC-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKOptimizersv4-4.13.so.1
bin/nlutz_tests: /usr/lib/libitklbfgs-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKReview-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOBMP-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOGDCM-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libgdcmMSFF.so.3.0.10
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libgdcmDICT.so.3.0.10
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libgdcmIOD.so.3.0.10
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libgdcmDSED.so.3.0.10
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libgdcmCommon.so.3.0.10
bin/nlutz_tests: /usr/lib/libITKIOGIPL-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOJPEG-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOMeta-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIONIFTI-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIONRRD-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKNrrdIO-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOPNG-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOTIFF-4.13.so.1
bin/nlutz_tests: /usr/lib/libitktiff-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/nlutz_tests: /usr/lib/libITKIOVTK-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKLabelMap-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKQuadEdgeMesh-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKPolynomials-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKBiasCorrection-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKBioCell-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKFFT-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libfftw3.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libfftw3_threads.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libfftw3f.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libfftw3f_threads.so
bin/nlutz_tests: /usr/lib/libITKIOBioRad-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOStimulate-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOSpatialObjects-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOXML-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKFEM-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKMetaIO-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libz.so
bin/nlutz_tests: /usr/lib/libITKOptimizers-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOGE-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOSiemens-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOIPL-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOTransformHDF5-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOTransformInsightLegacy-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOTransformMatlab-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOTransformBase-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKTransformFactory-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKKLMRegionGrowing-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKVTK-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKWatersheds-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKStatistics-4.13.so.1
bin/nlutz_tests: /usr/lib/libitkNetlibSlatec-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKSpatialObjects-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKMesh-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKTransform-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKPath-4.13.so.1
bin/nlutz_tests: /usr/lib/libitkopenjpeg-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKVideoIO-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKIOImageBase-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKVideoCore-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKCommon-4.13.so.1
bin/nlutz_tests: /usr/lib/libitksys-4.13.so.1
bin/nlutz_tests: /usr/lib/libITKVNLInstantiation-4.13.so.1
bin/nlutz_tests: /usr/lib/libitkvnl_algo-4.13.so.1
bin/nlutz_tests: /usr/lib/libitkvnl-4.13.so.1
bin/nlutz_tests: /usr/lib/libitkv3p_netlib-4.13.so.1
bin/nlutz_tests: /usr/lib/libitknetlib-4.13.so.1
bin/nlutz_tests: /usr/lib/libitkvcl-4.13.so.1
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libIlmImf-2_5.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libIlmImfUtil-2_5.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libIlmThread-2_5.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libHalf-2_5.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libIex-2_5.so
bin/nlutz_tests: /usr/lib/x86_64-linux-gnu/libImath-2_5.so
bin/nlutz_tests: Test/CMakeFiles/nlutz_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/romimap/Git/ASTex/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/nlutz_tests"
	cd /home/romimap/Git/ASTex/Build/Test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nlutz_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Test/CMakeFiles/nlutz_tests.dir/build: bin/nlutz_tests
.PHONY : Test/CMakeFiles/nlutz_tests.dir/build

Test/CMakeFiles/nlutz_tests.dir/clean:
	cd /home/romimap/Git/ASTex/Build/Test && $(CMAKE_COMMAND) -P CMakeFiles/nlutz_tests.dir/cmake_clean.cmake
.PHONY : Test/CMakeFiles/nlutz_tests.dir/clean

Test/CMakeFiles/nlutz_tests.dir/depend:
	cd /home/romimap/Git/ASTex/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/romimap/Git/ASTex /home/romimap/Git/ASTex/Test /home/romimap/Git/ASTex/Build /home/romimap/Git/ASTex/Build/Test /home/romimap/Git/ASTex/Build/Test/CMakeFiles/nlutz_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Test/CMakeFiles/nlutz_tests.dir/depend
