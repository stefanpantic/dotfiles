#!/bin/sh

if [[ 1 -ne $# ]]
then
	exit 1
fi

# Fetch a random image from the passed directory and set it as the background for the next 10 minutes
while true;
do
	feh --bg-scale "$1/$(ls $1 | shuf -n 1)"
	sleep 15m
done
