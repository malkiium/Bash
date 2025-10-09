#!/bin/bash
avrg=0
stdname=" "
res=" "
stdcount=0
totalgrds=0

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


    res="$res\n$stdname 's moyenne est de : $avrg"
done

let totalgrds=$totalgrds/$stdcount

echo -e ""
echo -e "voici les Résultats :"
echo -e "$res"
echo -e "la moyenne est de : $totalgrds"