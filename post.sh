#!/bin/sh

sudo apt update
sudo apt upgrade
sudo apt autoremove

conda update conda
conda update anaconda
conda config --set auto_activate_base False
. ~/.profile
