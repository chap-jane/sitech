#!/bin/bash
# describtion:Guessing game
# auther: -----

rand=$(($RANDOM%100))
n=1
read -p "please input a number in 0-99：" num
while true
do
	if [ $(($num)) -lt $(($rand)) ];then
		echo "your number is less"
	elif [ $(($num)) -gt $(($rand)) ];then
		echo "your number is greater"
	else 
		echo "you have guessed the number :$rand"
		break
	fi
	read -p "please resume load a number in 0-99：" num
	((n++))
done
