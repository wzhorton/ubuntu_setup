#!/bin/sh

~/ubuntu_setup/misc/mount_drives.sh

rsync -ar --delete /home /media/zach/Backup1/backups/daily
rsync -ar --delete /home /media/zach/Backup2/backups/daily

~/ubuntu_setup/misc/unmount_drives.sh
