#!/bin/bash
pushd tock/boards/raspberry_pi_pico
make clean
make
popd
