#!/bin/bash
# setup.sh: Install Podman, run nginx, and verify setup on Ubuntu/Debian
set -e

# Install Podman
sudo apt-get update
sudo apt-get install -y podman

# Verify installation
podman --version

# Run nginx container
podman run -dt -p 8080:80 nginx

# Show running containers
podman ps
