#!/bin/bash
nots=0
numbs=0
total=0
moyenne=0

while [ $nots != "#" ]
do
    read -p "please enter your grades : " nots
    if [ $nots != "#" ]
    then
        let total=$total+$nots
        let numbs=$numbs+1
    fi
done
let moyenne=$total/$numbs
echo -e "your average is : $moyenne"
