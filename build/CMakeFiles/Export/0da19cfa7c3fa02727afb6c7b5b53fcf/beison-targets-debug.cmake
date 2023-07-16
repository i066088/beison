#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "beison::beison" for configuration "Debug"
set_property(TARGET beison::beison APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(beison::beison PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/beison.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "beicode::beicode"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/beison.dll"
  )

list(APPEND _cmake_import_check_targets beison::beison )
list(APPEND _cmake_import_check_files_for_beison::beison "${_IMPORT_PREFIX}/lib/beison.lib" "${_IMPORT_PREFIX}/bin/beison.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
