#!/bin/bash

l="6589 547 4523 47"
count=0

while [ $count -lt 3 ]
do
    read -p "code ? : " -t 5 code

    let count=$count+1
    if [ -z $code ]
    then
        echo "vide. veuillez réessayer."
    else
        for i in $l
        do
            if [ $i = $code ]
            then
                echo -e "\033[32m code kept "
                echo -e "\033[0m"
                exit
            fi
        done
        echo -e "\033[31m code éronner"
        echo -e "\033[0m"
    fi
done

let count=$count+1

if [ $count -ge 4 ]
then
    echo -e "\033[31m trop de tentatives"
    echo -e "\033[0m"
fi