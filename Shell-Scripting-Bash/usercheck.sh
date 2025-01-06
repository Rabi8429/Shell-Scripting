#!/bin/bash
# Check User root or not

if [[ $UID = "0" ]]; then
echo "You are root user"
else
echo "You are not root user"
fi
