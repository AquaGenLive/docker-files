#!/bin/bash
# Download the binary and set the permissions
curl -L https://get.docker.com/builds/Linux/x86_64/docker-latest > /usr/bin/docker; chmod +x /usr/bin/docker

# Download the systemd files
curl -L https://raw.githubusercontent.com/docker/docker/master/contrib/init/systemd/docker.service > /usr/lib/systemd/system/docker.service
curl -L https://raw.githubusercontent.com/docker/docker/master/contrib/init/systemd/docker.socket > /usr/lib/systemd/system/docker.socket

# Enable and start the service
systemctl enable docker
systemctl start docker