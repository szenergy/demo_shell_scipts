#!/bin/bash

# nvidia 192.168.1.5

export PATH=/usr/local/cuda-10.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH
source /opt/ros/melodic/setup.bash
source ~/leaf_ws/devel/setup.bash
source ~/autoware.ai/install/local_setup.bash
#source ~/leaf_ws/devel/setup.bash
# Set stuff
export ROS_MASTER_URI=http://192.168.1.5:11311
export ROS_IP=192.168.1.5

ssh rtx@192.168.1.110 /home/rtx/ZALA_DEMO/perception-stack/launch/operator/start_nn_demo_remote.sh
ssh rtx@192.168.1.110 /home/rtx/ZALA_DEMO/perception-stack/launch/operator/start_vizonly.sh

#bash -c "roslaunch nissan_bringup nissan.leaf.bringup.2020.A.launch"
#bash -c 'env'
