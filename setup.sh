#!/bin/bash
# update apt
sudo apt update

# setup openvino
source setup_openvino.sh

# setup python via pyenv
source setup_python.sh

# install tmux
sudo apt -y install tmux

# restart shell
exec "$SHELL"
