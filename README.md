# ubuntu setup

This repo contains instructions, scripts, and reminders for setting up my personal Ubuntu (20.04) machine. Below are instructions on using scripts to automatically set up the main things as well as instructions for other items. Note these were designed with Ubuntu 20.04 Focal Fossa in Aug 2020. 

### Pre Execution Setup

Edit the Display Settings such that monitor resolution, frame rate, and position are satisfactory. Activate the native red shift program "Night Light" within Display Settings. Alternatively, the package `redshift-gtk` is functional. Sadly, the very popular f.lux is not functional on Linux. Set the times to be 9:00pm to 7:00am. Set the appearance to Dark.

### Primary Setup Script

Clone using `git clone https://github.com/wzhorton/ubuntu_setup` into user's home directory. Be sure to have sudo privelages. Move into the new directory and run the main file with `./main.sh` to execute the primary setup sequence. If needed (not likely), make it executable by first running `chmod +x main.sh`. Be prepared to respond to prompts (which are mostly front loaded). Expect 30 minutes of run time (mainly from the graphics drivers and the Citra build). A reset is required upon completion.

### Post Setup Script

After reboot, run `./post.sh` to do some package cleanup and some final Anaconda setup.

### Post Execution Setup

Mouse software for the Pictek T7 can be found online. Installing the software will require the use of a windows machine. One option is to use a virtual machine. This can be done by running `sudo apt install virtualbox` and by downloading a windows 10 home 64-bit iso file. Then, launch the application as root, configure the usb to accept the mouse as direct input, then install windows. Download the software and set the mouse as desired. I prefer a DPI of 2000 and to have the forward/backward buttons disabled as well as the following colors:

- Red (255, 5, 0)
- Orange/Gold (255, 70, 0)
- Blue/Cyan (0, 255, 255)
- Green/Teal (0, 255, 70)
- Pale Purple (180, 70, 255)

Alternatively to a VM is to create a bootable usb drive. This process is tedious, and virtually impossible on macos. The drive must either be FAT32 or NTSF format, however there is a file larger than 4gb in current iso's, so FAT32 doesn't work. The program WoeUSB (installed via snap) is finicky, but ultimately reliable in making a bootable drive.

Be sure to open PCSX2, Citra, and retroarch for the first time so that directories exist for restoring your memory card file.

Not all ethernet networks are plug and play, particularly newer RealTek devices. If needed, run `sudo lshw -C network` and find the wired network line, which usually contains a statement like UNCLAIMED. Find the entry labelled "product:" and note the model number and type. Google the driver for it, download, and install (or use the backup file). Don't bother with apt or ppa stuff as it is likely out of date. 

Take some time to import bookmarks and configure Brave and Mailspring. The process is tedious but cannot really be automated. However, Brave has a keychain settings thing that can make syncing faster. The code is in the backup file.

NOTE FOR FUTURE: rsync iTunes library over ssh. Point rythmbox to it. The directory exists within uranium. Also, organize and handle backup and refresh backup solutions. Also, install optifine by downloading surrent version and running a command.
