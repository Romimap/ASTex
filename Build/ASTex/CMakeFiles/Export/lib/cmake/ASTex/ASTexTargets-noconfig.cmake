#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ASTex" for configuration ""
set_property(TARGET ASTex APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ASTex PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libASTex.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ASTex )
list(APPEND _IMPORT_CHECK_FILES_FOR_ASTex "${_IMPORT_PREFIX}/lib/libASTex.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
