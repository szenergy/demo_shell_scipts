#!/bin/bash

# nvidia 192.168.1.5

echo "[INFO] Killing ROSmaster"
killall -9 rosmaster
echo "[INFO] Killing Screens"
killall -9 screen
echo "[INFO] Wiping empty Screens"
screen -wipe
echo "[INFO] Killing everything on Industrial PC"
ssh jkk@192.168.1.2 './stop.sh'
echo "[INFO] Killing everything on Dell Notebook"
ssh he@192.168.1.50 './stop.sh'
echo "[INFO] Killing everything on Drone"
ssh nvidia@192.168.1.30 './stop.sh'
