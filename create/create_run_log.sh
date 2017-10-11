#!/bin/bash
# Create, start, then log a container instance.
# This must be run directly on the host.
# First, pull the image you wish to install:
curl --unix-socket /var/run/docker.sock -H "Content-Type: application/json" -X POST http:/v1.24/images/create\?fromImage\
=<image name, i.e. fluent/fluentd>                                                                                                                                                         
# Create the container from the image:
curl --unix-socket /var/run/docker.sock -H "Content-Type: application/json" -d \
'{"Image": "<image name>", "Cmd": ["echo", "hello world"]}' -X \
POST http:/v1.24/containers/create
# Start the container:
curl --unix-socket /var/run/docker.sock -X POST http:/v1.24/containers/<container id>/start
# Examine the log output:
curl --unix-socket /var/run/docker.sock "http:/v1.24/containers/<container id>/logs?stdout=1"
# You should see the "hello world" message once the process terminates.
