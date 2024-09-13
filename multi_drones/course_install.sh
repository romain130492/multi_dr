#!/bin/bash

install_simulation_dependencies() {
    sudo apt update
    sudo apt install -y ros-humble-gazebo-ros
    sudo apt -y upgrade
}

# Call the function to execute the commands
install_simulation_dependencies