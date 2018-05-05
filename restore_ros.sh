#!/bin/bash

cd

git clone https://github.com/jetsonhacks/installROSTX2
cd installROSTX2
./installROS.sh
./setupCatkinWorkspace.sh

echo "***************************************************"
echo "Need to edit .bashrc and edit ROS_IP address to have only 1 value"
echo "***************************************************"


