# SPARK Setup
This is a repository that contains setup scripts for Python3.6, ROS2 Dashing Dynamite, LGSVL 2020.06 and Pycharm Community edition. 
## Requirements
* These scripts only work on __Ubuntu 18.04__.
* To be able to install and run LGSVL with these scripts, you need to have an Nvidia Graphics Card and have the drivers installed. 
You can check this by running 
```shell
nvidia-smi
```
If the command is not found, try the following [tutorial](https://medium.com/@sreenithyc21/nvidia-driver-installation-for-ubuntu-18-04-2020-2918be830d0f).

If your computer does not have a GPU, you will probably not be able to run LGSVL, however feel free to try by going to LGSVL Docs > Getting Started.

If you have an AMD GPU, make sure that you installed the drivers and then follow the LGSVL Docs > Getting Started installation tutorial. Don't forget to install 
Vulkan libraries by running: `sudo apt install libvulkan1`

## Usage
1. Clone the repository to the desired folder. 
2. Run  (or you can go Properties of spark_setup.sh --> Permissions --> Select "Allow this file to run as a program" & In terminal, running only second line is enough since we've already done the first line manually.)

```shell
chmod +x ./spark_setup.sh
./spark_setup.sh
```
3. Run to start LGSVL, Pycharm and LGSVL Bridge (or you can go Properties of initDev.sh --> Permissions --> Select "Allow this file to run as a program" & In terminal, running only second line is enough since we've already done the first line manually.)

```shell
chmod +x ./initDev.sh
./initDev.sh
``` 
4. Fork the repositories you want to work on and clone them to this directory, then start working!
