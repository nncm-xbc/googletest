#!/bin/sh
rm -Rf build # No error message if non-existent
mkdir build
cd build
cmake .. -Dgmock_build_tests=ON -Dgtest_build_tests=ON
make -j$(nproc) # Make with amount of threads