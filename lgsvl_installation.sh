ROS_DISTRO=dashing

sudo apt-get install wget
sudo apt-get install unzip
if ! command -v nvidia-smi &> /dev/null; then
    echo "Nvidia drivers are not installed! Please install them and try again.";
    exit 1;
fi

wget https://github.com/lgsvl/simulator/releases/download/2020.06/lgsvlsimulator-linux64-2020.06.zip
unzip lgsvlsimulator-linux64-2020.06.zip
mv lgsvlsimulator-linux64-2020.06 lgsvlsimulator
rm lgsvlsimulator-linux64-2020.06.zip

cd lgsvlsimulator
sudo apt update
sudo apt install python3-colcon-common-extensions
sudo apt install libboost-all-dev
git clone https://github.com/lgsvl/ros2-lgsvl-bridge.git

cd ros2-lgsvl-bridge
git checkout ${ROS_DISTRO}-devel

colcon build --cmake-args '-DCMAKE_BUILD_TYPE=Release'
