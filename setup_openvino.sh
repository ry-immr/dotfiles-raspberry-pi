#!/bin/bash

# install required packages
sudo apt -y install wget
sudo apt -y install cmake

# download openvino library to downloads directory
wget -O "$HOME"/Downloads/ https://download.01.org/opencv/2019/openvinotoolkit/R3/l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz

# extract downloaded files
sudo mkdir -p /opt/intel/openvino
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz --strip 1 -C /opt/intel/openvino

# set environment variables
source /opt/intel/openvino/bin/setupvars.sh
echo "source /opt/intel/openvino/bin/setupvars.sh" >> ~/.bashrc

# install usb rules
sudo usermod -a -G users "$(whoami)"
sh /opt/intel/openvino/install_dependencies/install_NCS_udev_rules.sh
