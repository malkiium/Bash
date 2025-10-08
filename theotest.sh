#!/bin/bash

count=9

while [ $count -ge 0 ]
do
	echo -e $count
	sleep 1
	let count=$count-1
done
echo -e "Decolage"