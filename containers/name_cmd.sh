#!/bin/bash
# List the name of the container along with the full command used to start it.
curl --unix-socket /var/run/docker.sock -H "Content-Type: application/json" -X GET http:/v1.24/containers/json | jq '.[] \
| .Names, .Command'
