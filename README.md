# Build Project
`sh build.sh`

# Build Commands (Clean Start)

rm -rf build
rm CMakeUserPresets.json

mkdir build
cd build

# Install Conan dependencies
conan install .. --output-folder=. --build=missing --settings=build_type=Debug

# Configure with CMake
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug

# Build the project
cmake --build .
