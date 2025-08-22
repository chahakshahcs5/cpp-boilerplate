rm -rf build
rm CMakeUserPresets.json

mkdir build
cd build

conan install .. --output-folder=. --build=missing --settings=build_type=Debug

cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug

cmake --build .
