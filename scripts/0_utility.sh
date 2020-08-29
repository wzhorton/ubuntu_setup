#!/bin/sh

# System monitoring software 
sudo apt install htop psensor -y

# Pulse Audio Control
sudo apt install pavucontrol -y

# File Compression
sudo apt install unrar -y

# 12 Hour Clock Format
gsettings set org.gnome.desktop.interface clock-format '12h'

# Add PS4 Controller Driver For USB Use
# To use, run "sudo ds4drv --hidraw". Set permissions to avoid sudo.
sudo apt install python3-pip -y
sudo pip3 install ds4drv

# Network Tools
sudo apt install net-tools -y

# GNOME Tweaks
sudo apt install gnome-tweaks -y
git clone https://github.com/adaxi/audio-output-switcher.git ~/.local/share/gnome-shell/extensions/audio-output-switcher@anduchs
gnome-extensions enable audio-output-switcher@anduchs

# GIMP
sudo apt install gimp -y
