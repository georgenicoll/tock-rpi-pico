#!/bin/bash
echo "1) Cleaning our kernel..."
pushd ../../kernel/raspberry_pi_pico
make clean
popd

echo "2) Cleaning the app..."
make clean
