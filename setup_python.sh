#!/bin/bash

# install required packages
sudo apt -y install git

# check out pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# define environment variables
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

# add pyenv init to shell
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

# restart shell
exec "$SHELL"

# install python and set as default
pyenv install 3.8.5
pyenv global 3.8.5
