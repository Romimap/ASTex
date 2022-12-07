
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was ASTexConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../../../../../usr/local" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set(ASTEX_LIBRARIES "ASTex")
set(ASTEX_INCLUDE_DIRS "/home/rfournier/Git/ASTex")
set(ITK_DIR "/usr/lib/cmake/ITK-4.13")

#list(APPEND CMAKE_MODULE_PATH "${ASTEX_INCLUDE_DIRS}/../lib/cmake/ASTex")
#find_package(PNG REQUIRED )
#find_package(OpenEXR REQUIRED )
find_package(ITK REQUIRED)
include(${ITK_USE_FILE})

if(NOT TARGET ASTex)
  include("${CMAKE_CURRENT_LIST_DIR}/ASTexTargets.cmake")
endif()

check_required_components(PNG OpenEXR ITK)
