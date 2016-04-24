#!/bin/bash

# Log into Ubuntu as a user with sudo privileges.
su ubuntu

# Create the docker group.
sudo groupadd docker

# Add your user to docker group.
sudo usermod -aG docker ubuntu

# Log out and log back in.
exit
su ubuntu

# Verify your work by running docker without sudo.
docker run hello-world
