#!/bin/bash
timer=0
echo -e "\n\n\n\n\n\n\n"

while [ $timer -lt 60 ]
do
    echo -en "$(date "+%T") \b\b\b\b\b\b\b\b\b"
    let timer=$timer+1
    sleep 1
done

echo -e "\n\n\n\n\n\n\n"