#!/bin/sh

~/ubuntu_setup/misc/mount_drives.sh

rsync -ar --delete /home /media/zach/Backup1/backups/thursday
rsync -ar --delete /home /media/zach/Backup2/backups/thursday

~/ubuntu_setup/misc/unmount_drives.sh
