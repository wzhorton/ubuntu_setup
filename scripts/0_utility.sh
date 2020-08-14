#!/bin/sh

# System monitoring software 
sudo apt install htop psensor -y

# Pulse Audio Control
sudo apt install pavucontrol -y

# File Compression
sudo apt install unrar -y

# 12 Hour Clock Format
gsettings set org.gnome.desktop.interface clock-format '12h'
