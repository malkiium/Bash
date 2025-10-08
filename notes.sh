#!/bin/bash
nots=0
numbs=0
total=0
moyenne=0

while [ $nots != "#" ]
do
    read -p "Veuillez entrer vos notes : " nots
    if [ $nots != "#" ]
    then
        let total=$total+$nots
        let numbs=$numbs+1
    fi
done
let moyenne=$total/$numbs
echo -e "votre moyenne est : $moyenne"
