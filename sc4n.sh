#!/bin/bash

# -sn = ping scan


# get the network address and subnet mask from ip a command 
# and store it in a variable called network
network=$(ip a | grep -w inet | sed -n '2 p' | awk  '{print $2}')
# replace the last two digits of the network address with 0
network=${network%.*}.0/32
echo "Scanning network $network"
# use nmap to scan the network and list the live hosts
nmap -sn $network