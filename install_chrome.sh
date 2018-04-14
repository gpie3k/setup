#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add 

echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list

apt-get update 
apt-get install google-chrome-stable
