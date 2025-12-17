#!/bin/bash

read -p "Chemin du fichier notes: " fichier_notes

if [ ! -f "$fichier_notes" ]; then
    echo "Érreur: $fichier_notes n'existe pas"
    exit 1
fi

resultat="Rsesultat"
admis=0
ajournes=0

rm -f "$resultat"

while read ligne; do
    stdname=""
    somme=0
    count=0
    
    for word in $ligne; do
        if [ -z "$stdname" ]; then
            stdname=$word
        else
            note=$word
            let somme=$somme+$note
            let count=$count+1
        fi
    done
    
    if [ $count -gt 0 ]; then
        let avrg=$somme/$count
    else
        avrg=0
    fi
    
    if [ $avrg -ge 10 ]; then
        echo -e "$stdname \033[32mAdmis\033[0m, Moyenne : $avrg" >> "$resultat"
        let admis=$admis+1
    else
        echo -e "$stdname \033[31mAjourné\033[0m, Moyenne : $avrg" >> "$resultat"
        let ajournes=$ajournes+1
    fi
    
done < "$fichier_notes"

echo -e""
echo -e "\033[35m Résultats :"
echo -e "\033[0m"
more "$resultat"

echo ""
echo "Admis: $admis"
echo "Ajournés: $ajournes"

rm "$resultat"
