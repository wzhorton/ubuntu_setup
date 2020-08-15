#!/bin/sh

# Main PCSX2 Install
sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:pcsx2-team/pcsx2-daily -y
sudo apt update 
sudo apt install pcsx2-unstable -y

# Bios Setup and Placement
gpg -d ~/ubuntu_setup/secure.zip.gpg > ~/ubuntu_setup/secure.zip
unzip ~/ubuntu_setup/secure.zip
mkdir ~/.config/PCSX2 && mkdir ~/.config/PCSX2/bios
mv ~/ubuntu_setup/ps2_bios/* ~/.config/PCSX2/bios

# Clean Up
rm ~/ubuntu_setup/secure.zip
rm -r ~/ubuntu_setup/ps2_bios
mkdir -p ~/uranium/roms/ps2


