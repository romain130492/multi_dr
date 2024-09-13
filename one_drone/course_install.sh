#!/bin/bash

install_simulation_dependencies() {
    sudo apt update
    sudo add-apt-repository -y ppa:borglab/gtsam-release-4.0
    sudo apt-get -y install cmake build-essential libeigen3-dev libboost-all-dev
    sudo apt install -y ros-humble-gazebo-ros
    sudo apt -y upgrade
    cd /home/simulations/ros2_sims_ws/src/drones_ROS2/gtsam/build
    sudo cmake ..
    sudo make -j4
    sudo make install
}

# Call the function to execute the commands
install_simulation_dependencies

# sudo apt install python3-colcon-common-extensions
# sudo apt install ros-humble-gazebo-ros2-control
# sudo apt install ros-humble-ros2-controllers
# sudo apt install ros-humble-gazebo-ros-pkgs

# sudo apt-get install -y cmake libboost-all-dev libeigen3-dev libtbb-dev

# cd gtsam
# mkdir build

# cd /home/simulations/ros2_ws/src/drones_ROS2/gtsam/build

# cd /home/simulations/ros2_sims_ws/src/drones_ROS2/gtsam/build
# cmake ..
# make -j4
# sudo make install