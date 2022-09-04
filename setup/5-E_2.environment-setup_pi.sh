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

echo "1) Set up the serial login shell and disable the interface (see Environment Setup)"
echo " - Run: sudo raspi-config"
echo " - Choose: Interface Options->Serial Port"
echo " - Select: 'Would you like a login shell to be accessible over serial' No"
echo " - Select: 'Would you like the serial port harware to be enabled' Yes"
echo ""
echo "2) Manually on Pi 3 & 4, disable the BLE connection as well (otherwise UART will not be stable - see Environment Setup)"
echo " - Open: /boot/config.txt"
echo " - In an 'all' section:"
echo "   - Add: dtoverlay=disable-bt"
echo "   - Add: enable_uart=1"
echo ""
echo "3) Reboot"
echo ""
