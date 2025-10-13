#!/bin/bash

read -p "donnez le nom, et si c'est un f ou d ? : " inp1 inp2
if [ $inp2 = "f" ]
then
    if [ -f $inp1 ]
    then
        echo -e "it is a file ! found at :"
        find ~ -name $inp1
    else
        echo -e "this is not a file."
    fi
elif [ $inp2 = "d" ]
then
    if [ -d $inp1 ]
    then
        echo -e "it is a dir"
        if [ -z "$(ls -A "$inp1")" ]
        then
            echo -e "here is what it has :"
            ls -la $inp1
        else
            echo -e "it is empty."
        fi
    else
        echo -e "it is not a dir"
    fi
else
    echo -e "it is nor a dir, nor a file, please use an other dir or file."
fi
