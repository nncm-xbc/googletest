#!/bin/sh

# Install and initialize docker
sudo apt-get update
sudo apt-get install -y docker.io docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl status docker

docker build --pull --rm -f "Dockerfile" -t googletest:latest "." 