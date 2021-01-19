# SPARK Setup
This is a repository that contains setup scripts for Python3.6, ROS2, LGSVL and Pycharm Community edition. 
## Requirements
* These scripts only work on __Ubuntu 18.04__.
* To be able to install and run LGSVL with these scripts, you need to have an Nvidia Graphics Card and have the drivers installed. 
You can check this by running ```shell
nvidia-smi
```
If the command is not found, try the following [tutorial](https://medium.com/@sreenithyc21/nvidia-driver-installation-for-ubuntu-18-04-2020-2918be830d0f).

If your computer does not have a GPU, you will probably not be able to run LGSVL and if you have an AMD GPU 

## Usage
1. Clone the repository to the desired folder. 
2. Run  
```shell
chmod +x ./spark_setup.sh
./spark_setup.sh
```
3. Run to start LGSVL, Pycharm and LGSVL Bridge
```shell
chmod +x ./initDev.sh
./initDev.sh
``` 
4. Fork the repositories you want to work on and clone them to this directory, then start working!