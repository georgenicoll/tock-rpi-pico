#!/bin/bash
echo "Script for setting up the rPi as taken from Percipio book:  "
echo "Getting Started with Secure Embedded Systems—Developing IoT Systems for micro:bit and Raspberry Pi Pico Using Rust and Tock"
echo "- run on dev machine:  "
echo "  from chapter 5, Environment Setup"

git clone git@github.com:tock/tock.git
cd tock
git checkout tags/release-2.0
cd ..

git clone git@github.com:tock/libtock-c.git
cd libtock-c
git checkout tags/release-2.0
cd ..

git clone git@github.com:tock/libtock-rs.git
cd libtock-rs
git checkout tags/release-2.0
cd ..

