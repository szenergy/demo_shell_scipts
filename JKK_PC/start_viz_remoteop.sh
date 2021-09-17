#!/bin/bash
source /opt/ros/melodic/setup.bash
source /home/jkk/autoware.ai/install/setup.bash
source /home/jkk/Documents/swift_ros_ws/devel/setup.bash
#source /home/jkk/catkin_ws/devel/setup.sh
source /home/jkk/catkin_ws/devel/setup.bash
source ~/catkin_ws/devel/setup.bash

export ROS_IP=192.168.1.2
export ROS_MASTER_URI=http://192.168.1.5:11311

export DISPLAY=:0
screen -d -m -S view_zed bash -c 'rosrun rqt_image_view rqt_image_view /zed_node/left/image_rect_color/compressed'
screen -d -m -S teleop_gui bash -c 'rosrun ros_guis teleop_gui2.py'
screen -d -m -S teleop_rviz bash -c 'roslaunch nissan_bringup rviz03_teleop.launch'
sleep 2
wmctrl -r :ACTIVE: -e 5,0,0,1280,500
