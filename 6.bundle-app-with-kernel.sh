#!/bin/bash

echo "NOTE: it is expected that this will fail but will have built raspberry_pi_pico-app.elf"

pushd tock/boards/raspberry_pi_pico
APP=../../../libtock-c/examples/c_hello/build/cortex-m0/cortex-m0.tbf make program
popd
