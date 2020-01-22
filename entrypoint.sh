#!/bin/sh
echo Getting instance id
export HOST_NAME="${HOST_NAME}.$(curl -s http://169.254.169.254/latest/meta-data/instance-id)"
echo Setting Host Name to $HOST_NAME
exec start_container "$@"