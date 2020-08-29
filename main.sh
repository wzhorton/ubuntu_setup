#!/bin/sh

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Give scripts executable permission (probably not needed)
#chmod +x ~/ubuntu_setup/misc/set_permissions.sh
#~/ubuntu_setup/misc/set_permissions.sh

# Execute Scripts
for shfile in ~/ubuntu_setup/scripts/*.sh
do
	$shfile
done

echo
echo main.sh has finished. Please REBOOT and run post.sh
echo
echo *** A SYSTEM REBOOT IS REQUIRED ***
echo
echo After, run post.sh to complete setup
echo
echo Press any key to proceed with reboot
read null_var
sudo reboot

