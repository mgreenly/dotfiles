#!/bin/bash

#install backports kernl

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "deb http://ftp.debian.org/debian/ wheezy-backports main non-free contrib" | tee /etc/apt/sources.list.d/backports.list
apt-get update
apt-get -t wheezy-backports install linux-image-amd64 linux-headers-amd64
reboot
