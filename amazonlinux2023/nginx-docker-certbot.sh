#!/bin/bash

# Update the system
sudo dnf update -y

# Install NGINX
sudo dnf install nginx -y

# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx

# Install Docker
sudo dnf install -y docker

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to the docker group
sudo usermod -aG docker $USER

# Install Certbot
sudo dnf install -y certbot python3-certbot-nginx

# Display the installed versions
echo "Installed versions:"
nginx -v
docker --version
certbot --version

echo "Installation complete. NGINX, Docker, and Certbot have been installed successfully."
