#!/bin/sh

# Dependencies
sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y

# Download and Install
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
bash Anaconda3-2020.07-Linux-x86_64.sh
. ~/.profile
rm Anaconda3-2020.07-Linux-x86_64.sh

# Add Icon to Activities
echo #!/usr/bin/env xdg-open > tmp
echo [Desktop Entry] >> tmp
echo Name=Anaconda >> tmp
echo Type=Application >> tmp
echo Exec=/home/zach/anaconda3/bin/anaconda-navigator >> tmp
echo Icon=/home/zach/anaconda3/lib/python3.8/site-packages/anaconda_navigator/static/images/anaconda-icon-256x256.png >> tmp
echo Comment=Open Anaconda Navigator >> tmp
echo Terminal=false >>tmp
mv tmp anaconda-navigator.desktop
mv anaconda-navigator.desktop ~/.local/share/applications/

