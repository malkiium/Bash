#!/bin/bash

lineNumb=1

while read -r line; do
  echo "$lineNumb : $line"
  ((lineNumb++))
done <"$1"
