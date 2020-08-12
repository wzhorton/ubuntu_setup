#!/bin/sh

#Update Repos
sudo apt update 
sudo apt upgrade 

#Give scripts executable permission (probably not needed)
sudo chmod +x ~/ubuntu_setup/scripts/*.sh

#Execute Scripts
for shfile in ~/ubuntu_setup/scripts/*.sh
do
	$shfile
done

#Install Pulse Audio Controls and htop
sudo apt install htop pavucontrol 

