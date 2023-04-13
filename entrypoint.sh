#!/bin/bash
echo "$1"
echo "$2"
echo "$3"
cat "$1"
ssh -i $1 $2@$3
