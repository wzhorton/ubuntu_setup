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
echo Name=Spyder >> tmp
echo Type=Application >> tmp
echo Exec=/bin/bash -c "export DRROOT="/home/zach/drtools"; source /home/zach/drtools/chronos/bin/drenv home;/home/zach/anaconda3/bin/spyder"
echo Icon=/home/zach/anaconda3/lib/python3.8/site-packages/spyder/images/spyder.png >> tmp
echo Comment=Open Spyder with Chronos Env >> tmp
echo Terminal=false >>tmp
mv tmp spyder.desktop
mv spyder.desktop ~/.local/share/applications/

