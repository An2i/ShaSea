cmake_minimum_required(VERSION 3.16)
project(ObfuscationPlugin)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# Set your project compile flags.
add_definitions(${LLVM_DEFINITIONS})

# Add include directories
include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 设置编译器特定标志
if(MSVC)
    # MSVC特定标志
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /std:c++17 /GR- /utf-8")
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)
    # 禁用特定警告
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4819 /wd4624 /wd4996")
else()
    # GCC/Clang标志
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -fno-rtti -fvisibility=hidden")
endif()

# Add the obfuscation plugin library
add_library(ObfuscationPlugin SHARED
    ObfuscationPlugin.cpp
    Obfuscation/Utils.cpp
    Obfuscation/BogusControlFlow.cpp
    Obfuscation/CryptoUtils.cpp
    Obfuscation/ObfuscationOptions.cpp
    Obfuscation/StringEncryption.cpp
    Obfuscation/SplitBasicBlock.cpp
    Obfuscation/Substitution.cpp
    Obfuscation/Flattening.cpp
    Obfuscation/IndirectBranch.cpp
    Obfuscation/IndirectCall.cpp
    Obfuscation/IPObfuscationContext.cpp
    Obfuscation/VMFlatten.cpp
)

# Link against LLVM libraries
llvm_map_components_to_libnames(llvm_libs support core irreader analysis transformutils passes)
target_link_libraries(ObfuscationPlugin ${llvm_libs})

if(MSVC)
    # MSVC特定标志
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /std:c++17 /GR- /utf-8")
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)
    # 禁用特定警告
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4819 /wd4624 /wd4996")
else()
    # GCC/Clang标志
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -fno-rtti")
endif()

target_link_options(ObfuscationPlugin PRIVATE "/EXPORT:llvmGetPassPluginInfo")
