#!/bin/sh

# Install RetroArch
sudo add-apt-repository ppa:libretro/stable -y
sudo apt update -y
sudo apt-get install retroarch-* -y
sudo apt-get install libretro-* -y

# Add Directories

mkdir -p ~/uranium/roms/gbc
mkdir -p ~/uranium/roms/gba
mkdir -p ~/uranium/roms/nds

