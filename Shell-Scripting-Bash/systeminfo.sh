#!/bin/bash

# system info

#Hostname
echo -e "******HOSTNAME INFORMATION*****"
hostname
echo ""

# Disk space usage
echo -e "*********DISK SPACE USAGE********"
df -h
echo ""

# Current loged-in user
echo -e "*********CURRENTLY LOGED-IN USER*********"
who
echo ""

# Free or used Memory check
echo -e "********FREE AND USED MEMORY*******"
free
echo ""

#System UP time
echo -e "*********SYSTEM UP TIME********"
uptime
echo ""
