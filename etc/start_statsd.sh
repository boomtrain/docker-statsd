#!/bin/bash
instance_hostname=$(wget 169.254.169.254/latest/meta-data/hostname -q -O - | cut -d '.' -f1)
echo "Using hostname: $instance_hostname"
export HOST_NAME=$instance_hostname
HOST_NAME=$instance_hostname node /usr/local/src/statsd/stats.js /etc/default/statsd.js