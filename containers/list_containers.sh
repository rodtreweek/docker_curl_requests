#!/bin/bash
# List all containers.
curl --unix-socket /var/run/docker.sock http:/v1.24/containers/json | python -m json.tool
