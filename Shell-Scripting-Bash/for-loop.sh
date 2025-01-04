#!/bin/bash
# For Loop

    echo "List Partition under the disk"
    for i in /dev/sda*; do
    echo "$i"
    done
  # another oneline for loop example:

    # for i in {1..5}; do echo "NUMBER: $i"; done