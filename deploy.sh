#!/bin/bash
# Copy all files to the web directory
sudo cp -r * /var/www/html/
# Restart Nginx to serve the new version
sudo systemctl restart nginx
