#!/usr/bin/env bash

sudo add-apt-repository universe

# Install apt dependencies
sudo apt install \
     emacs25-nox \
     silversearcher-ag;

# install pyenv
curl https://pyenv.run | bash

