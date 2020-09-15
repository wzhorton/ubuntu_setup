#!/bin/sh

# Download and Install
wget https://launcher.mojang.com/download/Minecraft.deb
sudo gdebi Minecraft.deb -n
rm Minecraft.deb
