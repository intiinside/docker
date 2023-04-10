#!/bin/bash
##FEDORA DOCKER INSTALLATION
## execute this file $chmod a+x docker.sh and $./docker.sh

## Upgrading system packages
yum update -y

## Install necessary dependencies:
dnf install curl git vim -y

## Add the official Docker GPG key:
dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo -y
dnf install docker-ce --nobest -y
systemctl enable --now docker

## Download the current stable release of Docker Compose:
curl -L "https://github.com/docker/compose/releases/download/v2.17.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
## Note: replace "v2.17.2" with the current stable release version if it has been updated since this answer was written

## Apply executable permissions to the Docker Compose binary
chmod +x /usr/local/bin/docker-compose

# Release note: https://github.com/docker/compose/releases
# intiinside@protonmail.com :)

