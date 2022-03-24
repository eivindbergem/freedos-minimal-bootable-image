#!/usr/bin/bash

set -e

if [ $# -eq 0 ]
  then
      echo "usage: $0 <disk-device>"
      exit 1
fi

echo "Writing bootable image..."

makebootfat -o $1 -E 255 -1 fat12.bin -2 fat16.bin -3 fat32lba.bin -m mbr.bin fs-root

echo "Done!"
