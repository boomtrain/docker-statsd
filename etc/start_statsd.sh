#!/bin/bash
instance_id=$(wget 169.254.169.254/latest/meta-data/instance-id -q -O -)
echo "Using instance id: "
echo $instance_id
export INSTANCE_ID=$instance_id
INSTANCE_ID=$instance_id node /usr/local/src/statsd/stats.js /etc/default/statsd.js
