#!/bin/bash
read -t 15 -p "Pls input two numbers:" a b
#no1
[ ${#a} -le 0 ] &&{ #<==条件表达式，根据变量值得长度是否小于0判断第一个数是否为空
	echo "the first num is null"
	exit 1 
 }
[ ${#b} -le 0 ]&&{
	echo "the second num is null"
	exit 1
}
#no2
expr $a + 1 &>/dev/null #<==利用expr特性判断a和b是否都是整数
RETVAL_A=$?
expr $b + 1 &>/dev/null
RETVAL_B=$?
if [ $RETVAL_A -ne 0 -o $RETVAL_B -ne 0 ];then
	echo "one of the num is not int,pls input again."
	exit 1
fi
#no3
echo "a-b=$(($a-$b))"
echo "a+b=$(($a+$b))"

