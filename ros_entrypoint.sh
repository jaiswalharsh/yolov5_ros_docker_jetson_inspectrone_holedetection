#!/bin/bash
set -e

# setup ros environment
source "/workspace/catkin_ws/devel/setup.bash"
export ROS_IP=$(hostname -I | awk '{print $1;}')
# Uncomment line below only when building for Jetson
export OPENBLAS_CORETYPE=ARMV8
export ROS_MASTER_URI=http://192.168.1.237:11311/
#export LD_PRELOAD=/usr/local/lib/python3.8/dist-packages/torch/lib/libgomp-d22c30c5.so.1
exec "$@"
