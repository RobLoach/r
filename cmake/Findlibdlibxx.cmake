find_package(libdlibxx 1.2.0 QUIET)
if (NOT libdlibxx_FOUND)
  include(FetchContent)
  FetchContent_Declare(
    libdlibxx
    GIT_REPOSITORY https://github.com/m-renaud/libdlibxx.git
    GIT_TAG ea8938a032dc666a1d5541b36d292281d5931565
  )
  FetchContent_GetProperties(libdlibxx)
  if (NOT libdlibxx_POPULATED)
    set(FETCHCONTENT_QUIET NO)
    FetchContent_Populate(libdlibxx)
    add_subdirectory(${libdlibxx_SOURCE_DIR} ${libdlibxx_BINARY_DIR})
  endif()
endif()