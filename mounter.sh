#!/bin/bash

# Get the input arguments
DEVICE=$1
MOUNT_POINT=$2

# Check if input arguments are provided
if [ -z "$DEVICE" ] || [ -z "$MOUNT_POINT" ]; then
  echo "Usage: $0 <device_file> <mount_point>"
  exit 1
fi

# Run ntfsfix as sudo
sudo ntfsfix $DEVICE

# Mount system as rw
mount -t ntfs-3g -o remove_hiberfile $DEVICE $MOUNT_POINT
