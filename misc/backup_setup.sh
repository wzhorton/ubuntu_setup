#!/bin/sh

#### User Confirmation ####
echo Backup setup script initialized. You are attempting to overwrite the home_backup folders in both backup drives.
read -p 'Are you sure you wish to proceed? (y/n): ' cont

if [ "$cont" != y ]
then
  exit 1
fi

read -p 'This operation cannot be undone. Are you absolutely sure you wish to continue? (y/n): ' cont2

if [ "$cont2" != y ]
then
  exit 1
fi

read -p 'Backup drives and crontab are about to be wiped. Please confirm (y/n): ' cont3

if [ "$cont3" != y ]
then
  exit 1
fi

#### Mount, Erase, and Reset ####
~/ubuntu_setup/misc/mount_drives.sh

rm -rf /media/zach/Backup1/backups
rm -rf /media/zach/Backup2/backups

mkdir -p /media/zach/Backup1/backups/daily
mkdir /media/zach/Backup1/backups/monday
mkdir /media/zach/Backup1/backups/thursday
mkdir /media/zach/Backup1/backups/monthly
cp -r /media/zach/Backup1/backups/ /media/zach/Backup2/

crontab -r

#### Set Cron Jobs ####
(crontab -l 2>/dev/null; echo "0 7 * * * ~/ubuntu_setup/misc/cronjobs/daily_backup.sh") | crontab -
(crontab -l 2>/dev/null; echo "15 8 * * 1 ~/ubuntu_setup/misc/cronjobs/monday_backup.sh") | crontab -
(crontab -l 2>/dev/null; echo "15 8 * * 4 ~/ubuntu_setup/misc/cronjobs/thursday_backup.sh") | crontab -
(crontab -l 2>/dev/null; echo "30 9 2 * * ~/ubuntu_setup/misc/cronjobs/monthly_backup.sh") | crontab -

#### Run and Clean ####
~/ubuntu_setup/misc/cronjobs/daily_backup.sh
~/ubuntu_setup/misc/cronjobs/monthly_backup.sh

~/ubuntu_setup/misc/unmount_drives.sh

