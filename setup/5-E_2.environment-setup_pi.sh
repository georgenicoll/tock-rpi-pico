#!/bin/bash
echo "Script for setting up the rPi as taken from Percipio book:  "
echo "Getting Started with Secure Embedded Systems—Developing IoT Systems for micro:bit and Raspberry Pi Pico Using Rust and Tock"
echo "- run on pi:  "
echo "  from chapter 5, Environment Setup"
sudo apt-get update
sudo apt install automake autoconf build-essential texinfo libtool libftdi-dev libusb-1.0-0-dev
git clone https://github.com/raspberrypi/openocd.git --recursive --branch rp2040 --depth=1
cd openocd
./bootstrap
./configure --enable-ftdi --enable-sysfsgpio --enable-bcm2835gpio
make -j4
sudo make install
cd ..

