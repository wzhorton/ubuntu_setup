#!/bin/sh

~/ubuntu_setup/misc/mount_drives.sh

rsync -ar --delete /home /media/zach/Backup1/backups/monthly
rsync -ar --delete /home /media/zach/Backup2/backups/monthly
cd /media/zach/Backup2/monthly
tar -czvf backup_$(date +%Y%m).tar.gz home/
cd ~

~/ubuntu_setup/misc/unmount_drives.sh
