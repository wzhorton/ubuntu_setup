#!/bin/sh
sudo apt install flatpak 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
flatpak install https://flatpak.citra-emu.org/citra-nightly.flatpakref 
flatpak install https://flatpak.citra-emu.org/citra-canary.flatpakref 
mkdir -p ~/uranium/roms/3ds
