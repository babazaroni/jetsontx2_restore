#!/bin/bash

cd

sudo apt-get update

sudo apt-get install libi2c-dev i2c-tools #libi2c-dev not found

sudo i2cdetect -y -r 1
mkdir bebop;cd bebop;mkdir translation;cd translation
git clone https://github.com/jetsonhacks/RTIMULib.git

sudo apt-get install build-essential libgl1-mesa-dev

#sudo apt-get install qt5-default qtcreator -y
sudo apt-get install qtchooser
qtchooser -l


