#!/bin/bash


rm TXT/*.txt
rmdir TXT

if [ ! -d $1 ]
then
    echo "ce n'est pas un dossier."
    exit 1
fi

mkdir "TXT"

mv "$1"/*.txt TXT