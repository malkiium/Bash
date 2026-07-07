#!/bin/bash

user=$(whoami)
date=$(date)
wai=$(pwd)

echo "Good morning $1 !!"

sleep 1

echo "You're looking good today $1 !"

sleep 1

echo "You have the best $2 ever $1 !"

sleep 2

echo "you are currently logged in as $user in the $wai directory, all of which, on the date of : $date"
