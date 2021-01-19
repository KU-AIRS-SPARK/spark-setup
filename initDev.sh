source /opt/ros/dashing/setup.bash
pycharm-professional&

gnome-terminal --tab -x bash -c 'cd lgsvlsimulator/ros2-lgsvl-bridge&&. install/setup.bash&&lgsvl_bridge;$SHELL'
gnome-terminal --window -x bash -c 'cd lgsvlsimulator&&./simulator'
