#!/bin/sh

sudo apt install r-base gdebi-core -y
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1073-amd64.deb
sudo gdebi rstudio-1.3.1073-amd64.deb -n
rm rstud*
