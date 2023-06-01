#!/bin/sh

# Install and initialize docker
apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
systemctl status docker

docker build --pull --rm -f "Dockerfile" -t googletest:latest "." 