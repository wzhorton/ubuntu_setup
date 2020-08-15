#!/bin/sh

#Update Repos
sudo apt update -y
sudo apt upgrade -y

#Give scripts executable permission (probably not needed)
chmod +x ~/ubuntu_setup/misc/set_permissions.sh
~/ubuntu_setup/misc/set_permissions.sh

#Execute Scripts
for shfile in ~/ubuntu_setup/scripts/*.sh
do
	$shfile
done

#sudo reboot
