#!/bin/bash
echo "$1"
echo "$2"
echo "$3"
cat "ssh-key"
mkdir ~/.ssh

ssh-keyscan -t rsa 3.110.176.123 >> ~/.ssh/known_hosts
ssh -t -t -i ssh-key ec2-user@3.110.176.123
