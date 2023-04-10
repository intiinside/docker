#!/bin/bash
##UBUNTU DOCKER INSTALLATION
## execute this file $chmod a+x docker.sh and $./docker.sh

## Upgrading system packages
apt-get update

## Install necessary dependencies:
apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

## Add the official Docker GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

## Add the Docker repository to your system:
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## sudo apt-get update
apt-get update

## install docker
apt-get install docker-ce docker-ce-cli containerd.io

## Download the current stable release of Docker Compose:
curl -L "https://github.com/docker/compose/releases/download/v2.17.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
## Note: replace "v2.17.2" with the current stable release version if it has been updated since this answer was written

## Apply executable permissions to the Docker Compose binary
chmod +x /usr/local/bin/docker-compose

# Release note: https://github.com/docker/compose/releases
# intiinside@protonmail.com 