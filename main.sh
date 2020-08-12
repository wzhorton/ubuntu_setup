#!/bin/sh

#Update Repos
sudo apt update -y
sudo apt upgrade -y

#Give scripts executable permission (probably not needed)
sudo chmod +x ~/ubuntu_setup/scripts/*.sh

#Execute Scripts
for shfile in ~/ubuntu_setup/scripts/*.sh
do
	~/ubuntu_setup/scripts/$shfile
done

#Install Pulse Audio Controls
sudo apt install htop pavucontrol -y

