#!/bin/bash
# I/O bytes rec'd.
echo -ne "GET /containers/$CONTAINER_ID/stats HTTP/1.1\r\n\r\n" | \
nc -U /var/run/docker.sock | grep "^{" | jq '.blkio_stats.io_service_bytes_recursive | .[1].value'
