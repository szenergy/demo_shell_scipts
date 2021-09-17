
## he laptop

source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
source ~/autoware.ai/install/setup.bash

## leaf
export ROS_MASTER_URI=http://192.168.1.5:11311
export ROS_IP=192.168.1.50

screen -m -d -S talaris rosrun talaris_driver Talaris.sh
export DISPLAY=:0
#sleep 2
#screen -m -d -S teleopgui1 rosrun ros_guis teleop_gui1.py
#sleep 2
#screen -m -d -S teleopgui2 roslaunch nissan_bringup rviz03_teleop.launch
