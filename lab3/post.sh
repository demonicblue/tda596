#!/bin/bash

port='63179'

for i in 1 2 3
do
while read line
	do
	    ip=$line
	    curl --data "comment=TEST $i $ip" "$ip:$port"
	    #for i in 1 2 3
	    #do
	    	#curl --data "comment=TEST $i $ip" "$ip:$port" &
	    #done
	done < $1
done