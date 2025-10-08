#!/bin/bash

trial=0
numb=0
gvn=9999999
let numb=(RANDOM%100)

while [ $gvn -ne $numb ]
do
    let trial=$trial+1
    read -p "Donne un nombre ! : " gvn
    if [ $gvn -eq $numb ]
    then
        echo -e " "
        echo "BIEN JOUER ! tu a trouver en"
        echo -e $trial
        echo "essaye"
    elif [ $gvn -gt $numb ]
    then
        echo "the number is lower."
    elif [ $gvn -lt $numb ]
    then
        echo "the number is bigger."
    fi
done
