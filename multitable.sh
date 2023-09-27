#!/bin/bash

a=$1
b=$2

if [ "$a" -gt 0 ] && [ "$b" -gt 0 ]; then 
	for i in $(seq 1 "$a")
	do
		for j in $(seq 1 "$b")
		do
			printf "%02d*%02d=%02d  " "$i" "$j" "$((i*j))"
		done	
		printf "\n"

	done
	
elif [ "$a" -le 0 ] || [ "$b" -le 0 ]; then
	echo "Input must be greater than 0"

else
	echo "Invalid Input"
fi
exit 0
