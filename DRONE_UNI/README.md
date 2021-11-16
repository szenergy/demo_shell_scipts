# For testing at campus

First `ssh nvidia@192.168.1.30` and
``` r
screen -m -d -S roscore bash -c roscore
screen -m -d -S campfly bash -c 'roslaunch drone_bringup campus_fly.launch'
screen -m -d -S bagrecord bash -c 'roslaunch drone_bringup campus_fly.launch'
#screen -m -d -S usb cd /media/nvidia/kingston
#screen -m -d -S usb bash -c 'cd /media/nvidia/kingston'
```

cd /media/nvidia/kingston/; rosbag record -O del1.bag -a -x "(.*)_packets" -b 4096



# screen

- list screen: `screen -ls`
- restore screen:  `screen -r roscore` / `screen -r campfly`
- detach: `Ctrl-a` + `Ctrl-d`
- kill: `killall -9 screen` and `screen -wipe`



# usb
- List USB stick (and all disks): `sudo fdisk -l` vagy `lsblk`
-  IMU: (`lsusb`)  + `sudo chmod a+w /dev/bus/usb/001/004`