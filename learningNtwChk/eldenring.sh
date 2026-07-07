#!/bin/bash

read -p "welcome. choose your class :
1 - Samurai
2 - Prisoner
3 - Prophet

: " class

case $class in
1)
  type="Samurai"
  hp=10
  attack=20
  ;;
2)
  type="Prisoner"
  hp=20
  attack=10
  ;;
3)
  type="Prophet"
  hp=30
  attack=4
  ;;
esac

echo "You chose the $type class. Your hp is $hp and you attack is $attack"

echo "you died."

# first beast

echo "a beast approchaes."
read -p "it attacks. you attack too. you have a 50/50 chance to win. chose, 0 or 1 ? : " ufbc

if [[ $(($RANDOM % 2)) != $ufbc ]]; then
  echo "you have lost."
  exit 1
else
  echo "you won."
fi
