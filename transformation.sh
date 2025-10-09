#!/bin/bash
trial="yes"

while [ trial != "no" ]
do
    read -p "donner un fichier : " x
    if [ -f $x ]
    then
        echo -e "que vouller vous faire ? \n 1. transformer en maj \n 2. transformer en min \n 3 crypter \n"
        read usrinp
        if [ $usrinp -eq 1 ]
        then
            tr "a-z" "A-Z" < $x
        fi
        if [ $usrinp -eq 2 ]
        then
            tr "A-Z" "a-z" < $x
        fi
        if [ $usrinp -eq 3 ]
        then
            read -p "quelles sont les options d'encriptages ? : " opt1 opt2
            echo -e " "
            tr "$opt1" "$opt2" < $x
        fi
        echo -e ""
        break
    else
        echo "ce n'est pas un fichier."
        read -p "vouller vous recommencer ? " trial
        if [ $trial = "no" ]
        then
            break
        fi
    fi
done
