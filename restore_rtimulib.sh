#!/bin/bash

#In order to find all packages, use Dash to find Software and Updates, in Ubuntu Software tab, select all 4 types

cd

sudo apt-get update

sudo apt-get install libi2c-dev i2c-tools

sudo i2cdetect -y -r 1
mkdir bebop;cd bebop;mkdir translation;cd translation
git clone https://github.com/jetsonhacks/RTIMULib.git


sudo apt-get install build-essential libgl1-mesa-dev

sudo apt-get install qt5-default qtcreator -y

# from https://www.youtube.com/watch?v=f_NU8P9jxLs
# To Configure QT
# in Compiler add GCC, and specify ARM
# in Kits, add new kit
# in Configure project specify kit



