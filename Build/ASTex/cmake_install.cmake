# Install script for directory: /home/romimap/Git/ASTex/ASTex

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ASTex" TYPE FILE FILES
    "/home/romimap/Git/ASTex/ASTex/bilateral_filters.h"
    "/home/romimap/Git/ASTex/ASTex/colorspace_filters.h"
    "/home/romimap/Git/ASTex/ASTex/conversion.h"
    "/home/romimap/Git/ASTex/ASTex/distances_maps.h"
    "/home/romimap/Git/ASTex/ASTex/dll.h"
    "/home/romimap/Git/ASTex/ASTex/easy_io.h"
    "/home/romimap/Git/ASTex/ASTex/exr_io.h"
    "/home/romimap/Git/ASTex/ASTex/fourier.h"
    "/home/romimap/Git/ASTex/ASTex/fourier.hpp"
    "/home/romimap/Git/ASTex/ASTex/histogram.h"
    "/home/romimap/Git/ASTex/ASTex/image_collector.h"
    "/home/romimap/Git/ASTex/ASTex/image_common.h"
    "/home/romimap/Git/ASTex/ASTex/image_gray.h"
    "/home/romimap/Git/ASTex/ASTex/image_indexed.h"
    "/home/romimap/Git/ASTex/ASTex/image_merging.h"
    "/home/romimap/Git/ASTex/ASTex/image_rgb.h"
    "/home/romimap/Git/ASTex/ASTex/image_rgba.h"
    "/home/romimap/Git/ASTex/ASTex/image_spectral.h"
    "/home/romimap/Git/ASTex/ASTex/imageviewer.h"
    "/home/romimap/Git/ASTex/ASTex/internal.h"
    "/home/romimap/Git/ASTex/ASTex/local_spectrum.h"
    "/home/romimap/Git/ASTex/ASTex/mask.h"
    "/home/romimap/Git/ASTex/ASTex/mipmap.h"
    "/home/romimap/Git/ASTex/ASTex/pca.h"
    "/home/romimap/Git/ASTex/ASTex/png_indexed_io.h"
    "/home/romimap/Git/ASTex/ASTex/region_traversor.h"
    "/home/romimap/Git/ASTex/ASTex/rpn_utils.h"
    "/home/romimap/Git/ASTex/ASTex/slic.h"
    "/home/romimap/Git/ASTex/ASTex/special_io.h"
    "/home/romimap/Git/ASTex/ASTex/store.h"
    "/home/romimap/Git/ASTex/ASTex/texton_io.h"
    "/home/romimap/Git/ASTex/ASTex/thread_pool.h"
    "/home/romimap/Git/ASTex/ASTex/utils.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex" TYPE FILE FILES
    "/home/romimap/Git/ASTex/cmake/FindOpenEXR.cmake"
    "/home/romimap/Git/ASTex/cmake/FindFFTW.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/romimap/Git/ASTex/Build/ASTex/libASTex.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex/ASTexTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex/ASTexTargets.cmake"
         "/home/romimap/Git/ASTex/Build/ASTex/CMakeFiles/Export/lib/cmake/ASTex/ASTexTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex/ASTexTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex/ASTexTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex" TYPE FILE FILES "/home/romimap/Git/ASTex/Build/ASTex/CMakeFiles/Export/lib/cmake/ASTex/ASTexTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex" TYPE FILE FILES "/home/romimap/Git/ASTex/Build/ASTex/CMakeFiles/Export/lib/cmake/ASTex/ASTexTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex" TYPE FILE FILES "/home/romimap/Git/ASTex/Build/share/cmake/ASTex/ASTexConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ASTex" TYPE FILE RENAME "ASTexConfig.cmake" FILES "/home/romimap/Git/ASTex/Build/share/cmake/ASTex/ASTexInstallConfig.cmake")
endif()

