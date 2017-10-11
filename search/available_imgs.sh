#!/bin/bash
# Search dockerhub for images to pull (example uses the search term 'jenkins')
# Note: you need to include the escapes if running this from the command line
curl --unix-socket /var/run/docker.sock -H "Content-Type: application/json" -X \
GET http:/v1.24/images/search\?term\=jenkins| jq '.[] | .name'
