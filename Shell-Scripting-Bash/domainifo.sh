#!/bin/bash
# Display the domain Owner info

#read -p "Enter the domain name:" domain_name

# Here (-t) timeout

read -t 10 -p "Enter the domain name:" domain_name

whois $domain_name