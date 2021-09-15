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
echo "[INFO] Starting Obstacle Avoidance with DURO GPS"
echo "[INFO] Starting ROSCORE"
screen -m -d -S roscore bash -c roscore
sleep 4
echo "[INFO] Nissan Bringup"
screen -m -d -S nissan_bringup bash -c 'roslaunch nissan_bringup obstacle_sensors_duro.launch'
echo "[INFO] Starting Obstacle Avoidance"
#source ~/autoware.ai/install/setup.bash
sleep 4
screen -m -d -S obstacle_avoidance bash -c 'source ~/autoware.ai/install/setup.bash && roslaunch obstacle_avoidance obstacle_avoidance.launch'
echo "[INFO] Starting Lanelet2"
#source ~/autoware.ai_bleeding/install/setup.bash
screen -m -d -S map_file bash -c 'source ~/autoware.ai_bleeding/install/setup.bash && roslaunch map_file lanelet2_map_loader_zala.launch'
echo "[INFO] Starting remote RVIZ"
sleep 3
ssh jkk@192.168.1.2 'screen -d -m -S viz_obstacle ./start_viz_obstacle.sh'


