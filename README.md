# demo_shell_scipts
Handy start and stop demo shell scripts
## `screen`

The shell scripts use `screen`. With this handy command you can start a `screen` session and then open any number of virtual terminals inside that session. Processes running in `screen` will continue to run when their window is not visible even if you get disconnected. [Go to our wiki](https://github.com/szenergy/szenergy-public-resources/wiki/H-cheatsheet#screen)

start new named screen session: 
``` r
screen -m -d -S roscore bash -c roscore
screen -m -d -S campfly bash -c 'roslaunch drone_bringup campus_fly.launch'
screen -m -d -S rviz1 bash -c 'rosrun rviz rviz'
```
- list screen: `screen -ls`
- restore screen:  `screen -r roscore` / `screen -r campfly` /  `screen -r rviz1`
- detach: `Ctrl-a` + `Ctrl-d`
- kill: `killall -9 screen` and `screen -wipe`