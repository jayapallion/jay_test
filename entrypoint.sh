#!/bin/bash
echo "$1"
echo "$2"
echo "$3"
cat "ssh-key"
mkdir ~/.ssh
chmod 600 ssh-key

ssh-keyscan -t rsa 3.110.176.123 >> ~/.ssh/known_hosts
chmod 600 ~/.ssh/known_hosts
ssh -i id_rsa -o StrictHostKeyChecking=no ec2-user@3.110.176.123 "mkdir diesucees"
