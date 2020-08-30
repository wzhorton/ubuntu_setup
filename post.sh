#!/bin/sh

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

conda update conda
conda update anaconda
conda config --set auto_activate_base False
. ~/.profile
