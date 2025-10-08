#!/bin/bash
word="thisisawoed"
number=20
echo "word : $word , number : $number"

let newnum=$num+10
echo "the nuw number is : $newnum "

file="filename.txt"
more $file

echo "the prompt :" $PS1 #doesnt work cause you cant show prompt from file. dumbahh teacher.
echo $(date)

read -p "give us a damn number, idiot : " n
let res=$n*1
echo "$n x 1 = $res"
let res=$n*2
echo "$n x 2 = $res"
let res=$n*3
echo "$n x 3 = $res"

echo "            "

i=1
while [ $i -le 10 ]
do
	let result=$n*i
	echo "$n x $i = $result"
	let i=$i+1
done

read -p "name of file ? : " fil
if [ -f $fil ]
then
	echo "file found at : "
	find ~ -name $fil
elif [ ! -f $fil ]
then
	echo "not a file. bitch ass bitch."
else
	echo "HOW DID YOU EVEN GET HERE?!!"
fi