#!/bin/bash

# https://www.youtube.com/watch?v=Th3H_m7DUw8

cd

sudo apt-get install cmake-curses-gui

#the following did not work
#sudo bash -c 'echo \''KERNEL==\"i2c-[0-7]\",MODE=\"0666\"\''> /etc/udev/rules.d/90-i2c.rules'

#use instead these instructions at https://forum.up-community.org/discussion/2141/tutorial-gpio-i2c-spi-access-without-root-permissions

#For I2C-bus access create the file /etc/udev/rules.d/50-i2c.rules with the following contents:
#SUBSYSTEM=="i2c-dev", GROUP="i2cuser", MODE="0660"
sudo groupadd i2cuser
sudo adduser "$USER" i2cuser


#should already have installed the RTIMUlib script which mkdir bebop/translation

cd bebop;cd translation
#git clone https://github.com/jetsonhacks/RTIMULib.git
cd RTIMULib
cd Linux
mkdir build
cd build
cmake ..
echo "Turn off BUILD_DEMOGL and BUILD_DRIVE11 and BUILD_GL"
echo "Press C to configure"
echo "Press 'g' to generate and exit"
read -p "Press any key to continue..." -n1  -s
ccmake ..
cmake ..
echo "ignore the qt warnings"
read -p "Press any key to continue..." -n1  -s
make -j4
sudo make install
sudo ldconfig

echo "reboot then run restore_ros_imu2.sh"c



