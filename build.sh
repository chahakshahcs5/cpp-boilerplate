#!/usr/bin/env bash
set -e

# Ensure conan is in PATH
export PATH="$HOME/.local/bin:$PATH"

echo "========== Build Script =========="
echo "PWD: $(pwd)"
echo "Conan version: $(conan --version)"
echo "=================================="

rm -rf build
rm -f CMakeUserPresets.json

mkdir build
cd build

# Install dependencies with Conan
conan install .. --output-folder=. --build=missing --settings=build_type=Debug

# Configure CMake and generate compile_commands.json
cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
         -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake \
         -DCMAKE_BUILD_TYPE=Debug

# Build project
cmake --build .
