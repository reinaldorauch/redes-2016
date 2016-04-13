#!/bin/bash
for URL in $(cat $1 ); do
   echo -n $URL ' '
   ping $URL -c 5 -q | grep rtt | awk '{ print $4}' | awk -F'/' '{ print $1 " " $2 " " $3 " " $4}'
done
