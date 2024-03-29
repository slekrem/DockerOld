#!/bin/bash

DOCKER_LISTS=/etc/apt/sources.list.d/docker.list


# +---------------+
# | Prerequisites |
# +---------------+

# Update package information, ensure that APT works with the https method, and that CA certificates are installed.
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates

# Add the new GPG key.
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# create docker.lists file
sudo touch $DOCKER_LISTS

# Add an entry for your Ubuntu operating system.
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" > $DOCKER_LISTS

# Update the APT package index.
sudo apt-get update

# Purge the old repo if it exists.
sudo apt-get purge lxc-docker

# Verify that APT is pulling from the right repository.
sudo apt-cache policy docker-engine


# +---------------------------------+
# | Prerequisites by Ubuntu Version |
# | Ubuntu Wily 15.10               |
# +---------------------------------+

# Update your package manager.
sudo apt-get update

# Install the recommended package.
sudo apt-get install linux-image-extra-$(uname -r)


# +----------------+
# | Install Docker |
# +----------------+

# Update your APT package index.
sudo apt-get update

# Install Docker.
sudo apt-get install docker-engine

# Start the docker daemon.
sudo service docker start
