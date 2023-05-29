#!/bin/sh
rm -Rf build # No error message if non-existent
mkdir build
cd build
cmake ..
make -j$(nproc) # Make with amount of threads