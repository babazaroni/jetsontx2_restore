#!/bin/bash

cd ~/catkin_ws
source devel/setup.bash
cd src
git clone https://github.com/jetsonhacks/rtimulib_ros
cd rtimulib_ros/src

#echo change "imu/data" to "imu"
read -p "Press any key to continue..." -n1  -s
gedit rtimulib_ros.cpp

cd ~/catkin_ws

catkin_make

#setup apt to install ros packages
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# install the visualizer
# instal from indigo was not found, use kinetic
#sudo apt-get install ros-indigo-razor-imu-9dof
sudo apt-get install ros-kinetic-razor-imu-9dof

sudo apt-get install python-visual
sudo apt-get install python-wxtools

# see http://wiki.ros.org/razor_imu_9dof

#install arduino IDE

