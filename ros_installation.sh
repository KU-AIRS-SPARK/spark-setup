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
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'

sudo apt update
sudo apt install ros-dashing-desktop

echo "source /opt/ros/dashing/setup.bash" >> ~/.bashrc
source ~/.bashrc

python3 -m pip install -U argcomplete # ROS2 arg complete tool

if ! command -v ros2 &> /dev/null; then
    echo "ROS2 is not installed correctly, please try again.";
    exit 1;
fi
