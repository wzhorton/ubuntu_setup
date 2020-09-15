#!/bin/sh

# Dependency Installs
sudo apt install libsdl2-dev qtbase5-dev libqt5opengl5-dev qtmultimedia5-dev libqt5multimedia5-plugins -y
sudo apt install libfdk-aac-dev ffmpeg libswscale-dev libavdevice58 libavformat-dev libavcodec-dev libavdevice-dev -y
sudo apt install cmake -y

# Main Citra Install (do not use flatpak)
cd ~
git clone --recursive https://github.com/citra-emu/citra-canary
mkdir ~/citra-canary/build && cd citra-canary/build
cmake .. -DCMAKE_BUILD_TYPE=Release -DENABLE_FFMPEG_AUDIO_DECODER=ON
make
sudo make install

# Directory Organization
mkdir -p ~/uranium/roms/3ds

