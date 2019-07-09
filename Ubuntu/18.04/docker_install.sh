#!/bin/bash -x 
# Created by Alex Gloux
# Date: July 9, 2019
# Purpose: Install Docker

# Script installs required dependencies 
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add GPG key to local
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to apt sources 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Update apt sources
sudo apt update

# Repo check
apt-cache policy docker-ce

# Install Docker Community Edition
sudo apt install docker-ce

# Status check
sudo systemctl status docker

# Create docker user and adjust privileges to sudo privileges
sudo usermod -aG docker ${USER}

# Check Docker Information 
docker info

# Sources Documentation 
# ===============================================================================================
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

# EOF
