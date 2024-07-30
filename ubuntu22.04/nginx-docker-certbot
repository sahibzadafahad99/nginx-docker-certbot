#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install NGINX
sudo apt install nginx -y

# Install Docker
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Install Certbot
sudo apt install certbot python3-certbot-nginx -y

# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Display the installed versions
echo "Installed versions:"
nginx -v
docker --version
certbot --version

echo "Installation complete. NGINX, Docker, and Certbot have been installed successfully."
