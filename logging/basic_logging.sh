 #!/bin/bash
# Basic command to capture the output to stderr/out from a
# running container. This command must be ran on the host.
# Run `docker ps` then grab the container id and insert b/w
# the brackets.
curl --unix-socket /var/run/docker.sock "http:/v1.24/containers/<container_id>/logs?stdout=1"
