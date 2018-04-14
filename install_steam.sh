#!/bin/bashx

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

add-apt-repository multiverse

apt update && sudo apt install steam
