#!/usr/bin/env bash

curl -fsSL get.docker.com -o get-docker.sh | sudo bash
sudo usermod -aG docker your-user
