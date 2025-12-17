#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Érreur: il faut 2 arguments"
    exit 1
fi

mode="$1"
dossier="$2"

if [ ! -d "$dossier" ]; then
    echo "Érreur: '$dossier' n'est pas un dossier"
    exit 1
fi

fich="/tmp/liste.txt"

if [ "$mode" = "-f" ]; then
    echo "=== Fichiers standards ==="
    for item in $(ls -1 "$dossier"); do
        if [ -f "$dossier/$item" ]; then
            echo "$item" >> "$fich"
        fi
    done
    cat "$fich"
    rm "$fich"

elif [ "$mode" = "-d" ]; then
    echo "=== Dossiers ==="
    for item in $(ls -1 "$dossier"); do
        if [ -d "$dossier/$item" ]; then
            echo "$item" >> "$fich"
        fi
    done
    cat "$fich"
    rm "$fich"

elif [ "$mode" = "-v" ]; then
    echo "=== Dossiers vides ==="
    for item in $(ls -1 "$dossier"); do
        if [ -d "$dossier/$item" ] && [ -z "$(ls "$dossier/$item")" ]; then
            echo "$item" >> "$fich"
        fi
    done
    cat "$fich"
    rm "$fich"

else
    echo "Érreur: argument invalide '$mode'"
    exit 1
fi
