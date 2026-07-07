#!/bin/bash

read -p "who are you ? : " name
read -p "alright, and what is your age (in years) ? : " age

gtr=$((($RANDOM % 10) + $age))

sleep 0.2

echo "Hello, $name, you are $age years old"

sleep 0.2

echo "calculating"

sleep 0.2
echo "..........."
sleep 0.2
echo "**........."
sleep 0.2
echo "****......."
sleep 0.2
echo "******....."
sleep 0.2
echo "********..."
sleep 0.2
echo "**********."
sleep 0.2
echo "***********"
sleep 0.2
echo "done !"
sleep 1
echo "you will get rich when you will be : $gtr"
