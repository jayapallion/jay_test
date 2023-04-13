#!/bin/bash
echo "$1"
echo "$2"
echo "$3"
cat "ssh-key"
ssh -t -t -i ssh-key ec2-user@13.233.83.195
