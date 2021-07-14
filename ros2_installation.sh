locale # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

if locale | grep -q 'LANG=en_US.UTF-8'; then
    echo "Locale is correct"
else
    echo "Locale cannot be set to correct locale, try again"
    exit 1
fi


sudo apt update && sudo apt install curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

mkdir -p ~/ros2_foxy
cd ~/ros2_foxy
tar xf ~/Downloads/ros2-foxy-20201211-linux-focal-amd64.tar.bz2

sudo apt update
sudo apt install -y python3-rosdep
sudo rosdep init
rosdep update

rosdep install --from-paths ~/ros2_foxy/ros2-linux/share --ignore-src --rosdistro foxy -y --skip-keys "console_bridge fastcdr fastrtps osrf_testing_tools_cpp poco_vendor rmw_connextdds rti-connext-dds-5.3.1 tinyxml_vendor tinyxml2_vendor urdfdom urdfdom_headers"

sudo apt install -y libpython3-dev python3-pip
pip3 install -U argcomplete

. ~/ros2_foxy/ros2-linux/setup.bash

# Try them for check installation in different terminals (listener & talker)
. ~/ros2_foxy/ros2-linux/setup.bash
ros2 run demo_nodes_cpp talker

. ~/ros2_foxy/ros2-linux/setup.bash
ros2 run demo_nodes_py listener
