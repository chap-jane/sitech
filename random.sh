#!/bin/bash
# describtion:猜字游戏
# auther: -----

rand=$(($RANDOM%100))
n=1
read -p "请输入一个0-99的数字：" num
while true
do
	if [ $(($num)) -lt $(($rand)) ];then
		echo "你输入的数字小了"
	elif [ $(($num)) -gt $(($rand)) ];then
		echo "你输入的数字大了"
	else 
		echo "你第$n次猜中了 radmon=$rand"
		break
	fi
	read -p "请重新输入一个0-99的数字：" num
	((n++))
done
