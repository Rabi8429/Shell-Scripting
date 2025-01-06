#!/bin/bash

# Print HOURS, MINS, Sec, Nanosec

echo Hours = $(date +%H)
echo Minutes = $(date +%M)
echo Second = $(date +%S)
echo Nanoseconds = $(date +%N)

echo "Current Time = $(date +%H:%M:%S:%N)"
echo "Current time in 24 Hour = $(date +%T)"
echo "Current time in 12 Hour = $(date +%r)"