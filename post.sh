#!/bin/sh

crontab -r

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

conda update conda -y
conda update anaconda -y
conda config --set auto_activate_base False
pip install git+git://github.com/spyder-ide/spyder.vim.git
conda install pip -y

exit
