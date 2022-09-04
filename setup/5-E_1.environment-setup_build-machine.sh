#!/bin/bash
echo "Script for setting up the development machine as taken from Percipio book:  "
echo "Getting Started with Secure Embedded Systems—Developing IoT Systems for micro:bit and Raspberry Pi Pico Using Rust and Tock"
echo "- run on dev machine:  "
echo "  from chapter 5, Environment Setup"
sudo apt-get update
sudo apt install automake autoconf build-essential texinfo libtool libftdi-dev libusb-1.0-0-dev
curl https://sh.rustup.rs -sSf | sh
echo "#Note, will need to restart terminal after installation"
sudo apt install gcc-arm-none-eabi
sudo apt install gdb-multiarch
echo "#Note, will need to restart terminal after installation"

