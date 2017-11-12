cmake_minimum_required (VERSION 2.6)
project (projectneuron2)

set(CMAKE_CXX_FLAGS "-W -Wall -pedantic -std=c++11")

enable_testing()
add_subdirectory(googletest)
include_directories(${gtest_SOURCE_DIR}/include ${getst_SOURCE_DIR})

find_package(Doxygen)
if(DOXYGEN_FOUND)
    IF(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in)
        message(FATAL_ERROR "Doxygen configuration file is needed to build the documentation:
         - ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in not found.
         - Generate one in the project folder with doxygen -g Doxyfile.in")
    ENDIF(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in)

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile @ONLY)
    add_custom_target(doc
        ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )
ELSE(DOXYGEN_FOUND)
    message(FATAL_ERROR "Doxygen is needed to build the documentation.")
ENDIF(DOXYGEN_FOUND)



add_executable (Simulation main2.cpp neuron2.cpp)

add_executable (unitTest neuron2.cpp neuron_test.cpp)

target_link_libraries(unitTest gtest gtest_main)
add_test(unitTest unitTest)
