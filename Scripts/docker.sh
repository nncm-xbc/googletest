#!/bin/sh

# Initialize docker
sudo systemctl start docker
sudo systemctl status docker

docker build --pull --rm -f "Dockerfile" -t googletest:latest "." 