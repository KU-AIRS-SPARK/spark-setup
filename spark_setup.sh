sudo apt-get install git
/bin/bash ./python_installation.sh && /bin/bash ./ros2_installation.sh && /bin/bash ./lgsvl_installation.sh && /bin/bash ./pycharm-installation.sh

cp ./initDev.sh ~/spark/

cd ~/spark
git clone https://github.com/KU-AIRS-SPARK/simulation-utils
