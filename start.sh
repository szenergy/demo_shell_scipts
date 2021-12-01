#!/bin/bash

# Set stuff
source /opt/ros/melodic/setup.bash

export ROS_MASTER_URI=http://192.168.1.5:11311
export ROS_IP=192.168.1.5


ssh jkk-natlab@192.168.1.110 /home/rtx/ZALA_DEMO/perception-stack/... fusion-jkk-natlab.sh
ssh jkk-natlab@192.168.1.110 /home/rtx/ZALA_DEMO/perception-stack/... lane-jkk-natlab.sh
ssh jkk-natlab@192.168.1.110 /home/rtx/ZALA_DEMO/perception-stack/... yolo-jkk-natlab.sh