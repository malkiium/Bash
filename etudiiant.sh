#!/bin/bash
avrg=0
stdname=" "
res=" "
stdcount=0
totalgrds=0
pass=" "

while true
do
    read -p "quelle est l'étudiant ? : " stdname

    if [ $stdname = "#" ]
    then
        break
    fi
    let stdcount=$stdcount+1

    read -p "entrer les 3 notes : " grd1 grd2 grd3
    let grds=$grd1+$grd2+$grd3
    let avrg=$grds/3
    let totalgrds=$totalgrds+$avrg

    if [ $avrg -ge 10 ]
    then
        pass="admis"
    else
        pass="ajournée"
    fi

    echo "$stdname $pass, Moyenne : $avrg" >> Rsesultat
done
echo -e""

echo -e "\033[35m Résultats :"
echo -e "\033[0m"

more Rsesultat
rm Rsesultat

let totalgrds=$totalgrds/$stdcount
echo "la moyenne générale est de : $totalgrds"