#!/bin/bash

# Update the system
sudo yum update -y

# Install EPEL repository
sudo yum install epel-release -y

# Install NGINX
sudo yum install nginx -y

# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx

# Install Docker
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install docker-ce docker-ce-cli containerd.io -y

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group
sudo usermod -aG docker $USER

# Install Certbot
sudo yum install certbot python2-certbot-nginx -y

# Display the installed versions
echo "Installed versions:"
nginx -v
docker --version
certbot --version

echo "Installation complete. NGINX, Docker, and Certbot have been installed successfully."
