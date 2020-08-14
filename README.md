# ubuntu setup

This repo contains instructions, scripts, and reminders for setting up my personal Ubuntu (20.04) machine. Below are instructions on using scripts to automatically set up the main things as well as instructions for other items. Note these were designed with Ubuntu 20.04 Focal Fossa in Aug 2020. 

### Pre Execution Setup

Edit the Display Settings such that monitor resolution, frame rate, and position are satisfactory. Activate the native red shift program "Night Light" within Display Settings. Alternatively, the package `redshift-gtk` is functional. Sadly, the very popular f.lux is not functional on Linux. Set the times to be 9:00pm to 7:00am. 

### Primary Setup Script

Clone using `git clone https://github.com/wzhorton/ubuntu_setup` into user's home directory. Be sure to have sudo privelages. Move into the new directory and run the main file with `./main.sh` to execute the primary setup sequence. If needed (not likely), make it executable by first running `chmod +x main.sh`. Be prepared to respond to prompts (which are mostly front loaded). Expect 15 minutes of run time (mainly from the Citra build).

### Post Execution Setup

Reboot the system for some changes to take effect. Update, upgrade, and autoremove packages. This is critical.

Mouse software for the Pictek T7 can be found online. Installing the software will require the use of a windows machine. One option is to use a virtual machine. This can be done by running `sudo apt install virtualbox` and by downloading a windows 10 home 64-bit iso file. Then, launch the application as root, configure the usb to accept the mouse as direct input, then install windows. Download the software and set the mouse as desired. 

