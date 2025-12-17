#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Érreur: il faut 2 args"
    exit 1
fi

fichier="$1"
mot="$2"

if [ ! -f "$fichier" ]; then
    echo "Érreur: '$fichier' n'est pas un fichier"
    exit 1
fi

num_ligne=0

while read ligne
do
    num_ligne=$((num_ligne + 1))
    
    for word in $ligne; do
        if [ "$word" = "$mot" ]; then
            echo "$num_ligne: $ligne"
            break
        fi
    done
    
done < "$fichier"
