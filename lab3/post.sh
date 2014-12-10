#!/bin/bash

port='63179'
while read line
do
    ip=$line

    for i in 1 2 3
    do
    	curl --data "comment=TEST $i $ip" "$ip:$port" &
    done
done < $1