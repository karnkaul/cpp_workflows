cmake_minimum_required(VERSION 4.4)

if (CMAKE_VERSION VERSION_LESS "4.5.0")
  set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "f35a9ac6-8463-4d38-8eec-5d6008153e7d")
  set(CMAKE_CXX_MODULE_STD ON)
endif()

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_DEBUG_POSTFIX "-d")

project(modules)

add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME} PRIVATE FILE_SET CXX_MODULES
  FILES src/hello.cppm
)

target_sources(${PROJECT_NAME} PRIVATE
  src/hello.cpp
  src/main.cpp
)
