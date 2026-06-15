#!/bin/bash

nmbdlng=0

while true
do
    read -p "entrer vos phrases : " entr
    if [ "$entr" = "#" ]
    then
        echo -e "nombre de lignes : $nmbdlng"
        tr -s '\n' < entrertxt
        rm entrertxt
        exit
    else
        echo "$entr" >> entrertxt
        let nmbdlng=$nmbdlng+1
    fi
done