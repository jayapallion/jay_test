#!/bin/bash
ssh -i $1 $2@$3
echo "hi jayapal working" >> /home/ec2-user/actions