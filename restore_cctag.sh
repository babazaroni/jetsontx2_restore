#!/bin/bash

sudo apt-get install g++ git-all libpng12-dev libjpeg-dev libeigen3-dev libboost-atomic-dev libboost-chrono-dev libboost-date-time-dev libboost-dev libboost-program-options-dev libboost-exception-dev libboost-filesystem-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev libboost-timer-dev libtbb-dev libdevil-dev libboost-test-dev

echo "to copile on jetson, need to copy sse2neon.h to CCTag/src/cctag/geometry from https://github.com/jratcliff63367/sse2neon/blob/master/SSE2NEON.h"


cd $HOME/bebop/translation
mkdir cctag
cd cctag
git clone https://github.com/babazaroni/CCTag.git
cd CCTag
git checkout specialCases
mkdir build
cd build
cmake .. -DOpenCV_DIR=/usr/share/OpenCV/

NUM_CPU=$(nproc)
make -j$(($NUM_CPU - 1))


