#!/bin/bash
export PATH=/usr/local/cuda-10.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
source ~/autoware.ai/install/local_setup.bash
#source ~/leaf_ws/devel/setup.bash
# Set stuff
export ROS_MASTER_URI=http://192.168.1.5:11311
export ROS_IP=192.168.1.2

export DISPLAY=:0
sleep5
screen -d -m -S view_drone_rviz bash -c 'rosrun rviz_markers drone'
sleep 2
screen -d -m -S view_nissan_rviz bash -c 'roslaunch nissan_bringup 3d_nissan.launch'
sleep 1
screen -d -m -S view_rviz_display bash -c 'rosrun rviz rviz -d leaf04_elkerules_demo_drone.rviz'
sleep 1
wmctrl -r :ACTIVE: -e 5,0,0,1280,1024
