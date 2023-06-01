#!/bin/sh

# Install and initialize docker
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl status docker

docker build --pull --rm -f "Dockerfile" -t googletest:latest "." 