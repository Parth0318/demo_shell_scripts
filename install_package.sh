#! /bin/bash


<<info

this script install the package 

eg. ./install_package.sh nginx
./install_package.sh docker.io
./install_package.sh unzip

info


echo "Installing $1 "

sudo apt-get updated > /dev/null
sudo apt-get install $1 -y

echo "Installation completed " > /dev/null




