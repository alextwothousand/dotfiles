#!/bin/bash

# vscodium repo
sudo tee -a /etc/yum.repos.d/vscodium.repo << 'EOF'
[gitlab.com_paulcarroty_vscodium_repo]
name=gitlab.com_paulcarroty_vscodium_repo
baseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
metadata_expire=1h
EOF


# rpm fusion
sudo yum install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

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
sudo yum install -y telegram-desktop

# dev tools
sudo yum install -y jetbrains-clion
sudo yum install -y codium

# 0x0 wrapper
curl -LO https://raw.githubusercontent.com/Calinou/0x0/master/bin/0x0
sudo chmod +x 0x0
sudo mv 0x0 /usr/local/bin

# other
sudo yum install -y exa jetbrains-mono-fonts
