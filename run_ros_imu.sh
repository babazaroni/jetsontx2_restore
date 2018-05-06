#!/bin/bash

# in .bashrc at end put
# eval "$BASH_POST_RC"

BASH_POST_RC='cd /home/$(whoami)/catkin_ws;source devel/setup.bash; roscore' gnome-terminal
sleep .5
BASH_POST_RC='cd /home/$(whoami)/catkin_ws;source devel/setup.bash; roslaunch rtimulib_ros rtimulib_ros.launch' gnome-terminal

sleep .5
BASH_POST_RC='cd /home/$(whoami)/catkin_ws;source devel/setup.bash; roslaunch razor_imu_9dof razor-display.launch' gnome-terminal


