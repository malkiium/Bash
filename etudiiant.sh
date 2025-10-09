#!/bin/bash
avrg=0
stdname=" "
res=" "

while true
do
    read -p "what is the student name ? : " stdname

    if [ $stdname = "#" ]
    then
        break
    fi

    read -p "enter the 3 grades : " grd1 grd2 grd3
    let grds=$grd1+$grd2+$grd3
    let avrg=$grds/3


    res="$res\n$stdname 's average is : $avrg"
done
echo -e "$res"