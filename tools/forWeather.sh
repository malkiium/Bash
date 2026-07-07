#!/bin/bash

echo "As of $(date +'%d/%m %H:%M')"
echo "---------------------"

for x in $(cat ~/vsc/Bash/tools/cities.txt); do
  weather=$(curl -s http://wttr.in/$x?format=3)
  echo "The weather for $weather"
done
