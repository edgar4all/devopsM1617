#!/bin/bash
apt install python-pip
apt install ansible -y
apt install awscli
export PATH="/home/vagrant/.local/bin:$PATH"

# DOCKER INSTALL
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh --dry-run
sudo sh get-docker.sh
# USE DOCKER WITHOUT SUDO
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker