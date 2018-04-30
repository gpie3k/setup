#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-update

apt-upgrade

apt-get install terminator vim mc curl gnome-shell git ubuntu-gnome-desktop flashplugin-installer nautilus-dropbox alacarte
