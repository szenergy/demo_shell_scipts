#!/bin/bash

ssh nvidia@192.168.1.5 '/home/nvidia/perception-stack/launch/stop.sh'
ssh jkk-natlab@192.168.1.100 '/home/jkk-natlab/perception-stack/launch/stop.sh'
#ssh jkk@192.168.1.2 './stop.sh'
echo "[INFO] Demo Stopped Successfully..."
