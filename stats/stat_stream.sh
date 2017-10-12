#!/bin/bash
# Collect all metrics in a continuously updated live stream of JSON.
echo -ne "GET /containers/$CONTAINER_ID/stats HTTP/1.0\r\n\r\n" | sudo nc -U /var/run/docker.sock
