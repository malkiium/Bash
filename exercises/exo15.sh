#!/bin/bash

count=0
count2=0
count3=0

for var in $1/*
do
    if [ -d $var ]
    then
        let count=$count+1
        echo -e "$var" >> dirs
    elif [ -x $var ]
    then
        let count3=$count3+1
        echo -e "$var" >> execs
    else
        let count2=$count2+1
        echo -e "$var" >> files
    fi
done

if [ $count -ge 1 ]
then
    more dirs
    echo -e "ne nmb de dirs accessible est de : $count"
    rm dirs
    echo -e ""
elif [ $count2 -ge 1 ]
then
    more files
    echo -e "le nmb de ficheir accessible est de : $count2"
    rm files
    echo -e ""
elif [ $count3 -ge 1 ]
then
    more execs
    echo -e "ne nmb d'executables accessible est de : $count3"
    rm execs
fi