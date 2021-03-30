#!/bin/bash

#mkdir -p /var/lib/nginx/html
#mount -t tmpfs -o size=1m tmpfs /var/lib/nginx/html

#cp /tmp/index.* /var/lib/nginx/html/
df -kh > /var/lib/nginx/html/disks.html
dishy &
nginx