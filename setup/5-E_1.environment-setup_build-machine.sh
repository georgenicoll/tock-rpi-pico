#!/bin/bash
echo "Script for setting up the development machine as taken from Percipio book:  "
echo "Getting Started with Secure Embedded Systems—Developing IoT Systems for micro:bit and Raspberry Pi Pico Using Rust and Tock"
echo "- run on dev machine:  "
echo "  from chapter 5, Environment Setup"
sudo apt-get update
sudo apt install automake autoconf build-essential texinfo libtool libftdi-dev libusb-1.0-0-dev
curl https://sh.rustup.rs -sSf | sh
echo "#Note, will need to restart terminal after installation"
#sudo apt remove gcc-arm-none-eabi
#sudo apt autoremove
sudo apt install gcc-arm-none-eabi
sudo apt install gdb-multiarch
# Following: see https://gitlab.com/alelec/arm-none-eabi-gcc-deb/-/releases
#DEB_FILE=gcc-arm-none-eabi-11.2-2022.02-x86_64.deb
#curl https://gitlab.com/api/v4/projects/36571310/jobs/2519076382/artifacts/${DEB_FILE} --output ${DEB_FILE}
#sudo apt install ./${DEB_FILE} -y --allow-downgrades
echo "#Note, will need to restart terminal after installation"

