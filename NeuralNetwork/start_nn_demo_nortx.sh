#!/bin/bash

### Xavier(nvidia) ###
echo "[INFO] Starting Sensors..."
ssh nvidia@192.168.1.5 'screen -d -m -S sensors /home/nvidia/perception-stack/launch/sensors'

sleep 5

echo "[INFO] Starting Lidar Filter..."
ssh nvidia@192.168.1.5 'screen -d -m -S filter /home/nvidia/perception-stack/launch/filter'

echo "[INFO] Xavier(nvidia) Startup Successful!"


### Xavier(jkk-natlab) ### 
echo "[INFO] Starting Lane Segmentation on Xavier(jkk-natlab)..."
ssh jkk-natlab@192.168.1.100 'screen -d -m -S lane-jkk-natlab /home/jkk-natlab/perception-stack/launch/lane-jkk-natlab'

echo "[INFO] Starting Object Detection on Xavier(jkk-natlab)..."
ssh jkk-natlab@192.168.1.100 'screen -d -m -S yolo-jkk-natlab /home/jkk-natlab/perception-stack/launch/yolo-jkk-natlab'

sleep 5

echo "[INFO] Starting Fusion Script on Xavier(jkk-natlab)..."
ssh jkk-natlab@192.168.1.100 'screen -d -m -S fusion-jkk-natlab /home/jkk-natlab/perception-stack/launch/fusion-jkk-natlab'

# RVIZ (ipari-pc)

echo "Starting remote rviz"
ssh jkk@192.168.1.2 'screen -d -m -S VIZ ./start_viz.sh'
