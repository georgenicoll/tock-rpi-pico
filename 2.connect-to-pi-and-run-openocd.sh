#!/bin/bash
ssh pibug -L 3333:localhost:3333 -t openocd -f interface/raspberrypi-swd.cfg -f target/rp2040.cfg