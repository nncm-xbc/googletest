FROM ubuntu:latest

# Copy your source file directory into /app
COPY . /googletest

# Install make
RUN apt update && apt install -y build-essential && apt install -y make && apt install -y cmake

# Change to /app
WORKDIR /googletest

# run make
RUN sh Scripts/build.sh