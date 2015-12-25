#!/bin/bash

file="/etc/apt/sources.list.d/virtualbox.list"
if [[ ! -e $file ]]; then
  sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian saucy contrib" > /etc/apt/sources.list.d/virtualbox.list'
else
  echo "Skipping create file: $file"
fi

if ! sudo apt-key list | grep virtualbox >> /dev/null ; then
  wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
else
  echo "Skipping apt-key add for oracle virtual box, already exists."
fi

sudo apt-get update
apt-get -t $(lsb_release -sc)-backports install virtualbox
