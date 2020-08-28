#!/bin/sh

# Install RetroArch. The PPA has downloader issues and cores are in wrong folder
#sudo add-apt-repository ppa:libretro/stable -y
#sudo apt update -y
#sudo apt-get install retroarch-* -y
#sudo apt-get install libretro-* -y
sudo snap install retroarch

# Add Directories

mkdir -p ~/uranium/roms/gbc
mkdir -p ~/uranium/roms/gba
mkdir -p ~/uranium/roms/nds

