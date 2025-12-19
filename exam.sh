#!/bin/bash

ans=0
L=(12 7 14 11 5)
echo "ajouter des notes a L:"

while true
do
    read note
    if [ $note = "#" ]
    then
        break
    fi
    L+=($note)
done

