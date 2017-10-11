#!/bin/bash
# List all images.
curl --unix-socket /var/run/docker.sock http:/v1.24/images/json | python -m json.tool
