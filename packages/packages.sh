#!/bin/bash

# add repos from copr
sudo dnf copr enable peterwu/jetbrains -y
sudo dnf copr enable dvdmuckle/discord -y

# curl wget
sudo yum install -y curl wget

# util-linux-user (for chsh)
sudo yum install -y util-linux-user

# zsh and oh-my-zsh
sudo yum install -y zsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

# social media
sudo yum install -y Discord-installer

# dev tools
sudo yum install -y jetbrains-clion
