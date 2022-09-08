#!/bin/bash

echo "At the gdb prompt, run the following commands:"
echo "(gdb) target remote localhost:3333"
echo "(gdb) load"
echo "(gdb) continue"
echo ""
echo "To reset:"
echo "(gdb) monitor reset init"
echo "(gdb) continue"

gdb-multiarch tock/target/thumbv6m-none-eabi/release/raspberry_pi_pico.elf
