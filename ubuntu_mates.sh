#!/bin/sh

# Faster Ubuntu APT repository server for Korean
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sudo sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

# essential packages
sudo apt update
sudo apt install -y nnn zsh ncdu htop rsync git vim

# Installation of om my zsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
