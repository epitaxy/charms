#!/bin/sh

# Faster Ubuntu APT repository server for Korean
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

# essential packages
sudo apt install -y nnn zsh ncdu htop rsync git

# Installation of om my zsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
