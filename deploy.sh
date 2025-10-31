#!/bin/bash
set -e

# Create web directory if missing
sudo mkdir -p /var/www/html

# Clean old files safely
sudo rm -rf /var/www/html/*

# Copy only the app files from the deployment bundle
sudo cp -r /opt/codedeploy-agent/deployment-root/*/*/deployment-archive/* /var/www/html/

# Restart nginx
sudo systemctl restart nginx
