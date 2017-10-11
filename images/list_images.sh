#!/bin/bash
# List all images.
curl --unix-socket /var/run/docker.sock http:/v1.24/images/json | python -m json.tool
# You can also use:
# echo -e "GET /images/json HTTP/1.0\r\n" | nc -U /var/run/docker.sock
