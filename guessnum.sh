#!/bin/bash
#guess a number
#author  zrz  2019 0815 
RIGHT=`expr $RANDOM % 100`
i=0
while true
do
read -p "please input a number(0-99):" GUESS
let i++
if [ $GUESS -eq $RIGHT ];then
	echo "恭喜你猜对了"
	echo "你一共猜了$i次"
	exit
elif [ $GUESS -lt $RIGHT ];then
	echo "猜小了，再试试："
else
	echo "猜大了，再试试："
fi
done
