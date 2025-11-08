#!/bin/sh
POD_NAME=$(hostname)
POD_NAME=${POD_NAME:-"Unknown Pod"}

NODE_NAME=${NODE_NAME:-"Unknown Node"}

# Replace placeholders in HTML
sed -i "s/{{POD_NAME}}/${POD_NAME}/g" /usr/share/nginx/html/index.html
sed -i "s/{{NODE_NAME}}/${NODE_NAME}/g" /usr/share/nginx/html/index.html

# Start Nginx
nginx -g 'daemon off;'