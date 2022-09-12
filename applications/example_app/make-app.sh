#!/bin/bash
echo "1) Building our kernel..."
pushd ../../kernel/raspberry_pi_pico
make
popd

echo "2) Making the app..."
make

echo "3) Making the program..."
pushd ../../kernel/raspberry_pi_pico
APP=../../applications/example_app/build/cortex-m0/cortex-m0.tbf make program
popd

echo "!!!  openocd not found error is expected when running on the build machine !!!"
