#!/bin/bash
# Get cpu stats.
echo -ne "GET /containers/$CONTAINER_ID/stats HTTP/1.1\r\n\r\n" | nc -U /var/run/docker.sock | grep "^{" | jq '.cpu_stats'
