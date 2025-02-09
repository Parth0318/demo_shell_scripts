#!/bin/bash

<<info


this script will install the package


eg. ./install_pakage.sh nginx
./install_package.sh docker.io
./install_package.sh unzip

info

echo "installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "completed"
