#!/bin/bash

if [ -z "$1" ]; then
 echo "host parameter needed"
 exit
fi


while :
do
 echo "Starting monitor against $1"
 python3 poc.py $1

 sleep 20
done

