#!/bin/bash

# Get the container hostname
CONTAINER_HOSTNAME=$(cat /etc/hostname)

# Replace the placeholder in the HTML file with the actual hostname
sed -i "s|<span id=\"containerHostname\"></span>|${CONTAINER_HOSTNAME}|g" /usr/share/nginx/html/index.html

# Start Nginx
nginx -g "daemon off;"
