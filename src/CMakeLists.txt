find_package(Raylib)
find_package(libdlibxx)
find_package(Boost)

#add_executable(raylib-libretro main.cpp ${libdlibxx_SOURCE_DIR}/src/dlibxx.cxx)
add_executable(raylib-libretro main.cpp)

target_include_directories(raylib-libretro PUBLIC
    ${raylib_SOURCE_DIR}/src
    ${libdlibxx_SOURCE_DIR}/include
)

set_target_properties(raylib-libretro PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

target_link_libraries(raylib-libretro raylib libdlibxx)