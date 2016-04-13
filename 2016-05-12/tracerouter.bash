#!/bin/bash

echo $1
for URL in $(cat $1)
do
    traceroute $URL
done