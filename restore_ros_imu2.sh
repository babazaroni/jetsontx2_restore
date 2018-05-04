#!/bin/bash

cd ~/catkin_ws
source devel/setup.bash
cd src
git clone https://github.com/jetsonhacks/rtimulib_ros
cd rtimulib_ros/src

#echo 
gedit rtimulib_ros.cpp
