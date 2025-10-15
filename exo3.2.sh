#!/bin/bash

l="6589 547 4523 47"
count=0

while [ $count -lt 3 ]
do
    read -p "code ? : " code

    let count=$count+1

    for i in $l
    do

        if [ $i = $code ]
        then
            echo -e "code kept "
            exit
        fi
    done
done

let count=$count+1

if [ $count -ge 4 ]
then
    echo -e "trop de tentatives"
fi